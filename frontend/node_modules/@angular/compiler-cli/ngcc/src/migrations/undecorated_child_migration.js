/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/migrations/undecorated_child_migration", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/annotations/src/util", "@angular/compiler-cli/src/ngtsc/imports", "@angular/compiler-cli/src/ngtsc/transform", "@angular/compiler-cli/ngcc/src/migrations/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.UndecoratedChildMigration = void 0;
    var tslib_1 = require("tslib");
    var util_1 = require("@angular/compiler-cli/src/ngtsc/annotations/src/util");
    var imports_1 = require("@angular/compiler-cli/src/ngtsc/imports");
    var transform_1 = require("@angular/compiler-cli/src/ngtsc/transform");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/migrations/utils");
    var UndecoratedChildMigration = /** @class */ (function () {
        function UndecoratedChildMigration() {
        }
        UndecoratedChildMigration.prototype.apply = function (clazz, host) {
            var e_1, _a;
            // This migration looks at NgModules and considers the directives (and pipes) it declares.
            // It verifies that these classes have decorators.
            var moduleMeta = host.metadata.getNgModuleMetadata(new imports_1.Reference(clazz));
            if (moduleMeta === null) {
                // Not an NgModule; don't care.
                return null;
            }
            try {
                // Examine each of the declarations to see if it needs to be migrated.
                for (var _b = tslib_1.__values(moduleMeta.declarations), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var decl = _c.value;
                    this.maybeMigrate(decl, host);
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
            return null;
        };
        UndecoratedChildMigration.prototype.maybeMigrate = function (ref, host) {
            if (utils_1.hasDirectiveDecorator(host, ref.node) || utils_1.hasPipeDecorator(host, ref.node)) {
                // Stop if one of the classes in the chain is actually decorated with @Directive, @Component,
                // or @Pipe.
                return;
            }
            var baseRef = util_1.readBaseClass(ref.node, host.reflectionHost, host.evaluator);
            if (baseRef === null) {
                // Stop: can't migrate a class with no parent.
                return;
            }
            else if (baseRef === 'dynamic') {
                // Stop: can't migrate a class with an indeterminate parent.
                return;
            }
            // Apply the migration recursively, to handle inheritance chains.
            this.maybeMigrate(baseRef, host);
            // After the above call, `host.metadata` should have metadata for the base class, if indeed this
            // is a directive inheritance chain.
            var baseMeta = host.metadata.getDirectiveMetadata(baseRef);
            if (baseMeta === null) {
                // Stop: this isn't a directive inheritance chain after all.
                return;
            }
            // Otherwise, decorate the class with @Component() or @Directive(), as appropriate.
            if (baseMeta.isComponent) {
                host.injectSyntheticDecorator(ref.node, utils_1.createComponentDecorator(ref.node, baseMeta), transform_1.HandlerFlags.FULL_INHERITANCE);
            }
            else {
                host.injectSyntheticDecorator(ref.node, utils_1.createDirectiveDecorator(ref.node, baseMeta), transform_1.HandlerFlags.FULL_INHERITANCE);
            }
            // Success!
        };
        return UndecoratedChildMigration;
    }());
    exports.UndecoratedChildMigration = UndecoratedChildMigration;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidW5kZWNvcmF0ZWRfY2hpbGRfbWlncmF0aW9uLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL25nY2Mvc3JjL21pZ3JhdGlvbnMvdW5kZWNvcmF0ZWRfY2hpbGRfbWlncmF0aW9uLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFJSCw2RUFBc0U7SUFDdEUsbUVBQXFEO0lBRXJELHVFQUEwRDtJQUcxRCx5RUFBb0g7SUFFcEg7UUFBQTtRQXdEQSxDQUFDO1FBdkRDLHlDQUFLLEdBQUwsVUFBTSxLQUF1QixFQUFFLElBQW1COztZQUNoRCwwRkFBMEY7WUFDMUYsa0RBQWtEO1lBQ2xELElBQU0sVUFBVSxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsbUJBQW1CLENBQUMsSUFBSSxtQkFBUyxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUM7WUFDM0UsSUFBSSxVQUFVLEtBQUssSUFBSSxFQUFFO2dCQUN2QiwrQkFBK0I7Z0JBQy9CLE9BQU8sSUFBSSxDQUFDO2FBQ2I7O2dCQUVELHNFQUFzRTtnQkFDdEUsS0FBbUIsSUFBQSxLQUFBLGlCQUFBLFVBQVUsQ0FBQyxZQUFZLENBQUEsZ0JBQUEsNEJBQUU7b0JBQXZDLElBQU0sSUFBSSxXQUFBO29CQUNiLElBQUksQ0FBQyxZQUFZLENBQUMsSUFBSSxFQUFFLElBQUksQ0FBQyxDQUFDO2lCQUMvQjs7Ozs7Ozs7O1lBRUQsT0FBTyxJQUFJLENBQUM7UUFDZCxDQUFDO1FBRUQsZ0RBQVksR0FBWixVQUFhLEdBQWdDLEVBQUUsSUFBbUI7WUFDaEUsSUFBSSw2QkFBcUIsQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLElBQUksQ0FBQyxJQUFJLHdCQUFnQixDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsSUFBSSxDQUFDLEVBQUU7Z0JBQzdFLDZGQUE2RjtnQkFDN0YsWUFBWTtnQkFDWixPQUFPO2FBQ1I7WUFFRCxJQUFNLE9BQU8sR0FBRyxvQkFBYSxDQUFDLEdBQUcsQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLGNBQWMsRUFBRSxJQUFJLENBQUMsU0FBUyxDQUFDLENBQUM7WUFDN0UsSUFBSSxPQUFPLEtBQUssSUFBSSxFQUFFO2dCQUNwQiw4Q0FBOEM7Z0JBQzlDLE9BQU87YUFDUjtpQkFBTSxJQUFJLE9BQU8sS0FBSyxTQUFTLEVBQUU7Z0JBQ2hDLDREQUE0RDtnQkFDNUQsT0FBTzthQUNSO1lBRUQsaUVBQWlFO1lBQ2pFLElBQUksQ0FBQyxZQUFZLENBQUMsT0FBTyxFQUFFLElBQUksQ0FBQyxDQUFDO1lBRWpDLGdHQUFnRztZQUNoRyxvQ0FBb0M7WUFDcEMsSUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLFFBQVEsQ0FBQyxvQkFBb0IsQ0FBQyxPQUFPLENBQUMsQ0FBQztZQUM3RCxJQUFJLFFBQVEsS0FBSyxJQUFJLEVBQUU7Z0JBQ3JCLDREQUE0RDtnQkFDNUQsT0FBTzthQUNSO1lBRUQsbUZBQW1GO1lBQ25GLElBQUksUUFBUSxDQUFDLFdBQVcsRUFBRTtnQkFDeEIsSUFBSSxDQUFDLHdCQUF3QixDQUN6QixHQUFHLENBQUMsSUFBSSxFQUFFLGdDQUF3QixDQUFDLEdBQUcsQ0FBQyxJQUFJLEVBQUUsUUFBUSxDQUFDLEVBQUUsd0JBQVksQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDO2FBQzVGO2lCQUFNO2dCQUNMLElBQUksQ0FBQyx3QkFBd0IsQ0FDekIsR0FBRyxDQUFDLElBQUksRUFBRSxnQ0FBd0IsQ0FBQyxHQUFHLENBQUMsSUFBSSxFQUFFLFFBQVEsQ0FBQyxFQUFFLHdCQUFZLENBQUMsZ0JBQWdCLENBQUMsQ0FBQzthQUM1RjtZQUVELFdBQVc7UUFDYixDQUFDO1FBQ0gsZ0NBQUM7SUFBRCxDQUFDLEFBeERELElBd0RDO0lBeERZLDhEQUF5QiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtyZWFkQmFzZUNsYXNzfSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvYW5ub3RhdGlvbnMvc3JjL3V0aWwnO1xuaW1wb3J0IHtSZWZlcmVuY2V9IGZyb20gJy4uLy4uLy4uL3NyYy9uZ3RzYy9pbXBvcnRzJztcbmltcG9ydCB7Q2xhc3NEZWNsYXJhdGlvbn0gZnJvbSAnLi4vLi4vLi4vc3JjL25ndHNjL3JlZmxlY3Rpb24nO1xuaW1wb3J0IHtIYW5kbGVyRmxhZ3N9IGZyb20gJy4uLy4uLy4uL3NyYy9uZ3RzYy90cmFuc2Zvcm0nO1xuXG5pbXBvcnQge01pZ3JhdGlvbiwgTWlncmF0aW9uSG9zdH0gZnJvbSAnLi9taWdyYXRpb24nO1xuaW1wb3J0IHtjcmVhdGVDb21wb25lbnREZWNvcmF0b3IsIGNyZWF0ZURpcmVjdGl2ZURlY29yYXRvciwgaGFzRGlyZWN0aXZlRGVjb3JhdG9yLCBoYXNQaXBlRGVjb3JhdG9yfSBmcm9tICcuL3V0aWxzJztcblxuZXhwb3J0IGNsYXNzIFVuZGVjb3JhdGVkQ2hpbGRNaWdyYXRpb24gaW1wbGVtZW50cyBNaWdyYXRpb24ge1xuICBhcHBseShjbGF6ejogQ2xhc3NEZWNsYXJhdGlvbiwgaG9zdDogTWlncmF0aW9uSG9zdCk6IHRzLkRpYWdub3N0aWN8bnVsbCB7XG4gICAgLy8gVGhpcyBtaWdyYXRpb24gbG9va3MgYXQgTmdNb2R1bGVzIGFuZCBjb25zaWRlcnMgdGhlIGRpcmVjdGl2ZXMgKGFuZCBwaXBlcykgaXQgZGVjbGFyZXMuXG4gICAgLy8gSXQgdmVyaWZpZXMgdGhhdCB0aGVzZSBjbGFzc2VzIGhhdmUgZGVjb3JhdG9ycy5cbiAgICBjb25zdCBtb2R1bGVNZXRhID0gaG9zdC5tZXRhZGF0YS5nZXROZ01vZHVsZU1ldGFkYXRhKG5ldyBSZWZlcmVuY2UoY2xhenopKTtcbiAgICBpZiAobW9kdWxlTWV0YSA9PT0gbnVsbCkge1xuICAgICAgLy8gTm90IGFuIE5nTW9kdWxlOyBkb24ndCBjYXJlLlxuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuXG4gICAgLy8gRXhhbWluZSBlYWNoIG9mIHRoZSBkZWNsYXJhdGlvbnMgdG8gc2VlIGlmIGl0IG5lZWRzIHRvIGJlIG1pZ3JhdGVkLlxuICAgIGZvciAoY29uc3QgZGVjbCBvZiBtb2R1bGVNZXRhLmRlY2xhcmF0aW9ucykge1xuICAgICAgdGhpcy5tYXliZU1pZ3JhdGUoZGVjbCwgaG9zdCk7XG4gICAgfVxuXG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBtYXliZU1pZ3JhdGUocmVmOiBSZWZlcmVuY2U8Q2xhc3NEZWNsYXJhdGlvbj4sIGhvc3Q6IE1pZ3JhdGlvbkhvc3QpOiB2b2lkIHtcbiAgICBpZiAoaGFzRGlyZWN0aXZlRGVjb3JhdG9yKGhvc3QsIHJlZi5ub2RlKSB8fCBoYXNQaXBlRGVjb3JhdG9yKGhvc3QsIHJlZi5ub2RlKSkge1xuICAgICAgLy8gU3RvcCBpZiBvbmUgb2YgdGhlIGNsYXNzZXMgaW4gdGhlIGNoYWluIGlzIGFjdHVhbGx5IGRlY29yYXRlZCB3aXRoIEBEaXJlY3RpdmUsIEBDb21wb25lbnQsXG4gICAgICAvLyBvciBAUGlwZS5cbiAgICAgIHJldHVybjtcbiAgICB9XG5cbiAgICBjb25zdCBiYXNlUmVmID0gcmVhZEJhc2VDbGFzcyhyZWYubm9kZSwgaG9zdC5yZWZsZWN0aW9uSG9zdCwgaG9zdC5ldmFsdWF0b3IpO1xuICAgIGlmIChiYXNlUmVmID09PSBudWxsKSB7XG4gICAgICAvLyBTdG9wOiBjYW4ndCBtaWdyYXRlIGEgY2xhc3Mgd2l0aCBubyBwYXJlbnQuXG4gICAgICByZXR1cm47XG4gICAgfSBlbHNlIGlmIChiYXNlUmVmID09PSAnZHluYW1pYycpIHtcbiAgICAgIC8vIFN0b3A6IGNhbid0IG1pZ3JhdGUgYSBjbGFzcyB3aXRoIGFuIGluZGV0ZXJtaW5hdGUgcGFyZW50LlxuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIC8vIEFwcGx5IHRoZSBtaWdyYXRpb24gcmVjdXJzaXZlbHksIHRvIGhhbmRsZSBpbmhlcml0YW5jZSBjaGFpbnMuXG4gICAgdGhpcy5tYXliZU1pZ3JhdGUoYmFzZVJlZiwgaG9zdCk7XG5cbiAgICAvLyBBZnRlciB0aGUgYWJvdmUgY2FsbCwgYGhvc3QubWV0YWRhdGFgIHNob3VsZCBoYXZlIG1ldGFkYXRhIGZvciB0aGUgYmFzZSBjbGFzcywgaWYgaW5kZWVkIHRoaXNcbiAgICAvLyBpcyBhIGRpcmVjdGl2ZSBpbmhlcml0YW5jZSBjaGFpbi5cbiAgICBjb25zdCBiYXNlTWV0YSA9IGhvc3QubWV0YWRhdGEuZ2V0RGlyZWN0aXZlTWV0YWRhdGEoYmFzZVJlZik7XG4gICAgaWYgKGJhc2VNZXRhID09PSBudWxsKSB7XG4gICAgICAvLyBTdG9wOiB0aGlzIGlzbid0IGEgZGlyZWN0aXZlIGluaGVyaXRhbmNlIGNoYWluIGFmdGVyIGFsbC5cbiAgICAgIHJldHVybjtcbiAgICB9XG5cbiAgICAvLyBPdGhlcndpc2UsIGRlY29yYXRlIHRoZSBjbGFzcyB3aXRoIEBDb21wb25lbnQoKSBvciBARGlyZWN0aXZlKCksIGFzIGFwcHJvcHJpYXRlLlxuICAgIGlmIChiYXNlTWV0YS5pc0NvbXBvbmVudCkge1xuICAgICAgaG9zdC5pbmplY3RTeW50aGV0aWNEZWNvcmF0b3IoXG4gICAgICAgICAgcmVmLm5vZGUsIGNyZWF0ZUNvbXBvbmVudERlY29yYXRvcihyZWYubm9kZSwgYmFzZU1ldGEpLCBIYW5kbGVyRmxhZ3MuRlVMTF9JTkhFUklUQU5DRSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIGhvc3QuaW5qZWN0U3ludGhldGljRGVjb3JhdG9yKFxuICAgICAgICAgIHJlZi5ub2RlLCBjcmVhdGVEaXJlY3RpdmVEZWNvcmF0b3IocmVmLm5vZGUsIGJhc2VNZXRhKSwgSGFuZGxlckZsYWdzLkZVTExfSU5IRVJJVEFOQ0UpO1xuICAgIH1cblxuICAgIC8vIFN1Y2Nlc3MhXG4gIH1cbn1cbiJdfQ==