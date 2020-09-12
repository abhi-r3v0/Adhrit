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
        define("@angular/compiler-cli/src/ngtsc/scope/src/local", ["require", "exports", "tslib", "@angular/compiler", "typescript", "@angular/compiler-cli/src/ngtsc/diagnostics", "@angular/compiler-cli/src/ngtsc/util/src/typescript"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.LocalModuleScopeRegistry = void 0;
    var tslib_1 = require("tslib");
    var compiler_1 = require("@angular/compiler");
    var ts = require("typescript");
    var diagnostics_1 = require("@angular/compiler-cli/src/ngtsc/diagnostics");
    var typescript_1 = require("@angular/compiler-cli/src/ngtsc/util/src/typescript");
    /**
     * A registry which collects information about NgModules, Directives, Components, and Pipes which
     * are local (declared in the ts.Program being compiled), and can produce `LocalModuleScope`s
     * which summarize the compilation scope of a component.
     *
     * This class implements the logic of NgModule declarations, imports, and exports and can produce,
     * for a given component, the set of directives and pipes which are "visible" in that component's
     * template.
     *
     * The `LocalModuleScopeRegistry` has two "modes" of operation. During analysis, data for each
     * individual NgModule, Directive, Component, and Pipe is added to the registry. No attempt is made
     * to traverse or validate the NgModule graph (imports, exports, etc). After analysis, one of
     * `getScopeOfModule` or `getScopeForComponent` can be called, which traverses the NgModule graph
     * and applies the NgModule logic to generate a `LocalModuleScope`, the full scope for the given
     * module or component.
     *
     * The `LocalModuleScopeRegistry` is also capable of producing `ts.Diagnostic` errors when Angular
     * semantics are violated.
     */
    var LocalModuleScopeRegistry = /** @class */ (function () {
        function LocalModuleScopeRegistry(localReader, dependencyScopeReader, refEmitter, aliasingHost) {
            this.localReader = localReader;
            this.dependencyScopeReader = dependencyScopeReader;
            this.refEmitter = refEmitter;
            this.aliasingHost = aliasingHost;
            /**
             * Tracks whether the registry has been asked to produce scopes for a module or component. Once
             * this is true, the registry cannot accept registrations of new directives/pipes/modules as it
             * would invalidate the cached scope data.
             */
            this.sealed = false;
            /**
             * A map of components from the current compilation unit to the NgModule which declared them.
             *
             * As components and directives are not distinguished at the NgModule level, this map may also
             * contain directives. This doesn't cause any problems but isn't useful as there is no concept of
             * a directive's compilation scope.
             */
            this.declarationToModule = new Map();
            /**
             * This maps from the directive/pipe class to a map of data for each NgModule that declares the
             * directive/pipe. This data is needed to produce an error for the given class.
             */
            this.duplicateDeclarations = new Map();
            this.moduleToRef = new Map();
            /**
             * A cache of calculated `LocalModuleScope`s for each NgModule declared in the current program.
             *
             * A value of `undefined` indicates the scope was invalid and produced errors (therefore,
             * diagnostics should exist in the `scopeErrors` map).
             */
            this.cache = new Map();
            /**
             * Tracks whether a given component requires "remote scoping".
             *
             * Remote scoping is when the set of directives which apply to a given component is set in the
             * NgModule's file instead of directly on the component def (which is sometimes needed to get
             * around cyclic import issues). This is not used in calculation of `LocalModuleScope`s, but is
             * tracked here for convenience.
             */
            this.remoteScoping = new Set();
            /**
             * Tracks errors accumulated in the processing of scopes for each module declaration.
             */
            this.scopeErrors = new Map();
            /**
             * Tracks which NgModules are unreliable due to errors within their declarations.
             *
             * This provides a unified view of which modules have errors, across all of the different
             * diagnostic categories that can be produced. Theoretically this can be inferred from the other
             * properties of this class, but is tracked explicitly to simplify the logic.
             */
            this.taintedModules = new Set();
        }
        /**
         * Add an NgModule's data to the registry.
         */
        LocalModuleScopeRegistry.prototype.registerNgModuleMetadata = function (data) {
            var e_1, _a;
            this.assertCollecting();
            var ngModule = data.ref.node;
            this.moduleToRef.set(data.ref.node, data.ref);
            try {
                // Iterate over the module's declarations, and add them to declarationToModule. If duplicates
                // are found, they're instead tracked in duplicateDeclarations.
                for (var _b = tslib_1.__values(data.declarations), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var decl = _c.value;
                    this.registerDeclarationOfModule(ngModule, decl, data.rawDeclarations);
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
        };
        LocalModuleScopeRegistry.prototype.registerDirectiveMetadata = function (directive) { };
        LocalModuleScopeRegistry.prototype.registerPipeMetadata = function (pipe) { };
        LocalModuleScopeRegistry.prototype.getScopeForComponent = function (clazz) {
            var scope = !this.declarationToModule.has(clazz) ?
                null :
                this.getScopeOfModule(this.declarationToModule.get(clazz).ngModule);
            return scope;
        };
        /**
         * If `node` is declared in more than one NgModule (duplicate declaration), then get the
         * `DeclarationData` for each offending declaration.
         *
         * Ordinarily a class is only declared in one NgModule, in which case this function returns
         * `null`.
         */
        LocalModuleScopeRegistry.prototype.getDuplicateDeclarations = function (node) {
            if (!this.duplicateDeclarations.has(node)) {
                return null;
            }
            return Array.from(this.duplicateDeclarations.get(node).values());
        };
        /**
         * Collects registered data for a module and its directives/pipes and convert it into a full
         * `LocalModuleScope`.
         *
         * This method implements the logic of NgModule imports and exports. It returns the
         * `LocalModuleScope` for the given NgModule if one can be produced, `null` if no scope was ever
         * defined, or the string `'error'` if the scope contained errors.
         */
        LocalModuleScopeRegistry.prototype.getScopeOfModule = function (clazz) {
            var scope = this.moduleToRef.has(clazz) ?
                this.getScopeOfModuleReference(this.moduleToRef.get(clazz)) :
                null;
            // If the NgModule class is marked as tainted, consider it an error.
            if (this.taintedModules.has(clazz)) {
                return 'error';
            }
            // Translate undefined -> 'error'.
            return scope !== undefined ? scope : 'error';
        };
        /**
         * Retrieves any `ts.Diagnostic`s produced during the calculation of the `LocalModuleScope` for
         * the given NgModule, or `null` if no errors were present.
         */
        LocalModuleScopeRegistry.prototype.getDiagnosticsOfModule = function (clazz) {
            // Required to ensure the errors are populated for the given class. If it has been processed
            // before, this will be a no-op due to the scope cache.
            this.getScopeOfModule(clazz);
            if (this.scopeErrors.has(clazz)) {
                return this.scopeErrors.get(clazz);
            }
            else {
                return null;
            }
        };
        /**
         * Returns a collection of the compilation scope for each registered declaration.
         */
        LocalModuleScopeRegistry.prototype.getCompilationScopes = function () {
            var _this = this;
            var scopes = [];
            this.declarationToModule.forEach(function (declData, declaration) {
                var scope = _this.getScopeOfModule(declData.ngModule);
                if (scope !== null && scope !== 'error') {
                    scopes.push(tslib_1.__assign({ declaration: declaration, ngModule: declData.ngModule }, scope.compilation));
                }
            });
            return scopes;
        };
        LocalModuleScopeRegistry.prototype.registerDeclarationOfModule = function (ngModule, decl, rawDeclarations) {
            var declData = {
                ngModule: ngModule,
                ref: decl,
                rawDeclarations: rawDeclarations,
            };
            // First, check for duplicate declarations of the same directive/pipe.
            if (this.duplicateDeclarations.has(decl.node)) {
                // This directive/pipe has already been identified as being duplicated. Add this module to the
                // map of modules for which a duplicate declaration exists.
                this.duplicateDeclarations.get(decl.node).set(ngModule, declData);
            }
            else if (this.declarationToModule.has(decl.node) &&
                this.declarationToModule.get(decl.node).ngModule !== ngModule) {
                // This directive/pipe is already registered as declared in another module. Mark it as a
                // duplicate instead.
                var duplicateDeclMap = new Map();
                var firstDeclData = this.declarationToModule.get(decl.node);
                // Mark both modules as tainted, since their declarations are missing a component.
                this.taintedModules.add(firstDeclData.ngModule);
                this.taintedModules.add(ngModule);
                // Being detected as a duplicate means there are two NgModules (for now) which declare this
                // directive/pipe. Add both of them to the duplicate tracking map.
                duplicateDeclMap.set(firstDeclData.ngModule, firstDeclData);
                duplicateDeclMap.set(ngModule, declData);
                this.duplicateDeclarations.set(decl.node, duplicateDeclMap);
                // Remove the directive/pipe from `declarationToModule` as it's a duplicate declaration, and
                // therefore not valid.
                this.declarationToModule.delete(decl.node);
            }
            else {
                // This is the first declaration of this directive/pipe, so map it.
                this.declarationToModule.set(decl.node, declData);
            }
        };
        /**
         * Implementation of `getScopeOfModule` which accepts a reference to a class and differentiates
         * between:
         *
         * * no scope being available (returns `null`)
         * * a scope being produced with errors (returns `undefined`).
         */
        LocalModuleScopeRegistry.prototype.getScopeOfModuleReference = function (ref) {
            var e_2, _a, e_3, _b, e_4, _c, e_5, _d, e_6, _e, e_7, _f, e_8, _g, e_9, _h, e_10, _j;
            if (this.cache.has(ref.node)) {
                return this.cache.get(ref.node);
            }
            // Seal the registry to protect the integrity of the `LocalModuleScope` cache.
            this.sealed = true;
            // `ref` should be an NgModule previously added to the registry. If not, a scope for it
            // cannot be produced.
            var ngModule = this.localReader.getNgModuleMetadata(ref);
            if (ngModule === null) {
                this.cache.set(ref.node, null);
                return null;
            }
            // Modules which contributed to the compilation scope of this module.
            var compilationModules = new Set([ngModule.ref.node]);
            // Modules which contributed to the export scope of this module.
            var exportedModules = new Set([ngModule.ref.node]);
            // Errors produced during computation of the scope are recorded here. At the end, if this array
            // isn't empty then `undefined` will be cached and returned to indicate this scope is invalid.
            var diagnostics = [];
            // At this point, the goal is to produce two distinct transitive sets:
            // - the directives and pipes which are visible to components declared in the NgModule.
            // - the directives and pipes which are exported to any NgModules which import this one.
            // Directives and pipes in the compilation scope.
            var compilationDirectives = new Map();
            var compilationPipes = new Map();
            var declared = new Set();
            // Directives and pipes exported to any importing NgModules.
            var exportDirectives = new Map();
            var exportPipes = new Map();
            try {
                // The algorithm is as follows:
                // 1) Add all of the directives/pipes from each NgModule imported into the current one to the
                //    compilation scope.
                // 2) Add directives/pipes declared in the NgModule to the compilation scope. At this point, the
                //    compilation scope is complete.
                // 3) For each entry in the NgModule's exports:
                //    a) Attempt to resolve it as an NgModule with its own exported directives/pipes. If it is
                //       one, add them to the export scope of this NgModule.
                //    b) Otherwise, it should be a class in the compilation scope of this NgModule. If it is,
                //       add it to the export scope.
                //    c) If it's neither an NgModule nor a directive/pipe in the compilation scope, then this
                //       is an error.
                // 1) process imports.
                for (var _k = tslib_1.__values(ngModule.imports), _l = _k.next(); !_l.done; _l = _k.next()) {
                    var decl = _l.value;
                    var importScope = this.getExportedScope(decl, diagnostics, ref.node, 'import');
                    if (importScope === null) {
                        // An import wasn't an NgModule, so record an error.
                        diagnostics.push(invalidRef(ref.node, decl, 'import'));
                        continue;
                    }
                    else if (importScope === undefined) {
                        // An import was an NgModule but contained errors of its own. Record this as an error too,
                        // because this scope is always going to be incorrect if one of its imports could not be
                        // read.
                        diagnostics.push(invalidTransitiveNgModuleRef(ref.node, decl, 'import'));
                        continue;
                    }
                    try {
                        for (var _m = (e_3 = void 0, tslib_1.__values(importScope.exported.directives)), _o = _m.next(); !_o.done; _o = _m.next()) {
                            var directive = _o.value;
                            compilationDirectives.set(directive.ref.node, directive);
                        }
                    }
                    catch (e_3_1) { e_3 = { error: e_3_1 }; }
                    finally {
                        try {
                            if (_o && !_o.done && (_b = _m.return)) _b.call(_m);
                        }
                        finally { if (e_3) throw e_3.error; }
                    }
                    try {
                        for (var _p = (e_4 = void 0, tslib_1.__values(importScope.exported.pipes)), _q = _p.next(); !_q.done; _q = _p.next()) {
                            var pipe = _q.value;
                            compilationPipes.set(pipe.ref.node, pipe);
                        }
                    }
                    catch (e_4_1) { e_4 = { error: e_4_1 }; }
                    finally {
                        try {
                            if (_q && !_q.done && (_c = _p.return)) _c.call(_p);
                        }
                        finally { if (e_4) throw e_4.error; }
                    }
                    try {
                        for (var _r = (e_5 = void 0, tslib_1.__values(importScope.exported.ngModules)), _s = _r.next(); !_s.done; _s = _r.next()) {
                            var importedModule = _s.value;
                            compilationModules.add(importedModule);
                        }
                    }
                    catch (e_5_1) { e_5 = { error: e_5_1 }; }
                    finally {
                        try {
                            if (_s && !_s.done && (_d = _r.return)) _d.call(_r);
                        }
                        finally { if (e_5) throw e_5.error; }
                    }
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (_l && !_l.done && (_a = _k.return)) _a.call(_k);
                }
                finally { if (e_2) throw e_2.error; }
            }
            try {
                // 2) add declarations.
                for (var _t = tslib_1.__values(ngModule.declarations), _u = _t.next(); !_u.done; _u = _t.next()) {
                    var decl = _u.value;
                    var directive = this.localReader.getDirectiveMetadata(decl);
                    var pipe = this.localReader.getPipeMetadata(decl);
                    if (directive !== null) {
                        compilationDirectives.set(decl.node, tslib_1.__assign(tslib_1.__assign({}, directive), { ref: decl }));
                    }
                    else if (pipe !== null) {
                        compilationPipes.set(decl.node, tslib_1.__assign(tslib_1.__assign({}, pipe), { ref: decl }));
                    }
                    else {
                        this.taintedModules.add(ngModule.ref.node);
                        var errorNode = decl.getOriginForDiagnostics(ngModule.rawDeclarations);
                        diagnostics.push(diagnostics_1.makeDiagnostic(diagnostics_1.ErrorCode.NGMODULE_INVALID_DECLARATION, errorNode, "The class '" + decl.node.name.text + "' is listed in the declarations " +
                            ("of the NgModule '" + ngModule.ref.node.name
                                .text + "', but is not a directive, a component, or a pipe. ") +
                            "Either remove it from the NgModule's declarations, or add an appropriate Angular decorator.", [diagnostics_1.makeRelatedInformation(decl.node.name, "'" + decl.node.name.text + "' is declared here.")]));
                        continue;
                    }
                    declared.add(decl.node);
                }
            }
            catch (e_6_1) { e_6 = { error: e_6_1 }; }
            finally {
                try {
                    if (_u && !_u.done && (_e = _t.return)) _e.call(_t);
                }
                finally { if (e_6) throw e_6.error; }
            }
            try {
                // 3) process exports.
                // Exports can contain modules, components, or directives. They're processed differently.
                // Modules are straightforward. Directives and pipes from exported modules are added to the
                // export maps. Directives/pipes are different - they might be exports of declared types or
                // imported types.
                for (var _v = tslib_1.__values(ngModule.exports), _w = _v.next(); !_w.done; _w = _v.next()) {
                    var decl = _w.value;
                    // Attempt to resolve decl as an NgModule.
                    var importScope = this.getExportedScope(decl, diagnostics, ref.node, 'export');
                    if (importScope === undefined) {
                        // An export was an NgModule but contained errors of its own. Record this as an error too,
                        // because this scope is always going to be incorrect if one of its exports could not be
                        // read.
                        diagnostics.push(invalidTransitiveNgModuleRef(ref.node, decl, 'export'));
                        continue;
                    }
                    else if (importScope !== null) {
                        try {
                            // decl is an NgModule.
                            for (var _x = (e_8 = void 0, tslib_1.__values(importScope.exported.directives)), _y = _x.next(); !_y.done; _y = _x.next()) {
                                var directive = _y.value;
                                exportDirectives.set(directive.ref.node, directive);
                            }
                        }
                        catch (e_8_1) { e_8 = { error: e_8_1 }; }
                        finally {
                            try {
                                if (_y && !_y.done && (_g = _x.return)) _g.call(_x);
                            }
                            finally { if (e_8) throw e_8.error; }
                        }
                        try {
                            for (var _z = (e_9 = void 0, tslib_1.__values(importScope.exported.pipes)), _0 = _z.next(); !_0.done; _0 = _z.next()) {
                                var pipe = _0.value;
                                exportPipes.set(pipe.ref.node, pipe);
                            }
                        }
                        catch (e_9_1) { e_9 = { error: e_9_1 }; }
                        finally {
                            try {
                                if (_0 && !_0.done && (_h = _z.return)) _h.call(_z);
                            }
                            finally { if (e_9) throw e_9.error; }
                        }
                        try {
                            for (var _1 = (e_10 = void 0, tslib_1.__values(importScope.exported.ngModules)), _2 = _1.next(); !_2.done; _2 = _1.next()) {
                                var exportedModule = _2.value;
                                exportedModules.add(exportedModule);
                            }
                        }
                        catch (e_10_1) { e_10 = { error: e_10_1 }; }
                        finally {
                            try {
                                if (_2 && !_2.done && (_j = _1.return)) _j.call(_1);
                            }
                            finally { if (e_10) throw e_10.error; }
                        }
                    }
                    else if (compilationDirectives.has(decl.node)) {
                        // decl is a directive or component in the compilation scope of this NgModule.
                        var directive = compilationDirectives.get(decl.node);
                        exportDirectives.set(decl.node, directive);
                    }
                    else if (compilationPipes.has(decl.node)) {
                        // decl is a pipe in the compilation scope of this NgModule.
                        var pipe = compilationPipes.get(decl.node);
                        exportPipes.set(decl.node, pipe);
                    }
                    else {
                        // decl is an unknown export.
                        if (this.localReader.getDirectiveMetadata(decl) !== null ||
                            this.localReader.getPipeMetadata(decl) !== null) {
                            diagnostics.push(invalidReexport(ref.node, decl));
                        }
                        else {
                            diagnostics.push(invalidRef(ref.node, decl, 'export'));
                        }
                        continue;
                    }
                }
            }
            catch (e_7_1) { e_7 = { error: e_7_1 }; }
            finally {
                try {
                    if (_w && !_w.done && (_f = _v.return)) _f.call(_v);
                }
                finally { if (e_7) throw e_7.error; }
            }
            var exported = {
                directives: Array.from(exportDirectives.values()),
                pipes: Array.from(exportPipes.values()),
                ngModules: Array.from(exportedModules),
            };
            var reexports = this.getReexports(ngModule, ref, declared, exported, diagnostics);
            // Check if this scope had any errors during production.
            if (diagnostics.length > 0) {
                // Cache undefined, to mark the fact that the scope is invalid.
                this.cache.set(ref.node, undefined);
                // Save the errors for retrieval.
                this.scopeErrors.set(ref.node, diagnostics);
                // Mark this module as being tainted.
                this.taintedModules.add(ref.node);
                return undefined;
            }
            // Finally, produce the `LocalModuleScope` with both the compilation and export scopes.
            var scope = {
                compilation: {
                    directives: Array.from(compilationDirectives.values()),
                    pipes: Array.from(compilationPipes.values()),
                    ngModules: Array.from(compilationModules),
                },
                exported: exported,
                reexports: reexports,
                schemas: ngModule.schemas,
            };
            this.cache.set(ref.node, scope);
            return scope;
        };
        /**
         * Check whether a component requires remote scoping.
         */
        LocalModuleScopeRegistry.prototype.getRequiresRemoteScope = function (node) {
            return this.remoteScoping.has(node);
        };
        /**
         * Set a component as requiring remote scoping.
         */
        LocalModuleScopeRegistry.prototype.setComponentAsRequiringRemoteScoping = function (node) {
            this.remoteScoping.add(node);
        };
        /**
         * Look up the `ExportScope` of a given `Reference` to an NgModule.
         *
         * The NgModule in question may be declared locally in the current ts.Program, or it may be
         * declared in a .d.ts file.
         *
         * @returns `null` if no scope could be found, or `undefined` if an invalid scope
         * was found.
         *
         * May also contribute diagnostics of its own by adding to the given `diagnostics`
         * array parameter.
         */
        LocalModuleScopeRegistry.prototype.getExportedScope = function (ref, diagnostics, ownerForErrors, type) {
            if (ref.node.getSourceFile().isDeclarationFile) {
                // The NgModule is declared in a .d.ts file. Resolve it with the `DependencyScopeReader`.
                if (!ts.isClassDeclaration(ref.node)) {
                    // The NgModule is in a .d.ts file but is not declared as a ts.ClassDeclaration. This is an
                    // error in the .d.ts metadata.
                    var code = type === 'import' ? diagnostics_1.ErrorCode.NGMODULE_INVALID_IMPORT :
                        diagnostics_1.ErrorCode.NGMODULE_INVALID_EXPORT;
                    diagnostics.push(diagnostics_1.makeDiagnostic(code, typescript_1.identifierOfNode(ref.node) || ref.node, "Appears in the NgModule." + type + "s of " + typescript_1.nodeNameForError(ownerForErrors) + ", but could not be resolved to an NgModule"));
                    return undefined;
                }
                return this.dependencyScopeReader.resolve(ref);
            }
            else {
                // The NgModule is declared locally in the current program. Resolve it from the registry.
                return this.getScopeOfModuleReference(ref);
            }
        };
        LocalModuleScopeRegistry.prototype.getReexports = function (ngModule, ref, declared, exported, diagnostics) {
            var e_11, _a, e_12, _b;
            var _this = this;
            var reexports = null;
            var sourceFile = ref.node.getSourceFile();
            if (this.aliasingHost === null) {
                return null;
            }
            reexports = [];
            // Track re-exports by symbol name, to produce diagnostics if two alias re-exports would share
            // the same name.
            var reexportMap = new Map();
            // Alias ngModuleRef added for readability below.
            var ngModuleRef = ref;
            var addReexport = function (exportRef) {
                if (exportRef.node.getSourceFile() === sourceFile) {
                    return;
                }
                var isReExport = !declared.has(exportRef.node);
                var exportName = _this.aliasingHost.maybeAliasSymbolAs(exportRef, sourceFile, ngModule.ref.node.name.text, isReExport);
                if (exportName === null) {
                    return;
                }
                if (!reexportMap.has(exportName)) {
                    if (exportRef.alias && exportRef.alias instanceof compiler_1.ExternalExpr) {
                        reexports.push({
                            fromModule: exportRef.alias.value.moduleName,
                            symbolName: exportRef.alias.value.name,
                            asAlias: exportName,
                        });
                    }
                    else {
                        var expr = _this.refEmitter.emit(exportRef.cloneWithNoIdentifiers(), sourceFile);
                        if (!(expr instanceof compiler_1.ExternalExpr) || expr.value.moduleName === null ||
                            expr.value.name === null) {
                            throw new Error('Expected ExternalExpr');
                        }
                        reexports.push({
                            fromModule: expr.value.moduleName,
                            symbolName: expr.value.name,
                            asAlias: exportName,
                        });
                    }
                    reexportMap.set(exportName, exportRef);
                }
                else {
                    // Another re-export already used this name. Produce a diagnostic.
                    var prevRef = reexportMap.get(exportName);
                    diagnostics.push(reexportCollision(ngModuleRef.node, prevRef, exportRef));
                }
            };
            try {
                for (var _c = tslib_1.__values(exported.directives), _d = _c.next(); !_d.done; _d = _c.next()) {
                    var ref_1 = _d.value.ref;
                    addReexport(ref_1);
                }
            }
            catch (e_11_1) { e_11 = { error: e_11_1 }; }
            finally {
                try {
                    if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
                }
                finally { if (e_11) throw e_11.error; }
            }
            try {
                for (var _e = tslib_1.__values(exported.pipes), _f = _e.next(); !_f.done; _f = _e.next()) {
                    var ref_2 = _f.value.ref;
                    addReexport(ref_2);
                }
            }
            catch (e_12_1) { e_12 = { error: e_12_1 }; }
            finally {
                try {
                    if (_f && !_f.done && (_b = _e.return)) _b.call(_e);
                }
                finally { if (e_12) throw e_12.error; }
            }
            return reexports;
        };
        LocalModuleScopeRegistry.prototype.assertCollecting = function () {
            if (this.sealed) {
                throw new Error("Assertion: LocalModuleScopeRegistry is not COLLECTING");
            }
        };
        return LocalModuleScopeRegistry;
    }());
    exports.LocalModuleScopeRegistry = LocalModuleScopeRegistry;
    /**
     * Produce a `ts.Diagnostic` for an invalid import or export from an NgModule.
     */
    function invalidRef(clazz, decl, type) {
        var code = type === 'import' ? diagnostics_1.ErrorCode.NGMODULE_INVALID_IMPORT : diagnostics_1.ErrorCode.NGMODULE_INVALID_EXPORT;
        var resolveTarget = type === 'import' ? 'NgModule' : 'NgModule, Component, Directive, or Pipe';
        var message = "Appears in the NgModule." + type + "s of " + typescript_1.nodeNameForError(clazz) + ", but could not be resolved to an " + resolveTarget + " class." +
            '\n\n';
        var library = decl.ownedByModuleGuess !== null ? " (" + decl.ownedByModuleGuess + ")" : '';
        var sf = decl.node.getSourceFile();
        // Provide extra context to the error for the user.
        if (!sf.isDeclarationFile) {
            // This is a file in the user's program.
            var annotationType = type === 'import' ? '@NgModule' : 'Angular';
            message += "Is it missing an " + annotationType + " annotation?";
        }
        else if (sf.fileName.indexOf('node_modules') !== -1) {
            // This file comes from a third-party library in node_modules.
            message +=
                "This likely means that the library" + library + " which declares " + decl.debugName + " has not " +
                    'been processed correctly by ngcc, or is not compatible with Angular Ivy. Check if a ' +
                    'newer version of the library is available, and update if so. Also consider checking ' +
                    'with the library\'s authors to see if the library is expected to be compatible with Ivy.';
        }
        else {
            // This is a monorepo style local dependency. Unfortunately these are too different to really
            // offer much more advice than this.
            message += "This likely means that the dependency" + library + " which declares " + decl.debugName + " has not been processed correctly by ngcc.";
        }
        return diagnostics_1.makeDiagnostic(code, typescript_1.identifierOfNode(decl.node) || decl.node, message);
    }
    /**
     * Produce a `ts.Diagnostic` for an import or export which itself has errors.
     */
    function invalidTransitiveNgModuleRef(clazz, decl, type) {
        var code = type === 'import' ? diagnostics_1.ErrorCode.NGMODULE_INVALID_IMPORT : diagnostics_1.ErrorCode.NGMODULE_INVALID_EXPORT;
        return diagnostics_1.makeDiagnostic(code, typescript_1.identifierOfNode(decl.node) || decl.node, "Appears in the NgModule." + type + "s of " + typescript_1.nodeNameForError(clazz) + ", but itself has errors");
    }
    /**
     * Produce a `ts.Diagnostic` for an exported directive or pipe which was not declared or imported
     * by the NgModule in question.
     */
    function invalidReexport(clazz, decl) {
        return diagnostics_1.makeDiagnostic(diagnostics_1.ErrorCode.NGMODULE_INVALID_REEXPORT, typescript_1.identifierOfNode(decl.node) || decl.node, "Present in the NgModule.exports of " + typescript_1.nodeNameForError(clazz) + " but neither declared nor imported");
    }
    /**
     * Produce a `ts.Diagnostic` for a collision in re-export names between two directives/pipes.
     */
    function reexportCollision(module, refA, refB) {
        var childMessageText = "This directive/pipe is part of the exports of '" + module.name.text + "' and shares the same name as another exported directive/pipe.";
        return diagnostics_1.makeDiagnostic(diagnostics_1.ErrorCode.NGMODULE_REEXPORT_NAME_COLLISION, module.name, ("\n    There was a name collision between two classes named '" + refA.node.name.text + "', which are both part of the exports of '" + module.name.text + "'.\n\n    Angular generates re-exports of an NgModule's exported directives/pipes from the module's source file in certain cases, using the declared name of the class. If two classes of the same name are exported, this automatic naming does not work.\n\n    To fix this problem please re-export one or both classes directly from this file.\n  ").trim(), [
            diagnostics_1.makeRelatedInformation(refA.node.name, childMessageText),
            diagnostics_1.makeRelatedInformation(refB.node.name, childMessageText),
        ]);
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibG9jYWwuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3Njb3BlL3NyYy9sb2NhbC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBRUgsOENBQStEO0lBQy9ELCtCQUFpQztJQUVqQywyRUFBb0Y7SUFJcEYsa0ZBQTZFO0lBNEI3RTs7Ozs7Ozs7Ozs7Ozs7Ozs7O09Ba0JHO0lBQ0g7UUEwREUsa0NBQ1ksV0FBMkIsRUFBVSxxQkFBNkMsRUFDbEYsVUFBNEIsRUFBVSxZQUErQjtZQURyRSxnQkFBVyxHQUFYLFdBQVcsQ0FBZ0I7WUFBVSwwQkFBcUIsR0FBckIscUJBQXFCLENBQXdCO1lBQ2xGLGVBQVUsR0FBVixVQUFVLENBQWtCO1lBQVUsaUJBQVksR0FBWixZQUFZLENBQW1CO1lBM0RqRjs7OztlQUlHO1lBQ0ssV0FBTSxHQUFHLEtBQUssQ0FBQztZQUV2Qjs7Ozs7O2VBTUc7WUFDSyx3QkFBbUIsR0FBRyxJQUFJLEdBQUcsRUFBcUMsQ0FBQztZQUUzRTs7O2VBR0c7WUFDSywwQkFBcUIsR0FDekIsSUFBSSxHQUFHLEVBQTRELENBQUM7WUFFaEUsZ0JBQVcsR0FBRyxJQUFJLEdBQUcsRUFBaUQsQ0FBQztZQUUvRTs7Ozs7ZUFLRztZQUNLLFVBQUssR0FBRyxJQUFJLEdBQUcsRUFBcUQsQ0FBQztZQUU3RTs7Ozs7OztlQU9HO1lBQ0ssa0JBQWEsR0FBRyxJQUFJLEdBQUcsRUFBb0IsQ0FBQztZQUVwRDs7ZUFFRztZQUNLLGdCQUFXLEdBQUcsSUFBSSxHQUFHLEVBQXFDLENBQUM7WUFFbkU7Ozs7OztlQU1HO1lBQ0ssbUJBQWMsR0FBRyxJQUFJLEdBQUcsRUFBb0IsQ0FBQztRQUkrQixDQUFDO1FBRXJGOztXQUVHO1FBQ0gsMkRBQXdCLEdBQXhCLFVBQXlCLElBQWtCOztZQUN6QyxJQUFJLENB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QUFDLElBQUksQ0FBQyxJQUFJLEVBQUUsZ0JBQWdCLENBQUM7WUFDeEQsb0NBQXNCLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxJQUFJLEVBQUUsZ0JBQWdCLENBQUM7U0FDekQsQ0FBQyxDQUFDO0lBQ1QsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0V4dGVybmFsRXhwciwgU2NoZW1hTWV0YWRhdGF9IGZyb20gJ0Bhbmd1bGFyL2NvbXBpbGVyJztcbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge0Vycm9yQ29kZSwgbWFrZURpYWdub3N0aWMsIG1ha2VSZWxhdGVkSW5mb3JtYXRpb259IGZyb20gJy4uLy4uL2RpYWdub3N0aWNzJztcbmltcG9ydCB7QWxpYXNpbmdIb3N0LCBSZWV4cG9ydCwgUmVmZXJlbmNlLCBSZWZlcmVuY2VFbWl0dGVyfSBmcm9tICcuLi8uLi9pbXBvcnRzJztcbmltcG9ydCB7RGlyZWN0aXZlTWV0YSwgTWV0YWRhdGFSZWFkZXIsIE1ldGFkYXRhUmVnaXN0cnksIE5nTW9kdWxlTWV0YSwgUGlwZU1ldGF9IGZyb20gJy4uLy4uL21ldGFkYXRhJztcbmltcG9ydCB7Q2xhc3NEZWNsYXJhdGlvbn0gZnJvbSAnLi4vLi4vcmVmbGVjdGlvbic7XG5pbXBvcnQge2lkZW50aWZpZXJPZk5vZGUsIG5vZGVOYW1lRm9yRXJyb3J9IGZyb20gJy4uLy4uL3V0aWwvc3JjL3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge0V4cG9ydFNjb3BlLCBTY29wZURhdGF9IGZyb20gJy4vYXBpJztcbmltcG9ydCB7Q29tcG9uZW50U2NvcGVSZWFkZXJ9IGZyb20gJy4vY29tcG9uZW50X3Njb3BlJztcbmltcG9ydCB7RHRzTW9kdWxlU2NvcGVSZXNvbHZlcn0gZnJvbSAnLi9kZXBlbmRlbmN5JztcblxuZXhwb3J0IGludGVyZmFjZSBMb2NhbE5nTW9kdWxlRGF0YSB7XG4gIGRlY2xhcmF0aW9uczogUmVmZXJlbmNlPENsYXNzRGVjbGFyYXRpb24+W107XG4gIGltcG9ydHM6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPltdO1xuICBleHBvcnRzOiBSZWZlcmVuY2U8Q2xhc3NEZWNsYXJhdGlvbj5bXTtcbn1cblxuZXhwb3J0IGludGVyZmFjZSBMb2NhbE1vZHVsZVNjb3BlIGV4dGVuZHMgRXhwb3J0U2NvcGUge1xuICBjb21waWxhdGlvbjogU2NvcGVEYXRhO1xuICByZWV4cG9ydHM6IFJlZXhwb3J0W118bnVsbDtcbiAgc2NoZW1hczogU2NoZW1hTWV0YWRhdGFbXTtcbn1cblxuLyoqXG4gKiBJbmZvcm1hdGlvbiBhYm91dCB0aGUgY29tcGlsYXRpb24gc2NvcGUgb2YgYSByZWdpc3RlcmVkIGRlY2xhcmF0aW9uLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIENvbXBpbGF0aW9uU2NvcGUgZXh0ZW5kcyBTY29wZURhdGEge1xuICAvKiogVGhlIGRlY2xhcmF0aW9uIHdob3NlIGNvbXBpbGF0aW9uIHNjb3BlIGlzIGRlc2NyaWJlZCBoZXJlLiAqL1xuICBkZWNsYXJhdGlvbjogQ2xhc3NEZWNsYXJhdGlvbjtcbiAgLyoqIFRoZSBkZWNsYXJhdGlvbiBvZiB0aGUgTmdNb2R1bGUgdGhhdCBkZWNsYXJlcyB0aGlzIGBkZWNsYXJhdGlvbmAuICovXG4gIG5nTW9kdWxlOiBDbGFzc0RlY2xhcmF0aW9uO1xufVxuXG4vKipcbiAqIEEgcmVnaXN0cnkgd2hpY2ggY29sbGVjdHMgaW5mb3JtYXRpb24gYWJvdXQgTmdNb2R1bGVzLCBEaXJlY3RpdmVzLCBDb21wb25lbnRzLCBhbmQgUGlwZXMgd2hpY2hcbiAqIGFyZSBsb2NhbCAoZGVjbGFyZWQgaW4gdGhlIHRzLlByb2dyYW0gYmVpbmcgY29tcGlsZWQpLCBhbmQgY2FuIHByb2R1Y2UgYExvY2FsTW9kdWxlU2NvcGVgc1xuICogd2hpY2ggc3VtbWFyaXplIHRoZSBjb21waWxhdGlvbiBzY29wZSBvZiBhIGNvbXBvbmVudC5cbiAqXG4gKiBUaGlzIGNsYXNzIGltcGxlbWVudHMgdGhlIGxvZ2ljIG9mIE5nTW9kdWxlIGRlY2xhcmF0aW9ucywgaW1wb3J0cywgYW5kIGV4cG9ydHMgYW5kIGNhbiBwcm9kdWNlLFxuICogZm9yIGEgZ2l2ZW4gY29tcG9uZW50LCB0aGUgc2V0IG9mIGRpcmVjdGl2ZXMgYW5kIHBpcGVzIHdoaWNoIGFyZSBcInZpc2libGVcIiBpbiB0aGF0IGNvbXBvbmVudCdzXG4gKiB0ZW1wbGF0ZS5cbiAqXG4gKiBUaGUgYExvY2FsTW9kdWxlU2NvcGVSZWdpc3RyeWAgaGFzIHR3byBcIm1vZGVzXCIgb2Ygb3BlcmF0aW9uLiBEdXJpbmcgYW5hbHlzaXMsIGRhdGEgZm9yIGVhY2hcbiAqIGluZGl2aWR1YWwgTmdNb2R1bGUsIERpcmVjdGl2ZSwgQ29tcG9uZW50LCBhbmQgUGlwZSBpcyBhZGRlZCB0byB0aGUgcmVnaXN0cnkuIE5vIGF0dGVtcHQgaXMgbWFkZVxuICogdG8gdHJhdmVyc2Ugb3IgdmFsaWRhdGUgdGhlIE5nTW9kdWxlIGdyYXBoIChpbXBvcnRzLCBleHBvcnRzLCBldGMpLiBBZnRlciBhbmFseXNpcywgb25lIG9mXG4gKiBgZ2V0U2NvcGVPZk1vZHVsZWAgb3IgYGdldFNjb3BlRm9yQ29tcG9uZW50YCBjYW4gYmUgY2FsbGVkLCB3aGljaCB0cmF2ZXJzZXMgdGhlIE5nTW9kdWxlIGdyYXBoXG4gKiBhbmQgYXBwbGllcyB0aGUgTmdNb2R1bGUgbG9naWMgdG8gZ2VuZXJhdGUgYSBgTG9jYWxNb2R1bGVTY29wZWAsIHRoZSBmdWxsIHNjb3BlIGZvciB0aGUgZ2l2ZW5cbiAqIG1vZHVsZSBvciBjb21wb25lbnQuXG4gKlxuICogVGhlIGBMb2NhbE1vZHVsZVNjb3BlUmVnaXN0cnlgIGlzIGFsc28gY2FwYWJsZSBvZiBwcm9kdWNpbmcgYHRzLkRpYWdub3N0aWNgIGVycm9ycyB3aGVuIEFuZ3VsYXJcbiAqIHNlbWFudGljcyBhcmUgdmlvbGF0ZWQuXG4gKi9cbmV4cG9ydCBjbGFzcyBMb2NhbE1vZHVsZVNjb3BlUmVnaXN0cnkgaW1wbGVtZW50cyBNZXRhZGF0YVJlZ2lzdHJ5LCBDb21wb25lbnRTY29wZVJlYWRlciB7XG4gIC8qKlxuICAgKiBUcmFja3Mgd2hldGhlciB0aGUgcmVnaXN0cnkgaGFzIGJlZW4gYXNrZWQgdG8gcHJvZHVjZSBzY29wZXMgZm9yIGEgbW9kdWxlIG9yIGNvbXBvbmVudC4gT25jZVxuICAgKiB0aGlzIGlzIHRydWUsIHRoZSByZWdpc3RyeSBjYW5ub3QgYWNjZXB0IHJlZ2lzdHJhdGlvbnMgb2YgbmV3IGRpcmVjdGl2ZXMvcGlwZXMvbW9kdWxlcyBhcyBpdFxuICAgKiB3b3VsZCBpbnZhbGlkYXRlIHRoZSBjYWNoZWQgc2NvcGUgZGF0YS5cbiAgICovXG4gIHByaXZhdGUgc2VhbGVkID0gZmFsc2U7XG5cbiAgLyoqXG4gICAqIEEgbWFwIG9mIGNvbXBvbmVudHMgZnJvbSB0aGUgY3VycmVudCBjb21waWxhdGlvbiB1bml0IHRvIHRoZSBOZ01vZHVsZSB3aGljaCBkZWNsYXJlZCB0aGVtLlxuICAgKlxuICAgKiBBcyBjb21wb25lbnRzIGFuZCBkaXJlY3RpdmVzIGFyZSBub3QgZGlzdGluZ3Vpc2hlZCBhdCB0aGUgTmdNb2R1bGUgbGV2ZWwsIHRoaXMgbWFwIG1heSBhbHNvXG4gICAqIGNvbnRhaW4gZGlyZWN0aXZlcy4gVGhpcyBkb2Vzbid0IGNhdXNlIGFueSBwcm9ibGVtcyBidXQgaXNuJ3QgdXNlZnVsIGFzIHRoZXJlIGlzIG5vIGNvbmNlcHQgb2ZcbiAgICogYSBkaXJlY3RpdmUncyBjb21waWxhdGlvbiBzY29wZS5cbiAgICovXG4gIHByaXZhdGUgZGVjbGFyYXRpb25Ub01vZHVsZSA9IG5ldyBNYXA8Q2xhc3NEZWNsYXJhdGlvbiwgRGVjbGFyYXRpb25EYXRhPigpO1xuXG4gIC8qKlxuICAgKiBUaGlzIG1hcHMgZnJvbSB0aGUgZGlyZWN0aXZlL3BpcGUgY2xhc3MgdG8gYSBtYXAgb2YgZGF0YSBmb3IgZWFjaCBOZ01vZHVsZSB0aGF0IGRlY2xhcmVzIHRoZVxuICAgKiBkaXJlY3RpdmUvcGlwZS4gVGhpcyBkYXRhIGlzIG5lZWRlZCB0byBwcm9kdWNlIGFuIGVycm9yIGZvciB0aGUgZ2l2ZW4gY2xhc3MuXG4gICAqL1xuICBwcml2YXRlIGR1cGxpY2F0ZURlY2xhcmF0aW9ucyA9XG4gICAgICBuZXcgTWFwPENsYXNzRGVjbGFyYXRpb24sIE1hcDxDbGFzc0RlY2xhcmF0aW9uLCBEZWNsYXJhdGlvbkRhdGE+PigpO1xuXG4gIHByaXZhdGUgbW9kdWxlVG9SZWYgPSBuZXcgTWFwPENsYXNzRGVjbGFyYXRpb24sIFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPj4oKTtcblxuICAvKipcbiAgICogQSBjYWNoZSBvZiBjYWxjdWxhdGVkIGBMb2NhbE1vZHVsZVNjb3BlYHMgZm9yIGVhY2ggTmdNb2R1bGUgZGVjbGFyZWQgaW4gdGhlIGN1cnJlbnQgcHJvZ3JhbS5cbiAgICpcbiAgICogQSB2YWx1ZSBvZiBgdW5kZWZpbmVkYCBpbmRpY2F0ZXMgdGhlIHNjb3BlIHdhcyBpbnZhbGlkIGFuZCBwcm9kdWNlZCBlcnJvcnMgKHRoZXJlZm9yZSxcbiAgICogZGlhZ25vc3RpY3Mgc2hvdWxkIGV4aXN0IGluIHRoZSBgc2NvcGVFcnJvcnNgIG1hcCkuXG4gICAqL1xuICBwcml2YXRlIGNhY2hlID0gbmV3IE1hcDxDbGFzc0RlY2xhcmF0aW9uLCBMb2NhbE1vZHVsZVNjb3BlfHVuZGVmaW5lZHxudWxsPigpO1xuXG4gIC8qKlxuICAgKiBUcmFja3Mgd2hldGhlciBhIGdpdmVuIGNvbXBvbmVudCByZXF1aXJlcyBcInJlbW90ZSBzY29waW5nXCIuXG4gICAqXG4gICAqIFJlbW90ZSBzY29waW5nIGlzIHdoZW4gdGhlIHNldCBvZiBkaXJlY3RpdmVzIHdoaWNoIGFwcGx5IHRvIGEgZ2l2ZW4gY29tcG9uZW50IGlzIHNldCBpbiB0aGVcbiAgICogTmdNb2R1bGUncyBmaWxlIGluc3RlYWQgb2YgZGlyZWN0bHkgb24gdGhlIGNvbXBvbmVudCBkZWYgKHdoaWNoIGlzIHNvbWV0aW1lcyBuZWVkZWQgdG8gZ2V0XG4gICAqIGFyb3VuZCBjeWNsaWMgaW1wb3J0IGlzc3VlcykuIFRoaXMgaXMgbm90IHVzZWQgaW4gY2FsY3VsYXRpb24gb2YgYExvY2FsTW9kdWxlU2NvcGVgcywgYnV0IGlzXG4gICAqIHRyYWNrZWQgaGVyZSBmb3IgY29udmVuaWVuY2UuXG4gICAqL1xuICBwcml2YXRlIHJlbW90ZVNjb3BpbmcgPSBuZXcgU2V0PENsYXNzRGVjbGFyYXRpb24+KCk7XG5cbiAgLyoqXG4gICAqIFRyYWNrcyBlcnJvcnMgYWNjdW11bGF0ZWQgaW4gdGhlIHByb2Nlc3Npbmcgb2Ygc2NvcGVzIGZvciBlYWNoIG1vZHVsZSBkZWNsYXJhdGlvbi5cbiAgICovXG4gIHByaXZhdGUgc2NvcGVFcnJvcnMgPSBuZXcgTWFwPENsYXNzRGVjbGFyYXRpb24sIHRzLkRpYWdub3N0aWNbXT4oKTtcblxuICAvKipcbiAgICogVHJhY2tzIHdoaWNoIE5nTW9kdWxlcyBhcmUgdW5yZWxpYWJsZSBkdWUgdG8gZXJyb3JzIHdpdGhpbiB0aGVpciBkZWNsYXJhdGlvbnMuXG4gICAqXG4gICAqIFRoaXMgcHJvdmlkZXMgYSB1bmlmaWVkIHZpZXcgb2Ygd2hpY2ggbW9kdWxlcyBoYXZlIGVycm9ycywgYWNyb3NzIGFsbCBvZiB0aGUgZGlmZmVyZW50XG4gICAqIGRpYWdub3N0aWMgY2F0ZWdvcmllcyB0aGF0IGNhbiBiZSBwcm9kdWNlZC4gVGhlb3JldGljYWxseSB0aGlzIGNhbiBiZSBpbmZlcnJlZCBmcm9tIHRoZSBvdGhlclxuICAgKiBwcm9wZXJ0aWVzIG9mIHRoaXMgY2xhc3MsIGJ1dCBpcyB0cmFja2VkIGV4cGxpY2l0bHkgdG8gc2ltcGxpZnkgdGhlIGxvZ2ljLlxuICAgKi9cbiAgcHJpdmF0ZSB0YWludGVkTW9kdWxlcyA9IG5ldyBTZXQ8Q2xhc3NEZWNsYXJhdGlvbj4oKTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgbG9jYWxSZWFkZXI6IE1ldGFkYXRhUmVhZGVyLCBwcml2YXRlIGRlcGVuZGVuY3lTY29wZVJlYWRlcjogRHRzTW9kdWxlU2NvcGVSZXNvbHZlcixcbiAgICAgIHByaXZhdGUgcmVmRW1pdHRlcjogUmVmZXJlbmNlRW1pdHRlciwgcHJpdmF0ZSBhbGlhc2luZ0hvc3Q6IEFsaWFzaW5nSG9zdHxudWxsKSB7fVxuXG4gIC8qKlxuICAgKiBBZGQgYW4gTmdNb2R1bGUncyBkYXRhIHRvIHRoZSByZWdpc3RyeS5cbiAgICovXG4gIHJlZ2lzdGVyTmdNb2R1bGVNZXRhZGF0YShkYXRhOiBOZ01vZHVsZU1ldGEpOiB2b2lkIHtcbiAgICB0aGlzLmFzc2VydENvbGxlY3RpbmcoKTtcbiAgICBjb25zdCBuZ01vZHVsZSA9IGRhdGEucmVmLm5vZGU7XG4gICAgdGhpcy5tb2R1bGVUb1JlZi5zZXQoZGF0YS5yZWYubm9kZSwgZGF0YS5yZWYpO1xuICAgIC8vIEl0ZXJhdGUgb3ZlciB0aGUgbW9kdWxlJ3MgZGVjbGFyYXRpb25zLCBhbmQgYWRkIHRoZW0gdG8gZGVjbGFyYXRpb25Ub01vZHVsZS4gSWYgZHVwbGljYXRlc1xuICAgIC8vIGFyZSBmb3VuZCwgdGhleSdyZSBpbnN0ZWFkIHRyYWNrZWQgaW4gZHVwbGljYXRlRGVjbGFyYXRpb25zLlxuICAgIGZvciAoY29uc3QgZGVjbCBvZiBkYXRhLmRlY2xhcmF0aW9ucykge1xuICAgICAgdGhpcy5yZWdpc3RlckRlY2xhcmF0aW9uT2ZNb2R1bGUobmdNb2R1bGUsIGRlY2wsIGRhdGEucmF3RGVjbGFyYXRpb25zKTtcbiAgICB9XG4gIH1cblxuICByZWdpc3RlckRpcmVjdGl2ZU1ldGFkYXRhKGRpcmVjdGl2ZTogRGlyZWN0aXZlTWV0YSk6IHZvaWQge31cblxuICByZWdpc3RlclBpcGVNZXRhZGF0YShwaXBlOiBQaXBlTWV0YSk6IHZvaWQge31cblxuICBnZXRTY29wZUZvckNvbXBvbmVudChjbGF6ejogQ2xhc3NEZWNsYXJhdGlvbik6IExvY2FsTW9kdWxlU2NvcGV8bnVsbHwnZXJyb3InIHtcbiAgICBjb25zdCBzY29wZSA9ICF0aGlzLmRlY2xhcmF0aW9uVG9Nb2R1bGUuaGFzKGNsYXp6KSA/XG4gICAgICAgIG51bGwgOlxuICAgICAgICB0aGlzLmdldFNjb3BlT2ZNb2R1bGUodGhpcy5kZWNsYXJhdGlvblRvTW9kdWxlLmdldChjbGF6eikhLm5nTW9kdWxlKTtcbiAgICByZXR1cm4gc2NvcGU7XG4gIH1cblxuICAvKipcbiAgICogSWYgYG5vZGVgIGlzIGRlY2xhcmVkIGluIG1vcmUgdGhhbiBvbmUgTmdNb2R1bGUgKGR1cGxpY2F0ZSBkZWNsYXJhdGlvbiksIHRoZW4gZ2V0IHRoZVxuICAgKiBgRGVjbGFyYXRpb25EYXRhYCBmb3IgZWFjaCBvZmZlbmRpbmcgZGVjbGFyYXRpb24uXG4gICAqXG4gICAqIE9yZGluYXJpbHkgYSBjbGFzcyBpcyBvbmx5IGRlY2xhcmVkIGluIG9uZSBOZ01vZHVsZSwgaW4gd2hpY2ggY2FzZSB0aGlzIGZ1bmN0aW9uIHJldHVybnNcbiAgICogYG51bGxgLlxuICAgKi9cbiAgZ2V0RHVwbGljYXRlRGVjbGFyYXRpb25zKG5vZGU6IENsYXNzRGVjbGFyYXRpb24pOiBEZWNsYXJhdGlvbkRhdGFbXXxudWxsIHtcbiAgICBpZiAoIXRoaXMuZHVwbGljYXRlRGVjbGFyYXRpb25zLmhhcyhub2RlKSkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuXG4gICAgcmV0dXJuIEFycmF5LmZyb20odGhpcy5kdXBsaWNhdGVEZWNsYXJhdGlvbnMuZ2V0KG5vZGUpIS52YWx1ZXMoKSk7XG4gIH1cblxuICAvKipcbiAgICogQ29sbGVjdHMgcmVnaXN0ZXJlZCBkYXRhIGZvciBhIG1vZHVsZSBhbmQgaXRzIGRpcmVjdGl2ZXMvcGlwZXMgYW5kIGNvbnZlcnQgaXQgaW50byBhIGZ1bGxcbiAgICogYExvY2FsTW9kdWxlU2NvcGVgLlxuICAgKlxuICAgKiBUaGlzIG1ldGhvZCBpbXBsZW1lbnRzIHRoZSBsb2dpYyBvZiBOZ01vZHVsZSBpbXBvcnRzIGFuZCBleHBvcnRzLiBJdCByZXR1cm5zIHRoZVxuICAgKiBgTG9jYWxNb2R1bGVTY29wZWAgZm9yIHRoZSBnaXZlbiBOZ01vZHVsZSBpZiBvbmUgY2FuIGJlIHByb2R1Y2VkLCBgbnVsbGAgaWYgbm8gc2NvcGUgd2FzIGV2ZXJcbiAgICogZGVmaW5lZCwgb3IgdGhlIHN0cmluZyBgJ2Vycm9yJ2AgaWYgdGhlIHNjb3BlIGNvbnRhaW5lZCBlcnJvcnMuXG4gICAqL1xuICBnZXRTY29wZU9mTW9kdWxlKGNsYXp6OiBDbGFzc0RlY2xhcmF0aW9uKTogTG9jYWxNb2R1bGVTY29wZXwnZXJyb3InfG51bGwge1xuICAgIGNvbnN0IHNjb3BlID0gdGhpcy5tb2R1bGVUb1JlZi5oYXMoY2xhenopID9cbiAgICAgICAgdGhpcy5nZXRTY29wZU9mTW9kdWxlUmVmZXJlbmNlKHRoaXMubW9kdWxlVG9SZWYuZ2V0KGNsYXp6KSEpIDpcbiAgICAgICAgbnVsbDtcbiAgICAvLyBJZiB0aGUgTmdNb2R1bGUgY2xhc3MgaXMgbWFya2VkIGFzIHRhaW50ZWQsIGNvbnNpZGVyIGl0IGFuIGVycm9yLlxuICAgIGlmICh0aGlzLnRhaW50ZWRNb2R1bGVzLmhhcyhjbGF6eikpIHtcbiAgICAgIHJldHVybiAnZXJyb3InO1xuICAgIH1cblxuICAgIC8vIFRyYW5zbGF0ZSB1bmRlZmluZWQgLT4gJ2Vycm9yJy5cbiAgICByZXR1cm4gc2NvcGUgIT09IHVuZGVmaW5lZCA/IHNjb3BlIDogJ2Vycm9yJztcbiAgfVxuXG4gIC8qKlxuICAgKiBSZXRyaWV2ZXMgYW55IGB0cy5EaWFnbm9zdGljYHMgcHJvZHVjZWQgZHVyaW5nIHRoZSBjYWxjdWxhdGlvbiBvZiB0aGUgYExvY2FsTW9kdWxlU2NvcGVgIGZvclxuICAgKiB0aGUgZ2l2ZW4gTmdNb2R1bGUsIG9yIGBudWxsYCBpZiBubyBlcnJvcnMgd2VyZSBwcmVzZW50LlxuICAgKi9cbiAgZ2V0RGlhZ25vc3RpY3NPZk1vZHVsZShjbGF6ejogQ2xhc3NEZWNsYXJhdGlvbik6IHRzLkRpYWdub3N0aWNbXXxudWxsIHtcbiAgICAvLyBSZXF1aXJlZCB0byBlbnN1cmUgdGhlIGVycm9ycyBhcmUgcG9wdWxhdGVkIGZvciB0aGUgZ2l2ZW4gY2xhc3MuIElmIGl0IGhhcyBiZWVuIHByb2Nlc3NlZFxuICAgIC8vIGJlZm9yZSwgdGhpcyB3aWxsIGJlIGEgbm8tb3AgZHVlIHRvIHRoZSBzY29wZSBjYWNoZS5cbiAgICB0aGlzLmdldFNjb3BlT2ZNb2R1bGUoY2xhenopO1xuXG4gICAgaWYgKHRoaXMuc2NvcGVFcnJvcnMuaGFzKGNsYXp6KSkge1xuICAgICAgcmV0dXJuIHRoaXMuc2NvcGVFcnJvcnMuZ2V0KGNsYXp6KSE7XG4gICAgfSBlbHNlIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBSZXR1cm5zIGEgY29sbGVjdGlvbiBvZiB0aGUgY29tcGlsYXRpb24gc2NvcGUgZm9yIGVhY2ggcmVnaXN0ZXJlZCBkZWNsYXJhdGlvbi5cbiAgICovXG4gIGdldENvbXBpbGF0aW9uU2NvcGVzKCk6IENvbXBpbGF0aW9uU2NvcGVbXSB7XG4gICAgY29uc3Qgc2NvcGVzOiBDb21waWxhdGlvblNjb3BlW10gPSBbXTtcbiAgICB0aGlzLmRlY2xhcmF0aW9uVG9Nb2R1bGUuZm9yRWFjaCgoZGVjbERhdGEsIGRlY2xhcmF0aW9uKSA9PiB7XG4gICAgICBjb25zdCBzY29wZSA9IHRoaXMuZ2V0U2NvcGVPZk1vZHVsZShkZWNsRGF0YS5uZ01vZHVsZSk7XG4gICAgICBpZiAoc2NvcGUgIT09IG51bGwgJiYgc2NvcGUgIT09ICdlcnJvcicpIHtcbiAgICAgICAgc2NvcGVzLnB1c2goe2RlY2xhcmF0aW9uLCBuZ01vZHVsZTogZGVjbERhdGEubmdNb2R1bGUsIC4uLnNjb3BlLmNvbXBpbGF0aW9ufSk7XG4gICAgICB9XG4gICAgfSk7XG4gICAgcmV0dXJuIHNjb3BlcztcbiAgfVxuXG4gIHByaXZhdGUgcmVnaXN0ZXJEZWNsYXJhdGlvbk9mTW9kdWxlKFxuICAgICAgbmdNb2R1bGU6IENsYXNzRGVjbGFyYXRpb24sIGRlY2w6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPixcbiAgICAgIHJhd0RlY2xhcmF0aW9uczogdHMuRXhwcmVzc2lvbnxudWxsKTogdm9pZCB7XG4gICAgY29uc3QgZGVjbERhdGE6IERlY2xhcmF0aW9uRGF0YSA9IHtcbiAgICAgIG5nTW9kdWxlLFxuICAgICAgcmVmOiBkZWNsLFxuICAgICAgcmF3RGVjbGFyYXRpb25zLFxuICAgIH07XG5cbiAgICAvLyBGaXJzdCwgY2hlY2sgZm9yIGR1cGxpY2F0ZSBkZWNsYXJhdGlvbnMgb2YgdGhlIHNhbWUgZGlyZWN0aXZlL3BpcGUuXG4gICAgaWYgKHRoaXMuZHVwbGljYXRlRGVjbGFyYXRpb25zLmhhcyhkZWNsLm5vZGUpKSB7XG4gICAgICAvLyBUaGlzIGRpcmVjdGl2ZS9waXBlIGhhcyBhbHJlYWR5IGJlZW4gaWRlbnRpZmllZCBhcyBiZWluZyBkdXBsaWNhdGVkLiBBZGQgdGhpcyBtb2R1bGUgdG8gdGhlXG4gICAgICAvLyBtYXAgb2YgbW9kdWxlcyBmb3Igd2hpY2ggYSBkdXBsaWNhdGUgZGVjbGFyYXRpb24gZXhpc3RzLlxuICAgICAgdGhpcy5kdXBsaWNhdGVEZWNsYXJhdGlvbnMuZ2V0KGRlY2wubm9kZSkhLnNldChuZ01vZHVsZSwgZGVjbERhdGEpO1xuICAgIH0gZWxzZSBpZiAoXG4gICAgICAgIHRoaXMuZGVjbGFyYXRpb25Ub01vZHVsZS5oYXMoZGVjbC5ub2RlKSAmJlxuICAgICAgICB0aGlzLmRlY2xhcmF0aW9uVG9Nb2R1bGUuZ2V0KGRlY2wubm9kZSkhLm5nTW9kdWxlICE9PSBuZ01vZHVsZSkge1xuICAgICAgLy8gVGhpcyBkaXJlY3RpdmUvcGlwZSBpcyBhbHJlYWR5IHJlZ2lzdGVyZWQgYXMgZGVjbGFyZWQgaW4gYW5vdGhlciBtb2R1bGUuIE1hcmsgaXQgYXMgYVxuICAgICAgLy8gZHVwbGljYXRlIGluc3RlYWQuXG4gICAgICBjb25zdCBkdXBsaWNhdGVEZWNsTWFwID0gbmV3IE1hcDxDbGFzc0RlY2xhcmF0aW9uLCBEZWNsYXJhdGlvbkRhdGE+KCk7XG4gICAgICBjb25zdCBmaXJzdERlY2xEYXRhID0gdGhpcy5kZWNsYXJhdGlvblRvTW9kdWxlLmdldChkZWNsLm5vZGUpITtcblxuICAgICAgLy8gTWFyayBib3RoIG1vZHVsZXMgYXMgdGFpbnRlZCwgc2luY2UgdGhlaXIgZGVjbGFyYXRpb25zIGFyZSBtaXNzaW5nIGEgY29tcG9uZW50LlxuICAgICAgdGhpcy50YWludGVkTW9kdWxlcy5hZGQoZmlyc3REZWNsRGF0YS5uZ01vZHVsZSk7XG4gICAgICB0aGlzLnRhaW50ZWRNb2R1bGVzLmFkZChuZ01vZHVsZSk7XG5cbiAgICAgIC8vIEJlaW5nIGRldGVjdGVkIGFzIGEgZHVwbGljYXRlIG1lYW5zIHRoZXJlIGFyZSB0d28gTmdNb2R1bGVzIChmb3Igbm93KSB3aGljaCBkZWNsYXJlIHRoaXNcbiAgICAgIC8vIGRpcmVjdGl2ZS9waXBlLiBBZGQgYm90aCBvZiB0aGVtIHRvIHRoZSBkdXBsaWNhdGUgdHJhY2tpbmcgbWFwLlxuICAgICAgZHVwbGljYXRlRGVjbE1hcC5zZXQoZmlyc3REZWNsRGF0YS5uZ01vZHVsZSwgZmlyc3REZWNsRGF0YSk7XG4gICAgICBkdXBsaWNhdGVEZWNsTWFwLnNldChuZ01vZHVsZSwgZGVjbERhdGEpO1xuICAgICAgdGhpcy5kdXBsaWNhdGVEZWNsYXJhdGlvbnMuc2V0KGRlY2wubm9kZSwgZHVwbGljYXRlRGVjbE1hcCk7XG5cbiAgICAgIC8vIFJlbW92ZSB0aGUgZGlyZWN0aXZlL3BpcGUgZnJvbSBgZGVjbGFyYXRpb25Ub01vZHVsZWAgYXMgaXQncyBhIGR1cGxpY2F0ZSBkZWNsYXJhdGlvbiwgYW5kXG4gICAgICAvLyB0aGVyZWZvcmUgbm90IHZhbGlkLlxuICAgICAgdGhpcy5kZWNsYXJhdGlvblRvTW9kdWxlLmRlbGV0ZShkZWNsLm5vZGUpO1xuICAgIH0gZWxzZSB7XG4gICAgICAvLyBUaGlzIGlzIHRoZSBmaXJzdCBkZWNsYXJhdGlvbiBvZiB0aGlzIGRpcmVjdGl2ZS9waXBlLCBzbyBtYXAgaXQuXG4gICAgICB0aGlzLmRlY2xhcmF0aW9uVG9Nb2R1bGUuc2V0KGRlY2wubm9kZSwgZGVjbERhdGEpO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBJbXBsZW1lbnRhdGlvbiBvZiBgZ2V0U2NvcGVPZk1vZHVsZWAgd2hpY2ggYWNjZXB0cyBhIHJlZmVyZW5jZSB0byBhIGNsYXNzIGFuZCBkaWZmZXJlbnRpYXRlc1xuICAgKiBiZXR3ZWVuOlxuICAgKlxuICAgKiAqIG5vIHNjb3BlIGJlaW5nIGF2YWlsYWJsZSAocmV0dXJucyBgbnVsbGApXG4gICAqICogYSBzY29wZSBiZWluZyBwcm9kdWNlZCB3aXRoIGVycm9ycyAocmV0dXJucyBgdW5kZWZpbmVkYCkuXG4gICAqL1xuICBwcml2YXRlIGdldFNjb3BlT2ZNb2R1bGVSZWZlcmVuY2UocmVmOiBSZWZlcmVuY2U8Q2xhc3NEZWNsYXJhdGlvbj4pOiBMb2NhbE1vZHVsZVNjb3BlfG51bGxcbiAgICAgIHx1bmRlZmluZWQge1xuICAgIGlmICh0aGlzLmNhY2hlLmhhcyhyZWYubm9kZSkpIHtcbiAgICAgIHJldHVybiB0aGlzLmNhY2hlLmdldChyZWYubm9kZSk7XG4gICAgfVxuXG4gICAgLy8gU2VhbCB0aGUgcmVnaXN0cnkgdG8gcHJvdGVjdCB0aGUgaW50ZWdyaXR5IG9mIHRoZSBgTG9jYWxNb2R1bGVTY29wZWAgY2FjaGUuXG4gICAgdGhpcy5zZWFsZWQgPSB0cnVlO1xuXG4gICAgLy8gYHJlZmAgc2hvdWxkIGJlIGFuIE5nTW9kdWxlIHByZXZpb3VzbHkgYWRkZWQgdG8gdGhlIHJlZ2lzdHJ5LiBJZiBub3QsIGEgc2NvcGUgZm9yIGl0XG4gICAgLy8gY2Fubm90IGJlIHByb2R1Y2VkLlxuICAgIGNvbnN0IG5nTW9kdWxlID0gdGhpcy5sb2NhbFJlYWRlci5nZXROZ01vZHVsZU1ldGFkYXRhKHJlZik7XG4gICAgaWYgKG5nTW9kdWxlID09PSBudWxsKSB7XG4gICAgICB0aGlzLmNhY2hlLnNldChyZWYubm9kZSwgbnVsbCk7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICAvLyBNb2R1bGVzIHdoaWNoIGNvbnRyaWJ1dGVkIHRvIHRoZSBjb21waWxhdGlvbiBzY29wZSBvZiB0aGlzIG1vZHVsZS5cbiAgICBjb25zdCBjb21waWxhdGlvbk1vZHVsZXMgPSBuZXcgU2V0PENsYXNzRGVjbGFyYXRpb24+KFtuZ01vZHVsZS5yZWYubm9kZV0pO1xuICAgIC8vIE1vZHVsZXMgd2hpY2ggY29udHJpYnV0ZWQgdG8gdGhlIGV4cG9ydCBzY29wZSBvZiB0aGlzIG1vZHVsZS5cbiAgICBjb25zdCBleHBvcnRlZE1vZHVsZXMgPSBuZXcgU2V0PENsYXNzRGVjbGFyYXRpb24+KFtuZ01vZHVsZS5yZWYubm9kZV0pO1xuXG4gICAgLy8gRXJyb3JzIHByb2R1Y2VkIGR1cmluZyBjb21wdXRhdGlvbiBvZiB0aGUgc2NvcGUgYXJlIHJlY29yZGVkIGhlcmUuIEF0IHRoZSBlbmQsIGlmIHRoaXMgYXJyYXlcbiAgICAvLyBpc24ndCBlbXB0eSB0aGVuIGB1bmRlZmluZWRgIHdpbGwgYmUgY2FjaGVkIGFuZCByZXR1cm5lZCB0byBpbmRpY2F0ZSB0aGlzIHNjb3BlIGlzIGludmFsaWQuXG4gICAgY29uc3QgZGlhZ25vc3RpY3M6IHRzLkRpYWdub3N0aWNbXSA9IFtdO1xuXG4gICAgLy8gQXQgdGhpcyBwb2ludCwgdGhlIGdvYWwgaXMgdG8gcHJvZHVjZSB0d28gZGlzdGluY3QgdHJhbnNpdGl2ZSBzZXRzOlxuICAgIC8vIC0gdGhlIGRpcmVjdGl2ZXMgYW5kIHBpcGVzIHdoaWNoIGFyZSB2aXNpYmxlIHRvIGNvbXBvbmVudHMgZGVjbGFyZWQgaW4gdGhlIE5nTW9kdWxlLlxuICAgIC8vIC0gdGhlIGRpcmVjdGl2ZXMgYW5kIHBpcGVzIHdoaWNoIGFyZSBleHBvcnRlZCB0byBhbnkgTmdNb2R1bGVzIHdoaWNoIGltcG9ydCB0aGlzIG9uZS5cblxuICAgIC8vIERpcmVjdGl2ZXMgYW5kIHBpcGVzIGluIHRoZSBjb21waWxhdGlvbiBzY29wZS5cbiAgICBjb25zdCBjb21waWxhdGlvbkRpcmVjdGl2ZXMgPSBuZXcgTWFwPHRzLkRlY2xhcmF0aW9uLCBEaXJlY3RpdmVNZXRhPigpO1xuICAgIGNvbnN0IGNvbXBpbGF0aW9uUGlwZXMgPSBuZXcgTWFwPHRzLkRlY2xhcmF0aW9uLCBQaXBlTWV0YT4oKTtcblxuICAgIGNvbnN0IGRlY2xhcmVkID0gbmV3IFNldDx0cy5EZWNsYXJhdGlvbj4oKTtcblxuICAgIC8vIERpcmVjdGl2ZXMgYW5kIHBpcGVzIGV4cG9ydGVkIHRvIGFueSBpbXBvcnRpbmcgTmdNb2R1bGVzLlxuICAgIGNvbnN0IGV4cG9ydERpcmVjdGl2ZXMgPSBuZXcgTWFwPHRzLkRlY2xhcmF0aW9uLCBEaXJlY3RpdmVNZXRhPigpO1xuICAgIGNvbnN0IGV4cG9ydFBpcGVzID0gbmV3IE1hcDx0cy5EZWNsYXJhdGlvbiwgUGlwZU1ldGE+KCk7XG5cbiAgICAvLyBUaGUgYWxnb3JpdGhtIGlzIGFzIGZvbGxvd3M6XG4gICAgLy8gMSkgQWRkIGFsbCBvZiB0aGUgZGlyZWN0aXZlcy9waXBlcyBmcm9tIGVhY2ggTmdNb2R1bGUgaW1wb3J0ZWQgaW50byB0aGUgY3VycmVudCBvbmUgdG8gdGhlXG4gICAgLy8gICAgY29tcGlsYXRpb24gc2NvcGUuXG4gICAgLy8gMikgQWRkIGRpcmVjdGl2ZXMvcGlwZXMgZGVjbGFyZWQgaW4gdGhlIE5nTW9kdWxlIHRvIHRoZSBjb21waWxhdGlvbiBzY29wZS4gQXQgdGhpcyBwb2ludCwgdGhlXG4gICAgLy8gICAgY29tcGlsYXRpb24gc2NvcGUgaXMgY29tcGxldGUuXG4gICAgLy8gMykgRm9yIGVhY2ggZW50cnkgaW4gdGhlIE5nTW9kdWxlJ3MgZXhwb3J0czpcbiAgICAvLyAgICBhKSBBdHRlbXB0IHRvIHJlc29sdmUgaXQgYXMgYW4gTmdNb2R1bGUgd2l0aCBpdHMgb3duIGV4cG9ydGVkIGRpcmVjdGl2ZXMvcGlwZXMuIElmIGl0IGlzXG4gICAgLy8gICAgICAgb25lLCBhZGQgdGhlbSB0byB0aGUgZXhwb3J0IHNjb3BlIG9mIHRoaXMgTmdNb2R1bGUuXG4gICAgLy8gICAgYikgT3RoZXJ3aXNlLCBpdCBzaG91bGQgYmUgYSBjbGFzcyBpbiB0aGUgY29tcGlsYXRpb24gc2NvcGUgb2YgdGhpcyBOZ01vZHVsZS4gSWYgaXQgaXMsXG4gICAgLy8gICAgICAgYWRkIGl0IHRvIHRoZSBleHBvcnQgc2NvcGUuXG4gICAgLy8gICAgYykgSWYgaXQncyBuZWl0aGVyIGFuIE5nTW9kdWxlIG5vciBhIGRpcmVjdGl2ZS9waXBlIGluIHRoZSBjb21waWxhdGlvbiBzY29wZSwgdGhlbiB0aGlzXG4gICAgLy8gICAgICAgaXMgYW4gZXJyb3IuXG5cbiAgICAvLyAxKSBwcm9jZXNzIGltcG9ydHMuXG4gICAgZm9yIChjb25zdCBkZWNsIG9mIG5nTW9kdWxlLmltcG9ydHMpIHtcbiAgICAgIGNvbnN0IGltcG9ydFNjb3BlID0gdGhpcy5nZXRFeHBvcnRlZFNjb3BlKGRlY2wsIGRpYWdub3N0aWNzLCByZWYubm9kZSwgJ2ltcG9ydCcpO1xuICAgICAgaWYgKGltcG9ydFNjb3BlID09PSBudWxsKSB7XG4gICAgICAgIC8vIEFuIGltcG9ydCB3YXNuJ3QgYW4gTmdNb2R1bGUsIHNvIHJlY29yZCBhbiBlcnJvci5cbiAgICAgICAgZGlhZ25vc3RpY3MucHVzaChpbnZhbGlkUmVmKHJlZi5ub2RlLCBkZWNsLCAnaW1wb3J0JykpO1xuICAgICAgICBjb250aW51ZTtcbiAgICAgIH0gZWxzZSBpZiAoaW1wb3J0U2NvcGUgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICAvLyBBbiBpbXBvcnQgd2FzIGFuIE5nTW9kdWxlIGJ1dCBjb250YWluZWQgZXJyb3JzIG9mIGl0cyBvd24uIFJlY29yZCB0aGlzIGFzIGFuIGVycm9yIHRvbyxcbiAgICAgICAgLy8gYmVjYXVzZSB0aGlzIHNjb3BlIGlzIGFsd2F5cyBnb2luZyB0byBiZSBpbmNvcnJlY3QgaWYgb25lIG9mIGl0cyBpbXBvcnRzIGNvdWxkIG5vdCBiZVxuICAgICAgICAvLyByZWFkLlxuICAgICAgICBkaWFnbm9zdGljcy5wdXNoKGludmFsaWRUcmFuc2l0aXZlTmdNb2R1bGVSZWYocmVmLm5vZGUsIGRlY2wsICdpbXBvcnQnKSk7XG4gICAgICAgIGNvbnRpbnVlO1xuICAgICAgfVxuICAgICAgZm9yIChjb25zdCBkaXJlY3RpdmUgb2YgaW1wb3J0U2NvcGUuZXhwb3J0ZWQuZGlyZWN0aXZlcykge1xuICAgICAgICBjb21waWxhdGlvbkRpcmVjdGl2ZXMuc2V0KGRpcmVjdGl2ZS5yZWYubm9kZSwgZGlyZWN0aXZlKTtcbiAgICAgIH1cbiAgICAgIGZvciAoY29uc3QgcGlwZSBvZiBpbXBvcnRTY29wZS5leHBvcnRlZC5waXBlcykge1xuICAgICAgICBjb21waWxhdGlvblBpcGVzLnNldChwaXBlLnJlZi5ub2RlLCBwaXBlKTtcbiAgICAgIH1cbiAgICAgIGZvciAoY29uc3QgaW1wb3J0ZWRNb2R1bGUgb2YgaW1wb3J0U2NvcGUuZXhwb3J0ZWQubmdNb2R1bGVzKSB7XG4gICAgICAgIGNvbXBpbGF0aW9uTW9kdWxlcy5hZGQoaW1wb3J0ZWRNb2R1bGUpO1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIDIpIGFkZCBkZWNsYXJhdGlvbnMuXG4gICAgZm9yIChjb25zdCBkZWNsIG9mIG5nTW9kdWxlLmRlY2xhcmF0aW9ucykge1xuICAgICAgY29uc3QgZGlyZWN0aXZlID0gdGhpcy5sb2NhbFJlYWRlci5nZXREaXJlY3RpdmVNZXRhZGF0YShkZWNsKTtcbiAgICAgIGNvbnN0IHBpcGUgPSB0aGlzLmxvY2FsUmVhZGVyLmdldFBpcGVNZXRhZGF0YShkZWNsKTtcbiAgICAgIGlmIChkaXJlY3RpdmUgIT09IG51bGwpIHtcbiAgICAgICAgY29tcGlsYXRpb25EaXJlY3RpdmVzLnNldChkZWNsLm5vZGUsIHsuLi5kaXJlY3RpdmUsIHJlZjogZGVjbH0pO1xuICAgICAgfSBlbHNlIGlmIChwaXBlICE9PSBudWxsKSB7XG4gICAgICAgIGNvbXBpbGF0aW9uUGlwZXMuc2V0KGRlY2wubm9kZSwgey4uLnBpcGUsIHJlZjogZGVjbH0pO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdGhpcy50YWludGVkTW9kdWxlcy5hZGQobmdNb2R1bGUucmVmLm5vZGUpO1xuXG4gICAgICAgIGNvbnN0IGVycm9yTm9kZSA9IGRlY2wuZ2V0T3JpZ2luRm9yRGlhZ25vc3RpY3MobmdNb2R1bGUucmF3RGVjbGFyYXRpb25zISk7XG4gICAgICAgIGRpYWdub3N0aWNzLnB1c2gobWFrZURpYWdub3N0aWMoXG4gICAgICAgICAgICBFcnJvckNvZGUuTkdNT0RVTEVfSU5WQUxJRF9ERUNMQVJBVElPTiwgZXJyb3JOb2RlLFxuICAgICAgICAgICAgYFRoZSBjbGFzcyAnJHtkZWNsLm5vZGUubmFtZS50ZXh0fScgaXMgbGlzdGVkIGluIHRoZSBkZWNsYXJhdGlvbnMgYCArXG4gICAgICAgICAgICAgICAgYG9mIHRoZSBOZ01vZHVsZSAnJHtcbiAgICAgICAgICAgICAgICAgICAgbmdNb2R1bGUucmVmLm5vZGUubmFtZVxuICAgICAgICAgICAgICAgICAgICAgICAgLnRleHR9JywgYnV0IGlzIG5vdCBhIGRpcmVjdGl2ZSwgYSBjb21wb25lbnQsIG9yIGEgcGlwZS4gYCArXG4gICAgICAgICAgICAgICAgYEVpdGhlciByZW1vdmUgaXQgZnJvbSB0aGUgTmdNb2R1bGUncyBkZWNsYXJhdGlvbnMsIG9yIGFkZCBhbiBhcHByb3ByaWF0ZSBBbmd1bGFyIGRlY29yYXRvci5gLFxuICAgICAgICAgICAgW21ha2VSZWxhdGVkSW5mb3JtYXRpb24oXG4gICAgICAgICAgICAgICAgZGVjbC5ub2RlLm5hbWUsIGAnJHtkZWNsLm5vZGUubmFtZS50ZXh0fScgaXMgZGVjbGFyZWQgaGVyZS5gKV0pKTtcbiAgICAgICAgY29udGludWU7XG4gICAgICB9XG5cbiAgICAgIGRlY2xhcmVkLmFkZChkZWNsLm5vZGUpO1xuICAgIH1cblxuICAgIC8vIDMpIHByb2Nlc3MgZXhwb3J0cy5cbiAgICAvLyBFeHBvcnRzIGNhbiBjb250YWluIG1vZHVsZXMsIGNvbXBvbmVudHMsIG9yIGRpcmVjdGl2ZXMuIFRoZXkncmUgcHJvY2Vzc2VkIGRpZmZlcmVudGx5LlxuICAgIC8vIE1vZHVsZXMgYXJlIHN0cmFpZ2h0Zm9yd2FyZC4gRGlyZWN0aXZlcyBhbmQgcGlwZXMgZnJvbSBleHBvcnRlZCBtb2R1bGVzIGFyZSBhZGRlZCB0byB0aGVcbiAgICAvLyBleHBvcnQgbWFwcy4gRGlyZWN0aXZlcy9waXBlcyBhcmUgZGlmZmVyZW50IC0gdGhleSBtaWdodCBiZSBleHBvcnRzIG9mIGRlY2xhcmVkIHR5cGVzIG9yXG4gICAgLy8gaW1wb3J0ZWQgdHlwZXMuXG4gICAgZm9yIChjb25zdCBkZWNsIG9mIG5nTW9kdWxlLmV4cG9ydHMpIHtcbiAgICAgIC8vIEF0dGVtcHQgdG8gcmVzb2x2ZSBkZWNsIGFzIGFuIE5nTW9kdWxlLlxuICAgICAgY29uc3QgaW1wb3J0U2NvcGUgPSB0aGlzLmdldEV4cG9ydGVkU2NvcGUoZGVjbCwgZGlhZ25vc3RpY3MsIHJlZi5ub2RlLCAnZXhwb3J0Jyk7XG4gICAgICBpZiAoaW1wb3J0U2NvcGUgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICAvLyBBbiBleHBvcnQgd2FzIGFuIE5nTW9kdWxlIGJ1dCBjb250YWluZWQgZXJyb3JzIG9mIGl0cyBvd24uIFJlY29yZCB0aGlzIGFzIGFuIGVycm9yIHRvbyxcbiAgICAgICAgLy8gYmVjYXVzZSB0aGlzIHNjb3BlIGlzIGFsd2F5cyBnb2luZyB0byBiZSBpbmNvcnJlY3QgaWYgb25lIG9mIGl0cyBleHBvcnRzIGNvdWxkIG5vdCBiZVxuICAgICAgICAvLyByZWFkLlxuICAgICAgICBkaWFnbm9zdGljcy5wdXNoKGludmFsaWRUcmFuc2l0aXZlTmdNb2R1bGVSZWYocmVmLm5vZGUsIGRlY2wsICdleHBvcnQnKSk7XG4gICAgICAgIGNvbnRpbnVlO1xuICAgICAgfSBlbHNlIGlmIChpbXBvcnRTY29wZSAhPT0gbnVsbCkge1xuICAgICAgICAvLyBkZWNsIGlzIGFuIE5nTW9kdWxlLlxuICAgICAgICBmb3IgKGNvbnN0IGRpcmVjdGl2ZSBvZiBpbXBvcnRTY29wZS5leHBvcnRlZC5kaXJlY3RpdmVzKSB7XG4gICAgICAgICAgZXhwb3J0RGlyZWN0aXZlcy5zZXQoZGlyZWN0aXZlLnJlZi5ub2RlLCBkaXJlY3RpdmUpO1xuICAgICAgICB9XG4gICAgICAgIGZvciAoY29uc3QgcGlwZSBvZiBpbXBvcnRTY29wZS5leHBvcnRlZC5waXBlcykge1xuICAgICAgICAgIGV4cG9ydFBpcGVzLnNldChwaXBlLnJlZi5ub2RlLCBwaXBlKTtcbiAgICAgICAgfVxuICAgICAgICBmb3IgKGNvbnN0IGV4cG9ydGVkTW9kdWxlIG9mIGltcG9ydFNjb3BlLmV4cG9ydGVkLm5nTW9kdWxlcykge1xuICAgICAgICAgIGV4cG9ydGVkTW9kdWxlcy5hZGQoZXhwb3J0ZWRNb2R1bGUpO1xuICAgICAgICB9XG4gICAgICB9IGVsc2UgaWYgKGNvbXBpbGF0aW9uRGlyZWN0aXZlcy5oYXMoZGVjbC5ub2RlKSkge1xuICAgICAgICAvLyBkZWNsIGlzIGEgZGlyZWN0aXZlIG9yIGNvbXBvbmVudCBpbiB0aGUgY29tcGlsYXRpb24gc2NvcGUgb2YgdGhpcyBOZ01vZHVsZS5cbiAgICAgICAgY29uc3QgZGlyZWN0aXZlID0gY29tcGlsYXRpb25EaXJlY3RpdmVzLmdldChkZWNsLm5vZGUpITtcbiAgICAgICAgZXhwb3J0RGlyZWN0aXZlcy5zZXQoZGVjbC5ub2RlLCBkaXJlY3RpdmUpO1xuICAgICAgfSBlbHNlIGlmIChjb21waWxhdGlvblBpcGVzLmhhcyhkZWNsLm5vZGUpKSB7XG4gICAgICAgIC8vIGRlY2wgaXMgYSBwaXBlIGluIHRoZSBjb21waWxhdGlvbiBzY29wZSBvZiB0aGlzIE5nTW9kdWxlLlxuICAgICAgICBjb25zdCBwaXBlID0gY29tcGlsYXRpb25QaXBlcy5nZXQoZGVjbC5ub2RlKSE7XG4gICAgICAgIGV4cG9ydFBpcGVzLnNldChkZWNsLm5vZGUsIHBpcGUpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgLy8gZGVjbCBpcyBhbiB1bmtub3duIGV4cG9ydC5cbiAgICAgICAgaWYgKHRoaXMubG9jYWxSZWFkZXIuZ2V0RGlyZWN0aXZlTWV0YWRhdGEoZGVjbCkgIT09IG51bGwgfHxcbiAgICAgICAgICAgIHRoaXMubG9jYWxSZWFkZXIuZ2V0UGlwZU1ldGFkYXRhKGRlY2wpICE9PSBudWxsKSB7XG4gICAgICAgICAgZGlhZ25vc3RpY3MucHVzaChpbnZhbGlkUmVleHBvcnQocmVmLm5vZGUsIGRlY2wpKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICBkaWFnbm9zdGljcy5wdXNoKGludmFsaWRSZWYocmVmLm5vZGUsIGRlY2wsICdleHBvcnQnKSk7XG4gICAgICAgIH1cbiAgICAgICAgY29udGludWU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgY29uc3QgZXhwb3J0ZWQgPSB7XG4gICAgICBkaXJlY3RpdmVzOiBBcnJheS5mcm9tKGV4cG9ydERpcmVjdGl2ZXMudmFsdWVzKCkpLFxuICAgICAgcGlwZXM6IEFycmF5LmZyb20oZXhwb3J0UGlwZXMudmFsdWVzKCkpLFxuICAgICAgbmdNb2R1bGVzOiBBcnJheS5mcm9tKGV4cG9ydGVkTW9kdWxlcyksXG4gICAgfTtcblxuICAgIGNvbnN0IHJlZXhwb3J0cyA9IHRoaXMuZ2V0UmVleHBvcnRzKG5nTW9kdWxlLCByZWYsIGRlY2xhcmVkLCBleHBvcnRlZCwgZGlhZ25vc3RpY3MpO1xuXG4gICAgLy8gQ2hlY2sgaWYgdGhpcyBzY29wZSBoYWQgYW55IGVycm9ycyBkdXJpbmcgcHJvZHVjdGlvbi5cbiAgICBpZiAoZGlhZ25vc3RpY3MubGVuZ3RoID4gMCkge1xuICAgICAgLy8gQ2FjaGUgdW5kZWZpbmVkLCB0byBtYXJrIHRoZSBmYWN0IHRoYXQgdGhlIHNjb3BlIGlzIGludmFsaWQuXG4gICAgICB0aGlzLmNhY2hlLnNldChyZWYubm9kZSwgdW5kZWZpbmVkKTtcblxuICAgICAgLy8gU2F2ZSB0aGUgZXJyb3JzIGZvciByZXRyaWV2YWwuXG4gICAgICB0aGlzLnNjb3BlRXJyb3JzLnNldChyZWYubm9kZSwgZGlhZ25vc3RpY3MpO1xuXG4gICAgICAvLyBNYXJrIHRoaXMgbW9kdWxlIGFzIGJlaW5nIHRhaW50ZWQuXG4gICAgICB0aGlzLnRhaW50ZWRNb2R1bGVzLmFkZChyZWYubm9kZSk7XG4gICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgIH1cblxuICAgIC8vIEZpbmFsbHksIHByb2R1Y2UgdGhlIGBMb2NhbE1vZHVsZVNjb3BlYCB3aXRoIGJvdGggdGhlIGNvbXBpbGF0aW9uIGFuZCBleHBvcnQgc2NvcGVzLlxuICAgIGNvbnN0IHNjb3BlID0ge1xuICAgICAgY29tcGlsYXRpb246IHtcbiAgICAgICAgZGlyZWN0aXZlczogQXJyYXkuZnJvbShjb21waWxhdGlvbkRpcmVjdGl2ZXMudmFsdWVzKCkpLFxuICAgICAgICBwaXBlczogQXJyYXkuZnJvbShjb21waWxhdGlvblBpcGVzLnZhbHVlcygpKSxcbiAgICAgICAgbmdNb2R1bGVzOiBBcnJheS5mcm9tKGNvbXBpbGF0aW9uTW9kdWxlcyksXG4gICAgICB9LFxuICAgICAgZXhwb3J0ZWQsXG4gICAgICByZWV4cG9ydHMsXG4gICAgICBzY2hlbWFzOiBuZ01vZHVsZS5zY2hlbWFzLFxuICAgIH07XG4gICAgdGhpcy5jYWNoZS5zZXQocmVmLm5vZGUsIHNjb3BlKTtcbiAgICByZXR1cm4gc2NvcGU7XG4gIH1cblxuICAvKipcbiAgICogQ2hlY2sgd2hldGhlciBhIGNvbXBvbmVudCByZXF1aXJlcyByZW1vdGUgc2NvcGluZy5cbiAgICovXG4gIGdldFJlcXVpcmVzUmVtb3RlU2NvcGUobm9kZTogQ2xhc3NEZWNsYXJhdGlvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiB0aGlzLnJlbW90ZVNjb3BpbmcuaGFzKG5vZGUpO1xuICB9XG5cbiAgLyoqXG4gICAqIFNldCBhIGNvbXBvbmVudCBhcyByZXF1aXJpbmcgcmVtb3RlIHNjb3BpbmcuXG4gICAqL1xuICBzZXRDb21wb25lbnRBc1JlcXVpcmluZ1JlbW90ZVNjb3Bpbmcobm9kZTogQ2xhc3NEZWNsYXJhdGlvbik6IHZvaWQge1xuICAgIHRoaXMucmVtb3RlU2NvcGluZy5hZGQobm9kZSk7XG4gIH1cblxuICAvKipcbiAgICogTG9vayB1cCB0aGUgYEV4cG9ydFNjb3BlYCBvZiBhIGdpdmVuIGBSZWZlcmVuY2VgIHRvIGFuIE5nTW9kdWxlLlxuICAgKlxuICAgKiBUaGUgTmdNb2R1bGUgaW4gcXVlc3Rpb24gbWF5IGJlIGRlY2xhcmVkIGxvY2FsbHkgaW4gdGhlIGN1cnJlbnQgdHMuUHJvZ3JhbSwgb3IgaXQgbWF5IGJlXG4gICAqIGRlY2xhcmVkIGluIGEgLmQudHMgZmlsZS5cbiAgICpcbiAgICogQHJldHVybnMgYG51bGxgIGlmIG5vIHNjb3BlIGNvdWxkIGJlIGZvdW5kLCBvciBgdW5kZWZpbmVkYCBpZiBhbiBpbnZhbGlkIHNjb3BlXG4gICAqIHdhcyBmb3VuZC5cbiAgICpcbiAgICogTWF5IGFsc28gY29udHJpYnV0ZSBkaWFnbm9zdGljcyBvZiBpdHMgb3duIGJ5IGFkZGluZyB0byB0aGUgZ2l2ZW4gYGRpYWdub3N0aWNzYFxuICAgKiBhcnJheSBwYXJhbWV0ZXIuXG4gICAqL1xuICBwcml2YXRlIGdldEV4cG9ydGVkU2NvcGUoXG4gICAgICByZWY6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPiwgZGlhZ25vc3RpY3M6IHRzLkRpYWdub3N0aWNbXSxcbiAgICAgIG93bmVyRm9yRXJyb3JzOiB0cy5EZWNsYXJhdGlvbiwgdHlwZTogJ2ltcG9ydCd8J2V4cG9ydCcpOiBFeHBvcnRTY29wZXxudWxsfHVuZGVmaW5lZCB7XG4gICAgaWYgKHJlZi5ub2RlLmdldFNvdXJjZUZpbGUoKS5pc0RlY2xhcmF0aW9uRmlsZSkge1xuICAgICAgLy8gVGhlIE5nTW9kdWxlIGlzIGRlY2xhcmVkIGluIGEgLmQudHMgZmlsZS4gUmVzb2x2ZSBpdCB3aXRoIHRoZSBgRGVwZW5kZW5jeVNjb3BlUmVhZGVyYC5cbiAgICAgIGlmICghdHMuaXNDbGFzc0RlY2xhcmF0aW9uKHJlZi5ub2RlKSkge1xuICAgICAgICAvLyBUaGUgTmdNb2R1bGUgaXMgaW4gYSAuZC50cyBmaWxlIGJ1dCBpcyBub3QgZGVjbGFyZWQgYXMgYSB0cy5DbGFzc0RlY2xhcmF0aW9uLiBUaGlzIGlzIGFuXG4gICAgICAgIC8vIGVycm9yIGluIHRoZSAuZC50cyBtZXRhZGF0YS5cbiAgICAgICAgY29uc3QgY29kZSA9IHR5cGUgPT09ICdpbXBvcnQnID8gRXJyb3JDb2RlLk5HTU9EVUxFX0lOVkFMSURfSU1QT1JUIDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRXJyb3JDb2RlLk5HTU9EVUxFX0lOVkFMSURfRVhQT1JUO1xuICAgICAgICBkaWFnbm9zdGljcy5wdXNoKG1ha2VEaWFnbm9zdGljKFxuICAgICAgICAgICAgY29kZSwgaWRlbnRpZmllck9mTm9kZShyZWYubm9kZSkgfHwgcmVmLm5vZGUsXG4gICAgICAgICAgICBgQXBwZWFycyBpbiB0aGUgTmdNb2R1bGUuJHt0eXBlfXMgb2YgJHtcbiAgICAgICAgICAgICAgICBub2RlTmFtZUZvckVycm9yKG93bmVyRm9yRXJyb3JzKX0sIGJ1dCBjb3VsZCBub3QgYmUgcmVzb2x2ZWQgdG8gYW4gTmdNb2R1bGVgKSk7XG4gICAgICAgIHJldHVybiB1bmRlZmluZWQ7XG4gICAgICB9XG4gICAgICByZXR1cm4gdGhpcy5kZXBlbmRlbmN5U2NvcGVSZWFkZXIucmVzb2x2ZShyZWYpO1xuICAgIH0gZWxzZSB7XG4gICAgICAvLyBUaGUgTmdNb2R1bGUgaXMgZGVjbGFyZWQgbG9jYWxseSBpbiB0aGUgY3VycmVudCBwcm9ncmFtLiBSZXNvbHZlIGl0IGZyb20gdGhlIHJlZ2lzdHJ5LlxuICAgICAgcmV0dXJuIHRoaXMuZ2V0U2NvcGVPZk1vZHVsZVJlZmVyZW5jZShyZWYpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgZ2V0UmVleHBvcnRzKFxuICAgICAgbmdNb2R1bGU6IE5nTW9kdWxlTWV0YSwgcmVmOiBSZWZlcmVuY2U8Q2xhc3NEZWNsYXJhdGlvbj4sIGRlY2xhcmVkOiBTZXQ8dHMuRGVjbGFyYXRpb24+LFxuICAgICAgZXhwb3J0ZWQ6IHtkaXJlY3RpdmVzOiBEaXJlY3RpdmVNZXRhW10sIHBpcGVzOiBQaXBlTWV0YVtdfSxcbiAgICAgIGRpYWdub3N0aWNzOiB0cy5EaWFnbm9zdGljW10pOiBSZWV4cG9ydFtdfG51bGwge1xuICAgIGxldCByZWV4cG9ydHM6IFJlZXhwb3J0W118bnVsbCA9IG51bGw7XG4gICAgY29uc3Qgc291cmNlRmlsZSA9IHJlZi5ub2RlLmdldFNvdXJjZUZpbGUoKTtcbiAgICBpZiAodGhpcy5hbGlhc2luZ0hvc3QgPT09IG51bGwpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgICByZWV4cG9ydHMgPSBbXTtcbiAgICAvLyBUcmFjayByZS1leHBvcnRzIGJ5IHN5bWJvbCBuYW1lLCB0byBwcm9kdWNlIGRpYWdub3N0aWNzIGlmIHR3byBhbGlhcyByZS1leHBvcnRzIHdvdWxkIHNoYXJlXG4gICAgLy8gdGhlIHNhbWUgbmFtZS5cbiAgICBjb25zdCByZWV4cG9ydE1hcCA9IG5ldyBNYXA8c3RyaW5nLCBSZWZlcmVuY2U8Q2xhc3NEZWNsYXJhdGlvbj4+KCk7XG4gICAgLy8gQWxpYXMgbmdNb2R1bGVSZWYgYWRkZWQgZm9yIHJlYWRhYmlsaXR5IGJlbG93LlxuICAgIGNvbnN0IG5nTW9kdWxlUmVmID0gcmVmO1xuICAgIGNvbnN0IGFkZFJlZXhwb3J0ID0gKGV4cG9ydFJlZjogUmVmZXJlbmNlPENsYXNzRGVjbGFyYXRpb24+KSA9PiB7XG4gICAgICBpZiAoZXhwb3J0UmVmLm5vZGUuZ2V0U291cmNlRmlsZSgpID09PSBzb3VyY2VGaWxlKSB7XG4gICAgICAgIHJldHVybjtcbiAgICAgIH1cbiAgICAgIGNvbnN0IGlzUmVFeHBvcnQgPSAhZGVjbGFyZWQuaGFzKGV4cG9ydFJlZi5ub2RlKTtcbiAgICAgIGNvbnN0IGV4cG9ydE5hbWUgPSB0aGlzLmFsaWFzaW5nSG9zdCEubWF5YmVBbGlhc1N5bWJvbEFzKFxuICAgICAgICAgIGV4cG9ydFJlZiwgc291cmNlRmlsZSwgbmdNb2R1bGUucmVmLm5vZGUubmFtZS50ZXh0LCBpc1JlRXhwb3J0KTtcbiAgICAgIGlmIChleHBvcnROYW1lID09PSBudWxsKSB7XG4gICAgICAgIHJldHVybjtcbiAgICAgIH1cbiAgICAgIGlmICghcmVleHBvcnRNYXAuaGFzKGV4cG9ydE5hbWUpKSB7XG4gICAgICAgIGlmIChleHBvcnRSZWYuYWxpYXMgJiYgZXhwb3J0UmVmLmFsaWFzIGluc3RhbmNlb2YgRXh0ZXJuYWxFeHByKSB7XG4gICAgICAgICAgcmVleHBvcnRzIS5wdXNoKHtcbiAgICAgICAgICAgIGZyb21Nb2R1bGU6IGV4cG9ydFJlZi5hbGlhcy52YWx1ZS5tb2R1bGVOYW1lISxcbiAgICAgICAgICAgIHN5bWJvbE5hbWU6IGV4cG9ydFJlZi5hbGlhcy52YWx1ZS5uYW1lISxcbiAgICAgICAgICAgIGFzQWxpYXM6IGV4cG9ydE5hbWUsXG4gICAgICAgICAgfSk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgY29uc3QgZXhwciA9IHRoaXMucmVmRW1pdHRlci5lbWl0KGV4cG9ydFJlZi5jbG9uZVdpdGhOb0lkZW50aWZpZXJzKCksIHNvdXJjZUZpbGUpO1xuICAgICAgICAgIGlmICghKGV4cHIgaW5zdGFuY2VvZiBFeHRlcm5hbEV4cHIpIHx8IGV4cHIudmFsdWUubW9kdWxlTmFtZSA9PT0gbnVsbCB8fFxuICAgICAgICAgICAgICBleHByLnZhbHVlLm5hbWUgPT09IG51bGwpIHtcbiAgICAgICAgICAgIHRocm93IG5ldyBFcnJvcignRXhwZWN0ZWQgRXh0ZXJuYWxFeHByJyk7XG4gICAgICAgICAgfVxuICAgICAgICAgIHJlZXhwb3J0cyEucHVzaCh7XG4gICAgICAgICAgICBmcm9tTW9kdWxlOiBleHByLnZhbHVlLm1vZHVsZU5hbWUsXG4gICAgICAgICAgICBzeW1ib2xOYW1lOiBleHByLnZhbHVlLm5hbWUsXG4gICAgICAgICAgICBhc0FsaWFzOiBleHBvcnROYW1lLFxuICAgICAgICAgIH0pO1xuICAgICAgICB9XG4gICAgICAgIHJlZXhwb3J0TWFwLnNldChleHBvcnROYW1lLCBleHBvcnRSZWYpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgLy8gQW5vdGhlciByZS1leHBvcnQgYWxyZWFkeSB1c2VkIHRoaXMgbmFtZS4gUHJvZHVjZSBhIGRpYWdub3N0aWMuXG4gICAgICAgIGNvbnN0IHByZXZSZWYgPSByZWV4cG9ydE1hcC5nZXQoZXhwb3J0TmFtZSkhO1xuICAgICAgICBkaWFnbm9zdGljcy5wdXNoKHJlZXhwb3J0Q29sbGlzaW9uKG5nTW9kdWxlUmVmLm5vZGUsIHByZXZSZWYsIGV4cG9ydFJlZikpO1xuICAgICAgfVxuICAgIH07XG4gICAgZm9yIChjb25zdCB7cmVmfSBvZiBleHBvcnRlZC5kaXJlY3RpdmVzKSB7XG4gICAgICBhZGRSZWV4cG9ydChyZWYpO1xuICAgIH1cbiAgICBmb3IgKGNvbnN0IHtyZWZ9IG9mIGV4cG9ydGVkLnBpcGVzKSB7XG4gICAgICBhZGRSZWV4cG9ydChyZWYpO1xuICAgIH1cbiAgICByZXR1cm4gcmVleHBvcnRzO1xuICB9XG5cbiAgcHJpdmF0ZSBhc3NlcnRDb2xsZWN0aW5nKCk6IHZvaWQge1xuICAgIGlmICh0aGlzLnNlYWxlZCkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGBBc3NlcnRpb246IExvY2FsTW9kdWxlU2NvcGVSZWdpc3RyeSBpcyBub3QgQ09MTEVDVElOR2ApO1xuICAgIH1cbiAgfVxufVxuXG4vKipcbiAqIFByb2R1Y2UgYSBgdHMuRGlhZ25vc3RpY2AgZm9yIGFuIGludmFsaWQgaW1wb3J0IG9yIGV4cG9ydCBmcm9tIGFuIE5nTW9kdWxlLlxuICovXG5mdW5jdGlvbiBpbnZhbGlkUmVmKFxuICAgIGNsYXp6OiB0cy5EZWNsYXJhdGlvbiwgZGVjbDogUmVmZXJlbmNlPHRzLkRlY2xhcmF0aW9uPixcbiAgICB0eXBlOiAnaW1wb3J0J3wnZXhwb3J0Jyk6IHRzLkRpYWdub3N0aWMge1xuICBjb25zdCBjb2RlID1cbiAgICAgIHR5cGUgPT09ICdpbXBvcnQnID8gRXJyb3JDb2RlLk5HTU9EVUxFX0lOVkFMSURfSU1QT1JUIDogRXJyb3JDb2RlLk5HTU9EVUxFX0lOVkFMSURfRVhQT1JUO1xuICBjb25zdCByZXNvbHZlVGFyZ2V0ID0gdHlwZSA9PT0gJ2ltcG9ydCcgPyAnTmdNb2R1bGUnIDogJ05nTW9kdWxlLCBDb21wb25lbnQsIERpcmVjdGl2ZSwgb3IgUGlwZSc7XG4gIGxldCBtZXNzYWdlID1cbiAgICAgIGBBcHBlYXJzIGluIHRoZSBOZ01vZHVsZS4ke3R5cGV9cyBvZiAke1xuICAgICAgICAgIG5vZGVOYW1lRm9yRXJyb3IoY2xhenopfSwgYnV0IGNvdWxkIG5vdCBiZSByZXNvbHZlZCB0byBhbiAke3Jlc29sdmVUYXJnZXR9IGNsYXNzLmAgK1xuICAgICAgJ1xcblxcbic7XG4gIGNvbnN0IGxpYnJhcnkgPSBkZWNsLm93bmVkQnlNb2R1bGVHdWVzcyAhPT0gbnVsbCA/IGAgKCR7ZGVjbC5vd25lZEJ5TW9kdWxlR3Vlc3N9KWAgOiAnJztcbiAgY29uc3Qgc2YgPSBkZWNsLm5vZGUuZ2V0U291cmNlRmlsZSgpO1xuXG4gIC8vIFByb3ZpZGUgZXh0cmEgY29udGV4dCB0byB0aGUgZXJyb3IgZm9yIHRoZSB1c2VyLlxuICBpZiAoIXNmLmlzRGVjbGFyYXRpb25GaWxlKSB7XG4gICAgLy8gVGhpcyBpcyBhIGZpbGUgaW4gdGhlIHVzZXIncyBwcm9ncmFtLlxuICAgIGNvbnN0IGFubm90YXRpb25UeXBlID0gdHlwZSA9PT0gJ2ltcG9ydCcgPyAnQE5nTW9kdWxlJyA6ICdBbmd1bGFyJztcbiAgICBtZXNzYWdlICs9IGBJcyBpdCBtaXNzaW5nIGFuICR7YW5ub3RhdGlvblR5cGV9IGFubm90YXRpb24/YDtcbiAgfSBlbHNlIGlmIChzZi5maWxlTmFtZS5pbmRleE9mKCdub2RlX21vZHVsZXMnKSAhPT0gLTEpIHtcbiAgICAvLyBUaGlzIGZpbGUgY29tZXMgZnJvbSBhIHRoaXJkLXBhcnR5IGxpYnJhcnkgaW4gbm9kZV9tb2R1bGVzLlxuICAgIG1lc3NhZ2UgKz1cbiAgICAgICAgYFRoaXMgbGlrZWx5IG1lYW5zIHRoYXQgdGhlIGxpYnJhcnkke2xpYnJhcnl9IHdoaWNoIGRlY2xhcmVzICR7ZGVjbC5kZWJ1Z05hbWV9IGhhcyBub3QgYCArXG4gICAgICAgICdiZWVuIHByb2Nlc3NlZCBjb3JyZWN0bHkgYnkgbmdjYywgb3IgaXMgbm90IGNvbXBhdGlibGUgd2l0aCBBbmd1bGFyIEl2eS4gQ2hlY2sgaWYgYSAnICtcbiAgICAgICAgJ25ld2VyIHZlcnNpb24gb2YgdGhlIGxpYnJhcnkgaXMgYXZhaWxhYmxlLCBhbmQgdXBkYXRlIGlmIHNvLiBBbHNvIGNvbnNpZGVyIGNoZWNraW5nICcgK1xuICAgICAgICAnd2l0aCB0aGUgbGlicmFyeVxcJ3MgYXV0aG9ycyB0byBzZWUgaWYgdGhlIGxpYnJhcnkgaXMgZXhwZWN0ZWQgdG8gYmUgY29tcGF0aWJsZSB3aXRoIEl2eS4nO1xuICB9IGVsc2Uge1xuICAgIC8vIFRoaXMgaXMgYSBtb25vcmVwbyBzdHlsZSBsb2NhbCBkZXBlbmRlbmN5LiBVbmZvcnR1bmF0ZWx5IHRoZXNlIGFyZSB0b28gZGlmZmVyZW50IHRvIHJlYWxseVxuICAgIC8vIG9mZmVyIG11Y2ggbW9yZcKgYWR2aWNlIHRoYW4gdGhpcy5cbiAgICBtZXNzYWdlICs9IGBUaGlzIGxpa2VseSBtZWFucyB0aGF0IHRoZSBkZXBlbmRlbmN5JHtsaWJyYXJ5fSB3aGljaCBkZWNsYXJlcyAke1xuICAgICAgICBkZWNsLmRlYnVnTmFtZX0gaGFzIG5vdCBiZWVuIHByb2Nlc3NlZCBjb3JyZWN0bHkgYnkgbmdjYy5gO1xuICB9XG5cbiAgcmV0dXJuIG1ha2VEaWFnbm9zdGljKGNvZGUsIGlkZW50aWZpZXJPZk5vZGUoZGVjbC5ub2RlKSB8fCBkZWNsLm5vZGUsIG1lc3NhZ2UpO1xufVxuXG4vKipcbiAqIFByb2R1Y2UgYSBgdHMuRGlhZ25vc3RpY2AgZm9yIGFuIGltcG9ydCBvciBleHBvcnQgd2hpY2ggaXRzZWxmIGhhcyBlcnJvcnMuXG4gKi9cbmZ1bmN0aW9uIGludmFsaWRUcmFuc2l0aXZlTmdNb2R1bGVSZWYoXG4gICAgY2xheno6IHRzLkRlY2xhcmF0aW9uLCBkZWNsOiBSZWZlcmVuY2U8dHMuRGVjbGFyYXRpb24+LFxuICAgIHR5cGU6ICdpbXBvcnQnfCdleHBvcnQnKTogdHMuRGlhZ25vc3RpYyB7XG4gIGNvbnN0IGNvZGUgPVxuICAgICAgdHlwZSA9PT0gJ2ltcG9ydCcgPyBFcnJvckNvZGUuTkdNT0RVTEVfSU5WQUxJRF9JTVBPUlQgOiBFcnJvckNvZGUuTkdNT0RVTEVfSU5WQUxJRF9FWFBPUlQ7XG4gIHJldHVybiBtYWtlRGlhZ25vc3RpYyhcbiAgICAgIGNvZGUsIGlkZW50aWZpZXJPZk5vZGUoZGVjbC5ub2RlKSB8fCBkZWNsLm5vZGUsXG4gICAgICBgQXBwZWFycyBpbiB0aGUgTmdNb2R1bGUuJHt0eXBlfXMgb2YgJHtub2RlTmFtZUZvckVycm9yKGNsYXp6KX0sIGJ1dCBpdHNlbGYgaGFzIGVycm9yc2ApO1xufVxuXG4vKipcbiAqIFByb2R1Y2UgYSBgdHMuRGlhZ25vc3RpY2AgZm9yIGFuIGV4cG9ydGVkIGRpcmVjdGl2ZSBvciBwaXBlIHdoaWNoIHdhcyBub3QgZGVjbGFyZWQgb3IgaW1wb3J0ZWRcbiAqIGJ5IHRoZSBOZ01vZHVsZSBpbiBxdWVzdGlvbi5cbiAqL1xuZnVuY3Rpb24gaW52YWxpZFJlZXhwb3J0KGNsYXp6OiB0cy5EZWNsYXJhdGlvbiwgZGVjbDogUmVmZXJlbmNlPHRzLkRlY2xhcmF0aW9uPik6IHRzLkRpYWdub3N0aWMge1xuICByZXR1cm4gbWFrZURpYWdub3N0aWMoXG4gICAgICBFcnJvckNvZGUuTkdNT0RVTEVfSU5WQUxJRF9SRUVYUE9SVCwgaWRlbnRpZmllck9mTm9kZShkZWNsLm5vZGUpIHx8IGRlY2wubm9kZSxcbiAgICAgIGBQcmVzZW50IGluIHRoZSBOZ01vZHVsZS5leHBvcnRzIG9mICR7XG4gICAgICAgICAgbm9kZU5hbWVGb3JFcnJvcihjbGF6eil9IGJ1dCBuZWl0aGVyIGRlY2xhcmVkIG5vciBpbXBvcnRlZGApO1xufVxuXG4vKipcbiAqIFByb2R1Y2UgYSBgdHMuRGlhZ25vc3RpY2AgZm9yIGEgY29sbGlzaW9uIGluIHJlLWV4cG9ydCBuYW1lcyBiZXR3ZWVuIHR3byBkaXJlY3RpdmVzL3BpcGVzLlxuICovXG5mdW5jdGlvbiByZWV4cG9ydENvbGxpc2lvbihcbiAgICBtb2R1bGU6IENsYXNzRGVjbGFyYXRpb24sIHJlZkE6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPixcbiAgICByZWZCOiBSZWZlcmVuY2U8Q2xhc3NEZWNsYXJhdGlvbj4pOiB0cy5EaWFnbm9zdGljIHtcbiAgY29uc3QgY2hpbGRNZXNzYWdlVGV4dCA9IGBUaGlzIGRpcmVjdGl2ZS9waXBlIGlzIHBhcnQgb2YgdGhlIGV4cG9ydHMgb2YgJyR7XG4gICAgICBtb2R1bGUubmFtZS50ZXh0fScgYW5kIHNoYXJlcyB0aGUgc2FtZSBuYW1lIGFzIGFub3RoZXIgZXhwb3J0ZWQgZGlyZWN0aXZlL3BpcGUuYDtcbiAgcmV0dXJuIG1ha2VEaWFnbm9zdGljKFxuICAgICAgRXJyb3JDb2RlLk5HTU9EVUxFX1JFRVhQT1JUX05BTUVfQ09MTElTSU9OLCBtb2R1bGUubmFtZSxcbiAgICAgIGBcbiAgICBUaGVyZSB3YXMgYSBuYW1lIGNvbGxpc2lvbiBiZXR3ZWVuIHR3byBjbGFzc2VzIG5hbWVkICcke1xuICAgICAgICAgIHJlZkEubm9kZS5uYW1lLnRleHR9Jywgd2hpY2ggYXJlIGJvdGggcGFydCBvZiB0aGUgZXhwb3J0cyBvZiAnJHttb2R1bGUubmFtZS50ZXh0fScuXG5cbiAgICBBbmd1bGFyIGdlbmVyYXRlcyByZS1leHBvcnRzIG9mIGFuIE5nTW9kdWxlJ3MgZXhwb3J0ZWQgZGlyZWN0aXZlcy9waXBlcyBmcm9tIHRoZSBtb2R1bGUncyBzb3VyY2UgZmlsZSBpbiBjZXJ0YWluIGNhc2VzLCB1c2luZyB0aGUgZGVjbGFyZWQgbmFtZSBvZiB0aGUgY2xhc3MuIElmIHR3byBjbGFzc2VzIG9mIHRoZSBzYW1lIG5hbWUgYXJlIGV4cG9ydGVkLCB0aGlzIGF1dG9tYXRpYyBuYW1pbmcgZG9lcyBub3Qgd29yay5cblxuICAgIFRvIGZpeCB0aGlzIHByb2JsZW0gcGxlYXNlIHJlLWV4cG9ydCBvbmUgb3IgYm90aCBjbGFzc2VzIGRpcmVjdGx5IGZyb20gdGhpcyBmaWxlLlxuICBgLnRyaW0oKSxcbiAgICAgIFtcbiAgICAgICAgbWFrZVJlbGF0ZWRJbmZvcm1hdGlvbihyZWZBLm5vZGUubmFtZSwgY2hpbGRNZXNzYWdlVGV4dCksXG4gICAgICAgIG1ha2VSZWxhdGVkSW5mb3JtYXRpb24ocmVmQi5ub2RlLm5hbWUsIGNoaWxkTWVzc2FnZVRleHQpLFxuICAgICAgXSk7XG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgRGVjbGFyYXRpb25EYXRhIHtcbiAgbmdNb2R1bGU6IENsYXNzRGVjbGFyYXRpb247XG4gIHJlZjogUmVmZXJlbmNlO1xuICByYXdEZWNsYXJhdGlvbnM6IHRzLkV4cHJlc3Npb258bnVsbDtcbn1cbiJdfQ==