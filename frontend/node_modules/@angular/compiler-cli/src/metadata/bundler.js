(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/src/metadata/bundler", ["require", "exports", "tslib", "path", "typescript", "@angular/compiler-cli/src/metadata/collector", "@angular/compiler-cli/src/metadata/schema"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.CompilerHostAdapter = exports.MetadataBundler = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var path = require("path");
    var ts = require("typescript");
    var collector_1 = require("@angular/compiler-cli/src/metadata/collector");
    var schema_1 = require("@angular/compiler-cli/src/metadata/schema");
    // The character set used to produce private names.
    var PRIVATE_NAME_CHARS = 'abcdefghijklmnopqrstuvwxyz';
    var MetadataBundler = /** @class */ (function () {
        function MetadataBundler(root, importAs, host, privateSymbolPrefix) {
            this.root = root;
            this.importAs = importAs;
            this.host = host;
            this.symbolMap = new Map();
            this.metadataCache = new Map();
            this.exports = new Map();
            this.rootModule = "./" + path.basename(root);
            this.privateSymbolPrefix = (privateSymbolPrefix || '').replace(/\W/g, '_');
        }
        MetadataBundler.prototype.getMetadataBundle = function () {
            // Export the root module. This also collects the transitive closure of all values referenced by
            // the exports.
            var exportedSymbols = this.exportAll(this.rootModule);
            this.canonicalizeSymbols(exportedSymbols);
            // TODO: exports? e.g. a module re-exports a symbol from another bundle
            var metadata = this.getEntries(exportedSymbols);
            var privates = Array.from(this.symbolMap.values())
                .filter(function (s) { return s.referenced && s.isPrivate; })
                .map(function (s) { return ({
                privateName: s.privateName,
                name: s.declaration.name,
                module: s.declaration.module
            }); });
            var origins = Array.from(this.symbolMap.values())
                .filter(function (s) { return s.referenced && !s.reexport; })
                .reduce(function (p, s) {
                p[s.isPrivate ? s.privateName : s.name] = s.declaration.module;
                return p;
            }, {});
            var exports = this.getReExports(exportedSymbols);
            return {
                metadata: {
                    __symbolic: 'module',
                    version: schema_1.METADATA_VERSION,
                    exports: exports.length ? exports : undefined,
                    metadata: metadata,
                    origins: origins,
                    importAs: this.importAs
                },
                privates: privates
            };
        };
        MetadataBundler.resolveModule = function (importName, from) {
            return resolveModule(importName, from);
        };
        MetadataBundler.prototype.getMetadata = function (moduleName) {
            var result = this.metadataCache.get(moduleName);
            if (!result) {
                if (moduleName.startsWith('.')) {
                    var fullModuleName = resolveModule(moduleName, this.root);
                    result = this.host.getMetadataFor(fullModuleName, this.root);
                }
                this.metadataCache.set(moduleName, result);
            }
            return result;
        };
        MetadataBundler.prototype.exportAll = function (moduleName) {
            var e_1, _a, e_2, _b, e_3, _c;
            var _this = this;
            var module = this.getMetadata(moduleName);
            var result = this.exports.get(moduleName);
            if (result) {
                return result;
            }
            result = [];
            var exportSymbol = function (exportedSymbol, exportAs) {
                var symbol = _this.symbolOf(moduleName, exportAs);
                result.push(symbol);
                exportedSymbol.reexportedAs = symbol;
                symbol.exports = exportedSymbol;
            };
            // Export all the symbols defined in this module.
            if (module && module.metadata) {
                for (var key in module.metadata) {
                    var data = module.metadata[key];
                    if (schema_1.isMetadataImportedSymbolReferenceExpression(data)) {
                        // This is a re-export of an imported symbol. Record this as a re-export.
                        var exportFrom = resolveModule(data.module, moduleName);
                        this.exportAll(exportFrom);
                        var symbol = this.symbolOf(exportFrom, data.name);
                        exportSymbol(symbol, key);
                    }
                    else {
                        // Record that this symbol is exported by this module.
                        result.push(this.symbolOf(moduleName, key));
                    }
                }
            }
            // Export all the re-exports from this module
            if (module && module.exports) {
                var unnamedModuleExportsIdx = 0;
                try {
                    for (var _d = tslib_1.__values(module.exports), _e = _d.next(); !_e.done; _e = _d.next()) {
                        var exportDeclaration = _e.value;
                        var exportFrom = resolveModule(exportDeclaration.from, moduleName);
                        // Record all the exports from the module even if we don't use it directly.
                        var exportedSymbols = this.exportAll(exportFrom);
                        if (exportDeclaration.export) {
                            try {
                                // Re-export all the named exports from a module.
                                for (var _f = (e_2 = void 0, tslib_1.__values(exportDeclaration.export)), _g = _f.next(); !_g.done; _g = _f.next()) {
                                    var exportItem = _g.value;
                                    var name = typeof exportItem == 'string' ? exportItem : exportItem.name;
                                    var exportAs = typeof exportItem == 'string' ? exportItem : exportItem.as;
                                    var symbol = this.symbolOf(exportFrom, name);
                                    if (exportedSymbols && exportedSymbols.length == 1 && exportedSymbols[0].reexport &&
                                        exportedSymbols[0].name == '*') {
                                        // This is a named export from a module we have no metadata about. Record the named
                                        // export as a re-export.
                                        symbol.reexport = true;
                                    }
                                    exportSymbol(this.symbolOf(exportFrom, name), exportAs);
                                }
                            }
                            catch (e_2_1) { e_2 = { error: e_2_1 }; }
                            finally {
                                try {
                                    if (_g && !_g.done && (_b = _f.return)) _b.call(_f);
                                }
                                finally { if (e_2) throw e_2.error; }
                            }
                        }
                        else {
                            // Re-export all the symbols from the module
                            var exportedSymbols_2 = this.exportAll(exportFrom);
                            try {
                                for (var exportedSymbols_1 = (e_3 = void 0, tslib_1.__values(exportedSymbols_2)), exportedSymbols_1_1 = exportedSymbols_1.next(); !exportedSymbols_1_1.done; exportedSymbols_1_1 = exportedSymbols_1.next()) {
                                    var exportedSymbol = exportedSymbols_1_1.value;
                                    // In case the exported symbol does not have a name, we need to give it an unique
                                    // name for the current module. This is necessary because there can be multiple
                                    // unnamed re-exports in a given module.
                                    var name = exportedSymbol.name === '*' ?
                                        "unnamed_reexport_" + unnamedModuleExportsIdx++ :
                                        exportedSymbol.name;
                                    exportSymbol(exportedSymbol, name);
                                }
                            }
                            catch (e_3_1) { e_3 = { error: e_3_1 }; }
                            finally {
                                try {
                                    if (exportedSymbols_1_1 && !exportedSymbols_1_1.done && (_c = exportedSymbols_1.return)) _c.call(exportedSymbols_1);
                                }
                                finally { if (e_3) throw e_3.error; }
                            }
                        }
                    }
                }
                catch (e_1_1) { e_1 = { error: e_1_1 }; }
                finally {
                    try {
                        if (_e && !_e.done && (_a = _d.return)) _a.call(_d);
                    }
                    finally { if (e_1) throw e_1.error; }
                }
            }
            if (!module) {
                // If no metadata is found for this import then it is considered external to the
                // library and should be recorded as a re-export in the final metadata if it is
                // eventually re-exported.
                var symbol = this.symbolOf(moduleName, '*');
                symbol.reexport = true;
                result.push(symbol);
            }
            this.exports.set(moduleName, result);
            return result;
        };
        /**
         * Fill in the canonicalSymbol which is the symbol that should be imported by factories.
         * The canonical symbol is the one exported by the index file for the bundle or definition
         * symbol for private symbols that are not exported by bundle index.
         */
        MetadataBundler.prototype.canonicalizeSymbols = function (exportedSymbols) {
            var symbols = Array.from(this.symbolMap.values());
            this.exported = new Set(exportedSymbols);
            symbols.forEach(this.canonicalizeSymbol, this);
        };
        MetadataBundler.prototype.canonicalizeSymbol = function (symbol) {
            var rootExport = getRootExport(symbol);
            var declaration = getSymbolDeclaration(symbol);
            var isPrivate = !this.exported.has(rootExport);
            var canonicalSymbol = isPrivate ? declaration : rootExport;
            symbol.isPrivate = isPrivate;
            symbol.declaration = declaration;
            symbol.canonicalSymbol = canonicalSymbol;
            symbol.reexport = declaration.reexport;
        };
        MetadataBundler.prototype.getEntries = function (exportedSymbols) {
            var _this = this;
            var result = {};
            var exportedNames = new Set(exportedSymbols.map(function (s) { return s.name; }));
            var privateName = 0;
            function newPrivateName(prefix) {
                while (true) {
                    var digits = [];
                    var index = privateName++;
                    var base = PRIVATE_NAME_CHARS;
                    while (!digits.length || index > 0) {
                        digits.unshift(base[index % base.length]);
                        index = Math.floor(index / base.length);
                    }
                    var result_1 = "\u0275" + prefix + digits.join('');
                    if (!exportedNames.has(result_1))
                        return result_1;
                }
            }
            exportedSymbols.forEach(function (symbol) { return _this.convertSymbol(symbol); });
            var symbolsMap = new Map();
            Array.from(this.symbolMap.values()).forEach(function (symbol) {
                if (symbol.referenced && !symbol.reexport) {
                    var name = symbol.name;
                    var identifier = symbol.declaration.module + ":" + symbol.declaration.name;
                    if (symbol.isPrivate && !symbol.privateName) {
                        name = newPrivateName(_this.privateSymbolPrefix);
                        symbol.privateName = name;
                    }
                    if (symbolsMap.has(identifier)) {
                        var names = symbolsMap.get(identifier);
                        names.push(name);
                    }
                    else {
                        symbolsMap.set(identifier, [name]);
                    }
                    result[name] = symbol.value;
                }
            });
            // check for duplicated entries
            symbolsMap.forEach(function (names, identifier) {
                if (names.length > 1) {
                    var _a = tslib_1.__read(identifier.split(':'), 2), module_1 = _a[0], declaredName = _a[1];
                    // prefer the export that uses the declared name (if any)
                    var reference_1 = names.indexOf(declaredName);
                    if (reference_1 === -1) {
                        reference_1 = 0;
                    }
                    // keep one entry and replace the others by references
                    names.forEach(function (name, i) {
                        if (i !== reference_1) {
                            result[name] = { __symbolic: 'reference', name: names[reference_1] };
                        }
                    });
                }
            });
            return result;
        };
        MetadataBundler.prototype.getReExports = function (exportedSymbols) {
            var e_4, _a;
            var modules = new Map();
            var exportAlls = new Set();
            try {
                for (var exportedSymbols_3 = tslib_1.__values(exportedSymbols), exportedSymbols_3_1 = exportedSymbols_3.next(); !exportedSymbols_3_1.done; exportedSymbols_3_1 = exportedSymbols_3.next()) {
                    var symbol = exportedSymbols_3_1.value;
                    if (symbol.reexport) {
                        // symbol.declaration is guaranteed to be defined during the phase this method is called.
                        var declaration = symbol.declaration;
                        var module_2 = declaration.module;
                        if (declaration.name == '*') {
                            // Reexport all the symbols.
                            exportAlls.add(declaration.module);
                        }
                        else {
                            // Re-export the symbol as the exported name.
                            var entry = modules.get(module_2);
                            if (!entry) {
                                entry = [];
                                modules.set(module_2, entry);
                            }
                            var as = symbol.name;
                            var name = declaration.name;
                            entry.push({ name: name, as: as });
                        }
                    }
                }
            }
            catch (e_4_1) { e_4 = { error: e_4_1 }; }
            finally {
                try {
                    if (exportedSymbols_3_1 && !exportedSymbols_3_1.done && (_a = exportedSymbols_3.return)) _a.call(exportedSymbols_3);
                }
                finally { if (e_4) throw e_4.error; }
            }
            return tslib_1.__spread(Array.from(exportAlls.values()).map(function (from) { return ({ from: from }); }), Array.from(modules.entries()).map(function (_a) {
                var _b = tslib_1.__read(_a, 2), from = _b[0], exports = _b[1];
                return ({ export: exports, from: from });
            }));
        };
        MetadataBundler.prototype.convertSymbol = function (symbol) {
            // canonicalSymbol is ensured to be defined before this is called.
            var canonicalSymbol = symbol.canonicalSymbol;
            if (!canonicalSymbol.referenced) {
                canonicalSymbol.referenced = true;
                // declaration is ensured to be definded before this method is called.
                var declaration = canonicalSymbol.declaration;
                var module_3 = this.getMetadata(declaration.module);
                if (module_3) {
                    var value = module_3.metadata[declaration.name];
                    if (value && !declaration.name.startsWith('___')) {
                        canonicalSymbol.value = this.convertEntry(declaration.module, value);
                    }
                }
            }
        };
        MetadataBundler.prototype.convertEntry = function (moduleName, value) {
            if (schema_1.isClassMetadata(value)) {
                return this.convertClass(moduleName, value);
            }
            if (schema_1.isFunctionMetadata(value)) {
                return this.convertFunction(moduleName, value);
            }
            if (schema_1.isInterfaceMetadata(value)) {
                return value;
            }
            return this.convertValue(moduleName, value);
        };
        MetadataBundler.prototype.convertClass = function (moduleName, value) {
            var _this = this;
            return {
                __symbolic: 'class',
                arity: value.arity,
                extends: this.convertExpression(moduleName, value.extends),
                decorators: value.decorators && value.decorators.map(function (d) { return _this.convertExpression(moduleName, d); }),
                members: this.convertMembers(moduleName, value.members),
                statics: value.statics && this.convertStatics(moduleName, value.statics)
            };
        };
        MetadataBundler.prototype.convertMembers = function (moduleName, members) {
            var _this = this;
            var result = {};
            for (var name in members) {
                var value = members[name];
                result[name] = value.map(function (v) { return _this.convertMember(moduleName, v); });
            }
            return result;
        };
        MetadataBundler.prototype.convertMember = function (moduleName, member) {
            var _this = this;
            var result = { __symbolic: member.__symbolic };
            result.decorators =
                member.decorators && member.decorators.map(function (d) { return _this.convertExpression(moduleName, d); });
            if (schema_1.isMethodMetadata(member)) {
                result.parameterDecorators = member.parameterDecorators &&
                    member.parameterDecorators.map(function (d) { return d && d.map(function (p) { return _this.convertExpression(moduleName, p); }); });
                if (schema_1.isConstructorMetadata(member)) {
                    if (member.parameters) {
                        result.parameters =
                            member.parameters.map(function (p) { return _this.convertExpression(moduleName, p); });
                    }
                }
            }
            return result;
        };
        MetadataBundler.prototype.convertStatics = function (moduleName, statics) {
            var result = {};
            for (var key in statics) {
                var value = statics[key];
                if (schema_1.isFunctionMetadata(value)) {
                    result[key] = this.convertFunction(moduleName, value);
                }
                else if (schema_1.isMetadataSymbolicCallExpression(value)) {
                    // Class members can also contain static members that call a function with module
                    // references. e.g. "static ɵprov = ɵɵdefineInjectable(..)". We also need to
                    // convert these module references because otherwise these resolve to non-existent files.
                    result[key] = this.convertValue(moduleName, value);
                }
                else {
                    result[key] = value;
                }
            }
            return result;
        };
        MetadataBundler.prototype.convertFunction = function (moduleName, value) {
            var _this = this;
            return {
                __symbolic: 'function',
                parameters: value.parameters,
                defaults: value.defaults && value.defaults.map(function (v) { return _this.convertValue(moduleName, v); }),
                value: this.convertValue(moduleName, value.value)
            };
        };
        MetadataBundler.prototype.convertValue = function (moduleName, value) {
            var _this = this;
            if (isPrimitive(value)) {
                return value;
            }
            if (schema_1.isMetadataError(value)) {
                return this.convertError(moduleName, value);
            }
            if (schema_1.isMetadataSymbolicExpression(value)) {
                return this.convertExpression(moduleName, value);
            }
            if (Array.isArray(value)) {
                return value.map(function (v) { return _this.convertValue(moduleName, v); });
            }
            // Otherwise it is a metadata object.
            var object = value;
            var result = {};
            for (var key in object) {
                result[key] = this.convertValue(moduleName, object[key]);
            }
            return result;
        };
        MetadataBundler.prototype.convertExpression = function (moduleName, value) {
            if (value) {
                switch (value.__symbolic) {
                    case 'error':
                        return this.convertError(moduleName, value);
                    case 'reference':
                        return this.convertReference(moduleName, value);
                    default:
                        return this.convertExpressionNode(moduleName, value);
                }
            }
            return value;
        };
        MetadataBundler.prototype.convertError = function (module, value) {
            return {
                __symbolic: 'error',
                message: value.message,
                line: value.line,
                character: value.character,
                context: value.context,
                module: module
            };
        };
        MetadataBundler.prototype.convertReference = function (moduleName, value) {
            var _this = this;
            var createReference = function (symbol) {
                var declaration = symbol.declaration;
                if (declaration.module.startsWith('.')) {
                    // Reference to a symbol defined in the module. Ensure it is converted then return a
                    // references to the final symbol.
                    _this.convertSymbol(symbol);
                    return {
                        __symbolic: 'reference',
                        get name() {
                            // Resolved lazily because private names are assigned late.
                            var canonicalSymbol = symbol.canonicalSymbol;
                            if (canonicalSymbol.isPrivate == null) {
                                throw Error('Invalid state: isPrivate was not initialized');
                            }
                            return canonicalSymbol.isPrivate ? canonicalSymbol.privateName : canonicalSymbol.name;
                        }
                    };
                }
                else {
                    // The symbol was a re-exported symbol from another module. Return a reference to the
                    // original imported symbol.
                    return { __symbolic: 'reference', name: declaration.name, module: declaration.module };
                }
            };
            if (schema_1.isMetadataGlobalReferenceExpression(value)) {
                var metadata = this.getMetadata(moduleName);
                if (metadata && metadata.metadata && metadata.metadata[value.name]) {
                    // Reference to a symbol defined in the module
                    return createReference(this.canonicalSymbolOf(moduleName, value.name));
                }
                // If a reference has arguments, the arguments need to be converted.
                if (value.arguments) {
                    return {
                        __symbolic: 'reference',
                        name: value.name,
                        arguments: value.arguments.map(function (a) { return _this.convertValue(moduleName, a); })
                    };
                }
                // Global references without arguments (such as to Math or JSON) are unmodified.
                return value;
            }
            if (schema_1.isMetadataImportedSymbolReferenceExpression(value)) {
                // References to imported symbols are separated into two, references to bundled modules and
                // references to modules external to the bundle. If the module reference is relative it is
                // assumed to be in the bundle. If it is Global it is assumed to be outside the bundle.
                // References to symbols outside the bundle are left unmodified. References to symbol inside
                // the bundle need to be converted to a bundle import reference reachable from the bundle
                // index.
                if (value.module.startsWith('.')) {
                    // Reference is to a symbol defined inside the module. Convert the reference to a reference
                    // to the canonical symbol.
                    var referencedModule = resolveModule(value.module, moduleName);
                    var referencedName = value.name;
                    return createReference(this.canonicalSymbolOf(referencedModule, referencedName));
                }
                // Value is a reference to a symbol defined outside the module.
                if (value.arguments) {
                    // If a reference has arguments the arguments need to be converted.
                    return {
                        __symbolic: 'reference',
                        name: value.name,
                        module: value.module,
                        arguments: value.arguments.map(function (a) { return _this.convertValue(moduleName, a); })
                    };
                }
                return value;
            }
            if (schema_1.isMetadataModuleReferenceExpression(value)) {
                // Cannot support references to bundled modules as the internal modules of a bundle are erased
                // by the bundler.
                if (value.module.startsWith('.')) {
                    return {
                        __symbolic: 'error',
                        message: 'Unsupported bundled module reference',
                        context: { module: value.module }
                    };
                }
                // References to unbundled modules are unmodified.
                return value;
            }
        };
        MetadataBundler.prototype.convertExpressionNode = function (moduleName, value) {
            var result = { __symbolic: value.__symbolic };
            for (var key in value) {
                result[key] = this.convertValue(moduleName, value[key]);
            }
            return result;
        };
        MetadataBundler.prototype.symbolOf = function (module, name) {
            var symbolKey = module + ":" + name;
            var symbol = this.symbolMap.get(symbolKey);
            if (!symbol) {
                symbol = { module: module, name: name };
                this.symbolMap.set(symbolKey, symbol);
            }
            return symbol;
        };
        MetadataBundler.prototype.canonicalSymbolOf = function (module, name) {
            // Ensure the module has been seen.
            this.exportAll(module);
            var symbol = this.symbolOf(module, name);
            if (!symbol.canonicalSymbol) {
                this.canonicalizeSymbol(symbol);
            }
            return symbol;
        };
        return MetadataBundler;
    }());
    exports.MetadataBundler = MetadataBundler;
    var CompilerHostAdapter = /** @class */ (function () {
        function CompilerHostAdapter(host, cache, options) {
            this.host = host;
            this.cache = cache;
            this.options = options;
            this.collector = new collector_1.MetadataCollector();
        }
        CompilerHostAdapter.prototype.getMetadataFor = function (fileName, containingFile) {
            var resolvedModule = ts.resolveModuleName(fileName, containingFile, this.options, this.host).resolvedModule;
            var sourceFile;
            if (resolvedModule) {
                var resolvedFileName = resolvedModule.resolvedFileName;
                if (resolvedModule.extension !== '.ts') {
                    resolvedFileName = resolvedFileName.replace(/(\.d\.ts|\.js)$/, '.ts');
                }
                sourceFile = this.host.getSourceFile(resolvedFileName, ts.ScriptTarget.Latest);
            }
            else {
                // If typescript is unable to resolve the file, fallback on old behavior
                if (!this.host.fileExists(fileName + '.ts'))
                    return undefined;
                sourceFile = this.host.getSourceFile(fileName + '.ts', ts.ScriptTarget.Latest);
            }
            // If there is a metadata cache, use it to get the metadata for this source file. Otherwise,
            // fall back on the locally created MetadataCollector.
            if (!sourceFile) {
                return undefined;
            }
            else if (this.cache) {
                return this.cache.getMetadata(sourceFile);
            }
            else {
                return this.collector.getMetadata(sourceFile);
            }
        };
        return CompilerHostAdapter;
    }());
    exports.CompilerHostAdapter = CompilerHostAdapter;
    function resolveModule(importName, from) {
        if (importName.startsWith('.') && from) {
            var normalPath = path.normalize(path.join(path.dirname(from), importName));
            if (!normalPath.startsWith('.') && from.startsWith('.')) {
                // path.normalize() preserves leading '../' but not './'. This adds it back.
                normalPath = "." + path.sep + normalPath;
            }
            // Replace windows path delimiters with forward-slashes. Otherwise the paths are not
            // TypeScript compatible when building the bundle.
            return normalPath.replace(/\\/g, '/');
        }
        return importName;
    }
    function isPrimitive(o) {
        return o === null || (typeof o !== 'function' && typeof o !== 'object');
    }
    function getRootExport(symbol) {
        return symbol.reexportedAs ? getRootExport(symbol.reexportedAs) : symbol;
    }
    function getSymbolDeclaration(symbol) {
        return symbol.exports ? getSymbolDeclaration(symbol.exports) : symbol;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYnVuZGxlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbWV0YWRhdGEvYnVuZGxlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7O0lBQUE7Ozs7OztPQU1HO0lBQ0gsMkJBQTZCO0lBQzdCLCtCQUFpQztJQUlqQywwRUFBOEM7SUFDOUMsb0VBQTRsQjtJQUk1bEIsbURBQW1EO0lBQ25ELElBQU0sa0JBQWtCLEdBQUcsNEJBQTRCLENBQUM7SUFrRXhEO1FBU0UseUJBQ1ksSUFBWSxFQUFVLFFBQTBCLEVBQVUsSUFBeUIsRUFDM0YsbUJBQTRCO1lBRHBCLFNBQUksR0FBSixJQUFJLENBQVE7WUFBVSxhQUFRLEdBQVIsUUFBUSxDQUFrQjtZQUFVLFNBQUksR0FBSixJQUFJLENBQXFCO1lBVHZGLGNBQVMsR0FBRyxJQUFJLEdBQUcsRUFBa0IsQ0FBQztZQUN0QyxrQkFBYSxHQUFHLElBQUksR0FBRyxFQUFvQyxDQUFDO1lBQzVELFlBQU8sR0FBRyxJQUFJLEdBQUcsRUFBb0IsQ0FBQztZQVM1QyxJQUFJLENBQUMsVUFBVSxHQUFHLE9BQUssSUFBSSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUcsQ0FBQztZQUM3QyxJQUFJLENBQUMsbUJBQW1CLEdBQUcsQ0FBQyxtQkFBbUIsSUFBSSxFQUFFLENBQUMsQ0FBQyxPQUFPLENBQUMsS0FBSyxFQUFFLEdBQUcsQ0FBQyxDQUFDO1FBQzdFLENBQUM7UUFFRCwyQ0FBaUIsR0FBakI7WUFDRSxnR0FBZ0c7WUFDaEcsZUFBZTtZQUNmLElBQU0sZUFBZSxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxDQUFDO1lBQ3hELElBQUksQ0FBQyxtQkFBbUIsQ0FBQyxlQUFlLENBQUMsQ0FBQztZQUMxQyx1RUFBdUU7WUFDdkUsSUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLFVBQVUs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Q0FBQztTQUN2QztRQUNELE9BQU8sVUFBVSxDQUFDO0lBQ3BCLENBQUM7SUFFRCxTQUFTLFdBQVcsQ0FBQyxDQUFNO1FBQ3pCLE9BQU8sQ0FBQyxLQUFLLElBQUksSUFBSSxDQUFDLE9BQU8sQ0FBQyxLQUFLLFVBQVUsSUFBSSxPQUFPLENBQUMsS0FBSyxRQUFRLENBQUMsQ0FBQztJQUMxRSxDQUFDO0lBRUQsU0FBUyxhQUFhLENBQUMsTUFBYztRQUNuQyxPQUFPLE1BQU0sQ0FBQyxZQUFZLENBQUMsQ0FBQyxDQUFDLGFBQWEsQ0FBQyxNQUFNLENBQUMsWUFBWSxDQUFDLENBQUMsQ0FBQyxDQUFDLE1BQU0sQ0FBQztJQUMzRSxDQUFDO0lBRUQsU0FBUyxvQkFBb0IsQ0FBQyxNQUFjO1FBQzFDLE9BQU8sTUFBTSxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUMsb0JBQW9CLENBQUMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUM7SUFDeEUsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0ICogYXMgcGF0aCBmcm9tICdwYXRoJztcbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge01ldGFkYXRhQ2FjaGV9IGZyb20gJy4uL3RyYW5zZm9ybWVycy9tZXRhZGF0YV9jYWNoZSc7XG5cbmltcG9ydCB7TWV0YWRhdGFDb2xsZWN0b3J9IGZyb20gJy4vY29sbGVjdG9yJztcbmltcG9ydCB7Q2xhc3NNZXRhZGF0YSwgQ29uc3RydWN0b3JNZXRhZGF0YSwgRnVuY3Rpb25NZXRhZGF0YSwgaXNDbGFzc01ldGFkYXRhLCBpc0NvbnN0cnVjdG9yTWV0YWRhdGEsIGlzRnVuY3Rpb25NZXRhZGF0YSwgaXNJbnRlcmZhY2VNZXRhZGF0YSwgaXNNZXRhZGF0YUVycm9yLCBpc01ldGFkYXRhR2xvYmFsUmVmZXJlbmNlRXhwcmVzc2lvbiwgaXNNZXRhZGF0YUltcG9ydGVkU3ltYm9sUmVmZXJlbmNlRXhwcmVzc2lvbiwgaXNNZXRhZGF0YU1vZHVsZVJlZmVyZW5jZUV4cHJlc3Npb24sIGlzTWV0YWRhdGFTeW1ib2xpY0NhbGxFeHByZXNzaW9uLCBpc01ldGFkYXRhU3ltYm9saWNFeHByZXNzaW9uLCBpc01ldGhvZE1ldGFkYXRhLCBNZW1iZXJNZXRhZGF0YSwgTUVUQURBVEFfVkVSU0lPTiwgTWV0YWRhdGFFbnRyeSwgTWV0YWRhdGFFcnJvciwgTWV0YWRhdGFNYXAsIE1ldGFkYXRhT2JqZWN0LCBNZXRhZGF0YVN5bWJvbGljRXhwcmVzc2lvbiwgTWV0YWRhdGFTeW1ib2xpY1JlZmVyZW5jZUV4cHJlc3Npb24sIE1ldGFkYXRhVmFsdWUsIE1ldGhvZE1ldGFkYXRhLCBNb2R1bGVFeHBvcnRNZXRhZGF0YSwgTW9kdWxlTWV0YWRhdGF9IGZyb20gJy4vc2NoZW1hJztcblxuXG5cbi8vIFRoZSBjaGFyYWN0ZXIgc2V0IHVzZWQgdG8gcHJvZHVjZSBwcml2YXRlIG5hbWVzLlxuY29uc3QgUFJJVkFURV9OQU1FX0NIQVJTID0gJ2FiY2RlZmdoaWprbG1ub3BxcnN0dXZ3eHl6JztcblxuaW50ZXJmYWNlIFN5bWJvbCB7XG4gIG1vZHVsZTogc3RyaW5nO1xuICBuYW1lOiBzdHJpbmc7XG5cbiAgLy8gUHJvZHVjZWQgYnkgaW5kaXJlY3RseSBieSBleHBvcnRBbGwoKSBmb3Igc3ltYm9scyByZS1leHBvcnQgYW5vdGhlciBzeW1ib2wuXG4gIGV4cG9ydHM/OiBTeW1ib2w7XG5cbiAgLy8gUHJvZHVjZWQgYnkgaW5kaXJlY3RseSBieSBleHBvcnRBbGwoKSBmb3Igc3ltYm9scyBhcmUgcmUtZXhwb3J0ZWQgYnkgYW5vdGhlciBzeW1ib2wuXG4gIHJlZXhwb3J0ZWRBcz86IFN5bWJvbDtcblxuICAvLyBQcm9kdWNlZCBieSBjYW5vbmljYWxpemVTeW1ib2xzKCkgZm9yIGFsbCBzeW1ib2xzLiBBIHN5bWJvbCBpcyBwcml2YXRlIGlmIGl0IGlzIG5vdFxuICAvLyBleHBvcnRlZCBieSB0aGUgaW5kZXguXG4gIGlzUHJpdmF0ZT86IGJvb2xlYW47XG5cbiAgLy8gUHJvZHVjZWQgYnkgY2Fub25pY2FsaXplU3ltYm9scygpIGZvciBhbGwgc3ltYm9scy4gVGhpcyBpcyB0aGUgb25lIHN5bWJvbCB0aGF0XG4gIC8vIHJlc3ByZXNlbnRzIGFsbCBvdGhlciBzeW1ib2xzIGFuZCBpcyB0aGUgb25seSBzeW1ib2wgdGhhdCwgYW1vbmcgYWxsIHRoZSByZS1leHBvcnRlZFxuICAvLyBhbGlhc2VzLCB3aG9zZSBmaWVsZHMgY2FuIGJlIHRydXN0ZWQgdG8gY29udGFpbiB0aGUgY29ycmVjdCBpbmZvcm1hdGlvbi5cbiAgLy8gRm9yIHByaXZhdGUgc3ltYm9scyB0aGlzIGlzIHRoZSBkZWNsYXJhdGlvbiBzeW1ib2wuIEZvciBwdWJsaWMgc3ltYm9scyB0aGlzIGlzIHRoZVxuICAvLyBzeW1ib2wgdGhhdCBpcyBleHBvcnRlZC5cbiAgY2Fub25pY2FsU3ltYm9sPzogU3ltYm9sO1xuXG4gIC8vIFByb2R1Y2VkIGJ5IGNhbm9uaWNhbGl6ZVN5bWJvbHMoKSBmb3IgYWxsIHN5bWJvbHMuIFRoaXMgdGhlIHN5bWJvbCB0aGF0IG9yaWdpbmFsbHlcbiAgLy8gZGVjbGFyZWQgdGhlIHZhbHVlIGFuZCBzaG91bGQgYmUgdXNlZCB0byBmZXRjaCB0aGUgdmFsdWUuXG4gIGRlY2xhcmF0aW9uPzogU3ltYm9sO1xuXG4gIC8vIEEgc3ltYm9sIGlzIHJlZmVyZW5jZWQgaWYgaXQgaXMgZXhwb3J0ZWQgZnJvbSBpbmRleCBvciByZWZlcmVuY2VkIGJ5IHRoZSB2YWx1ZSBvZlxuICAvLyBhIHJlZmVyZW5jZWQgc3ltYm9sJ3MgdmFsdWUuXG4gIHJlZmVyZW5jZWQ/OiBib29sZWFuO1xuXG4gIC8vIEEgc3ltYm9sIGlzIG1hcmtlZCBhcyBhIHJlLWV4cG9ydCB0aGUgc3ltYm9sIHdhcyByZXhwb3J0ZWQgZnJvbSBhIG1vZHVsZSB0aGF0IGlzXG4gIC8vIG5vdCBwYXJ0IG9mIHRoZSBmbGF0IG1vZHVsZSBidW5kbGUuXG4gIHJlZXhwb3J0PzogYm9vbGVhbjtcblxuICAvLyBPbmx5IHZhbGlkIGZvciByZWZlcmVuY2VkIGNhbm9uaWNhbCBzeW1ib2xzLiBQcm9kdWNlcyBieSBjb252ZXJ0U3ltYm9scygpLlxuICB2YWx1ZT86IE1ldGFkYXRhRW50cnk7XG5cbiAgLy8gT25seSB2YWxpZCBmb3IgcmVmZXJlbmNlZCBwcml2YXRlIHN5bWJvbHMuIEl0IGlzIHRoZSBuYW1lIHRvIHVzZSB0byBpbXBvcnQgdGhlIHN5bWJvbCBmcm9tXG4gIC8vIHRoZSBidW5kbGUgaW5kZXguIFByb2R1Y2UgYnkgYXNzaWduUHJpdmF0ZU5hbWVzKCk7XG4gIHByaXZhdGVOYW1lPzogc3RyaW5nO1xufVxuXG5leHBvcnQgaW50ZXJmYWNlIEJ1bmRsZUVudHJpZXMge1xuICBbbmFtZTogc3RyaW5nXTogTWV0YWRhdGFFbnRyeTtcbn1cblxuZXhwb3J0IGludGVyZmFjZSBCdW5kbGVQcml2YXRlRW50cnkge1xuICBwcml2YXRlTmFtZTogc3RyaW5nO1xuICBuYW1lOiBzdHJpbmc7XG4gIG1vZHVsZTogc3RyaW5nO1xufVxuXG5leHBvcnQgaW50ZXJmYWNlIEJ1bmRsZWRNb2R1bGUge1xuICBtZXRhZGF0YTogTW9kdWxlTWV0YWRhdGE7XG4gIHByaXZhdGVzOiBCdW5kbGVQcml2YXRlRW50cnlbXTtcbn1cblxuZXhwb3J0IGludGVyZmFjZSBNZXRhZGF0YUJ1bmRsZXJIb3N0IHtcbiAgZ2V0TWV0YWRhdGFGb3IobW9kdWxlTmFtZTogc3RyaW5nLCBjb250YWluaW5nRmlsZTogc3RyaW5nKTogTW9kdWxlTWV0YWRhdGF8dW5kZWZpbmVkO1xufVxuXG50eXBlIFN0YXRpY3NNZXRhZGF0YSA9IHtcbiAgW25hbWU6IHN0cmluZ106IE1ldGFkYXRhVmFsdWV8RnVuY3Rpb25NZXRhZGF0YTtcbn07XG5cbmV4cG9ydCBjbGFzcyBNZXRhZGF0YUJ1bmRsZXIge1xuICBwcml2YXRlIHN5bWJvbE1hcCA9IG5ldyBNYXA8c3RyaW5nLCBTeW1ib2w+KCk7XG4gIHByaXZhdGUgbWV0YWRhdGFDYWNoZSA9IG5ldyBNYXA8c3RyaW5nLCBNb2R1bGVNZXRhZGF0YXx1bmRlZmluZWQ+KCk7XG4gIHByaXZhdGUgZXhwb3J0cyA9IG5ldyBNYXA8c3RyaW5nLCBTeW1ib2xbXT4oKTtcbiAgcHJpdmF0ZSByb290TW9kdWxlOiBzdHJpbmc7XG4gIHByaXZhdGUgcHJpdmF0ZVN5bWJvbFByZWZpeDogc3RyaW5nO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBleHBvcnRlZCE6IFNldDxTeW1ib2w+O1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSByb290OiBzdHJpbmcsIHByaXZhdGUgaW1wb3J0QXM6IHN0cmluZ3x1bmRlZmluZWQsIHByaXZhdGUgaG9zdDogTWV0YWRhdGFCdW5kbGVySG9zdCxcbiAgICAgIHByaXZhdGVTeW1ib2xQcmVmaXg/OiBzdHJpbmcpIHtcbiAgICB0aGlzLnJvb3RNb2R1bGUgPSBgLi8ke3BhdGguYmFzZW5hbWUocm9vdCl9YDtcbiAgICB0aGlzLnByaXZhdGVTeW1ib2xQcmVmaXggPSAocHJpdmF0ZVN5bWJvbFByZWZpeCB8fCAnJykucmVwbGFjZSgvXFxXL2csICdfJyk7XG4gIH1cblxuICBnZXRNZXRhZGF0YUJ1bmRsZSgpOiBCdW5kbGVkTW9kdWxlIHtcbiAgICAvLyBFeHBvcnQgdGhlIHJvb3QgbW9kdWxlLiBUaGlzIGFsc28gY29sbGVjdHMgdGhlIHRyYW5zaXRpdmUgY2xvc3VyZSBvZiBhbGwgdmFsdWVzIHJlZmVyZW5jZWQgYnlcbiAgICAvLyB0aGUgZXhwb3J0cy5cbiAgICBjb25zdCBleHBvcnRlZFN5bWJvbHMgPSB0aGlzLmV4cG9ydEFsbCh0aGlzLnJvb3RNb2R1bGUpO1xuICAgIHRoaXMuY2Fub25pY2FsaXplU3ltYm9scyhleHBvcnRlZFN5bWJvbHMpO1xuICAgIC8vIFRPRE86IGV4cG9ydHM/IGUuZy4gYSBtb2R1bGUgcmUtZXhwb3J0cyBhIHN5bWJvbCBmcm9tIGFub3RoZXIgYnVuZGxlXG4gICAgY29uc3QgbWV0YWRhdGEgPSB0aGlzLmdldEVudHJpZXMoZXhwb3J0ZWRTeW1ib2xzKTtcbiAgICBjb25zdCBwcml2YXRlcyA9IEFycmF5LmZyb20odGhpcy5zeW1ib2xNYXAudmFsdWVzKCkpXG4gICAgICAgICAgICAgICAgICAgICAgICAgLmZpbHRlcihzID0+IHMucmVmZXJlbmNlZCAmJiBzLmlzUHJpdmF0ZSlcbiAgICAgICAgICAgICAgICAgICAgICAgICAubWFwKHMgPT4gKHtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJpdmF0ZU5hbWU6IHMucHJpdmF0ZU5hbWUhLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBuYW1lOiBzLmRlY2xhcmF0aW9uIS5uYW1lLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtb2R1bGU6IHMuZGVjbGFyYXRpb24hLm1vZHVsZVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfSkpO1xuICAgIGNvbnN0IG9yaWdpbnMgPSBBcnJheS5mcm9tKHRoaXMuc3ltYm9sTWFwLnZhbHVlcygpKVxuICAgICAgICAgICAgICAgICAgICAgICAgLmZpbHRlcihzID0+IHMucmVmZXJlbmNlZCAmJiAhcy5yZWV4cG9ydClcbiAgICAgICAgICAgICAgICAgICAgICAgIC5yZWR1Y2U8e1tuYW1lOiBzdHJpbmddOiBzdHJpbmd9PigocCwgcykgPT4ge1xuICAgICAgICAgICAgICAgICAgICAgICAgICBwW3MuaXNQcml2YXRlID8gcy5wcml2YXRlTmFtZSEgOiBzLm5hbWVdID0gcy5kZWNsYXJhdGlvbiEubW9kdWxlO1xuICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcDtcbiAgICAgICAgICAgICAgICAgICAgICAgIH0sIHt9KTtcbiAgICBjb25zdCBleHBvcnRzID0gdGhpcy5nZXRSZUV4cG9ydHMoZXhwb3J0ZWRTeW1ib2xzKTtcbiAgICByZXR1cm4ge1xuICAgICAgbWV0YWRhdGE6IHtcbiAgICAgICAgX19zeW1ib2xpYzogJ21vZHVsZScsXG4gICAgICAgIHZlcnNpb246IE1FVEFEQVRBX1ZFUlNJT04sXG4gICAgICAgIGV4cG9ydHM6IGV4cG9ydHMubGVuZ3RoID8gZXhwb3J0cyA6IHVuZGVmaW5lZCxcbiAgICAgICAgbWV0YWRhdGEsXG4gICAgICAgIG9yaWdpbnMsXG4gICAgICAgIGltcG9ydEFzOiB0aGlzLmltcG9ydEFzIVxuICAgICAgfSxcbiAgICAgIHByaXZhdGVzXG4gICAgfTtcbiAgfVxuXG4gIHN0YXRpYyByZXNvbHZlTW9kdWxlKGltcG9ydE5hbWU6IHN0cmluZywgZnJvbTogc3RyaW5nKTogc3RyaW5nIHtcbiAgICByZXR1cm4gcmVzb2x2ZU1vZHVsZShpbXBvcnROYW1lLCBmcm9tKTtcbiAgfVxuXG4gIHByaXZhdGUgZ2V0TWV0YWRhdGEobW9kdWxlTmFtZTogc3RyaW5nKTogTW9kdWxlTWV0YWRhdGF8dW5kZWZpbmVkIHtcbiAgICBsZXQgcmVzdWx0ID0gdGhpcy5tZXRhZGF0YUNhY2hlLmdldChtb2R1bGVOYW1lKTtcbiAgICBpZiAoIXJlc3VsdCkge1xuICAgICAgaWYgKG1vZHVsZU5hbWUuc3RhcnRzV2l0aCgnLicpKSB7XG4gICAgICAgIGNvbnN0IGZ1bGxNb2R1bGVOYW1lID0gcmVzb2x2ZU1vZHVsZShtb2R1bGVOYW1lLCB0aGlzLnJvb3QpO1xuICAgICAgICByZXN1bHQgPSB0aGlzLmhvc3QuZ2V0TWV0YWRhdGFGb3IoZnVsbE1vZHVsZU5hbWUsIHRoaXMucm9vdCk7XG4gICAgICB9XG4gICAgICB0aGlzLm1ldGFkYXRhQ2FjaGUuc2V0KG1vZHVsZU5hbWUsIHJlc3VsdCk7XG4gICAgfVxuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICBwcml2YXRlIGV4cG9ydEFsbChtb2R1bGVOYW1lOiBzdHJpbmcpOiBTeW1ib2xbXSB7XG4gICAgY29uc3QgbW9kdWxlID0gdGhpcy5nZXRNZXRhZGF0YShtb2R1bGVOYW1lKTtcbiAgICBsZXQgcmVzdWx0ID0gdGhpcy5leHBvcnRzLmdldChtb2R1bGVOYW1lKTtcblxuICAgIGlmIChyZXN1bHQpIHtcbiAgICAgIHJldHVybiByZXN1bHQ7XG4gICAgfVxuXG4gICAgcmVzdWx0ID0gW107XG5cbiAgICBjb25zdCBleHBvcnRTeW1ib2wgPSAoZXhwb3J0ZWRTeW1ib2w6IFN5bWJvbCwgZXhwb3J0QXM6IHN0cmluZykgPT4ge1xuICAgICAgY29uc3Qgc3ltYm9sID0gdGhpcy5zeW1ib2xPZihtb2R1bGVOYW1lLCBleHBvcnRBcyk7XG4gICAgICByZXN1bHQhLnB1c2goc3ltYm9sKTtcbiAgICAgIGV4cG9ydGVkU3ltYm9sLnJlZXhwb3J0ZWRBcyA9IHN5bWJvbDtcbiAgICAgIHN5bWJvbC5leHBvcnRzID0gZXhwb3J0ZWRTeW1ib2w7XG4gICAgfTtcblxuICAgIC8vIEV4cG9ydCBhbGwgdGhlIHN5bWJvbHMgZGVmaW5lZCBpbiB0aGlzIG1vZHVsZS5cbiAgICBpZiAobW9kdWxlICYmIG1vZHVsZS5tZXRhZGF0YSkge1xuICAgICAgZm9yIChsZXQga2V5IGluIG1vZHVsZS5tZXRhZGF0YSkge1xuICAgICAgICBjb25zdCBkYXRhID0gbW9kdWxlLm1ldGFkYXRhW2tleV07XG4gICAgICAgIGlmIChpc01ldGFkYXRhSW1wb3J0ZWRTeW1ib2xSZWZlcmVuY2VFeHByZXNzaW9uKGRhdGEpKSB7XG4gICAgICAgICAgLy8gVGhpcyBpcyBhIHJlLWV4cG9ydCBvZiBhbiBpbXBvcnRlZCBzeW1ib2wuIFJlY29yZCB0aGlzIGFzIGEgcmUtZXhwb3J0LlxuICAgICAgICAgIGNvbnN0IGV4cG9ydEZyb20gPSByZXNvbHZlTW9kdWxlKGRhdGEubW9kdWxlLCBtb2R1bGVOYW1lKTtcbiAgICAgICAgICB0aGlzLmV4cG9ydEFsbChleHBvcnRGcm9tKTtcbiAgICAgICAgICBjb25zdCBzeW1ib2wgPSB0aGlzLnN5bWJvbE9mKGV4cG9ydEZyb20sIGRhdGEubmFtZSk7XG4gICAgICAgICAgZXhwb3J0U3ltYm9sKHN5bWJvbCwga2V5KTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAvLyBSZWNvcmQgdGhhdCB0aGlzIHN5bWJvbCBpcyBleHBvcnRlZCBieSB0aGlzIG1vZHVsZS5cbiAgICAgICAgICByZXN1bHQucHVzaCh0aGlzLnN5bWJvbE9mKG1vZHVsZU5hbWUsIGtleSkpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gRXhwb3J0IGFsbCB0aGUgcmUtZXhwb3J0cyBmcm9tIHRoaXMgbW9kdWxlXG4gICAgaWYgKG1vZHVsZSAmJiBtb2R1bGUuZXhwb3J0cykge1xuICAgICAgbGV0IHVubmFtZWRNb2R1bGVFeHBvcnRzSWR4ID0gMDtcbiAgICAgIGZvciAoY29uc3QgZXhwb3J0RGVjbGFyYXRpb24gb2YgbW9kdWxlLmV4cG9ydHMpIHtcbiAgICAgICAgY29uc3QgZXhwb3J0RnJvbSA9IHJlc29sdmVNb2R1bGUoZXhwb3J0RGVjbGFyYXRpb24uZnJvbSwgbW9kdWxlTmFtZSk7XG4gICAgICAgIC8vIFJlY29yZCBhbGwgdGhlIGV4cG9ydHMgZnJvbSB0aGUgbW9kdWxlIGV2ZW4gaWYgd2UgZG9uJ3QgdXNlIGl0IGRpcmVjdGx5LlxuICAgICAgICBjb25zdCBleHBvcnRlZFN5bWJvbHMgPSB0aGlzLmV4cG9ydEFsbChleHBvcnRGcm9tKTtcbiAgICAgICAgaWYgKGV4cG9ydERlY2xhcmF0aW9uLmV4cG9ydCkge1xuICAgICAgICAgIC8vIFJlLWV4cG9ydCBhbGwgdGhlIG5hbWVkIGV4cG9ydHMgZnJvbSBhIG1vZHVsZS5cbiAgICAgICAgICBmb3IgKGNvbnN0IGV4cG9ydEl0ZW0gb2YgZXhwb3J0RGVjbGFyYXRpb24uZXhwb3J0KSB7XG4gICAgICAgICAgICBjb25zdCBuYW1lID0gdHlwZW9mIGV4cG9ydEl0ZW0gPT0gJ3N0cmluZycgPyBleHBvcnRJdGVtIDogZXhwb3J0SXRlbS5uYW1lO1xuICAgICAgICAgICAgY29uc3QgZXhwb3J0QXMgPSB0eXBlb2YgZXhwb3J0SXRlbSA9PSAnc3RyaW5nJyA/IGV4cG9ydEl0ZW0gOiBleHBvcnRJdGVtLmFzO1xuICAgICAgICAgICAgY29uc3Qgc3ltYm9sID0gdGhpcy5zeW1ib2xPZihleHBvcnRGcm9tLCBuYW1lKTtcbiAgICAgICAgICAgIGlmIChleHBvcnRlZFN5bWJvbHMgJiYgZXhwb3J0ZWRTeW1ib2xzLmxlbmd0aCA9PSAxICYmIGV4cG9ydGVkU3ltYm9sc1swXS5yZWV4cG9ydCAmJlxuICAgICAgICAgICAgICAgIGV4cG9ydGVkU3ltYm9sc1swXS5uYW1lID09ICcqJykge1xuICAgICAgICAgICAgICAvLyBUaGlzIGlzIGEgbmFtZWQgZXhwb3J0IGZyb20gYSBtb2R1bGUgd2UgaGF2ZSBubyBtZXRhZGF0YSBhYm91dC4gUmVjb3JkIHRoZSBuYW1lZFxuICAgICAgICAgICAgICAvLyBleHBvcnQgYXMgYSByZS1leHBvcnQuXG4gICAgICAgICAgICAgIHN5bWJvbC5yZWV4cG9ydCA9IHRydWU7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICBleHBvcnRTeW1ib2wodGhpcy5zeW1ib2xPZihleHBvcnRGcm9tLCBuYW1lKSwgZXhwb3J0QXMpO1xuICAgICAgICAgIH1cbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAvLyBSZS1leHBvcnQgYWxsIHRoZSBzeW1ib2xzIGZyb20gdGhlIG1vZHVsZVxuICAgICAgICAgIGNvbnN0IGV4cG9ydGVkU3ltYm9scyA9IHRoaXMuZXhwb3J0QWxsKGV4cG9ydEZyb20pO1xuICAgICAgICAgIGZvciAoY29uc3QgZXhwb3J0ZWRTeW1ib2wgb2YgZXhwb3J0ZWRTeW1ib2xzKSB7XG4gICAgICAgICAgICAvLyBJbiBjYXNlIHRoZSBleHBvcnRlZCBzeW1ib2wgZG9lcyBub3QgaGF2ZSBhIG5hbWUsIHdlIG5lZWQgdG8gZ2l2ZSBpdCBhbiB1bmlxdWVcbiAgICAgICAgICAgIC8vIG5hbWUgZm9yIHRoZSBjdXJyZW50IG1vZHVsZS4gVGhpcyBpcyBuZWNlc3NhcnkgYmVjYXVzZSB0aGVyZSBjYW4gYmUgbXVsdGlwbGVcbiAgICAgICAgICAgIC8vIHVubmFtZWQgcmUtZXhwb3J0cyBpbiBhIGdpdmVuIG1vZHVsZS5cbiAgICAgICAgICAgIGNvbnN0IG5hbWUgPSBleHBvcnRlZFN5bWJvbC5uYW1lID09PSAnKicgP1xuICAgICAgICAgICAgICAgIGB1bm5hbWVkX3JlZXhwb3J0XyR7dW5uYW1lZE1vZHVsZUV4cG9ydHNJZHgrK31gIDpcbiAgICAgICAgICAgICAgICBleHBvcnRlZFN5bWJvbC5uYW1lO1xuICAgICAgICAgICAgZXhwb3J0U3ltYm9sKGV4cG9ydGVkU3ltYm9sLCBuYW1lKTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICBpZiAoIW1vZHVsZSkge1xuICAgICAgLy8gSWYgbm8gbWV0YWRhdGEgaXMgZm91bmQgZm9yIHRoaXMgaW1wb3J0IHRoZW4gaXQgaXMgY29uc2lkZXJlZCBleHRlcm5hbCB0byB0aGVcbiAgICAgIC8vIGxpYnJhcnkgYW5kIHNob3VsZCBiZSByZWNvcmRlZCBhcyBhIHJlLWV4cG9ydCBpbiB0aGUgZmluYWwgbWV0YWRhdGEgaWYgaXQgaXNcbiAgICAgIC8vIGV2ZW50dWFsbHkgcmUtZXhwb3J0ZWQuXG4gICAgICBjb25zdCBzeW1ib2wgPSB0aGlzLnN5bWJvbE9mKG1vZHVsZU5hbWUsICcqJyk7XG4gICAgICBzeW1ib2wucmVleHBvcnQgPSB0cnVlO1xuICAgICAgcmVzdWx0LnB1c2goc3ltYm9sKTtcbiAgICB9XG4gICAgdGhpcy5leHBvcnRzLnNldChtb2R1bGVOYW1lLCByZXN1bHQpO1xuXG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIC8qKlxuICAgKiBGaWxsIGluIHRoZSBjYW5vbmljYWxTeW1ib2wgd2hpY2ggaXMgdGhlIHN5bWJvbCB0aGF0IHNob3VsZCBiZSBpbXBvcnRlZCBieSBmYWN0b3JpZXMuXG4gICAqIFRoZSBjYW5vbmljYWwgc3ltYm9sIGlzIHRoZSBvbmUgZXhwb3J0ZWQgYnkgdGhlIGluZGV4IGZpbGUgZm9yIHRoZSBidW5kbGUgb3IgZGVmaW5pdGlvblxuICAgKiBzeW1ib2wgZm9yIHByaXZhdGUgc3ltYm9scyB0aGF0IGFyZSBub3QgZXhwb3J0ZWQgYnkgYnVuZGxlIGluZGV4LlxuICAgKi9cbiAgcHJpdmF0ZSBjYW5vbmljYWxpemVTeW1ib2xzKGV4cG9ydGVkU3ltYm9sczogU3ltYm9sW10pIHtcbiAgICBjb25zdCBzeW1ib2xzID0gQXJyYXkuZnJvbSh0aGlzLnN5bWJvbE1hcC52YWx1ZXMoKSk7XG4gICAgdGhpcy5leHBvcnRlZCA9IG5ldyBTZXQoZXhwb3J0ZWRTeW1ib2xzKTtcbiAgICBzeW1ib2xzLmZvckVhY2godGhpcy5jYW5vbmljYWxpemVTeW1ib2wsIHRoaXMpO1xuICB9XG5cbiAgcHJpdmF0ZSBjYW5vbmljYWxpemVTeW1ib2woc3ltYm9sOiBTeW1ib2wpIHtcbiAgICBjb25zdCByb290RXhwb3J0ID0gZ2V0Um9vdEV4cG9ydChzeW1ib2wpO1xuICAgIGNvbnN0IGRlY2xhcmF0aW9uID0gZ2V0U3ltYm9sRGVjbGFyYXRpb24oc3ltYm9sKTtcbiAgICBjb25zdCBpc1ByaXZhdGUgPSAhdGhpcy5leHBvcnRlZC5oYXMocm9vdEV4cG9ydCk7XG4gICAgY29uc3QgY2Fub25pY2FsU3ltYm9sID0gaXNQcml2YXRlID8gZGVjbGFyYXRpb24gOiByb290RXhwb3J0O1xuICAgIHN5bWJvbC5pc1ByaXZhdGUgPSBpc1ByaXZhdGU7XG4gICAgc3ltYm9sLmRlY2xhcmF0aW9uID0gZGVjbGFyYXRpb247XG4gICAgc3ltYm9sLmNhbm9uaWNhbFN5bWJvbCA9IGNhbm9uaWNhbFN5bWJvbDtcbiAgICBzeW1ib2wucmVleHBvcnQgPSBkZWNsYXJhdGlvbi5yZWV4cG9ydDtcbiAgfVxuXG4gIHByaXZhdGUgZ2V0RW50cmllcyhleHBvcnRlZFN5bWJvbHM6IFN5bWJvbFtdKTogQnVuZGxlRW50cmllcyB7XG4gICAgY29uc3QgcmVzdWx0OiBCdW5kbGVFbnRyaWVzID0ge307XG5cbiAgICBjb25zdCBleHBvcnRlZE5hbWVzID0gbmV3IFNldChleHBvcnRlZFN5bWJvbHMubWFwKHMgPT4gcy5uYW1lKSk7XG4gICAgbGV0IHByaXZhdGVOYW1lID0gMDtcblxuICAgIGZ1bmN0aW9uIG5ld1ByaXZhdGVOYW1lKHByZWZpeDogc3RyaW5nKTogc3RyaW5nIHtcbiAgICAgIHdoaWxlICh0cnVlKSB7XG4gICAgICAgIGxldCBkaWdpdHM6IHN0cmluZ1tdID0gW107XG4gICAgICAgIGxldCBpbmRleCA9IHByaXZhdGVOYW1lKys7XG4gICAgICAgIGxldCBiYXNlID0gUFJJVkFURV9OQU1FX0NIQVJTO1xuICAgICAgICB3aGlsZSAoIWRpZ2l0cy5sZW5ndGggfHwgaW5kZXggPiAwKSB7XG4gICAgICAgICAgZGlnaXRzLnVuc2hpZnQoYmFzZVtpbmRleCAlIGJhc2UubGVuZ3RoXSk7XG4gICAgICAgICAgaW5kZXggPSBNYXRoLmZsb29yKGluZGV4IC8gYmFzZS5sZW5ndGgpO1xuICAgICAgICB9XG4gICAgICAgIGNvbnN0IHJlc3VsdCA9IGBcXHUwMjc1JHtwcmVmaXh9JHtkaWdpdHMuam9pbignJyl9YDtcbiAgICAgICAgaWYgKCFleHBvcnRlZE5hbWVzLmhhcyhyZXN1bHQpKSByZXR1cm4gcmVzdWx0O1xuICAgICAgfVxuICAgIH1cblxuICAgIGV4cG9ydGVkU3ltYm9scy5mb3JFYWNoKHN5bWJvbCA9PiB0aGlzLmNvbnZlcnRTeW1ib2woc3ltYm9sKSk7XG5cbiAgICBjb25zdCBzeW1ib2xzTWFwID0gbmV3IE1hcDxzdHJpbmcsIHN0cmluZ1tdPigpO1xuICAgIEFycmF5LmZyb20odGhpcy5zeW1ib2xNYXAudmFsdWVzKCkpLmZvckVhY2goc3ltYm9sID0+IHtcbiAgICAgIGlmIChzeW1ib2wucmVmZXJlbmNlZCAmJiAhc3ltYm9sLnJlZXhwb3J0KSB7XG4gICAgICAgIGxldCBuYW1lID0gc3ltYm9sLm5hbWU7XG4gICAgICAgIGNvbnN0IGlkZW50aWZpZXIgPSBgJHtzeW1ib2wuZGVjbGFyYXRpb24hLm1vZHVsZX06JHtzeW1ib2wuZGVjbGFyYXRpb24hLm5hbWV9YDtcbiAgICAgICAgaWYgKHN5bWJvbC5pc1ByaXZhdGUgJiYgIXN5bWJvbC5wcml2YXRlTmFtZSkge1xuICAgICAgICAgIG5hbWUgPSBuZXdQcml2YXRlTmFtZSh0aGlzLnByaXZhdGVTeW1ib2xQcmVmaXgpO1xuICAgICAgICAgIHN5bWJvbC5wcml2YXRlTmFtZSA9IG5hbWU7XG4gICAgICAgIH1cbiAgICAgICAgaWYgKHN5bWJvbHNNYXAuaGFzKGlkZW50aWZpZXIpKSB7XG4gICAgICAgICAgY29uc3QgbmFtZXMgPSBzeW1ib2xzTWFwLmdldChpZGVudGlmaWVyKTtcbiAgICAgICAgICBuYW1lcyEucHVzaChuYW1lKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICBzeW1ib2xzTWFwLnNldChpZGVudGlmaWVyLCBbbmFtZV0pO1xuICAgICAgICB9XG4gICAgICAgIHJlc3VsdFtuYW1lXSA9IHN5bWJvbC52YWx1ZSE7XG4gICAgICB9XG4gICAgfSk7XG5cbiAgICAvLyBjaGVjayBmb3IgZHVwbGljYXRlZCBlbnRyaWVzXG4gICAgc3ltYm9sc01hcC5mb3JFYWNoKChuYW1lczogc3RyaW5nW10sIGlkZW50aWZpZXI6IHN0cmluZykgPT4ge1xuICAgICAgaWYgKG5hbWVzLmxlbmd0aCA+IDEpIHtcbiAgICAgICAgY29uc3QgW21vZHVsZSwgZGVjbGFyZWROYW1lXSA9IGlkZW50aWZpZXIuc3BsaXQoJzonKTtcbiAgICAgICAgLy8gcHJlZmVyIHRoZSBleHBvcnQgdGhhdCB1c2VzIHRoZSBkZWNsYXJlZCBuYW1lIChpZiBhbnkpXG4gICAgICAgIGxldCByZWZlcmVuY2UgPSBuYW1lcy5pbmRleE9mKGRlY2xhcmVkTmFtZSk7XG4gICAgICAgIGlmIChyZWZlcmVuY2UgPT09IC0xKSB7XG4gICAgICAgICAgcmVmZXJlbmNlID0gMDtcbiAgICAgICAgfVxuXG4gICAgICAgIC8vIGtlZXAgb25lIGVudHJ5IGFuZCByZXBsYWNlIHRoZSBvdGhlcnMgYnkgcmVmZXJlbmNlc1xuICAgICAgICBuYW1lcy5mb3JFYWNoKChuYW1lOiBzdHJpbmcsIGk6IG51bWJlcikgPT4ge1xuICAgICAgICAgIGlmIChpICE9PSByZWZlcmVuY2UpIHtcbiAgICAgICAgICAgIHJlc3VsdFtuYW1lXSA9IHtfX3N5bWJvbGljOiAncmVmZXJlbmNlJywgbmFtZTogbmFtZXNbcmVmZXJlbmNlXX07XG4gICAgICAgICAgfVxuICAgICAgICB9KTtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICBwcml2YXRlIGdldFJlRXhwb3J0cyhleHBvcnRlZFN5bWJvbHM6IFN5bWJvbFtdKTogTW9kdWxlRXhwb3J0TWV0YWRhdGFbXSB7XG4gICAgdHlwZSBFeHBvcnRDbGF1c2UgPSB7bmFtZTogc3RyaW5nLCBhczogc3RyaW5nfVtdO1xuICAgIGNvbnN0IG1vZHVsZXMgPSBuZXcgTWFwPHN0cmluZywgRXhwb3J0Q2xhdXNlPigpO1xuICAgIGNvbnN0IGV4cG9ydEFsbHMgPSBuZXcgU2V0PHN0cmluZz4oKTtcbiAgICBmb3IgKGNvbnN0IHN5bWJvbCBvZiBleHBvcnRlZFN5bWJvbHMpIHtcbiAgICAgIGlmIChzeW1ib2wucmVleHBvcnQpIHtcbiAgICAgICAgLy8gc3ltYm9sLmRlY2xhcmF0aW9uIGlzIGd1YXJhbnRlZWQgdG8gYmUgZGVmaW5lZCBkdXJpbmcgdGhlIHBoYXNlIHRoaXMgbWV0aG9kIGlzIGNhbGxlZC5cbiAgICAgICAgY29uc3QgZGVjbGFyYXRpb24gPSBzeW1ib2wuZGVjbGFyYXRpb24hO1xuICAgICAgICBjb25zdCBtb2R1bGUgPSBkZWNsYXJhdGlvbi5tb2R1bGU7XG4gICAgICAgIGlmIChkZWNsYXJhdGlvbiEubmFtZSA9PSAnKicpIHtcbiAgICAgICAgICAvLyBSZWV4cG9ydCBhbGwgdGhlIHN5bWJvbHMuXG4gICAgICAgICAgZXhwb3J0QWxscy5hZGQoZGVjbGFyYXRpb24ubW9kdWxlKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAvLyBSZS1leHBvcnQgdGhlIHN5bWJvbCBhcyB0aGUgZXhwb3J0ZWQgbmFtZS5cbiAgICAgICAgICBsZXQgZW50cnkgPSBtb2R1bGVzLmdldChtb2R1bGUpO1xuICAgICAgICAgIGlmICghZW50cnkpIHtcbiAgICAgICAgICAgIGVudHJ5ID0gW107XG4gICAgICAgICAgICBtb2R1bGVzLnNldChtb2R1bGUsIGVudHJ5KTtcbiAgICAgICAgICB9XG4gICAgICAgICAgY29uc3QgYXMgPSBzeW1ib2wubmFtZTtcbiAgICAgICAgICBjb25zdCBuYW1lID0gZGVjbGFyYXRpb24ubmFtZTtcbiAgICAgICAgICBlbnRyeS5wdXNoKHtuYW1lLCBhc30pO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiBbXG4gICAgICAuLi5BcnJheS5mcm9tKGV4cG9ydEFsbHMudmFsdWVzKCkpLm1hcChmcm9tID0+ICh7ZnJvbX0pKSxcbiAgICAgIC4uLkFycmF5LmZyb20obW9kdWxlcy5lbnRyaWVzKCkpLm1hcCgoW2Zyb20sIGV4cG9ydHNdKSA9PiAoe2V4cG9ydDogZXhwb3J0cywgZnJvbX0pKVxuICAgIF07XG4gIH1cblxuICBwcml2YXRlIGNvbnZlcnRTeW1ib2woc3ltYm9sOiBTeW1ib2wpIHtcbiAgICAvLyBjYW5vbmljYWxTeW1ib2wgaXMgZW5zdXJlZCB0byBiZSBkZWZpbmVkIGJlZm9yZSB0aGlzIGlzIGNhbGxlZC5cbiAgICBjb25zdCBjYW5vbmljYWxTeW1ib2wgPSBzeW1ib2wuY2Fub25pY2FsU3ltYm9sITtcblxuICAgIGlmICghY2Fub25pY2FsU3ltYm9sLnJlZmVyZW5jZWQpIHtcbiAgICAgIGNhbm9uaWNhbFN5bWJvbC5yZWZlcmVuY2VkID0gdHJ1ZTtcbiAgICAgIC8vIGRlY2xhcmF0aW9uIGlzIGVuc3VyZWQgdG8gYmUgZGVmaW5kZWQgYmVmb3JlIHRoaXMgbWV0aG9kIGlzIGNhbGxlZC5cbiAgICAgIGNvbnN0IGRlY2xhcmF0aW9uID0gY2Fub25pY2FsU3ltYm9sLmRlY2xhcmF0aW9uITtcbiAgICAgIGNvbnN0IG1vZHVsZSA9IHRoaXMuZ2V0TWV0YWRhdGEoZGVjbGFyYXRpb24ubW9kdWxlKTtcbiAgICAgIGlmIChtb2R1bGUpIHtcbiAgICAgICAgY29uc3QgdmFsdWUgPSBtb2R1bGUubWV0YWRhdGFbZGVjbGFyYXRpb24ubmFtZV07XG4gICAgICAgIGlmICh2YWx1ZSAmJiAhZGVjbGFyYXRpb24ubmFtZS5zdGFydHNXaXRoKCdfX18nKSkge1xuICAgICAgICAgIGNhbm9uaWNhbFN5bWJvbC52YWx1ZSA9IHRoaXMuY29udmVydEVudHJ5KGRlY2xhcmF0aW9uLm1vZHVsZSwgdmFsdWUpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBjb252ZXJ0RW50cnkobW9kdWxlTmFtZTogc3RyaW5nLCB2YWx1ZTogTWV0YWRhdGFFbnRyeSk6IE1ldGFkYXRhRW50cnkge1xuICAgIGlmIChpc0NsYXNzTWV0YWRhdGEodmFsdWUpKSB7XG4gICAgICByZXR1cm4gdGhpcy5jb252ZXJ0Q2xhc3MobW9kdWxlTmFtZSwgdmFsdWUpO1xuICAgIH1cbiAgICBpZiAoaXNGdW5jdGlvbk1ldGFkYXRhKHZhbHVlKSkge1xuICAgICAgcmV0dXJuIHRoaXMuY29udmVydEZ1bmN0aW9uKG1vZHVsZU5hbWUsIHZhbHVlKTtcbiAgICB9XG4gICAgaWYgKGlzSW50ZXJmYWNlTWV0YWRhdGEodmFsdWUpKSB7XG4gICAgICByZXR1cm4gdmFsdWU7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLmNvbnZlcnRWYWx1ZShtb2R1bGVOYW1lLCB2YWx1ZSk7XG4gIH1cblxuICBwcml2YXRlIGNvbnZlcnRDbGFzcyhtb2R1bGVOYW1lOiBzdHJpbmcsIHZhbHVlOiBDbGFzc01ldGFkYXRhKTogQ2xhc3NNZXRhZGF0YSB7XG4gICAgcmV0dXJuIHtcbiAgICAgIF9fc3ltYm9saWM6ICdjbGFzcycsXG4gICAgICBhcml0eTogdmFsdWUuYXJpdHksXG4gICAgICBleHRlbmRzOiB0aGlzLmNvbnZlcnRFeHByZXNzaW9uKG1vZHVsZU5hbWUsIHZhbHVlLmV4dGVuZHMpICEsXG4gICAgICBkZWNvcmF0b3JzOlxuICAgICAgICAgIHZhbHVlLmRlY29yYXRvcnMgJiYgdmFsdWUuZGVjb3JhdG9ycy5tYXAoZCA9PiB0aGlzLmNvbnZlcnRFeHByZXNzaW9uKG1vZHVsZU5hbWUsIGQpICEpLFxuICAgICAgbWVtYmVyczogdGhpcy5jb252ZXJ0TWVtYmVycyhtb2R1bGVOYW1lLCB2YWx1ZS5tZW1iZXJzICEpLFxuICAgICAgc3RhdGljczogdmFsdWUuc3RhdGljcyAmJiB0aGlzLmNvbnZlcnRTdGF0aWNzKG1vZHVsZU5hbWUsIHZhbHVlLnN0YXRpY3MpXG4gICAgfTtcbiAgfVxuXG4gIHByaXZhdGUgY29udmVydE1lbWJlcnMobW9kdWxlTmFtZTogc3RyaW5nLCBtZW1iZXJzOiBNZXRhZGF0YU1hcCk6IE1ldGFkYXRhTWFwIHtcbiAgICBjb25zdCByZXN1bHQ6IE1ldGFkYXRhTWFwID0ge307XG4gICAgZm9yIChjb25zdCBuYW1lIGluIG1lbWJlcnMpIHtcbiAgICAgIGNvbnN0IHZhbHVlID0gbWVtYmVyc1tuYW1lXTtcbiAgICAgIHJlc3VsdFtuYW1lXSA9IHZhbHVlLm1hcCh2ID0+IHRoaXMuY29udmVydE1lbWJlcihtb2R1bGVOYW1lLCB2KSk7XG4gICAgfVxuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICBwcml2YXRlIGNvbnZlcnRNZW1iZXIobW9kdWxlTmFtZTogc3RyaW5nLCBtZW1iZXI6IE1lbWJlck1ldGFkYXRhKSB7XG4gICAgY29uc3QgcmVzdWx0OiBNZW1iZXJNZXRhZGF0YSA9IHtfX3N5bWJvbGljOiBtZW1iZXIuX19zeW1ib2xpY307XG4gICAgcmVzdWx0LmRlY29yYXRvcnMgPVxuICAgICAgICBtZW1iZXIuZGVjb3JhdG9ycyAmJiBtZW1iZXIuZGVjb3JhdG9ycy5tYXAoZCA9PiB0aGlzLmNvbnZlcnRFeHByZXNzaW9uKG1vZHVsZU5hbWUsIGQpISk7XG4gICAgaWYgKGlzTWV0aG9kTWV0YWRhdGEobWVtYmVyKSkge1xuICAgICAgKHJlc3VsdCBhcyBNZXRob2RNZXRhZGF0YSkucGFyYW1ldGVyRGVjb3JhdG9ycyA9IG1lbWJlci5wYXJhbWV0ZXJEZWNvcmF0b3JzICYmXG4gICAgICAgICAgbWVtYmVyLnBhcmFtZXRlckRlY29yYXRvcnMubWFwKFxuICAgICAgICAgICAgICBkID0+IGQgJiYgZC5tYXAocCA9PiB0aGlzLmNvbnZlcnRFeHByZXNzaW9uKG1vZHVsZU5hbWUsIHApISkpO1xuICAgICAgaWYgKGlzQ29uc3RydWN0b3JNZXRhZGF0YShtZW1iZXIpKSB7XG4gICAgICAgIGlmIChtZW1iZXIucGFyYW1ldGVycykge1xuICAgICAgICAgIChyZXN1bHQgYXMgQ29uc3RydWN0b3JNZXRhZGF0YSkucGFyYW1ldGVycyA9XG4gICAgICAgICAgICAgIG1lbWJlci5wYXJhbWV0ZXJzLm1hcChwID0+IHRoaXMuY29udmVydEV4cHJlc3Npb24obW9kdWxlTmFtZSwgcCkpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICBwcml2YXRlIGNvbnZlcnRTdGF0aWNzKG1vZHVsZU5hbWU6IHN0cmluZywgc3RhdGljczogU3RhdGljc01ldGFkYXRhKTogU3RhdGljc01ldGFkYXRhIHtcbiAgICBsZXQgcmVzdWx0OiBTdGF0aWNzTWV0YWRhdGEgPSB7fTtcbiAgICBmb3IgKGNvbnN0IGtleSBpbiBzdGF0aWNzKSB7XG4gICAgICBjb25zdCB2YWx1ZSA9IHN0YXRpY3Nba2V5XTtcblxuICAgICAgaWYgKGlzRnVuY3Rpb25NZXRhZGF0YSh2YWx1ZSkpIHtcbiAgICAgICAgcmVzdWx0W2tleV0gPSB0aGlzLmNvbnZlcnRGdW5jdGlvbihtb2R1bGVOYW1lLCB2YWx1ZSk7XG4gICAgICB9IGVsc2UgaWYgKGlzTWV0YWRhdGFTeW1ib2xpY0NhbGxFeHByZXNzaW9uKHZhbHVlKSkge1xuICAgICAgICAvLyBDbGFzcyBtZW1iZXJzIGNhbiBhbHNvIGNvbnRhaW4gc3RhdGljIG1lbWJlcnMgdGhhdCBjYWxsIGEgZnVuY3Rpb24gd2l0aCBtb2R1bGVcbiAgICAgICAgLy8gcmVmZXJlbmNlcy4gZS5nLiBcInN0YXRpYyDJtXByb3YgPSDJtcm1ZGVmaW5lSW5qZWN0YWJsZSguLilcIi4gV2UgYWxzbyBuZWVkIHRvXG4gICAgICAgIC8vIGNvbnZlcnQgdGhlc2UgbW9kdWxlIHJlZmVyZW5jZXMgYmVjYXVzZSBvdGhlcndpc2UgdGhlc2UgcmVzb2x2ZSB0byBub24tZXhpc3RlbnQgZmlsZXMuXG4gICAgICAgIHJlc3VsdFtrZXldID0gdGhpcy5jb252ZXJ0VmFsdWUobW9kdWxlTmFtZSwgdmFsdWUpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgcmVzdWx0W2tleV0gPSB2YWx1ZTtcbiAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIHByaXZhdGUgY29udmVydEZ1bmN0aW9uKG1vZHVsZU5hbWU6IHN0cmluZywgdmFsdWU6IEZ1bmN0aW9uTWV0YWRhdGEpOiBGdW5jdGlvbk1ldGFkYXRhIHtcbiAgICByZXR1cm4ge1xuICAgICAgX19zeW1ib2xpYzogJ2Z1bmN0aW9uJyxcbiAgICAgIHBhcmFtZXRlcnM6IHZhbHVlLnBhcmFtZXRlcnMsXG4gICAgICBkZWZhdWx0czogdmFsdWUuZGVmYXVsdHMgJiYgdmFsdWUuZGVmYXVsdHMubWFwKHYgPT4gdGhpcy5jb252ZXJ0VmFsdWUobW9kdWxlTmFtZSwgdikpLFxuICAgICAgdmFsdWU6IHRoaXMuY29udmVydFZhbHVlKG1vZHVsZU5hbWUsIHZhbHVlLnZhbHVlKVxuICAgIH07XG4gIH1cblxuICBwcml2YXRlIGNvbnZlcnRWYWx1ZShtb2R1bGVOYW1lOiBzdHJpbmcsIHZhbHVlOiBNZXRhZGF0YVZhbHVlKTogTWV0YWRhdGFWYWx1ZSB7XG4gICAgaWYgKGlzUHJpbWl0aXZlKHZhbHVlKSkge1xuICAgICAgcmV0dXJuIHZhbHVlO1xuICAgIH1cbiAgICBpZiAoaXNNZXRhZGF0YUVycm9yKHZhbHVlKSkge1xuICAgICAgcmV0dXJuIHRoaXMuY29udmVydEVycm9yKG1vZHVsZU5hbWUsIHZhbHVlKTtcbiAgICB9XG4gICAgaWYgKGlzTWV0YWRhdGFTeW1ib2xpY0V4cHJlc3Npb24odmFsdWUpKSB7XG4gICAgICByZXR1cm4gdGhpcy5jb252ZXJ0RXhwcmVzc2lvbihtb2R1bGVOYW1lLCB2YWx1ZSkhO1xuICAgIH1cbiAgICBpZiAoQXJyYXkuaXNBcnJheSh2YWx1ZSkpIHtcbiAgICAgIHJldHVybiB2YWx1ZS5tYXAodiA9PiB0aGlzLmNvbnZlcnRWYWx1ZShtb2R1bGVOYW1lLCB2KSk7XG4gICAgfVxuXG4gICAgLy8gT3RoZXJ3aXNlIGl0IGlzIGEgbWV0YWRhdGEgb2JqZWN0LlxuICAgIGNvbnN0IG9iamVjdCA9IHZhbHVlIGFzIE1ldGFkYXRhT2JqZWN0O1xuICAgIGNvbnN0IHJlc3VsdDogTWV0YWRhdGFPYmplY3QgPSB7fTtcbiAgICBmb3IgKGNvbnN0IGtleSBpbiBvYmplY3QpIHtcbiAgICAgIHJlc3VsdFtrZXldID0gdGhpcy5jb252ZXJ0VmFsdWUobW9kdWxlTmFtZSwgb2JqZWN0W2tleV0pO1xuICAgIH1cbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgcHJpdmF0ZSBjb252ZXJ0RXhwcmVzc2lvbihcbiAgICAgIG1vZHVsZU5hbWU6IHN0cmluZywgdmFsdWU6IE1ldGFkYXRhU3ltYm9saWNFeHByZXNzaW9ufE1ldGFkYXRhRXJyb3J8bnVsbHx1bmRlZmluZWQpOlxuICAgICAgTWV0YWRhdGFTeW1ib2xpY0V4cHJlc3Npb258TWV0YWRhdGFFcnJvcnx1bmRlZmluZWR8bnVsbCB7XG4gICAgaWYgKHZhbHVlKSB7XG4gICAgICBzd2l0Y2ggKHZhbHVlLl9fc3ltYm9saWMpIHtcbiAgICAgICAgY2FzZSAnZXJyb3InOlxuICAgICAgICAgIHJldHVybiB0aGlzLmNvbnZlcnRFcnJvcihtb2R1bGVOYW1lLCB2YWx1ZSBhcyBNZXRhZGF0YUVycm9yKTtcbiAgICAgICAgY2FzZSAncmVmZXJlbmNlJzpcbiAgICAgICAgICByZXR1cm4gdGhpcy5jb252ZXJ0UmVmZXJlbmNlKG1vZHVsZU5hbWUsIHZhbHVlIGFzIE1ldGFkYXRhU3ltYm9saWNSZWZlcmVuY2VFeHByZXNzaW9uKTtcbiAgICAgICAgZGVmYXVsdDpcbiAgICAgICAgICByZXR1cm4gdGhpcy5jb252ZXJ0RXhwcmVzc2lvbk5vZGUobW9kdWxlTmFtZSwgdmFsdWUpO1xuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4gdmFsdWU7XG4gIH1cblxuICBwcml2YXRlIGNvbnZlcnRFcnJvcihtb2R1bGU6IHN0cmluZywgdmFsdWU6IE1ldGFkYXRhRXJyb3IpOiBNZXRhZGF0YUVycm9yIHtcbiAgICByZXR1cm4ge1xuICAgICAgX19zeW1ib2xpYzogJ2Vycm9yJyxcbiAgICAgIG1lc3NhZ2U6IHZhbHVlLm1lc3NhZ2UsXG4gICAgICBsaW5lOiB2YWx1ZS5saW5lLFxuICAgICAgY2hhcmFjdGVyOiB2YWx1ZS5jaGFyYWN0ZXIsXG4gICAgICBjb250ZXh0OiB2YWx1ZS5jb250ZXh0LFxuICAgICAgbW9kdWxlXG4gICAgfTtcbiAgfVxuXG4gIHByaXZhdGUgY29udmVydFJlZmVyZW5jZShtb2R1bGVOYW1lOiBzdHJpbmcsIHZhbHVlOiBNZXRhZGF0YVN5bWJvbGljUmVmZXJlbmNlRXhwcmVzc2lvbik6XG4gICAgICBNZXRhZGF0YVN5bWJvbGljUmVmZXJlbmNlRXhwcmVzc2lvbnxNZXRhZGF0YUVycm9yfHVuZGVmaW5lZCB7XG4gICAgY29uc3QgY3JlYXRlUmVmZXJlbmNlID0gKHN5bWJvbDogU3ltYm9sKTogTWV0YWRhdGFTeW1ib2xpY1JlZmVyZW5jZUV4cHJlc3Npb24gPT4ge1xuICAgICAgY29uc3QgZGVjbGFyYXRpb24gPSBzeW1ib2wuZGVjbGFyYXRpb24hO1xuICAgICAgaWYgKGRlY2xhcmF0aW9uLm1vZHVsZS5zdGFydHNXaXRoKCcuJykpIHtcbiAgICAgICAgLy8gUmVmZXJlbmNlIHRvIGEgc3ltYm9sIGRlZmluZWQgaW4gdGhlIG1vZHVsZS4gRW5zdXJlIGl0IGlzIGNvbnZlcnRlZCB0aGVuIHJldHVybiBhXG4gICAgICAgIC8vIHJlZmVyZW5jZXMgdG8gdGhlIGZpbmFsIHN5bWJvbC5cbiAgICAgICAgdGhpcy5jb252ZXJ0U3ltYm9sKHN5bWJvbCk7XG4gICAgICAgIHJldHVybiB7XG4gICAgICAgICAgX19zeW1ib2xpYzogJ3JlZmVyZW5jZScsXG4gICAgICAgICAgZ2V0IG5hbWUoKSB7XG4gICAgICAgICAgICAvLyBSZXNvbHZlZCBsYXppbHkgYmVjYXVzZSBwcml2YXRlIG5hbWVzIGFyZSBhc3NpZ25lZCBsYXRlLlxuICAgICAgICAgICAgY29uc3QgY2Fub25pY2FsU3ltYm9sID0gc3ltYm9sLmNhbm9uaWNhbFN5bWJvbCE7XG4gICAgICAgICAgICBpZiAoY2Fub25pY2FsU3ltYm9sLmlzUHJpdmF0ZSA9PSBudWxsKSB7XG4gICAgICAgICAgICAgIHRocm93IEVycm9yKCdJbnZhbGlkIHN0YXRlOiBpc1ByaXZhdGUgd2FzIG5vdCBpbml0aWFsaXplZCcpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgcmV0dXJuIGNhbm9uaWNhbFN5bWJvbC5pc1ByaXZhdGUgPyBjYW5vbmljYWxTeW1ib2wucHJpdmF0ZU5hbWUhIDogY2Fub25pY2FsU3ltYm9sLm5hbWU7XG4gICAgICAgICAgfVxuICAgICAgICB9O1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgLy8gVGhlIHN5bWJvbCB3YXMgYSByZS1leHBvcnRlZCBzeW1ib2wgZnJvbSBhbm90aGVyIG1vZHVsZS4gUmV0dXJuIGEgcmVmZXJlbmNlIHRvIHRoZVxuICAgICAgICAvLyBvcmlnaW5hbCBpbXBvcnRlZCBzeW1ib2wuXG4gICAgICAgIHJldHVybiB7X19zeW1ib2xpYzogJ3JlZmVyZW5jZScsIG5hbWU6IGRlY2xhcmF0aW9uLm5hbWUsIG1vZHVsZTogZGVjbGFyYXRpb24ubW9kdWxlfTtcbiAgICAgIH1cbiAgICB9O1xuXG4gICAgaWYgKGlzTWV0YWRhdGFHbG9iYWxSZWZlcmVuY2VFeHByZXNzaW9uKHZhbHVlKSkge1xuICAgICAgY29uc3QgbWV0YWRhdGEgPSB0aGlzLmdldE1ldGFkYXRhKG1vZHVsZU5hbWUpO1xuICAgICAgaWYgKG1ldGFkYXRhICYmIG1ldGFkYXRhLm1ldGFkYXRhICYmIG1ldGFkYXRhLm1ldGFkYXRhW3ZhbHVlLm5hbWVdKSB7XG4gICAgICAgIC8vIFJlZmVyZW5jZSB0byBhIHN5bWJvbCBkZWZpbmVkIGluIHRoZSBtb2R1bGVcbiAgICAgICAgcmV0dXJuIGNyZWF0ZVJlZmVyZW5jZSh0aGlzLmNhbm9uaWNhbFN5bWJvbE9mKG1vZHVsZU5hbWUsIHZhbHVlLm5hbWUpKTtcbiAgICAgIH1cblxuICAgICAgLy8gSWYgYSByZWZlcmVuY2UgaGFzIGFyZ3VtZW50cywgdGhlIGFyZ3VtZW50cyBuZWVkIHRvIGJlIGNvbnZlcnRlZC5cbiAgICAgIGlmICh2YWx1ZS5hcmd1bWVudHMpIHtcbiAgICAgICAgcmV0dXJuIHtcbiAgICAgICAgICBfX3N5bWJvbGljOiAncmVmZXJlbmNlJyxcbiAgICAgICAgICBuYW1lOiB2YWx1ZS5uYW1lLFxuICAgICAgICAgIGFyZ3VtZW50czogdmFsdWUuYXJndW1lbnRzLm1hcChhID0+IHRoaXMuY29udmVydFZhbHVlKG1vZHVsZU5hbWUsIGEpKVxuICAgICAgICB9O1xuICAgICAgfVxuXG4gICAgICAvLyBHbG9iYWwgcmVmZXJlbmNlcyB3aXRob3V0IGFyZ3VtZW50cyAoc3VjaCBhcyB0byBNYXRoIG9yIEpTT04pIGFyZSB1bm1vZGlmaWVkLlxuICAgICAgcmV0dXJuIHZhbHVlO1xuICAgIH1cblxuICAgIGlmIChpc01ldGFkYXRhSW1wb3J0ZWRTeW1ib2xSZWZlcmVuY2VFeHByZXNzaW9uKHZhbHVlKSkge1xuICAgICAgLy8gUmVmZXJlbmNlcyB0byBpbXBvcnRlZCBzeW1ib2xzIGFyZSBzZXBhcmF0ZWQgaW50byB0d28sIHJlZmVyZW5jZXMgdG8gYnVuZGxlZCBtb2R1bGVzIGFuZFxuICAgICAgLy8gcmVmZXJlbmNlcyB0byBtb2R1bGVzIGV4dGVybmFsIHRvIHRoZSBidW5kbGUuIElmIHRoZSBtb2R1bGUgcmVmZXJlbmNlIGlzIHJlbGF0aXZlIGl0IGlzXG4gICAgICAvLyBhc3N1bWVkIHRvIGJlIGluIHRoZSBidW5kbGUuIElmIGl0IGlzIEdsb2JhbCBpdCBpcyBhc3N1bWVkIHRvIGJlIG91dHNpZGUgdGhlIGJ1bmRsZS5cbiAgICAgIC8vIFJlZmVyZW5jZXMgdG8gc3ltYm9scyBvdXRzaWRlIHRoZSBidW5kbGUgYXJlIGxlZnQgdW5tb2RpZmllZC4gUmVmZXJlbmNlcyB0byBzeW1ib2wgaW5zaWRlXG4gICAgICAvLyB0aGUgYnVuZGxlIG5lZWQgdG8gYmUgY29udmVydGVkIHRvIGEgYnVuZGxlIGltcG9ydCByZWZlcmVuY2UgcmVhY2hhYmxlIGZyb20gdGhlIGJ1bmRsZVxuICAgICAgLy8gaW5kZXguXG5cbiAgICAgIGlmICh2YWx1ZS5tb2R1bGUuc3RhcnRzV2l0aCgnLicpKSB7XG4gICAgICAgIC8vIFJlZmVyZW5jZSBpcyB0byBhIHN5bWJvbCBkZWZpbmVkIGluc2lkZSB0aGUgbW9kdWxlLiBDb252ZXJ0IHRoZSByZWZlcmVuY2UgdG8gYSByZWZlcmVuY2VcbiAgICAgICAgLy8gdG8gdGhlIGNhbm9uaWNhbCBzeW1ib2wuXG4gICAgICAgIGNvbnN0IHJlZmVyZW5jZWRNb2R1bGUgPSByZXNvbHZlTW9kdWxlKHZhbHVlLm1vZHVsZSwgbW9kdWxlTmFtZSk7XG4gICAgICAgIGNvbnN0IHJlZmVyZW5jZWROYW1lID0gdmFsdWUubmFtZTtcbiAgICAgICAgcmV0dXJuIGNyZWF0ZVJlZmVyZW5jZSh0aGlzLmNhbm9uaWNhbFN5bWJvbE9mKHJlZmVyZW5jZWRNb2R1bGUsIHJlZmVyZW5jZWROYW1lKSk7XG4gICAgICB9XG5cbiAgICAgIC8vIFZhbHVlIGlzIGEgcmVmZXJlbmNlIHRvIGEgc3ltYm9sIGRlZmluZWQgb3V0c2lkZSB0aGUgbW9kdWxlLlxuICAgICAgaWYgKHZhbHVlLmFyZ3VtZW50cykge1xuICAgICAgICAvLyBJZiBhIHJlZmVyZW5jZSBoYXMgYXJndW1lbnRzIHRoZSBhcmd1bWVudHMgbmVlZCB0byBiZSBjb252ZXJ0ZWQuXG4gICAgICAgIHJldHVybiB7XG4gICAgICAgICAgX19zeW1ib2xpYzogJ3JlZmVyZW5jZScsXG4gICAgICAgICAgbmFtZTogdmFsdWUubmFtZSxcbiAgICAgICAgICBtb2R1bGU6IHZhbHVlLm1vZHVsZSxcbiAgICAgICAgICBhcmd1bWVudHM6IHZhbHVlLmFyZ3VtZW50cy5tYXAoYSA9PiB0aGlzLmNvbnZlcnRWYWx1ZShtb2R1bGVOYW1lLCBhKSlcbiAgICAgICAgfTtcbiAgICAgIH1cbiAgICAgIHJldHVybiB2YWx1ZTtcbiAgICB9XG5cbiAgICBpZiAoaXNNZXRhZGF0YU1vZHVsZVJlZmVyZW5jZUV4cHJlc3Npb24odmFsdWUpKSB7XG4gICAgICAvLyBDYW5ub3Qgc3VwcG9ydCByZWZlcmVuY2VzIHRvIGJ1bmRsZWQgbW9kdWxlcyBhcyB0aGUgaW50ZXJuYWwgbW9kdWxlcyBvZiBhIGJ1bmRsZSBhcmUgZXJhc2VkXG4gICAgICAvLyBieSB0aGUgYnVuZGxlci5cbiAgICAgIGlmICh2YWx1ZS5tb2R1bGUuc3RhcnRzV2l0aCgnLicpKSB7XG4gICAgICAgIHJldHVybiB7XG4gICAgICAgICAgX19zeW1ib2xpYzogJ2Vycm9yJyxcbiAgICAgICAgICBtZXNzYWdlOiAnVW5zdXBwb3J0ZWQgYnVuZGxlZCBtb2R1bGUgcmVmZXJlbmNlJyxcbiAgICAgICAgICBjb250ZXh0OiB7bW9kdWxlOiB2YWx1ZS5tb2R1bGV9XG4gICAgICAgIH07XG4gICAgICB9XG5cbiAgICAgIC8vIFJlZmVyZW5jZXMgdG8gdW5idW5kbGVkIG1vZHVsZXMgYXJlIHVubW9kaWZpZWQuXG4gICAgICByZXR1cm4gdmFsdWU7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBjb252ZXJ0RXhwcmVzc2lvbk5vZGUobW9kdWxlTmFtZTogc3RyaW5nLCB2YWx1ZTogTWV0YWRhdGFTeW1ib2xpY0V4cHJlc3Npb24pOlxuICAgICAgTWV0YWRhdGFTeW1ib2xpY0V4cHJlc3Npb24ge1xuICAgIGNvbnN0IHJlc3VsdDogTWV0YWRhdGFTeW1ib2xpY0V4cHJlc3Npb24gPSB7X19zeW1ib2xpYzogdmFsdWUuX19zeW1ib2xpY30gYXMgYW55O1xuICAgIGZvciAoY29uc3Qga2V5IGluIHZhbHVlKSB7XG4gICAgICAocmVzdWx0IGFzIGFueSlba2V5XSA9IHRoaXMuY29udmVydFZhbHVlKG1vZHVsZU5hbWUsICh2YWx1ZSBhcyBhbnkpW2tleV0pO1xuICAgIH1cbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgcHJpdmF0ZSBzeW1ib2xPZihtb2R1bGU6IHN0cmluZywgbmFtZTogc3RyaW5nKTogU3ltYm9sIHtcbiAgICBjb25zdCBzeW1ib2xLZXkgPSBgJHttb2R1bGV9OiR7bmFtZX1gO1xuICAgIGxldCBzeW1ib2wgPSB0aGlzLnN5bWJvbE1hcC5nZXQoc3ltYm9sS2V5KTtcbiAgICBpZiAoIXN5bWJvbCkge1xuICAgICAgc3ltYm9sID0ge21vZHVsZSwgbmFtZX07XG4gICAgICB0aGlzLnN5bWJvbE1hcC5zZXQoc3ltYm9sS2V5LCBzeW1ib2wpO1xuICAgIH1cbiAgICByZXR1cm4gc3ltYm9sO1xuICB9XG5cbiAgcHJpdmF0ZSBjYW5vbmljYWxTeW1ib2xPZihtb2R1bGU6IHN0cmluZywgbmFtZTogc3RyaW5nKTogU3ltYm9sIHtcbiAgICAvLyBFbnN1cmUgdGhlIG1vZHVsZSBoYXMgYmVlbiBzZWVuLlxuICAgIHRoaXMuZXhwb3J0QWxsKG1vZHVsZSk7XG4gICAgY29uc3Qgc3ltYm9sID0gdGhpcy5zeW1ib2xPZihtb2R1bGUsIG5hbWUpO1xuICAgIGlmICghc3ltYm9sLmNhbm9uaWNhbFN5bWJvbCkge1xuICAgICAgdGhpcy5jYW5vbmljYWxpemVTeW1ib2woc3ltYm9sKTtcbiAgICB9XG4gICAgcmV0dXJuIHN5bWJvbDtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgQ29tcGlsZXJIb3N0QWRhcHRlciBpbXBsZW1lbnRzIE1ldGFkYXRhQnVuZGxlckhvc3Qge1xuICBwcml2YXRlIGNvbGxlY3RvciA9IG5ldyBNZXRhZGF0YUNvbGxlY3RvcigpO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSBob3N0OiB0cy5Db21waWxlckhvc3QsIHByaXZhdGUgY2FjaGU6IE1ldGFkYXRhQ2FjaGV8bnVsbCxcbiAgICAgIHByaXZhdGUgb3B0aW9uczogdHMuQ29tcGlsZXJPcHRpb25zKSB7fVxuXG4gIGdldE1ldGFkYXRhRm9yKGZpbGVOYW1lOiBzdHJpbmcsIGNvbnRhaW5pbmdGaWxlOiBzdHJpbmcpOiBNb2R1bGVNZXRhZGF0YXx1bmRlZmluZWQge1xuICAgIGNvbnN0IHtyZXNvbHZlZE1vZHVsZX0gPVxuICAgICAgICB0cy5yZXNvbHZlTW9kdWxlTmFtZShmaWxlTmFtZSwgY29udGFpbmluZ0ZpbGUsIHRoaXMub3B0aW9ucywgdGhpcy5ob3N0KTtcblxuICAgIGxldCBzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlfHVuZGVmaW5lZDtcbiAgICBpZiAocmVzb2x2ZWRNb2R1bGUpIHtcbiAgICAgIGxldCB7cmVzb2x2ZWRGaWxlTmFtZX0gPSByZXNvbHZlZE1vZHVsZTtcbiAgICAgIGlmIChyZXNvbHZlZE1vZHVsZS5leHRlbnNpb24gIT09ICcudHMnKSB7XG4gICAgICAgIHJlc29sdmVkRmlsZU5hbWUgPSByZXNvbHZlZEZpbGVOYW1lLnJlcGxhY2UoLyhcXC5kXFwudHN8XFwuanMpJC8sICcudHMnKTtcbiAgICAgIH1cbiAgICAgIHNvdXJjZUZpbGUgPSB0aGlzLmhvc3QuZ2V0U291cmNlRmlsZShyZXNvbHZlZEZpbGVOYW1lLCB0cy5TY3JpcHRUYXJnZXQuTGF0ZXN0KTtcbiAgICB9IGVsc2Uge1xuICAgICAgLy8gSWYgdHlwZXNjcmlwdCBpcyB1bmFibGUgdG8gcmVzb2x2ZSB0aGUgZmlsZSwgZmFsbGJhY2sgb24gb2xkIGJlaGF2aW9yXG4gICAgICBpZiAoIXRoaXMuaG9zdC5maWxlRXhpc3RzKGZpbGVOYW1lICsgJy50cycpKSByZXR1cm4gdW5kZWZpbmVkO1xuICAgICAgc291cmNlRmlsZSA9IHRoaXMuaG9zdC5nZXRTb3VyY2VGaWxlKGZpbGVOYW1lICsgJy50cycsIHRzLlNjcmlwdFRhcmdldC5MYXRlc3QpO1xuICAgIH1cblxuICAgIC8vIElmIHRoZXJlIGlzIGEgbWV0YWRhdGEgY2FjaGUsIHVzZSBpdCB0byBnZXQgdGhlIG1ldGFkYXRhIGZvciB0aGlzIHNvdXJjZSBmaWxlLiBPdGhlcndpc2UsXG4gICAgLy8gZmFsbCBiYWNrIG9uIHRoZSBsb2NhbGx5IGNyZWF0ZWQgTWV0YWRhdGFDb2xsZWN0b3IuXG4gICAgaWYgKCFzb3VyY2VGaWxlKSB7XG4gICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgIH0gZWxzZSBpZiAodGhpcy5jYWNoZSkge1xuICAgICAgcmV0dXJuIHRoaXMuY2FjaGUuZ2V0TWV0YWRhdGEoc291cmNlRmlsZSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHJldHVybiB0aGlzLmNvbGxlY3Rvci5nZXRNZXRhZGF0YShzb3VyY2VGaWxlKTtcbiAgICB9XG4gIH1cbn1cblxuZnVuY3Rpb24gcmVzb2x2ZU1vZHVsZShpbXBvcnROYW1lOiBzdHJpbmcsIGZyb206IHN0cmluZyk6IHN0cmluZyB7XG4gIGlmIChpbXBvcnROYW1lLnN0YXJ0c1dpdGgoJy4nKSAmJiBmcm9tKSB7XG4gICAgbGV0IG5vcm1hbFBhdGggPSBwYXRoLm5vcm1hbGl6ZShwYXRoLmpvaW4ocGF0aC5kaXJuYW1lKGZyb20pLCBpbXBvcnROYW1lKSk7XG4gICAgaWYgKCFub3JtYWxQYXRoLnN0YXJ0c1dpdGgoJy4nKSAmJiBmcm9tLnN0YXJ0c1dpdGgoJy4nKSkge1xuICAgICAgLy8gcGF0aC5ub3JtYWxpemUoKSBwcmVzZXJ2ZXMgbGVhZGluZyAnLi4vJyBidXQgbm90ICcuLycuIFRoaXMgYWRkcyBpdCBiYWNrLlxuICAgICAgbm9ybWFsUGF0aCA9IGAuJHtwYXRoLnNlcH0ke25vcm1hbFBhdGh9YDtcbiAgICB9XG4gICAgLy8gUmVwbGFjZSB3aW5kb3dzIHBhdGggZGVsaW1pdGVycyB3aXRoIGZvcndhcmQtc2xhc2hlcy4gT3RoZXJ3aXNlIHRoZSBwYXRocyBhcmUgbm90XG4gICAgLy8gVHlwZVNjcmlwdCBjb21wYXRpYmxlIHdoZW4gYnVpbGRpbmcgdGhlIGJ1bmRsZS5cbiAgICByZXR1cm4gbm9ybWFsUGF0aC5yZXBsYWNlKC9cXFxcL2csICcvJyk7XG4gIH1cbiAgcmV0dXJuIGltcG9ydE5hbWU7XG59XG5cbmZ1bmN0aW9uIGlzUHJpbWl0aXZlKG86IGFueSk6IG8gaXMgYm9vbGVhbnxzdHJpbmd8bnVtYmVyIHtcbiAgcmV0dXJuIG8gPT09IG51bGwgfHwgKHR5cGVvZiBvICE9PSAnZnVuY3Rpb24nICYmIHR5cGVvZiBvICE9PSAnb2JqZWN0Jyk7XG59XG5cbmZ1bmN0aW9uIGdldFJvb3RFeHBvcnQoc3ltYm9sOiBTeW1ib2wpOiBTeW1ib2wge1xuICByZXR1cm4gc3ltYm9sLnJlZXhwb3J0ZWRBcyA/IGdldFJvb3RFeHBvcnQoc3ltYm9sLnJlZXhwb3J0ZWRBcykgOiBzeW1ib2w7XG59XG5cbmZ1bmN0aW9uIGdldFN5bWJvbERlY2xhcmF0aW9uKHN5bWJvbDogU3ltYm9sKTogU3ltYm9sIHtcbiAgcmV0dXJuIHN5bWJvbC5leHBvcnRzID8gZ2V0U3ltYm9sRGVjbGFyYXRpb24oc3ltYm9sLmV4cG9ydHMpIDogc3ltYm9sO1xufVxuIl19