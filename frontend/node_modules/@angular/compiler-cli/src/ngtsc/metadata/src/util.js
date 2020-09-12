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
        define("@angular/compiler-cli/src/ngtsc/metadata/src/util", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/ngtsc/imports", "@angular/compiler-cli/src/ngtsc/reflection", "@angular/compiler-cli/src/ngtsc/util/src/typescript"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.hasInjectableFields = exports.CompoundMetadataReader = exports.extractDirectiveGuards = exports.readStringArrayType = exports.readStringMapType = exports.readStringType = exports.extractReferencesFromType = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    var imports_1 = require("@angular/compiler-cli/src/ngtsc/imports");
    var reflection_1 = require("@angular/compiler-cli/src/ngtsc/reflection");
    var typescript_1 = require("@angular/compiler-cli/src/ngtsc/util/src/typescript");
    function extractReferencesFromType(checker, def, ngModuleImportedFrom, resolutionContext) {
        if (!ts.isTupleTypeNode(def)) {
            return [];
        }
        return def.elementTypes.map(function (element) {
            if (!ts.isTypeQueryNode(element)) {
                throw new Error("Expected TypeQueryNode: " + typescript_1.nodeDebugInfo(element));
            }
            var type = element.exprName;
            var _a = reflection_1.reflectTypeEntityToDeclaration(type, checker), node = _a.node, from = _a.from;
            if (!reflection_1.isNamedClassDeclaration(node)) {
                throw new Error("Expected named ClassDeclaration: " + typescript_1.nodeDebugInfo(node));
            }
            var specifier = (from !== null && !from.startsWith('.') ? from : ngModuleImportedFrom);
            if (specifier !== null) {
                return new imports_1.Reference(node, { specifier: specifier, resolutionContext: resolutionContext });
            }
            else {
                return new imports_1.Reference(node);
            }
        });
    }
    exports.extractReferencesFromType = extractReferencesFromType;
    function readStringType(type) {
        if (!ts.isLiteralTypeNode(type) || !ts.isStringLiteral(type.literal)) {
            return null;
        }
        return type.literal.text;
    }
    exports.readStringType = readStringType;
    function readStringMapType(type) {
        if (!ts.isTypeLiteralNode(type)) {
            return {};
        }
        var obj = {};
        type.members.forEach(function (member) {
            if (!ts.isPropertySignature(member) || member.type === undefined || member.name === undefined ||
                !ts.isStringLiteral(member.name)) {
                return;
            }
            var value = readStringType(member.type);
            if (value === null) {
                return null;
            }
            obj[member.name.text] = value;
        });
        return obj;
    }
    exports.readStringMapType = readStringMapType;
    function readStringArrayType(type) {
        if (!ts.isTupleTypeNode(type)) {
            return [];
        }
        var res = [];
        type.elementTypes.forEach(function (el) {
            if (!ts.isLiteralTypeNode(el) || !ts.isStringLiteral(el.literal)) {
                return;
            }
            res.push(el.literal.text);
        });
        return res;
    }
    exports.readStringArrayType = readStringArrayType;
    function extractDirectiveGuards(node, reflector) {
        var staticMembers = reflector.getMembersOfClass(node).filter(function (member) { return member.isStatic; });
        var ngTemplateGuards = staticMembers.map(extractTemplateGuard)
            .filter(function (guard) { return guard !== null; });
        var hasNgTemplateContextGuard = staticMembers.some(function (member) { return member.kind === reflection_1.ClassMemberKind.Method && member.name === 'ngTemplateContextGuard'; });
        var coercedInputFields = new Set(staticMembers.map(extractCoercedInput)
            .filter(function (inputName) { return inputName !== null; }));
        return { hasNgTemplateContextGuard: hasNgTemplateContextGuard, ngTemplateGuards: ngTemplateGuards, coercedInputFields: coercedInputFields };
    }
    exports.extractDirectiveGuards = extractDirectiveGuards;
    function extractTemplateGuard(member) {
        if (!member.name.startsWith('ngTemplateGuard_')) {
            return null;
        }
        var inputName = afterUnderscore(member.name);
        if (member.kind === reflection_1.ClassMemberKind.Property) {
            var type = null;
            if (member.type !== null && ts.isLiteralTypeNode(member.type) &&
                ts.isStringLiteral(member.type.literal)) {
                type = member.type.literal.text;
            }
            // Only property members with string literal type 'binding' are considered as template guard.
            if (type !== 'binding') {
                return null;
            }
            return { inputName: inputName, type: type };
        }
        else if (member.kind === reflection_1.ClassMemberKind.Method) {
            return { inputName: inputName, type: 'invocation' };
        }
        else {
            return null;
        }
    }
    function extractCoercedInput(member) {
        if (member.kind !== reflection_1.ClassMemberKind.Property || !member.name.startsWith('ngAcceptInputType_')) {
            return null;
        }
        return afterUnderscore(member.name);
    }
    /**
     * A `MetadataReader` that reads from an ordered set of child readers until it obtains the requested
     * metadata.
     *
     * This is used to combine `MetadataReader`s that read from different sources (e.g. from a registry
     * and from .d.ts files).
     */
    var CompoundMetadataReader = /** @class */ (function () {
        function CompoundMetadataReader(readers) {
            this.readers = readers;
        }
        CompoundMetadataReader.prototype.getDirectiveMetadata = function (node) {
            var e_1, _a;
            try {
                for (var _b = tslib_1.__values(this.readers), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var reader = _c.value;
                    var meta = reader.getDirectiveMetadata(node);
                    if (meta !== null) {
                        return meta;
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
            return null;
        };
        CompoundMetadataReader.prototype.getNgModuleMetadata = function (node) {
            var e_2, _a;
            try {
                for (var _b = tslib_1.__values(this.readers), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var reader = _c.value;
                    var meta = reader.getNgModuleMetadata(node);
                    if (meta !== null) {
                        return meta;
                    }
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_2) throw e_2.error; }
            }
            return null;
        };
        CompoundMetadataReader.prototype.getPipeMetadata = function (node) {
            var e_3, _a;
            try {
                for (var _b = tslib_1.__values(this.readers), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var reader = _c.value;
                    var meta = reader.getPipeMetadata(node);
                    if (meta !== null) {
                        return meta;
                    }
                }
            }
            catch (e_3_1) { e_3 = { error: e_3_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_3) throw e_3.error; }
            }
            return null;
        };
        return CompoundMetadataReader;
    }());
    exports.CompoundMetadataReader = CompoundMetadataReader;
    function afterUnderscore(str) {
        var pos = str.indexOf('_');
        if (pos === -1) {
            throw new Error("Expected '" + str + "' to contain '_'");
        }
        return str.substr(pos + 1);
    }
    /** Returns whether a class declaration has the necessary class fields to make it injectable. */
    function hasInjectableFields(clazz, host) {
        var members = host.getMembersOfClass(clazz);
        return members.some(function (_a) {
            var isStatic = _a.isStatic, name = _a.name;
            return isStatic && (name === 'ɵprov' || name === 'ɵfac' || name === 'ɵinj');
        });
    }
    exports.hasInjectableFields = hasInjectableFields;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvbWV0YWRhdGEvc3JjL3V0aWwudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUVILCtCQUFpQztJQUVqQyxtRUFBd0M7SUFDeEMseUVBQXlKO0lBQ3pKLGtGQUF3RDtJQUl4RCxTQUFnQix5QkFBeUIsQ0FDckMsT0FBdUIsRUFBRSxHQUFnQixFQUFFLG9CQUFpQyxFQUM1RSxpQkFBeUI7UUFDM0IsSUFBSSxDQUFDLEVBQUUsQ0FBQyxlQUFlLENBQUMsR0FBRyxDQUFDLEVBQUU7WUFDNUIsT0FBTyxFQUFFLENBQUM7U0FDWDtRQUNELE9BQU8sR0FBRyxDQUFDLFlBQVksQ0FBQyxHQUFHLENBQUMsVUFBQSxPQUFPO1lBQ2pDLElBQUksQ0FBQyxFQUFFLENBQUMsZUFBZSxDQUFDLE9BQU8sQ0FBQyxFQUFFO2dCQUNoQyxNQUFNLElBQUksS0FBSyxDQUFDLDZCQUEyQiwwQkFBYSxDQUFDLE9BQU8sQ0FBRyxDQUFDLENBQUM7YUFDdEU7WUFDRCxJQUFNLElBQUksR0FBRyxPQUFPLENBQUMsUUFBUSxDQUFDO1lBQ3hCLElBQUEsS0FBZSwyQ0FBOEIsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLEVBQTNELElBQUksVUFBQSxFQUFFLElBQUksVUFBaUQsQ0FBQztZQUNuRSxJQUFJLENBQUMsb0NBQXVCLENBQUMsSUFBSSxDQUFDLEVBQUU7Z0JBQ2xDLE1BQU0sSUFBSSxLQUFLLENBQUMsc0NBQW9DLDBCQUFhLENBQUMsSUFBSSxDQUFHLENBQUMsQ0FBQzthQUM1RTtZQUNELElBQU0sU0FBUyxHQUFHLENBQUMsSUFBSSxLQUFLLElBQUksSUFBSSxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsb0JBQW9CLENBQUMsQ0FBQztZQUN6RixJQUFJLFNBQVMsS0FBSyxJQUFJLEVBQUU7Z0JBQ3RCLE9BQU8sSUFBSSxtQkFBUyxDQUFDLElBQUksRUFBRSxFQUFDLFNBQVMsV0FBQSxFQUFFLGlCQUFpQixtQkFBQSxFQUFDLENBQUMsQ0FBQzthQUM1RDtpQkFBTTtnQkFDTCxPQUFPLElBQUksbUJBQVMsQ0FBQyxJQUFJLENBQUMsQ0FBQzthQUM1QjtRQUNILENBQUMsQ0FBQyxDQUFDO0lBQ0wsQ0FBQztJQXRCRCw4REFzQkM7SUFFRCxTQUFnQixjQUFjLENBQUMsSUFBaUI7UUFDOUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxpQkFBaUIsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxlQUFlLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxFQUFFO1lBQ3BFLE9BQU8sSUFBSSxDQUFDO1NBQ2I7UUFDRCxPQUFPLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDO0lBQzNCLENBQUM7SUFMRCx3Q0FLQztJQUVELFNBQWdCLGlCQUFpQixDQUFDLElBQWlCO1FBQ2pELElBQUksQ0FBQyxFQUFFLENBQUMsaUJBQWlCLENBQUMsSUFBSSxDQUFDLEVBQUU7WUFDL0IsT0FBTyxFQUFFLENBQUM7U0FDWDtRQUNELElBQU0sR0FBRyxHQUE0QixFQUFFLENBQUM7UUFDeEMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsVUFBQSxNQUFNO1lBQ3pCLElBQUksQ0FBQyxFQUFFLENBQUMsbUJBQW1CLENBQUMsTUFBTSxDQUFDLElBQUksTUFBTSxDQUFDLElBQUksS0FBSyxTQUFTLElBQUksTUFBTSxDQUFDLElBQUksS0FBSyxTQUFTO2dCQUN6RixDQUFDLEVBQUUsQ0FBQyxlQUFlLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxFQUFFO2dCQUNwQyxPQUFPO2FBQ1I7WUFDRCxJQUFNLEtBQUssR0FBRyxjQUFjLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxDQUFDO1lBQzFDLElBQUksS0FBSyxLQUFLLElBQUksRUFBRTtnQkFDbEIsT0FBTyxJQUFJLENBQUM7YUFDYjtZQUNELEdBQUcsQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxHQUFHLEtBQUssQ0FBQztRQUNoQyxDQUFDLENBQUMsQ0FBQztRQUNILE9BQU8sR0FBRyxDQUFDO0lBQ2IsQ0FBQztJQWpCRCw4Q0FpQkM7SUFFRCxTQUFnQixtQkFBbUIsQ0FBQyxJQUFpQjtRQUNuRCxJQUFJLENBQUMsRUFBRSxDQUFDLGVBQWUsQ0FBQyxJQUFJLENBQUMsRUFBRTtZQUM3QixPQUFPLEVBQUUsQ0FBQztTQUNYO1FBQ0QsSUFBTSxHQUFHLEdBQWEsRUFBRSxDQUFDO1FBQ3pCLElBQUksQ0FBQyxZQUFZLENBQUMsT0FBTyxDQUFDLFVBQUEsRUFBRTtZQUMxQixJQUFJLENBQUMsRUFBRSxDQUFDLGlCQUFpQixDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLGVBQWUsQ0FBQyxFQUFFLENBQUMsT0FBTyxDQUFDLEVBQUU7Z0JBQ2hFLE9BQU87YUFDUjtZQUNELEdBQUcsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUM1QixDQUFDLENBQUMsQ0FBQztRQUNILE9BQU8sR0FBRyxDQUFDO0lBQ2IsQ0FBQztJQVpELGtEQVlDO0lBR0QsU0FBZ0Isc0JBQXNCLENBQUMsSUFBc0IsRUFBRSxTQUF5QjtRQUt0RixJQUFNLGFBQWEsR0FBRyxTQUFTLENBQUMsaUJBQWlCLENBQUMsSUFBSSxDQUFDLENBQUMsTUFBTSxDQUFDLFVBQUEsTUFBTSxJQUFJLE9BQUEsTUFBTSxDQUFDLFFBQVEsRUFBZixDQUFlLENBQUMsQ0FBQztRQUMxRixJQUFNLGdCQUFnQixHQUFHLGFBQWEsQ0FBQyxHQUFHLENBQUMsb0JBQW9CLENBQUM7YUFDbEMsTUFBTSxDQUFDLFVBQUMsS0FBSyxJQUFpQyxPQUFBLEtBQUssS0FBSyxJQUFJLEVBQWQsQ0FBYyxDQUFDLENBQUM7UUFDNUYsSUFBTSx5QkFBeUIsR0FBRyxhQUFhLENBQUMsSUFBSSxDQUNoRCxVQUFBLE1BQU0sSUFBSSxPQUFBLE1BQU0sQ0FBQyxJQUFJLEtBQUssNEJBQWUsQ0FBQyxNQUFNLElBQUksTUFBTSxDQUFDLElBQUksS0FBSyx3QkFBd0IsRUFBbEYsQ0FBa0YsQ0FBQyxDQUFDO1FBRWxHLElBQU0sa0JBQWtCLEdBQ3BCLElBQUksR0FBRyxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsbUJBQW1CLENBQUM7YUFDakMsTUFBTSxDQUFDLFVBQUMsU0FBUyxJQUEwQixPQUFBLFNBQVMsS0FBSyxJQUFJLEVBQWxCLENBQWtCLENBQUMsQ0FBQyxDQUFDO1FBQ2pGLE9BQU8sRUFBQyx5QkFBeUIsMkJBQUEsRUFBRSxnQkFBZ0Isa0JBQUEsRUFBRSxrQkFBa0Isb0JBQUEsRUFBQyxDQUFDO0lBQzNFLENBQUM7SUFmRCx3REFlQztJQUVELFNBQVMsb0JBQW9CLENBQUMsTUFBbUI7UUFDL0MsSUFBSSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsVUFBVSxDQUFDLGtCQUFrQixDQUFDLEVBQUU7WUFDL0MsT0FBTyxJQUFJLENBQUM7U0FDYjtRQUNELElBQU0sU0FBUyxHQUFHLGVBQWUsQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDL0MsSUFBSSxNQUFNLENBQUMsSUFBSSxLQUFLLDRCQUFlLENBQUMsUUFBUSxFQUFFO1lBQzVDLElBQUksSUFBSSxHQUFnQixJQUFJLENBQUM7WUFDN0IsSUFBSSxNQUFNLENBQUMsSUFBSSxLQUFLLElBQUksSUFBSSxFQUFFLENBQUMsaUJBQWlCLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQztnQkFDekQsRUFBRSxDQUFDLGVBQWUsQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxFQUFFO2dCQUMzQyxJQUFJLEdBQUcsTUFBTSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDO2FBQ2pDO1lBRUQsNkZBQTZGO1lBQzdGLElBQUksSUFBSSxLQUFLLFNBQVMsRUFBRTtnQkFDdEIsT0FBTyxJQUFJLENBQUM7YUFDYjtZQUNELE9BQU8sRUFBQyxTQUFTLFdBQUEsRUFBRSxJQUFJLE1BQUEsRUFBQyxDQUFDO1NBQzFCO2FBQU0sSUFBSSxNQUFNLENBQUMsSUFBSSxLQUFLLDRCQUFlLENBQUMsTUFBTSxFQUFFO1lBQ2pELE9BQU8sRUFBQyxTQUFTLFdBQUEsRUFBRSxJQUFJLEVBQUUsWUFBWSxFQUFDLENBQUM7U0FDeEM7YUFBTTtZQUNMLE9BQU8sSUFBSSxDQUFDO1NBQ2I7SUFDSCxDQUFDO0lBRUQsU0FBUyxtQkFBbUIsQ0FBQyxNQUFtQjtRQUM5QyxJQUFJLE1BQU0sQ0FBQyxJQUFJLEtBQUssNEJBQWUsQ0FBQyxRQUFRLElBQUksQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxvQkFBb0IsQ0FBQyxFQUFFO1lBQzdGLE9BQU8sSUFBSyxDQUFDO1NBQ2Q7UUFDRCxPQUFPLGVBQWUsQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDdEMsQ0FBQztJQUVEOzs7Ozs7T0FNRztJQUNIO1FBQ0UsZ0NBQW9CLE9BQXlCO1lBQXpCLFlBQU8sR0FBUCxPQUFPLENBQWtCO1FBQUcsQ0FBQztRQUVqRCxxREFBb0IsR0FBcEIsVUFBcUIsSUFBaUQ7OztnQkFDcEUsS0FBcUIsSUFBQSxLQUFBLGlCQUFBLElBQUksQ0FBQyxPQUFPLENBQUEsZ0JBQUEsNEJBQUU7b0JBQTlCLElBQU0sTUFBTSxXQUFBO29CQUNmLElBQU0sSUFBSSxHQUFHLE1BQU0sQ0FBQyxvQkFBb0IsQ0FBQyxJQUFJLENBQUMsQ0FBQztvQkFDL0MsSUFBSSxJQUFJLEtBQUssSUFBSSxFQUFFO3dCQUNqQixPQUFPLElBQUksQ0FBQztxQkFDYjtpQkFDRjs7Ozs7Ozs7O1lBQ0QsT0FBTyxJQUFJLENBQUM7UUFDZCxDQUFDO1FBRUQsb0RBQW1CLEdBQW5CLFVBQW9CLElBQWlEOzs7Z0JBQ25FLEtBQXFCLElBQUEsS0FBQSxpQkFBQSxJQUFJLENBQUMsT0FBTyxDQUFBLGdCQUFBLDRCQUFFO29CQUE5QixJQUFNLE1BQU0sV0FBQTtvQkFDZixJQUFNLElBQUksR0FBRyxNQUFNLENBQUMsbUJBQW1CLENBQUMsSUFBSSxDQUFDLENBQUM7b0JBQzlDLElBQUksSUFBSSxLQUFLLElBQUksRUFBRTt3QkFDakIsT0FBTyxJQUFJLENBQUM7cUJBQ2I7aUJBQ0Y7Ozs7Ozs7OztZQUNELE9BQU8sSUFBSSxDQUFDO1FBQ2QsQ0FBQztRQUNELGdEQUFlLEdBQWYsVUFBZ0IsSUFBaUQ7OztnQkFDL0QsS0FBcUIsSUFBQSxLQUFBLGlCQUFBLElBQUksQ0FBQyxPQUFPLENBQUEsZ0JBQUEsNEJBQUU7b0JBQTlCLElBQU0sTUFBTSxXQUFBO29CQUNmLElBQU0sSUFBSSxHQUFHLE1BQU0sQ0FBQyxlQUFlLENBQUMsSUFBSSxDQUFDLENBQUM7b0JBQzFDLElBQUksSUFBSSxLQUFLLElBQUksRUFBRTt3QkFDakIsT0FBTyxJQUFJLENBQUM7cUJBQ2I7aUJBQ0Y7Ozs7Ozs7OztZQUNELE9BQU8sSUFBSSxDQUFDO1FBQ2QsQ0FBQztRQUNILDZCQUFDO0lBQUQsQ0FBQyxBQS9CRCxJQStCQztJQS9CWSx3REFBc0I7SUFpQ25DLFNBQVMsZUFBZSxDQUFDLEdBQVc7UUFDbEMsSUFBTSxHQUFHLEdBQUcsR0FBRyxDQUFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsQ0FBQztRQUM3QixJQUFJLEdBQUcsS0FBSyxDQUFDLENBQUMsRUFBRTtZQUNkLE1BQU0sSUFBSSxLQUFLLENBQUMsZUFBYSxHQUFHLHFCQUFrQixDQUFDLENBQUM7U0FDckQ7UUFDRCxPQUFPLEdBQUcsQ0FBQyxNQUFNLENBQUMsR0FBRyxHQUFHLENBQUMsQ0FBQyxDQUFDO0lBQzdCLENBQUM7SUFFRCxnR0FBZ0c7SUFDaEcsU0FBZ0IsbUJBQW1CLENBQUMsS0FBdUIsRUFBRSxJQUFvQjtRQUMvRSxJQUFNLE9BQU8sR0FBRyxJQUFJLENBQUMsaUJBQWlCLENBQUMsS0FBSyxDQUFDLENBQUM7UUFDOUMsT0FBTyxPQUFPLENBQUMsSUFBSSxDQUNmLFVBQUMsRUFBZ0I7Z0JBQWYsUUFBUSxjQUFBLEVBQUUsSUFBSSxVQUFBO1lBQU0sT0FBQSxRQUFRLElBQUksQ0FBQyxJQUFJLEtBQUssT0FBTyxJQUFJLElBQUksS0FBSyxNQUFNLElBQUksSUFBSSxLQUFLLE1BQU0sQ0FBQztRQUFwRSxDQUFvRSxDQUFDLENBQUM7SUFDbEcsQ0FBQztJQUpELGtEQUlDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge1JlZmVyZW5jZX0gZnJvbSAnLi4vLi4vaW1wb3J0cyc7XG5pbXBvcnQge0NsYXNzRGVjbGFyYXRpb24sIENsYXNzTWVtYmVyLCBDbGFzc01lbWJlcktpbmQsIGlzTmFtZWRDbGFzc0RlY2xhcmF0aW9uLCBSZWZsZWN0aW9uSG9zdCwgcmVmbGVjdFR5cGVFbnRpdHlUb0RlY2xhcmF0aW9ufSBmcm9tICcuLi8uLi9yZWZsZWN0aW9uJztcbmltcG9ydCB7bm9kZURlYnVnSW5mb30gZnJvbSAnLi4vLi4vdXRpbC9zcmMvdHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7RGlyZWN0aXZlTWV0YSwgTWV0YWRhdGFSZWFkZXIsIE5nTW9kdWxlTWV0YSwgUGlwZU1ldGEsIFRlbXBsYXRlR3VhcmRNZXRhfSBmcm9tICcuL2FwaSc7XG5cbmV4cG9ydCBmdW5jdGlvbiBleHRyYWN0UmVmZXJlbmNlc0Zyb21UeXBlKFxuICAgIGNoZWNrZXI6IHRzLlR5cGVDaGVja2VyLCBkZWY6IHRzLlR5cGVOb2RlLCBuZ01vZHVsZUltcG9ydGVkRnJvbTogc3RyaW5nfG51bGwsXG4gICAgcmVzb2x1dGlvbkNvbnRleHQ6IHN0cmluZyk6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPltdIHtcbiAgaWYgKCF0cy5pc1R1cGxlVHlwZU5vZGUoZGVmKSkge1xuICAgIHJldHVybiBbXTtcbiAgfVxuICByZXR1cm4gZGVmLmVsZW1lbnRUeXBlcy5tYXAoZWxlbWVudCA9PiB7XG4gICAgaWYgKCF0cy5pc1R5cGVRdWVyeU5vZGUoZWxlbWVudCkpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihgRXhwZWN0ZWQgVHlwZVF1ZXJ5Tm9kZTogJHtub2RlRGVidWdJbmZvKGVsZW1lbnQpfWApO1xuICAgIH1cbiAgICBjb25zdCB0eXBlID0gZWxlbWVudC5leHByTmFtZTtcbiAgICBjb25zdCB7bm9kZSwgZnJvbX0gPSByZWZsZWN0VHlwZUVudGl0eVRvRGVjbGFyYXRpb24odHlwZSwgY2hlY2tlcik7XG4gICAgaWYgKCFpc05hbWVkQ2xhc3NEZWNsYXJhdGlvbihub2RlKSkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGBFeHBlY3RlZCBuYW1lZCBDbGFzc0RlY2xhcmF0aW9uOiAke25vZGVEZWJ1Z0luZm8obm9kZSl9YCk7XG4gICAgfVxuICAgIGNvbnN0IHNwZWNpZmllciA9IChmcm9tICE9PSBudWxsICYmICFmcm9tLnN0YXJ0c1dpdGgoJy4nKSA/IGZyb20gOiBuZ01vZHVsZUltcG9ydGVkRnJvbSk7XG4gICAgaWYgKHNwZWNpZmllciAhPT0gbnVsbCkge1xuICAgICAgcmV0dXJuIG5ldyBSZWZlcmVuY2Uobm9kZSwge3NwZWNpZmllciwgcmVzb2x1dGlvbkNvbnRleHR9KTtcbiAgICB9IGVsc2Uge1xuICAgICAgcmV0dXJuIG5ldyBSZWZlcmVuY2Uobm9kZSk7XG4gICAgfVxuICB9KTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHJlYWRTdHJpbmdUeXBlKHR5cGU6IHRzLlR5cGVOb2RlKTogc3RyaW5nfG51bGwge1xuICBpZiAoIXRzLmlzTGl0ZXJhbFR5cGVOb2RlKHR5cGUpIHx8ICF0cy5pc1N0cmluZ0xpdGVyYWwodHlwZS5saXRlcmFsKSkge1xuICAgIHJldHVybiBudWxsO1xuICB9XG4gIHJldHVybiB0eXBlLmxpdGVyYWwudGV4dDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHJlYWRTdHJpbmdNYXBUeXBlKHR5cGU6IHRzLlR5cGVOb2RlKToge1trZXk6IHN0cmluZ106IHN0cmluZ30ge1xuICBpZiAoIXRzLmlzVHlwZUxpdGVyYWxOb2RlKHR5cGUpKSB7XG4gICAgcmV0dXJuIHt9O1xuICB9XG4gIGNvbnN0IG9iajoge1trZXk6IHN0cmluZ106IHN0cmluZ30gPSB7fTtcbiAgdHlwZS5tZW1iZXJzLmZvckVhY2gobWVtYmVyID0+IHtcbiAgICBpZiAoIXRzLmlzUHJvcGVydHlTaWduYXR1cmUobWVtYmVyKSB8fCBtZW1iZXIudHlwZSA9PT0gdW5kZWZpbmVkIHx8IG1lbWJlci5uYW1lID09PSB1bmRlZmluZWQgfHxcbiAgICAgICAgIXRzLmlzU3RyaW5nTGl0ZXJhbChtZW1iZXIubmFtZSkpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgY29uc3QgdmFsdWUgPSByZWFkU3RyaW5nVHlwZShtZW1iZXIudHlwZSk7XG4gICAgaWYgKHZhbHVlID09PSBudWxsKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gICAgb2JqW21lbWJlci5uYW1lLnRleHRdID0gdmFsdWU7XG4gIH0pO1xuICByZXR1cm4gb2JqO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gcmVhZFN0cmluZ0FycmF5VHlwZSh0eXBlOiB0cy5UeXBlTm9kZSk6IHN0cmluZ1tdIHtcbiAgaWYgKCF0cy5pc1R1cGxlVHlwZU5vZGUodHlwZSkpIHtcbiAgICByZXR1cm4gW107XG4gIH1cbiAgY29uc3QgcmVzOiBzdHJpbmdbXSA9IFtdO1xuICB0eXBlLmVsZW1lbnRUeXBlcy5mb3JFYWNoKGVsID0+IHtcbiAgICBpZiAoIXRzLmlzTGl0ZXJhbFR5cGVOb2RlKGVsKSB8fCAhdHMuaXNTdHJpbmdMaXRlcmFsKGVsLmxpdGVyYWwpKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuICAgIHJlcy5wdXNoKGVsLmxpdGVyYWwudGV4dCk7XG4gIH0pO1xuICByZXR1cm4gcmVzO1xufVxuXG5cbmV4cG9ydCBmdW5jdGlvbiBleHRyYWN0RGlyZWN0aXZlR3VhcmRzKG5vZGU6IENsYXNzRGVjbGFyYXRpb24sIHJlZmxlY3RvcjogUmVmbGVjdGlvbkhvc3QpOiB7XG4gIG5nVGVtcGxhdGVHdWFyZHM6IFRlbXBsYXRlR3VhcmRNZXRhW10sXG4gIGhhc05nVGVtcGxhdGVDb250ZXh0R3VhcmQ6IGJvb2xlYW4sXG4gIGNvZXJjZWRJbnB1dEZpZWxkczogU2V0PHN0cmluZz4sXG59IHtcbiAgY29uc3Qgc3RhdGljTWVtYmVycyA9IHJlZmxlY3Rvci5nZXRNZW1iZXJzT2ZDbGFzcyhub2RlKS5maWx0ZXIobWVtYmVyID0+IG1lbWJlci5pc1N0YXRpYyk7XG4gIGNvbnN0IG5nVGVtcGxhdGVHdWFyZHMgPSBzdGF0aWNNZW1iZXJzLm1hcChleHRyYWN0VGVtcGxhdGVHdWFyZClcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuZmlsdGVyKChndWFyZCk6IGd1YXJkIGlzIFRlbXBsYXRlR3VhcmRNZXRhID0+IGd1YXJkICE9PSBudWxsKTtcbiAgY29uc3QgaGFzTmdUZW1wbGF0ZUNvbnRleHRHdWFyZCA9IHN0YXRpY01lbWJlcnMuc29tZShcbiAgICAgIG1lbWJlciA9PiBtZW1iZXIua2luZCA9PT0gQ2xhc3NNZW1iZXJLaW5kLk1ldGhvZCAmJiBtZW1iZXIubmFtZSA9PT0gJ25nVGVtcGxhdGVDb250ZXh0R3VhcmQnKTtcblxuICBjb25zdCBjb2VyY2VkSW5wdXRGaWVsZHMgPVxuICAgICAgbmV3IFNldChzdGF0aWNNZW1iZXJzLm1hcChleHRyYWN0Q29lcmNlZElucHV0KVxuICAgICAgICAgICAgICAgICAgLmZpbHRlcigoaW5wdXROYW1lKTogaW5wdXROYW1lIGlzIHN0cmluZyA9PiBpbnB1dE5hbWUgIT09IG51bGwpKTtcbiAgcmV0dXJuIHtoYXNOZ1RlbXBsYXRlQ29udGV4dEd1YXJkLCBuZ1RlbXBsYXRlR3VhcmRzLCBjb2VyY2VkSW5wdXRGaWVsZHN9O1xufVxuXG5mdW5jdGlvbiBleHRyYWN0VGVtcGxhdGVHdWFyZChtZW1iZXI6IENsYXNzTWVtYmVyKTogVGVtcGxhdGVHdWFyZE1ldGF8bnVsbCB7XG4gIGlmICghbWVtYmVyLm5hbWUuc3RhcnRzV2l0aCgnbmdUZW1wbGF0ZUd1YXJkXycpKSB7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgY29uc3QgaW5wdXROYW1lID0gYWZ0ZXJVbmRlcnNjb3JlKG1lbWJlci5uYW1lKTtcbiAgaWYgKG1lbWJlci5raW5kID09PSBDbGFzc01lbWJlcktpbmQuUHJvcGVydHkpIHtcbiAgICBsZXQgdHlwZTogc3RyaW5nfG51bGwgPSBudWxsO1xuICAgIGlmIChtZW1iZXIudHlwZSAhPT0gbnVsbCAmJiB0cy5pc0xpdGVyYWxUeXBlTm9kZShtZW1iZXIudHlwZSkgJiZcbiAgICAgICAgdHMuaXNTdHJpbmdMaXRlcmFsKG1lbWJlci50eXBlLmxpdGVyYWwpKSB7XG4gICAgICB0eXBlID0gbWVtYmVyLnR5cGUubGl0ZXJhbC50ZXh0O1xuICAgIH1cblxuICAgIC8vIE9ubHkgcHJvcGVydHkgbWVtYmVycyB3aXRoIHN0cmluZyBsaXRlcmFsIHR5cGUgJ2JpbmRpbmcnIGFyZSBjb25zaWRlcmVkIGFzIHRlbXBsYXRlIGd1YXJkLlxuICAgIGlmICh0eXBlICE9PSAnYmluZGluZycpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgICByZXR1cm4ge2lucHV0TmFtZSwgdHlwZX07XG4gIH0gZWxzZSBpZiAobWVtYmVyLmtpbmQgPT09IENsYXNzTWVtYmVyS2luZC5NZXRob2QpIHtcbiAgICByZXR1cm4ge2lucHV0TmFtZSwgdHlwZTogJ2ludm9jYXRpb24nfTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxufVxuXG5mdW5jdGlvbiBleHRyYWN0Q29lcmNlZElucHV0KG1lbWJlcjogQ2xhc3NNZW1iZXIpOiBzdHJpbmd8bnVsbCB7XG4gIGlmIChtZW1iZXIua2luZCAhPT0gQ2xhc3NNZW1iZXJLaW5kLlByb3BlcnR5IHx8ICFtZW1iZXIubmFtZS5zdGFydHNXaXRoKCduZ0FjY2VwdElucHV0VHlwZV8nKSkge1xuICAgIHJldHVybiBudWxsITtcbiAgfVxuICByZXR1cm4gYWZ0ZXJVbmRlcnNjb3JlKG1lbWJlci5uYW1lKTtcbn1cblxuLyoqXG4gKiBBIGBNZXRhZGF0YVJlYWRlcmAgdGhhdCByZWFkcyBmcm9tIGFuIG9yZGVyZWQgc2V0IG9mIGNoaWxkIHJlYWRlcnMgdW50aWwgaXQgb2J0YWlucyB0aGUgcmVxdWVzdGVkXG4gKiBtZXRhZGF0YS5cbiAqXG4gKiBUaGlzIGlzIHVzZWQgdG8gY29tYmluZSBgTWV0YWRhdGFSZWFkZXJgcyB0aGF0IHJlYWQgZnJvbSBkaWZmZXJlbnQgc291cmNlcyAoZS5nLiBmcm9tIGEgcmVnaXN0cnlcbiAqIGFuZCBmcm9tIC5kLnRzIGZpbGVzKS5cbiAqL1xuZXhwb3J0IGNsYXNzIENvbXBvdW5kTWV0YWRhdGFSZWFkZXIgaW1wbGVtZW50cyBNZXRhZGF0YVJlYWRlciB7XG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgcmVhZGVyczogTWV0YWRhdGFSZWFkZXJbXSkge31cblxuICBnZXREaXJlY3RpdmVNZXRhZGF0YShub2RlOiBSZWZlcmVuY2U8Q2xhc3NEZWNsYXJhdGlvbjx0cy5EZWNsYXJhdGlvbj4+KTogRGlyZWN0aXZlTWV0YXxudWxsIHtcbiAgICBmb3IgKGNvbnN0IHJlYWRlciBvZiB0aGlzLnJlYWRlcnMpIHtcbiAgICAgIGNvbnN0IG1ldGEgPSByZWFkZXIuZ2V0RGlyZWN0aXZlTWV0YWRhdGEobm9kZSk7XG4gICAgICBpZiAobWV0YSAhPT0gbnVsbCkge1xuICAgICAgICByZXR1cm4gbWV0YTtcbiAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBnZXROZ01vZHVsZU1ldGFkYXRhKG5vZGU6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPHRzLkRlY2xhcmF0aW9uPj4pOiBOZ01vZHVsZU1ldGF8bnVsbCB7XG4gICAgZm9yIChjb25zdCByZWFkZXIgb2YgdGhpcy5yZWFkZXJzKSB7XG4gICAgICBjb25zdCBtZXRhID0gcmVhZGVyLmdldE5nTW9kdWxlTWV0YWRhdGEobm9kZSk7XG4gICAgICBpZiAobWV0YSAhPT0gbnVsbCkge1xuICAgICAgICByZXR1cm4gbWV0YTtcbiAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgZ2V0UGlwZU1ldGFkYXRhKG5vZGU6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPHRzLkRlY2xhcmF0aW9uPj4pOiBQaXBlTWV0YXxudWxsIHtcbiAgICBmb3IgKGNvbnN0IHJlYWRlciBvZiB0aGlzLnJlYWRlcnMpIHtcbiAgICAgIGNvbnN0IG1ldGEgPSByZWFkZXIuZ2V0UGlwZU1ldGFkYXRhKG5vZGUpO1xuICAgICAgaWYgKG1ldGEgIT09IG51bGwpIHtcbiAgICAgICAgcmV0dXJuIG1ldGE7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG59XG5cbmZ1bmN0aW9uIGFmdGVyVW5kZXJzY29yZShzdHI6IHN0cmluZyk6IHN0cmluZyB7XG4gIGNvbnN0IHBvcyA9IHN0ci5pbmRleE9mKCdfJyk7XG4gIGlmIChwb3MgPT09IC0xKSB7XG4gICAgdGhyb3cgbmV3IEVycm9yKGBFeHBlY3RlZCAnJHtzdHJ9JyB0byBjb250YWluICdfJ2ApO1xuICB9XG4gIHJldHVybiBzdHIuc3Vic3RyKHBvcyArIDEpO1xufVxuXG4vKiogUmV0dXJucyB3aGV0aGVyIGEgY2xhc3MgZGVjbGFyYXRpb24gaGFzIHRoZSBuZWNlc3NhcnkgY2xhc3MgZmllbGRzIHRvIG1ha2UgaXQgaW5qZWN0YWJsZS4gKi9cbmV4cG9ydCBmdW5jdGlvbiBoYXNJbmplY3RhYmxlRmllbGRzKGNsYXp6OiBDbGFzc0RlY2xhcmF0aW9uLCBob3N0OiBSZWZsZWN0aW9uSG9zdCk6IGJvb2xlYW4ge1xuICBjb25zdCBtZW1iZXJzID0gaG9zdC5nZXRNZW1iZXJzT2ZDbGFzcyhjbGF6eik7XG4gIHJldHVybiBtZW1iZXJzLnNvbWUoXG4gICAgICAoe2lzU3RhdGljLCBuYW1lfSkgPT4gaXNTdGF0aWMgJiYgKG5hbWUgPT09ICfJtXByb3YnIHx8IG5hbWUgPT09ICfJtWZhYycgfHwgbmFtZSA9PT0gJ8m1aW5qJykpO1xufVxuIl19