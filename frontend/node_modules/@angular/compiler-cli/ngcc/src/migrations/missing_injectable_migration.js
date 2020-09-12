(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/migrations/missing_injectable_migration", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/annotations", "@angular/compiler-cli/src/ngtsc/imports", "@angular/compiler-cli/ngcc/src/migrations/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.getAngularCoreDecoratorName = exports.MissingInjectableMigration = void 0;
    var tslib_1 = require("tslib");
    var annotations_1 = require("@angular/compiler-cli/src/ngtsc/annotations");
    var imports_1 = require("@angular/compiler-cli/src/ngtsc/imports");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/migrations/utils");
    /**
     * Ensures that classes that are provided as an Angular service in either `NgModule.providers` or
     * `Directive.providers`/`Component.viewProviders` are decorated with one of the `@Injectable`,
     * `@Directive`, `@Component` or `@Pipe` decorators, adding an `@Injectable()` decorator when none
     * are present.
     *
     * At least one decorator is now mandatory, as otherwise the compiler would not compile an
     * injectable definition for the service. This is unlike View Engine, where having just an unrelated
     * decorator may have been sufficient for the service to become injectable.
     *
     * In essence, this migration operates on classes that are themselves an NgModule, Directive or
     * Component. Their metadata is statically evaluated so that their "providers"/"viewProviders"
     * properties can be analyzed. For any provider that refers to an undecorated class, the class will
     * be migrated to have an `@Injectable()` decorator.
     *
     * This implementation mirrors the "missing-injectable" schematic.
     */
    var MissingInjectableMigration = /** @class */ (function () {
        function MissingInjectableMigration() {
        }
        MissingInjectableMigration.prototype.apply = function (clazz, host) {
            var e_1, _a;
            var decorators = host.reflectionHost.getDecoratorsOfDeclaration(clazz);
            if (decorators === null) {
                return null;
            }
            try {
                for (var decorators_1 = tslib_1.__values(decorators), decorators_1_1 = decorators_1.next(); !decorators_1_1.done; decorators_1_1 = decorators_1.next()) {
                    var decorator = decorators_1_1.value;
                    var name = getAngularCoreDecoratorName(decorator);
                    if (name === 'NgModule') {
                        migrateNgModuleProviders(decorator, host);
                    }
                    else if (name === 'Directive') {
                        migrateDirectiveProviders(decorator, host, /* isComponent */ false);
                    }
                    else if (name === 'Component') {
                        migrateDirectiveProviders(decorator, host, /* isComponent */ true);
                    }
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (decorators_1_1 && !decorators_1_1.done && (_a = decorators_1.return)) _a.call(decorators_1);
                }
                finally { if (e_1) throw e_1.error; }
            }
            return null;
        };
        return MissingInjectableMigration;
    }());
    exports.MissingInjectableMigration = MissingInjectableMigration;
    /**
     * Iterates through all `NgModule.providers` and adds the `@Injectable()` decorator to any provider
     * that is not otherwise decorated.
     */
    function migrateNgModuleProviders(decorator, host) {
        if (decorator.args === null || decorator.args.length !== 1) {
            return;
        }
        var metadata = host.evaluator.evaluate(decorator.args[0], annotations_1.forwardRefResolver);
        if (!(metadata instanceof Map)) {
            return;
        }
        migrateProviders(metadata, 'providers', host);
        // TODO(alxhub): we should probably also check for `ModuleWithProviders` here.
    }
    /**
     * Iterates through all `Directive.providers` and if `isComponent` is set to true also
     * `Component.viewProviders` and adds the `@Injectable()` decorator to any provider that is not
     * otherwise decorated.
     */
    function migrateDirectiveProviders(decorator, host, isComponent) {
        if (decorator.args === null || decorator.args.length !== 1) {
            return;
        }
        var metadata = host.evaluator.evaluate(decorator.args[0], annotations_1.forwardRefResolver);
        if (!(metadata instanceof Map)) {
            return;
        }
        migrateProviders(metadata, 'providers', host);
        if (isComponent) {
            migrateProviders(metadata, 'viewProviders', host);
        }
    }
    /**
     * Given an object with decorator metadata, iterates through the list of providers to add
     * `@Injectable()` to any provider that is not otherwise decorated.
     */
    function migrateProviders(metadata, field, host) {
        var e_2, _a;
        if (!metadata.has(field)) {
            return;
        }
        var providers = metadata.get(field);
        if (!Array.isArray(providers)) {
            return;
        }
        try {
            for (var providers_1 = tslib_1.__values(providers), providers_1_1 = providers_1.next(); !providers_1_1.done; providers_1_1 = providers_1.next()) {
                var provider = providers_1_1.value;
                migrateProvider(provider, host);
            }
        }
        catch (e_2_1) { e_2 = { error: e_2_1 }; }
        finally {
            try {
                if (providers_1_1 && !providers_1_1.done && (_a = providers_1.return)) _a.call(providers_1);
            }
            finally { if (e_2) throw e_2.error; }
        }
    }
    /**
     * Analyzes a single provider entry and determines the class that is required to have an
     * `@Injectable()` decorator.
     */
    function migrateProvider(provider, host) {
        var e_3, _a;
        if (provider instanceof Map) {
            if (!provider.has('provide') || provider.has('useValue') || provider.has('useFactory') ||
                provider.has('useExisting')) {
                return;
            }
            if (provider.has('useClass')) {
                // {provide: ..., useClass: SomeClass, deps: [...]} does not require a decorator on SomeClass,
                // as the provider itself configures 'deps'. Only if 'deps' is missing will this require a
                // factory to exist on SomeClass.
                if (!provider.has('deps')) {
                    migrateProviderClass(provider.get('useClass'), host);
                }
            }
            else {
                migrateProviderClass(provider.get('provide'), host);
            }
        }
        else if (Array.isArray(provider)) {
            try {
                for (var provider_1 = tslib_1.__values(provider), provider_1_1 = provider_1.next(); !provider_1_1.done; provider_1_1 = provider_1.next()) {
                    var v = provider_1_1.value;
                    migrateProvider(v, host);
                }
            }
            catch (e_3_1) { e_3 = { error: e_3_1 }; }
            finally {
                try {
                    if (provider_1_1 && !provider_1_1.done && (_a = provider_1.return)) _a.call(provider_1);
                }
                finally { if (e_3) throw e_3.error; }
            }
        }
        else {
            migrateProviderClass(provider, host);
        }
    }
    /**
     * Given a provider class, adds the `@Injectable()` decorator if no other relevant Angular decorator
     * is present on the class.
     */
    function migrateProviderClass(provider, host) {
        // Providers that do not refer to a class cannot be migrated.
        if (!(provider instanceof imports_1.Reference)) {
            return;
        }
        var clazz = provider.node;
        if (utils_1.isClassDeclaration(clazz) && host.isInScope(clazz) && needsInjectableDecorator(clazz, host)) {
            host.injectSyntheticDecorator(clazz, utils_1.createInjectableDecorator(clazz));
        }
    }
    var NO_MIGRATE_DECORATORS = new Set(['Injectable', 'Directive', 'Component', 'Pipe']);
    /**
     * Determines if the given class needs to be decorated with `@Injectable()` based on whether it
     * already has an Angular decorator applied.
     */
    function needsInjectableDecorator(clazz, host) {
        var e_4, _a;
        var decorators = host.getAllDecorators(clazz);
        if (decorators === null) {
            return true;
        }
        try {
            for (var decorators_2 = tslib_1.__values(decorators), decorators_2_1 = decorators_2.next(); !decorators_2_1.done; decorators_2_1 = decorators_2.next()) {
                var decorator = decorators_2_1.value;
                var name = getAngularCoreDecoratorName(decorator);
                if (name !== null && NO_MIGRATE_DECORATORS.has(name)) {
                    return false;
                }
            }
        }
        catch (e_4_1) { e_4 = { error: e_4_1 }; }
        finally {
            try {
                if (decorators_2_1 && !decorators_2_1.done && (_a = decorators_2.return)) _a.call(decorators_2);
            }
            finally { if (e_4) throw e_4.error; }
        }
        return true;
    }
    /**
     * Determines the original name of a decorator if it is from '@angular/core'. For other decorators,
     * null is returned.
     */
    function getAngularCoreDecoratorName(decorator) {
        if (decorator.import === null || decorator.import.from !== '@angular/core') {
            return null;
        }
        return decorator.import.name;
    }
    exports.getAngularCoreDecoratorName = getAngularCoreDecoratorName;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWlzc2luZ19pbmplY3RhYmxlX21pZ3JhdGlvbi5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9uZ2NjL3NyYy9taWdyYXRpb25zL21pc3NpbmdfaW5qZWN0YWJsZV9taWdyYXRpb24udHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztJQVNBLDJFQUFrRTtJQUNsRSxtRUFBcUQ7SUFLckQseUVBQXNFO0lBRXRFOzs7Ozs7Ozs7Ozs7Ozs7O09BZ0JHO0lBQ0g7UUFBQTtRQW9CQSxDQUFDO1FBbkJDLDBDQUFLLEdBQUwsVUFBTSxLQUF1QixFQUFFLElBQW1COztZQUNoRCxJQUFNLFVBQVUsR0FBRyxJQUFJLENBQUMsY0FBYyxDQUFDLDBCQUEwQixDQUFDLEtBQUssQ0FBQyxDQUFDO1lBQ3pFLElBQUksVUFBVSxLQUFLLElBQUksRUFBRTtnQkFDdkIsT0FBTyxJQUFJLENBQUM7YUFDYjs7Z0JBRUQsS0FBd0IsSUFBQSxlQUFBLGlCQUFBLFVBQVUsQ0FBQSxzQ0FBQSw4REFBRTtvQkFBL0IsSUFBTSxTQUFTLHVCQUFBO29CQUNsQixJQUFNLElBQUksR0FBRywyQkFBMkIsQ0FBQyxTQUFTLENBQUMsQ0FBQztvQkFDcEQsSUFBSSxJQUFJLEtBQUssVUFBVSxFQUFFO3dCQUN2Qix3QkFBd0IsQ0FBQyxTQUFTLEVBQUUsSUFBSSxDQUFDLENBQUM7cUJBQzNDO3lCQUFNLElBQUksSUFBSSxLQUFLLFdBQVcsRUFBRTt3QkFDL0IseUJBQXlCLENBQUMsU0FBUyxFQUFFLElBQUksRUFBRSxpQkFBaUIsQ0FBQyxLQUFLLENBQUMsQ0FBQztxQkFDckU7eUJBQU0sSUFBSSxJQUFJLEtBQUssV0FBVyxFQUFFO3dCQUMvQix5QkFBeUIsQ0FBQyxTQUFTLEVBQUUsSUFBSSxFQUFFLGlCQUFpQixDQUFDLElBQUksQ0FBQyxDQUFDO3FCQUNwRTtpQkFDRjs7Ozs7Ozs7O1lB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QUksVUFBVSxLQUFLLElBQUksRUFBRTtZQUN2QixPQUFPLElBQUksQ0FBQztTQUNiOztZQUVELEtBQXdCLElBQUEsZUFBQSxpQkFBQSxVQUFVLENBQUEsc0NBQUEsOERBQUU7Z0JBQS9CLElBQU0sU0FBUyx1QkFBQTtnQkFDbEIsSUFBTSxJQUFJLEdBQUcsMkJBQTJCLENBQUMsU0FBUyxDQUFDLENBQUM7Z0JBQ3BELElBQUksSUFBSSxLQUFLLElBQUksSUFBSSxxQkFBcUIsQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLEVBQUU7b0JBQ3BELE9BQU8sS0FBSyxDQUFDO2lCQUNkO2FBQ0Y7Ozs7Ozs7OztRQUVELE9BQU8sSUFBSSxDQUFDO0lBQ2QsQ0FBQztJQUVEOzs7T0FHRztJQUNILFNBQWdCLDJCQUEyQixDQUFDLFNBQW9CO1FBQzlELElBQUksU0FBUyxDQUFDLE1BQU0sS0FBSyxJQUFJLElBQUksU0FBUyxDQUFDLE1BQU0sQ0FBQyxJQUFJLEtBQUssZUFBZSxFQUFFO1lBQzFFLE9BQU8sSUFBSSxDQUFDO1NBQ2I7UUFFRCxPQUFPLFNBQVMsQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDO0lBQy9CLENBQUM7SUFORCxrRUFNQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7Zm9yd2FyZFJlZlJlc29sdmVyfSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvYW5ub3RhdGlvbnMnO1xuaW1wb3J0IHtSZWZlcmVuY2V9IGZyb20gJy4uLy4uLy4uL3NyYy9uZ3RzYy9pbXBvcnRzJztcbmltcG9ydCB7UmVzb2x2ZWRWYWx1ZSwgUmVzb2x2ZWRWYWx1ZU1hcH0gZnJvbSAnLi4vLi4vLi4vc3JjL25ndHNjL3BhcnRpYWxfZXZhbHVhdG9yJztcbmltcG9ydCB7Q2xhc3NEZWNsYXJhdGlvbiwgRGVjb3JhdG9yfSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvcmVmbGVjdGlvbic7XG5cbmltcG9ydCB7TWlncmF0aW9uLCBNaWdyYXRpb25Ib3N0fSBmcm9tICcuL21pZ3JhdGlvbic7XG5pbXBvcnQge2NyZWF0ZUluamVjdGFibGVEZWNvcmF0b3IsIGlzQ2xhc3NEZWNsYXJhdGlvbn0gZnJvbSAnLi91dGlscyc7XG5cbi8qKlxuICogRW5zdXJlcyB0aGF0IGNsYXNzZXMgdGhhdCBhcmUgcHJvdmlkZWQgYXMgYW4gQW5ndWxhciBzZXJ2aWNlIGluIGVpdGhlciBgTmdNb2R1bGUucHJvdmlkZXJzYCBvclxuICogYERpcmVjdGl2ZS5wcm92aWRlcnNgL2BDb21wb25lbnQudmlld1Byb3ZpZGVyc2AgYXJlIGRlY29yYXRlZCB3aXRoIG9uZSBvZiB0aGUgYEBJbmplY3RhYmxlYCxcbiAqIGBARGlyZWN0aXZlYCwgYEBDb21wb25lbnRgIG9yIGBAUGlwZWAgZGVjb3JhdG9ycywgYWRkaW5nIGFuIGBASW5qZWN0YWJsZSgpYCBkZWNvcmF0b3Igd2hlbiBub25lXG4gKiBhcmUgcHJlc2VudC5cbiAqXG4gKiBBdCBsZWFzdCBvbmUgZGVjb3JhdG9yIGlzIG5vdyBtYW5kYXRvcnksIGFzIG90aGVyd2lzZSB0aGUgY29tcGlsZXIgd291bGQgbm90IGNvbXBpbGUgYW5cbiAqIGluamVjdGFibGUgZGVmaW5pdGlvbiBmb3IgdGhlIHNlcnZpY2UuIFRoaXMgaXMgdW5saWtlIFZpZXcgRW5naW5lLCB3aGVyZSBoYXZpbmcganVzdCBhbiB1bnJlbGF0ZWRcbiAqIGRlY29yYXRvciBtYXkgaGF2ZSBiZWVuIHN1ZmZpY2llbnQgZm9yIHRoZSBzZXJ2aWNlIHRvIGJlY29tZSBpbmplY3RhYmxlLlxuICpcbiAqIEluIGVzc2VuY2UsIHRoaXMgbWlncmF0aW9uIG9wZXJhdGVzIG9uIGNsYXNzZXMgdGhhdCBhcmUgdGhlbXNlbHZlcyBhbiBOZ01vZHVsZSwgRGlyZWN0aXZlIG9yXG4gKiBDb21wb25lbnQuIFRoZWlyIG1ldGFkYXRhIGlzIHN0YXRpY2FsbHkgZXZhbHVhdGVkIHNvIHRoYXQgdGhlaXIgXCJwcm92aWRlcnNcIi9cInZpZXdQcm92aWRlcnNcIlxuICogcHJvcGVydGllcyBjYW4gYmUgYW5hbHl6ZWQuIEZvciBhbnkgcHJvdmlkZXIgdGhhdCByZWZlcnMgdG8gYW4gdW5kZWNvcmF0ZWQgY2xhc3MsIHRoZSBjbGFzcyB3aWxsXG4gKiBiZSBtaWdyYXRlZCB0byBoYXZlIGFuIGBASW5qZWN0YWJsZSgpYCBkZWNvcmF0b3IuXG4gKlxuICogVGhpcyBpbXBsZW1lbnRhdGlvbiBtaXJyb3JzIHRoZSBcIm1pc3NpbmctaW5qZWN0YWJsZVwiIHNjaGVtYXRpYy5cbiAqL1xuZXhwb3J0IGNsYXNzIE1pc3NpbmdJbmplY3RhYmxlTWlncmF0aW9uIGltcGxlbWVudHMgTWlncmF0aW9uIHtcbiAgYXBwbHkoY2xheno6IENsYXNzRGVjbGFyYXRpb24sIGhvc3Q6IE1pZ3JhdGlvbkhvc3QpOiB0cy5EaWFnbm9zdGljfG51bGwge1xuICAgIGNvbnN0IGRlY29yYXRvcnMgPSBob3N0LnJlZmxlY3Rpb25Ib3N0LmdldERlY29yYXRvcnNPZkRlY2xhcmF0aW9uKGNsYXp6KTtcbiAgICBpZiAoZGVjb3JhdG9ycyA9PT0gbnVsbCkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuXG4gICAgZm9yIChjb25zdCBkZWNvcmF0b3Igb2YgZGVjb3JhdG9ycykge1xuICAgICAgY29uc3QgbmFtZSA9IGdldEFuZ3VsYXJDb3JlRGVjb3JhdG9yTmFtZShkZWNvcmF0b3IpO1xuICAgICAgaWYgKG5hbWUgPT09ICdOZ01vZHVsZScpIHtcbiAgICAgICAgbWlncmF0ZU5nTW9kdWxlUHJvdmlkZXJzKGRlY29yYXRvciwgaG9zdCk7XG4gICAgICB9IGVsc2UgaWYgKG5hbWUgPT09ICdEaXJlY3RpdmUnKSB7XG4gICAgICAgIG1pZ3JhdGVEaXJlY3RpdmVQcm92aWRlcnMoZGVjb3JhdG9yLCBob3N0LCAvKiBpc0NvbXBvbmVudCAqLyBmYWxzZSk7XG4gICAgICB9IGVsc2UgaWYgKG5hbWUgPT09ICdDb21wb25lbnQnKSB7XG4gICAgICAgIG1pZ3JhdGVEaXJlY3RpdmVQcm92aWRlcnMoZGVjb3JhdG9yLCBob3N0LCAvKiBpc0NvbXBvbmVudCAqLyB0cnVlKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gbnVsbDtcbiAgfVxufVxuXG4vKipcbiAqIEl0ZXJhdGVzIHRocm91Z2ggYWxsIGBOZ01vZHVsZS5wcm92aWRlcnNgIGFuZCBhZGRzIHRoZSBgQEluamVjdGFibGUoKWAgZGVjb3JhdG9yIHRvIGFueSBwcm92aWRlclxuICogdGhhdCBpcyBub3Qgb3RoZXJ3aXNlIGRlY29yYXRlZC5cbiAqL1xuZnVuY3Rpb24gbWlncmF0ZU5nTW9kdWxlUHJvdmlkZXJzKGRlY29yYXRvcjogRGVjb3JhdG9yLCBob3N0OiBNaWdyYXRpb25Ib3N0KTogdm9pZCB7XG4gIGlmIChkZWNvcmF0b3IuYXJncyA9PT0gbnVsbCB8fCBkZWNvcmF0b3IuYXJncy5sZW5ndGggIT09IDEpIHtcbiAgICByZXR1cm47XG4gIH1cblxuICBjb25zdCBtZXRhZGF0YSA9IGhvc3QuZXZhbHVhdG9yLmV2YWx1YXRlKGRlY29yYXRvci5hcmdzWzBdLCBmb3J3YXJkUmVmUmVzb2x2ZXIpO1xuICBpZiAoIShtZXRhZGF0YSBpbnN0YW5jZW9mIE1hcCkpIHtcbiAgICByZXR1cm47XG4gIH1cblxuICBtaWdyYXRlUHJvdmlkZXJzKG1ldGFkYXRhLCAncHJvdmlkZXJzJywgaG9zdCk7XG4gIC8vIFRPRE8oYWx4aHViKTogd2Ugc2hvdWxkIHByb2JhYmx5IGFsc28gY2hlY2sgZm9yIGBNb2R1bGVXaXRoUHJvdmlkZXJzYCBoZXJlLlxufVxuXG4vKipcbiAqIEl0ZXJhdGVzIHRocm91Z2ggYWxsIGBEaXJlY3RpdmUucHJvdmlkZXJzYCBhbmQgaWYgYGlzQ29tcG9uZW50YCBpcyBzZXQgdG8gdHJ1ZSBhbHNvXG4gKiBgQ29tcG9uZW50LnZpZXdQcm92aWRlcnNgIGFuZCBhZGRzIHRoZSBgQEluamVjdGFibGUoKWAgZGVjb3JhdG9yIHRvIGFueSBwcm92aWRlciB0aGF0IGlzIG5vdFxuICogb3RoZXJ3aXNlIGRlY29yYXRlZC5cbiAqL1xuZnVuY3Rpb24gbWlncmF0ZURpcmVjdGl2ZVByb3ZpZGVycyhcbiAgICBkZWNvcmF0b3I6IERlY29yYXRvciwgaG9zdDogTWlncmF0aW9uSG9zdCwgaXNDb21wb25lbnQ6IGJvb2xlYW4pOiB2b2lkIHtcbiAgaWYgKGRlY29yYXRvci5hcmdzID09PSBudWxsIHx8IGRlY29yYXRvci5hcmdzLmxlbmd0aCAhPT0gMSkge1xuICAgIHJldHVybjtcbiAgfVxuXG4gIGNvbnN0IG1ldGFkYXRhID0gaG9zdC5ldmFsdWF0b3IuZXZhbHVhdGUoZGVjb3JhdG9yLmFyZ3NbMF0sIGZvcndhcmRSZWZSZXNvbHZlcik7XG4gIGlmICghKG1ldGFkYXRhIGluc3RhbmNlb2YgTWFwKSkge1xuICAgIHJldHVybjtcbiAgfVxuXG4gIG1pZ3JhdGVQcm92aWRlcnMobWV0YWRhdGEsICdwcm92aWRlcnMnLCBob3N0KTtcbiAgaWYgKGlzQ29tcG9uZW50KSB7XG4gICAgbWlncmF0ZVByb3ZpZGVycyhtZXRhZGF0YSwgJ3ZpZXdQcm92aWRlcnMnLCBob3N0KTtcbiAgfVxufVxuXG4vKipcbiAqIEdpdmVuIGFuIG9iamVjdCB3aXRoIGRlY29yYXRvciBtZXRhZGF0YSwgaXRlcmF0ZXMgdGhyb3VnaCB0aGUgbGlzdCBvZiBwcm92aWRlcnMgdG8gYWRkXG4gKiBgQEluamVjdGFibGUoKWAgdG8gYW55IHByb3ZpZGVyIHRoYXQgaXMgbm90IG90aGVyd2lzZSBkZWNvcmF0ZWQuXG4gKi9cbmZ1bmN0aW9uIG1pZ3JhdGVQcm92aWRlcnMobWV0YWRhdGE6IFJlc29sdmVkVmFsdWVNYXAsIGZpZWxkOiBzdHJpbmcsIGhvc3Q6IE1pZ3JhdGlvbkhvc3QpOiB2b2lkIHtcbiAgaWYgKCFtZXRhZGF0YS5oYXMoZmllbGQpKSB7XG4gICAgcmV0dXJuO1xuICB9XG4gIGNvbnN0IHByb3ZpZGVycyA9IG1ldGFkYXRhLmdldChmaWVsZCkhO1xuICBpZiAoIUFycmF5LmlzQXJyYXkocHJvdmlkZXJzKSkge1xuICAgIHJldHVybjtcbiAgfVxuXG4gIGZvciAoY29uc3QgcHJvdmlkZXIgb2YgcHJvdmlkZXJzKSB7XG4gICAgbWlncmF0ZVByb3ZpZGVyKHByb3ZpZGVyLCBob3N0KTtcbiAgfVxufVxuXG4vKipcbiAqIEFuYWx5emVzIGEgc2luZ2xlIHByb3ZpZGVyIGVudHJ5IGFuZCBkZXRlcm1pbmVzIHRoZSBjbGFzcyB0aGF0IGlzIHJlcXVpcmVkIHRvIGhhdmUgYW5cbiAqIGBASW5qZWN0YWJsZSgpYCBkZWNvcmF0b3IuXG4gKi9cbmZ1bmN0aW9uIG1pZ3JhdGVQcm92aWRlcihwcm92aWRlcjogUmVzb2x2ZWRWYWx1ZSwgaG9zdDogTWlncmF0aW9uSG9zdCk6IHZvaWQge1xuICBpZiAocHJvdmlkZXIgaW5zdGFuY2VvZiBNYXApIHtcbiAgICBpZiAoIXByb3ZpZGVyLmhhcygncHJvdmlkZScpIHx8IHByb3ZpZGVyLmhhcygndXNlVmFsdWUnKSB8fCBwcm92aWRlci5oYXMoJ3VzZUZhY3RvcnknKSB8fFxuICAgICAgICBwcm92aWRlci5oYXMoJ3VzZUV4aXN0aW5nJykpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgaWYgKHByb3ZpZGVyLmhhcygndXNlQ2xhc3MnKSkge1xuICAgICAgLy8ge3Byb3ZpZGU6IC4uLiwgdXNlQ2xhc3M6IFNvbWVDbGFzcywgZGVwczogWy4uLl19IGRvZXMgbm90IHJlcXVpcmUgYSBkZWNvcmF0b3Igb24gU29tZUNsYXNzLFxuICAgICAgLy8gYXMgdGhlIHByb3ZpZGVyIGl0c2VsZiBjb25maWd1cmVzICdkZXBzJy4gT25seSBpZiAnZGVwcycgaXMgbWlzc2luZyB3aWxsIHRoaXMgcmVxdWlyZSBhXG4gICAgICAvLyBmYWN0b3J5IHRvIGV4aXN0IG9uIFNvbWVDbGFzcy5cbiAgICAgIGlmICghcHJvdmlkZXIuaGFzKCdkZXBzJykpIHtcbiAgICAgICAgbWlncmF0ZVByb3ZpZGVyQ2xhc3MocHJvdmlkZXIuZ2V0KCd1c2VDbGFzcycpISwgaG9zdCk7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIG1pZ3JhdGVQcm92aWRlckNsYXNzKHByb3ZpZGVyLmdldCgncHJvdmlkZScpISwgaG9zdCk7XG4gICAgfVxuICB9IGVsc2UgaWYgKEFycmF5LmlzQXJyYXkocHJvdmlkZXIpKSB7XG4gICAgZm9yIChjb25zdCB2IG9mIHByb3ZpZGVyKSB7XG4gICAgICBtaWdyYXRlUHJvdmlkZXIodiwgaG9zdCk7XG4gICAgfVxuICB9IGVsc2Uge1xuICAgIG1pZ3JhdGVQcm92aWRlckNsYXNzKHByb3ZpZGVyLCBob3N0KTtcbiAgfVxufVxuXG4vKipcbiAqIEdpdmVuIGEgcHJvdmlkZXIgY2xhc3MsIGFkZHMgdGhlIGBASW5qZWN0YWJsZSgpYCBkZWNvcmF0b3IgaWYgbm8gb3RoZXIgcmVsZXZhbnQgQW5ndWxhciBkZWNvcmF0b3JcbiAqIGlzIHByZXNlbnQgb24gdGhlIGNsYXNzLlxuICovXG5mdW5jdGlvbiBtaWdyYXRlUHJvdmlkZXJDbGFzcyhwcm92aWRlcjogUmVzb2x2ZWRWYWx1ZSwgaG9zdDogTWlncmF0aW9uSG9zdCk6IHZvaWQge1xuICAvLyBQcm92aWRlcnMgdGhhdCBkbyBub3QgcmVmZXIgdG8gYSBjbGFzcyBjYW5ub3QgYmUgbWlncmF0ZWQuXG4gIGlmICghKHByb3ZpZGVyIGluc3RhbmNlb2YgUmVmZXJlbmNlKSkge1xuICAgIHJldHVybjtcbiAgfVxuXG4gIGNvbnN0IGNsYXp6ID0gcHJvdmlkZXIubm9kZSBhcyB0cy5EZWNsYXJhdGlvbjtcbiAgaWYgKGlzQ2xhc3NEZWNsYXJhdGlvbihjbGF6eikgJiYgaG9zdC5pc0luU2NvcGUoY2xhenopICYmIG5lZWRzSW5qZWN0YWJsZURlY29yYXRvcihjbGF6eiwgaG9zdCkpIHtcbiAgICBob3N0LmluamVjdFN5bnRoZXRpY0RlY29yYXRvcihjbGF6eiwgY3JlYXRlSW5qZWN0YWJsZURlY29yYXRvcihjbGF6eikpO1xuICB9XG59XG5cbmNvbnN0IE5PX01JR1JBVEVfREVDT1JBVE9SUyA9IG5ldyBTZXQoWydJbmplY3RhYmxlJywgJ0RpcmVjdGl2ZScsICdDb21wb25lbnQnLCAnUGlwZSddKTtcblxuLyoqXG4gKiBEZXRlcm1pbmVzIGlmIHRoZSBnaXZlbiBjbGFzcyBuZWVkcyB0byBiZSBkZWNvcmF0ZWQgd2l0aCBgQEluamVjdGFibGUoKWAgYmFzZWQgb24gd2hldGhlciBpdFxuICogYWxyZWFkeSBoYXMgYW4gQW5ndWxhciBkZWNvcmF0b3IgYXBwbGllZC5cbiAqL1xuZnVuY3Rpb24gbmVlZHNJbmplY3RhYmxlRGVjb3JhdG9yKGNsYXp6OiBDbGFzc0RlY2xhcmF0aW9uLCBob3N0OiBNaWdyYXRpb25Ib3N0KTogYm9vbGVhbiB7XG4gIGNvbnN0IGRlY29yYXRvcnMgPSBob3N0LmdldEFsbERlY29yYXRvcnMoY2xhenopO1xuICBpZiAoZGVjb3JhdG9ycyA9PT0gbnVsbCkge1xuICAgIHJldHVybiB0cnVlO1xuICB9XG5cbiAgZm9yIChjb25zdCBkZWNvcmF0b3Igb2YgZGVjb3JhdG9ycykge1xuICAgIGNvbnN0IG5hbWUgPSBnZXRBbmd1bGFyQ29yZURlY29yYXRvck5hbWUoZGVjb3JhdG9yKTtcbiAgICBpZiAobmFtZSAhPT0gbnVsbCAmJiBOT19NSUdSQVRFX0RFQ09SQVRPUlMuaGFzKG5hbWUpKSB7XG4gICAgICByZXR1cm4gZmFsc2U7XG4gICAgfVxuICB9XG5cbiAgcmV0dXJuIHRydWU7XG59XG5cbi8qKlxuICogRGV0ZXJtaW5lcyB0aGUgb3JpZ2luYWwgbmFtZSBvZiBhIGRlY29yYXRvciBpZiBpdCBpcyBmcm9tICdAYW5ndWxhci9jb3JlJy4gRm9yIG90aGVyIGRlY29yYXRvcnMsXG4gKiBudWxsIGlzIHJldHVybmVkLlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0QW5ndWxhckNvcmVEZWNvcmF0b3JOYW1lKGRlY29yYXRvcjogRGVjb3JhdG9yKTogc3RyaW5nfG51bGwge1xuICBpZiAoZGVjb3JhdG9yLmltcG9ydCA9PT0gbnVsbCB8fCBkZWNvcmF0b3IuaW1wb3J0LmZyb20gIT09ICdAYW5ndWxhci9jb3JlJykge1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgcmV0dXJuIGRlY29yYXRvci5pbXBvcnQubmFtZTtcbn1cbiJdfQ==