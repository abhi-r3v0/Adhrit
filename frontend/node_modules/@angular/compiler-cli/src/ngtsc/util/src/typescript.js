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
        define("@angular/compiler-cli/src/ngtsc/util/src/typescript", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/ngtsc/file_system"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.resolveModuleName = exports.nodeDebugInfo = exports.getRootDirs = exports.isExported = exports.isTypeDeclaration = exports.isValueDeclaration = exports.isDeclaration = exports.identifierOfNode = exports.getTokenAtPosition = exports.getSourceFileOrNull = exports.getSourceFile = exports.nodeNameForError = exports.isFromDtsFile = exports.isNonDeclarationTsPath = exports.isDtsPath = void 0;
    var tslib_1 = require("tslib");
    var TS = /\.tsx?$/i;
    var D_TS = /\.d\.ts$/i;
    var ts = require("typescript");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    function isDtsPath(filePath) {
        return D_TS.test(filePath);
    }
    exports.isDtsPath = isDtsPath;
    function isNonDeclarationTsPath(filePath) {
        return TS.test(filePath) && !D_TS.test(filePath);
    }
    exports.isNonDeclarationTsPath = isNonDeclarationTsPath;
    function isFromDtsFile(node) {
        var sf = node.getSourceFile();
        if (sf === undefined) {
            sf = ts.getOriginalNode(node).getSourceFile();
        }
        return sf !== undefined && sf.isDeclarationFile;
    }
    exports.isFromDtsFile = isFromDtsFile;
    function nodeNameForError(node) {
        if (node.name !== undefined && ts.isIdentifier(node.name)) {
            return node.name.text;
        }
        else {
            var kind = ts.SyntaxKind[node.kind];
            var _a = ts.getLineAndCharacterOfPosition(node.getSourceFile(), node.getStart()), line = _a.line, character = _a.character;
            return kind + "@" + line + ":" + character;
        }
    }
    exports.nodeNameForError = nodeNameForError;
    function getSourceFile(node) {
        // In certain transformation contexts, `ts.Node.getSourceFile()` can actually return `undefined`,
        // despite the type signature not allowing it. In that event, get the `ts.SourceFile` via the
        // original node instead (which works).
        var directSf = node.getSourceFile();
        return directSf !== undefined ? directSf : ts.getOriginalNode(node).getSourceFile();
    }
    exports.getSourceFile = getSourceFile;
    function getSourceFileOrNull(program, fileName) {
        return program.getSourceFile(fileName) || null;
    }
    exports.getSourceFileOrNull = getSourceFileOrNull;
    function getTokenAtPosition(sf, pos) {
        // getTokenAtPosition is part of TypeScript's private API.
        return ts.getTokenAtPosition(sf, pos);
    }
    exports.getTokenAtPosition = getTokenAtPosition;
    function identifierOfNode(decl) {
        if (decl.name !== undefined && ts.isIdentifier(decl.name)) {
            return decl.name;
        }
        else {
            return null;
        }
    }
    exports.identifierOfNode = identifierOfNode;
    function isDeclaration(node) {
        return isValueDeclaration(node) || isTypeDeclaration(node);
    }
    exports.isDeclaration = isDeclaration;
    function isValueDeclaration(node) {
        return ts.isClassDeclaration(node) || ts.isFunctionDeclaration(node) ||
            ts.isVariableDeclaration(node);
    }
    exports.isValueDeclaration = isValueDeclaration;
    function isTypeDeclaration(node) {
        return ts.isEnumDeclaration(node) || ts.isTypeAliasDeclaration(node) ||
            ts.isInterfaceDeclaration(node);
    }
    exports.isTypeDeclaration = isTypeDeclaration;
    function isExported(node) {
        var topLevel = node;
        if (ts.isVariableDeclaration(node) && ts.isVariableDeclarationList(node.parent)) {
            topLevel = node.parent.parent;
        }
        return topLevel.modifiers !== undefined &&
            topLevel.modifiers.some(function (modifier) { return modifier.kind === ts.SyntaxKind.ExportKeyword; });
    }
    exports.isExported = isExported;
    function getRootDirs(host, options) {
        var rootDirs = [];
        if (options.rootDirs !== undefined) {
            rootDirs.push.apply(rootDirs, tslib_1.__spread(options.rootDirs));
        }
        else if (options.rootDir !== undefined) {
            rootDirs.push(options.rootDir);
        }
        else {
            rootDirs.push(host.getCurrentDirectory());
        }
        // In Windows the above might not always return posix separated paths
        // See:
        // https://github.com/Microsoft/TypeScript/blob/3f7357d37f66c842d70d835bc925ec2a873ecfec/src/compiler/sys.ts#L650
        // Also compiler options might be set via an API which doesn't normalize paths
        return rootDirs.map(function (rootDir) { return file_system_1.absoluteFrom(host.getCanonicalFileName(rootDir)); });
    }
    exports.getRootDirs = getRootDirs;
    function nodeDebugInfo(node) {
        var sf = getSourceFile(node);
        var _a = ts.getLineAndCharacterOfPosition(sf, node.pos), line = _a.line, character = _a.character;
        return "[" + sf.fileName + ": " + ts.SyntaxKind[node.kind] + " @ " + line + ":" + character + "]";
    }
    exports.nodeDebugInfo = nodeDebugInfo;
    /**
     * Resolve the specified `moduleName` using the given `compilerOptions` and `compilerHost`.
     *
     * This helper will attempt to use the `CompilerHost.resolveModuleNames()` method if available.
     * Otherwise it will fallback on the `ts.ResolveModuleName()` function.
     */
    function resolveModuleName(moduleName, containingFile, compilerOptions, compilerHost, moduleResolutionCache) {
        if (compilerHost.resolveModuleNames) {
            return compilerHost.resolveModuleNames([moduleName], containingFile, undefined, // reusedNames
            undefined, // redirectedReference
            compilerOptions)[0];
        }
        else {
            return ts
                .resolveModuleName(moduleName, containingFile, compilerOptions, compilerHost, moduleResolutionCache !== null ? moduleResolutionCache : undefined)
                .resolvedModule;
        }
    }
    exports.resolveModuleName = resolveModuleName;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHlwZXNjcmlwdC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvdXRpbC9zcmMvdHlwZXNjcmlwdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBRUgsSUFBTSxFQUFFLEdBQUcsVUFBVSxDQUFDO0lBQ3RCLElBQU0sSUFBSSxHQUFHLFdBQVcsQ0FBQztJQUV6QiwrQkFBaUM7SUFDakMsMkVBQStEO0lBRS9ELFNBQWdCLFNBQVMsQ0FBQyxRQUFnQjtRQUN4QyxPQUFPLElBQUksQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUM7SUFDN0IsQ0FBQztJQUZELDhCQUVDO0lBRUQsU0FBZ0Isc0JBQXNCLENBQUMsUUFBZ0I7UUFDckQsT0FBTyxFQUFFLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUMsQ0FBQztJQUNuRCxDQUFDO0lBRkQsd0RBRUM7SUFFRCxTQUFnQixhQUFhLENBQUMsSUFBYTtRQUN6QyxJQUFJLEVBQUUsR0FBNEIsSUFBSSxDQUFDLGFBQWEsRUFBRSxDQUFDO1FBQ3ZELElBQUksRUFBRSxLQUFLLFNBQVMsRUFBRTtZQUNwQixFQUFFLEdBQUcsRUFBRSxDQUFDLGVBQWUsQ0FBQyxJQUFJLENBQUMsQ0FBQyxhQUFhLEVBQUUsQ0FBQztTQUMvQztRQUNELE9BQU8sRUFBRSxLQUFLLFNBQVMsSUFBSSxFQUFFLENBQUMsaUJBQWlCLENBQUM7SUFDbEQsQ0FBQztJQU5ELHNDQU1DO0lBRUQsU0FBZ0IsZ0JBQWdCLENBQUMsSUFBOEI7UUFDN0QsSUFBSSxJQUFJLENBQUMsSUFBSSxLQUFLLFNBQVMsSUFBSSxFQUFFLENBQUMsWUFBWSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsRUFBRTtZQUN6RCxPQUFPLElBQUks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aUIsQ0FDN0IsVUFBa0IsRUFBRSxjQUFzQixFQUFFLGVBQW1DLEVBQy9FLFlBQWlGLEVBQ2pGLHFCQUFvRDtRQUN0RCxJQUFJLFlBQVksQ0FBQyxrQkFBa0IsRUFBRTtZQUNuQyxPQUFPLFlBQVksQ0FBQyxrQkFBa0IsQ0FDbEMsQ0FBQyxVQUFVLENBQUMsRUFBRSxjQUFjLEVBQzVCLFNBQVMsRUFBRyxjQUFjO1lBQzFCLFNBQVMsRUFBRyxzQkFBc0I7WUFDbEMsZUFBZSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7U0FDekI7YUFBTTtZQUNMLE9BQU8sRUFBRTtpQkFDSixpQkFBaUIsQ0FDZCxVQUFVLEVBQUUsY0FBYyxFQUFFLGVBQWUsRUFBRSxZQUFZLEVBQ3pELHFCQUFxQixLQUFLLElBQUksQ0FBQyxDQUFDLENBQUMscUJBQXFCLENBQUMsQ0FBQyxDQUFDLFNBQVMsQ0FBQztpQkFDdEUsY0FBYyxDQUFDO1NBQ3JCO0lBQ0gsQ0FBQztJQWpCRCw4Q0FpQkMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuY29uc3QgVFMgPSAvXFwudHN4PyQvaTtcbmNvbnN0IERfVFMgPSAvXFwuZFxcLnRzJC9pO1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcbmltcG9ydCB7QWJzb2x1dGVGc1BhdGgsIGFic29sdXRlRnJvbX0gZnJvbSAnLi4vLi4vZmlsZV9zeXN0ZW0nO1xuXG5leHBvcnQgZnVuY3Rpb24gaXNEdHNQYXRoKGZpbGVQYXRoOiBzdHJpbmcpOiBib29sZWFuIHtcbiAgcmV0dXJuIERfVFMudGVzdChmaWxlUGF0aCk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpc05vbkRlY2xhcmF0aW9uVHNQYXRoKGZpbGVQYXRoOiBzdHJpbmcpOiBib29sZWFuIHtcbiAgcmV0dXJuIFRTLnRlc3QoZmlsZVBhdGgpICYmICFEX1RTLnRlc3QoZmlsZVBhdGgpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaXNGcm9tRHRzRmlsZShub2RlOiB0cy5Ob2RlKTogYm9vbGVhbiB7XG4gIGxldCBzZjogdHMuU291cmNlRmlsZXx1bmRlZmluZWQgPSBub2RlLmdldFNvdXJjZUZpbGUoKTtcbiAgaWYgKHNmID09PSB1bmRlZmluZWQpIHtcbiAgICBzZiA9IHRzLmdldE9yaWdpbmFsTm9kZShub2RlKS5nZXRTb3VyY2VGaWxlKCk7XG4gIH1cbiAgcmV0dXJuIHNmICE9PSB1bmRlZmluZWQgJiYgc2YuaXNEZWNsYXJhdGlvbkZpbGU7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBub2RlTmFtZUZvckVycm9yKG5vZGU6IHRzLk5vZGUme25hbWU/OiB0cy5Ob2RlfSk6IHN0cmluZyB7XG4gIGlmIChub2RlLm5hbWUgIT09IHVuZGVmaW5lZCAmJiB0cy5pc0lkZW50aWZpZXIobm9kZS5uYW1lKSkge1xuICAgIHJldHVybiBub2RlLm5hbWUudGV4dDtcbiAgfSBlbHNlIHtcbiAgICBjb25zdCBraW5kID0gdHMuU3ludGF4S2luZFtub2RlLmtpbmRdO1xuICAgIGNvbnN0IHtsaW5lLCBjaGFyYWN0ZXJ9ID1cbiAgICAgICAgdHMuZ2V0TGluZUFuZENoYXJhY3Rlck9mUG9zaXRpb24obm9kZS5nZXRTb3VyY2VGaWxlKCksIG5vZGUuZ2V0U3RhcnQoKSk7XG4gICAgcmV0dXJuIGAke2tpbmR9QCR7bGluZX06JHtjaGFyYWN0ZXJ9YDtcbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0U291cmNlRmlsZShub2RlOiB0cy5Ob2RlKTogdHMuU291cmNlRmlsZSB7XG4gIC8vIEluIGNlcnRhaW4gdHJhbnNmb3JtYXRpb24gY29udGV4dHMsIGB0cy5Ob2RlLmdldFNvdXJjZUZpbGUoKWAgY2FuIGFjdHVhbGx5IHJldHVybiBgdW5kZWZpbmVkYCxcbiAgLy8gZGVzcGl0ZSB0aGUgdHlwZSBzaWduYXR1cmUgbm90IGFsbG93aW5nIGl0LiBJbiB0aGF0IGV2ZW50LCBnZXQgdGhlIGB0cy5Tb3VyY2VGaWxlYCB2aWEgdGhlXG4gIC8vIG9yaWdpbmFsIG5vZGUgaW5zdGVhZCAod2hpY2ggd29ya3MpLlxuICBjb25zdCBkaXJlY3RTZiA9IG5vZGUuZ2V0U291cmNlRmlsZSgpIGFzIHRzLlNvdXJjZUZpbGUgfCB1bmRlZmluZWQ7XG4gIHJldHVybiBkaXJlY3RTZiAhPT0gdW5kZWZpbmVkID8gZGlyZWN0U2YgOiB0cy5nZXRPcmlnaW5hbE5vZGUobm9kZSkuZ2V0U291cmNlRmlsZSgpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0U291cmNlRmlsZU9yTnVsbChwcm9ncmFtOiB0cy5Qcm9ncmFtLCBmaWxlTmFtZTogQWJzb2x1dGVGc1BhdGgpOiB0cy5Tb3VyY2VGaWxlfFxuICAgIG51bGwge1xuICByZXR1cm4gcHJvZ3JhbS5nZXRTb3VyY2VGaWxlKGZpbGVOYW1lKSB8fCBudWxsO1xufVxuXG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRUb2tlbkF0UG9zaXRpb24oc2Y6IHRzLlNvdXJjZUZpbGUsIHBvczogbnVtYmVyKTogdHMuTm9kZSB7XG4gIC8vIGdldFRva2VuQXRQb3NpdGlvbiBpcyBwYXJ0IG9mIFR5cGVTY3JpcHQncyBwcml2YXRlIEFQSS5cbiAgcmV0dXJuICh0cyBhcyBhbnkpLmdldFRva2VuQXRQb3NpdGlvbihzZiwgcG9zKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGlkZW50aWZpZXJPZk5vZGUoZGVjbDogdHMuTm9kZSZ7bmFtZT86IHRzLk5vZGV9KTogdHMuSWRlbnRpZmllcnxudWxsIHtcbiAgaWYgKGRlY2wubmFtZSAhPT0gdW5kZWZpbmVkICYmIHRzLmlzSWRlbnRpZmllcihkZWNsLm5hbWUpKSB7XG4gICAgcmV0dXJuIGRlY2wubmFtZTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gaXNEZWNsYXJhdGlvbihub2RlOiB0cy5Ob2RlKTogbm9kZSBpcyB0cy5EZWNsYXJhdGlvbiB7XG4gIHJldHVybiBpc1ZhbHVlRGVjbGFyYXRpb24obm9kZSkgfHwgaXNUeXBlRGVjbGFyYXRpb24obm9kZSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpc1ZhbHVlRGVjbGFyYXRpb24obm9kZTogdHMuTm9kZSk6IG5vZGUgaXMgdHMuQ2xhc3NEZWNsYXJhdGlvbnxcbiAgICB0cy5GdW5jdGlvbkRlY2xhcmF0aW9ufHRzLlZhcmlhYmxlRGVjbGFyYXRpb24ge1xuICByZXR1cm4gdHMuaXNDbGFzc0RlY2xhcmF0aW9uKG5vZGUpIHx8IHRzLmlzRnVuY3Rpb25EZWNsYXJhdGlvbihub2RlKSB8fFxuICAgICAgdHMuaXNWYXJpYWJsZURlY2xhcmF0aW9uKG5vZGUpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaXNUeXBlRGVjbGFyYXRpb24obm9kZTogdHMuTm9kZSk6IG5vZGUgaXMgdHMuRW51bURlY2xhcmF0aW9ufFxuICAgIHRzLlR5cGVBbGlhc0RlY2xhcmF0aW9ufHRzLkludGVyZmFjZURlY2xhcmF0aW9uIHtcbiAgcmV0dXJuIHRzLmlzRW51bURlY2xhcmF0aW9uKG5vZGUpIHx8IHRzLmlzVHlwZUFsaWFzRGVjbGFyYXRpb24obm9kZSkgfHxcbiAgICAgIHRzLmlzSW50ZXJmYWNlRGVjbGFyYXRpb24obm9kZSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpc0V4cG9ydGVkKG5vZGU6IHRzLkRlY2xhcmF0aW9uKTogYm9vbGVhbiB7XG4gIGxldCB0b3BMZXZlbDogdHMuTm9kZSA9IG5vZGU7XG4gIGlmICh0cy5pc1ZhcmlhYmxlRGVjbGFyYXRpb24obm9kZSkgJiYgdHMuaXNWYXJpYWJsZURlY2xhcmF0aW9uTGlzdChub2RlLnBhcmVudCkpIHtcbiAgICB0b3BMZXZlbCA9IG5vZGUucGFyZW50LnBhcmVudDtcbiAgfVxuICByZXR1cm4gdG9wTGV2ZWwubW9kaWZpZXJzICE9PSB1bmRlZmluZWQgJiZcbiAgICAgIHRvcExldmVsLm1vZGlmaWVycy5zb21lKG1vZGlmaWVyID0+IG1vZGlmaWVyLmtpbmQgPT09IHRzLlN5bnRheEtpbmQuRXhwb3J0S2V5d29yZCk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRSb290RGlycyhob3N0OiB0cy5Db21waWxlckhvc3QsIG9wdGlvbnM6IHRzLkNvbXBpbGVyT3B0aW9ucyk6IEFic29sdXRlRnNQYXRoW10ge1xuICBjb25zdCByb290RGlyczogc3RyaW5nW10gPSBbXTtcbiAgaWYgKG9wdGlvbnMucm9vdERpcnMgIT09IHVuZGVmaW5lZCkge1xuICAgIHJvb3REaXJzLnB1c2goLi4ub3B0aW9ucy5yb290RGlycyk7XG4gIH0gZWxzZSBpZiAob3B0aW9ucy5yb290RGlyICE9PSB1bmRlZmluZWQpIHtcbiAgICByb290RGlycy5wdXNoKG9wdGlvbnMucm9vdERpcik7XG4gIH0gZWxzZSB7XG4gICAgcm9vdERpcnMucHVzaChob3N0LmdldEN1cnJlbnREaXJlY3RvcnkoKSk7XG4gIH1cblxuICAvLyBJbiBXaW5kb3dzIHRoZSBhYm92ZSBtaWdodCBub3QgYWx3YXlzIHJldHVybiBwb3NpeCBzZXBhcmF0ZWQgcGF0aHNcbiAgLy8gU2VlOlxuICAvLyBodHRwczovL2dpdGh1Yi5jb20vTWljcm9zb2Z0L1R5cGVTY3JpcHQvYmxvYi8zZjczNTdkMzdmNjZjODQyZDcwZDgzNWJjOTI1ZWMyYTg3M2VjZmVjL3NyYy9jb21waWxlci9zeXMudHMjTDY1MFxuICAvLyBBbHNvIGNvbXBpbGVyIG9wdGlvbnMgbWlnaHQgYmUgc2V0IHZpYSBhbiBBUEkgd2hpY2ggZG9lc24ndCBub3JtYWxpemUgcGF0aHNcbiAgcmV0dXJuIHJvb3REaXJzLm1hcChyb290RGlyID0+IGFic29sdXRlRnJvbShob3N0LmdldENhbm9uaWNhbEZpbGVOYW1lKHJvb3REaXIpKSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBub2RlRGVidWdJbmZvKG5vZGU6IHRzLk5vZGUpOiBzdHJpbmcge1xuICBjb25zdCBzZiA9IGdldFNvdXJjZUZpbGUobm9kZSk7XG4gIGNvbnN0IHtsaW5lLCBjaGFyYWN0ZXJ9ID0gdHMuZ2V0TGluZUFuZENoYXJhY3Rlck9mUG9zaXRpb24oc2YsIG5vZGUucG9zKTtcbiAgcmV0dXJuIGBbJHtzZi5maWxlTmFtZX06ICR7dHMuU3ludGF4S2luZFtub2RlLmtpbmRdfSBAICR7bGluZX06JHtjaGFyYWN0ZXJ9XWA7XG59XG5cbi8qKlxuICogUmVzb2x2ZSB0aGUgc3BlY2lmaWVkIGBtb2R1bGVOYW1lYCB1c2luZyB0aGUgZ2l2ZW4gYGNvbXBpbGVyT3B0aW9uc2AgYW5kIGBjb21waWxlckhvc3RgLlxuICpcbiAqIFRoaXMgaGVscGVyIHdpbGwgYXR0ZW1wdCB0byB1c2UgdGhlIGBDb21waWxlckhvc3QucmVzb2x2ZU1vZHVsZU5hbWVzKClgIG1ldGhvZCBpZiBhdmFpbGFibGUuXG4gKiBPdGhlcndpc2UgaXQgd2lsbCBmYWxsYmFjayBvbiB0aGUgYHRzLlJlc29sdmVNb2R1bGVOYW1lKClgIGZ1bmN0aW9uLlxuICovXG5leHBvcnQgZnVuY3Rpb24gcmVzb2x2ZU1vZHVsZU5hbWUoXG4gICAgbW9kdWxlTmFtZTogc3RyaW5nLCBjb250YWluaW5nRmlsZTogc3RyaW5nLCBjb21waWxlck9wdGlvbnM6IHRzLkNvbXBpbGVyT3B0aW9ucyxcbiAgICBjb21waWxlckhvc3Q6IHRzLk1vZHVsZVJlc29sdXRpb25Ib3N0JlBpY2s8dHMuQ29tcGlsZXJIb3N0LCAncmVzb2x2ZU1vZHVsZU5hbWVzJz4sXG4gICAgbW9kdWxlUmVzb2x1dGlvbkNhY2hlOiB0cy5Nb2R1bGVSZXNvbHV0aW9uQ2FjaGV8bnVsbCk6IHRzLlJlc29sdmVkTW9kdWxlfHVuZGVmaW5lZCB7XG4gIGlmIChjb21waWxlckhvc3QucmVzb2x2ZU1vZHVsZU5hbWVzKSB7XG4gICAgcmV0dXJuIGNvbXBpbGVySG9zdC5yZXNvbHZlTW9kdWxlTmFtZXMoXG4gICAgICAgIFttb2R1bGVOYW1lXSwgY29udGFpbmluZ0ZpbGUsXG4gICAgICAgIHVuZGVmaW5lZCwgIC8vIHJldXNlZE5hbWVzXG4gICAgICAgIHVuZGVmaW5lZCwgIC8vIHJlZGlyZWN0ZWRSZWZlcmVuY2VcbiAgICAgICAgY29tcGlsZXJPcHRpb25zKVswXTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gdHNcbiAgICAgICAgLnJlc29sdmVNb2R1bGVOYW1lKFxuICAgICAgICAgICAgbW9kdWxlTmFtZSwgY29udGFpbmluZ0ZpbGUsIGNvbXBpbGVyT3B0aW9ucywgY29tcGlsZXJIb3N0LFxuICAgICAgICAgICAgbW9kdWxlUmVzb2x1dGlvbkNhY2hlICE9PSBudWxsID8gbW9kdWxlUmVzb2x1dGlvbkNhY2hlIDogdW5kZWZpbmVkKVxuICAgICAgICAucmVzb2x2ZWRNb2R1bGU7XG4gIH1cbn1cblxuLyoqXG4gKiBBc3NlcnRzIHRoYXQgdGhlIGtleXMgYEtgIGZvcm0gYSBzdWJzZXQgb2YgdGhlIGtleXMgb2YgYFRgLlxuICovXG5leHBvcnQgdHlwZSBTdWJzZXRPZktleXM8VCwgSyBleHRlbmRzIGtleW9mIFQ+ID0gSztcbiJdfQ==