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
        define("@angular/compiler-cli/ngcc/src/host/delegating_host", ["require", "exports", "@angular/compiler-cli/src/ngtsc/util/src/typescript"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.DelegatingReflectionHost = void 0;
    var typescript_1 = require("@angular/compiler-cli/src/ngtsc/util/src/typescript");
    /**
     * A reflection host implementation that delegates reflector queries depending on whether they
     * reflect on declaration files (for dependent libraries) or source files within the entry-point
     * that is being compiled. The first type of queries are handled by the regular TypeScript
     * reflection host, whereas the other queries are handled by an `NgccReflectionHost` that is
     * specific to the entry-point's format.
     */
    var DelegatingReflectionHost = /** @class */ (function () {
        function DelegatingReflectionHost(tsHost, ngccHost) {
            this.tsHost = tsHost;
            this.ngccHost = ngccHost;
        }
        DelegatingReflectionHost.prototype.getConstructorParameters = function (clazz) {
            if (typescript_1.isFromDtsFile(clazz)) {
                return this.tsHost.getConstructorParameters(clazz);
            }
            return this.ngccHost.getConstructorParameters(clazz);
        };
        DelegatingReflectionHost.prototype.getDeclarationOfIdentifier = function (id) {
            if (typescript_1.isFromDtsFile(id)) {
                var declaration = this.tsHost.getDeclarationOfIdentifier(id);
                return declaration !== null ? this.detectKnownDeclaration(declaration) : null;
            }
            return this.ngccHost.getDeclarationOfIdentifier(id);
        };
        DelegatingReflectionHost.prototype.getDecoratorsOfDeclaration = function (declaration) {
            if (typescript_1.isFromDtsFile(declaration)) {
                return this.tsHost.getDecoratorsOfDeclaration(declaration);
            }
            return this.ngccHost.getDecoratorsOfDeclaration(declaration);
        };
        DelegatingReflectionHost.prototype.getDefinitionOfFunction = function (fn) {
            if (typescript_1.isFromDtsFile(fn)) {
                return this.tsHost.getDefinitionOfFunction(fn);
            }
            return this.ngccHost.getDefinitionOfFunction(fn);
        };
        DelegatingReflectionHost.prototype.getDtsDeclaration = function (declaration) {
            if (typescript_1.isFromDtsFile(declaration)) {
                return this.tsHost.getDtsDeclaration(declaration);
            }
            return this.ngccHost.getDtsDeclaration(declaration);
        };
        DelegatingReflectionHost.prototype.getExportsOfModule = function (module) {
            var _this = this;
            if (typescript_1.isFromDtsFile(module)) {
                var exportMap = this.tsHost.getExportsOfModule(module);
                if (exportMap !== null) {
                    exportMap.forEach(function (decl) { return _this.detectKnownDeclaration(decl); });
                }
                return exportMap;
            }
            return this.ngccHost.getExportsOfModule(module);
        };
        DelegatingReflectionHost.prototype.getGenericArityOfClass = function (clazz) {
            if (typescript_1.isFromDtsFile(clazz)) {
                return this.tsHost.getGenericArityOfClass(clazz);
            }
            return this.ngccHost.getGenericArityOfClass(clazz);
        };
        DelegatingReflectionHost.prototype.getImportOfIdentifier = function (id) {
            if (typescript_1.isFromDtsFile(id)) {
                return this.tsHost.getImportOfIdentifier(id);
            }
            return this.ngccHost.getImportOfIdentifier(id);
        };
        DelegatingReflectionHost.prototype.getInternalNameOfClass = function (clazz) {
            if (typescript_1.isFromDtsFile(clazz)) {
                return this.tsHost.getInternalNameOfClass(clazz);
            }
            return this.ngccHost.getInternalNameOfClass(clazz);
        };
        DelegatingReflectionHost.prototype.getAdjacentNameOfClass = function (clazz) {
            if (typescript_1.isFromDtsFile(clazz)) {
                return this.tsHost.getAdjacentNameOfClass(clazz);
            }
            return this.ngccHost.getAdjacentNameOfClass(clazz);
        };
        DelegatingReflectionHost.prototype.getMembersOfClass = function (clazz) {
            if (typescript_1.isFromDtsFile(clazz)) {
                return this.tsHost.getMembersOfClass(clazz);
            }
            return this.ngccHost.getMembersOfClass(clazz);
        };
        DelegatingReflectionHost.prototype.getVariableValue = function (declaration) {
            if (typescript_1.isFromDtsFile(declaration)) {
                return this.tsHost.getVariableValue(declaration);
            }
            return this.ngccHost.getVariableValue(declaration);
        };
        DelegatingReflectionHost.prototype.hasBaseClass = function (clazz) {
            if (typescript_1.isFromDtsFile(clazz)) {
                return this.tsHost.hasBaseClass(clazz);
            }
            return this.ngccHost.hasBaseClass(clazz);
        };
        DelegatingReflectionHost.prototype.getBaseClassExpression = function (clazz) {
            if (typescript_1.isFromDtsFile(clazz)) {
                return this.tsHost.getBaseClassExpression(clazz);
            }
            return this.ngccHost.getBaseClassExpression(clazz);
        };
        DelegatingReflectionHost.prototype.isClass = function (node) {
            if (typescript_1.isFromDtsFile(node)) {
                return this.tsHost.isClass(node);
            }
            return this.ngccHost.isClass(node);
        };
        // Note: the methods below are specific to ngcc and the entry-point that is being compiled, so
        // they don't take declaration files into account.
        DelegatingReflectionHost.prototype.findClassSymbols = function (sourceFile) {
            return this.ngccHost.findClassSymbols(sourceFile);
        };
        DelegatingReflectionHost.prototype.getClassSymbol = function (node) {
            return this.ngccHost.getClassSymbol(node);
        };
        DelegatingReflectionHost.prototype.getDecoratorsOfSymbol = function (symbol) {
            return this.ngccHost.getDecoratorsOfSymbol(symbol);
        };
        DelegatingReflectionHost.prototype.getSwitchableDeclarations = function (module) {
            return this.ngccHost.getSwitchableDeclarations(module);
        };
        DelegatingReflectionHost.prototype.getEndOfClass = function (classSymbol) {
            return this.ngccHost.getEndOfClass(classSymbol);
        };
        DelegatingReflectionHost.prototype.detectKnownDeclaration = function (decl) {
            return this.ngccHost.detectKnownDeclaration(decl);
        };
        return DelegatingReflectionHost;
    }());
    exports.DelegatingReflectionHost = DelegatingReflectionHost;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGVsZWdhdGluZ19ob3N0LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL25nY2Mvc3JjL2hvc3QvZGVsZWdhdGluZ19ob3N0LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQUtILGtGQUFxRTtJQUlyRTs7Ozs7O09BTUc7SUFDSDtRQUNFLGtDQUFvQixNQUFzQixFQUFVLFFBQTRCO1lBQTVELFdBQU0sR0FBTixNQUFNLENBQWdCO1lBQVUsYUFBUSxHQUFSLFFBQVEsQ0FBb0I7UUFBRyxDQUFDO1FBRXBGLDJEQUF3QixHQUF4QixVQUF5QixLQUF1QjtZQUM5QyxJQUFJLDBCQUFhLENBQUMsS0FBSyxDQUFDLEVBQUU7Z0JBQ3hCLE9BQU8sSUFBSSxDQUFDLE1BQU0sQ0FBQyx3QkFBd0IsQ0FBQyxLQUFLLENBQUMsQ0FBQzthQUNwRDtZQUNELE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyx3QkFBd0IsQ0FBQyxLQUFLLENBQUMsQ0FBQztRQUN2RCxDQUFDO1FBRUQsNkRBQTBCLEdBQTFCLFVBQTJCLEVBQWlCO1lBQzFDLElBQUksMEJBQWEsQ0FBQyxFQUFFLENBQUMsRUFBRTtnQkFDckIsSUFBTSxXQUFXLEdBQUcsSUFBSSxDQUFDLE1BQU0sQ0FBQywwQkFBMEIsQ0FBQyxFQUFFLENBQUMsQ0FBQztnQkFDL0QsT0FBTyxXQUFXLEtBQUssSUFBSSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsc0JBQXNCLENBQUMsV0FBVyxDQUFDLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQzthQUMvRTtZQUNELE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQywwQkFBMEIsQ0FBQyxFQUFFLENBQUMsQ0FBQztRQUN0RCxDQUFDO1FBRUQsNkRBQTBCLEdBQTFCLFVBQTJCLFdBQTJCO1lBQ3BELElBQUksMEJBQWEsQ0FBQyxXQUFXLENBQUMsRUFB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UUFFRCw4RkFBOEY7UUFDOUYsa0RBQWtEO1FBRWxELG1EQUFnQixHQUFoQixVQUFpQixVQUF5QjtZQUN4QyxPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMsZ0JBQWdCLENBQUMsVUFBVSxDQUFDLENBQUM7UUFDcEQsQ0FBQztRQUVELGlEQUFjLEdBQWQsVUFBZSxJQUFhO1lBQzFCLE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxjQUFjLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDNUMsQ0FBQztRQUVELHdEQUFxQixHQUFyQixVQUFzQixNQUF1QjtZQUMzQyxPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMscUJBQXFCLENBQUMsTUFBTSxDQUFDLENBQUM7UUFDckQsQ0FBQztRQUVELDREQUF5QixHQUF6QixVQUEwQixNQUFlO1lBQ3ZDLE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyx5QkFBeUIsQ0FBQyxNQUFNLENBQUMsQ0FBQztRQUN6RCxDQUFDO1FBRUQsZ0RBQWEsR0FBYixVQUFjLFdBQTRCO1lBQ3hDLE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxhQUFhLENBQUMsV0FBVyxDQUFDLENBQUM7UUFDbEQsQ0FBQztRQUVELHlEQUFzQixHQUF0QixVQUE4QyxJQUFPO1lBQ25ELE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxzQkFBc0IsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUNwRCxDQUFDO1FBQ0gsK0JBQUM7SUFBRCxDQUFDLEFBN0lELElBNklDO0lBN0lZLDREQUF3QiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtDbGFzc0RlY2xhcmF0aW9uLCBDbGFzc01lbWJlciwgQ3RvclBhcmFtZXRlciwgRGVjbGFyYXRpb24sIERlY29yYXRvciwgRnVuY3Rpb25EZWZpbml0aW9uLCBJbXBvcnQsIFJlZmxlY3Rpb25Ib3N0fSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvcmVmbGVjdGlvbic7XG5pbXBvcnQge2lzRnJvbUR0c0ZpbGV9IGZyb20gJy4uLy4uLy4uL3NyYy9uZ3RzYy91dGlsL3NyYy90eXBlc2NyaXB0JztcblxuaW1wb3J0IHtOZ2NjQ2xhc3NTeW1ib2wsIE5nY2NSZWZsZWN0aW9uSG9zdCwgU3dpdGNoYWJsZVZhcmlhYmxlRGVjbGFyYXRpb259IGZyb20gJy4vbmdjY19ob3N0JztcblxuLyoqXG4gKiBBIHJlZmxlY3Rpb24gaG9zdCBpbXBsZW1lbnRhdGlvbiB0aGF0IGRlbGVnYXRlcyByZWZsZWN0b3IgcXVlcmllcyBkZXBlbmRpbmcgb24gd2hldGhlciB0aGV5XG4gKiByZWZsZWN0IG9uIGRlY2xhcmF0aW9uIGZpbGVzIChmb3IgZGVwZW5kZW50IGxpYnJhcmllcykgb3Igc291cmNlIGZpbGVzIHdpdGhpbiB0aGUgZW50cnktcG9pbnRcbiAqIHRoYXQgaXMgYmVpbmcgY29tcGlsZWQuIFRoZSBmaXJzdCB0eXBlIG9mIHF1ZXJpZXMgYXJlIGhhbmRsZWQgYnkgdGhlIHJlZ3VsYXIgVHlwZVNjcmlwdFxuICogcmVmbGVjdGlvbiBob3N0LCB3aGVyZWFzIHRoZSBvdGhlciBxdWVyaWVzIGFyZSBoYW5kbGVkIGJ5IGFuIGBOZ2NjUmVmbGVjdGlvbkhvc3RgIHRoYXQgaXNcbiAqIHNwZWNpZmljIHRvIHRoZSBlbnRyeS1wb2ludCdzIGZvcm1hdC5cbiAqL1xuZXhwb3J0IGNsYXNzIERlbGVnYXRpbmdSZWZsZWN0aW9uSG9zdCBpbXBsZW1lbnRzIE5nY2NSZWZsZWN0aW9uSG9zdCB7XG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgdHNIb3N0OiBSZWZsZWN0aW9uSG9zdCwgcHJpdmF0ZSBuZ2NjSG9zdDogTmdjY1JlZmxlY3Rpb25Ib3N0KSB7fVxuXG4gIGdldENvbnN0cnVjdG9yUGFyYW1ldGVycyhjbGF6ejogQ2xhc3NEZWNsYXJhdGlvbik6IEN0b3JQYXJhbWV0ZXJbXXxudWxsIHtcbiAgICBpZiAoaXNGcm9tRHRzRmlsZShjbGF6eikpIHtcbiAgICAgIHJldHVybiB0aGlzLnRzSG9zdC5nZXRDb25zdHJ1Y3RvclBhcmFtZXRlcnMoY2xhenopO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5uZ2NjSG9zdC5nZXRDb25zdHJ1Y3RvclBhcmFtZXRlcnMoY2xhenopO1xuICB9XG5cbiAgZ2V0RGVjbGFyYXRpb25PZklkZW50aWZpZXIoaWQ6IHRzLklkZW50aWZpZXIpOiBEZWNsYXJhdGlvbnxudWxsIHtcbiAgICBpZiAoaXNGcm9tRHRzRmlsZShpZCkpIHtcbiAgICAgIGNvbnN0IGRlY2xhcmF0aW9uID0gdGhpcy50c0hvc3QuZ2V0RGVjbGFyYXRpb25PZklkZW50aWZpZXIoaWQpO1xuICAgICAgcmV0dXJuIGRlY2xhcmF0aW9uICE9PSBudWxsID8gdGhpcy5kZXRlY3RLbm93bkRlY2xhcmF0aW9uKGRlY2xhcmF0aW9uKSA6IG51bGw7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLm5nY2NIb3N0LmdldERlY2xhcmF0aW9uT2ZJZGVudGlmaWVyKGlkKTtcbiAgfVxuXG4gIGdldERlY29yYXRvcnNPZkRlY2xhcmF0aW9uKGRlY2xhcmF0aW9uOiB0cy5EZWNsYXJhdGlvbik6IERlY29yYXRvcltdfG51bGwge1xuICAgIGlmIChpc0Zyb21EdHNGaWxlKGRlY2xhcmF0aW9uKSkge1xuICAgICAgcmV0dXJuIHRoaXMudHNIb3N0LmdldERlY29yYXRvcnNPZkRlY2xhcmF0aW9uKGRlY2xhcmF0aW9uKTtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMubmdjY0hvc3QuZ2V0RGVjb3JhdG9yc09mRGVjbGFyYXRpb24oZGVjbGFyYXRpb24pO1xuICB9XG5cbiAgZ2V0RGVmaW5pdGlvbk9mRnVuY3Rpb24oZm46IHRzLk5vZGUpOiBGdW5jdGlvbkRlZmluaXRpb258bnVsbCB7XG4gICAgaWYgKGlzRnJvbUR0c0ZpbGUoZm4pKSB7XG4gICAgICByZXR1cm4gdGhpcy50c0hvc3QuZ2V0RGVmaW5pdGlvbk9mRnVuY3Rpb24oZm4pO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5uZ2NjSG9zdC5nZXREZWZpbml0aW9uT2ZGdW5jdGlvbihmbik7XG4gIH1cblxuICBnZXREdHNEZWNsYXJhdGlvbihkZWNsYXJhdGlvbjogdHMuRGVjbGFyYXRpb24pOiB0cy5EZWNsYXJhdGlvbnxudWxsIHtcbiAgICBpZiAoaXNGcm9tRHRzRmlsZShkZWNsYXJhdGlvbikpIHtcbiAgICAgIHJldHVybiB0aGlzLnRzSG9zdC5nZXREdHNEZWNsYXJhdGlvbihkZWNsYXJhdGlvbik7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLm5nY2NIb3N0LmdldER0c0RlY2xhcmF0aW9uKGRlY2xhcmF0aW9uKTtcbiAgfVxuXG4gIGdldEV4cG9ydHNPZk1vZHVsZShtb2R1bGU6IHRzLk5vZGUpOiBNYXA8c3RyaW5nLCBEZWNsYXJhdGlvbj58bnVsbCB7XG4gICAgaWYgKGlzRnJvbUR0c0ZpbGUobW9kdWxlKSkge1xuICAgICAgY29uc3QgZXhwb3J0TWFwID0gdGhpcy50c0hvc3QuZ2V0RXhwb3J0c09mTW9kdWxlKG1vZHVsZSk7XG5cbiAgICAgIGlmIChleHBvcnRNYXAgIT09IG51bGwpIHtcbiAgICAgICAgZXhwb3J0TWFwLmZvckVhY2goZGVjbCA9PiB0aGlzLmRldGVjdEtub3duRGVjbGFyYXRpb24oZGVjbCkpO1xuICAgICAgfVxuXG4gICAgICByZXR1cm4gZXhwb3J0TWFwO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5uZ2NjSG9zdC5nZXRFeHBvcnRzT2ZNb2R1bGUobW9kdWxlKTtcbiAgfVxuXG4gIGdldEdlbmVyaWNBcml0eU9mQ2xhc3MoY2xheno6IENsYXNzRGVjbGFyYXRpb24pOiBudW1iZXJ8bnVsbCB7XG4gICAgaWYgKGlzRnJvbUR0c0ZpbGUoY2xhenopKSB7XG4gICAgICByZXR1cm4gdGhpcy50c0hvc3QuZ2V0R2VuZXJpY0FyaXR5T2ZDbGFzcyhjbGF6eik7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLm5nY2NIb3N0LmdldEdlbmVyaWNBcml0eU9mQ2xhc3MoY2xhenopO1xuICB9XG5cbiAgZ2V0SW1wb3J0T2ZJZGVudGlmaWVyKGlkOiB0cy5JZGVudGlmaWVyKTogSW1wb3J0fG51bGwge1xuICAgIGlmIChpc0Zyb21EdHNGaWxlKGlkKSkge1xuICAgICAgcmV0dXJuIHRoaXMudHNIb3N0LmdldEltcG9ydE9mSWRlbnRpZmllcihpZCk7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLm5nY2NIb3N0LmdldEltcG9ydE9mSWRlbnRpZmllcihpZCk7XG4gIH1cblxuICBnZXRJbnRlcm5hbE5hbWVPZkNsYXNzKGNsYXp6OiBDbGFzc0RlY2xhcmF0aW9uKTogdHMuSWRlbnRpZmllciB7XG4gICAgaWYgKGlzRnJvbUR0c0ZpbGUoY2xhenopKSB7XG4gICAgICByZXR1cm4gdGhpcy50c0hvc3QuZ2V0SW50ZXJuYWxOYW1lT2ZDbGFzcyhjbGF6eik7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLm5nY2NIb3N0LmdldEludGVybmFsTmFtZU9mQ2xhc3MoY2xhenopO1xuICB9XG5cbiAgZ2V0QWRqYWNlbnROYW1lT2ZDbGFzcyhjbGF6ejogQ2xhc3NEZWNsYXJhdGlvbik6IHRzLklkZW50aWZpZXIge1xuICAgIGlmIChpc0Zyb21EdHNGaWxlKGNsYXp6KSkge1xuICAgICAgcmV0dXJuIHRoaXMudHNIb3N0LmdldEFkamFjZW50TmFtZU9mQ2xhc3MoY2xhenopO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5uZ2NjSG9zdC5nZXRBZGphY2VudE5hbWVPZkNsYXNzKGNsYXp6KTtcbiAgfVxuXG4gIGdldE1lbWJlcnNPZkNsYXNzKGNsYXp6OiBDbGFzc0RlY2xhcmF0aW9uKTogQ2xhc3NNZW1iZXJbXSB7XG4gICAgaWYgKGlzRnJvbUR0c0ZpbGUoY2xhenopKSB7XG4gICAgICByZXR1cm4gdGhpcy50c0hvc3QuZ2V0TWVtYmVyc09mQ2xhc3MoY2xhenopO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5uZ2NjSG9zdC5nZXRNZW1iZXJzT2ZDbGFzcyhjbGF6eik7XG4gIH1cblxuICBnZXRWYXJpYWJsZVZhbHVlKGRlY2xhcmF0aW9uOiB0cy5WYXJpYWJsZURlY2xhcmF0aW9uKTogdHMuRXhwcmVzc2lvbnxudWxsIHtcbiAgICBpZiAoaXNGcm9tRHRzRmlsZShkZWNsYXJhdGlvbikpIHtcbiAgICAgIHJldHVybiB0aGlzLnRzSG9zdC5nZXRWYXJpYWJsZVZhbHVlKGRlY2xhcmF0aW9uKTtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMubmdjY0hvc3QuZ2V0VmFyaWFibGVWYWx1ZShkZWNsYXJhdGlvbik7XG4gIH1cblxuICBoYXNCYXNlQ2xhc3MoY2xheno6IENsYXNzRGVjbGFyYXRpb24pOiBib29sZWFuIHtcbiAgICBpZiAoaXNGcm9tRHRzRmlsZShjbGF6eikpIHtcbiAgICAgIHJldHVybiB0aGlzLnRzSG9zdC5oYXNCYXNlQ2xhc3MoY2xhenopO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5uZ2NjSG9zdC5oYXNCYXNlQ2xhc3MoY2xhenopO1xuICB9XG5cbiAgZ2V0QmFzZUNsYXNzRXhwcmVzc2lvbihjbGF6ejogQ2xhc3NEZWNsYXJhdGlvbik6IHRzLkV4cHJlc3Npb258bnVsbCB7XG4gICAgaWYgKGlzRnJvbUR0c0ZpbGUoY2xhenopKSB7XG4gICAgICByZXR1cm4gdGhpcy50c0hvc3QuZ2V0QmFzZUNsYXNzRXhwcmVzc2lvbihjbGF6eik7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLm5nY2NIb3N0LmdldEJhc2VDbGFzc0V4cHJlc3Npb24oY2xhenopO1xuICB9XG5cbiAgaXNDbGFzcyhub2RlOiB0cy5Ob2RlKTogbm9kZSBpcyBDbGFzc0RlY2xhcmF0aW9uIHtcbiAgICBpZiAoaXNGcm9tRHRzRmlsZShub2RlKSkge1xuICAgICAgcmV0dXJuIHRoaXMudHNIb3N0LmlzQ2xhc3Mobm9kZSk7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLm5nY2NIb3N0LmlzQ2xhc3Mobm9kZSk7XG4gIH1cblxuICAvLyBOb3RlOiB0aGUgbWV0aG9kcyBiZWxvdyBhcmUgc3BlY2lmaWMgdG8gbmdjYyBhbmQgdGhlIGVudHJ5LXBvaW50IHRoYXQgaXMgYmVpbmcgY29tcGlsZWQsIHNvXG4gIC8vIHRoZXkgZG9uJ3QgdGFrZSBkZWNsYXJhdGlvbiBmaWxlcyBpbnRvIGFjY291bnQuXG5cbiAgZmluZENsYXNzU3ltYm9scyhzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlKTogTmdjY0NsYXNzU3ltYm9sW10ge1xuICAgIHJldHVybiB0aGlzLm5nY2NIb3N0LmZpbmRDbGFzc1N5bWJvbHMoc291cmNlRmlsZSk7XG4gIH1cblxuICBnZXRDbGFzc1N5bWJvbChub2RlOiB0cy5Ob2RlKTogTmdjY0NsYXNzU3ltYm9sfHVuZGVmaW5lZCB7XG4gICAgcmV0dXJuIHRoaXMubmdjY0hvc3QuZ2V0Q2xhc3NTeW1ib2wobm9kZSk7XG4gIH1cblxuICBnZXREZWNvcmF0b3JzT2ZTeW1ib2woc3ltYm9sOiBOZ2NjQ2xhc3NTeW1ib2wpOiBEZWNvcmF0b3JbXXxudWxsIHtcbiAgICByZXR1cm4gdGhpcy5uZ2NjSG9zdC5nZXREZWNvcmF0b3JzT2ZTeW1ib2woc3ltYm9sKTtcbiAgfVxuXG4gIGdldFN3aXRjaGFibGVEZWNsYXJhdGlvbnMobW9kdWxlOiB0cy5Ob2RlKTogU3dpdGNoYWJsZVZhcmlhYmxlRGVjbGFyYXRpb25bXSB7XG4gICAgcmV0dXJuIHRoaXMubmdjY0hvc3QuZ2V0U3dpdGNoYWJsZURlY2xhcmF0aW9ucyhtb2R1bGUpO1xuICB9XG5cbiAgZ2V0RW5kT2ZDbGFzcyhjbGFzc1N5bWJvbDogTmdjY0NsYXNzU3ltYm9sKTogdHMuTm9kZSB7XG4gICAgcmV0dXJuIHRoaXMubmdjY0hvc3QuZ2V0RW5kT2ZDbGFzcyhjbGFzc1N5bWJvbCk7XG4gIH1cblxuICBkZXRlY3RLbm93bkRlY2xhcmF0aW9uPFQgZXh0ZW5kcyBEZWNsYXJhdGlvbj4oZGVjbDogVCk6IFQge1xuICAgIHJldHVybiB0aGlzLm5nY2NIb3N0LmRldGVjdEtub3duRGVjbGFyYXRpb24oZGVjbCk7XG4gIH1cbn1cbiJdfQ==