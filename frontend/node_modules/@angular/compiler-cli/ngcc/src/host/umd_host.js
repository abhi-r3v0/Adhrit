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
        define("@angular/compiler-cli/ngcc/src/host/umd_host", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/ngcc/src/utils", "@angular/compiler-cli/ngcc/src/host/commonjs_umd_utils", "@angular/compiler-cli/ngcc/src/host/esm5_host", "@angular/compiler-cli/ngcc/src/host/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.getImportsOfUmdModule = exports.parseStatementForUmdModule = exports.UmdReflectionHost = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/utils");
    var commonjs_umd_utils_1 = require("@angular/compiler-cli/ngcc/src/host/commonjs_umd_utils");
    var esm5_host_1 = require("@angular/compiler-cli/ngcc/src/host/esm5_host");
    var utils_2 = require("@angular/compiler-cli/ngcc/src/host/utils");
    var UmdReflectionHost = /** @class */ (function (_super) {
        tslib_1.__extends(UmdReflectionHost, _super);
        function UmdReflectionHost(logger, isCore, src, dts) {
            if (dts === void 0) { dts = null; }
            var _this = _super.call(this, logger, isCore, src, dts) || this;
            _this.umdModules = new utils_1.FactoryMap(function (sf) { return _this.computeUmdModule(sf); });
            _this.umdExports = new utils_1.FactoryMap(function (sf) { return _this.computeExportsOfUmdModule(sf); });
            _this.umdImportPaths = new utils_1.FactoryMap(function (param) { return _this.computeImportPath(param); });
            _this.program = src.program;
            _this.compilerHost = src.host;
            return _this;
        }
        UmdReflectionHost.prototype.getImportOfIdentifier = function (id) {
            // Is `id` a namespaced property access, e.g. `Directive` in `core.Directive`?
            // If so capture the symbol of the namespace, e.g. `core`.
            var nsIdentifier = commonjs_umd_utils_1.findNamespaceOfIdentifier(id);
            var importParameter = nsIdentifier && this.findUmdImportParameter(nsIdentifier);
            var from = importParameter && this.getUmdImportPath(importParameter);
            return from !== null ? { from: from, name: id.text } : null;
        };
        UmdReflectionHost.prototype.getDeclarationOfIdentifier = function (id) {
            return this.getUmdModuleDeclaration(id) || this.getUmdDeclaration(id) ||
                _super.prototype.getDeclarationOfIdentifier.call(this, id);
        };
        UmdReflectionHost.prototype.getExportsOfModule = function (module) {
            return _super.prototype.getExportsOfModule.call(this, module) || this.umdExports.get(module.getSourceFile());
        };
        UmdReflectionHost.prototype.getUmdModule = function (sourceFile) {
            if (sourceFile.isDeclarationFile) {
                return null;
            }
            return this.umdModules.get(sourceFile);
        };
        UmdReflectionHost.prototype.getUmdImportPath = function (importParameter) {
            return this.umdImportPaths.get(importParameter);
        };
        /**
         * Get the top level statements for a module.
         *
         * In UMD modules these are the body of the UMD factory function.
         *
         * @param sourceFile The module whose statements we want.
         * @returns An array of top level statements for the given module.
         */
        UmdReflectionHost.prototype.getModuleStatements = function (sourceFile) {
            var umdModule = this.getUmdModule(sourceFile);
            return umdModule !== null ? Array.from(umdModule.factoryFn.body.statements) : [];
        };
        UmdReflectionHost.prototype.computeUmdModule = function (sourceFile) {
            if (sourceFile.statements.length !== 1) {
                throw new Error("Expected UMD module file (" + sourceFile.fileName + ") to contain exactly one statement, " +
                    ("but found " + sourceFile.statements.length + "."));
            }
            return parseStatementForUmdModule(sourceFile.statements[0]);
        };
        UmdReflectionHost.prototype.computeExportsOfUmdModule = function (sourceFile) {
            var e_1, _a, e_2, _b;
            var moduleMap = new Map();
            try {
                for (var _c = tslib_1.__values(this.getModuleStatements(sourceFile)), _d = _c.next(); !_d.done; _d = _c.next()) {
                    var statement = _d.value;
                    if (commonjs_umd_utils_1.isExportStatement(statement)) {
                        var exportDeclaration = this.extractBasicUmdExportDeclaration(statement);
                        moduleMap.set(exportDeclaration.name, exportDeclaration.declaration);
                    }
                    else if (commonjs_umd_utils_1.isWildcardReexportStatement(statement)) {
                        var reexports = this.extractUmdWildcardReexports(statement, sourceFile);
                        try {
                            for (var reexports_1 = (e_2 = void 0, tslib_1.__values(reexports)), reexports_1_1 = reexports_1.next(); !reexports_1_1.done; reexports_1_1 = reexports_1.next()) {
                                var reexport = reexports_1_1.value;
                                moduleMap.set(reexport.name, reexport.declaration);
                            }
                        }
                        catch (e_2_1) { e_2 = { error: e_2_1 }; }
                        finally {
                            try {
                                if (reexports_1_1 && !reexports_1_1.done && (_b = reexports_1.return)) _b.call(reexports_1);
                            }
                            finally { if (e_2) throw e_2.error; }
                        }
                    }
                    else if (commonjs_umd_utils_1.isDefinePropertyReexportStatement(statement)) {
                        var exportDeclaration = this.extractUmdDefinePropertyExportDeclaration(statement);
                        if (exportDeclaration !== null) {
                            moduleMap.set(exportDeclaration.name, exportDeclaration.declaration);
                        }
                    }
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
                }
                finally { if (e_1) throw e_1.error; }
            }
            return moduleMap;
        };
        UmdReflectionHost.prototype.computeImportPath = function (param) {
            var e_3, _a;
            var umdModule = this.getUmdModule(param.getSourceFile());
            if (umdModule === null) {
                return null;
            }
            var imports = getImportsOfUmdModule(umdModule);
            if (imports === null) {
                return null;
            }
            var importPath = null;
            try {
                for (var imports_1 = tslib_1.__values(imports), imports_1_1 = imports_1.next(); !imports_1_1.done; imports_1_1 = imports_1.next()) {
                    var i = imports_1_1.value;
                    // Add all imports to the map to speed up future look ups.
                    this.umdImportPaths.set(i.parameter, i.path);
                    if (i.parameter === param) {
                        importPath = i.path;
                    }
                }
            }
            catch (e_3_1) { e_3 = { error: e_3_1 }; }
            finally {
                try {
                    if (imports_1_1 && !imports_1_1.done && (_a = imports_1.return)) _a.call(imports_1);
                }
                finally { if (e_3) throw e_3.error; }
            }
            return importPath;
        };
        UmdReflectionHost.prototype.extractBasicUmdExportDeclaration = function (statement) {
            var name = statement.expression.left.name.text;
            var exportExpression = statement.expression.right;
            return this.extractUmdExportDeclaration(name, exportExpression);
        };
        UmdReflectionHost.prototype.extractUmdWildcardReexports = function (statement, containingFile) {
            var reexportArg = statement.expression.arguments[0];
            var requireCall = commonjs_umd_utils_1.isRequireCall(reexportArg) ?
                reexportArg :
                ts.isIdentifier(reexportArg) ? commonjs_umd_utils_1.findRequireCallReference(reexportArg, this.checker) : null;
            var importPath = null;
            if (requireCall !== null) {
                importPath = requireCall.arguments[0].text;
            }
            else if (ts.isIdentifier(reexportArg)) {
                var importParameter = this.findUmdImportParameter(reexportArg);
                importPath = importParameter && this.getUmdImportPath(importParameter);
            }
            if (importPath === null) {
                return [];
            }
            var importedFile = this.resolveModuleName(importPath, containingFile);
            if (importedFile === undefined) {
                return [];
            }
            var importedExports = this.getExportsOfModule(importedFile);
            if (importedExports === null) {
                return [];
            }
            var viaModule = utils_1.stripExtension(importedFile.fileName);
            var reexports = [];
            importedExports.forEach(function (decl, name) {
                if (decl.node !== null) {
                    reexports.push({
                        name: name,
                        declaration: { node: decl.node, known: null, viaModule: viaModule, identity: decl.identity }
                    });
                }
                else {
                    reexports.push({ name: name, declaration: { node: null, known: null, expression: decl.expression, viaModule: viaModule } });
                }
            });
            return reexports;
        };
        UmdReflectionHost.prototype.extractUmdDefinePropertyExportDeclaration = function (statement) {
            var args = statement.expression.arguments;
            var name = args[1].text;
            var getterFnExpression = commonjs_umd_utils_1.extractGetterFnExpression(statement);
            if (getterFnExpression === null) {
                return null;
            }
            return this.extractUmdExportDeclaration(name, getterFnExpression);
        };
        UmdReflectionHost.prototype.extractUmdExportDeclaration = function (name, expression) {
            var declaration = this.getDeclarationOfExpression(expression);
            if (declaration !== null) {
                return { name: name, declaration: declaration };
            }
            return {
                name: name,
                declaration: { node: null, known: null, expression: expression, viaModule: null },
            };
        };
        /**
         * Is the identifier a parameter on a UMD factory function, e.g. `function factory(this, core)`?
         * If so then return its declaration.
         */
        UmdReflectionHost.prototype.findUmdImportParameter = function (id) {
            var symbol = id && this.checker.getSymbolAtLocation(id) || null;
            var declaration = symbol && symbol.valueDeclaration;
            return declaration && ts.isParameter(declaration) ? declaration : null;
        };
        UmdReflectionHost.prototype.getUmdDeclaration = function (id) {
            var nsIdentifier = commonjs_umd_utils_1.findNamespaceOfIdentifier(id);
            if (nsIdentifier === null) {
                return null;
            }
            var moduleDeclaration = this.getUmdModuleDeclaration(nsIdentifier);
            if (moduleDeclaration === null || moduleDeclaration.node === null ||
                !ts.isSourceFile(moduleDeclaration.node)) {
                return null;
            }
            var moduleExports = this.getExportsOfModule(moduleDeclaration.node);
            if (moduleExports === null) {
                return null;
            }
            // We need to compute the `viaModule` because  the `getExportsOfModule()` call
            // did not know that we were importing the declaration.
            var declaration = moduleExports.get(id.text);
            if (!moduleExports.has(id.text)) {
                return null;
            }
            // We need to compute the `viaModule` because  the `getExportsOfModule()` call
            // did not know that we were importing the declaration.
            var viaModule = declaration.viaModule === null ? moduleDeclaration.viaModule : declaration.viaModule;
            return tslib_1.__assign(tslib_1.__assign({}, declaration), { viaModule: viaModule, known: utils_1.getTsHelperFnFromIdentifier(id) });
        };
        UmdReflectionHost.prototype.getUmdModuleDeclaration = function (id) {
            var importPath = this.getImportPathFromParameter(id) || this.getImportPathFromRequireCall(id);
            if (importPath === null) {
                return null;
            }
            var module = this.resolveModuleName(importPath, id.getSourceFile());
            if (module === undefined) {
                return null;
            }
            var viaModule = commonjs_umd_utils_1.isExternalImport(importPath) ? importPath : null;
            return { node: module, viaModule: viaModule, known: null, identity: null };
        };
        UmdReflectionHost.prototype.getImportPathFromParameter = function (id) {
            var importParameter = this.findUmdImportParameter(id);
            if (importParameter === null) {
                return null;
            }
            return this.getUmdImportPath(importParameter);
        };
        UmdReflectionHost.prototype.getImportPathFromRequireCall = function (id) {
            var requireCall = commonjs_umd_utils_1.findRequireCallReference(id, this.checker);
            if (requireCall === null) {
                return null;
            }
            return requireCall.arguments[0].text;
        };
        UmdReflectionHost.prototype.resolveModuleName = function (moduleName, containingFile) {
            if (this.compilerHost.resolveModuleNames) {
                var moduleInfo = this.compilerHost.resolveModuleNames([moduleName], containingFile.fileName, undefined, undefined, this.program.getCompilerOptions())[0];
                return moduleInfo && this.program.getSourceFile(file_system_1.absoluteFrom(moduleInfo.resolvedFileName));
            }
            else {
                var moduleInfo = ts.resolveModuleName(moduleName, containingFile.fileName, this.program.getCompilerOptions(), this.compilerHost);
                return moduleInfo.resolvedModule &&
                    this.program.getSourceFile(file_system_1.absoluteFrom(moduleInfo.resolvedModule.resolvedFileName));
            }
        };
        return UmdReflectionHost;
    }(esm5_host_1.Esm5ReflectionHost));
    exports.UmdReflectionHost = UmdReflectionHost;
    function parseStatementForUmdModule(statement) {
        var wrapperCall = getUmdWrapperCall(statement);
        if (!wrapperCall)
            return null;
        var wrapperFn = wrapperCall.expression;
        if (!ts.isFunctionExpression(wrapperFn))
            return null;
        var factoryFnParamIndex = wrapperFn.parameters.findIndex(function (parameter) { return ts.isIdentifier(parameter.name) && parameter.name.text === 'factory'; });
        if (factoryFnParamIndex === -1)
            return null;
        var factoryFn = utils_2.stripParentheses(wrapperCall.arguments[factoryFnParamIndex]);
        if (!factoryFn || !ts.isFunctionExpression(factoryFn))
            return null;
        return { wrapperFn: wrapperFn, factoryFn: factoryFn };
    }
    exports.parseStatementForUmdModule = parseStatementForUmdModule;
    function getUmdWrapperCall(statement) {
        if (!ts.isExpressionStatement(statement) || !ts.isParenthesizedExpression(statement.expression) ||
            !ts.isCallExpression(statement.expression.expression) ||
            !ts.isFunctionExpression(statement.expression.expression.expression)) {
            return null;
        }
        return statement.expression.expression;
    }
    function getImportsOfUmdModule(umdModule) {
        var imports = [];
        for (var i = 1; i < umdModule.factoryFn.parameters.length; i++) {
            imports.push({
                parameter: umdModule.factoryFn.parameters[i],
                path: getRequiredModulePath(umdModule.wrapperFn, i)
            });
        }
        return imports;
    }
    exports.getImportsOfUmdModule = getImportsOfUmdModule;
    function getRequiredModulePath(wrapperFn, paramIndex) {
        var statement = wrapperFn.body.statements[0];
        if (!ts.isExpressionStatement(statement)) {
            throw new Error('UMD wrapper body is not an expression statement:\n' + wrapperFn.body.getText());
        }
        var modulePaths = [];
        findModulePaths(statement.expression);
        // Since we were only interested in the `require()` calls, we miss the `exports` argument, so we
        // need to subtract 1.
        // E.g. `function(exports, dep1, dep2)` maps to `function(exports, require('path/to/dep1'),
        // require('path/to/dep2'))`
        return modulePaths[paramIndex - 1];
        // Search the statement for calls to `require('...')` and extract the string value of the first
        // argument
        function findModulePaths(node) {
            if (commonjs_umd_utils_1.isRequireCall(node)) {
                var argument = node.arguments[0];
                if (ts.isStringLiteral(argument)) {
                    modulePaths.push(argument.text);
                }
            }
            else {
                node.forEachChild(findModulePaths);
            }
        }
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidW1kX2hvc3QuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvaG9zdC91bWRfaG9zdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBRUgsK0JBQWlDO0lBRWpDLDJFQUE0RDtJQUk1RCw4REFBaUY7SUFFakYsNkZBQXdVO0lBQ3hVLDJFQUErQztJQUMvQyxtRUFBeUM7SUFFekM7UUFBdUMsNkNBQWtCO1FBVXZELDJCQUFZLE1BQWMsRUFBRSxNQUFlLEVBQUUsR0FBa0IsRUFBRSxHQUE4QjtZQUE5QixvQkFBQSxFQUFBLFVBQThCO1lBQS9GLFlBQ0Usa0JBQU0sTUFBTSxFQUFFLE1BQU0sRUFBRSxHQUFHLEVBQUUsR0FBRyxDQUFDLFNBR2hDO1lBYlMsZ0JBQVUsR0FDaEIsSUFBSSxrQkFBVSxDQUFnQyxVQUFBLEVBQUUsSUFBSSxPQUFBLEtBQUksQ0FBQyxnQkFBZ0IsQ0FBQyxFQUFFLENBQUMsRUFBekIsQ0FBeUIsQ0FBQyxDQUFDO1lBQ3pFLGdCQUFVLEdBQUcsSUFBSSxrQkFBVSxDQUNqQyxVQUFBLEVBQUUsSUFBSSxPQUFBLEtBQUksQ0FBQyx5QkFBeUIsQ0FBQyxFQUFFLENBQUMsRUFBbEMsQ0FBa0MsQ0FBQyxDQUFDO1lBQ3BDLG9CQUFjLEdBQ3BCLElBQUksa0JBQVUsQ0FBdUMsVUFBQSxLQUFLLElBQUksT0FBQSxLQUFJLENBQUMsaUJBQWlCLENBQUMsS0FBSyxDQUFDLEVBQTdCLENBQTZCLENBQUMsQ0FBQztZQU0vRixLQUFJLENBQUMsT0FBTyxHQUFHLEdBQUcsQ0FBQyxPQUFPLENBQUM7WUFDM0IsS0FBSSxDQUFDLFlBQVksR0FBRyxHQUFHLENBQUMsSUFBSSxDQUFDOztRQUMvQixDQUFDO1FBRUQsaURBQXFCLEdBQXJCLFVBQXNCLEVBQWlCO1lBQ3JDLDhFQUE4RTtZQUM5RSwwREFB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Q3BDLElBQUksa0NBQWEsQ0FBQyxJQUFJLENBQUMsRUFBRTtnQkFDdkIsSUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUMsQ0FBQztnQkFDbkMsSUFBSSxFQUFFLENBQUMsZUFBZSxDQUFDLFFBQVEsQ0FBQyxFQUFFO29CQUNoQyxXQUFXLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsQ0FBQztpQkFDakM7YUFDRjtpQkFBTTtnQkFDTCxJQUFJLENBQUMsWUFBWSxDQUFDLGVBQWUsQ0FBQyxDQUFDO2FBQ3BDO1FBQ0gsQ0FBQztJQUNILENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7YWJzb2x1dGVGcm9tfSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvZmlsZV9zeXN0ZW0nO1xuaW1wb3J0IHtEZWNsYXJhdGlvbiwgSW1wb3J0fSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvcmVmbGVjdGlvbic7XG5pbXBvcnQge0xvZ2dlcn0gZnJvbSAnLi4vbG9nZ2luZy9sb2dnZXInO1xuaW1wb3J0IHtCdW5kbGVQcm9ncmFtfSBmcm9tICcuLi9wYWNrYWdlcy9idW5kbGVfcHJvZ3JhbSc7XG5pbXBvcnQge0ZhY3RvcnlNYXAsIGdldFRzSGVscGVyRm5Gcm9tSWRlbnRpZmllciwgc3RyaXBFeHRlbnNpb259IGZyb20gJy4uL3V0aWxzJztcblxuaW1wb3J0IHtEZWZpbmVQcm9wZXJ0eVJlZXhwb3J0U3RhdGVtZW50LCBFeHBvcnREZWNsYXJhdGlvbiwgRXhwb3J0U3RhdGVtZW50LCBleHRyYWN0R2V0dGVyRm5FeHByZXNzaW9uLCBmaW5kTmFtZXNwYWNlT2ZJZGVudGlmaWVyLCBmaW5kUmVxdWlyZUNhbGxSZWZlcmVuY2UsIGlzRGVmaW5lUHJvcGVydHlSZWV4cG9ydFN0YXRlbWVudCwgaXNFeHBvcnRTdGF0ZW1lbnQsIGlzRXh0ZXJuYWxJbXBvcnQsIGlzUmVxdWlyZUNhbGwsIGlzV2lsZGNhcmRSZWV4cG9ydFN0YXRlbWVudCwgV2lsZGNhcmRSZWV4cG9ydFN0YXRlbWVudH0gZnJvbSAnLi9jb21tb25qc191bWRfdXRpbHMnO1xuaW1wb3J0IHtFc201UmVmbGVjdGlvbkhvc3R9IGZyb20gJy4vZXNtNV9ob3N0JztcbmltcG9ydCB7c3RyaXBQYXJlbnRoZXNlc30gZnJvbSAnLi91dGlscyc7XG5cbmV4cG9ydCBjbGFzcyBVbWRSZWZsZWN0aW9uSG9zdCBleHRlbmRzIEVzbTVSZWZsZWN0aW9uSG9zdCB7XG4gIHByb3RlY3RlZCB1bWRNb2R1bGVzID1cbiAgICAgIG5ldyBGYWN0b3J5TWFwPHRzLlNvdXJjZUZpbGUsIFVtZE1vZHVsZXxudWxsPihzZiA9PiB0aGlzLmNvbXB1dGVVbWRNb2R1bGUoc2YpKTtcbiAgcHJvdGVjdGVkIHVtZEV4cG9ydHMgPSBuZXcgRmFjdG9yeU1hcDx0cy5Tb3VyY2VGaWxlLCBNYXA8c3RyaW5nLCBEZWNsYXJhdGlvbj58bnVsbD4oXG4gICAgICBzZiA9PiB0aGlzLmNvbXB1dGVFeHBvcnRzT2ZVbWRNb2R1bGUoc2YpKTtcbiAgcHJvdGVjdGVkIHVtZEltcG9ydFBhdGhzID1cbiAgICAgIG5ldyBGYWN0b3J5TWFwPHRzLlBhcmFtZXRlckRlY2xhcmF0aW9uLCBzdHJpbmd8bnVsbD4ocGFyYW0gPT4gdGhpcy5jb21wdXRlSW1wb3J0UGF0aChwYXJhbSkpO1xuICBwcm90ZWN0ZWQgcHJvZ3JhbTogdHMuUHJvZ3JhbTtcbiAgcHJvdGVjdGVkIGNvbXBpbGVySG9zdDogdHMuQ29tcGlsZXJIb3N0O1xuXG4gIGNvbnN0cnVjdG9yKGxvZ2dlcjogTG9nZ2VyLCBpc0NvcmU6IGJvb2xlYW4sIHNyYzogQnVuZGxlUHJvZ3JhbSwgZHRzOiBCdW5kbGVQcm9ncmFtfG51bGwgPSBudWxsKSB7XG4gICAgc3VwZXIobG9nZ2VyLCBpc0NvcmUsIHNyYywgZHRzKTtcbiAgICB0aGlzLnByb2dyYW0gPSBzcmMucHJvZ3JhbTtcbiAgICB0aGlzLmNvbXBpbGVySG9zdCA9IHNyYy5ob3N0O1xuICB9XG5cbiAgZ2V0SW1wb3J0T2ZJZGVudGlmaWVyKGlkOiB0cy5JZGVudGlmaWVyKTogSW1wb3J0fG51bGwge1xuICAgIC8vIElzIGBpZGAgYSBuYW1lc3BhY2VkIHByb3BlcnR5IGFjY2VzcywgZS5nLiBgRGlyZWN0aXZlYCBpbiBgY29yZS5EaXJlY3RpdmVgP1xuICAgIC8vIElmIHNvIGNhcHR1cmUgdGhlIHN5bWJvbCBvZiB0aGUgbmFtZXNwYWNlLCBlLmcuIGBjb3JlYC5cbiAgICBjb25zdCBuc0lkZW50aWZpZXIgPSBmaW5kTmFtZXNwYWNlT2ZJZGVudGlmaWVyKGlkKTtcbiAgICBjb25zdCBpbXBvcnRQYXJhbWV0ZXIgPSBuc0lkZW50aWZpZXIgJiYgdGhpcy5maW5kVW1kSW1wb3J0UGFyYW1ldGVyKG5zSWRlbnRpZmllcik7XG4gICAgY29uc3QgZnJvbSA9IGltcG9ydFBhcmFtZXRlciAmJiB0aGlzLmdldFVtZEltcG9ydFBhdGgoaW1wb3J0UGFyYW1ldGVyKTtcbiAgICByZXR1cm4gZnJvbSAhPT0gbnVsbCA/IHtmcm9tLCBuYW1lOiBpZC50ZXh0fSA6IG51bGw7XG4gIH1cblxuICBnZXREZWNsYXJhdGlvbk9mSWRlbnRpZmllcihpZDogdHMuSWRlbnRpZmllcik6IERlY2xhcmF0aW9ufG51bGwge1xuICAgIHJldHVybiB0aGlzLmdldFVtZE1vZHVsZURlY2xhcmF0aW9uKGlkKSB8fCB0aGlzLmdldFVtZERlY2xhcmF0aW9uKGlkKSB8fFxuICAgICAgICBzdXBlci5nZXREZWNsYXJhdGlvbk9mSWRlbnRpZmllcihpZCk7XG4gIH1cblxuICBnZXRFeHBvcnRzT2ZNb2R1bGUobW9kdWxlOiB0cy5Ob2RlKTogTWFwPHN0cmluZywgRGVjbGFyYXRpb24+fG51bGwge1xuICAgIHJldHVybiBzdXBlci5nZXRFeHBvcnRzT2ZNb2R1bGUobW9kdWxlKSB8fCB0aGlzLnVtZEV4cG9ydHMuZ2V0KG1vZHVsZS5nZXRTb3VyY2VGaWxlKCkpO1xuICB9XG5cbiAgZ2V0VW1kTW9kdWxlKHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUpOiBVbWRNb2R1bGV8bnVsbCB7XG4gICAgaWYgKHNvdXJjZUZpbGUuaXNEZWNsYXJhdGlvbkZpbGUpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIHJldHVybiB0aGlzLnVtZE1vZHVsZXMuZ2V0KHNvdXJjZUZpbGUpO1xuICB9XG5cbiAgZ2V0VW1kSW1wb3J0UGF0aChpbXBvcnRQYXJhbWV0ZXI6IHRzLlBhcmFtZXRlckRlY2xhcmF0aW9uKTogc3RyaW5nfG51bGwge1xuICAgIHJldHVybiB0aGlzLnVtZEltcG9ydFBhdGhzLmdldChpbXBvcnRQYXJhbWV0ZXIpO1xuICB9XG5cbiAgLyoqXG4gICAqIEdldCB0aGUgdG9wIGxldmVsIHN0YXRlbWVudHMgZm9yIGEgbW9kdWxlLlxuICAgKlxuICAgKiBJbiBVTUQgbW9kdWxlcyB0aGVzZSBhcmUgdGhlIGJvZHkgb2YgdGhlIFVNRCBmYWN0b3J5IGZ1bmN0aW9uLlxuICAgKlxuICAgKiBAcGFyYW0gc291cmNlRmlsZSBUaGUgbW9kdWxlIHdob3NlIHN0YXRlbWVudHMgd2Ugd2FudC5cbiAgICogQHJldHVybnMgQW4gYXJyYXkgb2YgdG9wIGxldmVsIHN0YXRlbWVudHMgZm9yIHRoZSBnaXZlbiBtb2R1bGUuXG4gICAqL1xuICBwcm90ZWN0ZWQgZ2V0TW9kdWxlU3RhdGVtZW50cyhzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlKTogdHMuU3RhdGVtZW50W10ge1xuICAgIGNvbnN0IHVtZE1vZHVsZSA9IHRoaXMuZ2V0VW1kTW9kdWxlKHNvdXJjZUZpbGUpO1xuICAgIHJldHVybiB1bWRNb2R1bGUgIT09IG51bGwgPyBBcnJheS5mcm9tKHVtZE1vZHVsZS5mYWN0b3J5Rm4uYm9keS5zdGF0ZW1lbnRzKSA6IFtdO1xuICB9XG5cbiAgcHJpdmF0ZSBjb21wdXRlVW1kTW9kdWxlKHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUpOiBVbWRNb2R1bGV8bnVsbCB7XG4gICAgaWYgKHNvdXJjZUZpbGUuc3RhdGVtZW50cy5sZW5ndGggIT09IDEpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICBgRXhwZWN0ZWQgVU1EIG1vZHVsZSBmaWxlICgke3NvdXJjZUZpbGUuZmlsZU5hbWV9KSB0byBjb250YWluIGV4YWN0bHkgb25lIHN0YXRlbWVudCwgYCArXG4gICAgICAgICAgYGJ1dCBmb3VuZCAke3NvdXJjZUZpbGUuc3RhdGVtZW50cy5sZW5ndGh9LmApO1xuICAgIH1cblxuICAgIHJldHVybiBwYXJzZVN0YXRlbWVudEZvclVtZE1vZHVsZShzb3VyY2VGaWxlLnN0YXRlbWVudHNbMF0pO1xuICB9XG5cbiAgcHJpdmF0ZSBjb21wdXRlRXhwb3J0c09mVW1kTW9kdWxlKHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUpOiBNYXA8c3RyaW5nLCBEZWNsYXJhdGlvbj58bnVsbCB7XG4gICAgY29uc3QgbW9kdWxlTWFwID0gbmV3IE1hcDxzdHJpbmcsIERlY2xhcmF0aW9uPigpO1xuICAgIGZvciAoY29uc3Qgc3RhdGVtZW50IG9mIHRoaXMuZ2V0TW9kdWxlU3RhdGVtZW50cyhzb3VyY2VGaWxlKSkge1xuICAgICAgaWYgKGlzRXhwb3J0U3RhdGVtZW50KHN0YXRlbWVudCkpIHtcbiAgICAgICAgY29uc3QgZXhwb3J0RGVjbGFyYXRpb24gPSB0aGlzLmV4dHJhY3RCYXNpY1VtZEV4cG9ydERlY2xhcmF0aW9uKHN0YXRlbWVudCk7XG4gICAgICAgIG1vZHVsZU1hcC5zZXQoZXhwb3J0RGVjbGFyYXRpb24ubmFtZSwgZXhwb3J0RGVjbGFyYXRpb24uZGVjbGFyYXRpb24pO1xuICAgICAgfSBlbHNlIGlmIChpc1dpbGRjYXJkUmVleHBvcnRTdGF0ZW1lbnQoc3RhdGVtZW50KSkge1xuICAgICAgICBjb25zdCByZWV4cG9ydHMgPSB0aGlzLmV4dHJhY3RVbWRXaWxkY2FyZFJlZXhwb3J0cyhzdGF0ZW1lbnQsIHNvdXJjZUZpbGUpO1xuICAgICAgICBmb3IgKGNvbnN0IHJlZXhwb3J0IG9mIHJlZXhwb3J0cykge1xuICAgICAgICAgIG1vZHVsZU1hcC5zZXQocmVleHBvcnQubmFtZSwgcmVleHBvcnQuZGVjbGFyYXRpb24pO1xuICAgICAgICB9XG4gICAgICB9IGVsc2UgaWYgKGlzRGVmaW5lUHJvcGVydHlSZWV4cG9ydFN0YXRlbWVudChzdGF0ZW1lbnQpKSB7XG4gICAgICAgIGNvbnN0IGV4cG9ydERlY2xhcmF0aW9uID0gdGhpcy5leHRyYWN0VW1kRGVmaW5lUHJvcGVydHlFeHBvcnREZWNsYXJhdGlvbihzdGF0ZW1lbnQpO1xuICAgICAgICBpZiAoZXhwb3J0RGVjbGFyYXRpb24gIT09IG51bGwpIHtcbiAgICAgICAgICBtb2R1bGVNYXAuc2V0KGV4cG9ydERlY2xhcmF0aW9uLm5hbWUsIGV4cG9ydERlY2xhcmF0aW9uLmRlY2xhcmF0aW9uKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4gbW9kdWxlTWFwO1xuICB9XG5cbiAgcHJpdmF0ZSBjb21wdXRlSW1wb3J0UGF0aChwYXJhbTogdHMuUGFyYW1ldGVyRGVjbGFyYXRpb24pOiBzdHJpbmd8bnVsbCB7XG4gICAgY29uc3QgdW1kTW9kdWxlID0gdGhpcy5nZXRVbWRNb2R1bGUocGFyYW0uZ2V0U291cmNlRmlsZSgpKTtcbiAgICBpZiAodW1kTW9kdWxlID09PSBudWxsKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICBjb25zdCBpbXBvcnRzID0gZ2V0SW1wb3J0c09mVW1kTW9kdWxlKHVtZE1vZHVsZSk7XG4gICAgaWYgKGltcG9ydHMgPT09IG51bGwpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIGxldCBpbXBvcnRQYXRoOiBzdHJpbmd8bnVsbCA9IG51bGw7XG5cbiAgICBmb3IgKGNvbnN0IGkgb2YgaW1wb3J0cykge1xuICAgICAgLy8gQWRkIGFsbCBpbXBvcnRzIHRvIHRoZSBtYXAgdG8gc3BlZWQgdXAgZnV0dXJlIGxvb2sgdXBzLlxuICAgICAgdGhpcy51bWRJbXBvcnRQYXRocy5zZXQoaS5wYXJhbWV0ZXIsIGkucGF0aCk7XG4gICAgICBpZiAoaS5wYXJhbWV0ZXIgPT09IHBhcmFtKSB7XG4gICAgICAgIGltcG9ydFBhdGggPSBpLnBhdGg7XG4gICAgICB9XG4gICAgfVxuXG4gICAgcmV0dXJuIGltcG9ydFBhdGg7XG4gIH1cblxuICBwcml2YXRlIGV4dHJhY3RCYXNpY1VtZEV4cG9ydERlY2xhcmF0aW9uKHN0YXRlbWVudDogRXhwb3J0U3RhdGVtZW50KTogRXhwb3J0RGVjbGFyYXRpb24ge1xuICAgIGNvbnN0IG5hbWUgPSBzdGF0ZW1lbnQuZXhwcmVzc2lvbi5sZWZ0Lm5hbWUudGV4dDtcbiAgICBjb25zdCBleHBvcnRFeHByZXNzaW9uID0gc3RhdGVtZW50LmV4cHJlc3Npb24ucmlnaHQ7XG4gICAgcmV0dXJuIHRoaXMuZXh0cmFjdFVtZEV4cG9ydERlY2xhcmF0aW9uKG5hbWUsIGV4cG9ydEV4cHJlc3Npb24pO1xuICB9XG5cbiAgcHJpdmF0ZSBleHRyYWN0VW1kV2lsZGNhcmRSZWV4cG9ydHMoXG4gICAgICBzdGF0ZW1lbnQ6IFdpbGRjYXJkUmVleHBvcnRTdGF0ZW1lbnQsIGNvbnRhaW5pbmdGaWxlOiB0cy5Tb3VyY2VGaWxlKTogRXhwb3J0RGVjbGFyYXRpb25bXSB7XG4gICAgY29uc3QgcmVleHBvcnRBcmcgPSBzdGF0ZW1lbnQuZXhwcmVzc2lvbi5hcmd1bWVudHNbMF07XG5cbiAgICBjb25zdCByZXF1aXJlQ2FsbCA9IGlzUmVxdWlyZUNhbGwocmVleHBvcnRBcmcpID9cbiAgICAgICAgcmVleHBvcnRBcmcgOlxuICAgICAgICB0cy5pc0lkZW50aWZpZXIocmVleHBvcnRBcmcpID8gZmluZFJlcXVpcmVDYWxsUmVmZXJlbmNlKHJlZXhwb3J0QXJnLCB0aGlzLmNoZWNrZXIpIDogbnVsbDtcblxuICAgIGxldCBpbXBvcnRQYXRoOiBzdHJpbmd8bnVsbCA9IG51bGw7XG5cbiAgICBpZiAocmVxdWlyZUNhbGwgIT09IG51bGwpIHtcbiAgICAgIGltcG9ydFBhdGggPSByZXF1aXJlQ2FsbC5hcmd1bWVudHNbMF0udGV4dDtcbiAgICB9IGVsc2UgaWYgKHRzLmlzSWRlbnRpZmllcihyZWV4cG9ydEFyZykpIHtcbiAgICAgIGNvbnN0IGltcG9ydFBhcmFtZXRlciA9IHRoaXMuZmluZFVtZEltcG9ydFBhcmFtZXRlcihyZWV4cG9ydEFyZyk7XG4gICAgICBpbXBvcnRQYXRoID0gaW1wb3J0UGFyYW1ldGVyICYmIHRoaXMuZ2V0VW1kSW1wb3J0UGF0aChpbXBvcnRQYXJhbWV0ZXIpO1xuICAgIH1cblxuICAgIGlmIChpbXBvcnRQYXRoID09PSBudWxsKSB7XG4gICAgICByZXR1cm4gW107XG4gICAgfVxuXG4gICAgY29uc3QgaW1wb3J0ZWRGaWxlID0gdGhpcy5yZXNvbHZlTW9kdWxlTmFtZShpbXBvcnRQYXRoLCBjb250YWluaW5nRmlsZSk7XG4gICAgaWYgKGltcG9ydGVkRmlsZSA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICByZXR1cm4gW107XG4gICAgfVxuXG4gICAgY29uc3QgaW1wb3J0ZWRFeHBvcnRzID0gdGhpcy5nZXRFeHBvcnRzT2ZNb2R1bGUoaW1wb3J0ZWRGaWxlKTtcbiAgICBpZiAoaW1wb3J0ZWRFeHBvcnRzID09PSBudWxsKSB7XG4gICAgICByZXR1cm4gW107XG4gICAgfVxuXG4gICAgY29uc3QgdmlhTW9kdWxlID0gc3RyaXBFeHRlbnNpb24oaW1wb3J0ZWRGaWxlLmZpbGVOYW1lKTtcbiAgICBjb25zdCByZWV4cG9ydHM6IEV4cG9ydERlY2xhcmF0aW9uW10gPSBbXTtcbiAgICBpbXBvcnRlZEV4cG9ydHMuZm9yRWFjaCgoZGVjbCwgbmFtZSkgPT4ge1xuICAgICAgaWYgKGRlY2wubm9kZSAhPT0gbnVsbCkge1xuICAgICAgICByZWV4cG9ydHMucHVzaCh7XG4gICAgICAgICAgbmFtZSxcbiAgICAgICAgICBkZWNsYXJhdGlvbjoge25vZGU6IGRlY2wubm9kZSwga25vd246IG51bGwsIHZpYU1vZHVsZSwgaWRlbnRpdHk6IGRlY2wuaWRlbnRpdHl9XG4gICAgICAgIH0pO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgcmVleHBvcnRzLnB1c2goXG4gICAgICAgICAgICB7bmFtZSwgZGVjbGFyYXRpb246IHtub2RlOiBudWxsLCBrbm93bjogbnVsbCwgZXhwcmVzc2lvbjogZGVjbC5leHByZXNzaW9uLCB2aWFNb2R1bGV9fSk7XG4gICAgICB9XG4gICAgfSk7XG4gICAgcmV0dXJuIHJlZXhwb3J0cztcbiAgfVxuXG4gIHByaXZhdGUgZXh0cmFjdFVtZERlZmluZVByb3BlcnR5RXhwb3J0RGVjbGFyYXRpb24oc3RhdGVtZW50OiBEZWZpbmVQcm9wZXJ0eVJlZXhwb3J0U3RhdGVtZW50KTpcbiAgICAgIEV4cG9ydERlY2xhcmF0aW9ufG51bGwge1xuICAgIGNvbnN0IGFyZ3MgPSBzdGF0ZW1lbnQuZXhwcmVzc2lvbi5hcmd1bWVudHM7XG4gICAgY29uc3QgbmFtZSA9IGFyZ3NbMV0udGV4dDtcbiAgICBjb25zdCBnZXR0ZXJGbkV4cHJlc3Npb24gPSBleHRyYWN0R2V0dGVyRm5FeHByZXNzaW9uKHN0YXRlbWVudCk7XG4gICAgaWYgKGdldHRlckZuRXhwcmVzc2lvbiA9PT0gbnVsbCkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLmV4dHJhY3RVbWRFeHBvcnREZWNsYXJhdGlvbihuYW1lLCBnZXR0ZXJGbkV4cHJlc3Npb24pO1xuICB9XG5cbiAgcHJpdmF0ZSBleHRyYWN0VW1kRXhwb3J0RGVjbGFyYXRpb24obmFtZTogc3RyaW5nLCBleHByZXNzaW9uOiB0cy5FeHByZXNzaW9uKTogRXhwb3J0RGVjbGFyYXRpb24ge1xuICAgIGNvbnN0IGRlY2xhcmF0aW9uID0gdGhpcy5nZXREZWNsYXJhdGlvbk9mRXhwcmVzc2lvbihleHByZXNzaW9uKTtcbiAgICBpZiAoZGVjbGFyYXRpb24gIT09IG51bGwpIHtcbiAgICAgIHJldHVybiB7bmFtZSwgZGVjbGFyYXRpb259O1xuICAgIH1cbiAgICByZXR1cm4ge1xuICAgICAgbmFtZSxcbiAgICAgIGRlY2xhcmF0aW9uOiB7bm9kZTogbnVsbCwga25vd246IG51bGwsIGV4cHJlc3Npb24sIHZpYU1vZHVsZTogbnVsbH0sXG4gICAgfTtcbiAgfVxuXG4gIC8qKlxuICAgKiBJcyB0aGUgaWRlbnRpZmllciBhIHBhcmFtZXRlciBvbiBhIFVNRCBmYWN0b3J5IGZ1bmN0aW9uLCBlLmcuIGBmdW5jdGlvbiBmYWN0b3J5KHRoaXMsIGNvcmUpYD9cbiAgICogSWYgc28gdGhlbiByZXR1cm4gaXRzIGRlY2xhcmF0aW9uLlxuICAgKi9cbiAgcHJpdmF0ZSBmaW5kVW1kSW1wb3J0UGFyYW1ldGVyKGlkOiB0cy5JZGVudGlmaWVyKTogdHMuUGFyYW1ldGVyRGVjbGFyYXRpb258bnVsbCB7XG4gICAgY29uc3Qgc3ltYm9sID0gaWQgJiYgdGhpcy5jaGVja2VyLmdldFN5bWJvbEF0TG9jYXRpb24oaWQpIHx8IG51bGw7XG4gICAgY29uc3QgZGVjbGFyYXRpb24gPSBzeW1ib2wgJiYgc3ltYm9sLnZhbHVlRGVjbGFyYXRpb247XG4gICAgcmV0dXJuIGRlY2xhcmF0aW9uICYmIHRzLmlzUGFyYW1ldGVyKGRlY2xhcmF0aW9uKSA/IGRlY2xhcmF0aW9uIDogbnVsbDtcbiAgfVxuXG4gIHByaXZhdGUgZ2V0VW1kRGVjbGFyYXRpb24oaWQ6IHRzLklkZW50aWZpZXIpOiBEZWNsYXJhdGlvbnxudWxsIHtcbiAgICBjb25zdCBuc0lkZW50aWZpZXIgPSBmaW5kTmFtZXNwYWNlT2ZJZGVudGlmaWVyKGlkKTtcbiAgICBpZiAobnNJZGVudGlmaWVyID09PSBudWxsKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gICAgY29uc3QgbW9kdWxlRGVjbGFyYXRpb24gPSB0aGlzLmdldFVtZE1vZHVsZURlY2xhcmF0aW9uKG5zSWRlbnRpZmllcik7XG4gICAgaWYgKG1vZHVsZURlY2xhcmF0aW9uID09PSBudWxsIHx8IG1vZHVsZURlY2xhcmF0aW9uLm5vZGUgPT09IG51bGwgfHxcbiAgICAgICAgIXRzLmlzU291cmNlRmlsZShtb2R1bGVEZWNsYXJhdGlvbi5ub2RlKSkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuXG4gICAgY29uc3QgbW9kdWxlRXhwb3J0cyA9IHRoaXMuZ2V0RXhwb3J0c09mTW9kdWxlKG1vZHVsZURlY2xhcmF0aW9uLm5vZGUpO1xuICAgIGlmIChtb2R1bGVFeHBvcnRzID09PSBudWxsKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICAvLyBXZSBuZWVkIHRvIGNvbXB1dGUgdGhlIGB2aWFNb2R1bGVgIGJlY2F1c2UgIHRoZSBgZ2V0RXhwb3J0c09mTW9kdWxlKClgIGNhbGxcbiAgICAvLyBkaWQgbm90IGtub3cgdGhhdCB3ZSB3ZXJlIGltcG9ydGluZyB0aGUgZGVjbGFyYXRpb24uXG4gICAgY29uc3QgZGVjbGFyYXRpb24gPSBtb2R1bGVFeHBvcnRzLmdldChpZC50ZXh0KSE7XG5cbiAgICBpZiAoIW1vZHVsZUV4cG9ydHMuaGFzKGlkLnRleHQpKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICAvLyBXZSBuZWVkIHRvIGNvbXB1dGUgdGhlIGB2aWFNb2R1bGVgIGJlY2F1c2UgIHRoZSBgZ2V0RXhwb3J0c09mTW9kdWxlKClgIGNhbGxcbiAgICAvLyBkaWQgbm90IGtub3cgdGhhdCB3ZSB3ZXJlIGltcG9ydGluZyB0aGUgZGVjbGFyYXRpb24uXG4gICAgY29uc3QgdmlhTW9kdWxlID1cbiAgICAgICAgZGVjbGFyYXRpb24udmlhTW9kdWxlID09PSBudWxsID8gbW9kdWxlRGVjbGFyYXRpb24udmlhTW9kdWxlIDogZGVjbGFyYXRpb24udmlhTW9kdWxlO1xuXG4gICAgcmV0dXJuIHsuLi5kZWNsYXJhdGlvbiwgdmlhTW9kdWxlLCBrbm93bjogZ2V0VHNIZWxwZXJGbkZyb21JZGVudGlmaWVyKGlkKX07XG4gIH1cblxuICBwcml2YXRlIGdldFVtZE1vZHVsZURlY2xhcmF0aW9uKGlkOiB0cy5JZGVudGlmaWVyKTogRGVjbGFyYXRpb258bnVsbCB7XG4gICAgY29uc3QgaW1wb3J0UGF0aCA9IHRoaXMuZ2V0SW1wb3J0UGF0aEZyb21QYXJhbWV0ZXIoaWQpIHx8IHRoaXMuZ2V0SW1wb3J0UGF0aEZyb21SZXF1aXJlQ2FsbChpZCk7XG4gICAgaWYgKGltcG9ydFBhdGggPT09IG51bGwpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIGNvbnN0IG1vZHVsZSA9IHRoaXMucmVzb2x2ZU1vZHVsZU5hbWUoaW1wb3J0UGF0aCwgaWQuZ2V0U291cmNlRmlsZSgpKTtcbiAgICBpZiAobW9kdWxlID09PSB1bmRlZmluZWQpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIGNvbnN0IHZpYU1vZHVsZSA9IGlzRXh0ZXJuYWxJbXBvcnQoaW1wb3J0UGF0aCkgPyBpbXBvcnRQYXRoIDogbnVsbDtcbiAgICByZXR1cm4ge25vZGU6IG1vZHVsZSwgdmlhTW9kdWxlLCBrbm93bjogbnVsbCwgaWRlbnRpdHk6IG51bGx9O1xuICB9XG5cbiAgcHJpdmF0ZSBnZXRJbXBvcnRQYXRoRnJvbVBhcmFtZXRlcihpZDogdHMuSWRlbnRpZmllcik6IHN0cmluZ3xudWxsIHtcbiAgICBjb25zdCBpbXBvcnRQYXJhbWV0ZXIgPSB0aGlzLmZpbmRVbWRJbXBvcnRQYXJhbWV0ZXIoaWQpO1xuICAgIGlmIChpbXBvcnRQYXJhbWV0ZXIgPT09IG51bGwpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5nZXRVbWRJbXBvcnRQYXRoKGltcG9ydFBhcmFtZXRlcik7XG4gIH1cblxuICBwcml2YXRlIGdldEltcG9ydFBhdGhGcm9tUmVxdWlyZUNhbGwoaWQ6IHRzLklkZW50aWZpZXIpOiBzdHJpbmd8bnVsbCB7XG4gICAgY29uc3QgcmVxdWlyZUNhbGwgPSBmaW5kUmVxdWlyZUNhbGxSZWZlcmVuY2UoaWQsIHRoaXMuY2hlY2tlcik7XG4gICAgaWYgKHJlcXVpcmVDYWxsID09PSBudWxsKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gICAgcmV0dXJuIHJlcXVpcmVDYWxsLmFyZ3VtZW50c1swXS50ZXh0O1xuICB9XG5cbiAgcHJpdmF0ZSByZXNvbHZlTW9kdWxlTmFtZShtb2R1bGVOYW1lOiBzdHJpbmcsIGNvbnRhaW5pbmdGaWxlOiB0cy5Tb3VyY2VGaWxlKTogdHMuU291cmNlRmlsZVxuICAgICAgfHVuZGVmaW5lZCB7XG4gICAgaWYgKHRoaXMuY29tcGlsZXJIb3N0LnJlc29sdmVNb2R1bGVOYW1lcykge1xuICAgICAgY29uc3QgbW9kdWxlSW5mbyA9IHRoaXMuY29tcGlsZXJIb3N0LnJlc29sdmVNb2R1bGVOYW1lcyhcbiAgICAgICAgICBbbW9kdWxlTmFtZV0sIGNvbnRhaW5pbmdGaWxlLmZpbGVOYW1lLCB1bmRlZmluZWQsIHVuZGVmaW5lZCxcbiAgICAgICAgICB0aGlzLnByb2dyYW0uZ2V0Q29tcGlsZXJPcHRpb25zKCkpWzBdO1xuICAgICAgcmV0dXJuIG1vZHVsZUluZm8gJiYgdGhpcy5wcm9ncmFtLmdldFNvdXJjZUZpbGUoYWJzb2x1dGVGcm9tKG1vZHVsZUluZm8ucmVzb2x2ZWRGaWxlTmFtZSkpO1xuICAgIH0gZWxzZSB7XG4gICAgICBjb25zdCBtb2R1bGVJbmZvID0gdHMucmVzb2x2ZU1vZHVsZU5hbWUoXG4gICAgICAgICAgbW9kdWxlTmFtZSwgY29udGFpbmluZ0ZpbGUuZmlsZU5hbWUsIHRoaXMucHJvZ3JhbS5nZXRDb21waWxlck9wdGlvbnMoKSxcbiAgICAgICAgICB0aGlzLmNvbXBpbGVySG9zdCk7XG4gICAgICByZXR1cm4gbW9kdWxlSW5mby5yZXNvbHZlZE1vZHVsZSAmJlxuICAgICAgICAgIHRoaXMucHJvZ3JhbS5nZXRTb3VyY2VGaWxlKGFic29sdXRlRnJvbShtb2R1bGVJbmZvLnJlc29sdmVkTW9kdWxlLnJlc29sdmVkRmlsZU5hbWUpKTtcbiAgICB9XG4gIH1cbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHBhcnNlU3RhdGVtZW50Rm9yVW1kTW9kdWxlKHN0YXRlbWVudDogdHMuU3RhdGVtZW50KTogVW1kTW9kdWxlfG51bGwge1xuICBjb25zdCB3cmFwcGVyQ2FsbCA9IGdldFVtZFdyYXBwZXJDYWxsKHN0YXRlbWVudCk7XG4gIGlmICghd3JhcHBlckNhbGwpIHJldHVybiBudWxsO1xuXG4gIGNvbnN0IHdyYXBwZXJGbiA9IHdyYXBwZXJDYWxsLmV4cHJlc3Npb247XG4gIGlmICghdHMuaXNGdW5jdGlvbkV4cHJlc3Npb24od3JhcHBlckZuKSkgcmV0dXJuIG51bGw7XG5cbiAgY29uc3QgZmFjdG9yeUZuUGFyYW1JbmRleCA9IHdyYXBwZXJGbi5wYXJhbWV0ZXJzLmZpbmRJbmRleChcbiAgICAgIHBhcmFtZXRlciA9PiB0cy5pc0lkZW50aWZpZXIocGFyYW1ldGVyLm5hbWUpICYmIHBhcmFtZXRlci5uYW1lLnRleHQgPT09ICdmYWN0b3J5Jyk7XG4gIGlmIChmYWN0b3J5Rm5QYXJhbUluZGV4ID09PSAtMSkgcmV0dXJuIG51bGw7XG5cbiAgY29uc3QgZmFjdG9yeUZuID0gc3RyaXBQYXJlbnRoZXNlcyh3cmFwcGVyQ2FsbC5hcmd1bWVudHNbZmFjdG9yeUZuUGFyYW1JbmRleF0pO1xuICBpZiAoIWZhY3RvcnlGbiB8fCAhdHMuaXNGdW5jdGlvbkV4cHJlc3Npb24oZmFjdG9yeUZuKSkgcmV0dXJuIG51bGw7XG5cbiAgcmV0dXJuIHt3cmFwcGVyRm4sIGZhY3RvcnlGbn07XG59XG5cbmZ1bmN0aW9uIGdldFVtZFdyYXBwZXJDYWxsKHN0YXRlbWVudDogdHMuU3RhdGVtZW50KTogdHMuQ2FsbEV4cHJlc3Npb24mXG4gICAge2V4cHJlc3Npb246IHRzLkZ1bmN0aW9uRXhwcmVzc2lvbn18bnVsbCB7XG4gIGlmICghdHMuaXNFeHByZXNzaW9uU3RhdGVtZW50KHN0YXRlbWVudCkgfHwgIXRzLmlzUGFyZW50aGVzaXplZEV4cHJlc3Npb24oc3RhdGVtZW50LmV4cHJlc3Npb24pIHx8XG4gICAgICAhdHMuaXNDYWxsRXhwcmVzc2lvbihzdGF0ZW1lbnQuZXhwcmVzc2lvbi5leHByZXNzaW9uKSB8fFxuICAgICAgIXRzLmlzRnVuY3Rpb25FeHByZXNzaW9uKHN0YXRlbWVudC5leHByZXNzaW9uLmV4cHJlc3Npb24uZXhwcmVzc2lvbikpIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuICByZXR1cm4gc3RhdGVtZW50LmV4cHJlc3Npb24uZXhwcmVzc2lvbiBhcyB0cy5DYWxsRXhwcmVzc2lvbiAmIHtleHByZXNzaW9uOiB0cy5GdW5jdGlvbkV4cHJlc3Npb259O1xufVxuXG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRJbXBvcnRzT2ZVbWRNb2R1bGUodW1kTW9kdWxlOiBVbWRNb2R1bGUpOlxuICAgIHtwYXJhbWV0ZXI6IHRzLlBhcmFtZXRlckRlY2xhcmF0aW9uLCBwYXRoOiBzdHJpbmd9W10ge1xuICBjb25zdCBpbXBvcnRzOiB7cGFyYW1ldGVyOiB0cy5QYXJhbWV0ZXJEZWNsYXJhdGlvbiwgcGF0aDogc3RyaW5nfVtdID0gW107XG4gIGZvciAobGV0IGkgPSAxOyBpIDwgdW1kTW9kdWxlLmZhY3RvcnlGbi5wYXJhbWV0ZXJzLmxlbmd0aDsgaSsrKSB7XG4gICAgaW1wb3J0cy5wdXNoKHtcbiAgICAgIHBhcmFtZXRlcjogdW1kTW9kdWxlLmZhY3RvcnlGbi5wYXJhbWV0ZXJzW2ldLFxuICAgICAgcGF0aDogZ2V0UmVxdWlyZWRNb2R1bGVQYXRoKHVtZE1vZHVsZS53cmFwcGVyRm4sIGkpXG4gICAgfSk7XG4gIH1cbiAgcmV0dXJuIGltcG9ydHM7XG59XG5cbmludGVyZmFjZSBVbWRNb2R1bGUge1xuICB3cmFwcGVyRm46IHRzLkZ1bmN0aW9uRXhwcmVzc2lvbjtcbiAgZmFjdG9yeUZuOiB0cy5GdW5jdGlvbkV4cHJlc3Npb247XG59XG5cbmZ1bmN0aW9uIGdldFJlcXVpcmVkTW9kdWxlUGF0aCh3cmFwcGVyRm46IHRzLkZ1bmN0aW9uRXhwcmVzc2lvbiwgcGFyYW1JbmRleDogbnVtYmVyKTogc3RyaW5nIHtcbiAgY29uc3Qgc3RhdGVtZW50ID0gd3JhcHBlckZuLmJvZHkuc3RhdGVtZW50c1swXTtcbiAgaWYgKCF0cy5pc0V4cHJlc3Npb25TdGF0ZW1lbnQoc3RhdGVtZW50KSkge1xuICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgJ1VNRCB3cmFwcGVyIGJvZHkgaXMgbm90IGFuIGV4cHJlc3Npb24gc3RhdGVtZW50OlxcbicgKyB3cmFwcGVyRm4uYm9keS5nZXRUZXh0KCkpO1xuICB9XG4gIGNvbnN0IG1vZHVsZVBhdGhzOiBzdHJpbmdbXSA9IFtdO1xuICBmaW5kTW9kdWxlUGF0aHMoc3RhdGVtZW50LmV4cHJlc3Npb24pO1xuXG4gIC8vIFNpbmNlIHdlIHdlcmUgb25seSBpbnRlcmVzdGVkIGluIHRoZSBgcmVxdWlyZSgpYCBjYWxscywgd2UgbWlzcyB0aGUgYGV4cG9ydHNgIGFyZ3VtZW50LCBzbyB3ZVxuICAvLyBuZWVkIHRvIHN1YnRyYWN0IDEuXG4gIC8vIEUuZy4gYGZ1bmN0aW9uKGV4cG9ydHMsIGRlcDEsIGRlcDIpYCBtYXBzIHRvIGBmdW5jdGlvbihleHBvcnRzLCByZXF1aXJlKCdwYXRoL3RvL2RlcDEnKSxcbiAgLy8gcmVxdWlyZSgncGF0aC90by9kZXAyJykpYFxuICByZXR1cm4gbW9kdWxlUGF0aHNbcGFyYW1JbmRleCAtIDFdO1xuXG4gIC8vIFNlYXJjaCB0aGUgc3RhdGVtZW50IGZvciBjYWxscyB0byBgcmVxdWlyZSgnLi4uJylgIGFuZCBleHRyYWN0IHRoZSBzdHJpbmcgdmFsdWUgb2YgdGhlIGZpcnN0XG4gIC8vIGFyZ3VtZW50XG4gIGZ1bmN0aW9uIGZpbmRNb2R1bGVQYXRocyhub2RlOiB0cy5Ob2RlKSB7XG4gICAgaWYgKGlzUmVxdWlyZUNhbGwobm9kZSkpIHtcbiAgICAgIGNvbnN0IGFyZ3VtZW50ID0gbm9kZS5hcmd1bWVudHNbMF07XG4gICAgICBpZiAodHMuaXNTdHJpbmdMaXRlcmFsKGFyZ3VtZW50KSkge1xuICAgICAgICBtb2R1bGVQYXRocy5wdXNoKGFyZ3VtZW50LnRleHQpO1xuICAgICAgfVxuICAgIH0gZWxzZSB7XG4gICAgICBub2RlLmZvckVhY2hDaGlsZChmaW5kTW9kdWxlUGF0aHMpO1xuICAgIH1cbiAgfVxufVxuIl19