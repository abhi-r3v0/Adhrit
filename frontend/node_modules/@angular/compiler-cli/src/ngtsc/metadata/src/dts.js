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
        define("@angular/compiler-cli/src/ngtsc/metadata/src/dts", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/ngtsc/imports", "@angular/compiler-cli/src/ngtsc/reflection", "@angular/compiler-cli/src/ngtsc/metadata/src/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.DtsMetadataReader = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    var imports_1 = require("@angular/compiler-cli/src/ngtsc/imports");
    var reflection_1 = require("@angular/compiler-cli/src/ngtsc/reflection");
    var util_1 = require("@angular/compiler-cli/src/ngtsc/metadata/src/util");
    /**
     * A `MetadataReader` that can read metadata from `.d.ts` files, which have static Ivy properties
     * from an upstream compilation already.
     */
    var DtsMetadataReader = /** @class */ (function () {
        function DtsMetadataReader(checker, reflector) {
            this.checker = checker;
            this.reflector = reflector;
        }
        /**
         * Read the metadata from a class that has already been compiled somehow (either it's in a .d.ts
         * file, or in a .ts file with a handwritten definition).
         *
         * @param ref `Reference` to the class of interest, with the context of how it was obtained.
         */
        DtsMetadataReader.prototype.getNgModuleMetadata = function (ref) {
            var clazz = ref.node;
            var resolutionContext = clazz.getSourceFile().fileName;
            // This operation is explicitly not memoized, as it depends on `ref.ownedByModuleGuess`.
            // TODO(alxhub): investigate caching of .d.ts module metadata.
            var ngModuleDef = this.reflector.getMembersOfClass(clazz).find(function (member) { return member.name === 'ɵmod' && member.isStatic; });
            if (ngModuleDef === undefined) {
                return null;
            }
            else if (
            // Validate that the shape of the ngModuleDef type is correct.
            ngModuleDef.type === null || !ts.isTypeReferenceNode(ngModuleDef.type) ||
                ngModuleDef.type.typeArguments === undefined ||
                ngModuleDef.type.typeArguments.length !== 4) {
                return null;
            }
            // Read the ModuleData out of the type arguments.
            var _a = tslib_1.__read(ngModuleDef.type.typeArguments, 4), _ = _a[0], declarationMetadata = _a[1], importMetadata = _a[2], exportMetadata = _a[3];
            return {
                ref: ref,
                declarations: util_1.extractReferencesFromType(this.checker, declarationMetadata, ref.ownedByModuleGuess, resolutionContext),
                exports: util_1.extractReferencesFromType(this.checker, exportMetadata, ref.ownedByModuleGuess, resolutionContext),
                imports: util_1.extractReferencesFromType(this.checker, importMetadata, ref.ownedByModuleGuess, resolutionContext),
                schemas: [],
                rawDeclarations: null,
            };
        };
        /**
         * Read directive (or component) metadata from a referenced class in a .d.ts file.
         */
        DtsMetadataReader.prototype.getDirectiveMetadata = function (ref) {
            var clazz = ref.node;
            var def = this.reflector.getMembersOfClass(clazz).find(function (field) { return field.isStatic && (field.name === 'ɵcmp' || field.name === 'ɵdir'); });
            if (def === undefined) {
                // No definition could be found.
                return null;
            }
            else if (def.type === null || !ts.isTypeReferenceNode(def.type) ||
                def.type.typeArguments === undefined || def.type.typeArguments.length < 2) {
                // The type metadata was the wrong shape.
                return null;
            }
            return tslib_1.__assign(tslib_1.__assign({ ref: ref, name: clazz.name.text, isComponent: def.name === 'ɵcmp', selector: util_1.readStringType(def.type.typeArguments[1]), exportAs: util_1.readStringArrayType(def.type.typeArguments[2]), inputs: util_1.readStringMapType(def.type.typeArguments[3]), outputs: util_1.readStringMapType(def.type.typeArguments[4]), queries: util_1.readStringArrayType(def.type.typeArguments[5]) }, util_1.extractDirectiveGuards(clazz, this.reflector)), { baseClass: readBaseClass(clazz, this.checker, this.reflector) });
        };
        /**
         * Read pipe metadata from a referenced class in a .d.ts file.
         */
        DtsMetadataReader.prototype.getPipeMetadata = function (ref) {
            var def = this.reflector.getMembersOfClass(ref.node).find(function (field) { return field.isStatic && field.name === 'ɵpipe'; });
            if (def === undefined) {
                // No definition could be found.
                return null;
            }
            else if (def.type === null || !ts.isTypeReferenceNode(def.type) ||
                def.type.typeArguments === undefined || def.type.typeArguments.length < 2) {
                // The type metadata was the wrong shape.
                return null;
            }
            var type = def.type.typeArguments[1];
            if (!ts.isLiteralTypeNode(type) || !ts.isStringLiteral(type.literal)) {
                // The type metadata was the wrong type.
                return null;
            }
            var name = type.literal.text;
            return { ref: ref, name: name };
        };
        return DtsMetadataReader;
    }());
    exports.DtsMetadataReader = DtsMetadataReader;
    function readBaseClass(clazz, checker, reflector) {
        var e_1, _a;
        if (!reflection_1.isNamedClassDeclaration(clazz)) {
            // Technically this is an error in a .d.ts file, but for the purposes of finding the base class
            // it's ignored.
            return reflector.hasBaseClass(clazz) ? 'dynamic' : null;
        }
        if (clazz.heritageClauses !== undefined) {
            try {
                for (var _b = tslib_1.__values(clazz.heritageClauses), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var clause = _c.value;
                    if (clause.token === ts.SyntaxKind.ExtendsKeyword) {
                        var baseExpr = clause.types[0].expression;
                        var symbol = checker.getSymbolAtLocation(baseExpr);
                        if (symbol === undefined) {
                            return 'dynamic';
                        }
                        else if (symbol.flags & ts.SymbolFlags.Alias) {
                            symbol = checker.getAliasedSymbol(symbol);
                        }
                        if (symbol.valueDeclaration !== undefined &&
                            reflection_1.isNamedClassDeclaration(symbol.valueDeclaration)) {
                            return new imports_1.Reference(symbol.valueDeclaration);
                        }
                        else {
                            return 'dynamic';
                        }
                    }
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
        }
        return null;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZHRzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy9uZ3RzYy9tZXRhZGF0YS9zcmMvZHRzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFFSCwrQkFBaUM7SUFFakMsbUVBQXdDO0lBQ3hDLHlFQUEyRjtJQUczRiwwRUFBaUk7SUFFakk7OztPQUdHO0lBQ0g7UUFDRSwyQkFBb0IsT0FBdUIsRUFBVSxTQUF5QjtZQUExRCxZQUFPLEdBQVAsT0FBTyxDQUFnQjtZQUFVLGNBQVMsR0FBVCxTQUFTLENBQWdCO1FBQUcsQ0FBQztRQUVsRjs7Ozs7V0FLRztRQUNILCtDQUFtQixHQUFuQixVQUFvQixHQUFnQztZQUNsRCxJQUFNLEtBQUssR0FBRyxHQUFHLENBQUMsSUFBSSxDQUFDO1lBQ3ZCLElBQU0saUJBQWlCLEdBQUcsS0FBSyxDQUFDLGFBQWEsRUFBRSxDQUFDLFFBQVEsQ0FBQztZQUN6RCx3RkFBd0Y7WUFDeEYsOERBQThEO1lBQzlELElBQU0sV0FBVyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsaUJBQWlCLENBQUMsS0FBSyxDQUFDLENBQUMsSUFBSSxDQUM1RCxVQUFBLE1BQU0sSUFBSSxPQUFBLE1BQU0sQ0FBQyxJQUFJLEtBQUssTUFBTSxJQUFJLE1BQU0sQ0FBQyxRQUFRLEVBQXpDLENBQXlDLENBQUMsQ0FBQztZQUN6RCxJQUFJLFdBQVcsS0FBSyxTQUFTLEVBQUU7Z0JBQzdCLE9BQU8sSUFBSSxDQUFDO2FBQ2I7aUJBQU07WUFDSCw4REFBOEQ7WUFDOUQsV0FBVyxDQUFDLElBQUksS0FBSyxJQUFJLElBQUksQ0FBQyxFQUFFLENBQUMsbUJBQW1CLENBQUMsV0FBVyxDQUFDLElBQUksQ0FBQztnQkFDdEUsV0FBVyxDQUFDLElBQUksQ0FBQyxhQUFhLEtBQUssU0FBUztnQkFDNUMsV0FBVyxD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Q29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7UmVmZXJlbmNlfSBmcm9tICcuLi8uLi9pbXBvcnRzJztcbmltcG9ydCB7Q2xhc3NEZWNsYXJhdGlvbiwgaXNOYW1lZENsYXNzRGVjbGFyYXRpb24sIFJlZmxlY3Rpb25Ib3N0fSBmcm9tICcuLi8uLi9yZWZsZWN0aW9uJztcblxuaW1wb3J0IHtEaXJlY3RpdmVNZXRhLCBNZXRhZGF0YVJlYWRlciwgTmdNb2R1bGVNZXRhLCBQaXBlTWV0YX0gZnJvbSAnLi9hcGknO1xuaW1wb3J0IHtleHRyYWN0RGlyZWN0aXZlR3VhcmRzLCBleHRyYWN0UmVmZXJlbmNlc0Zyb21UeXBlLCByZWFkU3RyaW5nQXJyYXlUeXBlLCByZWFkU3RyaW5nTWFwVHlwZSwgcmVhZFN0cmluZ1R5cGV9IGZyb20gJy4vdXRpbCc7XG5cbi8qKlxuICogQSBgTWV0YWRhdGFSZWFkZXJgIHRoYXQgY2FuIHJlYWQgbWV0YWRhdGEgZnJvbSBgLmQudHNgIGZpbGVzLCB3aGljaCBoYXZlIHN0YXRpYyBJdnkgcHJvcGVydGllc1xuICogZnJvbSBhbiB1cHN0cmVhbSBjb21waWxhdGlvbiBhbHJlYWR5LlxuICovXG5leHBvcnQgY2xhc3MgRHRzTWV0YWRhdGFSZWFkZXIgaW1wbGVtZW50cyBNZXRhZGF0YVJlYWRlciB7XG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgY2hlY2tlcjogdHMuVHlwZUNoZWNrZXIsIHByaXZhdGUgcmVmbGVjdG9yOiBSZWZsZWN0aW9uSG9zdCkge31cblxuICAvKipcbiAgICogUmVhZCB0aGUgbWV0YWRhdGEgZnJvbSBhIGNsYXNzIHRoYXQgaGFzIGFscmVhZHkgYmVlbiBjb21waWxlZCBzb21laG93IChlaXRoZXIgaXQncyBpbiBhIC5kLnRzXG4gICAqIGZpbGUsIG9yIGluIGEgLnRzIGZpbGUgd2l0aCBhIGhhbmR3cml0dGVuIGRlZmluaXRpb24pLlxuICAgKlxuICAgKiBAcGFyYW0gcmVmIGBSZWZlcmVuY2VgIHRvIHRoZSBjbGFzcyBvZiBpbnRlcmVzdCwgd2l0aCB0aGUgY29udGV4dCBvZiBob3cgaXQgd2FzIG9idGFpbmVkLlxuICAgKi9cbiAgZ2V0TmdNb2R1bGVNZXRhZGF0YShyZWY6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPik6IE5nTW9kdWxlTWV0YXxudWxsIHtcbiAgICBjb25zdCBjbGF6eiA9IHJlZi5ub2RlO1xuICAgIGNvbnN0IHJlc29sdXRpb25Db250ZXh0ID0gY2xhenouZ2V0U291cmNlRmlsZSgpLmZpbGVOYW1lO1xuICAgIC8vIFRoaXMgb3BlcmF0aW9uIGlzIGV4cGxpY2l0bHkgbm90IG1lbW9pemVkLCBhcyBpdCBkZXBlbmRzIG9uIGByZWYub3duZWRCeU1vZHVsZUd1ZXNzYC5cbiAgICAvLyBUT0RPKGFseGh1Yik6IGludmVzdGlnYXRlIGNhY2hpbmcgb2YgLmQudHMgbW9kdWxlIG1ldGFkYXRhLlxuICAgIGNvbnN0IG5nTW9kdWxlRGVmID0gdGhpcy5yZWZsZWN0b3IuZ2V0TWVtYmVyc09mQ2xhc3MoY2xhenopLmZpbmQoXG4gICAgICAgIG1lbWJlciA9PiBtZW1iZXIubmFtZSA9PT0gJ8m1bW9kJyAmJiBtZW1iZXIuaXNTdGF0aWMpO1xuICAgIGlmIChuZ01vZHVsZURlZiA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9IGVsc2UgaWYgKFxuICAgICAgICAvLyBWYWxpZGF0ZSB0aGF0IHRoZSBzaGFwZSBvZiB0aGUgbmdNb2R1bGVEZWYgdHlwZSBpcyBjb3JyZWN0LlxuICAgICAgICBuZ01vZHVsZURlZi50eXBlID09PSBudWxsIHx8ICF0cy5pc1R5cGVSZWZlcmVuY2VOb2RlKG5nTW9kdWxlRGVmLnR5cGUpIHx8XG4gICAgICAgIG5nTW9kdWxlRGVmLnR5cGUudHlwZUFyZ3VtZW50cyA9PT0gdW5kZWZpbmVkIHx8XG4gICAgICAgIG5nTW9kdWxlRGVmLnR5cGUudHlwZUFyZ3VtZW50cy5sZW5ndGggIT09IDQpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIC8vIFJlYWQgdGhlIE1vZHVsZURhdGEgb3V0IG9mIHRoZSB0eXBlIGFyZ3VtZW50cy5cbiAgICBjb25zdCBbXywgZGVjbGFyYXRpb25NZXRhZGF0YSwgaW1wb3J0TWV0YWRhdGEsIGV4cG9ydE1ldGFkYXRhXSA9IG5nTW9kdWxlRGVmLnR5cGUudHlwZUFyZ3VtZW50cztcbiAgICByZXR1cm4ge1xuICAgICAgcmVmLFxuICAgICAgZGVjbGFyYXRpb25zOiBleHRyYWN0UmVmZXJlbmNlc0Zyb21UeXBlKFxuICAgICAgICAgIHRoaXMuY2hlY2tlciwgZGVjbGFyYXRpb25NZXRhZGF0YSwgcmVmLm93bmVkQnlNb2R1bGVHdWVzcywgcmVzb2x1dGlvbkNvbnRleHQpLFxuICAgICAgZXhwb3J0czogZXh0cmFjdFJlZmVyZW5jZXNGcm9tVHlwZShcbiAgICAgICAgICB0aGlzLmNoZWNrZXIsIGV4cG9ydE1ldGFkYXRhLCByZWYub3duZWRCeU1vZHVsZUd1ZXNzLCByZXNvbHV0aW9uQ29udGV4dCksXG4gICAgICBpbXBvcnRzOiBleHRyYWN0UmVmZXJlbmNlc0Zyb21UeXBlKFxuICAgICAgICAgIHRoaXMuY2hlY2tlciwgaW1wb3J0TWV0YWRhdGEsIHJlZi5vd25lZEJ5TW9kdWxlR3Vlc3MsIHJlc29sdXRpb25Db250ZXh0KSxcbiAgICAgIHNjaGVtYXM6IFtdLFxuICAgICAgcmF3RGVjbGFyYXRpb25zOiBudWxsLFxuICAgIH07XG4gIH1cblxuICAvKipcbiAgICogUmVhZCBkaXJlY3RpdmUgKG9yIGNvbXBvbmVudCkgbWV0YWRhdGEgZnJvbSBhIHJlZmVyZW5jZWQgY2xhc3MgaW4gYSAuZC50cyBmaWxlLlxuICAgKi9cbiAgZ2V0RGlyZWN0aXZlTWV0YWRhdGEocmVmOiBSZWZlcmVuY2U8Q2xhc3NEZWNsYXJhdGlvbj4pOiBEaXJlY3RpdmVNZXRhfG51bGwge1xuICAgIGNvbnN0IGNsYXp6ID0gcmVmLm5vZGU7XG4gICAgY29uc3QgZGVmID0gdGhpcy5yZWZsZWN0b3IuZ2V0TWVtYmVyc09mQ2xhc3MoY2xhenopLmZpbmQoXG4gICAgICAgIGZpZWxkID0+IGZpZWxkLmlzU3RhdGljICYmIChmaWVsZC5uYW1lID09PSAnybVjbXAnIHx8IGZpZWxkLm5hbWUgPT09ICfJtWRpcicpKTtcbiAgICBpZiAoZGVmID09PSB1bmRlZmluZWQpIHtcbiAgICAgIC8vIE5vIGRlZmluaXRpb24gY291bGQgYmUgZm91bmQuXG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9IGVsc2UgaWYgKFxuICAgICAgICBkZWYudHlwZSA9PT0gbnVsbCB8fCAhdHMuaXNUeXBlUmVmZXJlbmNlTm9kZShkZWYudHlwZSkgfHxcbiAgICAgICAgZGVmLnR5cGUudHlwZUFyZ3VtZW50cyA9PT0gdW5kZWZpbmVkIHx8IGRlZi50eXBlLnR5cGVBcmd1bWVudHMubGVuZ3RoIDwgMikge1xuICAgICAgLy8gVGhlIHR5cGUgbWV0YWRhdGEgd2FzIHRoZSB3cm9uZyBzaGFwZS5cbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIHJldHVybiB7XG4gICAgICByZWYsXG4gICAgICBuYW1lOiBjbGF6ei5uYW1lLnRleHQsXG4gICAgICBpc0NvbXBvbmVudDogZGVmLm5hbWUgPT09ICfJtWNtcCcsXG4gICAgICBzZWxlY3RvcjogcmVhZFN0cmluZ1R5cGUoZGVmLnR5cGUudHlwZUFyZ3VtZW50c1sxXSksXG4gICAgICBleHBvcnRBczogcmVhZFN0cmluZ0FycmF5VHlwZShkZWYudHlwZS50eXBlQXJndW1lbnRzWzJdKSxcbiAgICAgIGlucHV0czogcmVhZFN0cmluZ01hcFR5cGUoZGVmLnR5cGUudHlwZUFyZ3VtZW50c1szXSksXG4gICAgICBvdXRwdXRzOiByZWFkU3RyaW5nTWFwVHlwZShkZWYudHlwZS50eXBlQXJndW1lbnRzWzRdKSxcbiAgICAgIHF1ZXJpZXM6IHJlYWRTdHJpbmdBcnJheVR5cGUoZGVmLnR5cGUudHlwZUFyZ3VtZW50c1s1XSksXG4gICAgICAuLi5leHRyYWN0RGlyZWN0aXZlR3VhcmRzKGNsYXp6LCB0aGlzLnJlZmxlY3RvciksXG4gICAgICBiYXNlQ2xhc3M6IHJlYWRCYXNlQ2xhc3MoY2xhenosIHRoaXMuY2hlY2tlciwgdGhpcy5yZWZsZWN0b3IpLFxuICAgIH07XG4gIH1cblxuICAvKipcbiAgICogUmVhZCBwaXBlIG1ldGFkYXRhIGZyb20gYSByZWZlcmVuY2VkIGNsYXNzIGluIGEgLmQudHMgZmlsZS5cbiAgICovXG4gIGdldFBpcGVNZXRhZGF0YShyZWY6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPik6IFBpcGVNZXRhfG51bGwge1xuICAgIGNvbnN0IGRlZiA9IHRoaXMucmVmbGVjdG9yLmdldE1lbWJlcnNPZkNsYXNzKHJlZi5ub2RlKS5maW5kKFxuICAgICAgICBmaWVsZCA9PiBmaWVsZC5pc1N0YXRpYyAmJiBmaWVsZC5uYW1lID09PSAnybVwaXBlJyk7XG4gICAgaWYgKGRlZiA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICAvLyBObyBkZWZpbml0aW9uIGNvdWxkIGJlIGZvdW5kLlxuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfSBlbHNlIGlmIChcbiAgICAgICAgZGVmLnR5cGUgPT09IG51bGwgfHwgIXRzLmlzVHlwZVJlZmVyZW5jZU5vZGUoZGVmLnR5cGUpIHx8XG4gICAgICAgIGRlZi50eXBlLnR5cGVBcmd1bWVudHMgPT09IHVuZGVmaW5lZCB8fCBkZWYudHlwZS50eXBlQXJndW1lbnRzLmxlbmd0aCA8IDIpIHtcbiAgICAgIC8vIFRoZSB0eXBlIG1ldGFkYXRhIHdhcyB0aGUgd3Jvbmcgc2hhcGUuXG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gICAgY29uc3QgdHlwZSA9IGRlZi50eXBlLnR5cGVBcmd1bWVudHNbMV07XG4gICAgaWYgKCF0cy5pc0xpdGVyYWxUeXBlTm9kZSh0eXBlKSB8fCAhdHMuaXNTdHJpbmdMaXRlcmFsKHR5cGUubGl0ZXJhbCkpIHtcbiAgICAgIC8vIFRoZSB0eXBlIG1ldGFkYXRhIHdhcyB0aGUgd3JvbmcgdHlwZS5cbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgICBjb25zdCBuYW1lID0gdHlwZS5saXRlcmFsLnRleHQ7XG4gICAgcmV0dXJuIHtyZWYsIG5hbWV9O1xuICB9XG59XG5cbmZ1bmN0aW9uIHJlYWRCYXNlQ2xhc3MoY2xheno6IENsYXNzRGVjbGFyYXRpb24sIGNoZWNrZXI6IHRzLlR5cGVDaGVja2VyLCByZWZsZWN0b3I6IFJlZmxlY3Rpb25Ib3N0KTpcbiAgICBSZWZlcmVuY2U8Q2xhc3NEZWNsYXJhdGlvbj58J2R5bmFtaWMnfG51bGwge1xuICBpZiAoIWlzTmFtZWRDbGFzc0RlY2xhcmF0aW9uKGNsYXp6KSkge1xuICAgIC8vIFRlY2huaWNhbGx5IHRoaXMgaXMgYW4gZXJyb3IgaW4gYSAuZC50cyBmaWxlLCBidXQgZm9yIHRoZSBwdXJwb3NlcyBvZiBmaW5kaW5nIHRoZSBiYXNlIGNsYXNzXG4gICAgLy8gaXQncyBpZ25vcmVkLlxuICAgIHJldHVybiByZWZsZWN0b3IuaGFzQmFzZUNsYXNzKGNsYXp6KSA/ICdkeW5hbWljJyA6IG51bGw7XG4gIH1cblxuICBpZiAoY2xhenouaGVyaXRhZ2VDbGF1c2VzICE9PSB1bmRlZmluZWQpIHtcbiAgICBmb3IgKGNvbnN0IGNsYXVzZSBvZiBjbGF6ei5oZXJpdGFnZUNsYXVzZXMpIHtcbiAgICAgIGlmIChjbGF1c2UudG9rZW4gPT09IHRzLlN5bnRheEtpbmQuRXh0ZW5kc0tleXdvcmQpIHtcbiAgICAgICAgY29uc3QgYmFzZUV4cHIgPSBjbGF1c2UudHlwZXNbMF0uZXhwcmVzc2lvbjtcbiAgICAgICAgbGV0IHN5bWJvbCA9IGNoZWNrZXIuZ2V0U3ltYm9sQXRMb2NhdGlvbihiYXNlRXhwcik7XG4gICAgICAgIGlmIChzeW1ib2wgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICAgIHJldHVybiAnZHluYW1pYyc7XG4gICAgICAgIH0gZWxzZSBpZiAoc3ltYm9sLmZsYWdzICYgdHMuU3ltYm9sRmxhZ3MuQWxpYXMpIHtcbiAgICAgICAgICBzeW1ib2wgPSBjaGVja2VyLmdldEFsaWFzZWRTeW1ib2woc3ltYm9sKTtcbiAgICAgICAgfVxuICAgICAgICBpZiAoc3ltYm9sLnZhbHVlRGVjbGFyYXRpb24gIT09IHVuZGVmaW5lZCAmJlxuICAgICAgICAgICAgaXNOYW1lZENsYXNzRGVjbGFyYXRpb24oc3ltYm9sLnZhbHVlRGVjbGFyYXRpb24pKSB7XG4gICAgICAgICAgcmV0dXJuIG5ldyBSZWZlcmVuY2Uoc3ltYm9sLnZhbHVlRGVjbGFyYXRpb24pO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIHJldHVybiAnZHluYW1pYyc7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cbiAgcmV0dXJuIG51bGw7XG59XG4iXX0=