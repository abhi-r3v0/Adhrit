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
        define("@angular/compiler-cli/src/ngtsc/transform/src/compilation", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/ngtsc/diagnostics", "@angular/compiler-cli/src/ngtsc/util/src/typescript", "@angular/compiler-cli/src/ngtsc/transform/src/api", "@angular/compiler-cli/src/ngtsc/transform/src/trait"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.TraitCompiler = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    var diagnostics_1 = require("@angular/compiler-cli/src/ngtsc/diagnostics");
    var typescript_1 = require("@angular/compiler-cli/src/ngtsc/util/src/typescript");
    var api_1 = require("@angular/compiler-cli/src/ngtsc/transform/src/api");
    var trait_1 = require("@angular/compiler-cli/src/ngtsc/transform/src/trait");
    /**
     * The heart of Angular compilation.
     *
     * The `TraitCompiler` is responsible for processing all classes in the program. Any time a
     * `DecoratorHandler` matches a class, a "trait" is created to represent that Angular aspect of the
     * class (such as the class having a component definition).
     *
     * The `TraitCompiler` transitions each trait through the various phases of compilation, culminating
     * in the production of `CompileResult`s instructing the compiler to apply various mutations to the
     * class (like adding fields or type declarations).
     */
    var TraitCompiler = /** @class */ (function () {
        function TraitCompiler(handlers, reflector, perf, incrementalBuild, compileNonExportedClasses, dtsTransforms) {
            var e_1, _a;
            this.handlers = handlers;
            this.reflector = reflector;
            this.perf = perf;
            this.incrementalBuild = incrementalBuild;
            this.compileNonExportedClasses = compileNonExportedClasses;
            this.dtsTransforms = dtsTransforms;
            /**
             * Maps class declarations to their `ClassRecord`, which tracks the Ivy traits being applied to
             * those classes.
             */
            this.classes = new Map();
            /**
             * Maps source files to any class declaration(s) within them which have been discovered to contain
             * Ivy traits.
             */
            this.fileToClasses = new Map();
            this.reexportMap = new Map();
            this.handlersByName = new Map();
            try {
                for (var handlers_1 = tslib_1.__values(handlers), handlers_1_1 = handlers_1.next(); !handlers_1_1.done; handlers_1_1 = handlers_1.next()) {
                    var handler = handlers_1_1.value;
                    this.handlersByName.set(handler.name, handler);
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (handlers_1_1 && !handlers_1_1.done && (_a = handlers_1.return)) _a.call(handlers_1);
                }
                finally { if (e_1) throw e_1.error; }
            }
        }
        TraitCompiler.prototype.analyzeSync = function (sf) {
            this.analyze(sf, false);
        };
        TraitCompiler.prototype.analyzeAsync = function (sf) {
            return this.analyze(sf, true);
        };
        TraitCompiler.prototype.analyze = function (sf, preanalyze) {
            var e_2, _a;
            var _this = this;
            // We shouldn't analyze declaration files.
            if (sf.isDeclarationFile) {
                return undefined;
            }
            // analyze() really wants to return `Promise<void>|void`, but TypeScript cannot narrow a return
            // type of 'void', so `undefined` is used instead.
            var promises = [];
            var priorWork = this.incrementalBuild.priorWorkFor(sf);
            if (priorWork !== null) {
                try {
                    for (var priorWork_1 = tslib_1.__values(priorWork), priorWork_1_1 = priorWork_1.next(); !priorWork_1_1.done; priorWork_1_1 = priorWork_1.next()) {
                        var priorRecord = priorWork_1_1.value;
                        this.adopt(priorRecord);
                    }
                }
                catch (e_2_1) { e_2 = { error: e_2_1 }; }
                finally {
                    try {
                        if (priorWork_1_1 && !priorWork_1_1.done && (_a = priorWork_1.return)) _a.call(priorWork_1);
                    }
                    finally { if (e_2) throw e_2.error; }
                }
                // Skip the rest of analysis, as this file's prior traits are being reused.
                return;
            }
            var visit = function (node) {
                if (_this.reflector.isClass(node)) {
                    _this.analyzeClass(node, preanalyze ? promises : null);
                }
                ts.forEachChild(node, visit);
            };
            visit(sf);
            if (preanalyze && promises.length > 0) {
                return Promise.all(promises).then(function () { return undefined; });
            }
            else {
                return undefined;
            }
        };
        TraitCompiler.prototype.recordFor = function (clazz) {
            if (this.classes.has(clazz)) {
                return this.classes.get(clazz);
            }
            else {
                return null;
            }
        };
        TraitCompiler.prototype.recordsFor = function (sf) {
            var e_3, _a;
            if (!this.fileToClasses.has(sf)) {
                return null;
            }
            var records = [];
            try {
                for (var _b = tslib_1.__values(this.fileToClasses.get(sf)), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var clazz = _c.value;
                    records.push(this.classes.get(clazz));
                }
            }
            catch (e_3_1) { e_3 = { error: e_3_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_3) throw e_3.error; }
            }
            return records;
        };
        /**
         * Import a `ClassRecord` from a previous compilation.
         *
         * Traits from the `ClassRecord` have accurate metadata, but the `handler` is from the old program
         * and needs to be updated (matching is done by name). A new pending trait is created and then
         * transitioned to analyzed using the previous analysis. If the trait is in the errored state,
         * instead the errors are copied over.
         */
        TraitCompiler.prototype.adopt = function (priorRecord) {
            var e_4, _a;
            var record = {
                hasPrimaryHandler: priorRecord.hasPrimaryHandler,
                hasWeakHandlers: priorRecord.hasWeakHandlers,
                metaDiagnostics: priorRecord.metaDiagnostics,
                node: priorRecord.node,
                traits: [],
            };
            try {
                for (var _b = tslib_1.__values(priorRecord.traits), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var priorTrait = _c.value;
                    var handler = this.handlersByName.get(priorTrait.handler.name);
                    var trait = trait_1.Trait.pending(handler, priorTrait.detected);
                    if (priorTrait.state === trait_1.TraitState.ANALYZED || priorTrait.state === trait_1.TraitState.RESOLVED) {
                        trait = trait.toAnalyzed(priorTrait.analysis);
                        if (trait.handler.register !== undefined) {
                            trait.handler.register(record.node, trait.analysis);
                        }
                    }
                    else if (priorTrait.state === trait_1.TraitState.SKIPPED) {
                        trait = trait.toSkipped();
                    }
                    else if (priorTrait.state === trait_1.TraitState.ERRORED) {
                        trait = trait.toErrored(priorTrait.diagnostics);
                    }
                    record.traits.push(trait);
                }
            }
            catch (e_4_1) { e_4 = { error: e_4_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_4) throw e_4.error; }
            }
            this.classes.set(record.node, record);
            var sf = record.node.getSourceFile();
            if (!this.fileToClasses.has(sf)) {
                this.fileToClasses.set(sf, new Set());
            }
            this.fileToClasses.get(sf).add(record.node);
        };
        TraitCompiler.prototype.scanClassForTraits = function (clazz) {
            if (!this.compileNonExportedClasses && !typescript_1.isExported(clazz)) {
                return null;
            }
            var decorators = this.reflector.getDecoratorsOfDeclaration(clazz);
            return this.detectTraits(clazz, decorators);
        };
        TraitCompiler.prototype.detectTraits = function (clazz, decorators) {
            var e_5, _a;
            var record = this.recordFor(clazz);
            var foundTraits = [];
            try {
                for (var _b = tslib_1.__values(this.handlers), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var handler = _c.value;
                    var result = handler.detect(clazz, decorators);
                    if (result === undefined) {
                        continue;
                    }
                    var isPrimaryHandler = handler.precedence === api_1.HandlerPrecedence.PRIMARY;
                    var isWeakHandler = handler.precedence === api_1.HandlerPrecedence.WEAK;
                    var trait = trait_1.Trait.pending(handler, result);
                    foundTraits.push(trait);
                    if (record === null) {
                        // This is the first handler to match this class. This path is a fast path through which
                        // most classes will flow.
                        record = {
                            node: clazz,
                            traits: [trait],
                            metaDiagnostics: null,
                            hasPrimaryHandler: isPrimaryHandler,
                            hasWeakHandlers: isWeakHandler,
                        };
                        this.classes.set(clazz, record);
                        var sf = clazz.getSourceFile();
                        if (!this.fileToClasses.has(sf)) {
                            this.fileToClasses.set(sf, new Set());
                        }
                        this.fileToClasses.get(sf).add(clazz);
                    }
                    else {
                        // This is at least the second handler to match this class. This is a slower path that some
                        // classes will go through, which validates that the set of decorators applied to the class
                        // is valid.
                        // Validate according to rules as follows:
                        //
                        // * WEAK handlers are removed if a non-WEAK handler matches.
                        // * Only one PRIMARY handler can match at a time. Any other PRIMARY handler matching a
                        //   class with an existing PRIMARY handler is an error.
                        if (!isWeakHandler && record.hasWeakHandlers) {
                            // The current handler is not a WEAK handler, but the class has other WEAK handlers.
                            // Remove them.
                            record.traits =
                                record.traits.filter(function (field) { return field.handler.precedence !== api_1.HandlerPrecedence.WEAK; });
                            record.hasWeakHandlers = false;
                        }
                        else if (isWeakHandler && !record.hasWeakHandlers) {
                            // The current handler is a WEAK handler, but the class has non-WEAK handlers already.
                            // Drop the current one.
                            continue;
                        }
                        if (isPrimaryHandler && record.hasPrimaryHandler) {
                            // The class already has a PRIMARY handler, and another one just matched.
                            record.metaDiagnostics = [{
                                    category: ts.DiagnosticCategory.Error,
                                    code: Number('-99' + diagnostics_1.ErrorCode.DECORATOR_COLLISION),
                                    file: typescript_1.getSourceFile(clazz),
                                    start: clazz.getStart(undefined, false),
                                    length: clazz.getWidth(),
                                    messageText: 'Two incompatible decorators on class',
                                }];
                            record.traits = foundTraits = [];
                            break;
                        }
                        // Otherwise, it's safe to accept the multiple decorators here. Update some of the metadata
                        // regarding this class.
                        record.traits.push(trait);
                        record.hasPrimaryHandler = record.hasPrimaryHandler || isPrimaryHandler;
                    }
                }
            }
            catch (e_5_1) { e_5 = { error: e_5_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_5) throw e_5.error; }
            }
            return foundTraits.length > 0 ? foundTraits : null;
        };
        TraitCompiler.prototype.analyzeClass = function (clazz, preanalyzeQueue) {
            var e_6, _a;
            var _this = this;
            var traits = this.scanClassForTraits(clazz);
            if (traits === null) {
                // There are no Ivy traits on the class, so it can safely be skipped.
                return;
            }
            var _loop_1 = function (trait) {
                var analyze = function () { return _this.analyzeTrait(clazz, trait); };
                var preanalysis = null;
                if (preanalyzeQueue !== null && trait.handler.preanalyze !== undefined) {
                    // Attempt to run preanalysis. This could fail with a `FatalDiagnosticError`; catch it if it
                    // does.
                    try {
                        preanalysis = trait.handler.preanalyze(clazz, trait.detected.metadata) || null;
                    }
                    catch (err) {
                        if (err instanceof diagnostics_1.FatalDiagnosticError) {
                            trait.toErrored([err.toDiagnostic()]);
                            return { value: void 0 };
                        }
                        else {
                            throw err;
                        }
                    }
                }
                if (preanalysis !== null) {
                    preanalyzeQueue.push(preanalysis.then(analyze));
                }
                else {
                    analyze();
                }
            };
            try {
                for (var traits_1 = tslib_1.__values(traits), traits_1_1 = traits_1.next(); !traits_1_1.done; traits_1_1 = traits_1.next()) {
                    var trait = traits_1_1.value;
                    var state_1 = _loop_1(trait);
                    if (typeof state_1 === "object")
                        return state_1.value;
                }
            }
            catch (e_6_1) { e_6 = { error: e_6_1 }; }
            finally {
                try {
                    if (traits_1_1 && !traits_1_1.done && (_a = traits_1.return)) _a.call(traits_1);
                }
                finally { if (e_6) throw e_6.error; }
            }
        };
        TraitCompiler.prototype.analyzeTrait = function (clazz, trait, flags) {
            if (trait.state !== trait_1.TraitState.PENDING) {
                throw new Error("Attempt to analyze trait of " + clazz.name.text + " in state " + trait_1.TraitState[trait.state] + " (expected DETECTED)");
            }
            // Attempt analysis. This could fail with a `FatalDiagnosticError`; catch it if it does.
            var result;
            try {
                result = trait.handler.analyze(clazz, trait.detected.metadata, flags);
            }
            catch (err) {
                if (err instanceof diagnostics_1.FatalDiagnosticError) {
                    trait = trait.toErrored([err.toDiagnostic()]);
                    return;
                }
                else {
                    throw err;
                }
            }
            if (result.diagnostics !== undefined) {
                trait = trait.toErrored(result.diagnostics);
            }
            else if (result.analysis !== undefined) {
                // Analysis was successful. Trigger registration.
                if (trait.handler.register !== undefined) {
                    trait.handler.register(clazz, result.analysis);
                }
                // Successfully analyzed and registered.
                trait = trait.toAnalyzed(result.analysis);
            }
            else {
                trait = trait.toSkipped();
            }
        };
        TraitCompiler.prototype.resolve = function () {
            var e_7, _a, e_8, _b, e_9, _c;
            var classes = Array.from(this.classes.keys());
            try {
                for (var classes_1 = tslib_1.__values(classes), classes_1_1 = classes_1.next(); !classes_1_1.done; classes_1_1 = classes_1.next()) {
                    var clazz = classes_1_1.value;
                    var record = this.classes.get(clazz);
                    try {
                        for (var _d = (e_8 = void 0, tslib_1.__values(record.traits)), _e = _d.next(); !_e.done; _e = _d.next()) {
                            var trait = _e.value;
                            var handler = trait.handler;
                            switch (trait.state) {
                                case trait_1.TraitState.SKIPPED:
                                case trait_1.TraitState.ERRORED:
                                    continue;
                                case trait_1.TraitState.PENDING:
                                    throw new Error("Resolving a trait that hasn't been analyzed: " + clazz.name.text + " / " + Object.getPrototypeOf(trait.handler).constructor.name);
                                case trait_1.TraitState.RESOLVED:
                                    throw new Error("Resolving an already resolved trait");
                            }
                            if (handler.resolve === undefined) {
                                // No resolution of this trait needed - it's considered successful by default.
                                trait = trait.toResolved(null);
                                continue;
                            }
                            var result = void 0;
                            try {
                                result = handler.resolve(clazz, trait.analysis);
                            }
                            catch (err) {
                                if (err instanceof diagnostics_1.FatalDiagnosticError) {
                                    trait = trait.toErrored([err.toDiagnostic()]);
                                    continue;
                                }
                                else {
                                    throw err;
                                }
                            }
                            if (result.diagnostics !== undefined && result.diagnostics.length > 0) {
                                trait = trait.toErrored(result.diagnostics);
                            }
                            else {
                                if (result.data !== undefined) {
                                    trait = trait.toResolved(result.data);
                                }
                                else {
                                    trait = trait.toResolved(null);
                                }
                            }
                            if (result.reexports !== undefined) {
                                var fileName = clazz.getSourceFile().fileName;
                                if (!this.reexportMap.has(fileName)) {
                                    this.reexportMap.set(fileName, new Map());
                                }
                                var fileReexports = this.reexportMap.get(fileName);
                                try {
                                    for (var _f = (e_9 = void 0, tslib_1.__values(result.reexports)), _g = _f.next(); !_g.done; _g = _f.next()) {
                                        var reexport = _g.value;
                                        fileReexports.set(reexport.asAlias, [reexport.fromModule, reexport.symbolName]);
                                    }
                                }
                                catch (e_9_1) { e_9 = { error: e_9_1 }; }
                                finally {
                                    try {
                                        if (_g && !_g.done && (_c = _f.return)) _c.call(_f);
                                    }
                                    finally { if (e_9) throw e_9.error; }
                                }
                            }
                        }
                    }
                    catch (e_8_1) { e_8 = { error: e_8_1 }; }
                    finally {
                        try {
                            if (_e && !_e.done && (_b = _d.return)) _b.call(_d);
                        }
                        finally { if (e_8) throw e_8.error; }
                    }
                }
            }
            catch (e_7_1) { e_7 = { error: e_7_1 }; }
            finally {
                try {
                    if (classes_1_1 && !classes_1_1.done && (_a = classes_1.return)) _a.call(classes_1);
                }
                finally { if (e_7) throw e_7.error; }
            }
        };
        /**
         * Generate type-checking code into the `TypeCheckContext` for any components within the given
         * `ts.SourceFile`.
         */
        TraitCompiler.prototype.typeCheck = function (sf, ctx) {
            var e_10, _a, e_11, _b;
            if (!this.fileToClasses.has(sf)) {
                return;
            }
            try {
                for (var _c = tslib_1.__values(this.fileToClasses.get(sf)), _d = _c.next(); !_d.done; _d = _c.next()) {
                    var clazz = _d.value;
                    var record = this.classes.get(clazz);
                    try {
                        for (var _e = (e_11 = void 0, tslib_1.__values(record.traits)), _f = _e.next(); !_f.done; _f = _e.next()) {
                            var trait = _f.value;
                            if (trait.state !== trait_1.TraitState.RESOLVED) {
                                continue;
                            }
                            else if (trait.handler.typeCheck === undefined) {
                                continue;
                            }
                            trait.handler.typeCheck(ctx, clazz, trait.analysis, trait.resolution);
                        }
                    }
                    catch (e_11_1) { e_11 = { error: e_11_1 }; }
                    finally {
                        try {
                            if (_f && !_f.done && (_b = _e.return)) _b.call(_e);
                        }
                        finally { if (e_11) throw e_11.error; }
                    }
                }
            }
            catch (e_10_1) { e_10 = { error: e_10_1 }; }
            finally {
                try {
                    if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
                }
                finally { if (e_10) throw e_10.error; }
            }
        };
        TraitCompiler.prototype.index = function (ctx) {
            var e_12, _a, e_13, _b;
            try {
                for (var _c = tslib_1.__values(this.classes.keys()), _d = _c.next(); !_d.done; _d = _c.next()) {
                    var clazz = _d.value;
                    var record = this.classes.get(clazz);
                    try {
                        for (var _e = (e_13 = void 0, tslib_1.__values(record.traits)), _f = _e.next(); !_f.done; _f = _e.next()) {
                            var trait = _f.value;
                            if (trait.state !== trait_1.TraitState.RESOLVED) {
                                // Skip traits that haven't been resolved successfully.
                                continue;
                            }
                            else if (trait.handler.index === undefined) {
                                // Skip traits that don't affect indexing.
                                continue;
                            }
                            trait.handler.index(ctx, clazz, trait.analysis, trait.resolution);
                        }
                    }
                    catch (e_13_1) { e_13 = { error: e_13_1 }; }
                    finally {
                        try {
                            if (_f && !_f.done && (_b = _e.return)) _b.call(_e);
                        }
                        finally { if (e_13) throw e_13.error; }
                    }
                }
            }
            catch (e_12_1) { e_12 = { error: e_12_1 }; }
            finally {
                try {
                    if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
                }
                finally { if (e_12) throw e_12.error; }
            }
        };
        TraitCompiler.prototype.compile = function (clazz, constantPool) {
            var e_14, _a;
            var original = ts.getOriginalNode(clazz);
            if (!this.reflector.isClass(clazz) || !this.reflector.isClass(original) ||
                !this.classes.has(original)) {
                return null;
            }
            var record = this.classes.get(original);
            var res = [];
            var _loop_2 = function (trait) {
                var e_15, _a;
                if (trait.state !== trait_1.TraitState.RESOLVED) {
                    return "continue";
                }
                var compileSpan = this_1.perf.start('compileClass', original);
                var compileMatchRes = trait.handler.compile(clazz, trait.analysis, trait.resolution, constantPool);
                this_1.perf.stop(compileSpan);
                if (Array.isArray(compileMatchRes)) {
                    var _loop_3 = function (result) {
                        if (!res.some(function (r) { return r.name === result.name; })) {
                            res.push(result);
                        }
                    };
                    try {
                        for (var compileMatchRes_1 = (e_15 = void 0, tslib_1.__values(compileMatchRes)), compileMatchRes_1_1 = compileMatchRes_1.next(); !compileMatchRes_1_1.done; compileMatchRes_1_1 = compileMatchRes_1.next()) {
                            var result = compileMatchRes_1_1.value;
                            _loop_3(result);
                        }
                    }
                    catch (e_15_1) { e_15 = { error: e_15_1 }; }
                    finally {
                        try {
                            if (compileMatchRes_1_1 && !compileMatchRes_1_1.done && (_a = compileMatchRes_1.return)) _a.call(compileMatchRes_1);
                        }
                        finally { if (e_15) throw e_15.error; }
                    }
                }
                else if (!res.some(function (result) { return result.name === compileMatchRes.name; })) {
                    res.push(compileMatchRes);
                }
            };
            var this_1 = this;
            try {
                for (var _b = tslib_1.__values(record.traits), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var trait = _c.value;
                    _loop_2(trait);
                }
            }
            catch (e_14_1) { e_14 = { error: e_14_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_14) throw e_14.error; }
            }
            // Look up the .d.ts transformer for the input file and record that at least one field was
            // generated, which will allow the .d.ts to be transformed later.
            this.dtsTransforms.getIvyDeclarationTransform(original.getSourceFile())
                .addFields(original, res);
            // Return the instruction to the transformer so the fields will be added.
            return res.length > 0 ? res : null;
        };
        TraitCompiler.prototype.decoratorsFor = function (node) {
            var e_16, _a;
            var original = ts.getOriginalNode(node);
            if (!this.reflector.isClass(original) || !this.classes.has(original)) {
                return [];
            }
            var record = this.classes.get(original);
            var decorators = [];
            try {
                for (var _b = tslib_1.__values(record.traits), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var trait = _c.value;
                    if (trait.state !== trait_1.TraitState.RESOLVED) {
                        continue;
                    }
                    if (trait.detected.trigger !== null && ts.isDecorator(trait.detected.trigger)) {
                        decorators.push(trait.detected.trigger);
                    }
                }
            }
            catch (e_16_1) { e_16 = { error: e_16_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_16) throw e_16.error; }
            }
            return decorators;
        };
        Object.defineProperty(TraitCompiler.prototype, "diagnostics", {
            get: function () {
                var e_17, _a, e_18, _b;
                var diagnostics = [];
                try {
                    for (var _c = tslib_1.__values(this.classes.keys()), _d = _c.next(); !_d.done; _d = _c.next()) {
                        var clazz = _d.value;
                        var record = this.classes.get(clazz);
                        if (record.metaDiagnostics !== null) {
                            diagnostics.push.apply(diagnostics, tslib_1.__spread(record.metaDiagnostics));
                        }
                        try {
                            for (var _e = (e_18 = void 0, tslib_1.__values(record.traits)), _f = _e.next(); !_f.done; _f = _e.next()) {
                                var trait = _f.value;
                                if (trait.state === trait_1.TraitState.ERRORED) {
                                    diagnostics.push.apply(diagnostics, tslib_1.__spread(trait.diagnostics));
                                }
                            }
                        }
                        catch (e_18_1) { e_18 = { error: e_18_1 }; }
                        finally {
                            try {
                                if (_f && !_f.done && (_b = _e.return)) _b.call(_e);
                            }
                            finally { if (e_18) throw e_18.error; }
                        }
                    }
                }
                catch (e_17_1) { e_17 = { error: e_17_1 }; }
                finally {
                    try {
                        if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
                    }
                    finally { if (e_17) throw e_17.error; }
                }
                return diagnostics;
            },
            enumerable: false,
            configurable: true
        });
        Object.defineProperty(TraitCompiler.prototype, "exportStatements", {
            get: function () {
                return this.reexportMap;
            },
            enumerable: false,
            configurable: true
        });
        return TraitCompiler;
    }());
    exports.TraitCompiler = TraitCompiler;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29tcGlsYXRpb24uanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3RyYW5zZm9ybS9zcmMvY29tcGlsYXRpb24udHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUdILCtCQUFpQztJQUVqQywyRUFBa0U7SUFNbEUsa0ZBQW9FO0lBRXBFLHlFQUFzSDtJQUV0SCw2RUFBd0Q7SUFxQ3hEOzs7Ozs7Ozs7O09BVUc7SUFDSDtRQWlCRSx1QkFDWSxRQUF1RCxFQUN2RCxTQUF5QixFQUFVLElBQWtCLEVBQ3JELGdCQUF3RCxFQUN4RCx5QkFBa0MsRUFBVSxhQUFtQzs7WUFIL0UsYUFBUSxHQUFSLFFBQVEsQ0FBK0M7WUFDdkQsY0FBUyxHQUFULFNBQVMsQ0FBZ0I7WUFBVSxTQUFJLEdBQUosSUFBSSxDQUFjO1lBQ3JELHFCQUFnQixHQUFoQixnQkFBZ0IsQ0FBd0M7WUFDeEQsOEJBQXlCLEdBQXpCLHlCQUF5QixDQUFTO1lBQVUsa0JBQWEsR0FBYixhQUFhLENBQXNCO1lBcEIzRjs7O2VBR0c7WUFDSyxZQUFPLEdBQUcsSUFBSSxHQUFHLEVBQWlDLENBQUM7WUFFM0Q7OztlQUdHO1lBQ08sa0JBQWEsR0FBRyxJQUFJLEdBQUcsRUFBd0MsQ0FBQztZQUVsRSxnQkFBVyxHQUFHLElBQUksR0FBRyxFQUF5QyxDQUFDO1lBRS9ELG1CQUFjLEdBQUcsSUFBSSxHQUFHLEVBQXVELENBQUM7O2dCQU90RixLQUFzQixJQUFBLGFBQUEsaUJBQUEsUUFBUSxDQUFBLGtDQUFBLHdEQUFFO29CQUEzQixJQUFNLE9BQU8scUJBQUE7b0JBQ2hCLElBQUksQ0FBQyxjQUFjLENBQUMsR0FBRyxDQUFDLE9BQU8sQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLENBQUM7aUJBQ2hEOzs7Ozs7Ozs7UUFDSCxDQUFDO1FBRUQsbUNBQVcsR0FBWCxVQUFZLEVBQWlCO1lBQzNCLElBQUksQ0FBQyxPQUFPLENBQUMsRUFBRSxFQUFFLEtBQUssQ0FBQyxDQUFDO1FBQzFCLENBQUM7UUFFRCxvQ0FBWSxHQUFaLFVBQWEsRUFBaUI7WUFDNUIsT0FBTyxJQUFJLENBQUMsT0FBTyxDQUFDLEVBQUUsRUFBRSxJQUFJLENBQUMsQ0FBQztRQUNoQyxDQUFDO1FBSU8sK0JBQU8sR0FBZixVQUFnQixFQUFpQixFQUFFLFVBQW1COztZQUF0RCxpQkFrQ0M7WUFqQ0MsMENBQTBDO1lBQzFDLElBQUksRUFBRSxDQUFDLGlCQUFpQixFQUFFO2dCQUN4QixPQUFPLFNBQVMsQ0FBQzthQUNsQjtZQUVELCtGQUErRjtZQUMvRixrREFBa0Q7WUFDbEQsSUFBTSxRQUFRLEdBQW9CLEVBQUUsQ0FBQztZQUVyQyxJQUFNLFNBQVMsR0FBRyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsWUFBWSxDQUFDLEVBQUUsQ0FBQyxDQUFDO1lBQ3pELElBQUksU0FBUyxLQUFLLElBQUksRUFBRTs7b0JBQ3RCLEtBQTBCLElBQUEsY0FBQSxpQkFBQSxTQUFTLENBQUEsb0NBQUEsMkRBQUU7d0JBQWhDLElBQU0sV0FBVyxzQkFBQTt3QkFDcEIsSUFBSSxDQUFDLEtBQUssQ0FBQyxXQUFXLENBQUMsQ0FBQztxQkFDekI7Ozs7Ozs7OztnQkFFRCwyRUFBMkU7Z0JBQzNFLE9BQU87YUFDUjtZQUVELElBQU0sS0FBSyxHQUFHLFVBQUMsSUFBYTtnQkFDMUIsSUFBSSxLQUFJLENBQUMsU0FBUyxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsRUFBRTtvQkFDaEMsS0FBSSxDQUFDLFlBQVksQ0FBQyxJQUFJLEVBQUUsVUFBVSxDQUFDLENBQUMsQ0FBQyxRQUFRLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxDQUFDO2lCQUN2RDtnQkFDRCxFQUFFLENBQUMsWUFBWSxDQUFDLElBQUksRUFBRSxLQUFLLENBQUMsQ0FBQztZQUMvQixDQUFDLENBQUM7WUFFRixLQUFLLENBQUMsRUFBRSxDQUFDLENBQUM7WUFFVixJQUFJLFVBQVUsSUFBSSxRQUFRLENBQUMsTUFBTSxHQUFHLENBQUMsRUFBRTtnQkFDckMsT0FBTyxPQUFPLENBQUMsR0FBRyxDQUFDLFFBQVEsQ0FBQyxDQUFDLElBQUksQ0FBQyxjQUFNLE9BQUEsU0FBaUIsRUFBakIsQ0FBaUIsQ0FBQyxDQUFDO2FBQzVEO2lCQUFNO2dCQUNMLE9BQU8sU0FBUyxDQUFDO2FBQ2xCO1FBQ0gsQ0FBQztRQUVELGlDQUFTLEdBQVQsVUFBVSxLQUF1QjtZQUMvQixJQUFJLElBQUksQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBQyxFQUFFO2dCQUMzQixPQUFPLElBQUksQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBRSxDQUFDO2FBQ2pDO2lCQUFNO2dCQUNMLE9BQU8sSUFBSSxDQUFDO2FBQ2I7UUFDSCxDQUFDO1FBRUQsa0NBQVUsR0FBVixVQUFXLEVBQWlCOztZQUMxQixJQUFJLENBQUMsSUFBSSxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEVBQUU7Z0JBQy9CLE9BQU8sSUFBSSxDQUFDO2FBQ2I7WUFDRCxJQUFNLE9BQU8sR0FBa0IsRUFBRSxDQUFDOztnQkFDbEMsS0FBb0IsSUFBQSxLQUFBLGlCQUFBLElBQUksQ0FBQyxhQUFhLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBRSxDQUFBLGdCQUFBLDRCQUFFO29CQUE1QyxJQUFNLEtBQUssV0FBQTtvQkFDZCxPQUFPLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBRSxDQUFDLENBQUM7aUJBQ3hDOzs7Ozs7Ozs7WUFDRCxPQUFPLE9BQU8sQ0FBQztRQUNqQixDQUFDO1FBRUQ7Ozs7Ozs7V0FPRztRQUNLLDZCQUFLLEdBQWIsVUFBYyxXQUF3Qjs7WUFDcEMsSUFBTSxNQUFNLEdBQWdCO2dCQUMxQixpQkFBaUIsRUFBRSxXQUFXLENBQUMsaUJBQWlCO2dCQUNoRCxlQUFlLEVBQUUsV0FBVyxDQUFDLGVBQWU7Z0JBQzVDLGVBQWUsRUFBRSxXQUFXLENBQUMsZUFBZTtnQkFDNUMsSUFBSSxFQUFFLFdBQVcsQ0FBQyxJQUFJO2dCQUN0QixNQUFNLEVBQUUsRUFBRTthQUNYLENBQUM7O2dCQUVGLEtBQXlCLElBQUEsS0FBQSxpQkFBQSxXQUFXLENBQUMsTUFBTSxDQUFBLGdCQUFBLDRCQUFFO29CQUF4QyxJQUFNLFVBQVUsV0FBQTtvQkFDbkIsSUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLGNBQWMsQ0FBQyxHQUFHLENBQUMsVUFBVSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUUsQ0FBQztvQkFDbEUsSUFBSSxLQUFLLEdBQXFDLGFBQUssQ0FBQyxPQUFPLENBQUMsT0FBTyxFQUFFLFVBQVUsQ0FBQyxRQUFRLENBQUMsQ0FBQztvQkFFMUYsSUFBSSxVQUFVLENBQUMsS0FBSyxLQUFLLGtCQUFVLENBQUMsUUFBUSxJQUFJLFVBQVUsQ0FBQyxLQUFLLEtBQUssa0JBQVUsQ0FBQyxRQUFRLEVBQUU7d0JBQ3hGLEtBQUssR0FBRyxLQUFLLENBQUMsVUFBVSxDQUFDLFVBQVUsQ0FBQyxRQUFRLENBQUMsQ0FBQzt3QkFDOUMsSUFBSSxLQUFLLENBQUMsT0FBTyxDQUFDLFFBQVEsS0FBSyxTQUFTLEVBQUU7NEJBQ3hDLEtBQUssQ0FBQyxPQUFPLENBQUMsUUFBUSxDQUFDLE1BQU0sQ0FBQyxJQUFJLEVBQUUsS0FBSyxDQUFDLFFBQVEsQ0FBQyxDQUFDO3lCQUNyRDtxQkFDRjt5QkFBTSxJQUFJLFVBQVUsQ0FBQyxLQUFLLEtBQUssa0JBQVUsQ0FBQyxPQUFPLEVBQUU7d0JBQ2xELEtBQUssR0FBRyxLQUFLLENBQUMsU0FBUyxFQUFFLENBQUM7cUJBQzNCO3lCQUFNLElBQUksVUFBVSxDQUFDLEtBQUssS0FBSyxrQkFBVSxDQUFDLE9BQU8sRUFBRTt3QkFDbEQsS0FBSyxHQUFHLEtBQUssQ0FBQyxTQUFTLENBQUMsVUFBVSxDQUFDLFdBQVcsQ0FBQyxDQUFDO3FCQUNqRDtvQkFFRCxNQUFNLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQztpQkFDM0I7Ozs7Ozs7OztZQUVELElBQUksQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLE1BQU0sQ0FBQyxJQUFJLEVBQUUsTUFBTSxDQUFDLENBQUM7WUFDdEMsSUFBTSxFQUFFLEdBQUcsTUFBTSxDQUFDLElBQUksQ0FBQyxhQUFhLEVBQUUsQ0FBQztZQUN2QyxJQUFJLENBQUMsSUFBSSxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEVBQUU7Z0JBQy9CLElBQUksQ0FBQyxhQUFhLENBQUMsR0FBRyxDQUFDLEVBQUUsRUFBRSxJQUFJLEdBQUcsRUFBb0IsQ0FBQyxDQUFDO2FBQ3pEO1lBQ0QsSUFBSSxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFFLENBQUMsR0FBRyxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUMvQyxDQUFDO1FBRU8sMENBQWtCLEdBQTFCLFVBQTJCLEtBQXVCO1lBRWhELElBQUksQ0FBQyxJQUFJLENBQUMseUJBQXlCLElBQUksQ0FBQyx1QkFBVSxDQUFDLEtBQUssQ0FBQyxFQUFFO2dCQUN6RCxPQUFPLElBQUksQ0FBQzthQUNiO1lBRUQsSUFBTSxVQUFVLEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQywwQkFBMEIsQ0FBQyxLQUFLLENBQUMsQ0FBQztZQUVwRSxPQUFPLElBQUksQ0FBQyxZQUFZLENBQUMsS0FBSyxFQUFFLFVBQVUsQ0FBQyxDQUFDO1FBQzlDLENBQUM7UUFFUyxvQ0FBWSxHQUF0QixVQUF1QixLQUF1QixFQUFFLFVBQTRCOztZQUUxRSxJQUFJLE1BQU0sR0FBcUIsSUFBSSxDQUFDLFNBQVMsQ0FBQyxLQUFLLENBQUMsQ0FBQztZQUNyRCxJQUFJLFdBQVcsR0FBOEMsRUFBRSxDQUFDOztnQkFFaEUsS0FBc0IsSUFBQSxLQUFBLGlCQUFBLElBQUksQ0FBQyxRQUFRLENBQUEsZ0JBQUEsNEJBQUU7b0JBQWhDLElBQU0sT0FBTyxXQUFBO29CQUNoQixJQUFNLE1BQU0sR0FBRyxPQUFPLENBQUMsTUFBTSxDQUFDLEtBQUssRUFBRSxVQUFVLENBQUMsQ0FBQztvQkFDakQsSUFBSSxNQUFNLEtBQUssU0FBUyxFQUFFO3dCQUN4QixTQUFTO3FCQUNWO29CQUVELElBQU0sZ0JBQWdCLEdBQUcsT0FBTyxDQUFDLFVBQVUsS0FBSyx1QkFBaUIsQ0FBQyxPQUFPLENBQUM7b0JBQzFFLElBQU0sYUFBYSxHQUFHLE9BQU8sQ0FBQyxVQUFVLEtBQUssdUJBQWlCLENBQUMsSUFBSSxDQUFDO29CQUNwRSxJQUFNLEtBQUssR0FBRyxhQUFLLENBQUMsT0FBTyxDQUFDLE9BQU8sRUFBRSxNQUFNLENBQUMsQ0FBQztvQkFFN0MsV0FBVyxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQztvQkFFeEIsSUFBSSxNQUFNLEtBQUssSUFBSSxFQUFFO3dCQUNuQix3RkFBd0Y7d0JBQ3hGLDBCQUEwQjt3QkFDMUIsTUFBTSxHQUFHOzRCQUNQLElBQUksRUFBRSxLQUFLOzRCQUNYLE1BQU0sRUFBRSxDQUFDLEtBQUssQ0FBQzs0QkFDZixlQUFlLEVBQUUsSUFBSTs0QkFDckIsaUJBQWlCLEVBQUUsZ0JBQWdCOzRCQUNuQyxlQUFlLEVBQUUsYUFBYTt5QkFDL0IsQ0FBQzt3QkFFRixJQUFJLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxLQUFLLEVBQUUsTUFBTSxDQUFDLENBQUM7d0JBQ2hDLElBQU0sRUFBRSxHQUFHLEtBQUssQ0FBQyxhQUFhLEVBQUUsQ0FBQzt3QkFDakMsSUFBSSxDQUFDLElBQUksQ0FBQyxhQUFhLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxFQUFFOzRCQUMvQixJQUFJLENBQUMsYUFBYSxDQUFDLEdBQUcsQ0FBQyxFQUFFLEVBQUUsSUFBSSxHQUFHLEVBQW9CLENBQUMsQ0FBQzt5QkFDekQ7d0JBQ0QsSUFBSSxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFFLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBQyxDQUFDO3FCQUN4Qzt5QkFBTTt3QkFDTCwyRkFBMkY7d0JBQzNGLDJGQUEyRjt3QkFDM0YsWUFBWTt3QkFFWiwwQ0FBMEM7d0JBQzFDLEVBQUU7d0JBQ0YsNkRBQTZEO3dCQUM3RCx1RkFBdUY7d0JBQ3ZGLHdEQUF3RDt3QkFFeEQsSUFBSSxDQUFDLGFBQWEsSUFBSSxNQUFNLENBQUMsZUFBZSxFQUFFOzRCQUM1QyxvRkFBb0Y7NEJBQ3BGLGVBQWU7NEJBQ2YsTUFBTSxDQUFDLE1BQU07Z0NBQ1QsTUFBTSxDQUFDLE1BQU0sQ0FBQyxNQUFNLENBQUMsVUFBQSxLQUFLLElBQUksT0FBQSxLQUFLLENBQUMsT0FBTyxDQUFDLFVBQVUsS0FBSyx1QkFBaUIsQ0FBQyxJQUFJLEVBQW5ELENBQW1ELENBQUMsQ0FBQzs0QkFDdkYsTUFBTSxDQUFDLGVBQWUsR0FBRyxLQUFLLENBQUM7eUJBQ2hDOzZCQUFNLElBQUksYUFBYSxJQUFJLENBQUMsTUFBTSxDQUFDLGVBQWUsRUFBRTs0QkFDbkQsc0ZBQXNGOzRCQUN0Rix3QkFBd0I7NEJBQ3hCLFNBQVM7eUJBQ1Y7d0JBRUQsSUFBSSxnQkFBZ0IsSUFBSSxNQUFNLENBQUMsaUJBQWlCLEVBQUU7NEJBQ2hELHlFQUF5RTs0QkFDekUsTUFBTSxDQUFDLGVBQWUsR0FBRyxDQUFDO29DQUN4QixRQUFRLEVBQUUsRUFBRSxDQUFDLGtCQUFrQixDQUFDLEtBQUs7b0NBQ3JDLElBQUksRUFBRSxNQUFNLENBQUMsS0FBSyxHQUFHLHVCQUFTLENBQUMsbUJBQW1CLENBQUM7b0NBQ25ELElBQUksRUFBRSwwQkFBYSxDQUFDLEtBQUssQ0FBQztvQ0FDMUIsS0FBSyxFQUFFLEtBQUssQ0FBQyxRQUFRLENBQUMsU0FBUyxFQUFFLEtBQUssQ0FBQztvQ0FDdkMsTUFBTSxFQUFFLEtBQUssQ0FBQyxRQUFRLEVBQUU7b0NBQ3hCLFdBQVcsRUFBRSxzQ0FBc0M7aUNBQ3BELENBQUMsQ0FBQzs0QkFDSCxNQUFNLENBQUMsTUFBTSxHQUFHLFdBQVcsR0FBRyxFQUFFLENBQUM7NEJBQ2pDLE1BQU07eUJBQ1A7d0JBRUQsMkZBQTJGO3dCQUMzRix3QkFBd0I7d0JBQ3hCLE1BQU0sQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDO3dCQUMxQixNQUFNLENBQUMsaUJBQWlCLEdBQUcsTUFBTSxDQUFDLGlCQUFpQixJQUFJLGdCQUFnQixDQUFDO3FCQUN6RTtpQkFDRjs7Ozs7Ozs7O1lBRUQsT0FBTyxXQUFXLENBQUMsTUFBTSxHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUMsV0FBVyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUM7UUFDckQsQ0FBQztRQUVTLG9DQUFZLEdBQXRCLFVBQXVCLEtBQXVCLEVBQUUsZUFBcUM7O1lBQXJGLGlCQWdDQztZQS9CQyxJQUFNLE1BQU0sR0FBRyxJQUFJLENBQUMsa0JBQWtCLENBQUMsS0FBSyxDQUFDLENBQUM7WUFFOUMsSUFBSSxNQUFNLEtBQUssSUFBSSxFQUFFO2dCQUNuQixxRUFBcUU7Z0JBQ3JFLE9BQU87YUFDUjtvQ0FFVSxLQUFLO2dCQUNkLElBQU0sT0FBTyxHQUFHLGNBQU0sT0FBQSxLQUFJLENBQUMsWUFBWSxDQUFDLEtBQUssRUFBRSxLQUFLLENBQUMsRUFBL0IsQ0FBK0IsQ0FBQztnQkFFdEQsSUFBSSxXQUFXLEdBQXVCLElBQUksQ0FBQztnQkFDM0MsSUFBSSxlQUFlLEtBQUssSUFBSSxJQUFJLEtBQUssQ0FBQyxPQUFPLENBQUMsVUFBVSxLQUFLLFNBQVMsRUFBRTtvQkFDdEUsNEZBQTRGO29CQUM1RixRQUFRO29CQUNSLElBQUk7d0JBQ0YsV0FBVyxHQUFHLEtBQUssQ0FBQyxPQUFPLENBQUMsVUFBVSxDQUFDLEtBQUssRUFBRSxLQUFLLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxJQUFJLElBQUksQ0FBQztxQkFDaEY7b0JBQUMsT0FBTyxHQUFHLEVBQUU7d0JBQ1osSUFBSSxHQUFHLFlBQVksa0NBQW9CLEVBQUU7NEJBQ3ZDLEtBQUssQ0FBQyxTQUFTLENBQUMsQ0FBQyxHQUFHLENBQUMsWUFBWSxFQUFFLENBQUMsQ0FBQyxDQUFDOzt5QkFFdkM7NkJBQU07NEJBQ0wsTUFBTSxHQUFHLENBQUM7eUJBQ1g7cUJBQ0Y7aUJBQ0Y7Z0JBQ0QsSUFBSSxXQUFXLEtBQUssSUFBSSxFQUFFO29CQUN4QixlQUFnQixDQUFDLElBQUksQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUM7aUJBQ2xEO3FCQUFNO29CQUNMLE9BQU8sRUFBRSxDQUFDO2lCQUNYOzs7Z0JBdEJILEtBQW9CLElBQUEsV0FBQSxpQkFBQSxNQUFNLENBQUEsOEJBQUE7b0JBQXJCLElBQU0sS0FBSyxtQkFBQTswQ0FBTCxLQUFLOzs7aUJBdUJmOzs7Ozs7Ozs7UUFDSCxDQUFDO1FBRVMsb0NBQVksR0FBdEIsVUFDSSxLQUF1QixFQUFFLEtBQXVDLEVBQ2hFLEtBQW9CO1lBQ3RCLElBQUksS0FBSyxDQUFDLEtBQUssS0FBSyxrQkFBVSxDQUFDLE9BQU8sRUFBRTtnQkFDdEMsTUFBTSxJQUFJLEtBQUssQ0FBQyxpQ0FBK0IsS0FBSyxDQUFDLElBQUksQ0FBQyxJQUFJLGtCQUMxRCxrQkFBVSxDQUFDLEtBQUssQ0FBQyxLQUFLLENBQUMseUJBQXNCLENBQUMsQ0FBQzthQUNwRDtZQUVELHdGQUF3RjtZQUN4RixJQUFJLE1BQStCLENBQUM7WUFDcEMsSUFBSTtnQkFDRixNQUFNLEdBQUcsS0FBSyxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsS0FBSyxFQUFFLEtBQUssQ0FBQyxRQUFRLENBQUMsUUFBUSxFQUFFLEtBQUssQ0FBQyxDQUFDO2FBQ3ZFO1lBQUMsT0FBTyxHQUFHLEVBQUU7Z0JBQ1osSUFBSSxHQUFHLFlBQVksa0NBQW9CLEVBQUU7b0JBQ3ZDLEtBQUssR0FBRyxLQUFLLENBQUMsU0FBUyxDQUFDLENBQUMsR0FBRyxDQUFDLFlBQVksRUFBRSxDQUFDLENBQUMsQ0FBQztvQkFDOUMsT0FBTztpQkFDUjtxQkFBTTtvQkFDTCxNQUFNLEdBQUcsQ0FBQztpQkFDWDthQUNGO1lBRUQsSUFBSSxNQUFNLENBQUMsV0FBVyxLQUFLLFNBQVMsRUFBRTtnQkFDcEMsS0FBSyxHQUFHLEtBQUssQ0FBQyxTQUFTLENBQUMsTUFBTSxDQUFDLFdBQVcsQ0FBQyxDQUFDO2FBQzdDO2lCQUFNLElBQUksTUFBTSxDQUFDLFFBQVEsS0FBSyxTQUFTLEVBQUU7Z0JBQ3hDLGlEQUFpRDtnQkFDakQsSUFBSSxLQUFLLENBQUMsT0FBTyxDQUFDLFFBQVEsS0FBSyxTQUFTLEVBQUU7b0JBQ3hDLEtBQUssQ0FBQyxPQUFPLENBQUMsUUFBUSxDQUFDLEtBQUssRUFBRSxNQUFNLENBQUMsUUFBUSxDQUFDLENBQUM7aUJBQ2hEO2dCQUVELHdDQUF3QztnQkFDeEMsS0FBSyxHQUFHLEtBQUssQ0FBQyxVQUFVLENBQUMsTUFBTSxDQUFDLFFBQVEsQ0FBQyxDQUFDO2FBQzNDO2lCQUFNO2dCQUNMLEtBQUssR0FBRyxLQUFLLENBQUMsU0FBUyxFQUFFLENBQUM7YUFDM0I7UUFDSCxDQUFDO1FBRUQsK0JBQU8sR0FBUDs7WUFDRSxJQUFNLE9BQU8sR0FBRyxLQUFLLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxFQUFFLENBQUMsQ0FBQzs7Z0JBQ2hELEtBQW9CLElBQUEsWUFBQSxpQkFBQSxPQUFPLENBQUEsZ0NBQUEscURBQUU7b0JBQXhCLElBQU0sS0FBSyxvQkFBQTtvQkFDZCxJQUFNLE1BQU0sR0FBRyxJQUFJLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxLQUFLLENBQUUsQ0FBQzs7d0JBQ3hDLEtBQWtCLElBQUEsb0JBQUEsaUJBQUEsTUFBTSxDQUFDLE1BQU0sQ0FBQSxDQUFBLGdCQUFBLDRCQUFFOzRCQUE1QixJQUFJLEtBQUssV0FBQTs0QkFDWixJQUFNLE9BQU8sR0FBRyxLQUFLLENBQUMsT0FBTyxDQUFDOzRCQUM5QixRQUFRLEtBQUssQ0FBQyxLQUFLLEVBQUU7Z0NBQ25CLEtBQUssa0JBQVUsQ0FBQyxPQUFPLENBQUM7Z0NBQ3hCLEtBQUssa0JBQVUsQ0FBQyxPQUFPO29DQUNyQixTQUFTO2dDQUNYLEtBQUssa0JBQVUsQ0FBQyxPQUFPO29DQUNyQixNQUFNLElBQUksS0FBSyxDQUFDLGtEQUFnRCxLQUFLLENBQUMsSUFBSSxDQUFDLElBQUksV0FDM0UsTUFBTSxDQUFDLGNBQWMsQ0FBQyxLQUFLLENBQUMsT0FBTyxDQUFDLENBQUMsV0FBVyxDQUFDLElBQU0sQ0FBQyxDQUFDO2dDQUMvRCxLQUFLLGtCQUFVLENBQUMsUUFBUTtvQ0FDdEIsTUFBTSxJQUFJLEtBQUssQ0FBQyxxQ0FBcUMsQ0FBQyxDQUFDOzZCQUMxRDs0QkFFRCxJQUFJLE9BQU8sQ0FBQyxPQUFPLEtBQUssU0FBUyxFQUFFO2dDQUNqQyw4RUFBOEU7Z0NBQzlFLEtBQUssR0FBRyxLQUFLLENBQUMsVUFBVSxDQUFDLElBQUksQ0FBQyxDQUFDO2dDQUMvQixTQUFTOzZCQUNWOzRCQUVELElBQUksTUFBTSxTQUF3QixDQUFDOzRCQUNuQyxJQUFJO2dDQUNGLE1BQU0sR0FBRyxPQUFPLENBQUMsT0FBTyxDQUFDLEtBQUssRUFBRSxLQUFLLENBQUMsUUFBNkIsQ0FBQyxDQUFDOzZCQUN0RTs0QkFBQyxPQUFPLEdBQUcsRUFBRTtnQ0FDWixJQUFJLEdBQUcsWUFBWSxrQ0FBb0IsRUFBRTtvQ0FDdkMsS0FBSyxHQUFHLEtBQUssQ0FBQyxTQUFTLENBQUMsQ0FBQyxHQUFHLENBQUMsWUFBWSxFQUFFLENBQUMsQ0FBQyxDQUFDO29DQUM5QyxTQUFTO2lDQUNWO3FDQUFNO29DQUNMLE1BQU0sR0FBRyxDQUFDO2lDQUNYOzZCQUNGOzRCQUVELElBQUksTUFBTSxDQUFDLFdBQVcsS0FBSyxTQUFTLElBQUksTUFBTSxDQUFDLFdBQVcsQ0FBQyxNQUFNLEdBQUcsQ0FBQyxFQUFFO2dDQUNyRSxLQUFLLEdBQUcsS0FBSyxDQUFDLFNBQVMsQ0FBQyxNQUFNLENBQUMsV0FBVyxDQUFDLENBQUM7NkJBQzdDO2lDQUFNO2dDQUNMLElBQUksTUFBTSxDQUFDLElBQUksS0FBSyxTQUFTLEVBQUU7b0NBQzdCLEtBQUssR0FBRyxLQUFLLENBQUMsVUFBVSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsQ0FBQztpQ0FDdkM7cUNBQU07b0NBQ0wsS0FBSyxHQUFHLEtBQUssQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLENBQUM7aUNBQ2hDOzZCQUNGOzRCQUVELElBQUksTUFBTSxDQUFDLFNBQVMsS0FBSyxTQUFTLEVBQUU7Z0NBQ2xDLElBQU0sUUFBUSxHQUFHLEtBQUssQ0FBQyxhQUFhLEVBQUUsQ0FBQyxRQUFRLENBQUM7Z0NBQ2hELElBQUksQ0FBQyxJQUFJLENBQUMsV0FBVyxDQUFDLEdBQUcsQ0FBQyxRQUFRLENBQUMsRUFBRTtvQ0FDbkMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxHQUFHLENBQUMsUUFBUSxFQUFFLElBQUksR0FBRyxFQUE0QixDQUFDLENBQUM7aUNBQ3JFO2dDQUNELElBQU0sYUFBYSxHQUFHLElBQUksQ0FBQyxXQUFXLENBQUMsR0FBRyxDQUFDLFFBQVEsQ0FBRSxDQUFDOztvQ0FDdEQsS0FBdUIsSUFBQSxvQkFBQSxpQkFBQSxNQUFNLENBQUMsU0FBUyxDQUFBLENBQUEsZ0JBQUEsNEJBQUU7d0NBQXBDLElBQU0sUUFBUSxXQUFBO3dDQUNqQixhQUFhLENBQUMsR0FBRyxDQUFDLFFBQVEsQ0FBQyxPQUFPLEVBQUUsQ0FBQyxRQUFRLENBQUMsVUFBVSxFQUFFLFFBQVEsQ0FBQyxVQUFVLENBQUMsQ0FBQyxDQUFDO3FDQUNqRjs7Ozs7Ozs7OzZCQUNGO3lCQUNGOzs7Ozs7Ozs7aUJBQ0Y7Ozs7Ozs7OztRQUNILENBQUM7UUFFRDs7O1dBR0c7UUFDSCxpQ0FBUyxHQUFULFVBQVUsRUFBaUIsRUFBRSxHQUFxQjs7WUFDaEQsSUFBSSxDQUFDLElBQUksQ0FBQyxhQUFhLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxFQUFFO2dCQUMvQixPQUFPO2FBQ1I7O2dCQUVELEtBQW9CLElBQUEsS0FBQSxpQkFBQSxJQUFJLENBQUMsYUFBYSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUUsQ0FBQSxnQkFBQSw0QkFBRTtvQkFBNUMsSUFBTSxLQUFLLFdBQUE7b0JBQ2QsSUFBTSxNQUFNLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsS0FBSyxDQUFFLENBQUM7O3dCQUN4QyxLQUFvQixJQUFBLHFCQUFBLGlCQUFBLE1BQU0sQ0FBQyxNQUFNLENBQUEsQ0FBQSxnQkFBQSw0QkFBRTs0QkFBOUIsSUFBTSxLQUFLLFdBQUE7NEJBQ2QsSUFBSSxLQUFLLENBQUMsS0FBSyxLQUFLLGtCQUFVLENBQUMsUUFBUSxFQUFFO2dDQUN2QyxTQUFTOzZCQUNWO2lDQUFNLElBQUksS0FBSyxDQUFDLE9BQU8sQ0FBQyxTQUFTLEtBQUssU0FBUyxFQUFFO2dDQUNoRCxTQUFTOzZCQUNWOzRCQUNELEtBQUssQ0FBQyxPQUFPLENBQUMsU0FBUyxDQUFDLEdBQUcsRUFBRSxLQUFLLEVBQUUsS0FBSyxDQUFDLFFBQVEsRUFBRSxLQUFLLENBQUMsVUFBVSxDQUFDLENBQUM7eUJBQ3ZFOzs7Ozs7Ozs7aUJBQ0Y7Ozs7Ozs7OztRQUNILENBQUM7UUFFRCw2QkFBSyxHQUFMLFVBQU0sR0FBb0I7OztnQkFDeEIsS0FBb0IsSUFBQSxLQUFBLGlCQUFBLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxFQUFFLENBQUEsZ0JBQUEsNEJBQUU7b0JBQXBDLElBQU0sS0FBSyxXQUFBO29CQUNkLElBQU0sTUFBTSxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBRSxDQUFDOzt3QkFDeEMsS0FBb0IsSUFBQSxxQkFBQSxpQkFBQSxNQUFNLENBQUMsTUFBTSxDQUFBLENBQUEsZ0JBQUEsNEJBQUU7NEJBQTlCLElBQU0sS0FBSyxXQUFBOzRCQUNkLElBQUksS0FBSyxDQUFDLEtBQUssS0FBSyxrQkFBVSxDQUFDLFFBQVEsRUFBRTtnQ0FDdkMsdURBQXVEO2dDQUN2RCxTQUFTOzZCQUNWO2lDQUFNLElBQUksS0FBSyxDQUFDLE9BQU8sQ0FBQyxLQUFLLEtBQUssU0FBUyxFQUFFO2dDQUM1QywwQ0FBMEM7Z0NBQzFDLFNBQVM7NkJBQ1Y7NEJBRUQsS0FBSyxDQUFDLE9BQU8sQ0FBQyxLQUFLLENBQUMsR0FBRyxFQUFFLEtBQUssRUFBRSxLQUFLLENBQUMsUUFBUSxFQUFFLEtBQUssQ0FBQyxVQUFVLENBQUMsQ0FBQzt5QkFDbkU7Ozs7Ozs7OztpQkFDRjs7Ozs7Ozs7O1FBQ0gsQ0FBQztRQUVELCtCQUFPLEdBQVAsVUFBUSxLQUFxQixFQUFFLFlBQTBCOztZQUN2RCxJQUFNLFFBQVEsR0FBRyxFQUFFLENBQUMsZUFBZSxDQUFDLEtBQUssQ0FBaUIsQ0FBQztZQUMzRCxJQUFJLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxPQUFPLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLE9BQU8sQ0FBQyxRQUFRLENBQUM7Z0JBQ25FLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsUUFBUSxDQUFDLEVBQUU7Z0JBQy9CLE9BQU8sSUFBSSxDQUFDO2FBQ2I7WUFFRCxJQUFNLE1BQU0sR0FBRyxJQUFJLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxRQUFRLENBQUUsQ0FBQztZQUUzQyxJQUFJLEdBQUcsR0FBb0IsRUFBRSxDQUFDO29DQUVuQixLQUFLOztnQkFDZCxJQUFJLEtBQUssQ0FBQyxLQUFLLEtBQUssa0JBQVUsQ0FBQyxRQUFRLEVBQUU7O2lCQUV4QztnQkFFRCxJQUFNLFdBQVcsR0FBRyxPQUFLLElBQUksQ0FBQyxLQUFLLENBQUMsY0FBYyxFQUFFLFFBQVEsQ0FBQyxDQUFDO2dCQUM5RCxJQUFNLGVBQWUsR0FDakIsS0FBSyxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsS0FBSyxFQUFFLEtBQUssQ0FBQyxRQUFRLEVBQUUsS0FBSyxDQUFDLFVBQVUsRUFBRSxZQUFZLENBQUMsQ0FBQztnQkFDakYsT0FBSyxJQUFJLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxDQUFDO2dCQUM1QixJQUFJLEtBQUssQ0FBQyxPQUFPLENBQUMsZUFBZSxDQUFDLEVBQUU7NENBQ3ZCLE1BQU07d0JBQ2YsSUFBSSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsVUFBQSxDQUFDLElBQUksT0FBQSxDQUFDLENBQUMsSUFBSSxLQUFLLE1BQU0sQ0FBQyxJQUFJLEVBQXRCLENBQXNCLENBQUMsRUFBRTs0QkFDMUMsR0FBRyxDQUFDLElBQUksQ0FBQyxNQUFNLENBQUMsQ0FBQzt5QkFDbEI7Ozt3QkFISCxLQUFxQixJQUFBLG9DQUFBLGlCQUFBLGVBQWUsQ0FBQSxDQUFBLGdEQUFBOzRCQUEvQixJQUFNLE1BQU0sNEJBQUE7b0NBQU4sTUFBTTt5QkFJaEI7Ozs7Ozs7OztpQkFDRjtxQkFBTSxJQUFJLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxVQUFBLE1BQU0sSUFBSSxPQUFBLE1BQU0sQ0FBQyxJQUFJLEtBQUssZUFBZSxDQUFDLElBQUksRUFBcEMsQ0FBb0MsQ0FBQyxFQUFFO29CQUNwRSxHQUFHLENBQUMsSUFBSSxDQUFDLGVBQWUsQ0FBQyxDQUFDO2lCQUMzQjs7OztnQkFqQkgsS0FBb0IsSUFBQSxLQUFBLGlCQUFBLE1BQU0sQ0FBQyxNQUFNLENBQUEsZ0JBQUE7b0JBQTVCLElBQU0sS0FBSyxXQUFBOzRCQUFMLEtBQUs7aUJBa0JmOzs7Ozs7Ozs7WUFFRCwwRkFBMEY7WUFDMUYsaUVBQWlFO1lBQ2pFLElBQUksQ0FBQyxhQUFhLENBQUMsMEJBQTBCLENBQUMsUUFBUSxDQUFDLGFBQWEsRUFBRSxDQUFDO2lCQUNsRSxTQUFTLENBQUMsUUFBUSxFQUFFLEdBQUcsQ0FBQyxDQUFDO1lBRTlCLHlFQUF5RTtZQUN6RSxPQUFPLEdBQUcsQ0FBQyxNQUFNLEdBQUcsQ0FBQyxDQUFDLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQztRQUNyQyxDQUFDO1FBRUQscUNBQWEsR0FBYixVQUFjLElBQW9COztZQUNoQyxJQUFNLFFBQVEsR0FBRyxFQUFFLENBQUMsZUFBZSxDQUFDLElBQUksQ0FBZ0IsQ0FBQztZQUN6RCxJQUFJLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxPQUFPLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxRQUFRLENBQUMsRUFBRTtnQkFDcEUsT0FBTyxFQUFFLENBQUM7YUFDWDtZQUVELElBQU0sTUFBTSxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLFFBQVEsQ0FBRSxDQUFDO1lBQzNDLElBQU0sVUFBVSxHQUFtQixFQUFFLENBQUM7O2dCQUV0QyxLQUFvQixJQUFBLEtBQUEsaUJBQUEsTUFBTSxDQUFDLE1BQU0sQ0FBQSxnQkFBQSw0QkFBRTtvQkFBOUIsSUFBTSxLQUFLLFdBQUE7b0JBQ2QsSUFBSSxLQUFLLENBQUMsS0FBSyxLQUFLLGtCQUFVLENBQUMsUUFBUSxFQUFFO3dCQUN2QyxTQUFTO3FCQUNWO29CQUVELElBQUksS0FBSyxDQUFDLFFBQVEsQ0FBQyxPQUFPLEtBQUssSUFBSSxJQUFJLEVBQUUsQ0FBQyxXQUFXLENBQUMsS0FBSyxDQUFDLFFBQVEsQ0FBQyxPQUFPLENBQUMsRUFBRTt3QkFDN0UsVUFBVSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsUUFBUSxDQUFDLE9BQU8sQ0FBQyxDQUFDO3FCQUN6QztpQkFDRjs7Ozs7Ozs7O1lBRUQsT0FBTyxVQUFVLENBQUM7UUFDcEIsQ0FBQztRQUVELHNCQUFJLHNDQUFXO2lCQUFmOztnQkFDRSxJQUFNLFdBQVcsR0FBb0IsRUFBRSxDQUFDOztvQkFDeEMsS0FBb0IsSUFBQSxLQUFBLGlCQUFBLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxFQUFFLENBQUEsZ0JBQUEsNEJBQUU7d0JBQXBDLElBQU0sS0FBSyxXQUFBO3dCQUNkLElBQU0sTUFBTSxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBRSxDQUFDO3dCQUN4QyxJQUFJLE1BQU0sQ0FBQyxlQUFlLEtBQUssSUFBSSxFQUFFOzRCQUNuQyxXQUFXLENBQUMsSUFBSSxPQUFoQixXQUFXLG1CQUFTLE1BQU0sQ0FBQyxlQUFlLEdBQUU7eUJBQzdDOzs0QkFDRCxLQUFvQixJQUFBLHFCQUFBLGlCQUFBLE1BQU0sQ0FBQyxNQUFNLENBQUEsQ0FBQSxnQkFBQSw0QkFBRTtnQ0FBOUIsSUFBTSxLQUFLLFdBQUE7Z0NBQ2QsSUFBSSxLQUFLLENBQUMsS0FBSyxLQUFLLGtCQUFVLENBQUMsT0FBTyxFQUFFO29DQUN0QyxXQUFXLENBQUMsSUFBSSxPQUFoQixXQUFXLG1CQUFTLEtBQUssQ0FBQyxXQUFXLEdBQUU7aUNBQ3hDOzZCQUNGOzs7Ozs7Ozs7cUJBQ0Y7Ozs7Ozs7OztnQkFDRCxPQUFPLFdBQVcsQ0FBQztZQUNyQixDQUFDOzs7V0FBQTtRQUVELHNCQUFJLDJDQUFnQjtpQkFBcEI7Z0JBQ0UsT0FBTyxJQUFJLENBQUMsV0FBVyxDQUFDO1lBQzFCLENBQUM7OztXQUFBO1FBQ0gsb0JBQUM7SUFBRCxDQUFDLEFBNWRELElBNGRDO0lBNWRZLHNDQUFhIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Q29uc3RhbnRQb29sfSBmcm9tICdAYW5ndWxhci9jb21waWxlcic7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtFcnJvckNvZGUsIEZhdGFsRGlhZ25vc3RpY0Vycm9yfSBmcm9tICcuLi8uLi9kaWFnbm9zdGljcyc7XG5pbXBvcnQge0luY3JlbWVudGFsQnVpbGR9IGZyb20gJy4uLy4uL2luY3JlbWVudGFsL2FwaSc7XG5pbXBvcnQge0luZGV4aW5nQ29udGV4dH0gZnJvbSAnLi4vLi4vaW5kZXhlcic7XG5pbXBvcnQge1BlcmZSZWNvcmRlcn0gZnJvbSAnLi4vLi4vcGVyZic7XG5pbXBvcnQge0NsYXNzRGVjbGFyYXRpb24sIERlY29yYXRvciwgUmVmbGVjdGlvbkhvc3R9IGZyb20gJy4uLy4uL3JlZmxlY3Rpb24nO1xuaW1wb3J0IHtQcm9ncmFtVHlwZUNoZWNrQWRhcHRlciwgVHlwZUNoZWNrQ29udGV4dH0gZnJvbSAnLi4vLi4vdHlwZWNoZWNrL2FwaSc7XG5pbXBvcnQge2dldFNvdXJjZUZpbGUsIGlzRXhwb3J0ZWR9IGZyb20gJy4uLy4uL3V0aWwvc3JjL3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge0FuYWx5c2lzT3V0cHV0LCBDb21waWxlUmVzdWx0LCBEZWNvcmF0b3JIYW5kbGVyLCBIYW5kbGVyRmxhZ3MsIEhhbmRsZXJQcmVjZWRlbmNlLCBSZXNvbHZlUmVzdWx0fSBmcm9tICcuL2FwaSc7XG5pbXBvcnQge0R0c1RyYW5zZm9ybVJlZ2lzdHJ5fSBmcm9tICcuL2RlY2xhcmF0aW9uJztcbmltcG9ydCB7UGVuZGluZ1RyYWl0LCBUcmFpdCwgVHJhaXRTdGF0ZX0gZnJvbSAnLi90cmFpdCc7XG5cblxuLyoqXG4gKiBSZWNvcmRzIGluZm9ybWF0aW9uIGFib3V0IGEgc3BlY2lmaWMgY2xhc3MgdGhhdCBoYXMgbWF0Y2hlZCB0cmFpdHMuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgQ2xhc3NSZWNvcmQge1xuICAvKipcbiAgICogVGhlIGBDbGFzc0RlY2xhcmF0aW9uYCBvZiB0aGUgY2xhc3Mgd2hpY2ggaGFzIEFuZ3VsYXIgdHJhaXRzIGFwcGxpZWQuXG4gICAqL1xuICBub2RlOiBDbGFzc0RlY2xhcmF0aW9uO1xuXG4gIC8qKlxuICAgKiBBbGwgdHJhaXRzIHdoaWNoIG1hdGNoZWQgb24gdGhlIGNsYXNzLlxuICAgKi9cbiAgdHJhaXRzOiBUcmFpdDx1bmtub3duLCB1bmtub3duLCB1bmtub3duPltdO1xuXG4gIC8qKlxuICAgKiBNZXRhLWRpYWdub3N0aWNzIGFib3V0IHRoZSBjbGFzcywgd2hpY2ggYXJlIHVzdWFsbHkgcmVsYXRlZCB0byB3aGV0aGVyIGNlcnRhaW4gY29tYmluYXRpb25zIG9mXG4gICAqIEFuZ3VsYXIgZGVjb3JhdG9ycyBhcmUgbm90IHBlcm1pdHRlZC5cbiAgICovXG4gIG1ldGFEaWFnbm9zdGljczogdHMuRGlhZ25vc3RpY1tdfG51bGw7XG5cbiAgLy8gU3Vic2VxdWVudCBmaWVsZHMgYXJlIFwiaW50ZXJuYWxcIiBhbmQgdXNlZCBkdXJpbmcgdGhlIG1hdGNoaW5nIG9mIGBEZWNvcmF0b3JIYW5kbGVyYHMuIFRoaXMgaXNcbiAgLy8gbXV0YWJsZSBzdGF0ZSBkdXJpbmcgdGhlIGBkZXRlY3RgL2BhbmFseXplYCBwaGFzZXMgb2YgY29tcGlsYXRpb24uXG5cbiAgLyoqXG4gICAqIFdoZXRoZXIgYHRyYWl0c2AgY29udGFpbnMgdHJhaXRzIG1hdGNoZWQgZnJvbSBgRGVjb3JhdG9ySGFuZGxlcmBzIG1hcmtlZCBhcyBgV0VBS2AuXG4gICAqL1xuICBoYXNXZWFrSGFuZGxlcnM6IGJvb2xlYW47XG5cbiAgLyoqXG4gICAqIFdoZXRoZXIgYHRyYWl0c2AgY29udGFpbnMgYSB0cmFpdCBmcm9tIGEgYERlY29yYXRvckhhbmRsZXJgIG1hdGNoZWQgYXMgYFBSSU1BUllgLlxuICAgKi9cbiAgaGFzUHJpbWFyeUhhbmRsZXI6IGJvb2xlYW47XG59XG5cbi8qKlxuICogVGhlIGhlYXJ0IG9mIEFuZ3VsYXIgY29tcGlsYXRpb24uXG4gKlxuICogVGhlIGBUcmFpdENvbXBpbGVyYCBpcyByZXNwb25zaWJsZSBmb3IgcHJvY2Vzc2luZyBhbGwgY2xhc3NlcyBpbiB0aGUgcHJvZ3JhbS4gQW55IHRpbWUgYVxuICogYERlY29yYXRvckhhbmRsZXJgIG1hdGNoZXMgYSBjbGFzcywgYSBcInRyYWl0XCIgaXMgY3JlYXRlZCB0byByZXByZXNlbnQgdGhhdCBBbmd1bGFyIGFzcGVjdCBvZiB0aGVcbiAqIGNsYXNzIChzdWNoIGFzIHRoZSBjbGFzcyBoYXZpbmcgYSBjb21wb25lbnQgZGVmaW5pdGlvbikuXG4gKlxuICogVGhlIGBUcmFpdENvbXBpbGVyYCB0cmFuc2l0aW9ucyBlYWNoIHRyYWl0IHRocm91Z2ggdGhlIHZhcmlvdXMgcGhhc2VzIG9mIGNvbXBpbGF0aW9uLCBjdWxtaW5hdGluZ1xuICogaW4gdGhlIHByb2R1Y3Rpb24gb2YgYENvbXBpbGVSZXN1bHRgcyBpbnN0cnVjdGluZyB0aGUgY29tcGlsZXIgdG8gYXBwbHkgdmFyaW91cyBtdXRhdGlvbnMgdG8gdGhlXG4gKiBjbGFzcyAobGlrZSBhZGRpbmcgZmllbGRzIG9yIHR5cGUgZGVjbGFyYXRpb25zKS5cbiAqL1xuZXhwb3J0IGNsYXNzIFRyYWl0Q29tcGlsZXIgaW1wbGVtZW50cyBQcm9ncmFtVHlwZUNoZWNrQWRhcHRlciB7XG4gIC8qKlxuICAgKiBNYXBzIGNsYXNzIGRlY2xhcmF0aW9ucyB0byB0aGVpciBgQ2xhc3NSZWNvcmRgLCB3aGljaCB0cmFja3MgdGhlIEl2eSB0cmFpdHMgYmVpbmcgYXBwbGllZCB0b1xuICAgKiB0aG9zZSBjbGFzc2VzLlxuICAgKi9cbiAgcHJpdmF0ZSBjbGFzc2VzID0gbmV3IE1hcDxDbGFzc0RlY2xhcmF0aW9uLCBDbGFzc1JlY29yZD4oKTtcblxuICAvKipcbiAgICogTWFwcyBzb3VyY2UgZmlsZXMgdG8gYW55IGNsYXNzIGRlY2xhcmF0aW9uKHMpIHdpdGhpbiB0aGVtIHdoaWNoIGhhdmUgYmVlbiBkaXNjb3ZlcmVkIHRvIGNvbnRhaW5cbiAgICogSXZ5IHRyYWl0cy5cbiAgICovXG4gIHByb3RlY3RlZCBmaWxlVG9DbGFzc2VzID0gbmV3IE1hcDx0cy5Tb3VyY2VGaWxlLCBTZXQ8Q2xhc3NEZWNsYXJhdGlvbj4+KCk7XG5cbiAgcHJpdmF0ZSByZWV4cG9ydE1hcCA9IG5ldyBNYXA8c3RyaW5nLCBNYXA8c3RyaW5nLCBbc3RyaW5nLCBzdHJpbmddPj4oKTtcblxuICBwcml2YXRlIGhhbmRsZXJzQnlOYW1lID0gbmV3IE1hcDxzdHJpbmcsIERlY29yYXRvckhhbmRsZXI8dW5rbm93biwgdW5rbm93biwgdW5rbm93bj4+KCk7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIGhhbmRsZXJzOiBEZWNvcmF0b3JIYW5kbGVyPHVua25vd24sIHVua25vd24sIHVua25vd24+W10sXG4gICAgICBwcml2YXRlIHJlZmxlY3RvcjogUmVmbGVjdGlvbkhvc3QsIHByaXZhdGUgcGVyZjogUGVyZlJlY29yZGVyLFxuICAgICAgcHJpdmF0ZSBpbmNyZW1lbnRhbEJ1aWxkOiBJbmNyZW1lbnRhbEJ1aWxkPENsYXNzUmVjb3JkLCB1bmtub3duPixcbiAgICAgIHByaXZhdGUgY29tcGlsZU5vbkV4cG9ydGVkQ2xhc3NlczogYm9vbGVhbiwgcHJpdmF0ZSBkdHNUcmFuc2Zvcm1zOiBEdHNUcmFuc2Zvcm1SZWdpc3RyeSkge1xuICAgIGZvciAoY29uc3QgaGFuZGxlciBvZiBoYW5kbGVycykge1xuICAgICAgdGhpcy5oYW5kbGVyc0J5TmFtZS5zZXQoaGFuZGxlci5uYW1lLCBoYW5kbGVyKTtcbiAgICB9XG4gIH1cblxuICBhbmFseXplU3luYyhzZjogdHMuU291cmNlRmlsZSk6IHZvaWQge1xuICAgIHRoaXMuYW5hbHl6ZShzZiwgZmFsc2UpO1xuICB9XG5cbiAgYW5hbHl6ZUFzeW5jKHNmOiB0cy5Tb3VyY2VGaWxlKTogUHJvbWlzZTx2b2lkPnx1bmRlZmluZWQge1xuICAgIHJldHVybiB0aGlzLmFuYWx5emUoc2YsIHRydWUpO1xuICB9XG5cbiAgcHJpdmF0ZSBhbmFseXplKHNmOiB0cy5Tb3VyY2VGaWxlLCBwcmVhbmFseXplOiBmYWxzZSk6IHZvaWQ7XG4gIHByaXZhdGUgYW5hbHl6ZShzZjogdHMuU291cmNlRmlsZSwgcHJlYW5hbHl6ZTogdHJ1ZSk6IFByb21pc2U8dm9pZD58dW5kZWZpbmVkO1xuICBwcml2YXRlIGFuYWx5emUoc2Y6IHRzLlNvdXJjZUZpbGUsIHByZWFuYWx5emU6IGJvb2xlYW4pOiBQcm9taXNlPHZvaWQ+fHVuZGVmaW5lZCB7XG4gICAgLy8gV2Ugc2hvdWxkbid0IGFuYWx5emUgZGVjbGFyYXRpb24gZmlsZXMuXG4gICAgaWYgKHNmLmlzRGVjbGFyYXRpb25GaWxlKSB7XG4gICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgIH1cblxuICAgIC8vIGFuYWx5emUoKSByZWFsbHkgd2FudHMgdG8gcmV0dXJuIGBQcm9taXNlPHZvaWQ+fHZvaWRgLCBidXQgVHlwZVNjcmlwdCBjYW5ub3QgbmFycm93IGEgcmV0dXJuXG4gICAgLy8gdHlwZSBvZiAndm9pZCcsIHNvIGB1bmRlZmluZWRgIGlzIHVzZWQgaW5zdGVhZC5cbiAgICBjb25zdCBwcm9taXNlczogUHJvbWlzZTx2b2lkPltdID0gW107XG5cbiAgICBjb25zdCBwcmlvcldvcmsgPSB0aGlzLmluY3JlbWVudGFsQnVpbGQucHJpb3JXb3JrRm9yKHNmKTtcbiAgICBpZiAocHJpb3JXb3JrICE9PSBudWxsKSB7XG4gICAgICBmb3IgKGNvbnN0IHByaW9yUmVjb3JkIG9mIHByaW9yV29yaykge1xuICAgICAgICB0aGlzLmFkb3B0KHByaW9yUmVjb3JkKTtcbiAgICAgIH1cblxuICAgICAgLy8gU2tpcCB0aGUgcmVzdCBvZiBhbmFseXNpcywgYXMgdGhpcyBmaWxlJ3MgcHJpb3IgdHJhaXRzIGFyZSBiZWluZyByZXVzZWQuXG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3QgdmlzaXQgPSAobm9kZTogdHMuTm9kZSk6IHZvaWQgPT4ge1xuICAgICAgaWYgKHRoaXMucmVmbGVjdG9yLmlzQ2xhc3Mobm9kZSkpIHtcbiAgICAgICAgdGhpcy5hbmFseXplQ2xhc3Mobm9kZSwgcHJlYW5hbHl6ZSA/IHByb21pc2VzIDogbnVsbCk7XG4gICAgICB9XG4gICAgICB0cy5mb3JFYWNoQ2hpbGQobm9kZSwgdmlzaXQpO1xuICAgIH07XG5cbiAgICB2aXNpdChzZik7XG5cbiAgICBpZiAocHJlYW5hbHl6ZSAmJiBwcm9taXNlcy5sZW5ndGggPiAwKSB7XG4gICAgICByZXR1cm4gUHJvbWlzZS5hbGwocHJvbWlzZXMpLnRoZW4oKCkgPT4gdW5kZWZpbmVkIGFzIHZvaWQpO1xuICAgIH0gZWxzZSB7XG4gICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgIH1cbiAgfVxuXG4gIHJlY29yZEZvcihjbGF6ejogQ2xhc3NEZWNsYXJhdGlvbik6IENsYXNzUmVjb3JkfG51bGwge1xuICAgIGlmICh0aGlzLmNsYXNzZXMuaGFzKGNsYXp6KSkge1xuICAgICAgcmV0dXJuIHRoaXMuY2xhc3Nlcy5nZXQoY2xhenopITtcbiAgICB9IGVsc2Uge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICB9XG5cbiAgcmVjb3Jkc0ZvcihzZjogdHMuU291cmNlRmlsZSk6IENsYXNzUmVjb3JkW118bnVsbCB7XG4gICAgaWYgKCF0aGlzLmZpbGVUb0NsYXNzZXMuaGFzKHNmKSkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIGNvbnN0IHJlY29yZHM6IENsYXNzUmVjb3JkW10gPSBbXTtcbiAgICBmb3IgKGNvbnN0IGNsYXp6IG9mIHRoaXMuZmlsZVRvQ2xhc3Nlcy5nZXQoc2YpISkge1xuICAgICAgcmVjb3Jkcy5wdXNoKHRoaXMuY2xhc3Nlcy5nZXQoY2xhenopISk7XG4gICAgfVxuICAgIHJldHVybiByZWNvcmRzO1xuICB9XG5cbiAgLyoqXG4gICAqIEltcG9ydCBhIGBDbGFzc1JlY29yZGAgZnJvbSBhIHByZXZpb3VzIGNvbXBpbGF0aW9uLlxuICAgKlxuICAgKiBUcmFpdHMgZnJvbSB0aGUgYENsYXNzUmVjb3JkYCBoYXZlIGFjY3VyYXRlIG1ldGFkYXRhLCBidXQgdGhlIGBoYW5kbGVyYCBpcyBmcm9tIHRoZSBvbGQgcHJvZ3JhbVxuICAgKiBhbmQgbmVlZHMgdG8gYmUgdXBkYXRlZCAobWF0Y2hpbmcgaXMgZG9uZSBieSBuYW1lKS4gQSBuZXcgcGVuZGluZyB0cmFpdCBpcyBjcmVhdGVkIGFuZCB0aGVuXG4gICAqIHRyYW5zaXRpb25lZCB0byBhbmFseXplZCB1c2luZyB0aGUgcHJldmlvdXMgYW5hbHlzaXMuIElmIHRoZSB0cmFpdCBpcyBpbiB0aGUgZXJyb3JlZCBzdGF0ZSxcbiAgICogaW5zdGVhZCB0aGUgZXJyb3JzIGFyZSBjb3BpZWQgb3Zlci5cbiAgICovXG4gIHByaXZhdGUgYWRvcHQocHJpb3JSZWNvcmQ6IENsYXNzUmVjb3JkKTogdm9pZCB7XG4gICAgY29uc3QgcmVjb3JkOiBDbGFzc1JlY29yZCA9IHtcbiAgICAgIGhhc1ByaW1hcnlIYW5kbGVyOiBwcmlvclJlY29yZC5oYXNQcmltYXJ5SGFuZGxlcixcbiAgICAgIGhhc1dlYWtIYW5kbGVyczogcHJpb3JSZWNvcmQuaGFzV2Vha0hhbmRsZXJzLFxuICAgICAgbWV0YURpYWdub3N0aWNzOiBwcmlvclJlY29yZC5tZXRhRGlhZ25vc3RpY3MsXG4gICAgICBub2RlOiBwcmlvclJlY29yZC5ub2RlLFxuICAgICAgdHJhaXRzOiBbXSxcbiAgICB9O1xuXG4gICAgZm9yIChjb25zdCBwcmlvclRyYWl0IG9mIHByaW9yUmVjb3JkLnRyYWl0cykge1xuICAgICAgY29uc3QgaGFuZGxlciA9IHRoaXMuaGFuZGxlcnNCeU5hbWUuZ2V0KHByaW9yVHJhaXQuaGFuZGxlci5uYW1lKSE7XG4gICAgICBsZXQgdHJhaXQ6IFRyYWl0PHVua25vd24sIHVua25vd24sIHVua25vd24+ID0gVHJhaXQucGVuZGluZyhoYW5kbGVyLCBwcmlvclRyYWl0LmRldGVjdGVkKTtcblxuICAgICAgaWYgKHByaW9yVHJhaXQuc3RhdGUgPT09IFRyYWl0U3RhdGUuQU5BTFlaRUQgfHwgcHJpb3JUcmFpdC5zdGF0ZSA9PT0gVHJhaXRTdGF0ZS5SRVNPTFZFRCkge1xuICAgICAgICB0cmFpdCA9IHRyYWl0LnRvQW5hbHl6ZWQocHJpb3JUcmFpdC5hbmFseXNpcyk7XG4gICAgICAgIGlmICh0cmFpdC5oYW5kbGVyLnJlZ2lzdGVyICE9PSB1bmRlZmluZWQpIHtcbiAgICAgICAgICB0cmFpdC5oYW5kbGVyLnJlZ2lzdGVyKHJlY29yZC5ub2RlLCB0cmFpdC5hbmFseXNpcyk7XG4gICAgICAgIH1cbiAgICAgIH0gZWxzZSBpZiAocHJpb3JUcmFpdC5zdGF0ZSA9PT0gVHJhaXRTdGF0ZS5TS0lQUEVEKSB7XG4gICAgICAgIHRyYWl0ID0gdHJhaXQudG9Ta2lwcGVkKCk7XG4gICAgICB9IGVsc2UgaWYgKHByaW9yVHJhaXQuc3RhdGUgPT09IFRyYWl0U3RhdGUuRVJST1JFRCkge1xuICAgICAgICB0cmFpdCA9IHRyYWl0LnRvRXJyb3JlZChwcmlvclRyYWl0LmRpYWdub3N0aWNzKTtcbiAgICAgIH1cblxuICAgICAgcmVjb3JkLnRyYWl0cy5wdXNoKHRyYWl0KTtcbiAgICB9XG5cbiAgICB0aGlzLmNsYXNzZXMuc2V0KHJlY29yZC5ub2RlLCByZWNvcmQpO1xuICAgIGNvbnN0IHNmID0gcmVjb3JkLm5vZGUuZ2V0U291cmNlRmlsZSgpO1xuICAgIGlmICghdGhpcy5maWxlVG9DbGFzc2VzLmhhcyhzZikpIHtcbiAgICAgIHRoaXMuZmlsZVRvQ2xhc3Nlcy5zZXQoc2YsIG5ldyBTZXQ8Q2xhc3NEZWNsYXJhdGlvbj4oKSk7XG4gICAgfVxuICAgIHRoaXMuZmlsZVRvQ2xhc3Nlcy5nZXQoc2YpIS5hZGQocmVjb3JkLm5vZGUpO1xuICB9XG5cbiAgcHJpdmF0ZSBzY2FuQ2xhc3NGb3JUcmFpdHMoY2xheno6IENsYXNzRGVjbGFyYXRpb24pOlxuICAgICAgUGVuZGluZ1RyYWl0PHVua25vd24sIHVua25vd24sIHVua25vd24+W118bnVsbCB7XG4gICAgaWYgKCF0aGlzLmNvbXBpbGVOb25FeHBvcnRlZENsYXNzZXMgJiYgIWlzRXhwb3J0ZWQoY2xhenopKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICBjb25zdCBkZWNvcmF0b3JzID0gdGhpcy5yZWZsZWN0b3IuZ2V0RGVjb3JhdG9yc09mRGVjbGFyYXRpb24oY2xhenopO1xuXG4gICAgcmV0dXJuIHRoaXMuZGV0ZWN0VHJhaXRzKGNsYXp6LCBkZWNvcmF0b3JzKTtcbiAgfVxuXG4gIHByb3RlY3RlZCBkZXRlY3RUcmFpdHMoY2xheno6IENsYXNzRGVjbGFyYXRpb24sIGRlY29yYXRvcnM6IERlY29yYXRvcltdfG51bGwpOlxuICAgICAgUGVuZGluZ1RyYWl0PHVua25vd24sIHVua25vd24sIHVua25vd24+W118bnVsbCB7XG4gICAgbGV0IHJlY29yZDogQ2xhc3NSZWNvcmR8bnVsbCA9IHRoaXMucmVjb3JkRm9yKGNsYXp6KTtcbiAgICBsZXQgZm91bmRUcmFpdHM6IFBlbmRpbmdUcmFpdDx1bmtub3duLCB1bmtub3duLCB1bmtub3duPltdID0gW107XG5cbiAgICBmb3IgKGNvbnN0IGhhbmRsZXIgb2YgdGhpcy5oYW5kbGVycykge1xuICAgICAgY29uc3QgcmVzdWx0ID0gaGFuZGxlci5kZXRlY3QoY2xhenosIGRlY29yYXRvcnMpO1xuICAgICAgaWYgKHJlc3VsdCA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICAgIGNvbnRpbnVlO1xuICAgICAgfVxuXG4gICAgICBjb25zdCBpc1ByaW1hcnlIYW5kbGVyID0gaGFuZGxlci5wcmVjZWRlbmNlID09PSBIYW5kbGVyUHJlY2VkZW5jZS5QUklNQVJZO1xuICAgICAgY29uc3QgaXNXZWFrSGFuZGxlciA9IGhhbmRsZXIucHJlY2VkZW5jZSA9PT0gSGFuZGxlclByZWNlZGVuY2UuV0VBSztcbiAgICAgIGNvbnN0IHRyYWl0ID0gVHJhaXQucGVuZGluZyhoYW5kbGVyLCByZXN1bHQpO1xuXG4gICAgICBmb3VuZFRyYWl0cy5wdXNoKHRyYWl0KTtcblxuICAgICAgaWYgKHJlY29yZCA9PT0gbnVsbCkge1xuICAgICAgICAvLyBUaGlzIGlzIHRoZSBmaXJzdCBoYW5kbGVyIHRvIG1hdGNoIHRoaXMgY2xhc3MuIFRoaXMgcGF0aCBpcyBhIGZhc3QgcGF0aCB0aHJvdWdoIHdoaWNoXG4gICAgICAgIC8vIG1vc3QgY2xhc3NlcyB3aWxsIGZsb3cuXG4gICAgICAgIHJlY29yZCA9IHtcbiAgICAgICAgICBub2RlOiBjbGF6eixcbiAgICAgICAgICB0cmFpdHM6IFt0cmFpdF0sXG4gICAgICAgICAgbWV0YURpYWdub3N0aWNzOiBudWxsLFxuICAgICAgICAgIGhhc1ByaW1hcnlIYW5kbGVyOiBpc1ByaW1hcnlIYW5kbGVyLFxuICAgICAgICAgIGhhc1dlYWtIYW5kbGVyczogaXNXZWFrSGFuZGxlcixcbiAgICAgICAgfTtcblxuICAgICAgICB0aGlzLmNsYXNzZXMuc2V0KGNsYXp6LCByZWNvcmQpO1xuICAgICAgICBjb25zdCBzZiA9IGNsYXp6LmdldFNvdXJjZUZpbGUoKTtcbiAgICAgICAgaWYgKCF0aGlzLmZpbGVUb0NsYXNzZXMuaGFzKHNmKSkge1xuICAgICAgICAgIHRoaXMuZmlsZVRvQ2xhc3Nlcy5zZXQoc2YsIG5ldyBTZXQ8Q2xhc3NEZWNsYXJhdGlvbj4oKSk7XG4gICAgICAgIH1cbiAgICAgICAgdGhpcy5maWxlVG9DbGFzc2VzLmdldChzZikhLmFkZChjbGF6eik7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICAvLyBUaGlzIGlzIGF0IGxlYXN0IHRoZSBzZWNvbmQgaGFuZGxlciB0byBtYXRjaCB0aGlzIGNsYXNzLiBUaGlzIGlzIGEgc2xvd2VyIHBhdGggdGhhdCBzb21lXG4gICAgICAgIC8vIGNsYXNzZXMgd2lsbCBnbyB0aHJvdWdoLCB3aGljaCB2YWxpZGF0ZXMgdGhhdCB0aGUgc2V0IG9mIGRlY29yYXRvcnMgYXBwbGllZCB0byB0aGUgY2xhc3NcbiAgICAgICAgLy8gaXMgdmFsaWQuXG5cbiAgICAgICAgLy8gVmFsaWRhdGUgYWNjb3JkaW5nIHRvIHJ1bGVzIGFzIGZvbGxvd3M6XG4gICAgICAgIC8vXG4gICAgICAgIC8vICogV0VBSyBoYW5kbGVycyBhcmUgcmVtb3ZlZCBpZiBhIG5vbi1XRUFLIGhhbmRsZXIgbWF0Y2hlcy5cbiAgICAgICAgLy8gKiBPbmx5IG9uZSBQUklNQVJZIGhhbmRsZXIgY2FuIG1hdGNoIGF0IGEgdGltZS4gQW55IG90aGVyIFBSSU1BUlkgaGFuZGxlciBtYXRjaGluZyBhXG4gICAgICAgIC8vICAgY2xhc3Mgd2l0aCBhbiBleGlzdGluZyBQUklNQVJZIGhhbmRsZXIgaXMgYW4gZXJyb3IuXG5cbiAgICAgICAgaWYgKCFpc1dlYWtIYW5kbGVyICYmIHJlY29yZC5oYXNXZWFrSGFuZGxlcnMpIHtcbiAgICAgICAgICAvLyBUaGUgY3VycmVudCBoYW5kbGVyIGlzIG5vdCBhIFdFQUsgaGFuZGxlciwgYnV0IHRoZSBjbGFzcyBoYXMgb3RoZXIgV0VBSyBoYW5kbGVycy5cbiAgICAgICAgICAvLyBSZW1vdmUgdGhlbS5cbiAgICAgICAgICByZWNvcmQudHJhaXRzID1cbiAgICAgICAgICAgICAgcmVjb3JkLnRyYWl0cy5maWx0ZXIoZmllbGQgPT4gZmllbGQuaGFuZGxlci5wcmVjZWRlbmNlICE9PSBIYW5kbGVyUHJlY2VkZW5jZS5XRUFLKTtcbiAgICAgICAgICByZWNvcmQuaGFzV2Vha0hhbmRsZXJzID0gZmFsc2U7XG4gICAgICAgIH0gZWxzZSBpZiAoaXNXZWFrSGFuZGxlciAmJiAhcmVjb3JkLmhhc1dlYWtIYW5kbGVycykge1xuICAgICAgICAgIC8vIFRoZSBjdXJyZW50IGhhbmRsZXIgaXMgYSBXRUFLIGhhbmRsZXIsIGJ1dCB0aGUgY2xhc3MgaGFzIG5vbi1XRUFLIGhhbmRsZXJzIGFscmVhZHkuXG4gICAgICAgICAgLy8gRHJvcCB0aGUgY3VycmVudCBvbmUuXG4gICAgICAgICAgY29udGludWU7XG4gICAgICAgIH1cblxuICAgICAgICBpZiAoaXNQcmltYXJ5SGFuZGxlciAmJiByZWNvcmQuaGFzUHJpbWFyeUhhbmRsZXIpIHtcbiAgICAgICAgICAvLyBUaGUgY2xhc3MgYWxyZWFkeSBoYXMgYSBQUklNQVJZIGhhbmRsZXIsIGFuZCBhbm90aGVyIG9uZSBqdXN0IG1hdGNoZWQuXG4gICAgICAgICAgcmVjb3JkLm1ldGFEaWFnbm9zdGljcyA9IFt7XG4gICAgICAgICAgICBjYXRlZ29yeTogdHMuRGlhZ25vc3RpY0NhdGVnb3J5LkVycm9yLFxuICAgICAgICAgICAgY29kZTogTnVtYmVyKCctOTknICsgRXJyb3JDb2RlLkRFQ09SQVRPUl9DT0xMSVNJT04pLFxuICAgICAgICAgICAgZmlsZTogZ2V0U291cmNlRmlsZShjbGF6eiksXG4gICAgICAgICAgICBzdGFydDogY2xhenouZ2V0U3RhcnQodW5kZWZpbmVkLCBmYWxzZSksXG4gICAgICAgICAgICBsZW5ndGg6IGNsYXp6LmdldFdpZHRoKCksXG4gICAgICAgICAgICBtZXNzYWdlVGV4dDogJ1R3byBpbmNvbXBhdGlibGUgZGVjb3JhdG9ycyBvbiBjbGFzcycsXG4gICAgICAgICAgfV07XG4gICAgICAgICAgcmVjb3JkLnRyYWl0cyA9IGZvdW5kVHJhaXRzID0gW107XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cblxuICAgICAgICAvLyBPdGhlcndpc2UsIGl0J3Mgc2FmZSB0byBhY2NlcHQgdGhlIG11bHRpcGxlIGRlY29yYXRvcnMgaGVyZS4gVXBkYXRlIHNvbWUgb2YgdGhlIG1ldGFkYXRhXG4gICAgICAgIC8vIHJlZ2FyZGluZyB0aGlzIGNsYXNzLlxuICAgICAgICByZWNvcmQudHJhaXRzLnB1c2godHJhaXQpO1xuICAgICAgICByZWNvcmQuaGFzUHJpbWFyeUhhbmRsZXIgPSByZWNvcmQuaGFzUHJpbWFyeUhhbmRsZXIgfHwgaXNQcmltYXJ5SGFuZGxlcjtcbiAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gZm91bmRUcmFpdHMubGVuZ3RoID4gMCA/IGZvdW5kVHJhaXRzIDogbnVsbDtcbiAgfVxuXG4gIHByb3RlY3RlZCBhbmFseXplQ2xhc3MoY2xheno6IENsYXNzRGVjbGFyYXRpb24sIHByZWFuYWx5emVRdWV1ZTogUHJvbWlzZTx2b2lkPltdfG51bGwpOiB2b2lkIHtcbiAgICBjb25zdCB0cmFpdHMgPSB0aGlzLnNjYW5DbGFzc0ZvclRyYWl0cyhjbGF6eik7XG5cbiAgICBpZiAodHJhaXRzID09PSBudWxsKSB7XG4gICAgICAvLyBUaGVyZSBhcmUgbm8gSXZ5IHRyYWl0cyBvbiB0aGUgY2xhc3MsIHNvIGl0IGNhbiBzYWZlbHkgYmUgc2tpcHBlZC5cbiAgICAgIHJldHVybjtcbiAgICB9XG5cbiAgICBmb3IgKGNvbnN0IHRyYWl0IG9mIHRyYWl0cykge1xuICAgICAgY29uc3QgYW5hbHl6ZSA9ICgpID0+IHRoaXMuYW5hbHl6ZVRyYWl0KGNsYXp6LCB0cmFpdCk7XG5cbiAgICAgIGxldCBwcmVhbmFseXNpczogUHJvbWlzZTx2b2lkPnxudWxsID0gbnVsbDtcbiAgICAgIGlmIChwcmVhbmFseXplUXVldWUgIT09IG51bGwgJiYgdHJhaXQuaGFuZGxlci5wcmVhbmFseXplICE9PSB1bmRlZmluZWQpIHtcbiAgICAgICAgLy8gQXR0ZW1wdCB0byBydW4gcHJlYW5hbHlzaXMuIFRoaXMgY291bGQgZmFpbCB3aXRoIGEgYEZhdGFsRGlhZ25vc3RpY0Vycm9yYDsgY2F0Y2ggaXQgaWYgaXRcbiAgICAgICAgLy8gZG9lcy5cbiAgICAgICAgdHJ5IHtcbiAgICAgICAgICBwcmVhbmFseXNpcyA9IHRyYWl0LmhhbmRsZXIucHJlYW5hbHl6ZShjbGF6eiwgdHJhaXQuZGV0ZWN0ZWQubWV0YWRhdGEpIHx8IG51bGw7XG4gICAgICAgIH0gY2F0Y2ggKGVycikge1xuICAgICAgICAgIGlmIChlcnIgaW5zdGFuY2VvZiBGYXRhbERpYWdub3N0aWNFcnJvcikge1xuICAgICAgICAgICAgdHJhaXQudG9FcnJvcmVkKFtlcnIudG9EaWFnbm9zdGljKCldKTtcbiAgICAgICAgICAgIHJldHVybjtcbiAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgdGhyb3cgZXJyO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgICAgaWYgKHByZWFuYWx5c2lzICE9PSBudWxsKSB7XG4gICAgICAgIHByZWFuYWx5emVRdWV1ZSEucHVzaChwcmVhbmFseXNpcy50aGVuKGFuYWx5emUpKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIGFuYWx5emUoKTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICBwcm90ZWN0ZWQgYW5hbHl6ZVRyYWl0KFxuICAgICAgY2xheno6IENsYXNzRGVjbGFyYXRpb24sIHRyYWl0OiBUcmFpdDx1bmtub3duLCB1bmtub3duLCB1bmtub3duPixcbiAgICAgIGZsYWdzPzogSGFuZGxlckZsYWdzKTogdm9pZCB7XG4gICAgaWYgKHRyYWl0LnN0YXRlICE9PSBUcmFpdFN0YXRlLlBFTkRJTkcpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihgQXR0ZW1wdCB0byBhbmFseXplIHRyYWl0IG9mICR7Y2xhenoubmFtZS50ZXh0fSBpbiBzdGF0ZSAke1xuICAgICAgICAgIFRyYWl0U3RhdGVbdHJhaXQuc3RhdGVdfSAoZXhwZWN0ZWQgREVURUNURUQpYCk7XG4gICAgfVxuXG4gICAgLy8gQXR0ZW1wdCBhbmFseXNpcy4gVGhpcyBjb3VsZCBmYWlsIHdpdGggYSBgRmF0YWxEaWFnbm9zdGljRXJyb3JgOyBjYXRjaCBpdCBpZiBpdCBkb2VzLlxuICAgIGxldCByZXN1bHQ6IEFuYWx5c2lzT3V0cHV0PHVua25vd24+O1xuICAgIHRyeSB7XG4gICAgICByZXN1bHQgPSB0cmFpdC5oYW5kbGVyLmFuYWx5emUoY2xhenosIHRyYWl0LmRldGVjdGVkLm1ldGFkYXRhLCBmbGFncyk7XG4gICAgfSBjYXRjaCAoZXJyKSB7XG4gICAgICBpZiAoZXJyIGluc3RhbmNlb2YgRmF0YWxEaWFnbm9zdGljRXJyb3IpIHtcbiAgICAgICAgdHJhaXQgPSB0cmFpdC50b0Vycm9yZWQoW2Vyci50b0RpYWdub3N0aWMoKV0pO1xuICAgICAgICByZXR1cm47XG4gICAgICB9IGVsc2Uge1xuICAgICAgICB0aHJvdyBlcnI7XG4gICAgICB9XG4gICAgfVxuXG4gICAgaWYgKHJlc3VsdC5kaWFnbm9zdGljcyAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICB0cmFpdCA9IHRyYWl0LnRvRXJyb3JlZChyZXN1bHQuZGlhZ25vc3RpY3MpO1xuICAgIH0gZWxzZSBpZiAocmVzdWx0LmFuYWx5c2lzICE9PSB1bmRlZmluZWQpIHtcbiAgICAgIC8vIEFuYWx5c2lzIHdhcyBzdWNjZXNzZnVsLiBUcmlnZ2VyIHJlZ2lzdHJhdGlvbi5cbiAgICAgIGlmICh0cmFpdC5oYW5kbGVyLnJlZ2lzdGVyICE9PSB1bmRlZmluZWQpIHtcbiAgICAgICAgdHJhaXQuaGFuZGxlci5yZWdpc3RlcihjbGF6eiwgcmVzdWx0LmFuYWx5c2lzKTtcbiAgICAgIH1cblxuICAgICAgLy8gU3VjY2Vzc2Z1bGx5IGFuYWx5emVkIGFuZCByZWdpc3RlcmVkLlxuICAgICAgdHJhaXQgPSB0cmFpdC50b0FuYWx5emVkKHJlc3VsdC5hbmFseXNpcyk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRyYWl0ID0gdHJhaXQudG9Ta2lwcGVkKCk7XG4gICAgfVxuICB9XG5cbiAgcmVzb2x2ZSgpOiB2b2lkIHtcbiAgICBjb25zdCBjbGFzc2VzID0gQXJyYXkuZnJvbSh0aGlzLmNsYXNzZXMua2V5cygpKTtcbiAgICBmb3IgKGNvbnN0IGNsYXp6IG9mIGNsYXNzZXMpIHtcbiAgICAgIGNvbnN0IHJlY29yZCA9IHRoaXMuY2xhc3Nlcy5nZXQoY2xhenopITtcbiAgICAgIGZvciAobGV0IHRyYWl0IG9mIHJlY29yZC50cmFpdHMpIHtcbiAgICAgICAgY29uc3QgaGFuZGxlciA9IHRyYWl0LmhhbmRsZXI7XG4gICAgICAgIHN3aXRjaCAodHJhaXQuc3RhdGUpIHtcbiAgICAgICAgICBjYXNlIFRyYWl0U3RhdGUuU0tJUFBFRDpcbiAgICAgICAgICBjYXNlIFRyYWl0U3RhdGUuRVJST1JFRDpcbiAgICAgICAgICAgIGNvbnRpbnVlO1xuICAgICAgICAgIGNhc2UgVHJhaXRTdGF0ZS5QRU5ESU5HOlxuICAgICAgICAgICAgdGhyb3cgbmV3IEVycm9yKGBSZXNvbHZpbmcgYSB0cmFpdCB0aGF0IGhhc24ndCBiZWVuIGFuYWx5emVkOiAke2NsYXp6Lm5hbWUudGV4dH0gLyAke1xuICAgICAgICAgICAgICAgIE9iamVjdC5nZXRQcm90b3R5cGVPZih0cmFpdC5oYW5kbGVyKS5jb25zdHJ1Y3Rvci5uYW1lfWApO1xuICAgICAgICAgIGNhc2UgVHJhaXRTdGF0ZS5SRVNPTFZFRDpcbiAgICAgICAgICAgIHRocm93IG5ldyBFcnJvcihgUmVzb2x2aW5nIGFuIGFscmVhZHkgcmVzb2x2ZWQgdHJhaXRgKTtcbiAgICAgICAgfVxuXG4gICAgICAgIGlmIChoYW5kbGVyLnJlc29sdmUgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICAgIC8vIE5vIHJlc29sdXRpb24gb2YgdGhpcyB0cmFpdCBuZWVkZWQgLSBpdCdzIGNvbnNpZGVyZWQgc3VjY2Vzc2Z1bCBieSBkZWZhdWx0LlxuICAgICAgICAgIHRyYWl0ID0gdHJhaXQudG9SZXNvbHZlZChudWxsKTtcbiAgICAgICAgICBjb250aW51ZTtcbiAgICAgICAgfVxuXG4gICAgICAgIGxldCByZXN1bHQ6IFJlc29sdmVSZXN1bHQ8dW5rbm93bj47XG4gICAgICAgIHRyeSB7XG4gICAgICAgICAgcmVzdWx0ID0gaGFuZGxlci5yZXNvbHZlKGNsYXp6LCB0cmFpdC5hbmFseXNpcyBhcyBSZWFkb25seTx1bmtub3duPik7XG4gICAgICAgIH0gY2F0Y2ggKGVycikge1xuICAgICAgICAgIGlmIChlcnIgaW5zdGFuY2VvZiBGYXRhbERpYWdub3N0aWNFcnJvcikge1xuICAgICAgICAgICAgdHJhaXQgPSB0cmFpdC50b0Vycm9yZWQoW2Vyci50b0RpYWdub3N0aWMoKV0pO1xuICAgICAgICAgICAgY29udGludWU7XG4gICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIHRocm93IGVycjtcbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICBpZiAocmVzdWx0LmRpYWdub3N0aWNzICE9PSB1bmRlZmluZWQgJiYgcmVzdWx0LmRpYWdub3N0aWNzLmxlbmd0aCA+IDApIHtcbiAgICAgICAgICB0cmFpdCA9IHRyYWl0LnRvRXJyb3JlZChyZXN1bHQuZGlhZ25vc3RpY3MpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIGlmIChyZXN1bHQuZGF0YSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICAgICAgICB0cmFpdCA9IHRyYWl0LnRvUmVzb2x2ZWQocmVzdWx0LmRhdGEpO1xuICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICB0cmFpdCA9IHRyYWl0LnRvUmVzb2x2ZWQobnVsbCk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgaWYgKHJlc3VsdC5yZWV4cG9ydHMgIT09IHVuZGVmaW5lZCkge1xuICAgICAgICAgIGNvbnN0IGZpbGVOYW1lID0gY2xhenouZ2V0U291cmNlRmlsZSgpLmZpbGVOYW1lO1xuICAgICAgICAgIGlmICghdGhpcy5yZWV4cG9ydE1hcC5oYXMoZmlsZU5hbWUpKSB7XG4gICAgICAgICAgICB0aGlzLnJlZXhwb3J0TWFwLnNldChmaWxlTmFtZSwgbmV3IE1hcDxzdHJpbmcsIFtzdHJpbmcsIHN0cmluZ10+KCkpO1xuICAgICAgICAgIH1cbiAgICAgICAgICBjb25zdCBmaWxlUmVleHBvcnRzID0gdGhpcy5yZWV4cG9ydE1hcC5nZXQoZmlsZU5hbWUpITtcbiAgICAgICAgICBmb3IgKGNvbnN0IHJlZXhwb3J0IG9mIHJlc3VsdC5yZWV4cG9ydHMpIHtcbiAgICAgICAgICAgIGZpbGVSZWV4cG9ydHMuc2V0KHJlZXhwb3J0LmFzQWxpYXMsIFtyZWV4cG9ydC5mcm9tTW9kdWxlLCByZWV4cG9ydC5zeW1ib2xOYW1lXSk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIEdlbmVyYXRlIHR5cGUtY2hlY2tpbmcgY29kZSBpbnRvIHRoZSBgVHlwZUNoZWNrQ29udGV4dGAgZm9yIGFueSBjb21wb25lbnRzIHdpdGhpbiB0aGUgZ2l2ZW5cbiAgICogYHRzLlNvdXJjZUZpbGVgLlxuICAgKi9cbiAgdHlwZUNoZWNrKHNmOiB0cy5Tb3VyY2VGaWxlLCBjdHg6IFR5cGVDaGVja0NvbnRleHQpOiB2b2lkIHtcbiAgICBpZiAoIXRoaXMuZmlsZVRvQ2xhc3Nlcy5oYXMoc2YpKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgZm9yIChjb25zdCBjbGF6eiBvZiB0aGlzLmZpbGVUb0NsYXNzZXMuZ2V0KHNmKSEpIHtcbiAgICAgIGNvbnN0IHJlY29yZCA9IHRoaXMuY2xhc3Nlcy5nZXQoY2xhenopITtcbiAgICAgIGZvciAoY29uc3QgdHJhaXQgb2YgcmVjb3JkLnRyYWl0cykge1xuICAgICAgICBpZiAodHJhaXQuc3RhdGUgIT09IFRyYWl0U3RhdGUuUkVTT0xWRUQpIHtcbiAgICAgICAgICBjb250aW51ZTtcbiAgICAgICAgfSBlbHNlIGlmICh0cmFpdC5oYW5kbGVyLnR5cGVDaGVjayA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICAgICAgY29udGludWU7XG4gICAgICAgIH1cbiAgICAgICAgdHJhaXQuaGFuZGxlci50eXBlQ2hlY2soY3R4LCBjbGF6eiwgdHJhaXQuYW5hbHlzaXMsIHRyYWl0LnJlc29sdXRpb24pO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIGluZGV4KGN0eDogSW5kZXhpbmdDb250ZXh0KTogdm9pZCB7XG4gICAgZm9yIChjb25zdCBjbGF6eiBvZiB0aGlzLmNsYXNzZXMua2V5cygpKSB7XG4gICAgICBjb25zdCByZWNvcmQgPSB0aGlzLmNsYXNzZXMuZ2V0KGNsYXp6KSE7XG4gICAgICBmb3IgKGNvbnN0IHRyYWl0IG9mIHJlY29yZC50cmFpdHMpIHtcbiAgICAgICAgaWYgKHRyYWl0LnN0YXRlICE9PSBUcmFpdFN0YXRlLlJFU09MVkVEKSB7XG4gICAgICAgICAgLy8gU2tpcCB0cmFpdHMgdGhhdCBoYXZlbid0IGJlZW4gcmVzb2x2ZWQgc3VjY2Vzc2Z1bGx5LlxuICAgICAgICAgIGNvbnRpbnVlO1xuICAgICAgICB9IGVsc2UgaWYgKHRyYWl0LmhhbmRsZXIuaW5kZXggPT09IHVuZGVmaW5lZCkge1xuICAgICAgICAgIC8vIFNraXAgdHJhaXRzIHRoYXQgZG9uJ3QgYWZmZWN0IGluZGV4aW5nLlxuICAgICAgICAgIGNvbnRpbnVlO1xuICAgICAgICB9XG5cbiAgICAgICAgdHJhaXQuaGFuZGxlci5pbmRleChjdHgsIGNsYXp6LCB0cmFpdC5hbmFseXNpcywgdHJhaXQucmVzb2x1dGlvbik7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgY29tcGlsZShjbGF6ejogdHMuRGVjbGFyYXRpb24sIGNvbnN0YW50UG9vbDogQ29uc3RhbnRQb29sKTogQ29tcGlsZVJlc3VsdFtdfG51bGwge1xuICAgIGNvbnN0IG9yaWdpbmFsID0gdHMuZ2V0T3JpZ2luYWxOb2RlKGNsYXp6KSBhcyB0eXBlb2YgY2xheno7XG4gICAgaWYgKCF0aGlzLnJlZmxlY3Rvci5pc0NsYXNzKGNsYXp6KSB8fCAhdGhpcy5yZWZsZWN0b3IuaXNDbGFzcyhvcmlnaW5hbCkgfHxcbiAgICAgICAgIXRoaXMuY2xhc3Nlcy5oYXMob3JpZ2luYWwpKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICBjb25zdCByZWNvcmQgPSB0aGlzLmNsYXNzZXMuZ2V0KG9yaWdpbmFsKSE7XG5cbiAgICBsZXQgcmVzOiBDb21waWxlUmVzdWx0W10gPSBbXTtcblxuICAgIGZvciAoY29uc3QgdHJhaXQgb2YgcmVjb3JkLnRyYWl0cykge1xuICAgICAgaWYgKHRyYWl0LnN0YXRlICE9PSBUcmFpdFN0YXRlLlJFU09MVkVEKSB7XG4gICAgICAgIGNvbnRpbnVlO1xuICAgICAgfVxuXG4gICAgICBjb25zdCBjb21waWxlU3BhbiA9IHRoaXMucGVyZi5zdGFydCgnY29tcGlsZUNsYXNzJywgb3JpZ2luYWwpO1xuICAgICAgY29uc3QgY29tcGlsZU1hdGNoUmVzID1cbiAgICAgICAgICB0cmFpdC5oYW5kbGVyLmNvbXBpbGUoY2xhenosIHRyYWl0LmFuYWx5c2lzLCB0cmFpdC5yZXNvbHV0aW9uLCBjb25zdGFudFBvb2wpO1xuICAgICAgdGhpcy5wZXJmLnN0b3AoY29tcGlsZVNwYW4pO1xuICAgICAgaWYgKEFycmF5LmlzQXJyYXkoY29tcGlsZU1hdGNoUmVzKSkge1xuICAgICAgICBmb3IgKGNvbnN0IHJlc3VsdCBvZiBjb21waWxlTWF0Y2hSZXMpIHtcbiAgICAgICAgICBpZiAoIXJlcy5zb21lKHIgPT4gci5uYW1lID09PSByZXN1bHQubmFtZSkpIHtcbiAgICAgICAgICAgIHJlcy5wdXNoKHJlc3VsdCk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9IGVsc2UgaWYgKCFyZXMuc29tZShyZXN1bHQgPT4gcmVzdWx0Lm5hbWUgPT09IGNvbXBpbGVNYXRjaFJlcy5uYW1lKSkge1xuICAgICAgICByZXMucHVzaChjb21waWxlTWF0Y2hSZXMpO1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIExvb2sgdXAgdGhlIC5kLnRzIHRyYW5zZm9ybWVyIGZvciB0aGUgaW5wdXQgZmlsZSBhbmQgcmVjb3JkIHRoYXQgYXQgbGVhc3Qgb25lIGZpZWxkIHdhc1xuICAgIC8vIGdlbmVyYXRlZCwgd2hpY2ggd2lsbCBhbGxvdyB0aGUgLmQudHMgdG8gYmUgdHJhbnNmb3JtZWQgbGF0ZXIuXG4gICAgdGhpcy5kdHNUcmFuc2Zvcm1zLmdldEl2eURlY2xhcmF0aW9uVHJhbnNmb3JtKG9yaWdpbmFsLmdldFNvdXJjZUZpbGUoKSlcbiAgICAgICAgLmFkZEZpZWxkcyhvcmlnaW5hbCwgcmVzKTtcblxuICAgIC8vIFJldHVybiB0aGUgaW5zdHJ1Y3Rpb24gdG8gdGhlIHRyYW5zZm9ybWVyIHNvIHRoZSBmaWVsZHMgd2lsbCBiZSBhZGRlZC5cbiAgICByZXR1cm4gcmVzLmxlbmd0aCA+IDAgPyByZXMgOiBudWxsO1xuICB9XG5cbiAgZGVjb3JhdG9yc0Zvcihub2RlOiB0cy5EZWNsYXJhdGlvbik6IHRzLkRlY29yYXRvcltdIHtcbiAgICBjb25zdCBvcmlnaW5hbCA9IHRzLmdldE9yaWdpbmFsTm9kZShub2RlKSBhcyB0eXBlb2Ygbm9kZTtcbiAgICBpZiAoIXRoaXMucmVmbGVjdG9yLmlzQ2xhc3Mob3JpZ2luYWwpIHx8ICF0aGlzLmNsYXNzZXMuaGFzKG9yaWdpbmFsKSkge1xuICAgICAgcmV0dXJuIFtdO1xuICAgIH1cblxuICAgIGNvbnN0IHJlY29yZCA9IHRoaXMuY2xhc3Nlcy5nZXQob3JpZ2luYWwpITtcbiAgICBjb25zdCBkZWNvcmF0b3JzOiB0cy5EZWNvcmF0b3JbXSA9IFtdO1xuXG4gICAgZm9yIChjb25zdCB0cmFpdCBvZiByZWNvcmQudHJhaXRzKSB7XG4gICAgICBpZiAodHJhaXQuc3RhdGUgIT09IFRyYWl0U3RhdGUuUkVTT0xWRUQpIHtcbiAgICAgICAgY29udGludWU7XG4gICAgICB9XG5cbiAgICAgIGlmICh0cmFpdC5kZXRlY3RlZC50cmlnZ2VyICE9PSBudWxsICYmIHRzLmlzRGVjb3JhdG9yKHRyYWl0LmRldGVjdGVkLnRyaWdnZXIpKSB7XG4gICAgICAgIGRlY29yYXRvcnMucHVzaCh0cmFpdC5kZXRlY3RlZC50cmlnZ2VyKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gZGVjb3JhdG9ycztcbiAgfVxuXG4gIGdldCBkaWFnbm9zdGljcygpOiBSZWFkb25seUFycmF5PHRzLkRpYWdub3N0aWM+IHtcbiAgICBjb25zdCBkaWFnbm9zdGljczogdHMuRGlhZ25vc3RpY1tdID0gW107XG4gICAgZm9yIChjb25zdCBjbGF6eiBvZiB0aGlzLmNsYXNzZXMua2V5cygpKSB7XG4gICAgICBjb25zdCByZWNvcmQgPSB0aGlzLmNsYXNzZXMuZ2V0KGNsYXp6KSE7XG4gICAgICBpZiAocmVjb3JkLm1ldGFEaWFnbm9zdGljcyAhPT0gbnVsbCkge1xuICAgICAgICBkaWFnbm9zdGljcy5wdXNoKC4uLnJlY29yZC5tZXRhRGlhZ25vc3RpY3MpO1xuICAgICAgfVxuICAgICAgZm9yIChjb25zdCB0cmFpdCBvZiByZWNvcmQudHJhaXRzKSB7XG4gICAgICAgIGlmICh0cmFpdC5zdGF0ZSA9PT0gVHJhaXRTdGF0ZS5FUlJPUkVEKSB7XG4gICAgICAgICAgZGlhZ25vc3RpY3MucHVzaCguLi50cmFpdC5kaWFnbm9zdGljcyk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIGRpYWdub3N0aWNzO1xuICB9XG5cbiAgZ2V0IGV4cG9ydFN0YXRlbWVudHMoKTogTWFwPHN0cmluZywgTWFwPHN0cmluZywgW3N0cmluZywgc3RyaW5nXT4+IHtcbiAgICByZXR1cm4gdGhpcy5yZWV4cG9ydE1hcDtcbiAgfVxufVxuIl19