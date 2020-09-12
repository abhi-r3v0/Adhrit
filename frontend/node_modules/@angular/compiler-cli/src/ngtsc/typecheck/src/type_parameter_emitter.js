(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/src/ngtsc/typecheck/src/type_parameter_emitter", ["require", "exports", "typescript", "@angular/compiler-cli/src/ngtsc/imports", "@angular/compiler-cli/src/ngtsc/typecheck/src/type_emitter"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.TypeParameterEmitter = void 0;
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var ts = require("typescript");
    var imports_1 = require("@angular/compiler-cli/src/ngtsc/imports");
    var type_emitter_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/type_emitter");
    /**
     * See `TypeEmitter` for more information on the emitting process.
     */
    var TypeParameterEmitter = /** @class */ (function () {
        function TypeParameterEmitter(typeParameters, reflector) {
            this.typeParameters = typeParameters;
            this.reflector = reflector;
        }
        /**
         * Determines whether the type parameters can be emitted. If this returns true, then a call to
         * `emit` is known to succeed. Vice versa, if false is returned then `emit` should not be
         * called, as it would fail.
         */
        TypeParameterEmitter.prototype.canEmit = function () {
            var _this = this;
            if (this.typeParameters === undefined) {
                return true;
            }
            return this.typeParameters.every(function (typeParam) {
                if (typeParam.constraint === undefined) {
                    return true;
                }
                return type_emitter_1.canEmitType(typeParam.constraint, function (type) { return _this.resolveTypeReference(type); });
            });
        };
        /**
         * Emits the type parameters using the provided emitter function for `Reference`s.
         */
        TypeParameterEmitter.prototype.emit = function (emitReference) {
            var _this = this;
            if (this.typeParameters === undefined) {
                return undefined;
            }
            var emitter = new type_emitter_1.TypeEmitter(function (type) { return _this.resolveTypeReference(type); }, emitReference);
            return this.typeParameters.map(function (typeParam) {
                var constraint = typeParam.constraint !== undefined ? emitter.emitType(typeParam.constraint) : undefined;
                return ts.updateTypeParameterDeclaration(
                /* node */ typeParam, 
                /* name */ typeParam.name, 
                /* constraint */ constraint, 
                /* defaultType */ typeParam.default);
            });
        };
        TypeParameterEmitter.prototype.resolveTypeReference = function (type) {
            var target = ts.isIdentifier(type.typeName) ? type.typeName : type.typeName.right;
            var declaration = this.reflector.getDeclarationOfIdentifier(target);
            // If no declaration could be resolved or does not have a `ts.Declaration`, the type cannot be
            // resolved.
            if (declaration === null || declaration.node === null) {
                return null;
            }
            // If the declaration corresponds with a local type parameter, the type reference can be used
            // as is.
            if (this.isLocalTypeParameter(declaration.node)) {
                return type;
            }
            var owningModule = null;
            if (declaration.viaModule !== null) {
                owningModule = {
                    specifier: declaration.viaModule,
                    resolutionContext: type.getSourceFile().fileName,
                };
            }
            return new imports_1.Reference(declaration.node, owningModule);
        };
        TypeParameterEmitter.prototype.isLocalTypeParameter = function (decl) {
            // Checking for local type parameters only occurs during resolution of type parameters, so it is
            // guaranteed that type parameters are present.
            return this.typeParameters.some(function (param) { return param === decl; });
        };
        return TypeParameterEmitter;
    }());
    exports.TypeParameterEmitter = TypeParameterEmitter;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHlwZV9wYXJhbWV0ZXJfZW1pdHRlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvdHlwZWNoZWNrL3NyYy90eXBlX3BhcmFtZXRlcl9lbWl0dGVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztJQUFBOzs7Ozs7T0FNRztJQUNILCtCQUFpQztJQUVqQyxtRUFBc0Q7SUFHdEQsMkZBQStFO0lBRy9FOztPQUVHO0lBQ0g7UUFDRSw4QkFDWSxjQUFtRSxFQUNuRSxTQUF5QjtZQUR6QixtQkFBYyxHQUFkLGNBQWMsQ0FBcUQ7WUFDbkUsY0FBUyxHQUFULFNBQVMsQ0FBZ0I7UUFBRyxDQUFDO1FBRXpDOzs7O1dBSUc7UUFDSCxzQ0FBTyxHQUFQO1lBQUEsaUJBWUM7WUFYQyxJQUFJLElBQUksQ0FBQyxjQUFjLEtBQUssU0FBUyxFQUFFO2dCQUNyQyxPQUFPLElBQUksQ0FBQzthQUNiO1lBRUQsT0FBTyxJQUFJLENBQUMsY0FBYyxDQUFDLEtBQUssQ0FBQyxVQUFBLFNBQVM7Z0JBQ3hDLElBQUksU0FBUyxDQUFDLFVBQVUsS0FBSyxTQUFTLEVBQUU7b0JBQ3RDLE9BQU8sSUFBSSxDQUFDO2lCQUNiO2dCQUVELE9BQU8sMEJBQVcsQ0FBQyxTQUFTLENBQUMsVUFBVSxFQUFFLFVBQUEsSUFBSSxJQUFJLE9BQUEsS0FBSSxDQUFDLG9CQUFvQixDQUFDLElBQUksQ0FBQyxFQUEvQixDQUErQixDQUFDLENBQUM7WUFDcEYsQ0FBQyxDQUFDLENBQUM7UUFDTCxDQUFDO1FBRUQ7O1dBRUc7UUFDSCxtQ0FBSSxHQUFKLFVBQUssYUFBOEM7WUFBbkQsaUJBaUJDO1lBaEJDLElBQUksSUFBSSxDQUFDLGNBQWMsS0FBSyxTQUFTLEVBQUU7Z0JBQ3JDLE9BQU8sU0FBUyxDQUFDO2FBQ2xCO1lBRUQsSUFBTSxPQUFPLEdBQUcsSUFBSSwwQkFBVyxDQUFDLFVBQUEsSUFBSSxJQUFJLE9BQUEsS0FBSSxDQUFDLG9CQUFvQixDQUFDLElBQUksQ0FBQyxFQUEvQixDQUErQixFQUFFLGFBQWEsQ0FBQyxDQUFDO1lBRXhGLE9BQU8sSUFBSSxDQUFDLGNBQWMsQ0FBQyxHQUFHLENBQUMsVUFBQSxTQUFTO2dCQUN0QyxJQUFNLFVBQVUsR0FDWixTQUFTLENBQUMsVUFBVSxLQUFLLFNBQVMsQ0FBQyxDQUFDLENBQUMsT0FBTyxDQUFDLFFBQVEsQ0FBQyxTQUFTLENBQUMsVUFBVSxDQUFDLENBQUMsQ0FBQyxDQUFDLFNBQVMsQ0FBQztnQkFFNUYsT0FBTyxFQUFFLENBQUMsOEJBQThCO2dCQUNwQyxVQUFVLENBQUMsU0FBUztnQkFDcEIsVUFBVSxDQUFDLFNBQVMsQ0FBQyxJQUFJO2dCQUN6QixnQkFBZ0IsQ0FBQyxVQUFVO2dCQUMzQixpQkFBaUIsQ0FBQyxTQUFTLENBQUMsT0FBTyxDQUFDLENBQUM7WUFDM0MsQ0FBQyxDQUFDLENBQUM7UUFDTCxDQUFDO1FBRU8sbURBQW9CLEdBQTVCLFVBQTZCLElBQTBCO1lBQ3JELElBQU0sTUFBTSxHQUFHLEVBQUUsQ0FBQyxZQUFZLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLEtBQUssQ0FBQztZQUNwRixJQUFNLFdBQVcsR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDLDBCQUEwQixDQUFDLE1BQU0sQ0FBQyxDQUFDO1lBRXRFLDhGQUE4RjtZQUM5RixZQUFZO1lBQ1osSUFBSSxXQUFXLEtBQUssSUFBSSxJQUFJLFdBQVcsQ0FBQyxJQUFJLEtBQUssSUFBSSxFQUFFO2dCQUNyRCxPQUFPLElBQUksQ0FBQzthQUNiO1lBRUQsNkZBQTZGO1lBQzdGLFNBQVM7WUFDVCxJQUFJLElBQUksQ0FBQyxvQkFBb0IsQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUFDLEVBQUU7Z0JBQy9DLE9BQU8sSUFBSSxDQUFDO2FBQ2I7WUFFRCxJQUFJLFlBQVksR0FBc0IsSUFBSSxDQUFDO1lBQzNDLElBQUksV0FBVyxDQUFDLFNBQVMsS0FBSyxJQUFJLEVBQUU7Z0JBQ2xDLFlBQVksR0FBRztvQkFDYixTQUFTLEVBQUUsV0FBVyxDQUFDLFNBQVM7b0JBQ2hDLGlCQUFpQixFQUFFLElBQUksQ0FBQyxhQUFhLEVBQUUsQ0FBQyxRQUFRO2lCQUNqRCxDQUFDO2FBQ0g7WUFFRCxPQUFPLElBQUksbUJBQVMsQ0FBQyxXQUFXLENBQUMsSUFBSSxFQUFFLFlBQVksQ0FBQyxDQUFDO1FBQ3ZELENBQUM7UUFFTyxtREFBb0IsR0FBNUIsVUFBNkIsSUFBb0I7WUFDL0MsZ0dBQWdHO1lBQ2hHLCtDQUErQztZQUMvQyxPQUFPLElBQUksQ0FBQyxjQUFlLENBQUMsSUFBSSxDQUFDLFVBQUEsS0FBSyxJQUFJLE9BQUEsS0FBSyxLQUFLLElBQUksRUFBZCxDQUFjLENBQUMsQ0FBQztRQUM1RCxDQUFDO1FBQ0gsMkJBQUM7SUFBRCxDQUFDLEFBOUVELElBOEVDO0lBOUVZLG9EQUFvQiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7T3duaW5nTW9kdWxlLCBSZWZlcmVuY2V9IGZyb20gJy4uLy4uL2ltcG9ydHMnO1xuaW1wb3J0IHtSZWZsZWN0aW9uSG9zdH0gZnJvbSAnLi4vLi4vcmVmbGVjdGlvbic7XG5cbmltcG9ydCB7Y2FuRW1pdFR5cGUsIFJlc29sdmVkVHlwZVJlZmVyZW5jZSwgVHlwZUVtaXR0ZXJ9IGZyb20gJy4vdHlwZV9lbWl0dGVyJztcblxuXG4vKipcbiAqIFNlZSBgVHlwZUVtaXR0ZXJgIGZvciBtb3JlIGluZm9ybWF0aW9uIG9uIHRoZSBlbWl0dGluZyBwcm9jZXNzLlxuICovXG5leHBvcnQgY2xhc3MgVHlwZVBhcmFtZXRlckVtaXR0ZXIge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgdHlwZVBhcmFtZXRlcnM6IHRzLk5vZGVBcnJheTx0cy5UeXBlUGFyYW1ldGVyRGVjbGFyYXRpb24+fHVuZGVmaW5lZCxcbiAgICAgIHByaXZhdGUgcmVmbGVjdG9yOiBSZWZsZWN0aW9uSG9zdCkge31cblxuICAvKipcbiAgICogRGV0ZXJtaW5lcyB3aGV0aGVyIHRoZSB0eXBlIHBhcmFtZXRlcnMgY2FuIGJlIGVtaXR0ZWQuIElmIHRoaXMgcmV0dXJucyB0cnVlLCB0aGVuIGEgY2FsbCB0b1xuICAgKiBgZW1pdGAgaXMga25vd24gdG8gc3VjY2VlZC4gVmljZSB2ZXJzYSwgaWYgZmFsc2UgaXMgcmV0dXJuZWQgdGhlbiBgZW1pdGAgc2hvdWxkIG5vdCBiZVxuICAgKiBjYWxsZWQsIGFzIGl0IHdvdWxkIGZhaWwuXG4gICAqL1xuICBjYW5FbWl0KCk6IGJvb2xlYW4ge1xuICAgIGlmICh0aGlzLnR5cGVQYXJhbWV0ZXJzID09PSB1bmRlZmluZWQpIHtcbiAgICAgIHJldHVybiB0cnVlO1xuICAgIH1cblxuICAgIHJldHVybiB0aGlzLnR5cGVQYXJhbWV0ZXJzLmV2ZXJ5KHR5cGVQYXJhbSA9PiB7XG4gICAgICBpZiAodHlwZVBhcmFtLmNvbnN0cmFpbnQgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICByZXR1cm4gdHJ1ZTtcbiAgICAgIH1cblxuICAgICAgcmV0dXJuIGNhbkVtaXRUeXBlKHR5cGVQYXJhbS5jb25zdHJhaW50LCB0eXBlID0+IHRoaXMucmVzb2x2ZVR5cGVSZWZlcmVuY2UodHlwZSkpO1xuICAgIH0pO1xuICB9XG5cbiAgLyoqXG4gICAqIEVtaXRzIHRoZSB0eXBlIHBhcmFtZXRlcnMgdXNpbmcgdGhlIHByb3ZpZGVkIGVtaXR0ZXIgZnVuY3Rpb24gZm9yIGBSZWZlcmVuY2Vgcy5cbiAgICovXG4gIGVtaXQoZW1pdFJlZmVyZW5jZTogKHJlZjogUmVmZXJlbmNlKSA9PiB0cy5UeXBlTm9kZSk6IHRzLlR5cGVQYXJhbWV0ZXJEZWNsYXJhdGlvbltdfHVuZGVmaW5lZCB7XG4gICAgaWYgKHRoaXMudHlwZVBhcmFtZXRlcnMgPT09IHVuZGVmaW5lZCkge1xuICAgICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgICB9XG5cbiAgICBjb25zdCBlbWl0dGVyID0gbmV3IFR5cGVFbWl0dGVyKHR5cGUgPT4gdGhpcy5yZXNvbHZlVHlwZVJlZmVyZW5jZSh0eXBlKSwgZW1pdFJlZmVyZW5jZSk7XG5cbiAgICByZXR1cm4gdGhpcy50eXBlUGFyYW1ldGVycy5tYXAodHlwZVBhcmFtID0+IHtcbiAgICAgIGNvbnN0IGNvbnN0cmFpbnQgPVxuICAgICAgICAgIHR5cGVQYXJhbS5jb25zdHJhaW50ICE9PSB1bmRlZmluZWQgPyBlbWl0dGVyLmVtaXRUeXBlKHR5cGVQYXJhbS5jb25zdHJhaW50KSA6IHVuZGVmaW5lZDtcblxuICAgICAgcmV0dXJuIHRzLnVwZGF0ZVR5cGVQYXJhbWV0ZXJEZWNsYXJhdGlvbihcbiAgICAgICAgICAvKiBub2RlICovIHR5cGVQYXJhbSxcbiAgICAgICAgICAvKiBuYW1lICovIHR5cGVQYXJhbS5uYW1lLFxuICAgICAgICAgIC8qIGNvbnN0cmFpbnQgKi8gY29uc3RyYWludCxcbiAgICAgICAgICAvKiBkZWZhdWx0VHlwZSAqLyB0eXBlUGFyYW0uZGVmYXVsdCk7XG4gICAgfSk7XG4gIH1cblxuICBwcml2YXRlIHJlc29sdmVUeXBlUmVmZXJlbmNlKHR5cGU6IHRzLlR5cGVSZWZlcmVuY2VOb2RlKTogUmVzb2x2ZWRUeXBlUmVmZXJlbmNlIHtcbiAgICBjb25zdCB0YXJnZXQgPSB0cy5pc0lkZW50aWZpZXIodHlwZS50eXBlTmFtZSkgPyB0eXBlLnR5cGVOYW1lIDogdHlwZS50eXBlTmFtZS5yaWdodDtcbiAgICBjb25zdCBkZWNsYXJhdGlvbiA9IHRoaXMucmVmbGVjdG9yLmdldERlY2xhcmF0aW9uT2ZJZGVudGlmaWVyKHRhcmdldCk7XG5cbiAgICAvLyBJZiBubyBkZWNsYXJhdGlvbiBjb3VsZCBiZSByZXNvbHZlZCBvciBkb2VzIG5vdCBoYXZlIGEgYHRzLkRlY2xhcmF0aW9uYCwgdGhlIHR5cGUgY2Fubm90IGJlXG4gICAgLy8gcmVzb2x2ZWQuXG4gICAgaWYgKGRlY2xhcmF0aW9uID09PSBudWxsIHx8IGRlY2xhcmF0aW9uLm5vZGUgPT09IG51bGwpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIC8vIElmIHRoZSBkZWNsYXJhdGlvbiBjb3JyZXNwb25kcyB3aXRoIGEgbG9jYWwgdHlwZSBwYXJhbWV0ZXIsIHRoZSB0eXBlIHJlZmVyZW5jZSBjYW4gYmUgdXNlZFxuICAgIC8vIGFzIGlzLlxuICAgIGlmICh0aGlzLmlzTG9jYWxUeXBlUGFyYW1ldGVyKGRlY2xhcmF0aW9uLm5vZGUpKSB7XG4gICAgICByZXR1cm4gdHlwZTtcbiAgICB9XG5cbiAgICBsZXQgb3duaW5nTW9kdWxlOiBPd25pbmdNb2R1bGV8bnVsbCA9IG51bGw7XG4gICAgaWYgKGRlY2xhcmF0aW9uLnZpYU1vZHVsZSAhPT0gbnVsbCkge1xuICAgICAgb3duaW5nTW9kdWxlID0ge1xuICAgICAgICBzcGVjaWZpZXI6IGRlY2xhcmF0aW9uLnZpYU1vZHVsZSxcbiAgICAgICAgcmVzb2x1dGlvbkNvbnRleHQ6IHR5cGUuZ2V0U291cmNlRmlsZSgpLmZpbGVOYW1lLFxuICAgICAgfTtcbiAgICB9XG5cbiAgICByZXR1cm4gbmV3IFJlZmVyZW5jZShkZWNsYXJhdGlvbi5ub2RlLCBvd25pbmdNb2R1bGUpO1xuICB9XG5cbiAgcHJpdmF0ZSBpc0xvY2FsVHlwZVBhcmFtZXRlcihkZWNsOiB0cy5EZWNsYXJhdGlvbik6IGJvb2xlYW4ge1xuICAgIC8vIENoZWNraW5nIGZvciBsb2NhbCB0eXBlIHBhcmFtZXRlcnMgb25seSBvY2N1cnMgZHVyaW5nIHJlc29sdXRpb24gb2YgdHlwZSBwYXJhbWV0ZXJzLCBzbyBpdCBpc1xuICAgIC8vIGd1YXJhbnRlZWQgdGhhdCB0eXBlIHBhcmFtZXRlcnMgYXJlIHByZXNlbnQuXG4gICAgcmV0dXJuIHRoaXMudHlwZVBhcmFtZXRlcnMhLnNvbWUocGFyYW0gPT4gcGFyYW0gPT09IGRlY2wpO1xuICB9XG59XG4iXX0=