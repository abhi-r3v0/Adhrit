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
        define("@angular/compiler-cli/src/ngtsc/transform/src/transform", ["require", "exports", "tslib", "@angular/compiler", "typescript", "@angular/compiler-cli/src/ngtsc/translator", "@angular/compiler-cli/src/ngtsc/util/src/visitor", "@angular/compiler-cli/src/ngtsc/transform/src/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.ivyTransformFactory = void 0;
    var tslib_1 = require("tslib");
    var compiler_1 = require("@angular/compiler");
    var ts = require("typescript");
    var translator_1 = require("@angular/compiler-cli/src/ngtsc/translator");
    var visitor_1 = require("@angular/compiler-cli/src/ngtsc/util/src/visitor");
    var utils_1 = require("@angular/compiler-cli/src/ngtsc/transform/src/utils");
    var NO_DECORATORS = new Set();
    var CLOSURE_FILE_OVERVIEW_REGEXP = /\s+@fileoverview\s+/i;
    function ivyTransformFactory(compilation, reflector, importRewriter, defaultImportRecorder, isCore, isClosureCompilerEnabled) {
        return function (context) {
            return function (file) {
                return transformIvySourceFile(compilation, context, reflector, importRewriter, file, isCore, isClosureCompilerEnabled, defaultImportRecorder);
            };
        };
    }
    exports.ivyTransformFactory = ivyTransformFactory;
    /**
     * Visits all classes, performs Ivy compilation where Angular decorators are present and collects
     * result in a Map that associates a ts.ClassDeclaration with Ivy compilation results. This visitor
     * does NOT perform any TS transformations.
     */
    var IvyCompilationVisitor = /** @class */ (function (_super) {
        tslib_1.__extends(IvyCompilationVisitor, _super);
        function IvyCompilationVisitor(compilation, constantPool) {
            var _this = _super.call(this) || this;
            _this.compilation = compilation;
            _this.constantPool = constantPool;
            _this.classCompilationMap = new Map();
            return _this;
        }
        IvyCompilationVisitor.prototype.visitClassDeclaration = function (node) {
            // Determine if this class has an Ivy field that needs to be added, and compile the field
            // to an expression if so.
            var result = this.compilation.compile(node, this.constantPool);
            if (result !== null) {
                this.classCompilationMap.set(node, result);
            }
            return { node: node };
        };
        return IvyCompilationVisitor;
    }(visitor_1.Visitor));
    /**
     * Visits all classes and performs transformation of corresponding TS nodes based on the Ivy
     * compilation results (provided as an argument).
     */
    var IvyTransformationVisitor = /** @class */ (function (_super) {
        tslib_1.__extends(IvyTransformationVisitor, _super);
        function IvyTransformationVisitor(compilation, classCompilationMap, reflector, importManager, defaultImportRecorder, isClosureCompilerEnabled, isCore) {
            var _this = _super.call(this) || this;
            _this.compilation = compilation;
            _this.classCompilationMap = classCompilationMap;
            _this.reflector = reflector;
            _this.importManager = importManager;
            _this.defaultImportRecorder = defaultImportRecorder;
            _this.isClosureCompilerEnabled = isClosureCompilerEnabled;
            _this.isCore = isCore;
            return _this;
        }
        IvyTransformationVisitor.prototype.visitClassDeclaration = function (node) {
            var e_1, _a;
            var _this = this;
            // If this class is not registered in the map, it means that it doesn't have Angular decorators,
            // thus no further processing is required.
            if (!this.classCompilationMap.has(node)) {
                return { node: node };
            }
            // There is at least one field to add.
            var statements = [];
            var members = tslib_1.__spread(node.members);
            try {
                for (var _b = tslib_1.__values(this.classCompilationMap.get(node)), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var field = _c.value;
                    // Translate the initializer for the field into TS nodes.
                    var exprNode = translator_1.translateExpression(field.initializer, this.importManager, this.defaultImportRecorder, ts.ScriptTarget.ES2015);
                    // Create a static property declaration for the new field.
                    var property = ts.createProperty(undefined, [ts.createToken(ts.SyntaxKind.StaticKeyword)], field.name, undefined, undefined, exprNode);
                    if (this.isClosureCompilerEnabled) {
                        // Closure compiler transforms the form `Service.ɵprov = X` into `Service$ɵprov = X`. To
                        // prevent this transformation, such assignments need to be annotated with @nocollapse.
                        // Note that tsickle is typically responsible for adding such annotations, however it
                        // doesn't yet handle synthetic fields added during other transformations.
                        ts.addSyntheticLeadingComment(property, ts.SyntaxKind.MultiLineCommentTrivia, '* @nocollapse ', 
                        /* hasTrailingNewLine */ false);
                    }
                    field.statements
                        .map(function (stmt) { return translator_1.translateStatement(stmt, _this.importManager, _this.defaultImportRecorder, ts.ScriptTarget.ES2015); })
                        .forEach(function (stmt) { return statements.push(stmt); });
                    members.push(property);
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
            // Replace the class declaration with an updated version.
            node = ts.updateClassDeclaration(node, 
            // Remove the decorator which triggered this compilation, leaving the others alone.
            maybeFilterDecorator(node.decorators, this.compilation.decoratorsFor(node)), node.modifiers, node.name, node.typeParameters, node.heritageClauses || [], 
            // Map over the class members and remove any Angular decorators from them.
            members.map(function (member) { return _this._stripAngularDecorators(member); }));
            return { node: node, after: statements };
        };
        /**
         * Return all decorators on a `Declaration` which are from @angular/core, or an empty set if none
         * are.
         */
        IvyTransformationVisitor.prototype._angularCoreDecorators = function (decl) {
            var _this = this;
            var decorators = this.reflector.getDecoratorsOfDeclaration(decl);
            if (decorators === null) {
                return NO_DECORATORS;
            }
            var coreDecorators = decorators.filter(function (dec) { return _this.isCore || isFromAngularCore(dec); })
                .map(function (dec) { return dec.node; });
            if (coreDecorators.length > 0) {
                return new Set(coreDecorators);
            }
            else {
                return NO_DECORATORS;
            }
        };
        /**
         * Given a `ts.Node`, filter the decorators array and return a version containing only non-Angular
         * decorators.
         *
         * If all decorators are removed (or none existed in the first place), this method returns
         * `undefined`.
         */
        IvyTransformationVisitor.prototype._nonCoreDecoratorsOnly = function (node) {
            // Shortcut if the node has no decorators.
            if (node.decorators === undefined) {
                return undefined;
            }
            // Build a Set of the decorators on this node from @angular/core.
            var coreDecorators = this._angularCoreDecorators(node);
            if (coreDecorators.size === node.decorators.length) {
                // If all decorators are to be removed, return `undefined`.
                return undefined;
            }
            else if (coreDecorators.size === 0) {
                // If no decorators need to be removed, return the original decorators array.
                return node.decorators;
            }
            // Filter out the core decorators.
            var filtered = node.decorators.filter(function (dec) { return !coreDecorators.has(dec); });
            // If no decorators survive, return `undefined`. This can only happen if a core decorator is
            // repeated on the node.
            if (filtered.length === 0) {
                return undefined;
            }
            // Create a new `NodeArray` with the filtered decorators that sourcemaps back to the original.
            var array = ts.createNodeArray(filtered);
            array.pos = node.decorators.pos;
            array.end = node.decorators.end;
            return array;
        };
        /**
         * Remove Angular decorators from a `ts.Node` in a shallow manner.
         *
         * This will remove decorators from class elements (getters, setters, properties, methods) as well
         * as parameters of constructors.
         */
        IvyTransformationVisitor.prototype._stripAngularDecorators = function (node) {
            var _this = this;
            if (ts.isParameter(node)) {
                // Strip decorators from parameters (probably of the constructor).
                node = ts.updateParameter(node, this._nonCoreDecoratorsOnly(node), node.modifiers, node.dotDotDotToken, node.name, node.questionToken, node.type, node.initializer);
            }
            else if (ts.isMethodDeclaration(node) && node.decorators !== undefined) {
                // Strip decorators of methods.
                node = ts.updateMethod(node, this._nonCoreDecoratorsOnly(node), node.modifiers, node.asteriskToken, node.name, node.questionToken, node.typeParameters, node.parameters, node.type, node.body);
            }
            else if (ts.isPropertyDeclaration(node) && node.decorators !== undefined) {
                // Strip decorators of properties.
                node = ts.updateProperty(node, this._nonCoreDecoratorsOnly(node), node.modifiers, node.name, node.questionToken, node.type, node.initializer);
            }
            else if (ts.isGetAccessor(node)) {
                // Strip decorators of getters.
                node = ts.updateGetAccessor(node, this._nonCoreDecoratorsOnly(node), node.modifiers, node.name, node.parameters, node.type, node.body);
            }
            else if (ts.isSetAccessor(node)) {
                // Strip decorators of setters.
                node = ts.updateSetAccessor(node, this._nonCoreDecoratorsOnly(node), node.modifiers, node.name, node.parameters, node.body);
            }
            else if (ts.isConstructorDeclaration(node)) {
                // For constructors, strip decorators of the parameters.
                var parameters = node.parameters.map(function (param) { return _this._stripAngularDecorators(param); });
                node =
                    ts.updateConstructor(node, node.decorators, node.modifiers, parameters, node.body);
            }
            return node;
        };
        return IvyTransformationVisitor;
    }(visitor_1.Visitor));
    /**
     * A transformer which operates on ts.SourceFiles and applies changes from an `IvyCompilation`.
     */
    function transformIvySourceFile(compilation, context, reflector, importRewriter, file, isCore, isClosureCompilerEnabled, defaultImportRecorder) {
        var constantPool = new compiler_1.ConstantPool(isClosureCompilerEnabled);
        var importManager = new translator_1.ImportManager(importRewriter);
        // The transformation process consists of 2 steps:
        //
        //  1. Visit all classes, perform compilation and collect the results.
        //  2. Perform actual transformation of required TS nodes using compilation results from the first
        //     step.
        //
        // This is needed to have all `o.Expression`s generated before any TS transforms happen. This
        // allows `ConstantPool` to properly identify expressions that can be shared across multiple
        // components declared in the same file.
        // Step 1. Go though all classes in AST, perform compilation and collect the results.
        var compilationVisitor = new IvyCompilationVisitor(compilation, constantPool);
        visitor_1.visit(file, compilationVisitor, context);
        // Step 2. Scan through the AST again and perform transformations based on Ivy compilation
        // results obtained at Step 1.
        var transformationVisitor = new IvyTransformationVisitor(compilation, compilationVisitor.classCompilationMap, reflector, importManager, defaultImportRecorder, isClosureCompilerEnabled, isCore);
        var sf = visitor_1.visit(file, transformationVisitor, context);
        // Generate the constant statements first, as they may involve adding additional imports
        // to the ImportManager.
        var constants = constantPool.statements.map(function (stmt) { return translator_1.translateStatement(stmt, importManager, defaultImportRecorder, getLocalizeCompileTarget(context)); });
        // Preserve @fileoverview comments required by Closure, since the location might change as a
        // result of adding extra imports and constant pool statements.
        var fileOverviewMeta = isClosureCompilerEnabled ? getFileOverviewComment(sf.statements) : null;
        // Add new imports for this file.
        sf = utils_1.addImports(importManager, sf, constants);
        if (fileOverviewMeta !== null) {
            setFileOverviewComment(sf, fileOverviewMeta);
        }
        return sf;
    }
    /**
     * Compute the correct target output for `$localize` messages generated by Angular
     *
     * In some versions of TypeScript, the transformation of synthetic `$localize` tagged template
     * literals is broken. See https://github.com/microsoft/TypeScript/issues/38485
     *
     * Here we compute what the expected final output target of the compilation will
     * be so that we can generate ES5 compliant `$localize` calls instead of relying upon TS to do the
     * downleveling for us.
     */
    function getLocalizeCompileTarget(context) {
        var target = context.getCompilerOptions().target || ts.ScriptTarget.ES2015;
        return target !== ts.ScriptTarget.JSON ? target : ts.ScriptTarget.ES2015;
    }
    function getFileOverviewComment(statements) {
        if (statements.length > 0) {
            var host = statements[0];
            var trailing = false;
            var comments = ts.getSyntheticLeadingComments(host);
            // If @fileoverview tag is not found in source file, tsickle produces fake node with trailing
            // comment and inject it at the very beginning of the generated file. So we need to check for
            // leading as well as trailing comments.
            if (!comments || comments.length === 0) {
                trailing = true;
                comments = ts.getSyntheticTrailingComments(host);
            }
            if (comments && comments.length > 0 && CLOSURE_FILE_OVERVIEW_REGEXP.test(comments[0].text)) {
                return { comments: comments, host: host, trailing: trailing };
            }
        }
        return null;
    }
    function setFileOverviewComment(sf, fileoverview) {
        var comments = fileoverview.comments, host = fileoverview.host, trailing = fileoverview.trailing;
        // If host statement is no longer the first one, it means that extra statements were added at the
        // very beginning, so we need to relocate @fileoverview comment and cleanup the original statement
        // that hosted it.
        if (sf.statements.length > 0 && host !== sf.statements[0]) {
            if (trailing) {
                ts.setSyntheticTrailingComments(host, undefined);
            }
            else {
                ts.setSyntheticLeadingComments(host, undefined);
            }
            ts.setSyntheticLeadingComments(sf.statements[0], comments);
        }
    }
    function maybeFilterDecorator(decorators, toRemove) {
        if (decorators === undefined) {
            return undefined;
        }
        var filtered = decorators.filter(function (dec) { return toRemove.find(function (decToRemove) { return ts.getOriginalNode(dec) === decToRemove; }) === undefined; });
        if (filtered.length === 0) {
            return undefined;
        }
        return ts.createNodeArray(filtered);
    }
    function isFromAngularCore(decorator) {
        return decorator.import !== null && decorator.import.from === '@angular/core';
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNmb3JtLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy9uZ3RzYy90cmFuc2Zvcm0vc3JjL3RyYW5zZm9ybS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBRUgsOENBQStDO0lBQy9DLCtCQUFpQztJQUlqQyx5RUFBd0Y7SUFDeEYsNEVBQTRFO0lBSTVFLDZFQUFtQztJQUVuQyxJQUFNLGFBQWEsR0FBRyxJQUFJLEdBQUcsRUFBZ0IsQ0FBQztJQUU5QyxJQUFNLDRCQUE0QixHQUFHLHNCQUFzQixDQUFDO0lBVzVELFNBQWdCLG1CQUFtQixDQUMvQixXQUEwQixFQUFFLFNBQXlCLEVBQUUsY0FBOEIsRUFDckYscUJBQTRDLEVBQUUsTUFBZSxFQUM3RCx3QkFBaUM7UUFDbkMsT0FBTyxVQUFDLE9BQWlDO1lBQ3ZDLE9BQU8sVUFBQyxJQUFtQjtnQkFDekIsT0FBTyxzQkFBc0IsQ0FDekIsV0FBVyxFQUFFLE9BQU8sRUFBRSxTQUFTLEVBQUUsY0FBYyxFQUFFLElBQUksRUFBRSxNQUFNLEVBQUUsd0JBQXdCLEVBQ3ZGLHFCQUFxQixDQUFDLENBQUM7WUFDN0IsQ0FBQyxDQUFDO1FBQ0osQ0FBQyxDQUFDO0lBQ0osQ0FBQztJQVhELGtEQVdDO0lBRUQ7Ozs7T0FJRztJQUNIO1FBQW9DLGlEQUFPO1FBR3pDLCtCQUFvQixXQUEwQixFQUFVLFlBQTBCO1lBQWxGLFlBQ0UsaUJBQU8sU0FDUjtZQUZtQixpQkFBVyxHQUFYLFdBQVcsQ0FBZTtZQUFVLGtCQUFZLEdBQVosWUFBWSxDQUFjO1lBRjNFLHlCQUFtQixHQUFHLElBQUksR0FBRyxFQUF3QyxDQUFDOztRQUk3RSxDQUFDO1FBRUQscURBQXFCLEdBQXJCLFVBQXNCLElBQXlCO1lBRTdDLHlGQUF5RjtZQUN6RiwwQkFBMEI7WUFDMUIsSUFBTSxNQUFN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UUFDMUIsSUFBSSxVQUFVLEtBQUssU0FBUyxFQUFFO1lBQzVCLE9BQU8sU0FBUyxDQUFDO1NBQ2xCO1FBQ0QsSUFBTSxRQUFRLEdBQUcsVUFBVSxDQUFDLE1BQU0sQ0FDOUIsVUFBQSxHQUFHLElBQUksT0FBQSxRQUFRLENBQUMsSUFBSSxDQUFDLFVBQUEsV0FBVyxJQUFJLE9BQUEsRUFBRSxDQUFDLGVBQWUsQ0FBQyxHQUFHLENBQUMsS0FBSyxXQUFXLEVBQXZDLENBQXVDLENBQUMsS0FBSyxTQUFTLEVBQW5GLENBQW1GLENBQUMsQ0FBQztRQUNoRyxJQUFJLFFBQVEsQ0FBQyxNQUFNLEtBQUssQ0FBQyxFQUFFO1lBQ3pCLE9BQU8sU0FBUyxDQUFDO1NBQ2xCO1FBQ0QsT0FBTyxFQUFFLENBQUMsZUFBZSxDQUFDLFFBQVEsQ0FBQyxDQUFDO0lBQ3RDLENBQUM7SUFFRCxTQUFTLGlCQUFpQixDQUFDLFNBQW9CO1FBQzdDLE9BQU8sU0FBUyxDQUFDLE1BQU0sS0FBSyxJQUFJLElBQUksU0FBUyxDQUFDLE1BQU0sQ0FBQyxJQUFJLEtBQUssZUFBZSxDQUFDO0lBQ2hGLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtDb25zdGFudFBvb2x9IGZyb20gJ0Bhbmd1bGFyL2NvbXBpbGVyJztcbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge0RlZmF1bHRJbXBvcnRSZWNvcmRlciwgSW1wb3J0UmV3cml0ZXJ9IGZyb20gJy4uLy4uL2ltcG9ydHMnO1xuaW1wb3J0IHtEZWNvcmF0b3IsIFJlZmxlY3Rpb25Ib3N0fSBmcm9tICcuLi8uLi9yZWZsZWN0aW9uJztcbmltcG9ydCB7SW1wb3J0TWFuYWdlciwgdHJhbnNsYXRlRXhwcmVzc2lvbiwgdHJhbnNsYXRlU3RhdGVtZW50fSBmcm9tICcuLi8uLi90cmFuc2xhdG9yJztcbmltcG9ydCB7dmlzaXQsIFZpc2l0TGlzdEVudHJ5UmVzdWx0LCBWaXNpdG9yfSBmcm9tICcuLi8uLi91dGlsL3NyYy92aXNpdG9yJztcblxuaW1wb3J0IHtDb21waWxlUmVzdWx0fSBmcm9tICcuL2FwaSc7XG5pbXBvcnQge1RyYWl0Q29tcGlsZXJ9IGZyb20gJy4vY29tcGlsYXRpb24nO1xuaW1wb3J0IHthZGRJbXBvcnRzfSBmcm9tICcuL3V0aWxzJztcblxuY29uc3QgTk9fREVDT1JBVE9SUyA9IG5ldyBTZXQ8dHMuRGVjb3JhdG9yPigpO1xuXG5jb25zdCBDTE9TVVJFX0ZJTEVfT1ZFUlZJRVdfUkVHRVhQID0gL1xccytAZmlsZW92ZXJ2aWV3XFxzKy9pO1xuXG4vKipcbiAqIE1ldGFkYXRhIHRvIHN1cHBvcnQgQGZpbGVvdmVydmlldyBibG9ja3MgKENsb3N1cmUgYW5ub3RhdGlvbnMpIGV4dHJhY3RpbmcvcmVzdG9yaW5nLlxuICovXG5pbnRlcmZhY2UgRmlsZU92ZXJ2aWV3TWV0YSB7XG4gIGNvbW1lbnRzOiB0cy5TeW50aGVzaXplZENvbW1lbnRbXTtcbiAgaG9zdDogdHMuU3RhdGVtZW50O1xuICB0cmFpbGluZzogYm9vbGVhbjtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGl2eVRyYW5zZm9ybUZhY3RvcnkoXG4gICAgY29tcGlsYXRpb246IFRyYWl0Q29tcGlsZXIsIHJlZmxlY3RvcjogUmVmbGVjdGlvbkhvc3QsIGltcG9ydFJld3JpdGVyOiBJbXBvcnRSZXdyaXRlcixcbiAgICBkZWZhdWx0SW1wb3J0UmVjb3JkZXI6IERlZmF1bHRJbXBvcnRSZWNvcmRlciwgaXNDb3JlOiBib29sZWFuLFxuICAgIGlzQ2xvc3VyZUNvbXBpbGVyRW5hYmxlZDogYm9vbGVhbik6IHRzLlRyYW5zZm9ybWVyRmFjdG9yeTx0cy5Tb3VyY2VGaWxlPiB7XG4gIHJldHVybiAoY29udGV4dDogdHMuVHJhbnNmb3JtYXRpb25Db250ZXh0KTogdHMuVHJhbnNmb3JtZXI8dHMuU291cmNlRmlsZT4gPT4ge1xuICAgIHJldHVybiAoZmlsZTogdHMuU291cmNlRmlsZSk6IHRzLlNvdXJjZUZpbGUgPT4ge1xuICAgICAgcmV0dXJuIHRyYW5zZm9ybUl2eVNvdXJjZUZpbGUoXG4gICAgICAgICAgY29tcGlsYXRpb24sIGNvbnRleHQsIHJlZmxlY3RvciwgaW1wb3J0UmV3cml0ZXIsIGZpbGUsIGlzQ29yZSwgaXNDbG9zdXJlQ29tcGlsZXJFbmFibGVkLFxuICAgICAgICAgIGRlZmF1bHRJbXBvcnRSZWNvcmRlcik7XG4gICAgfTtcbiAgfTtcbn1cblxuLyoqXG4gKiBWaXNpdHMgYWxsIGNsYXNzZXMsIHBlcmZvcm1zIEl2eSBjb21waWxhdGlvbiB3aGVyZSBBbmd1bGFyIGRlY29yYXRvcnMgYXJlIHByZXNlbnQgYW5kIGNvbGxlY3RzXG4gKiByZXN1bHQgaW4gYSBNYXAgdGhhdCBhc3NvY2lhdGVzIGEgdHMuQ2xhc3NEZWNsYXJhdGlvbiB3aXRoIEl2eSBjb21waWxhdGlvbiByZXN1bHRzLiBUaGlzIHZpc2l0b3JcbiAqIGRvZXMgTk9UIHBlcmZvcm0gYW55IFRTIHRyYW5zZm9ybWF0aW9ucy5cbiAqL1xuY2xhc3MgSXZ5Q29tcGlsYXRpb25WaXNpdG9yIGV4dGVuZHMgVmlzaXRvciB7XG4gIHB1YmxpYyBjbGFzc0NvbXBpbGF0aW9uTWFwID0gbmV3IE1hcDx0cy5DbGFzc0RlY2xhcmF0aW9uLCBDb21waWxlUmVzdWx0W10+KCk7XG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSBjb21waWxhdGlvbjogVHJhaXRDb21waWxlciwgcHJpdmF0ZSBjb25zdGFudFBvb2w6IENvbnN0YW50UG9vbCkge1xuICAgIHN1cGVyKCk7XG4gIH1cblxuICB2aXNpdENsYXNzRGVjbGFyYXRpb24obm9kZTogdHMuQ2xhc3NEZWNsYXJhdGlvbik6XG4gICAgICBWaXNpdExpc3RFbnRyeVJlc3VsdDx0cy5TdGF0ZW1lbnQsIHRzLkNsYXNzRGVjbGFyYXRpb24+IHtcbiAgICAvLyBEZXRlcm1pbmUgaWYgdGhpcyBjbGFzcyBoYXMgYW4gSXZ5IGZpZWxkIHRoYXQgbmVlZHMgdG8gYmUgYWRkZWQsIGFuZCBjb21waWxlIHRoZSBmaWVsZFxuICAgIC8vIHRvIGFuIGV4cHJlc3Npb24gaWYgc28uXG4gICAgY29uc3QgcmVzdWx0ID0gdGhpcy5jb21waWxhdGlvbi5jb21waWxlKG5vZGUsIHRoaXMuY29uc3RhbnRQb29sKTtcbiAgICBpZiAocmVzdWx0ICE9PSBudWxsKSB7XG4gICAgICB0aGlzLmNsYXNzQ29tcGlsYXRpb25NYXAuc2V0KG5vZGUsIHJlc3VsdCk7XG4gICAgfVxuICAgIHJldHVybiB7bm9kZX07XG4gIH1cbn1cblxuLyoqXG4gKiBWaXNpdHMgYWxsIGNsYXNzZXMgYW5kIHBlcmZvcm1zIHRyYW5zZm9ybWF0aW9uIG9mIGNvcnJlc3BvbmRpbmcgVFMgbm9kZXMgYmFzZWQgb24gdGhlIEl2eVxuICogY29tcGlsYXRpb24gcmVzdWx0cyAocHJvdmlkZWQgYXMgYW4gYXJndW1lbnQpLlxuICovXG5jbGFzcyBJdnlUcmFuc2Zvcm1hdGlvblZpc2l0b3IgZXh0ZW5kcyBWaXNpdG9yIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIGNvbXBpbGF0aW9uOiBUcmFpdENvbXBpbGVyLFxuICAgICAgcHJpdmF0ZSBjbGFzc0NvbXBpbGF0aW9uTWFwOiBNYXA8dHMuQ2xhc3NEZWNsYXJhdGlvbiwgQ29tcGlsZVJlc3VsdFtdPixcbiAgICAgIHByaXZhdGUgcmVmbGVjdG9yOiBSZWZsZWN0aW9uSG9zdCwgcHJpdmF0ZSBpbXBvcnRNYW5hZ2VyOiBJbXBvcnRNYW5hZ2VyLFxuICAgICAgcHJpdmF0ZSBkZWZhdWx0SW1wb3J0UmVjb3JkZXI6IERlZmF1bHRJbXBvcnRSZWNvcmRlcixcbiAgICAgIHByaXZhdGUgaXNDbG9zdXJlQ29tcGlsZXJFbmFibGVkOiBib29sZWFuLCBwcml2YXRlIGlzQ29yZTogYm9vbGVhbikge1xuICAgIHN1cGVyKCk7XG4gIH1cblxuICB2aXNpdENsYXNzRGVjbGFyYXRpb24obm9kZTogdHMuQ2xhc3NEZWNsYXJhdGlvbik6XG4gICAgICBWaXNpdExpc3RFbnRyeVJlc3VsdDx0cy5TdGF0ZW1lbnQsIHRzLkNsYXNzRGVjbGFyYXRpb24+IHtcbiAgICAvLyBJZiB0aGlzIGNsYXNzIGlzIG5vdCByZWdpc3RlcmVkIGluIHRoZSBtYXAsIGl0IG1lYW5zIHRoYXQgaXQgZG9lc24ndCBoYXZlIEFuZ3VsYXIgZGVjb3JhdG9ycyxcbiAgICAvLyB0aHVzIG5vIGZ1cnRoZXIgcHJvY2Vzc2luZyBpcyByZXF1aXJlZC5cbiAgICBpZiAoIXRoaXMuY2xhc3NDb21waWxhdGlvbk1hcC5oYXMobm9kZSkpIHtcbiAgICAgIHJldHVybiB7bm9kZX07XG4gICAgfVxuXG4gICAgLy8gVGhlcmUgaXMgYXQgbGVhc3Qgb25lIGZpZWxkIHRvIGFkZC5cbiAgICBjb25zdCBzdGF0ZW1lbnRzOiB0cy5TdGF0ZW1lbnRbXSA9IFtdO1xuICAgIGNvbnN0IG1lbWJlcnMgPSBbLi4ubm9kZS5tZW1iZXJzXTtcblxuICAgIGZvciAoY29uc3QgZmllbGQgb2YgdGhpcy5jbGFzc0NvbXBpbGF0aW9uTWFwLmdldChub2RlKSEpIHtcbiAgICAgIC8vIFRyYW5zbGF0ZSB0aGUgaW5pdGlhbGl6ZXIgZm9yIHRoZSBmaWVsZCBpbnRvIFRTIG5vZGVzLlxuICAgICAgY29uc3QgZXhwck5vZGUgPSB0cmFuc2xhdGVFeHByZXNzaW9uKFxuICAgICAgICAgIGZpZWxkLmluaXRpYWxpemVyLCB0aGlzLmltcG9ydE1hbmFnZXIsIHRoaXMuZGVmYXVsdEltcG9ydFJlY29yZGVyLFxuICAgICAgICAgIHRzLlNjcmlwdFRhcmdldC5FUzIwMTUpO1xuXG4gICAgICAvLyBDcmVhdGUgYSBzdGF0aWMgcHJvcGVydHkgZGVjbGFyYXRpb24gZm9yIHRoZSBuZXcgZmllbGQuXG4gICAgICBjb25zdCBwcm9wZXJ0eSA9IHRzLmNyZWF0ZVByb3BlcnR5KFxuICAgICAgICAgIHVuZGVmaW5lZCwgW3RzLmNyZWF0ZVRva2VuKHRzLlN5bnRheEtpbmQuU3RhdGljS2V5d29yZCldLCBmaWVsZC5uYW1lLCB1bmRlZmluZWQsXG4gICAgICAgICAgdW5kZWZpbmVkLCBleHByTm9kZSk7XG5cbiAgICAgIGlmICh0aGlzLmlzQ2xvc3VyZUNvbXBpbGVyRW5hYmxlZCkge1xuICAgICAgICAvLyBDbG9zdXJlIGNvbXBpbGVyIHRyYW5zZm9ybXMgdGhlIGZvcm0gYFNlcnZpY2UuybVwcm92ID0gWGAgaW50byBgU2VydmljZSTJtXByb3YgPSBYYC4gVG9cbiAgICAgICAgLy8gcHJldmVudCB0aGlzIHRyYW5zZm9ybWF0aW9uLCBzdWNoIGFzc2lnbm1lbnRzIG5lZWQgdG8gYmUgYW5ub3RhdGVkIHdpdGggQG5vY29sbGFwc2UuXG4gICAgICAgIC8vIE5vdGUgdGhhdCB0c2lja2xlIGlzIHR5cGljYWxseSByZXNwb25zaWJsZSBmb3IgYWRkaW5nIHN1Y2ggYW5ub3RhdGlvbnMsIGhvd2V2ZXIgaXRcbiAgICAgICAgLy8gZG9lc24ndCB5ZXQgaGFuZGxlIHN5bnRoZXRpYyBmaWVsZHMgYWRkZWQgZHVyaW5nIG90aGVyIHRyYW5zZm9ybWF0aW9ucy5cbiAgICAgICAgdHMuYWRkU3ludGhldGljTGVhZGluZ0NvbW1lbnQoXG4gICAgICAgICAgICBwcm9wZXJ0eSwgdHMuU3ludGF4S2luZC5NdWx0aUxpbmVDb21tZW50VHJpdmlhLCAnKiBAbm9jb2xsYXBzZSAnLFxuICAgICAgICAgICAgLyogaGFzVHJhaWxpbmdOZXdMaW5lICovIGZhbHNlKTtcbiAgICAgIH1cblxuICAgICAgZmllbGQuc3RhdGVtZW50c1xuICAgICAgICAgIC5tYXAoXG4gICAgICAgICAgICAgIHN0bXQgPT4gdHJhbnNsYXRlU3RhdGVtZW50KFxuICAgICAgICAgICAgICAgICAgc3RtdCwgdGhpcy5pbXBvcnRNYW5hZ2VyLCB0aGlzLmRlZmF1bHRJbXBvcnRSZWNvcmRlciwgdHMuU2NyaXB0VGFyZ2V0LkVTMjAxNSkpXG4gICAgICAgICAgLmZvckVhY2goc3RtdCA9PiBzdGF0ZW1lbnRzLnB1c2goc3RtdCkpO1xuXG4gICAgICBtZW1iZXJzLnB1c2gocHJvcGVydHkpO1xuICAgIH1cblxuICAgIC8vIFJlcGxhY2UgdGhlIGNsYXNzIGRlY2xhcmF0aW9uIHdpdGggYW4gdXBkYXRlZCB2ZXJzaW9uLlxuICAgIG5vZGUgPSB0cy51cGRhdGVDbGFzc0RlY2xhcmF0aW9uKFxuICAgICAgICBub2RlLFxuICAgICAgICAvLyBSZW1vdmUgdGhlIGRlY29yYXRvciB3aGljaCB0cmlnZ2VyZWQgdGhpcyBjb21waWxhdGlvbiwgbGVhdmluZyB0aGUgb3RoZXJzIGFsb25lLlxuICAgICAgICBtYXliZUZpbHRlckRlY29yYXRvcihub2RlLmRlY29yYXRvcnMsIHRoaXMuY29tcGlsYXRpb24uZGVjb3JhdG9yc0Zvcihub2RlKSksIG5vZGUubW9kaWZpZXJzLFxuICAgICAgICBub2RlLm5hbWUsIG5vZGUudHlwZVBhcmFtZXRlcnMsIG5vZGUuaGVyaXRhZ2VDbGF1c2VzIHx8IFtdLFxuICAgICAgICAvLyBNYXAgb3ZlciB0aGUgY2xhc3MgbWVtYmVycyBhbmQgcmVtb3ZlIGFueSBBbmd1bGFyIGRlY29yYXRvcnMgZnJvbSB0aGVtLlxuICAgICAgICBtZW1iZXJzLm1hcChtZW1iZXIgPT4gdGhpcy5fc3RyaXBBbmd1bGFyRGVjb3JhdG9ycyhtZW1iZXIpKSk7XG4gICAgcmV0dXJuIHtub2RlLCBhZnRlcjogc3RhdGVtZW50c307XG4gIH1cblxuICAvKipcbiAgICogUmV0dXJuIGFsbCBkZWNvcmF0b3JzIG9uIGEgYERlY2xhcmF0aW9uYCB3aGljaCBhcmUgZnJvbSBAYW5ndWxhci9jb3JlLCBvciBhbiBlbXB0eSBzZXQgaWYgbm9uZVxuICAgKiBhcmUuXG4gICAqL1xuICBwcml2YXRlIF9hbmd1bGFyQ29yZURlY29yYXRvcnMoZGVjbDogdHMuRGVjbGFyYXRpb24pOiBTZXQ8dHMuRGVjb3JhdG9yPiB7XG4gICAgY29uc3QgZGVjb3JhdG9ycyA9IHRoaXMucmVmbGVjdG9yLmdldERlY29yYXRvcnNPZkRlY2xhcmF0aW9uKGRlY2wpO1xuICAgIGlmIChkZWNvcmF0b3JzID09PSBudWxsKSB7XG4gICAgICByZXR1cm4gTk9fREVDT1JBVE9SUztcbiAgICB9XG4gICAgY29uc3QgY29yZURlY29yYXRvcnMgPSBkZWNvcmF0b3JzLmZpbHRlcihkZWMgPT4gdGhpcy5pc0NvcmUgfHwgaXNGcm9tQW5ndWxhckNvcmUoZGVjKSlcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAubWFwKGRlYyA9PiBkZWMubm9kZSBhcyB0cy5EZWNvcmF0b3IpO1xuICAgIGlmIChjb3JlRGVjb3JhdG9ycy5sZW5ndGggPiAwKSB7XG4gICAgICByZXR1cm4gbmV3IFNldDx0cy5EZWNvcmF0b3I+KGNvcmVEZWNvcmF0b3JzKTtcbiAgICB9IGVsc2Uge1xuICAgICAgcmV0dXJuIE5PX0RFQ09SQVRPUlM7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIEdpdmVuIGEgYHRzLk5vZGVgLCBmaWx0ZXIgdGhlIGRlY29yYXRvcnMgYXJyYXkgYW5kIHJldHVybiBhIHZlcnNpb24gY29udGFpbmluZyBvbmx5IG5vbi1Bbmd1bGFyXG4gICAqIGRlY29yYXRvcnMuXG4gICAqXG4gICAqIElmIGFsbCBkZWNvcmF0b3JzIGFyZSByZW1vdmVkIChvciBub25lIGV4aXN0ZWQgaW4gdGhlIGZpcnN0IHBsYWNlKSwgdGhpcyBtZXRob2QgcmV0dXJuc1xuICAgKiBgdW5kZWZpbmVkYC5cbiAgICovXG4gIHByaXZhdGUgX25vbkNvcmVEZWNvcmF0b3JzT25seShub2RlOiB0cy5EZWNsYXJhdGlvbik6IHRzLk5vZGVBcnJheTx0cy5EZWNvcmF0b3I+fHVuZGVmaW5lZCB7XG4gICAgLy8gU2hvcnRjdXQgaWYgdGhlIG5vZGUgaGFzIG5vIGRlY29yYXRvcnMuXG4gICAgaWYgKG5vZGUuZGVjb3JhdG9ycyA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgIH1cbiAgICAvLyBCdWlsZCBhIFNldCBvZiB0aGUgZGVjb3JhdG9ycyBvbiB0aGlzIG5vZGUgZnJvbSBAYW5ndWxhci9jb3JlLlxuICAgIGNvbnN0IGNvcmVEZWNvcmF0b3JzID0gdGhpcy5fYW5ndWxhckNvcmVEZWNvcmF0b3JzKG5vZGUpO1xuXG4gICAgaWYgKGNvcmVEZWNvcmF0b3JzLnNpemUgPT09IG5vZGUuZGVjb3JhdG9ycy5sZW5ndGgpIHtcbiAgICAgIC8vIElmIGFsbCBkZWNvcmF0b3JzIGFyZSB0byBiZSByZW1vdmVkLCByZXR1cm4gYHVuZGVmaW5lZGAuXG4gICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgIH0gZWxzZSBpZiAoY29yZURlY29yYXRvcnMuc2l6ZSA9PT0gMCkge1xuICAgICAgLy8gSWYgbm8gZGVjb3JhdG9ycyBuZWVkIHRvIGJlIHJlbW92ZWQsIHJldHVybiB0aGUgb3JpZ2luYWwgZGVjb3JhdG9ycyBhcnJheS5cbiAgICAgIHJldHVybiBub2RlLmRlY29yYXRvcnM7XG4gICAgfVxuXG4gICAgLy8gRmlsdGVyIG91dCB0aGUgY29yZSBkZWNvcmF0b3JzLlxuICAgIGNvbnN0IGZpbHRlcmVkID0gbm9kZS5kZWNvcmF0b3JzLmZpbHRlcihkZWMgPT4gIWNvcmVEZWNvcmF0b3JzLmhhcyhkZWMpKTtcblxuICAgIC8vIElmIG5vIGRlY29yYXRvcnMgc3Vydml2ZSwgcmV0dXJuIGB1bmRlZmluZWRgLiBUaGlzIGNhbiBvbmx5IGhhcHBlbiBpZiBhIGNvcmUgZGVjb3JhdG9yIGlzXG4gICAgLy8gcmVwZWF0ZWQgb24gdGhlIG5vZGUuXG4gICAgaWYgKGZpbHRlcmVkLmxlbmd0aCA9PT0gMCkge1xuICAgICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgICB9XG5cbiAgICAvLyBDcmVhdGUgYSBuZXcgYE5vZGVBcnJheWAgd2l0aCB0aGUgZmlsdGVyZWQgZGVjb3JhdG9ycyB0aGF0IHNvdXJjZW1hcHMgYmFjayB0byB0aGUgb3JpZ2luYWwuXG4gICAgY29uc3QgYXJyYXkgPSB0cy5jcmVhdGVOb2RlQXJyYXkoZmlsdGVyZWQpO1xuICAgIGFycmF5LnBvcyA9IG5vZGUuZGVjb3JhdG9ycy5wb3M7XG4gICAgYXJyYXkuZW5kID0gbm9kZS5kZWNvcmF0b3JzLmVuZDtcbiAgICByZXR1cm4gYXJyYXk7XG4gIH1cblxuICAvKipcbiAgICogUmVtb3ZlIEFuZ3VsYXIgZGVjb3JhdG9ycyBmcm9tIGEgYHRzLk5vZGVgIGluIGEgc2hhbGxvdyBtYW5uZXIuXG4gICAqXG4gICAqIFRoaXMgd2lsbCByZW1vdmUgZGVjb3JhdG9ycyBmcm9tIGNsYXNzIGVsZW1lbnRzIChnZXR0ZXJzLCBzZXR0ZXJzLCBwcm9wZXJ0aWVzLCBtZXRob2RzKSBhcyB3ZWxsXG4gICAqIGFzIHBhcmFtZXRlcnMgb2YgY29uc3RydWN0b3JzLlxuICAgKi9cbiAgcHJpdmF0ZSBfc3RyaXBBbmd1bGFyRGVjb3JhdG9yczxUIGV4dGVuZHMgdHMuTm9kZT4obm9kZTogVCk6IFQge1xuICAgIGlmICh0cy5pc1BhcmFtZXRlcihub2RlKSkge1xuICAgICAgLy8gU3RyaXAgZGVjb3JhdG9ycyBmcm9tIHBhcmFtZXRlcnMgKHByb2JhYmx5IG9mIHRoZSBjb25zdHJ1Y3RvcikuXG4gICAgICBub2RlID0gdHMudXBkYXRlUGFyYW1ldGVyKFxuICAgICAgICAgICAgICAgICBub2RlLCB0aGlzLl9ub25Db3JlRGVjb3JhdG9yc09ubHkobm9kZSksIG5vZGUubW9kaWZpZXJzLCBub2RlLmRvdERvdERvdFRva2VuLFxuICAgICAgICAgICAgICAgICBub2RlLm5hbWUsIG5vZGUucXVlc3Rpb25Ub2tlbiwgbm9kZS50eXBlLCBub2RlLmluaXRpYWxpemVyKSBhcyBUICZcbiAgICAgICAgICB0cy5QYXJhbWV0ZXJEZWNsYXJhdGlvbjtcbiAgICB9IGVsc2UgaWYgKHRzLmlzTWV0aG9kRGVjbGFyYXRpb24obm9kZSkgJiYgbm9kZS5kZWNvcmF0b3JzICE9PSB1bmRlZmluZWQpIHtcbiAgICAgIC8vIFN0cmlwIGRlY29yYXRvcnMgb2YgbWV0aG9kcy5cbiAgICAgIG5vZGUgPSB0cy51cGRhdGVNZXRob2QoXG4gICAgICAgICAgICAgICAgIG5vZGUsIHRoaXMuX25vbkNvcmVEZWNvcmF0b3JzT25seShub2RlKSwgbm9kZS5tb2RpZmllcnMsIG5vZGUuYXN0ZXJpc2tUb2tlbixcbiAgICAgICAgICAgICAgICAgbm9kZS5uYW1lLCBub2RlLnF1ZXN0aW9uVG9rZW4sIG5vZGUudHlwZVBhcmFtZXRlcnMsIG5vZGUucGFyYW1ldGVycywgbm9kZS50eXBlLFxuICAgICAgICAgICAgICAgICBub2RlLmJvZHkpIGFzIFQgJlxuICAgICAgICAgIHRzLk1ldGhvZERlY2xhcmF0aW9uO1xuICAgIH0gZWxzZSBpZiAodHMuaXNQcm9wZXJ0eURlY2xhcmF0aW9uKG5vZGUpICYmIG5vZGUuZGVjb3JhdG9ycyAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICAvLyBTdHJpcCBkZWNvcmF0b3JzIG9mIHByb3BlcnRpZXMuXG4gICAgICBub2RlID0gdHMudXBkYXRlUHJvcGVydHkoXG4gICAgICAgICAgICAgICAgIG5vZGUsIHRoaXMuX25vbkNvcmVEZWNvcmF0b3JzT25seShub2RlKSwgbm9kZS5tb2RpZmllcnMsIG5vZGUubmFtZSxcbiAgICAgICAgICAgICAgICAgbm9kZS5xdWVzdGlvblRva2VuLCBub2RlLnR5cGUsIG5vZGUuaW5pdGlhbGl6ZXIpIGFzIFQgJlxuICAgICAgICAgIHRzLlByb3BlcnR5RGVjbGFyYXRpb247XG4gICAgfSBlbHNlIGlmICh0cy5pc0dldEFjY2Vzc29yKG5vZGUpKSB7XG4gICAgICAvLyBTdHJpcCBkZWNvcmF0b3JzIG9mIGdldHRlcnMuXG4gICAgICBub2RlID0gdHMudXBkYXRlR2V0QWNjZXNzb3IoXG4gICAgICAgICAgICAgICAgIG5vZGUsIHRoaXMuX25vbkNvcmVEZWNvcmF0b3JzT25seShub2RlKSwgbm9kZS5tb2RpZmllcnMsIG5vZGUubmFtZSxcbiAgICAgICAgICAgICAgICAgbm9kZS5wYXJhbWV0ZXJzLCBub2RlLnR5cGUsIG5vZGUuYm9keSkgYXMgVCAmXG4gICAgICAgICAgdHMuR2V0QWNjZXNzb3JEZWNsYXJhdGlvbjtcbiAgICB9IGVsc2UgaWYgKHRzLmlzU2V0QWNjZXNzb3Iobm9kZSkpIHtcbiAgICAgIC8vIFN0cmlwIGRlY29yYXRvcnMgb2Ygc2V0dGVycy5cbiAgICAgIG5vZGUgPSB0cy51cGRhdGVTZXRBY2Nlc3NvcihcbiAgICAgICAgICAgICAgICAgbm9kZSwgdGhpcy5fbm9uQ29yZURlY29yYXRvcnNPbmx5KG5vZGUpLCBub2RlLm1vZGlmaWVycywgbm9kZS5uYW1lLFxuICAgICAgICAgICAgICAgICBub2RlLnBhcmFtZXRlcnMsIG5vZGUuYm9keSkgYXMgVCAmXG4gICAgICAgICAgdHMuU2V0QWNjZXNzb3JEZWNsYXJhdGlvbjtcbiAgICB9IGVsc2UgaWYgKHRzLmlzQ29uc3RydWN0b3JEZWNsYXJhdGlvbihub2RlKSkge1xuICAgICAgLy8gRm9yIGNvbnN0cnVjdG9ycywgc3RyaXAgZGVjb3JhdG9ycyBvZiB0aGUgcGFyYW1ldGVycy5cbiAgICAgIGNvbnN0IHBhcmFtZXRlcnMgPSBub2RlLnBhcmFtZXRlcnMubWFwKHBhcmFtID0+IHRoaXMuX3N0cmlwQW5ndWxhckRlY29yYXRvcnMocGFyYW0pKTtcbiAgICAgIG5vZGUgPVxuICAgICAgICAgIHRzLnVwZGF0ZUNvbnN0cnVjdG9yKG5vZGUsIG5vZGUuZGVjb3JhdG9ycywgbm9kZS5tb2RpZmllcnMsIHBhcmFtZXRlcnMsIG5vZGUuYm9keSkgYXMgVCAmXG4gICAgICAgICAgdHMuQ29uc3RydWN0b3JEZWNsYXJhdGlvbjtcbiAgICB9XG4gICAgcmV0dXJuIG5vZGU7XG4gIH1cbn1cblxuLyoqXG4gKiBBIHRyYW5zZm9ybWVyIHdoaWNoIG9wZXJhdGVzIG9uIHRzLlNvdXJjZUZpbGVzIGFuZCBhcHBsaWVzIGNoYW5nZXMgZnJvbSBhbiBgSXZ5Q29tcGlsYXRpb25gLlxuICovXG5mdW5jdGlvbiB0cmFuc2Zvcm1JdnlTb3VyY2VGaWxlKFxuICAgIGNvbXBpbGF0aW9uOiBUcmFpdENvbXBpbGVyLCBjb250ZXh0OiB0cy5UcmFuc2Zvcm1hdGlvbkNvbnRleHQsIHJlZmxlY3RvcjogUmVmbGVjdGlvbkhvc3QsXG4gICAgaW1wb3J0UmV3cml0ZXI6IEltcG9ydFJld3JpdGVyLCBmaWxlOiB0cy5Tb3VyY2VGaWxlLCBpc0NvcmU6IGJvb2xlYW4sXG4gICAgaXNDbG9zdXJlQ29tcGlsZXJFbmFibGVkOiBib29sZWFuLFxuICAgIGRlZmF1bHRJbXBvcnRSZWNvcmRlcjogRGVmYXVsdEltcG9ydFJlY29yZGVyKTogdHMuU291cmNlRmlsZSB7XG4gIGNvbnN0IGNvbnN0YW50UG9vbCA9IG5ldyBDb25zdGFudFBvb2woaXNDbG9zdXJlQ29tcGlsZXJFbmFibGVkKTtcbiAgY29uc3QgaW1wb3J0TWFuYWdlciA9IG5ldyBJbXBvcnRNYW5hZ2VyKGltcG9ydFJld3JpdGVyKTtcblxuICAvLyBUaGUgdHJhbnNmb3JtYXRpb24gcHJvY2VzcyBjb25zaXN0cyBvZiAyIHN0ZXBzOlxuICAvL1xuICAvLyAgMS4gVmlzaXQgYWxsIGNsYXNzZXMsIHBlcmZvcm0gY29tcGlsYXRpb24gYW5kIGNvbGxlY3QgdGhlIHJlc3VsdHMuXG4gIC8vICAyLiBQZXJmb3JtIGFjdHVhbCB0cmFuc2Zvcm1hdGlvbiBvZiByZXF1aXJlZCBUUyBub2RlcyB1c2luZyBjb21waWxhdGlvbiByZXN1bHRzIGZyb20gdGhlIGZpcnN0XG4gIC8vICAgICBzdGVwLlxuICAvL1xuICAvLyBUaGlzIGlzIG5lZWRlZCB0byBoYXZlIGFsbCBgby5FeHByZXNzaW9uYHMgZ2VuZXJhdGVkIGJlZm9yZSBhbnkgVFMgdHJhbnNmb3JtcyBoYXBwZW4uIFRoaXNcbiAgLy8gYWxsb3dzIGBDb25zdGFudFBvb2xgIHRvIHByb3Blcmx5IGlkZW50aWZ5IGV4cHJlc3Npb25zIHRoYXQgY2FuIGJlIHNoYXJlZCBhY3Jvc3MgbXVsdGlwbGVcbiAgLy8gY29tcG9uZW50cyBkZWNsYXJlZCBpbiB0aGUgc2FtZSBmaWxlLlxuXG4gIC8vIFN0ZXAgMS4gR28gdGhvdWdoIGFsbCBjbGFzc2VzIGluIEFTVCwgcGVyZm9ybSBjb21waWxhdGlvbiBhbmQgY29sbGVjdCB0aGUgcmVzdWx0cy5cbiAgY29uc3QgY29tcGlsYXRpb25WaXNpdG9yID0gbmV3IEl2eUNvbXBpbGF0aW9uVmlzaXRvcihjb21waWxhdGlvbiwgY29uc3RhbnRQb29sKTtcbiAgdmlzaXQoZmlsZSwgY29tcGlsYXRpb25WaXNpdG9yLCBjb250ZXh0KTtcblxuICAvLyBTdGVwIDIuIFNjYW4gdGhyb3VnaCB0aGUgQVNUIGFnYWluIGFuZCBwZXJmb3JtIHRyYW5zZm9ybWF0aW9ucyBiYXNlZCBvbiBJdnkgY29tcGlsYXRpb25cbiAgLy8gcmVzdWx0cyBvYnRhaW5lZCBhdCBTdGVwIDEuXG4gIGNvbnN0IHRyYW5zZm9ybWF0aW9uVmlzaXRvciA9IG5ldyBJdnlUcmFuc2Zvcm1hdGlvblZpc2l0b3IoXG4gICAgICBjb21waWxhdGlvbiwgY29tcGlsYXRpb25WaXNpdG9yLmNsYXNzQ29tcGlsYXRpb25NYXAsIHJlZmxlY3RvciwgaW1wb3J0TWFuYWdlcixcbiAgICAgIGRlZmF1bHRJbXBvcnRSZWNvcmRlciwgaXNDbG9zdXJlQ29tcGlsZXJFbmFibGVkLCBpc0NvcmUpO1xuICBsZXQgc2YgPSB2aXNpdChmaWxlLCB0cmFuc2Zvcm1hdGlvblZpc2l0b3IsIGNvbnRleHQpO1xuXG4gIC8vIEdlbmVyYXRlIHRoZSBjb25zdGFudCBzdGF0ZW1lbnRzIGZpcnN0LCBhcyB0aGV5IG1heSBpbnZvbHZlIGFkZGluZyBhZGRpdGlvbmFsIGltcG9ydHNcbiAgLy8gdG8gdGhlIEltcG9ydE1hbmFnZXIuXG4gIGNvbnN0IGNvbnN0YW50cyA9IGNvbnN0YW50UG9vbC5zdGF0ZW1lbnRzLm1hcChcbiAgICAgIHN0bXQgPT4gdHJhbnNsYXRlU3RhdGVtZW50KFxuICAgICAgICAgIHN0bXQsIGltcG9ydE1hbmFnZXIsIGRlZmF1bHRJbXBvcnRSZWNvcmRlciwgZ2V0TG9jYWxpemVDb21waWxlVGFyZ2V0KGNvbnRleHQpKSk7XG5cbiAgLy8gUHJlc2VydmUgQGZpbGVvdmVydmlldyBjb21tZW50cyByZXF1aXJlZCBieSBDbG9zdXJlLCBzaW5jZSB0aGUgbG9jYXRpb24gbWlnaHQgY2hhbmdlIGFzIGFcbiAgLy8gcmVzdWx0IG9mIGFkZGluZyBleHRyYSBpbXBvcnRzIGFuZCBjb25zdGFudCBwb29sIHN0YXRlbWVudHMuXG4gIGNvbnN0IGZpbGVPdmVydmlld01ldGEgPSBpc0Nsb3N1cmVDb21waWxlckVuYWJsZWQgPyBnZXRGaWxlT3ZlcnZpZXdDb21tZW50KHNmLnN0YXRlbWVudHMpIDogbnVsbDtcblxuICAvLyBBZGQgbmV3IGltcG9ydHMgZm9yIHRoaXMgZmlsZS5cbiAgc2YgPSBhZGRJbXBvcnRzKGltcG9ydE1hbmFnZXIsIHNmLCBjb25zdGFudHMpO1xuXG4gIGlmIChmaWxlT3ZlcnZpZXdNZXRhICE9PSBudWxsKSB7XG4gICAgc2V0RmlsZU92ZXJ2aWV3Q29tbWVudChzZiwgZmlsZU92ZXJ2aWV3TWV0YSk7XG4gIH1cblxuICByZXR1cm4gc2Y7XG59XG5cbi8qKlxuICogQ29tcHV0ZSB0aGUgY29ycmVjdCB0YXJnZXQgb3V0cHV0IGZvciBgJGxvY2FsaXplYCBtZXNzYWdlcyBnZW5lcmF0ZWQgYnkgQW5ndWxhclxuICpcbiAqIEluIHNvbWUgdmVyc2lvbnMgb2YgVHlwZVNjcmlwdCwgdGhlIHRyYW5zZm9ybWF0aW9uIG9mIHN5bnRoZXRpYyBgJGxvY2FsaXplYCB0YWdnZWQgdGVtcGxhdGVcbiAqIGxpdGVyYWxzIGlzIGJyb2tlbi4gU2VlIGh0dHBzOi8vZ2l0aHViLmNvbS9taWNyb3NvZnQvVHlwZVNjcmlwdC9pc3N1ZXMvMzg0ODVcbiAqXG4gKiBIZXJlIHdlIGNvbXB1dGUgd2hhdCB0aGUgZXhwZWN0ZWQgZmluYWwgb3V0cHV0IHRhcmdldCBvZiB0aGUgY29tcGlsYXRpb24gd2lsbFxuICogYmUgc28gdGhhdCB3ZSBjYW4gZ2VuZXJhdGUgRVM1IGNvbXBsaWFudCBgJGxvY2FsaXplYCBjYWxscyBpbnN0ZWFkIG9mIHJlbHlpbmcgdXBvbiBUUyB0byBkbyB0aGVcbiAqIGRvd25sZXZlbGluZyBmb3IgdXMuXG4gKi9cbmZ1bmN0aW9uIGdldExvY2FsaXplQ29tcGlsZVRhcmdldChjb250ZXh0OiB0cy5UcmFuc2Zvcm1hdGlvbkNvbnRleHQpOlxuICAgIEV4Y2x1ZGU8dHMuU2NyaXB0VGFyZ2V0LCB0cy5TY3JpcHRUYXJnZXQuSlNPTj4ge1xuICBjb25zdCB0YXJnZXQgPSBjb250ZXh0LmdldENvbXBpbGVyT3B0aW9ucygpLnRhcmdldCB8fCB0cy5TY3JpcHRUYXJnZXQuRVMyMDE1O1xuICByZXR1cm4gdGFyZ2V0ICE9PSB0cy5TY3JpcHRUYXJnZXQuSlNPTiA/IHRhcmdldCA6IHRzLlNjcmlwdFRhcmdldC5FUzIwMTU7XG59XG5cbmZ1bmN0aW9uIGdldEZpbGVPdmVydmlld0NvbW1lbnQoc3RhdGVtZW50czogdHMuTm9kZUFycmF5PHRzLlN0YXRlbWVudD4pOiBGaWxlT3ZlcnZpZXdNZXRhfG51bGwge1xuICBpZiAoc3RhdGVtZW50cy5sZW5ndGggPiAwKSB7XG4gICAgY29uc3QgaG9zdCA9IHN0YXRlbWVudHNbMF07XG4gICAgbGV0IHRyYWlsaW5nID0gZmFsc2U7XG4gICAgbGV0IGNvbW1lbnRzID0gdHMuZ2V0U3ludGhldGljTGVhZGluZ0NvbW1lbnRzKGhvc3QpO1xuICAgIC8vIElmIEBmaWxlb3ZlcnZpZXcgdGFnIGlzIG5vdCBmb3VuZCBpbiBzb3VyY2UgZmlsZSwgdHNpY2tsZSBwcm9kdWNlcyBmYWtlIG5vZGUgd2l0aCB0cmFpbGluZ1xuICAgIC8vIGNvbW1lbnQgYW5kIGluamVjdCBpdCBhdCB0aGUgdmVyeSBiZWdpbm5pbmcgb2YgdGhlIGdlbmVyYXRlZCBmaWxlLiBTbyB3ZSBuZWVkIHRvIGNoZWNrIGZvclxuICAgIC8vIGxlYWRpbmcgYXMgd2VsbCBhcyB0cmFpbGluZyBjb21tZW50cy5cbiAgICBpZiAoIWNvbW1lbnRzIHx8IGNvbW1lbnRzLmxlbmd0aCA9PT0gMCkge1xuICAgICAgdHJhaWxpbmcgPSB0cnVlO1xuICAgICAgY29tbWVudHMgPSB0cy5nZXRTeW50aGV0aWNUcmFpbGluZ0NvbW1lbnRzKGhvc3QpO1xuICAgIH1cbiAgICBpZiAoY29tbWVudHMgJiYgY29tbWVudHMubGVuZ3RoID4gMCAmJiBDTE9TVVJFX0ZJTEVfT1ZFUlZJRVdfUkVHRVhQLnRlc3QoY29tbWVudHNbMF0udGV4dCkpIHtcbiAgICAgIHJldHVybiB7Y29tbWVudHMsIGhvc3QsIHRyYWlsaW5nfTtcbiAgICB9XG4gIH1cbiAgcmV0dXJuIG51bGw7XG59XG5cbmZ1bmN0aW9uIHNldEZpbGVPdmVydmlld0NvbW1lbnQoc2Y6IHRzLlNvdXJjZUZpbGUsIGZpbGVvdmVydmlldzogRmlsZU92ZXJ2aWV3TWV0YSk6IHZvaWQge1xuICBjb25zdCB7Y29tbWVudHMsIGhvc3QsIHRyYWlsaW5nfSA9IGZpbGVvdmVydmlldztcbiAgLy8gSWYgaG9zdCBzdGF0ZW1lbnQgaXMgbm8gbG9uZ2VyIHRoZSBmaXJzdCBvbmUsIGl0IG1lYW5zIHRoYXQgZXh0cmEgc3RhdGVtZW50cyB3ZXJlIGFkZGVkIGF0IHRoZVxuICAvLyB2ZXJ5IGJlZ2lubmluZywgc28gd2UgbmVlZCB0byByZWxvY2F0ZSBAZmlsZW92ZXJ2aWV3IGNvbW1lbnQgYW5kIGNsZWFudXAgdGhlIG9yaWdpbmFsIHN0YXRlbWVudFxuICAvLyB0aGF0IGhvc3RlZCBpdC5cbiAgaWYgKHNmLnN0YXRlbWVudHMubGVuZ3RoID4gMCAmJiBob3N0ICE9PSBzZi5zdGF0ZW1lbnRzWzBdKSB7XG4gICAgaWYgKHRyYWlsaW5nKSB7XG4gICAgICB0cy5zZXRTeW50aGV0aWNUcmFpbGluZ0NvbW1lbnRzKGhvc3QsIHVuZGVmaW5lZCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRzLnNldFN5bnRoZXRpY0xlYWRpbmdDb21tZW50cyhob3N0LCB1bmRlZmluZWQpO1xuICAgIH1cbiAgICB0cy5zZXRTeW50aGV0aWNMZWFkaW5nQ29tbWVudHMoc2Yuc3RhdGVtZW50c1swXSwgY29tbWVudHMpO1xuICB9XG59XG5cbmZ1bmN0aW9uIG1heWJlRmlsdGVyRGVjb3JhdG9yKFxuICAgIGRlY29yYXRvcnM6IHRzLk5vZGVBcnJheTx0cy5EZWNvcmF0b3I+fHVuZGVmaW5lZCxcbiAgICB0b1JlbW92ZTogdHMuRGVjb3JhdG9yW10pOiB0cy5Ob2RlQXJyYXk8dHMuRGVjb3JhdG9yPnx1bmRlZmluZWQge1xuICBpZiAoZGVjb3JhdG9ycyA9PT0gdW5kZWZpbmVkKSB7XG4gICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgfVxuICBjb25zdCBmaWx0ZXJlZCA9IGRlY29yYXRvcnMuZmlsdGVyKFxuICAgICAgZGVjID0+IHRvUmVtb3ZlLmZpbmQoZGVjVG9SZW1vdmUgPT4gdHMuZ2V0T3JpZ2luYWxOb2RlKGRlYykgPT09IGRlY1RvUmVtb3ZlKSA9PT0gdW5kZWZpbmVkKTtcbiAgaWYgKGZpbHRlcmVkLmxlbmd0aCA9PT0gMCkge1xuICAgIHJldHVybiB1bmRlZmluZWQ7XG4gIH1cbiAgcmV0dXJuIHRzLmNyZWF0ZU5vZGVBcnJheShmaWx0ZXJlZCk7XG59XG5cbmZ1bmN0aW9uIGlzRnJvbUFuZ3VsYXJDb3JlKGRlY29yYXRvcjogRGVjb3JhdG9yKTogYm9vbGVhbiB7XG4gIHJldHVybiBkZWNvcmF0b3IuaW1wb3J0ICE9PSBudWxsICYmIGRlY29yYXRvci5pbXBvcnQuZnJvbSA9PT0gJ0Bhbmd1bGFyL2NvcmUnO1xufVxuIl19