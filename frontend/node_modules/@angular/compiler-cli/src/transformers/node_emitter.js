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
        define("@angular/compiler-cli/src/transformers/node_emitter", ["require", "exports", "tslib", "@angular/compiler", "typescript", "@angular/compiler-cli/src/transformers/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.NodeEmitterVisitor = exports.updateSourceFile = exports.TypeScriptNodeEmitter = void 0;
    var tslib_1 = require("tslib");
    var compiler_1 = require("@angular/compiler");
    var ts = require("typescript");
    var util_1 = require("@angular/compiler-cli/src/transformers/util");
    var METHOD_THIS_NAME = 'this';
    var CATCH_ERROR_NAME = 'error';
    var CATCH_STACK_NAME = 'stack';
    var _VALID_IDENTIFIER_RE = /^[$A-Z_][0-9A-Z_$]*$/i;
    var TypeScriptNodeEmitter = /** @class */ (function () {
        function TypeScriptNodeEmitter(annotateForClosureCompiler) {
            this.annotateForClosureCompiler = annotateForClosureCompiler;
        }
        TypeScriptNodeEmitter.prototype.updateSourceFile = function (sourceFile, stmts, preamble) {
            var converter = new NodeEmitterVisitor(this.annotateForClosureCompiler);
            // [].concat flattens the result so that each `visit...` method can also return an array of
            // stmts.
            var statements = [].concat.apply([], tslib_1.__spread(stmts.map(function (stmt) { return stmt.visitStatement(converter, null); }).filter(function (stmt) { return stmt != null; })));
            var preambleStmts = [];
            if (preamble) {
                var commentStmt = this.createCommentStatement(sourceFile, preamble);
                preambleStmts.push(commentStmt);
            }
            var sourceStatements = tslib_1.__spread(preambleStmts, converter.getReexports(), converter.getImports(), statements);
            converter.updateSourceMap(sourceStatements);
            var newSourceFile = ts.updateSourceFileNode(sourceFile, sourceStatements);
            return [newSourceFile, converter.getNodeMap()];
        };
        /** Creates a not emitted statement containing the given comment. */
        TypeScriptNodeEmitter.prototype.createCommentStatement = function (sourceFile, comment) {
            if (comment.startsWith('/*') && comment.endsWith('*/')) {
                comment = comment.substr(2, comment.length - 4);
            }
            var commentStmt = ts.createNotEmittedStatement(sourceFile);
            ts.setSyntheticLeadingComments(commentStmt, [{ kind: ts.SyntaxKind.MultiLineCommentTrivia, text: comment, pos: -1, end: -1 }]);
            ts.setEmitFlags(commentStmt, ts.EmitFlags.CustomPrologue);
            return commentStmt;
        };
        return TypeScriptNodeEmitter;
    }());
    exports.TypeScriptNodeEmitter = TypeScriptNodeEmitter;
    /**
     * Update the given source file to include the changes specified in module.
     *
     * The module parameter is treated as a partial module meaning that the statements are added to
     * the module instead of replacing the module. Also, any classes are treated as partial classes
     * and the included members are added to the class with the same name instead of a new class
     * being created.
     */
    function updateSourceFile(sourceFile, module, annotateForClosureCompiler) {
        var converter = new NodeEmitterVisitor(annotateForClosureCompiler);
        converter.loadExportedVariableIdentifiers(sourceFile);
        var prefixStatements = module.statements.filter(function (statement) { return !(statement instanceof compiler_1.ClassStmt); });
        var classes = module.statements.filter(function (statement) { return statement instanceof compiler_1.ClassStmt; });
        var classMap = new Map(classes.map(function (classStatement) { return [classStatement.name, classStatement]; }));
        var classNames = new Set(classes.map(function (classStatement) { return classStatement.name; }));
        var prefix = prefixStatements.map(function (statement) { return statement.visitStatement(converter, sourceFile); });
        // Add static methods to all the classes referenced in module.
        var newStatements = sourceFile.statements.map(function (node) {
            if (node.kind == ts.SyntaxKind.ClassDeclaration) {
                var classDeclaration = node;
                var name = classDeclaration.name;
                if (name) {
                    var classStatement = classMap.get(name.text);
                    if (classStatement) {
                        classNames.delete(name.text);
                        var classMemberHolder = converter.visitDeclareClassStmt(classStatement);
                        var newMethods = classMemberHolder.members.filter(function (member) { return member.kind !== ts.SyntaxKind.Constructor; });
                        var newMembers = tslib_1.__spread(classDeclaration.members, newMethods);
                        return ts.updateClassDeclaration(classDeclaration, 
                        /* decorators */ classDeclaration.decorators, 
                        /* modifiers */ classDeclaration.modifiers, 
                        /* name */ classDeclaration.name, 
                        /* typeParameters */ classDeclaration.typeParameters, 
                        /* heritageClauses */ classDeclaration.heritageClauses || [], 
                        /* members */ newMembers);
                    }
                }
            }
            return node;
        });
        // Validate that all the classes have been generated
        classNames.size == 0 ||
            util_1.error((classNames.size == 1 ? 'Class' : 'Classes') + " \"" + Array.from(classNames.keys()).join(', ') + "\" not generated");
        // Add imports to the module required by the new methods
        var imports = converter.getImports();
        if (imports && imports.length) {
            // Find where the new imports should go
            var index = firstAfter(newStatements, function (statement) { return statement.kind === ts.SyntaxKind.ImportDeclaration ||
                statement.kind === ts.SyntaxKind.ImportEqualsDeclaration; });
            newStatements = tslib_1.__spread(newStatements.slice(0, index), imports, prefix, newStatements.slice(index));
        }
        else {
            newStatements = tslib_1.__spread(prefix, newStatements);
        }
        converter.updateSourceMap(newStatements);
        var newSourceFile = ts.updateSourceFileNode(sourceFile, newStatements);
        return [newSourceFile, converter.getNodeMap()];
    }
    exports.updateSourceFile = updateSourceFile;
    // Return the index after the first value in `a` that doesn't match the predicate after a value that
    // does or 0 if no values match.
    function firstAfter(a, predicate) {
        var index = 0;
        var len = a.length;
        for (; index < len; index++) {
            var value = a[index];
            if (predicate(value))
                break;
        }
        if (index >= len)
            return 0;
        for (; index < len; index++) {
            var value = a[index];
            if (!predicate(value))
                break;
        }
        return index;
    }
    function escapeLiteral(value) {
        return value.replace(/(\"|\\)/g, '\\$1').replace(/(\n)|(\r)/g, function (v, n, r) {
            return n ? '\\n' : '\\r';
        });
    }
    function createLiteral(value) {
        if (value === null) {
            return ts.createNull();
        }
        else if (value === undefined) {
            return ts.createIdentifier('undefined');
        }
        else {
            var result = ts.createLiteral(value);
            if (ts.isStringLiteral(result) && result.text.indexOf('\\') >= 0) {
                // Hack to avoid problems cause indirectly by:
                //    https://github.com/Microsoft/TypeScript/issues/20192
                // This avoids the string escaping normally performed for a string relying on that
                // TypeScript just emits the text raw for a numeric literal.
                result.kind = ts.SyntaxKind.NumericLiteral;
                result.text = "\"" + escapeLiteral(result.text) + "\"";
            }
            return result;
        }
    }
    function isExportTypeStatement(statement) {
        return !!statement.modifiers &&
            statement.modifiers.some(function (mod) { return mod.kind === ts.SyntaxKind.ExportKeyword; });
    }
    /**
     * Visits an output ast and produces the corresponding TypeScript synthetic nodes.
     */
    var NodeEmitterVisitor = /** @class */ (function () {
        function NodeEmitterVisitor(annotateForClosureCompiler) {
            this.annotateForClosureCompiler = annotateForClosureCompiler;
            this._nodeMap = new Map();
            this._importsWithPrefixes = new Map();
            this._reexports = new Map();
            this._templateSources = new Map();
            this._exportedVariableIdentifiers = new Map();
        }
        /**
         * Process the source file and collect exported identifiers that refer to variables.
         *
         * Only variables are collected because exported classes still exist in the module scope in
         * CommonJS, whereas variables have their declarations moved onto the `exports` object, and all
         * references are updated accordingly.
         */
        NodeEmitterVisitor.prototype.loadExportedVariableIdentifiers = function (sourceFile) {
            var _this = this;
            sourceFile.statements.forEach(function (statement) {
                if (ts.isVariableStatement(statement) && isExportTypeStatement(statement)) {
                    statement.declarationList.declarations.forEach(function (declaration) {
                        if (ts.isIdentifier(declaration.name)) {
                            _this._exportedVariableIdentifiers.set(declaration.name.text, declaration.name);
                        }
                    });
                }
            });
        };
        NodeEmitterVisitor.prototype.getReexports = function () {
            return Array.from(this._reexports.entries())
                .map(function (_a) {
                var _b = tslib_1.__read(_a, 2), exportedFilePath = _b[0], reexports = _b[1];
                return ts.createExportDeclaration(
                /* decorators */ undefined, 
                /* modifiers */ undefined, ts.createNamedExports(reexports.map(function (_a) {
                    var name = _a.name, as = _a.as;
                    return ts.createExportSpecifier(name, as);
                })), 
                /* moduleSpecifier */ createLiteral(exportedFilePath));
            });
        };
        NodeEmitterVisitor.prototype.getImports = function () {
            return Array.from(this._importsWithPrefixes.entries())
                .map(function (_a) {
                var _b = tslib_1.__read(_a, 2), namespace = _b[0], prefix = _b[1];
                return ts.createImportDeclaration(
                /* decorators */ undefined, 
                /* modifiers */ undefined, 
                /* importClause */
                ts.createImportClause(
                /* name */ undefined, ts.createNamespaceImport(ts.createIdentifier(prefix))), 
                /* moduleSpecifier */ createLiteral(namespace));
            });
        };
        NodeEmitterVisitor.prototype.getNodeMap = function () {
            return this._nodeMap;
        };
        NodeEmitterVisitor.prototype.updateSourceMap = function (statements) {
            var _this = this;
            var lastRangeStartNode = undefined;
            var lastRangeEndNode = undefined;
            var lastRange = undefined;
            var recordLastSourceRange = function () {
                if (lastRange && lastRangeStartNode && lastRangeEndNode) {
                    if (lastRangeStartNode == lastRangeEndNode) {
                        ts.setSourceMapRange(lastRangeEndNode, lastRange);
                    }
                    else {
                        ts.setSourceMapRange(lastRangeStartNode, lastRange);
                        // Only emit the pos for the first node emitted in the range.
                        ts.setEmitFlags(lastRangeStartNode, ts.EmitFlags.NoTrailingSourceMap);
                        ts.setSourceMapRange(lastRangeEndNode, lastRange);
                        // Only emit emit end for the last node emitted in the range.
                        ts.setEmitFlags(lastRangeEndNode, ts.EmitFlags.NoLeadingSourceMap);
                    }
                }
            };
            var visitNode = function (tsNode) {
                var ngNode = _this._nodeMap.get(tsNode);
                if (ngNode) {
                    var range = _this.sourceRangeOf(ngNode);
                    if (range) {
                        if (!lastRange || range.source != lastRange.source || range.pos != lastRange.pos ||
                            range.end != lastRange.end) {
                            recordLastSourceRange();
                            lastRangeStartNode = tsNode;
                            lastRange = range;
                        }
                        lastRangeEndNode = tsNode;
                    }
                }
                ts.forEachChild(tsNode, visitNode);
            };
            statements.forEach(visitNode);
            recordLastSourceRange();
        };
        NodeEmitterVisitor.prototype.record = function (ngNode, tsNode) {
            if (tsNode && !this._nodeMap.has(tsNode)) {
                this._nodeMap.set(tsNode, ngNode);
            }
            return tsNode;
        };
        NodeEmitterVisitor.prototype.sourceRangeOf = function (node) {
            if (node.sourceSpan) {
                var span = node.sourceSpan;
                if (span.start.file == span.end.file) {
                    var file = span.start.file;
                    if (file.url) {
                        var source = this._templateSources.get(file);
                        if (!source) {
                            source = ts.createSourceMapSource(file.url, file.content, function (pos) { return pos; });
                            this._templateSources.set(file, source);
                        }
                        return { pos: span.start.offset, end: span.end.offset, source: source };
                    }
                }
            }
            return null;
        };
        NodeEmitterVisitor.prototype.getModifiers = function (stmt) {
            var modifiers = [];
            if (stmt.hasModifier(compiler_1.StmtModifier.Exported)) {
                modifiers.push(ts.createToken(ts.SyntaxKind.ExportKeyword));
            }
            return modifiers;
        };
        // StatementVisitor
        NodeEmitterVisitor.prototype.visitDeclareVarStmt = function (stmt) {
            if (stmt.hasModifier(compiler_1.StmtModifier.Exported) && stmt.value instanceof compiler_1.ExternalExpr &&
                !stmt.type) {
                // check for a reexport
                var _a = stmt.value.value, name = _a.name, moduleName = _a.moduleName;
                if (moduleName) {
                    var reexports = this._reexports.get(moduleName);
                    if (!reexports) {
                        reexports = [];
                        this._reexports.set(moduleName, reexports);
                    }
                    reexports.push({ name: name, as: stmt.name });
                    return null;
                }
            }
            var varDeclList = ts.createVariableDeclarationList([ts.createVariableDeclaration(ts.createIdentifier(stmt.name), 
                /* type */ undefined, (stmt.value && stmt.value.visitExpression(this, null)) || undefined)]);
            if (stmt.hasModifier(compiler_1.StmtModifier.Exported)) {
                // Note: We need to add an explicit variable and export declaration so that
                // the variable can be referred in the same file as well.
                var tsVarStmt = this.record(stmt, ts.createVariableStatement(/* modifiers */ [], varDeclList));
                var exportStmt = this.record(stmt, ts.createExportDeclaration(
                /*decorators*/ undefined, /*modifiers*/ undefined, ts.createNamedExports([ts.createExportSpecifier(stmt.name, stmt.name)])));
                return [tsVarStmt, exportStmt];
            }
            return this.record(stmt, ts.createVariableStatement(this.getModifiers(stmt), varDeclList));
        };
        NodeEmitterVisitor.prototype.visitDeclareFunctionStmt = function (stmt) {
            return this.record(stmt, ts.createFunctionDeclaration(
            /* decorators */ undefined, this.getModifiers(stmt), 
            /* asteriskToken */ undefined, stmt.name, /* typeParameters */ undefined, stmt.params.map(function (p) { return ts.createParameter(
            /* decorators */ undefined, /* modifiers */ undefined, 
            /* dotDotDotToken */ undefined, p.name); }), 
            /* type */ undefined, this._visitStatements(stmt.statements)));
        };
        NodeEmitterVisitor.prototype.visitExpressionStmt = function (stmt) {
            return this.record(stmt, ts.createStatement(stmt.expr.visitExpression(this, null)));
        };
        NodeEmitterVisitor.prototype.visitReturnStmt = function (stmt) {
            return this.record(stmt, ts.createReturn(stmt.value ? stmt.value.visitExpression(this, null) : undefined));
        };
        NodeEmitterVisitor.prototype.visitDeclareClassStmt = function (stmt) {
            var _this = this;
            var modifiers = this.getModifiers(stmt);
            var fields = stmt.fields.map(function (field) {
                var property = ts.createProperty(
                /* decorators */ undefined, /* modifiers */ translateModifiers(field.modifiers), field.name, 
                /* questionToken */ undefined, 
                /* type */ undefined, field.initializer == null ? ts.createNull() :
                    field.initializer.visitExpression(_this, null));
                if (_this.annotateForClosureCompiler) {
                    // Closure compiler transforms the form `Service.ɵprov = X` into `Service$ɵprov = X`. To
                    // prevent this transformation, such assignments need to be annotated with @nocollapse.
                    // Note that tsickle is typically responsible for adding such annotations, however it
                    // doesn't yet handle synthetic fields added during other transformations.
                    ts.addSyntheticLeadingComment(property, ts.SyntaxKind.MultiLineCommentTrivia, '* @nocollapse ', 
                    /* hasTrailingNewLine */ false);
                }
                return property;
            });
            var getters = stmt.getters.map(function (getter) { return ts.createGetAccessor(
            /* decorators */ undefined, /* modifiers */ undefined, getter.name, /* parameters */ [], 
            /* type */ undefined, _this._visitStatements(getter.body)); });
            var constructor = (stmt.constructorMethod && [ts.createConstructor(
                /* decorators */ undefined, 
                /* modifiers */ undefined, 
                /* parameters */
                stmt.constructorMethod.params.map(function (p) { return ts.createParameter(
                /* decorators */ undefined, 
                /* modifiers */ undefined, 
                /* dotDotDotToken */ undefined, p.name); }), this._visitStatements(stmt.constructorMethod.body))]) ||
                [];
            // TODO {chuckj}: Determine what should be done for a method with a null name.
            var methods = stmt.methods.filter(function (method) { return method.name; })
                .map(function (method) { return ts.createMethod(
            /* decorators */ undefined, 
            /* modifiers */ translateModifiers(method.modifiers), 
            /* astriskToken */ undefined, method.name /* guarded by filter */, 
            /* questionToken */ undefined, /* typeParameters */ undefined, method.params.map(function (p) { return ts.createParameter(
            /* decorators */ undefined, /* modifiers */ undefined, 
            /* dotDotDotToken */ undefined, p.name); }), 
            /* type */ undefined, _this._visitStatements(method.body)); });
            return this.record(stmt, ts.createClassDeclaration(
            /* decorators */ undefined, modifiers, stmt.name, /* typeParameters*/ undefined, stmt.parent &&
                [ts.createHeritageClause(ts.SyntaxKind.ExtendsKeyword, [stmt.parent.visitExpression(this, null)])] ||
                [], tslib_1.__spread(fields, getters, constructor, methods)));
        };
        NodeEmitterVisitor.prototype.visitIfStmt = function (stmt) {
            return this.record(stmt, ts.createIf(stmt.condition.visitExpression(this, null), this._visitStatements(stmt.trueCase), stmt.falseCase && stmt.falseCase.length && this._visitStatements(stmt.falseCase) ||
                undefined));
        };
        NodeEmitterVisitor.prototype.visitTryCatchStmt = function (stmt) {
            return this.record(stmt, ts.createTry(this._visitStatements(stmt.bodyStmts), ts.createCatchClause(CATCH_ERROR_NAME, this._visitStatementsPrefix([ts.createVariableStatement(
                /* modifiers */ undefined, [ts.createVariableDeclaration(CATCH_STACK_NAME, /* type */ undefined, ts.createPropertyAccess(ts.createIdentifier(CATCH_ERROR_NAME), ts.createIdentifier(CATCH_STACK_NAME)))])], stmt.catchStmts)), 
            /* finallyBlock */ undefined));
        };
        NodeEmitterVisitor.prototype.visitThrowStmt = function (stmt) {
            return this.record(stmt, ts.createThrow(stmt.error.visitExpression(this, null)));
        };
        NodeEmitterVisitor.prototype.visitCommentStmt = function (stmt, sourceFile) {
            var text = stmt.multiline ? " " + stmt.comment + " " : " " + stmt.comment;
            return this.createCommentStmt(text, stmt.multiline, sourceFile);
        };
        NodeEmitterVisitor.prototype.visitJSDocCommentStmt = function (stmt, sourceFile) {
            return this.createCommentStmt(stmt.toString(), true, sourceFile);
        };
        NodeEmitterVisitor.prototype.createCommentStmt = function (text, multiline, sourceFile) {
            var commentStmt = ts.createNotEmittedStatement(sourceFile);
            var kind = multiline ? ts.SyntaxKind.MultiLineCommentTrivia : ts.SyntaxKind.SingleLineCommentTrivia;
            ts.setSyntheticLeadingComments(commentStmt, [{ kind: kind, text: text, pos: -1, end: -1 }]);
            return commentStmt;
        };
        // ExpressionVisitor
        NodeEmitterVisitor.prototype.visitWrappedNodeExpr = function (expr) {
            return this.record(expr, expr.node);
        };
        NodeEmitterVisitor.prototype.visitTypeofExpr = function (expr) {
            var typeOf = ts.createTypeOf(expr.expr.visitExpression(this, null));
            return this.record(expr, typeOf);
        };
        // ExpressionVisitor
        NodeEmitterVisitor.prototype.visitReadVarExpr = function (expr) {
            switch (expr.builtin) {
                case compiler_1.BuiltinVar.This:
                    return this.record(expr, ts.createIdentifier(METHOD_THIS_NAME));
                case compiler_1.BuiltinVar.CatchError:
                    return this.record(expr, ts.createIdentifier(CATCH_ERROR_NAME));
                case compiler_1.BuiltinVar.CatchStack:
                    return this.record(expr, ts.createIdentifier(CATCH_STACK_NAME));
                case compiler_1.BuiltinVar.Super:
                    return this.record(expr, ts.createSuper());
            }
            if (expr.name) {
                return this.record(expr, ts.createIdentifier(expr.name));
            }
            throw Error("Unexpected ReadVarExpr form");
        };
        NodeEmitterVisitor.prototype.visitWriteVarExpr = function (expr) {
            return this.record(expr, ts.createAssignment(ts.createIdentifier(expr.name), expr.value.visitExpression(this, null)));
        };
        NodeEmitterVisitor.prototype.visitWriteKeyExpr = function (expr) {
            return this.record(expr, ts.createAssignment(ts.createElementAccess(expr.receiver.visitExpression(this, null), expr.index.visitExpression(this, null)), expr.value.visitExpression(this, null)));
        };
        NodeEmitterVisitor.prototype.visitWritePropExpr = function (expr) {
            return this.record(expr, ts.createAssignment(ts.createPropertyAccess(expr.receiver.visitExpression(this, null), expr.name), expr.value.visitExpression(this, null)));
        };
        NodeEmitterVisitor.prototype.visitInvokeMethodExpr = function (expr) {
            var _this = this;
            var methodName = getMethodName(expr);
            return this.record(expr, ts.createCall(ts.createPropertyAccess(expr.receiver.visitExpression(this, null), methodName), 
            /* typeArguments */ undefined, expr.args.map(function (arg) { return arg.visitExpression(_this, null); })));
        };
        NodeEmitterVisitor.prototype.visitInvokeFunctionExpr = function (expr) {
            var _this = this;
            return this.record(expr, ts.createCall(expr.fn.visitExpression(this, null), /* typeArguments */ undefined, expr.args.map(function (arg) { return arg.visitExpression(_this, null); })));
        };
        NodeEmitterVisitor.prototype.visitInstantiateExpr = function (expr) {
            var _this = this;
            return this.record(expr, ts.createNew(expr.classExpr.visitExpression(this, null), /* typeArguments */ undefined, expr.args.map(function (arg) { return arg.visitExpression(_this, null); })));
        };
        NodeEmitterVisitor.prototype.visitLiteralExpr = function (expr) {
            return this.record(expr, createLiteral(expr.value));
        };
        NodeEmitterVisitor.prototype.visitLocalizedString = function (expr, context) {
            throw new Error('localized strings are not supported in pre-ivy mode.');
        };
        NodeEmitterVisitor.prototype.visitExternalExpr = function (expr) {
            return this.record(expr, this._visitIdentifier(expr.value));
        };
        NodeEmitterVisitor.prototype.visitConditionalExpr = function (expr) {
            // TODO {chuckj}: Review use of ! on falseCase. Should it be non-nullable?
            return this.record(expr, ts.createParen(ts.createConditional(expr.condition.visitExpression(this, null), expr.trueCase.visitExpression(this, null), expr.falseCase.visitExpression(this, null))));
        };
        NodeEmitterVisitor.prototype.visitNotExpr = function (expr) {
            return this.record(expr, ts.createPrefix(ts.SyntaxKind.ExclamationToken, expr.condition.visitExpression(this, null)));
        };
        NodeEmitterVisitor.prototype.visitAssertNotNullExpr = function (expr) {
            return expr.condition.visitExpression(this, null);
        };
        NodeEmitterVisitor.prototype.visitCastExpr = function (expr) {
            return expr.value.visitExpression(this, null);
        };
        NodeEmitterVisitor.prototype.visitFunctionExpr = function (expr) {
            return this.record(expr, ts.createFunctionExpression(
            /* modifiers */ undefined, /* astriskToken */ undefined, 
            /* name */ expr.name || undefined, 
            /* typeParameters */ undefined, expr.params.map(function (p) { return ts.createParameter(
            /* decorators */ undefined, /* modifiers */ undefined, 
            /* dotDotDotToken */ undefined, p.name); }), 
            /* type */ undefined, this._visitStatements(expr.statements)));
        };
        NodeEmitterVisitor.prototype.visitBinaryOperatorExpr = function (expr) {
            var binaryOperator;
            switch (expr.operator) {
                case compiler_1.BinaryOperator.And:
                    binaryOperator = ts.SyntaxKind.AmpersandAmpersandToken;
                    break;
                case compiler_1.BinaryOperator.BitwiseAnd:
                    binaryOperator = ts.SyntaxKind.AmpersandToken;
                    break;
                case compiler_1.BinaryOperator.Bigger:
                    binaryOperator = ts.SyntaxKind.GreaterThanToken;
                    break;
                case compiler_1.BinaryOperator.BiggerEquals:
                    binaryOperator = ts.SyntaxKind.GreaterThanEqualsToken;
                    break;
                case compiler_1.BinaryOperator.Divide:
                    binaryOperator = ts.SyntaxKind.SlashToken;
                    break;
                case compiler_1.BinaryOperator.Equals:
                    binaryOperator = ts.SyntaxKind.EqualsEqualsToken;
                    break;
                case compiler_1.BinaryOperator.Identical:
                    binaryOperator = ts.SyntaxKind.EqualsEqualsEqualsToken;
                    break;
                case compiler_1.BinaryOperator.Lower:
                    binaryOperator = ts.SyntaxKind.LessThanToken;
                    break;
                case compiler_1.BinaryOperator.LowerEquals:
                    binaryOperator = ts.SyntaxKind.LessThanEqualsToken;
                    break;
                case compiler_1.BinaryOperator.Minus:
                    binaryOperator = ts.SyntaxKind.MinusToken;
                    break;
                case compiler_1.BinaryOperator.Modulo:
                    binaryOperator = ts.SyntaxKind.PercentToken;
                    break;
                case compiler_1.BinaryOperator.Multiply:
                    binaryOperator = ts.SyntaxKind.AsteriskToken;
                    break;
                case compiler_1.BinaryOperator.NotEquals:
                    binaryOperator = ts.SyntaxKind.ExclamationEqualsToken;
                    break;
                case compiler_1.BinaryOperator.NotIdentical:
                    binaryOperator = ts.SyntaxKind.ExclamationEqualsEqualsToken;
                    break;
                case compiler_1.BinaryOperator.Or:
                    binaryOperator = ts.SyntaxKind.BarBarToken;
                    break;
                case compiler_1.BinaryOperator.Plus:
                    binaryOperator = ts.SyntaxKind.PlusToken;
                    break;
                default:
                    throw new Error("Unknown operator: " + expr.operator);
            }
            var binary = ts.createBinary(expr.lhs.visitExpression(this, null), binaryOperator, expr.rhs.visitExpression(this, null));
            return this.record(expr, expr.parens ? ts.createParen(binary) : binary);
        };
        NodeEmitterVisitor.prototype.visitReadPropExpr = function (expr) {
            return this.record(expr, ts.createPropertyAccess(expr.receiver.visitExpression(this, null), expr.name));
        };
        NodeEmitterVisitor.prototype.visitReadKeyExpr = function (expr) {
            return this.record(expr, ts.createElementAccess(expr.receiver.visitExpression(this, null), expr.index.visitExpression(this, null)));
        };
        NodeEmitterVisitor.prototype.visitLiteralArrayExpr = function (expr) {
            var _this = this;
            return this.record(expr, ts.createArrayLiteral(expr.entries.map(function (entry) { return entry.visitExpression(_this, null); })));
        };
        NodeEmitterVisitor.prototype.visitLiteralMapExpr = function (expr) {
            var _this = this;
            return this.record(expr, ts.createObjectLiteral(expr.entries.map(function (entry) { return ts.createPropertyAssignment(entry.quoted || !_VALID_IDENTIFIER_RE.test(entry.key) ?
                ts.createLiteral(entry.key) :
                entry.key, entry.value.visitExpression(_this, null)); })));
        };
        NodeEmitterVisitor.prototype.visitCommaExpr = function (expr) {
            var _this = this;
            return this.record(expr, expr.parts.map(function (e) { return e.visitExpression(_this, null); })
                .reduce(function (left, right) {
                return left ? ts.createBinary(left, ts.SyntaxKind.CommaToken, right) : right;
            }, null));
        };
        NodeEmitterVisitor.prototype._visitStatements = function (statements) {
            return this._visitStatementsPrefix([], statements);
        };
        NodeEmitterVisitor.prototype._visitStatementsPrefix = function (prefix, statements) {
            var _this = this;
            return ts.createBlock(tslib_1.__spread(prefix, statements.map(function (stmt) { return stmt.visitStatement(_this, null); }).filter(function (f) { return f != null; })));
        };
        NodeEmitterVisitor.prototype._visitIdentifier = function (value) {
            // name can only be null during JIT which never executes this code.
            var moduleName = value.moduleName, name = value.name;
            var prefixIdent = null;
            if (moduleName) {
                var prefix = this._importsWithPrefixes.get(moduleName);
                if (prefix == null) {
                    prefix = "i" + this._importsWithPrefixes.size;
                    this._importsWithPrefixes.set(moduleName, prefix);
                }
                prefixIdent = ts.createIdentifier(prefix);
            }
            if (prefixIdent) {
                return ts.createPropertyAccess(prefixIdent, name);
            }
            else {
                var id = ts.createIdentifier(name);
                if (this._exportedVariableIdentifiers.has(name)) {
                    // In order for this new identifier node to be properly rewritten in CommonJS output,
                    // it must have its original node set to a parsed instance of the same identifier.
                    ts.setOriginalNode(id, this._exportedVariableIdentifiers.get(name));
                }
                return id;
            }
        };
        return NodeEmitterVisitor;
    }());
    exports.NodeEmitterVisitor = NodeEmitterVisitor;
    function getMethodName(methodRef) {
        if (methodRef.name) {
            return methodRef.name;
        }
        else {
            switch (methodRef.builtin) {
                case compiler_1.BuiltinMethod.Bind:
                    return 'bind';
                case compiler_1.BuiltinMethod.ConcatArray:
                    return 'concat';
                case compiler_1.BuiltinMethod.SubscribeObservable:
                    return 'subscribe';
            }
        }
        throw new Error('Unexpected method reference form');
    }
    function modifierFromModifier(modifier) {
        switch (modifier) {
            case compiler_1.StmtModifier.Exported:
                return ts.createToken(ts.SyntaxKind.ExportKeyword);
            case compiler_1.StmtModifier.Final:
                return ts.createToken(ts.SyntaxKind.ConstKeyword);
            case compiler_1.StmtModifier.Private:
                return ts.createToken(ts.SyntaxKind.PrivateKeyword);
            case compiler_1.StmtModifier.Static:
                return ts.createToken(ts.SyntaxKind.StaticKeyword);
        }
        return util_1.error("unknown statement modifier");
    }
    function translateModifiers(modifiers) {
        return modifiers == null ? undefined : modifiers.map(modifierFromModifier);
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibm9kZV9lbWl0dGVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy90cmFuc2Zvcm1lcnMvbm9kZV9lbWl0dGVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFFSCw4Q0FBd3FCO0lBRXhxQiwrQkFBaUM7SUFFakMsb0VBQTZCO0lBTTdCLElBQU0sZ0JBQWdCLEdBQUcsTUFBTSxDQUFDO0lBQ2hDLElBQU0sZ0JBQWdCLEdBQUcsT0FBTyxDQUFDO0lBQ2pDLElBQU0sZ0JBQWdCLEdBQUcsT0FBTyxDQUFDO0lBQ2pDLElBQU0sb0JBQW9CLEdBQUcsdUJBQXVCLENBQUM7SUFFckQ7UUFDRSwrQkFBb0IsMEJBQW1DO1lBQW5DLCtCQUEwQixHQUExQiwwQkFBMEIsQ0FBUztRQUFHLENBQUM7UUFFM0QsZ0RBQWdCLEdBQWhCLFVBQWlCLFVBQXlCLEVBQUUsS0FBa0IsRUFBRSxRQUFpQjtZQUUvRSxJQUFNLFNBQVMsR0FBRyxJQUFJLGtCQUFrQixDQUFDLElBQUksQ0FBQywwQkFBMEIsQ0FBQyxDQUFDO1lBQzFFLDJGQUEyRjtZQUMzRixTQUFTO1lBQ1QsSUFBTSxVQUFVLEdBQVUsRUFBRSxDQUFDLE1BQU0sT0FBVCxFQUFFLG1CQUNyQixLQUFLLENBQUMsR0FBRyxDQUFDLFVBQUEsSUFBSSxJQUFJLE9BQUEsSUFBSSxDQUFDLGNBQWMsQ0FBQyxTQUFTLEVBQUUsSUFBSSxDQUFDLEVBQXBDLENBQW9DLENBQUMsQ0FBQyxNQUFNLENBQUMsVUFBQSxJQUFJLElBQUksT0FBQSxJQUFJLElBQUksSUFBSSxFQUFaLENBQVksQ0FBQyxFQUFDLENBQUM7WUFDN0YsSUFBTSxhQUFhLEdBQW1CLEVBQUUsQ0FBQztZQUN6QyxJQUFJLFFBQVEsRUFBRTtnQkFDWixJQUFNLFdBQVcsR0FBRyxJQUFJLENBQUMsc0JBQXNCLENBQUMsVUFB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LHVCQUFZLENBQUMsT0FBTztnQkFDdkIsT0FBTyxFQUFFLENBQUMsV0FBVyxDQUFDLEVBQUUsQ0FBQyxVQUFVLENBQUMsY0FBYyxDQUFDLENBQUM7WUFDdEQsS0FBSyx1QkFBWSxDQUFDLE1BQU07Z0JBQ3RCLE9BQU8sRUFBRSxDQUFDLFdBQVcsQ0FBQyxFQUFFLENBQUMsVUFBVSxDQUFDLGFBQWEsQ0FBQyxDQUFDO1NBQ3REO1FBQ0QsT0FBTyxZQUFLLENBQUMsNEJBQTRCLENBQUMsQ0FBQztJQUM3QyxDQUFDO0lBRUQsU0FBUyxrQkFBa0IsQ0FBQyxTQUE4QjtRQUN4RCxPQUFPLFNBQVMsSUFBSSxJQUFJLENBQUMsQ0FBQyxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUMsU0FBVSxDQUFDLEdBQUcsQ0FBQyxvQkFBb0IsQ0FBQyxDQUFDO0lBQzlFLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtBc3NlcnROb3ROdWxsLCBCaW5hcnlPcGVyYXRvciwgQmluYXJ5T3BlcmF0b3JFeHByLCBCdWlsdGluTWV0aG9kLCBCdWlsdGluVmFyLCBDYXN0RXhwciwgQ2xhc3NTdG10LCBDb21tYUV4cHIsIENvbW1lbnRTdG10LCBDb25kaXRpb25hbEV4cHIsIERlY2xhcmVGdW5jdGlvblN0bXQsIERlY2xhcmVWYXJTdG10LCBFeHByZXNzaW9uU3RhdGVtZW50LCBFeHByZXNzaW9uVmlzaXRvciwgRXh0ZXJuYWxFeHByLCBFeHRlcm5hbFJlZmVyZW5jZSwgRnVuY3Rpb25FeHByLCBJZlN0bXQsIEluc3RhbnRpYXRlRXhwciwgSW52b2tlRnVuY3Rpb25FeHByLCBJbnZva2VNZXRob2RFeHByLCBKU0RvY0NvbW1lbnRTdG10LCBMaXRlcmFsQXJyYXlFeHByLCBMaXRlcmFsRXhwciwgTGl0ZXJhbE1hcEV4cHIsIE5vdEV4cHIsIFBhcnNlU291cmNlRmlsZSwgUGFyc2VTb3VyY2VTcGFuLCBQYXJ0aWFsTW9kdWxlLCBSZWFkS2V5RXhwciwgUmVhZFByb3BFeHByLCBSZWFkVmFyRXhwciwgUmV0dXJuU3RhdGVtZW50LCBTdGF0ZW1lbnQsIFN0YXRlbWVudFZpc2l0b3IsIFN0bXRNb2RpZmllciwgVGhyb3dTdG10LCBUcnlDYXRjaFN0bXQsIFR5cGVvZkV4cHIsIFdyYXBwZWROb2RlRXhwciwgV3JpdGVLZXlFeHByLCBXcml0ZVByb3BFeHByLCBXcml0ZVZhckV4cHJ9IGZyb20gJ0Bhbmd1bGFyL2NvbXBpbGVyJztcbmltcG9ydCB7TG9jYWxpemVkU3RyaW5nfSBmcm9tICdAYW5ndWxhci9jb21waWxlci9zcmMvb3V0cHV0L291dHB1dF9hc3QnO1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7ZXJyb3J9IGZyb20gJy4vdXRpbCc7XG5cbmV4cG9ydCBpbnRlcmZhY2UgTm9kZSB7XG4gIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbnxudWxsO1xufVxuXG5jb25zdCBNRVRIT0RfVEhJU19OQU1FID0gJ3RoaXMnO1xuY29uc3QgQ0FUQ0hfRVJST1JfTkFNRSA9ICdlcnJvcic7XG5jb25zdCBDQVRDSF9TVEFDS19OQU1FID0gJ3N0YWNrJztcbmNvbnN0IF9WQUxJRF9JREVOVElGSUVSX1JFID0gL15bJEEtWl9dWzAtOUEtWl8kXSokL2k7XG5cbmV4cG9ydCBjbGFzcyBUeXBlU2NyaXB0Tm9kZUVtaXR0ZXIge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyOiBib29sZWFuKSB7fVxuXG4gIHVwZGF0ZVNvdXJjZUZpbGUoc291cmNlRmlsZTogdHMuU291cmNlRmlsZSwgc3RtdHM6IFN0YXRlbWVudFtdLCBwcmVhbWJsZT86IHN0cmluZyk6XG4gICAgICBbdHMuU291cmNlRmlsZSwgTWFwPHRzLk5vZGUsIE5vZGU+XSB7XG4gICAgY29uc3QgY29udmVydGVyID0gbmV3IE5vZGVFbWl0dGVyVmlzaXRvcih0aGlzLmFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyKTtcbiAgICAvLyBbXS5jb25jYXQgZmxhdHRlbnMgdGhlIHJlc3VsdCBzbyB0aGF0IGVhY2ggYHZpc2l0Li4uYCBtZXRob2QgY2FuIGFsc28gcmV0dXJuIGFuIGFycmF5IG9mXG4gICAgLy8gc3RtdHMuXG4gICAgY29uc3Qgc3RhdGVtZW50czogYW55W10gPSBbXS5jb25jYXQoXG4gICAgICAgIC4uLnN0bXRzLm1hcChzdG10ID0+IHN0bXQudmlzaXRTdGF0ZW1lbnQoY29udmVydGVyLCBudWxsKSkuZmlsdGVyKHN0bXQgPT4gc3RtdCAhPSBudWxsKSk7XG4gICAgY29uc3QgcHJlYW1ibGVTdG10czogdHMuU3RhdGVtZW50W10gPSBbXTtcbiAgICBpZiAocHJlYW1ibGUpIHtcbiAgICAgIGNvbnN0IGNvbW1lbnRTdG10ID0gdGhpcy5jcmVhdGVDb21tZW50U3RhdGVtZW50KHNvdXJjZUZpbGUsIHByZWFtYmxlKTtcbiAgICAgIHByZWFtYmxlU3RtdHMucHVzaChjb21tZW50U3RtdCk7XG4gICAgfVxuICAgIGNvbnN0IHNvdXJjZVN0YXRlbWVudHMgPVxuICAgICAgICBbLi4ucHJlYW1ibGVTdG10cywgLi4uY29udmVydGVyLmdldFJlZXhwb3J0cygpLCAuLi5jb252ZXJ0ZXIuZ2V0SW1wb3J0cygpLCAuLi5zdGF0ZW1lbnRzXTtcbiAgICBjb252ZXJ0ZXIudXBkYXRlU291cmNlTWFwKHNvdXJjZVN0YXRlbWVudHMpO1xuICAgIGNvbnN0IG5ld1NvdXJjZUZpbGUgPSB0cy51cGRhdGVTb3VyY2VGaWxlTm9kZShzb3VyY2VGaWxlLCBzb3VyY2VTdGF0ZW1lbnRzKTtcbiAgICByZXR1cm4gW25ld1NvdXJjZUZpbGUsIGNvbnZlcnRlci5nZXROb2RlTWFwKCldO1xuICB9XG5cbiAgLyoqIENyZWF0ZXMgYSBub3QgZW1pdHRlZCBzdGF0ZW1lbnQgY29udGFpbmluZyB0aGUgZ2l2ZW4gY29tbWVudC4gKi9cbiAgY3JlYXRlQ29tbWVudFN0YXRlbWVudChzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlLCBjb21tZW50OiBzdHJpbmcpOiB0cy5TdGF0ZW1lbnQge1xuICAgIGlmIChjb21tZW50LnN0YXJ0c1dpdGgoJy8qJykgJiYgY29tbWVudC5lbmRzV2l0aCgnKi8nKSkge1xuICAgICAgY29tbWVudCA9IGNvbW1lbnQuc3Vic3RyKDIsIGNvbW1lbnQubGVuZ3RoIC0gNCk7XG4gICAgfVxuICAgIGNvbnN0IGNvbW1lbnRTdG10ID0gdHMuY3JlYXRlTm90RW1pdHRlZFN0YXRlbWVudChzb3VyY2VGaWxlKTtcbiAgICB0cy5zZXRTeW50aGV0aWNMZWFkaW5nQ29tbWVudHMoXG4gICAgICAgIGNvbW1lbnRTdG10LFxuICAgICAgICBbe2tpbmQ6IHRzLlN5bnRheEtpbmQuTXVsdGlMaW5lQ29tbWVudFRyaXZpYSwgdGV4dDogY29tbWVudCwgcG9zOiAtMSwgZW5kOiAtMX1dKTtcbiAgICB0cy5zZXRFbWl0RmxhZ3MoY29tbWVudFN0bXQsIHRzLkVtaXRGbGFncy5DdXN0b21Qcm9sb2d1ZSk7XG4gICAgcmV0dXJuIGNvbW1lbnRTdG10O1xuICB9XG59XG5cbi8qKlxuICogVXBkYXRlIHRoZSBnaXZlbiBzb3VyY2UgZmlsZSB0byBpbmNsdWRlIHRoZSBjaGFuZ2VzIHNwZWNpZmllZCBpbiBtb2R1bGUuXG4gKlxuICogVGhlIG1vZHVsZSBwYXJhbWV0ZXIgaXMgdHJlYXRlZCBhcyBhIHBhcnRpYWwgbW9kdWxlIG1lYW5pbmcgdGhhdCB0aGUgc3RhdGVtZW50cyBhcmUgYWRkZWQgdG9cbiAqIHRoZSBtb2R1bGUgaW5zdGVhZCBvZiByZXBsYWNpbmcgdGhlIG1vZHVsZS4gQWxzbywgYW55IGNsYXNzZXMgYXJlIHRyZWF0ZWQgYXMgcGFydGlhbCBjbGFzc2VzXG4gKiBhbmQgdGhlIGluY2x1ZGVkIG1lbWJlcnMgYXJlIGFkZGVkIHRvIHRoZSBjbGFzcyB3aXRoIHRoZSBzYW1lIG5hbWUgaW5zdGVhZCBvZiBhIG5ldyBjbGFzc1xuICogYmVpbmcgY3JlYXRlZC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHVwZGF0ZVNvdXJjZUZpbGUoXG4gICAgc291cmNlRmlsZTogdHMuU291cmNlRmlsZSwgbW9kdWxlOiBQYXJ0aWFsTW9kdWxlLFxuICAgIGFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyOiBib29sZWFuKTogW3RzLlNvdXJjZUZpbGUsIE1hcDx0cy5Ob2RlLCBOb2RlPl0ge1xuICBjb25zdCBjb252ZXJ0ZXIgPSBuZXcgTm9kZUVtaXR0ZXJWaXNpdG9yKGFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyKTtcbiAgY29udmVydGVyLmxvYWRFeHBvcnRlZFZhcmlhYmxlSWRlbnRpZmllcnMoc291cmNlRmlsZSk7XG5cbiAgY29uc3QgcHJlZml4U3RhdGVtZW50cyA9IG1vZHVsZS5zdGF0ZW1lbnRzLmZpbHRlcihzdGF0ZW1lbnQgPT4gIShzdGF0ZW1lbnQgaW5zdGFuY2VvZiBDbGFzc1N0bXQpKTtcbiAgY29uc3QgY2xhc3NlcyA9XG4gICAgICBtb2R1bGUuc3RhdGVtZW50cy5maWx0ZXIoc3RhdGVtZW50ID0+IHN0YXRlbWVudCBpbnN0YW5jZW9mIENsYXNzU3RtdCkgYXMgQ2xhc3NTdG10W107XG4gIGNvbnN0IGNsYXNzTWFwID0gbmV3IE1hcChcbiAgICAgIGNsYXNzZXMubWFwPFtzdHJpbmcsIENsYXNzU3RtdF0+KGNsYXNzU3RhdGVtZW50ID0+IFtjbGFzc1N0YXRlbWVudC5uYW1lLCBjbGFzc1N0YXRlbWVudF0pKTtcbiAgY29uc3QgY2xhc3NOYW1lcyA9IG5ldyBTZXQoY2xhc3Nlcy5tYXAoY2xhc3NTdGF0ZW1lbnQgPT4gY2xhc3NTdGF0ZW1lbnQubmFtZSkpO1xuXG4gIGNvbnN0IHByZWZpeDogdHMuU3RhdGVtZW50W10gPVxuICAgICAgcHJlZml4U3RhdGVtZW50cy5tYXAoc3RhdGVtZW50ID0+IHN0YXRlbWVudC52aXNpdFN0YXRlbWVudChjb252ZXJ0ZXIsIHNvdXJjZUZpbGUpKTtcblxuICAvLyBBZGQgc3RhdGljIG1ldGhvZHMgdG8gYWxsIHRoZSBjbGFzc2VzIHJlZmVyZW5jZWQgaW4gbW9kdWxlLlxuICBsZXQgbmV3U3RhdGVtZW50cyA9IHNvdXJjZUZpbGUuc3RhdGVtZW50cy5tYXAobm9kZSA9PiB7XG4gICAgaWYgKG5vZGUua2luZCA9PSB0cy5TeW50YXhLaW5kLkNsYXNzRGVjbGFyYXRpb24pIHtcbiAgICAgIGNvbnN0IGNsYXNzRGVjbGFyYXRpb24gPSBub2RlIGFzIHRzLkNsYXNzRGVjbGFyYXRpb247XG4gICAgICBjb25zdCBuYW1lID0gY2xhc3NEZWNsYXJhdGlvbi5uYW1lO1xuICAgICAgaWYgKG5hbWUpIHtcbiAgICAgICAgY29uc3QgY2xhc3NTdGF0ZW1lbnQgPSBjbGFzc01hcC5nZXQobmFtZS50ZXh0KTtcbiAgICAgICAgaWYgKGNsYXNzU3RhdGVtZW50KSB7XG4gICAgICAgICAgY2xhc3NOYW1lcy5kZWxldGUobmFtZS50ZXh0KTtcbiAgICAgICAgICBjb25zdCBjbGFzc01lbWJlckhvbGRlciA9XG4gICAgICAgICAgICAgIGNvbnZlcnRlci52aXNpdERlY2xhcmVDbGFzc1N0bXQoY2xhc3NTdGF0ZW1lbnQpIGFzIHRzLkNsYXNzRGVjbGFyYXRpb247XG4gICAgICAgICAgY29uc3QgbmV3TWV0aG9kcyA9XG4gICAgICAgICAgICAgIGNsYXNzTWVtYmVySG9sZGVyLm1lbWJlcnMuZmlsdGVyKG1lbWJlciA9PiBtZW1iZXIua2luZCAhPT0gdHMuU3ludGF4S2luZC5Db25zdHJ1Y3Rvcik7XG4gICAgICAgICAgY29uc3QgbmV3TWVtYmVycyA9IFsuLi5jbGFzc0RlY2xhcmF0aW9uLm1lbWJlcnMsIC4uLm5ld01ldGhvZHNdO1xuXG4gICAgICAgICAgcmV0dXJuIHRzLnVwZGF0ZUNsYXNzRGVjbGFyYXRpb24oXG4gICAgICAgICAgICAgIGNsYXNzRGVjbGFyYXRpb24sXG4gICAgICAgICAgICAgIC8qIGRlY29yYXRvcnMgKi8gY2xhc3NEZWNsYXJhdGlvbi5kZWNvcmF0b3JzLFxuICAgICAgICAgICAgICAvKiBtb2RpZmllcnMgKi8gY2xhc3NEZWNsYXJhdGlvbi5tb2RpZmllcnMsXG4gICAgICAgICAgICAgIC8qIG5hbWUgKi8gY2xhc3NEZWNsYXJhdGlvbi5uYW1lLFxuICAgICAgICAgICAgICAvKiB0eXBlUGFyYW1ldGVycyAqLyBjbGFzc0RlY2xhcmF0aW9uLnR5cGVQYXJhbWV0ZXJzLFxuICAgICAgICAgICAgICAvKiBoZXJpdGFnZUNsYXVzZXMgKi8gY2xhc3NEZWNsYXJhdGlvbi5oZXJpdGFnZUNsYXVzZXMgfHwgW10sXG4gICAgICAgICAgICAgIC8qIG1lbWJlcnMgKi8gbmV3TWVtYmVycyk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIG5vZGU7XG4gIH0pO1xuXG4gIC8vIFZhbGlkYXRlIHRoYXQgYWxsIHRoZSBjbGFzc2VzIGhhdmUgYmVlbiBnZW5lcmF0ZWRcbiAgY2xhc3NOYW1lcy5zaXplID09IDAgfHxcbiAgICAgIGVycm9yKGAke2NsYXNzTmFtZXMuc2l6ZSA9PSAxID8gJ0NsYXNzJyA6ICdDbGFzc2VzJ30gXCIke1xuICAgICAgICAgIEFycmF5LmZyb20oY2xhc3NOYW1lcy5rZXlzKCkpLmpvaW4oJywgJyl9XCIgbm90IGdlbmVyYXRlZGApO1xuXG4gIC8vIEFkZCBpbXBvcnRzIHRvIHRoZSBtb2R1bGUgcmVxdWlyZWQgYnkgdGhlIG5ldyBtZXRob2RzXG4gIGNvbnN0IGltcG9ydHMgPSBjb252ZXJ0ZXIuZ2V0SW1wb3J0cygpO1xuICBpZiAoaW1wb3J0cyAmJiBpbXBvcnRzLmxlbmd0aCkge1xuICAgIC8vIEZpbmQgd2hlcmUgdGhlIG5ldyBpbXBvcnRzIHNob3VsZCBnb1xuICAgIGNvbnN0IGluZGV4ID0gZmlyc3RBZnRlcihcbiAgICAgICAgbmV3U3RhdGVtZW50cyxcbiAgICAgICAgc3RhdGVtZW50ID0+IHN0YXRlbWVudC5raW5kID09PSB0cy5TeW50YXhLaW5kLkltcG9ydERlY2xhcmF0aW9uIHx8XG4gICAgICAgICAgICBzdGF0ZW1lbnQua2luZCA9PT0gdHMuU3ludGF4S2luZC5JbXBvcnRFcXVhbHNEZWNsYXJhdGlvbik7XG4gICAgbmV3U3RhdGVtZW50cyA9XG4gICAgICAgIFsuLi5uZXdTdGF0ZW1lbnRzLnNsaWNlKDAsIGluZGV4KSwgLi4uaW1wb3J0cywgLi4ucHJlZml4LCAuLi5uZXdTdGF0ZW1lbnRzLnNsaWNlKGluZGV4KV07XG4gIH0gZWxzZSB7XG4gICAgbmV3U3RhdGVtZW50cyA9IFsuLi5wcmVmaXgsIC4uLm5ld1N0YXRlbWVudHNdO1xuICB9XG5cbiAgY29udmVydGVyLnVwZGF0ZVNvdXJjZU1hcChuZXdTdGF0ZW1lbnRzKTtcbiAgY29uc3QgbmV3U291cmNlRmlsZSA9IHRzLnVwZGF0ZVNvdXJjZUZpbGVOb2RlKHNvdXJjZUZpbGUsIG5ld1N0YXRlbWVudHMpO1xuXG4gIHJldHVybiBbbmV3U291cmNlRmlsZSwgY29udmVydGVyLmdldE5vZGVNYXAoKV07XG59XG5cbi8vIFJldHVybiB0aGUgaW5kZXggYWZ0ZXIgdGhlIGZpcnN0IHZhbHVlIGluIGBhYCB0aGF0IGRvZXNuJ3QgbWF0Y2ggdGhlIHByZWRpY2F0ZSBhZnRlciBhIHZhbHVlIHRoYXRcbi8vIGRvZXMgb3IgMCBpZiBubyB2YWx1ZXMgbWF0Y2guXG5mdW5jdGlvbiBmaXJzdEFmdGVyPFQ+KGE6IFRbXSwgcHJlZGljYXRlOiAodmFsdWU6IFQpID0+IGJvb2xlYW4pIHtcbiAgbGV0IGluZGV4ID0gMDtcbiAgY29uc3QgbGVuID0gYS5sZW5ndGg7XG4gIGZvciAoOyBpbmRleCA8IGxlbjsgaW5kZXgrKykge1xuICAgIGNvbnN0IHZhbHVlID0gYVtpbmRleF07XG4gICAgaWYgKHByZWRpY2F0ZSh2YWx1ZSkpIGJyZWFrO1xuICB9XG4gIGlmIChpbmRleCA+PSBsZW4pIHJldHVybiAwO1xuICBmb3IgKDsgaW5kZXggPCBsZW47IGluZGV4KyspIHtcbiAgICBjb25zdCB2YWx1ZSA9IGFbaW5kZXhdO1xuICAgIGlmICghcHJlZGljYXRlKHZhbHVlKSkgYnJlYWs7XG4gIH1cbiAgcmV0dXJuIGluZGV4O1xufVxuXG4vLyBBIHJlY29yZGVkIG5vZGUgaXMgYSBzdWJ0eXBlIG9mIHRoZSBub2RlIHRoYXQgaXMgbWFya2VkIGFzIGJlaW5nIHJlY29yZGVkLiBUaGlzIGlzIHVzZWRcbi8vIHRvIGVuc3VyZSB0aGF0IE5vZGVFbWl0dGVyVmlzaXRvci5yZWNvcmQgaGFzIGJlZW4gY2FsbGVkIG9uIGFsbCBub2RlcyByZXR1cm5lZCBieSB0aGVcbi8vIE5vZGVFbWl0dGVyVmlzaXRvclxuZXhwb3J0IHR5cGUgUmVjb3JkZWROb2RlPFQgZXh0ZW5kcyB0cy5Ob2RlID0gdHMuTm9kZT4gPSAoVCZ7XG4gIF9fcmVjb3JkZWQ6IGFueTtcbn0pfG51bGw7XG5cbmZ1bmN0aW9uIGVzY2FwZUxpdGVyYWwodmFsdWU6IHN0cmluZyk6IHN0cmluZyB7XG4gIHJldHVybiB2YWx1ZS5yZXBsYWNlKC8oXFxcInxcXFxcKS9nLCAnXFxcXCQxJykucmVwbGFjZSgvKFxcbil8KFxccikvZywgZnVuY3Rpb24odiwgbiwgcikge1xuICAgIHJldHVybiBuID8gJ1xcXFxuJyA6ICdcXFxccic7XG4gIH0pO1xufVxuXG5mdW5jdGlvbiBjcmVhdGVMaXRlcmFsKHZhbHVlOiBhbnkpIHtcbiAgaWYgKHZhbHVlID09PSBudWxsKSB7XG4gICAgcmV0dXJuIHRzLmNyZWF0ZU51bGwoKTtcbiAgfSBlbHNlIGlmICh2YWx1ZSA9PT0gdW5kZWZpbmVkKSB7XG4gICAgcmV0dXJuIHRzLmNyZWF0ZUlkZW50aWZpZXIoJ3VuZGVmaW5lZCcpO1xuICB9IGVsc2Uge1xuICAgIGNvbnN0IHJlc3VsdCA9IHRzLmNyZWF0ZUxpdGVyYWwodmFsdWUpO1xuICAgIGlmICh0cy5pc1N0cmluZ0xpdGVyYWwocmVzdWx0KSAmJiByZXN1bHQudGV4dC5pbmRleE9mKCdcXFxcJykgPj0gMCkge1xuICAgICAgLy8gSGFjayB0byBhdm9pZCBwcm9ibGVtcyBjYXVzZSBpbmRpcmVjdGx5IGJ5OlxuICAgICAgLy8gICAgaHR0cHM6Ly9naXRodWIuY29tL01pY3Jvc29mdC9UeXBlU2NyaXB0L2lzc3Vlcy8yMDE5MlxuICAgICAgLy8gVGhpcyBhdm9pZHMgdGhlIHN0cmluZyBlc2NhcGluZyBub3JtYWxseSBwZXJmb3JtZWQgZm9yIGEgc3RyaW5nIHJlbHlpbmcgb24gdGhhdFxuICAgICAgLy8gVHlwZVNjcmlwdCBqdXN0IGVtaXRzIHRoZSB0ZXh0IHJhdyBmb3IgYSBudW1lcmljIGxpdGVyYWwuXG4gICAgICAocmVzdWx0IGFzIGFueSkua2luZCA9IHRzLlN5bnRheEtpbmQuTnVtZXJpY0xpdGVyYWw7XG4gICAgICByZXN1bHQudGV4dCA9IGBcIiR7ZXNjYXBlTGl0ZXJhbChyZXN1bHQudGV4dCl9XCJgO1xuICAgIH1cbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG59XG5cbmZ1bmN0aW9uIGlzRXhwb3J0VHlwZVN0YXRlbWVudChzdGF0ZW1lbnQ6IHRzLlN0YXRlbWVudCk6IGJvb2xlYW4ge1xuICByZXR1cm4gISFzdGF0ZW1lbnQubW9kaWZpZXJzICYmXG4gICAgICBzdGF0ZW1lbnQubW9kaWZpZXJzLnNvbWUobW9kID0+IG1vZC5raW5kID09PSB0cy5TeW50YXhLaW5kLkV4cG9ydEtleXdvcmQpO1xufVxuXG4vKipcbiAqIFZpc2l0cyBhbiBvdXRwdXQgYXN0IGFuZCBwcm9kdWNlcyB0aGUgY29ycmVzcG9uZGluZyBUeXBlU2NyaXB0IHN5bnRoZXRpYyBub2Rlcy5cbiAqL1xuZXhwb3J0IGNsYXNzIE5vZGVFbWl0dGVyVmlzaXRvciBpbXBsZW1lbnRzIFN0YXRlbWVudFZpc2l0b3IsIEV4cHJlc3Npb25WaXNpdG9yIHtcbiAgcHJpdmF0ZSBfbm9kZU1hcCA9IG5ldyBNYXA8dHMuTm9kZSwgTm9kZT4oKTtcbiAgcHJpdmF0ZSBfaW1wb3J0c1dpdGhQcmVmaXhlcyA9IG5ldyBNYXA8c3RyaW5nLCBzdHJpbmc+KCk7XG4gIHByaXZhdGUgX3JlZXhwb3J0cyA9IG5ldyBNYXA8c3RyaW5nLCB7bmFtZTogc3RyaW5nLCBhczogc3RyaW5nfVtdPigpO1xuICBwcml2YXRlIF90ZW1wbGF0ZVNvdXJjZXMgPSBuZXcgTWFwPFBhcnNlU291cmNlRmlsZSwgdHMuU291cmNlTWFwU291cmNlPigpO1xuICBwcml2YXRlIF9leHBvcnRlZFZhcmlhYmxlSWRlbnRpZmllcnMgPSBuZXcgTWFwPHN0cmluZywgdHMuSWRlbnRpZmllcj4oKTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyOiBib29sZWFuKSB7fVxuXG4gIC8qKlxuICAgKiBQcm9jZXNzIHRoZSBzb3VyY2UgZmlsZSBhbmQgY29sbGVjdCBleHBvcnRlZCBpZGVudGlmaWVycyB0aGF0IHJlZmVyIHRvIHZhcmlhYmxlcy5cbiAgICpcbiAgICogT25seSB2YXJpYWJsZXMgYXJlIGNvbGxlY3RlZCBiZWNhdXNlIGV4cG9ydGVkIGNsYXNzZXMgc3RpbGwgZXhpc3QgaW4gdGhlIG1vZHVsZSBzY29wZSBpblxuICAgKiBDb21tb25KUywgd2hlcmVhcyB2YXJpYWJsZXMgaGF2ZSB0aGVpciBkZWNsYXJhdGlvbnMgbW92ZWQgb250byB0aGUgYGV4cG9ydHNgIG9iamVjdCwgYW5kIGFsbFxuICAgKiByZWZlcmVuY2VzIGFyZSB1cGRhdGVkIGFjY29yZGluZ2x5LlxuICAgKi9cbiAgbG9hZEV4cG9ydGVkVmFyaWFibGVJZGVudGlmaWVycyhzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlKTogdm9pZCB7XG4gICAgc291cmNlRmlsZS5zdGF0ZW1lbnRzLmZvckVhY2goc3RhdGVtZW50ID0+IHtcbiAgICAgIGlmICh0cy5pc1ZhcmlhYmxlU3RhdGVtZW50KHN0YXRlbWVudCkgJiYgaXNFeHBvcnRUeXBlU3RhdGVtZW50KHN0YXRlbWVudCkpIHtcbiAgICAgICAgc3RhdGVtZW50LmRlY2xhcmF0aW9uTGlzdC5kZWNsYXJhdGlvbnMuZm9yRWFjaChkZWNsYXJhdGlvbiA9PiB7XG4gICAgICAgICAgaWYgKHRzLmlzSWRlbnRpZmllcihkZWNsYXJhdGlvbi5uYW1lKSkge1xuICAgICAgICAgICAgdGhpcy5fZXhwb3J0ZWRWYXJpYWJsZUlkZW50aWZpZXJzLnNldChkZWNsYXJhdGlvbi5uYW1lLnRleHQsIGRlY2xhcmF0aW9uLm5hbWUpO1xuICAgICAgICAgIH1cbiAgICAgICAgfSk7XG4gICAgICB9XG4gICAgfSk7XG4gIH1cblxuICBnZXRSZWV4cG9ydHMoKTogdHMuU3RhdGVtZW50W10ge1xuICAgIHJldHVybiBBcnJheS5mcm9tKHRoaXMuX3JlZXhwb3J0cy5lbnRyaWVzKCkpXG4gICAgICAgIC5tYXAoXG4gICAgICAgICAgICAoW2V4cG9ydGVkRmlsZVBhdGgsIHJlZXhwb3J0c10pID0+IHRzLmNyZWF0ZUV4cG9ydERlY2xhcmF0aW9uKFxuICAgICAgICAgICAgICAgIC8qIGRlY29yYXRvcnMgKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgICAgIC8qIG1vZGlmaWVycyAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICAgICAgdHMuY3JlYXRlTmFtZWRFeHBvcnRzKFxuICAgICAgICAgICAgICAgICAgICByZWV4cG9ydHMubWFwKCh7bmFtZSwgYXN9KSA9PiB0cy5jcmVhdGVFeHBvcnRTcGVjaWZpZXIobmFtZSwgYXMpKSksXG4gICAgICAgICAgICAgICAgLyogbW9kdWxlU3BlY2lmaWVyICovIGNyZWF0ZUxpdGVyYWwoZXhwb3J0ZWRGaWxlUGF0aCkpKTtcbiAgfVxuXG4gIGdldEltcG9ydHMoKTogdHMuU3RhdGVtZW50W10ge1xuICAgIHJldHVybiBBcnJheS5mcm9tKHRoaXMuX2ltcG9ydHNXaXRoUHJlZml4ZXMuZW50cmllcygpKVxuICAgICAgICAubWFwKFxuICAgICAgICAgICAgKFtuYW1lc3BhY2UsIHByZWZpeF0pID0+IHRzLmNyZWF0ZUltcG9ydERlY2xhcmF0aW9uKFxuICAgICAgICAgICAgICAgIC8qIGRlY29yYXRvcnMgKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgICAgIC8qIG1vZGlmaWVycyAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICAgICAgLyogaW1wb3J0Q2xhdXNlICovXG4gICAgICAgICAgICAgICAgdHMuY3JlYXRlSW1wb3J0Q2xhdXNlKFxuICAgICAgICAgICAgICAgICAgICAvKiBuYW1lICovPHRzLklkZW50aWZpZXI+KHVuZGVmaW5lZCBhcyBhbnkpLFxuICAgICAgICAgICAgICAgICAgICB0cy5jcmVhdGVOYW1lc3BhY2VJbXBvcnQodHMuY3JlYXRlSWRlbnRpZmllcihwcmVmaXgpKSksXG4gICAgICAgICAgICAgICAgLyogbW9kdWxlU3BlY2lmaWVyICovIGNyZWF0ZUxpdGVyYWwobmFtZXNwYWNlKSkpO1xuICB9XG5cbiAgZ2V0Tm9kZU1hcCgpIHtcbiAgICByZXR1cm4gdGhpcy5fbm9kZU1hcDtcbiAgfVxuXG4gIHVwZGF0ZVNvdXJjZU1hcChzdGF0ZW1lbnRzOiB0cy5TdGF0ZW1lbnRbXSkge1xuICAgIGxldCBsYXN0UmFuZ2VTdGFydE5vZGU6IHRzLk5vZGV8dW5kZWZpbmVkID0gdW5kZWZpbmVkO1xuICAgIGxldCBsYXN0UmFuZ2VFbmROb2RlOiB0cy5Ob2RlfHVuZGVmaW5lZCA9IHVuZGVmaW5lZDtcbiAgICBsZXQgbGFzdFJhbmdlOiB0cy5Tb3VyY2VNYXBSYW5nZXx1bmRlZmluZWQgPSB1bmRlZmluZWQ7XG5cbiAgICBjb25zdCByZWNvcmRMYXN0U291cmNlUmFuZ2UgPSAoKSA9PiB7XG4gICAgICBpZiAobGFzdFJhbmdlICYmIGxhc3RSYW5nZVN0YXJ0Tm9kZSAmJiBsYXN0UmFuZ2VFbmROb2RlKSB7XG4gICAgICAgIGlmIChsYXN0UmFuZ2VTdGFydE5vZGUgPT0gbGFzdFJhbmdlRW5kTm9kZSkge1xuICAgICAgICAgIHRzLnNldFNvdXJjZU1hcFJhbmdlKGxhc3RSYW5nZUVuZE5vZGUsIGxhc3RSYW5nZSk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdHMuc2V0U291cmNlTWFwUmFuZ2UobGFzdFJhbmdlU3RhcnROb2RlLCBsYXN0UmFuZ2UpO1xuICAgICAgICAgIC8vIE9ubHkgZW1pdCB0aGUgcG9zIGZvciB0aGUgZmlyc3Qgbm9kZSBlbWl0dGVkIGluIHRoZSByYW5nZS5cbiAgICAgICAgICB0cy5zZXRFbWl0RmxhZ3MobGFzdFJhbmdlU3RhcnROb2RlLCB0cy5FbWl0RmxhZ3MuTm9UcmFpbGluZ1NvdXJjZU1hcCk7XG4gICAgICAgICAgdHMuc2V0U291cmNlTWFwUmFuZ2UobGFzdFJhbmdlRW5kTm9kZSwgbGFzdFJhbmdlKTtcbiAgICAgICAgICAvLyBPbmx5IGVtaXQgZW1pdCBlbmQgZm9yIHRoZSBsYXN0IG5vZGUgZW1pdHRlZCBpbiB0aGUgcmFuZ2UuXG4gICAgICAgICAgdHMuc2V0RW1pdEZsYWdzKGxhc3RSYW5nZUVuZE5vZGUsIHRzLkVtaXRGbGFncy5Ob0xlYWRpbmdTb3VyY2VNYXApO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfTtcblxuICAgIGNvbnN0IHZpc2l0Tm9kZSA9ICh0c05vZGU6IHRzLk5vZGUpID0+IHtcbiAgICAgIGNvbnN0IG5nTm9kZSA9IHRoaXMuX25vZGVNYXAuZ2V0KHRzTm9kZSk7XG4gICAgICBpZiAobmdOb2RlKSB7XG4gICAgICAgIGNvbnN0IHJhbmdlID0gdGhpcy5zb3VyY2VSYW5nZU9mKG5nTm9kZSk7XG4gICAgICAgIGlmIChyYW5nZSkge1xuICAgICAgICAgIGlmICghbGFzdFJhbmdlIHx8IHJhbmdlLnNvdXJjZSAhPSBsYXN0UmFuZ2Uuc291cmNlIHx8IHJhbmdlLnBvcyAhPSBsYXN0UmFuZ2UucG9zIHx8XG4gICAgICAgICAgICAgIHJhbmdlLmVuZCAhPSBsYXN0UmFuZ2UuZW5kKSB7XG4gICAgICAgICAgICByZWNvcmRMYXN0U291cmNlUmFuZ2UoKTtcbiAgICAgICAgICAgIGxhc3RSYW5nZVN0YXJ0Tm9kZSA9IHRzTm9kZTtcbiAgICAgICAgICAgIGxhc3RSYW5nZSA9IHJhbmdlO1xuICAgICAgICAgIH1cbiAgICAgICAgICBsYXN0UmFuZ2VFbmROb2RlID0gdHNOb2RlO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgICB0cy5mb3JFYWNoQ2hpbGQodHNOb2RlLCB2aXNpdE5vZGUpO1xuICAgIH07XG4gICAgc3RhdGVtZW50cy5mb3JFYWNoKHZpc2l0Tm9kZSk7XG4gICAgcmVjb3JkTGFzdFNvdXJjZVJhbmdlKCk7XG4gIH1cblxuICBwcml2YXRlIHJlY29yZDxUIGV4dGVuZHMgdHMuTm9kZT4obmdOb2RlOiBOb2RlLCB0c05vZGU6IFR8bnVsbCk6IFJlY29yZGVkTm9kZTxUPiB7XG4gICAgaWYgKHRzTm9kZSAmJiAhdGhpcy5fbm9kZU1hcC5oYXModHNOb2RlKSkge1xuICAgICAgdGhpcy5fbm9kZU1hcC5zZXQodHNOb2RlLCBuZ05vZGUpO1xuICAgIH1cbiAgICByZXR1cm4gdHNOb2RlIGFzIFJlY29yZGVkTm9kZTxUPjtcbiAgfVxuXG4gIHByaXZhdGUgc291cmNlUmFuZ2VPZihub2RlOiBOb2RlKTogdHMuU291cmNlTWFwUmFuZ2V8bnVsbCB7XG4gICAgaWYgKG5vZGUuc291cmNlU3Bhbikge1xuICAgICAgY29uc3Qgc3BhbiA9IG5vZGUuc291cmNlU3BhbjtcbiAgICAgIGlmIChzcGFuLnN0YXJ0LmZpbGUgPT0gc3Bhbi5lbmQuZmlsZSkge1xuICAgICAgICBjb25zdCBmaWxlID0gc3Bhbi5zdGFydC5maWxlO1xuICAgICAgICBpZiAoZmlsZS51cmwpIHtcbiAgICAgICAgICBsZXQgc291cmNlID0gdGhpcy5fdGVtcGxhdGVTb3VyY2VzLmdldChmaWxlKTtcbiAgICAgICAgICBpZiAoIXNvdXJjZSkge1xuICAgICAgICAgICAgc291cmNlID0gdHMuY3JlYXRlU291cmNlTWFwU291cmNlKGZpbGUudXJsLCBmaWxlLmNvbnRlbnQsIHBvcyA9PiBwb3MpO1xuICAgICAgICAgICAgdGhpcy5fdGVtcGxhdGVTb3VyY2VzLnNldChmaWxlLCBzb3VyY2UpO1xuICAgICAgICAgIH1cbiAgICAgICAgICByZXR1cm4ge3Bvczogc3Bhbi5zdGFydC5vZmZzZXQsIGVuZDogc3Bhbi5lbmQub2Zmc2V0LCBzb3VyY2V9O1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgcHJpdmF0ZSBnZXRNb2RpZmllcnMoc3RtdDogU3RhdGVtZW50KSB7XG4gICAgbGV0IG1vZGlmaWVyczogdHMuTW9kaWZpZXJbXSA9IFtdO1xuICAgIGlmIChzdG10Lmhhc01vZGlmaWVyKFN0bXRNb2RpZmllci5FeHBvcnRlZCkpIHtcbiAgICAgIG1vZGlmaWVycy5wdXNoKHRzLmNyZWF0ZVRva2VuKHRzLlN5bnRheEtpbmQuRXhwb3J0S2V5d29yZCkpO1xuICAgIH1cbiAgICByZXR1cm4gbW9kaWZpZXJzO1xuICB9XG5cbiAgLy8gU3RhdGVtZW50VmlzaXRvclxuICB2aXNpdERlY2xhcmVWYXJTdG10KHN0bXQ6IERlY2xhcmVWYXJTdG10KSB7XG4gICAgaWYgKHN0bXQuaGFzTW9kaWZpZXIoU3RtdE1vZGlmaWVyLkV4cG9ydGVkKSAmJiBzdG10LnZhbHVlIGluc3RhbmNlb2YgRXh0ZXJuYWxFeHByICYmXG4gICAgICAgICFzdG10LnR5cGUpIHtcbiAgICAgIC8vIGNoZWNrIGZvciBhIHJlZXhwb3J0XG4gICAgICBjb25zdCB7bmFtZSwgbW9kdWxlTmFtZX0gPSBzdG10LnZhbHVlLnZhbHVlO1xuICAgICAgaWYgKG1vZHVsZU5hbWUpIHtcbiAgICAgICAgbGV0IHJlZXhwb3J0cyA9IHRoaXMuX3JlZXhwb3J0cy5nZXQobW9kdWxlTmFtZSk7XG4gICAgICAgIGlmICghcmVleHBvcnRzKSB7XG4gICAgICAgICAgcmVleHBvcnRzID0gW107XG4gICAgICAgICAgdGhpcy5fcmVleHBvcnRzLnNldChtb2R1bGVOYW1lLCByZWV4cG9ydHMpO1xuICAgICAgICB9XG4gICAgICAgIHJlZXhwb3J0cy5wdXNoKHtuYW1lOiBuYW1lISwgYXM6IHN0bXQubmFtZX0pO1xuICAgICAgICByZXR1cm4gbnVsbDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICBjb25zdCB2YXJEZWNsTGlzdCA9IHRzLmNyZWF0ZVZhcmlhYmxlRGVjbGFyYXRpb25MaXN0KFt0cy5jcmVhdGVWYXJpYWJsZURlY2xhcmF0aW9uKFxuICAgICAgICB0cy5jcmVhdGVJZGVudGlmaWVyKHN0bXQubmFtZSksXG4gICAgICAgIC8qIHR5cGUgKi8gdW5kZWZpbmVkLFxuICAgICAgICAoc3RtdC52YWx1ZSAmJiBzdG10LnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBudWxsKSkgfHwgdW5kZWZpbmVkKV0pO1xuXG4gICAgaWYgKHN0bXQuaGFzTW9kaWZpZXIoU3RtdE1vZGlmaWVyLkV4cG9ydGVkKSkge1xuICAgICAgLy8gTm90ZTogV2UgbmVlZCB0byBhZGQgYW4gZXhwbGljaXQgdmFyaWFibGUgYW5kIGV4cG9ydCBkZWNsYXJhdGlvbiBzbyB0aGF0XG4gICAgICAvLyB0aGUgdmFyaWFibGUgY2FuIGJlIHJlZmVycmVkIGluIHRoZSBzYW1lIGZpbGUgYXMgd2VsbC5cbiAgICAgIGNvbnN0IHRzVmFyU3RtdCA9XG4gICAgICAgICAgdGhpcy5yZWNvcmQoc3RtdCwgdHMuY3JlYXRlVmFyaWFibGVTdGF0ZW1lbnQoLyogbW9kaWZpZXJzICovW10sIHZhckRlY2xMaXN0KSk7XG4gICAgICBjb25zdCBleHBvcnRTdG10ID0gdGhpcy5yZWNvcmQoXG4gICAgICAgICAgc3RtdCxcbiAgICAgICAgICB0cy5jcmVhdGVFeHBvcnREZWNsYXJhdGlvbihcbiAgICAgICAgICAgICAgLypkZWNvcmF0b3JzKi8gdW5kZWZpbmVkLCAvKm1vZGlmaWVycyovIHVuZGVmaW5lZCxcbiAgICAgICAgICAgICAgdHMuY3JlYXRlTmFtZWRFeHBvcnRzKFt0cy5jcmVhdGVFeHBvcnRTcGVjaWZpZXIoc3RtdC5uYW1lLCBzdG10Lm5hbWUpXSkpKTtcbiAgICAgIHJldHVybiBbdHNWYXJTdG10LCBleHBvcnRTdG10XTtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMucmVjb3JkKHN0bXQsIHRzLmNyZWF0ZVZhcmlhYmxlU3RhdGVtZW50KHRoaXMuZ2V0TW9kaWZpZXJzKHN0bXQpLCB2YXJEZWNsTGlzdCkpO1xuICB9XG5cbiAgdmlzaXREZWNsYXJlRnVuY3Rpb25TdG10KHN0bXQ6IERlY2xhcmVGdW5jdGlvblN0bXQpIHtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoXG4gICAgICAgIHN0bXQsXG4gICAgICAgIHRzLmNyZWF0ZUZ1bmN0aW9uRGVjbGFyYXRpb24oXG4gICAgICAgICAgICAvKiBkZWNvcmF0b3JzICovIHVuZGVmaW5lZCwgdGhpcy5nZXRNb2RpZmllcnMoc3RtdCksXG4gICAgICAgICAgICAvKiBhc3Rlcmlza1Rva2VuICovIHVuZGVmaW5lZCwgc3RtdC5uYW1lLCAvKiB0eXBlUGFyYW1ldGVycyAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICBzdG10LnBhcmFtcy5tYXAoXG4gICAgICAgICAgICAgICAgcCA9PiB0cy5jcmVhdGVQYXJhbWV0ZXIoXG4gICAgICAgICAgICAgICAgICAgIC8qIGRlY29yYXRvcnMgKi8gdW5kZWZpbmVkLCAvKiBtb2RpZmllcnMgKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgICAgICAgICAvKiBkb3REb3REb3RUb2tlbiAqLyB1bmRlZmluZWQsIHAubmFtZSkpLFxuICAgICAgICAgICAgLyogdHlwZSAqLyB1bmRlZmluZWQsIHRoaXMuX3Zpc2l0U3RhdGVtZW50cyhzdG10LnN0YXRlbWVudHMpKSk7XG4gIH1cblxuICB2aXNpdEV4cHJlc3Npb25TdG10KHN0bXQ6IEV4cHJlc3Npb25TdGF0ZW1lbnQpIHtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoc3RtdCwgdHMuY3JlYXRlU3RhdGVtZW50KHN0bXQuZXhwci52aXNpdEV4cHJlc3Npb24odGhpcywgbnVsbCkpKTtcbiAgfVxuXG4gIHZpc2l0UmV0dXJuU3RtdChzdG10OiBSZXR1cm5TdGF0ZW1lbnQpIHtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoXG4gICAgICAgIHN0bXQsIHRzLmNyZWF0ZVJldHVybihzdG10LnZhbHVlID8gc3RtdC52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgbnVsbCkgOiB1bmRlZmluZWQpKTtcbiAgfVxuXG4gIHZpc2l0RGVjbGFyZUNsYXNzU3RtdChzdG10OiBDbGFzc1N0bXQpIHtcbiAgICBjb25zdCBtb2RpZmllcnMgPSB0aGlzLmdldE1vZGlmaWVycyhzdG10KTtcbiAgICBjb25zdCBmaWVsZHMgPSBzdG10LmZpZWxkcy5tYXAoZmllbGQgPT4ge1xuICAgICAgY29uc3QgcHJvcGVydHkgPSB0cy5jcmVhdGVQcm9wZXJ0eShcbiAgICAgICAgICAvKiBkZWNvcmF0b3JzICovIHVuZGVmaW5lZCwgLyogbW9kaWZpZXJzICovIHRyYW5zbGF0ZU1vZGlmaWVycyhmaWVsZC5tb2RpZmllcnMpLFxuICAgICAgICAgIGZpZWxkLm5hbWUsXG4gICAgICAgICAgLyogcXVlc3Rpb25Ub2tlbiAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgLyogdHlwZSAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgZmllbGQuaW5pdGlhbGl6ZXIgPT0gbnVsbCA/IHRzLmNyZWF0ZU51bGwoKSA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZpZWxkLmluaXRpYWxpemVyLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBudWxsKSk7XG5cbiAgICAgIGlmICh0aGlzLmFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyKSB7XG4gICAgICAgIC8vIENsb3N1cmUgY29tcGlsZXIgdHJhbnNmb3JtcyB0aGUgZm9ybSBgU2VydmljZS7JtXByb3YgPSBYYCBpbnRvIGBTZXJ2aWNlJMm1cHJvdiA9IFhgLiBUb1xuICAgICAgICAvLyBwcmV2ZW50IHRoaXMgdHJhbnNmb3JtYXRpb24sIHN1Y2ggYXNzaWdubWVudHMgbmVlZCB0byBiZSBhbm5vdGF0ZWQgd2l0aCBAbm9jb2xsYXBzZS5cbiAgICAgICAgLy8gTm90ZSB0aGF0IHRzaWNrbGUgaXMgdHlwaWNhbGx5IHJlc3BvbnNpYmxlIGZvciBhZGRpbmcgc3VjaCBhbm5vdGF0aW9ucywgaG93ZXZlciBpdFxuICAgICAgICAvLyBkb2Vzbid0IHlldCBoYW5kbGUgc3ludGhldGljIGZpZWxkcyBhZGRlZCBkdXJpbmcgb3RoZXIgdHJhbnNmb3JtYXRpb25zLlxuICAgICAgICB0cy5hZGRTeW50aGV0aWNMZWFkaW5nQ29tbWVudChcbiAgICAgICAgICAgIHByb3BlcnR5LCB0cy5TeW50YXhLaW5kLk11bHRpTGluZUNvbW1lbnRUcml2aWEsICcqIEBub2NvbGxhcHNlICcsXG4gICAgICAgICAgICAvKiBoYXNUcmFpbGluZ05ld0xpbmUgKi8gZmFsc2UpO1xuICAgICAgfVxuXG4gICAgICByZXR1cm4gcHJvcGVydHk7XG4gICAgfSk7XG4gICAgY29uc3QgZ2V0dGVycyA9IHN0bXQuZ2V0dGVycy5tYXAoXG4gICAgICAgIGdldHRlciA9PiB0cy5jcmVhdGVHZXRBY2Nlc3NvcihcbiAgICAgICAgICAgIC8qIGRlY29yYXRvcnMgKi8gdW5kZWZpbmVkLCAvKiBtb2RpZmllcnMgKi8gdW5kZWZpbmVkLCBnZXR0ZXIubmFtZSwgLyogcGFyYW1ldGVycyAqL1tdLFxuICAgICAgICAgICAgLyogdHlwZSAqLyB1bmRlZmluZWQsIHRoaXMuX3Zpc2l0U3RhdGVtZW50cyhnZXR0ZXIuYm9keSkpKTtcblxuICAgIGNvbnN0IGNvbnN0cnVjdG9yID1cbiAgICAgICAgKHN0bXQuY29uc3RydWN0b3JNZXRob2QgJiYgW3RzLmNyZWF0ZUNvbnN0cnVjdG9yKFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogZGVjb3JhdG9ycyAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvKiBtb2RpZmllcnMgKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogcGFyYW1ldGVycyAqL1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RtdC5jb25zdHJ1Y3Rvck1ldGhvZC5wYXJhbXMubWFwKFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHAgPT4gdHMuY3JlYXRlUGFyYW1ldGVyKFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvKiBkZWNvcmF0b3JzICovIHVuZGVmaW5lZCxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogbW9kaWZpZXJzICovIHVuZGVmaW5lZCxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogZG90RG90RG90VG9rZW4gKi8gdW5kZWZpbmVkLCBwLm5hbWUpKSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRoaXMuX3Zpc2l0U3RhdGVtZW50cyhzdG10LmNvbnN0cnVjdG9yTWV0aG9kLmJvZHkpKV0pIHx8XG4gICAgICAgIFtdO1xuXG4gICAgLy8gVE9ETyB7Y2h1Y2tqfTogRGV0ZXJtaW5lIHdoYXQgc2hvdWxkIGJlIGRvbmUgZm9yIGEgbWV0aG9kIHdpdGggYSBudWxsIG5hbWUuXG4gICAgY29uc3QgbWV0aG9kcyA9IHN0bXQubWV0aG9kcy5maWx0ZXIobWV0aG9kID0+IG1ldGhvZC5uYW1lKVxuICAgICAgICAgICAgICAgICAgICAgICAgLm1hcChcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBtZXRob2QgPT4gdHMuY3JlYXRlTWV0aG9kKFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvKiBkZWNvcmF0b3JzICovIHVuZGVmaW5lZCxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogbW9kaWZpZXJzICovIHRyYW5zbGF0ZU1vZGlmaWVycyhtZXRob2QubW9kaWZpZXJzKSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogYXN0cmlza1Rva2VuICovIHVuZGVmaW5lZCwgbWV0aG9kLm5hbWUhLyogZ3VhcmRlZCBieSBmaWx0ZXIgKi8sXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8qIHF1ZXN0aW9uVG9rZW4gKi8gdW5kZWZpbmVkLCAvKiB0eXBlUGFyYW1ldGVycyAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1ldGhvZC5wYXJhbXMubWFwKFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcCA9PiB0cy5jcmVhdGVQYXJhbWV0ZXIoXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogZGVjb3JhdG9ycyAqLyB1bmRlZmluZWQsIC8qIG1vZGlmaWVycyAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogZG90RG90RG90VG9rZW4gKi8gdW5kZWZpbmVkLCBwLm5hbWUpKSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogdHlwZSAqLyB1bmRlZmluZWQsIHRoaXMuX3Zpc2l0U3RhdGVtZW50cyhtZXRob2QuYm9keSkpKTtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoXG4gICAgICAgIHN0bXQsXG4gICAgICAgIHRzLmNyZWF0ZUNsYXNzRGVjbGFyYXRpb24oXG4gICAgICAgICAgICAvKiBkZWNvcmF0b3JzICovIHVuZGVmaW5lZCwgbW9kaWZpZXJzLCBzdG10Lm5hbWUsIC8qIHR5cGVQYXJhbWV0ZXJzKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgc3RtdC5wYXJlbnQgJiZcbiAgICAgICAgICAgICAgICAgICAgW3RzLmNyZWF0ZUhlcml0YWdlQ2xhdXNlKFxuICAgICAgICAgICAgICAgICAgICAgICAgdHMuU3ludGF4S2luZC5FeHRlbmRzS2V5d29yZCwgW3N0bXQucGFyZW50LnZpc2l0RXhwcmVzc2lvbih0aGlzLCBudWxsKV0pXSB8fFxuICAgICAgICAgICAgICAgIFtdLFxuICAgICAgICAgICAgWy4uLmZpZWxkcywgLi4uZ2V0dGVycywgLi4uY29uc3RydWN0b3IsIC4uLm1ldGhvZHNdKSk7XG4gIH1cblxuICB2aXNpdElmU3RtdChzdG10OiBJZlN0bXQpIHtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoXG4gICAgICAgIHN0bXQsXG4gICAgICAgIHRzLmNyZWF0ZUlmKFxuICAgICAgICAgICAgc3RtdC5jb25kaXRpb24udmlzaXRFeHByZXNzaW9uKHRoaXMsIG51bGwpLCB0aGlzLl92aXNpdFN0YXRlbWVudHMoc3RtdC50cnVlQ2FzZSksXG4gICAgICAgICAgICBzdG10LmZhbHNlQ2FzZSAmJiBzdG10LmZhbHNlQ2FzZS5sZW5ndGggJiYgdGhpcy5fdmlzaXRTdGF0ZW1lbnRzKHN0bXQuZmFsc2VDYXNlKSB8fFxuICAgICAgICAgICAgICAgIHVuZGVmaW5lZCkpO1xuICB9XG5cbiAgdmlzaXRUcnlDYXRjaFN0bXQoc3RtdDogVHJ5Q2F0Y2hTdG10KTogUmVjb3JkZWROb2RlPHRzLlRyeVN0YXRlbWVudD4ge1xuICAgIHJldHVybiB0aGlzLnJlY29yZChcbiAgICAgICAgc3RtdCxcbiAgICAgICAgdHMuY3JlYXRlVHJ5KFxuICAgICAgICAgICAgdGhpcy5fdmlzaXRTdGF0ZW1lbnRzKHN0bXQuYm9keVN0bXRzKSxcbiAgICAgICAgICAgIHRzLmNyZWF0ZUNhdGNoQ2xhdXNlKFxuICAgICAgICAgICAgICAgIENBVENIX0VSUk9SX05BTUUsXG4gICAgICAgICAgICAgICAgdGhpcy5fdmlzaXRTdGF0ZW1lbnRzUHJlZml4KFxuICAgICAgICAgICAgICAgICAgICBbdHMuY3JlYXRlVmFyaWFibGVTdGF0ZW1lbnQoXG4gICAgICAgICAgICAgICAgICAgICAgICAvKiBtb2RpZmllcnMgKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgICAgICAgICAgICAgW3RzLmNyZWF0ZVZhcmlhYmxlRGVjbGFyYXRpb24oXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgQ0FUQ0hfU1RBQ0tfTkFNRSwgLyogdHlwZSAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgdHMuY3JlYXRlUHJvcGVydHlBY2Nlc3MoXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRzLmNyZWF0ZUlkZW50aWZpZXIoQ0FUQ0hfRVJST1JfTkFNRSksXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRzLmNyZWF0ZUlkZW50aWZpZXIoQ0FUQ0hfU1RBQ0tfTkFNRSkpKV0pXSxcbiAgICAgICAgICAgICAgICAgICAgc3RtdC5jYXRjaFN0bXRzKSksXG4gICAgICAgICAgICAvKiBmaW5hbGx5QmxvY2sgKi8gdW5kZWZpbmVkKSk7XG4gIH1cblxuICB2aXNpdFRocm93U3RtdChzdG10OiBUaHJvd1N0bXQpIHtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoc3RtdCwgdHMuY3JlYXRlVGhyb3coc3RtdC5lcnJvci52aXNpdEV4cHJlc3Npb24odGhpcywgbnVsbCkpKTtcbiAgfVxuXG4gIHZpc2l0Q29tbWVudFN0bXQoc3RtdDogQ29tbWVudFN0bXQsIHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUpIHtcbiAgICBjb25zdCB0ZXh0ID0gc3RtdC5tdWx0aWxpbmUgPyBgICR7c3RtdC5jb21tZW50fSBgIDogYCAke3N0bXQuY29tbWVudH1gO1xuICAgIHJldHVybiB0aGlzLmNyZWF0ZUNvbW1lbnRTdG10KHRleHQsIHN0bXQubXVsdGlsaW5lLCBzb3VyY2VGaWxlKTtcbiAgfVxuXG4gIHZpc2l0SlNEb2NDb21tZW50U3RtdChzdG10OiBKU0RvY0NvbW1lbnRTdG10LCBzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlKSB7XG4gICAgcmV0dXJuIHRoaXMuY3JlYXRlQ29tbWVudFN0bXQoc3RtdC50b1N0cmluZygpLCB0cnVlLCBzb3VyY2VGaWxlKTtcbiAgfVxuXG4gIHByaXZhdGUgY3JlYXRlQ29tbWVudFN0bXQodGV4dDogc3RyaW5nLCBtdWx0aWxpbmU6IGJvb2xlYW4sIHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUpOlxuICAgICAgdHMuTm90RW1pdHRlZFN0YXRlbWVudCB7XG4gICAgY29uc3QgY29tbWVudFN0bXQgPSB0cy5jcmVhdGVOb3RFbWl0dGVkU3RhdGVtZW50KHNvdXJjZUZpbGUpO1xuICAgIGNvbnN0IGtpbmQgPVxuICAgICAgICBtdWx0aWxpbmUgPyB0cy5TeW50YXhLaW5kLk11bHRpTGluZUNvbW1lbnRUcml2aWEgOiB0cy5TeW50YXhLaW5kLlNpbmdsZUxpbmVDb21tZW50VHJpdmlhO1xuICAgIHRzLnNldFN5bnRoZXRpY0xlYWRpbmdDb21tZW50cyhjb21tZW50U3RtdCwgW3traW5kLCB0ZXh0LCBwb3M6IC0xLCBlbmQ6IC0xfV0pO1xuICAgIHJldHVybiBjb21tZW50U3RtdDtcbiAgfVxuXG4gIC8vIEV4cHJlc3Npb25WaXNpdG9yXG4gIHZpc2l0V3JhcHBlZE5vZGVFeHByKGV4cHI6IFdyYXBwZWROb2RlRXhwcjxhbnk+KSB7XG4gICAgcmV0dXJuIHRoaXMucmVjb3JkKGV4cHIsIGV4cHIubm9kZSk7XG4gIH1cblxuICB2aXNpdFR5cGVvZkV4cHIoZXhwcjogVHlwZW9mRXhwcikge1xuICAgIGNvbnN0IHR5cGVPZiA9IHRzLmNyZWF0ZVR5cGVPZihleHByLmV4cHIudmlzaXRFeHByZXNzaW9uKHRoaXMsIG51bGwpKTtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoZXhwciwgdHlwZU9mKTtcbiAgfVxuXG4gIC8vIEV4cHJlc3Npb25WaXNpdG9yXG4gIHZpc2l0UmVhZFZhckV4cHIoZXhwcjogUmVhZFZhckV4cHIpIHtcbiAgICBzd2l0Y2ggKGV4cHIuYnVpbHRpbikge1xuICAgICAgY2FzZSBCdWlsdGluVmFyLlRoaXM6XG4gICAgICAgIHJldHVybiB0aGlzLnJlY29yZChleHByLCB0cy5jcmVhdGVJZGVudGlmaWVyKE1FVEhPRF9USElTX05BTUUpKTtcbiAgICAgIGNhc2UgQnVpbHRpblZhci5DYXRjaEVycm9yOlxuICAgICAgICByZXR1cm4gdGhpcy5yZWNvcmQoZXhwciwgdHMuY3JlYXRlSWRlbnRpZmllcihDQVRDSF9FUlJPUl9OQU1FKSk7XG4gICAgICBjYXNlIEJ1aWx0aW5WYXIuQ2F0Y2hTdGFjazpcbiAgICAgICAgcmV0dXJuIHRoaXMucmVjb3JkKGV4cHIsIHRzLmNyZWF0ZUlkZW50aWZpZXIoQ0FUQ0hfU1RBQ0tfTkFNRSkpO1xuICAgICAgY2FzZSBCdWlsdGluVmFyLlN1cGVyOlxuICAgICAgICByZXR1cm4gdGhpcy5yZWNvcmQoZXhwciwgdHMuY3JlYXRlU3VwZXIoKSk7XG4gICAgfVxuICAgIGlmIChleHByLm5hbWUpIHtcbiAgICAgIHJldHVybiB0aGlzLnJlY29yZChleHByLCB0cy5jcmVhdGVJZGVudGlmaWVyKGV4cHIubmFtZSkpO1xuICAgIH1cbiAgICB0aHJvdyBFcnJvcihgVW5leHBlY3RlZCBSZWFkVmFyRXhwciBmb3JtYCk7XG4gIH1cblxuICB2aXNpdFdyaXRlVmFyRXhwcihleHByOiBXcml0ZVZhckV4cHIpOiBSZWNvcmRlZE5vZGU8dHMuQmluYXJ5RXhwcmVzc2lvbj4ge1xuICAgIHJldHVybiB0aGlzLnJlY29yZChcbiAgICAgICAgZXhwcixcbiAgICAgICAgdHMuY3JlYXRlQXNzaWdubWVudChcbiAgICAgICAgICAgIHRzLmNyZWF0ZUlkZW50aWZpZXIoZXhwci5uYW1lKSwgZXhwci52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgbnVsbCkpKTtcbiAgfVxuXG4gIHZpc2l0V3JpdGVLZXlFeHByKGV4cHI6IFdyaXRlS2V5RXhwcik6IFJlY29yZGVkTm9kZTx0cy5CaW5hcnlFeHByZXNzaW9uPiB7XG4gICAgcmV0dXJuIHRoaXMucmVjb3JkKFxuICAgICAgICBleHByLFxuICAgICAgICB0cy5jcmVhdGVBc3NpZ25tZW50KFxuICAgICAgICAgICAgdHMuY3JlYXRlRWxlbWVudEFjY2VzcyhcbiAgICAgICAgICAgICAgICBleHByLnJlY2VpdmVyLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBudWxsKSwgZXhwci5pbmRleC52aXNpdEV4cHJlc3Npb24odGhpcywgbnVsbCkpLFxuICAgICAgICAgICAgZXhwci52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgbnVsbCkpKTtcbiAgfVxuXG4gIHZpc2l0V3JpdGVQcm9wRXhwcihleHByOiBXcml0ZVByb3BFeHByKTogUmVjb3JkZWROb2RlPHRzLkJpbmFyeUV4cHJlc3Npb24+IHtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoXG4gICAgICAgIGV4cHIsXG4gICAgICAgIHRzLmNyZWF0ZUFzc2lnbm1lbnQoXG4gICAgICAgICAgICB0cy5jcmVhdGVQcm9wZXJ0eUFjY2VzcyhleHByLnJlY2VpdmVyLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBudWxsKSwgZXhwci5uYW1lKSxcbiAgICAgICAgICAgIGV4cHIudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIG51bGwpKSk7XG4gIH1cblxuICB2aXNpdEludm9rZU1ldGhvZEV4cHIoZXhwcjogSW52b2tlTWV0aG9kRXhwcik6IFJlY29yZGVkTm9kZTx0cy5DYWxsRXhwcmVzc2lvbj4ge1xuICAgIGNvbnN0IG1ldGhvZE5hbWUgPSBnZXRNZXRob2ROYW1lKGV4cHIpO1xuICAgIHJldHVybiB0aGlzLnJlY29yZChcbiAgICAgICAgZXhwcixcbiAgICAgICAgdHMuY3JlYXRlQ2FsbChcbiAgICAgICAgICAgIHRzLmNyZWF0ZVByb3BlcnR5QWNjZXNzKGV4cHIucmVjZWl2ZXIudmlzaXRFeHByZXNzaW9uKHRoaXMsIG51bGwpLCBtZXRob2ROYW1lKSxcbiAgICAgICAgICAgIC8qIHR5cGVBcmd1bWVudHMgKi8gdW5kZWZpbmVkLCBleHByLmFyZ3MubWFwKGFyZyA9PiBhcmcudmlzaXRFeHByZXNzaW9uKHRoaXMsIG51bGwpKSkpO1xuICB9XG5cbiAgdmlzaXRJbnZva2VGdW5jdGlvbkV4cHIoZXhwcjogSW52b2tlRnVuY3Rpb25FeHByKTogUmVjb3JkZWROb2RlPHRzLkNhbGxFeHByZXNzaW9uPiB7XG4gICAgcmV0dXJuIHRoaXMucmVjb3JkKFxuICAgICAgICBleHByLFxuICAgICAgICB0cy5jcmVhdGVDYWxsKFxuICAgICAgICAgICAgZXhwci5mbi52aXNpdEV4cHJlc3Npb24odGhpcywgbnVsbCksIC8qIHR5cGVBcmd1bWVudHMgKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgZXhwci5hcmdzLm1hcChhcmcgPT4gYXJnLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBudWxsKSkpKTtcbiAgfVxuXG4gIHZpc2l0SW5zdGFudGlhdGVFeHByKGV4cHI6IEluc3RhbnRpYXRlRXhwcik6IFJlY29yZGVkTm9kZTx0cy5OZXdFeHByZXNzaW9uPiB7XG4gICAgcmV0dXJuIHRoaXMucmVjb3JkKFxuICAgICAgICBleHByLFxuICAgICAgICB0cy5jcmVhdGVOZXcoXG4gICAgICAgICAgICBleHByLmNsYXNzRXhwci52aXNpdEV4cHJlc3Npb24odGhpcywgbnVsbCksIC8qIHR5cGVBcmd1bWVudHMgKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgZXhwci5hcmdzLm1hcChhcmcgPT4gYXJnLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBudWxsKSkpKTtcbiAgfVxuXG4gIHZpc2l0TGl0ZXJhbEV4cHIoZXhwcjogTGl0ZXJhbEV4cHIpIHtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoZXhwciwgY3JlYXRlTGl0ZXJhbChleHByLnZhbHVlKSk7XG4gIH1cblxuICB2aXNpdExvY2FsaXplZFN0cmluZyhleHByOiBMb2NhbGl6ZWRTdHJpbmcsIGNvbnRleHQ6IGFueSkge1xuICAgIHRocm93IG5ldyBFcnJvcignbG9jYWxpemVkIHN0cmluZ3MgYXJlIG5vdCBzdXBwb3J0ZWQgaW4gcHJlLWl2eSBtb2RlLicpO1xuICB9XG5cbiAgdmlzaXRFeHRlcm5hbEV4cHIoZXhwcjogRXh0ZXJuYWxFeHByKSB7XG4gICAgcmV0dXJuIHRoaXMucmVjb3JkKGV4cHIsIHRoaXMuX3Zpc2l0SWRlbnRpZmllcihleHByLnZhbHVlKSk7XG4gIH1cblxuICB2aXNpdENvbmRpdGlvbmFsRXhwcihleHByOiBDb25kaXRpb25hbEV4cHIpOiBSZWNvcmRlZE5vZGU8dHMuUGFyZW50aGVzaXplZEV4cHJlc3Npb24+IHtcbiAgICAvLyBUT0RPIHtjaHVja2p9OiBSZXZpZXcgdXNlIG9mICEgb24gZmFsc2VDYXNlLiBTaG91bGQgaXQgYmUgbm9uLW51bGxhYmxlP1xuICAgIHJldHVybiB0aGlzLnJlY29yZChcbiAgICAgICAgZXhwcixcbiAgICAgICAgdHMuY3JlYXRlUGFyZW4odHMuY3JlYXRlQ29uZGl0aW9uYWwoXG4gICAgICAgICAgICBleHByLmNvbmRpdGlvbi52aXNpdEV4cHJlc3Npb24odGhpcywgbnVsbCksIGV4cHIudHJ1ZUNhc2UudmlzaXRFeHByZXNzaW9uKHRoaXMsIG51bGwpLFxuICAgICAgICAgICAgZXhwci5mYWxzZUNhc2UhLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBudWxsKSkpKTtcbiAgfVxuXG4gIHZpc2l0Tm90RXhwcihleHByOiBOb3RFeHByKTogUmVjb3JkZWROb2RlPHRzLlByZWZpeFVuYXJ5RXhwcmVzc2lvbj4ge1xuICAgIHJldHVybiB0aGlzLnJlY29yZChcbiAgICAgICAgZXhwcixcbiAgICAgICAgdHMuY3JlYXRlUHJlZml4KFxuICAgICAgICAgICAgdHMuU3ludGF4S2luZC5FeGNsYW1hdGlvblRva2VuLCBleHByLmNvbmRpdGlvbi52aXNpdEV4cHJlc3Npb24odGhpcywgbnVsbCkpKTtcbiAgfVxuXG4gIHZpc2l0QXNzZXJ0Tm90TnVsbEV4cHIoZXhwcjogQXNzZXJ0Tm90TnVsbCk6IFJlY29yZGVkTm9kZTx0cy5FeHByZXNzaW9uPiB7XG4gICAgcmV0dXJuIGV4cHIuY29uZGl0aW9uLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBudWxsKTtcbiAgfVxuXG4gIHZpc2l0Q2FzdEV4cHIoZXhwcjogQ2FzdEV4cHIpOiBSZWNvcmRlZE5vZGU8dHMuRXhwcmVzc2lvbj4ge1xuICAgIHJldHVybiBleHByLnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBudWxsKTtcbiAgfVxuXG4gIHZpc2l0RnVuY3Rpb25FeHByKGV4cHI6IEZ1bmN0aW9uRXhwcikge1xuICAgIHJldHVybiB0aGlzLnJlY29yZChcbiAgICAgICAgZXhwcixcbiAgICAgICAgdHMuY3JlYXRlRnVuY3Rpb25FeHByZXNzaW9uKFxuICAgICAgICAgICAgLyogbW9kaWZpZXJzICovIHVuZGVmaW5lZCwgLyogYXN0cmlza1Rva2VuICovIHVuZGVmaW5lZCxcbiAgICAgICAgICAgIC8qIG5hbWUgKi8gZXhwci5uYW1lIHx8IHVuZGVmaW5lZCxcbiAgICAgICAgICAgIC8qIHR5cGVQYXJhbWV0ZXJzICovIHVuZGVmaW5lZCxcbiAgICAgICAgICAgIGV4cHIucGFyYW1zLm1hcChcbiAgICAgICAgICAgICAgICBwID0+IHRzLmNyZWF0ZVBhcmFtZXRlcihcbiAgICAgICAgICAgICAgICAgICAgLyogZGVjb3JhdG9ycyAqLyB1bmRlZmluZWQsIC8qIG1vZGlmaWVycyAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICAgICAgICAgIC8qIGRvdERvdERvdFRva2VuICovIHVuZGVmaW5lZCwgcC5uYW1lKSksXG4gICAgICAgICAgICAvKiB0eXBlICovIHVuZGVmaW5lZCwgdGhpcy5fdmlzaXRTdGF0ZW1lbnRzKGV4cHIuc3RhdGVtZW50cykpKTtcbiAgfVxuXG4gIHZpc2l0QmluYXJ5T3BlcmF0b3JFeHByKGV4cHI6IEJpbmFyeU9wZXJhdG9yRXhwcik6XG4gICAgICBSZWNvcmRlZE5vZGU8dHMuQmluYXJ5RXhwcmVzc2lvbnx0cy5QYXJlbnRoZXNpemVkRXhwcmVzc2lvbj4ge1xuICAgIGxldCBiaW5hcnlPcGVyYXRvcjogdHMuQmluYXJ5T3BlcmF0b3I7XG4gICAgc3dpdGNoIChleHByLm9wZXJhdG9yKSB7XG4gICAgICBjYXNlIEJpbmFyeU9wZXJhdG9yLkFuZDpcbiAgICAgICAgYmluYXJ5T3BlcmF0b3IgPSB0cy5TeW50YXhLaW5kLkFtcGVyc2FuZEFtcGVyc2FuZFRva2VuO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2UgQmluYXJ5T3BlcmF0b3IuQml0d2lzZUFuZDpcbiAgICAgICAgYmluYXJ5T3BlcmF0b3IgPSB0cy5TeW50YXhLaW5kLkFtcGVyc2FuZFRva2VuO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2UgQmluYXJ5T3BlcmF0b3IuQmlnZ2VyOlxuICAgICAgICBiaW5hcnlPcGVyYXRvciA9IHRzLlN5bnRheEtpbmQuR3JlYXRlclRoYW5Ub2tlbjtcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIEJpbmFyeU9wZXJhdG9yLkJpZ2dlckVxdWFsczpcbiAgICAgICAgYmluYXJ5T3BlcmF0b3IgPSB0cy5TeW50YXhLaW5kLkdyZWF0ZXJUaGFuRXF1YWxzVG9rZW47XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBCaW5hcnlPcGVyYXRvci5EaXZpZGU6XG4gICAgICAgIGJpbmFyeU9wZXJhdG9yID0gdHMuU3ludGF4S2luZC5TbGFzaFRva2VuO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2UgQmluYXJ5T3BlcmF0b3IuRXF1YWxzOlxuICAgICAgICBiaW5hcnlPcGVyYXRvciA9IHRzLlN5bnRheEtpbmQuRXF1YWxzRXF1YWxzVG9rZW47XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBCaW5hcnlPcGVyYXRvci5JZGVudGljYWw6XG4gICAgICAgIGJpbmFyeU9wZXJhdG9yID0gdHMuU3ludGF4S2luZC5FcXVhbHNFcXVhbHNFcXVhbHNUb2tlbjtcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIEJpbmFyeU9wZXJhdG9yLkxvd2VyOlxuICAgICAgICBiaW5hcnlPcGVyYXRvciA9IHRzLlN5bnRheEtpbmQuTGVzc1RoYW5Ub2tlbjtcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIEJpbmFyeU9wZXJhdG9yLkxvd2VyRXF1YWxzOlxuICAgICAgICBiaW5hcnlPcGVyYXRvciA9IHRzLlN5bnRheEtpbmQuTGVzc1RoYW5FcXVhbHNUb2tlbjtcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIEJpbmFyeU9wZXJhdG9yLk1pbnVzOlxuICAgICAgICBiaW5hcnlPcGVyYXRvciA9IHRzLlN5bnRheEtpbmQuTWludXNUb2tlbjtcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIEJpbmFyeU9wZXJhdG9yLk1vZHVsbzpcbiAgICAgICAgYmluYXJ5T3BlcmF0b3IgPSB0cy5TeW50YXhLaW5kLlBlcmNlbnRUb2tlbjtcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIEJpbmFyeU9wZXJhdG9yLk11bHRpcGx5OlxuICAgICAgICBiaW5hcnlPcGVyYXRvciA9IHRzLlN5bnRheEtpbmQuQXN0ZXJpc2tUb2tlbjtcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIEJpbmFyeU9wZXJhdG9yLk5vdEVxdWFsczpcbiAgICAgICAgYmluYXJ5T3BlcmF0b3IgPSB0cy5TeW50YXhLaW5kLkV4Y2xhbWF0aW9uRXF1YWxzVG9rZW47XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBCaW5hcnlPcGVyYXRvci5Ob3RJZGVudGljYWw6XG4gICAgICAgIGJpbmFyeU9wZXJhdG9yID0gdHMuU3ludGF4S2luZC5FeGNsYW1hdGlvbkVxdWFsc0VxdWFsc1Rva2VuO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2UgQmluYXJ5T3BlcmF0b3IuT3I6XG4gICAgICAgIGJpbmFyeU9wZXJhdG9yID0gdHMuU3ludGF4S2luZC5CYXJCYXJUb2tlbjtcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIEJpbmFyeU9wZXJhdG9yLlBsdXM6XG4gICAgICAgIGJpbmFyeU9wZXJhdG9yID0gdHMuU3ludGF4S2luZC5QbHVzVG9rZW47XG4gICAgICAgIGJyZWFrO1xuICAgICAgZGVmYXVsdDpcbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKGBVbmtub3duIG9wZXJhdG9yOiAke2V4cHIub3BlcmF0b3J9YCk7XG4gICAgfVxuICAgIGNvbnN0IGJpbmFyeSA9IHRzLmNyZWF0ZUJpbmFyeShcbiAgICAgICAgZXhwci5saHMudmlzaXRFeHByZXNzaW9uKHRoaXMsIG51bGwpLCBiaW5hcnlPcGVyYXRvciwgZXhwci5yaHMudmlzaXRFeHByZXNzaW9uKHRoaXMsIG51bGwpKTtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoZXhwciwgZXhwci5wYXJlbnMgPyB0cy5jcmVhdGVQYXJlbihiaW5hcnkpIDogYmluYXJ5KTtcbiAgfVxuXG4gIHZpc2l0UmVhZFByb3BFeHByKGV4cHI6IFJlYWRQcm9wRXhwcik6IFJlY29yZGVkTm9kZTx0cy5Qcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24+IHtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoXG4gICAgICAgIGV4cHIsIHRzLmNyZWF0ZVByb3BlcnR5QWNjZXNzKGV4cHIucmVjZWl2ZXIudmlzaXRFeHByZXNzaW9uKHRoaXMsIG51bGwpLCBleHByLm5hbWUpKTtcbiAgfVxuXG4gIHZpc2l0UmVhZEtleUV4cHIoZXhwcjogUmVhZEtleUV4cHIpOiBSZWNvcmRlZE5vZGU8dHMuRWxlbWVudEFjY2Vzc0V4cHJlc3Npb24+IHtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoXG4gICAgICAgIGV4cHIsXG4gICAgICAgIHRzLmNyZWF0ZUVsZW1lbnRBY2Nlc3MoXG4gICAgICAgICAgICBleHByLnJlY2VpdmVyLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBudWxsKSwgZXhwci5pbmRleC52aXNpdEV4cHJlc3Npb24odGhpcywgbnVsbCkpKTtcbiAgfVxuXG4gIHZpc2l0TGl0ZXJhbEFycmF5RXhwcihleHByOiBMaXRlcmFsQXJyYXlFeHByKTogUmVjb3JkZWROb2RlPHRzLkFycmF5TGl0ZXJhbEV4cHJlc3Npb24+IHtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoXG4gICAgICAgIGV4cHIsIHRzLmNyZWF0ZUFycmF5TGl0ZXJhbChleHByLmVudHJpZXMubWFwKGVudHJ5ID0+IGVudHJ5LnZpc2l0RXhwcmVzc2lvbih0aGlzLCBudWxsKSkpKTtcbiAgfVxuXG4gIHZpc2l0TGl0ZXJhbE1hcEV4cHIoZXhwcjogTGl0ZXJhbE1hcEV4cHIpOiBSZWNvcmRlZE5vZGU8dHMuT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24+IHtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoXG4gICAgICAgIGV4cHIsXG4gICAgICAgIHRzLmNyZWF0ZU9iamVjdExpdGVyYWwoZXhwci5lbnRyaWVzLm1hcChcbiAgICAgICAgICAgIGVudHJ5ID0+IHRzLmNyZWF0ZVByb3BlcnR5QXNzaWdubWVudChcbiAgICAgICAgICAgICAgICBlbnRyeS5xdW90ZWQgfHwgIV9WQUxJRF9JREVOVElGSUVSX1JFLnRlc3QoZW50cnkua2V5KSA/XG4gICAgICAgICAgICAgICAgICAgIHRzLmNyZWF0ZUxpdGVyYWwoZW50cnkua2V5KSA6XG4gICAgICAgICAgICAgICAgICAgIGVudHJ5LmtleSxcbiAgICAgICAgICAgICAgICBlbnRyeS52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgbnVsbCkpKSkpO1xuICB9XG5cbiAgdmlzaXRDb21tYUV4cHIoZXhwcjogQ29tbWFFeHByKTogUmVjb3JkZWROb2RlPHRzLkV4cHJlc3Npb24+IHtcbiAgICByZXR1cm4gdGhpcy5yZWNvcmQoXG4gICAgICAgIGV4cHIsXG4gICAgICAgIGV4cHIucGFydHMubWFwKGUgPT4gZS52aXNpdEV4cHJlc3Npb24odGhpcywgbnVsbCkpXG4gICAgICAgICAgICAucmVkdWNlPHRzLkV4cHJlc3Npb258bnVsbD4oXG4gICAgICAgICAgICAgICAgKGxlZnQsIHJpZ2h0KSA9PlxuICAgICAgICAgICAgICAgICAgICBsZWZ0ID8gdHMuY3JlYXRlQmluYXJ5KGxlZnQsIHRzLlN5bnRheEtpbmQuQ29tbWFUb2tlbiwgcmlnaHQpIDogcmlnaHQsXG4gICAgICAgICAgICAgICAgbnVsbCkpO1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXRTdGF0ZW1lbnRzKHN0YXRlbWVudHM6IFN0YXRlbWVudFtdKTogdHMuQmxvY2sge1xuICAgIHJldHVybiB0aGlzLl92aXNpdFN0YXRlbWVudHNQcmVmaXgoW10sIHN0YXRlbWVudHMpO1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXRTdGF0ZW1lbnRzUHJlZml4KHByZWZpeDogdHMuU3RhdGVtZW50W10sIHN0YXRlbWVudHM6IFN0YXRlbWVudFtdKSB7XG4gICAgcmV0dXJuIHRzLmNyZWF0ZUJsb2NrKFtcbiAgICAgIC4uLnByZWZpeCwgLi4uc3RhdGVtZW50cy5tYXAoc3RtdCA9PiBzdG10LnZpc2l0U3RhdGVtZW50KHRoaXMsIG51bGwpKS5maWx0ZXIoZiA9PiBmICE9IG51bGwpXG4gICAgXSk7XG4gIH1cblxuICBwcml2YXRlIF92aXNpdElkZW50aWZpZXIodmFsdWU6IEV4dGVybmFsUmVmZXJlbmNlKTogdHMuRXhwcmVzc2lvbiB7XG4gICAgLy8gbmFtZSBjYW4gb25seSBiZSBudWxsIGR1cmluZyBKSVQgd2hpY2ggbmV2ZXIgZXhlY3V0ZXMgdGhpcyBjb2RlLlxuICAgIGNvbnN0IG1vZHVsZU5hbWUgPSB2YWx1ZS5tb2R1bGVOYW1lLCBuYW1lID0gdmFsdWUubmFtZSE7XG4gICAgbGV0IHByZWZpeElkZW50OiB0cy5JZGVudGlmaWVyfG51bGwgPSBudWxsO1xuICAgIGlmIChtb2R1bGVOYW1lKSB7XG4gICAgICBsZXQgcHJlZml4ID0gdGhpcy5faW1wb3J0c1dpdGhQcmVmaXhlcy5nZXQobW9kdWxlTmFtZSk7XG4gICAgICBpZiAocHJlZml4ID09IG51bGwpIHtcbiAgICAgICAgcHJlZml4ID0gYGkke3RoaXMuX2ltcG9ydHNXaXRoUHJlZml4ZXMuc2l6ZX1gO1xuICAgICAgICB0aGlzLl9pbXBvcnRzV2l0aFByZWZpeGVzLnNldChtb2R1bGVOYW1lLCBwcmVmaXgpO1xuICAgICAgfVxuICAgICAgcHJlZml4SWRlbnQgPSB0cy5jcmVhdGVJZGVudGlmaWVyKHByZWZpeCk7XG4gICAgfVxuICAgIGlmIChwcmVmaXhJZGVudCkge1xuICAgICAgcmV0dXJuIHRzLmNyZWF0ZVByb3BlcnR5QWNjZXNzKHByZWZpeElkZW50LCBuYW1lKTtcbiAgICB9IGVsc2Uge1xuICAgICAgY29uc3QgaWQgPSB0cy5jcmVhdGVJZGVudGlmaWVyKG5hbWUpO1xuICAgICAgaWYgKHRoaXMuX2V4cG9ydGVkVmFyaWFibGVJZGVudGlmaWVycy5oYXMobmFtZSkpIHtcbiAgICAgICAgLy8gSW4gb3JkZXIgZm9yIHRoaXMgbmV3IGlkZW50aWZpZXIgbm9kZSB0byBiZSBwcm9wZXJseSByZXdyaXR0ZW4gaW4gQ29tbW9uSlMgb3V0cHV0LFxuICAgICAgICAvLyBpdCBtdXN0IGhhdmUgaXRzIG9yaWdpbmFsIG5vZGUgc2V0IHRvIGEgcGFyc2VkIGluc3RhbmNlIG9mIHRoZSBzYW1lIGlkZW50aWZpZXIuXG4gICAgICAgIHRzLnNldE9yaWdpbmFsTm9kZShpZCwgdGhpcy5fZXhwb3J0ZWRWYXJpYWJsZUlkZW50aWZpZXJzLmdldChuYW1lKSk7XG4gICAgICB9XG4gICAgICByZXR1cm4gaWQ7XG4gICAgfVxuICB9XG59XG5cblxuZnVuY3Rpb24gZ2V0TWV0aG9kTmFtZShtZXRob2RSZWY6IHtuYW1lOiBzdHJpbmd8bnVsbDsgYnVpbHRpbjogQnVpbHRpbk1ldGhvZCB8IG51bGx9KTogc3RyaW5nIHtcbiAgaWYgKG1ldGhvZFJlZi5uYW1lKSB7XG4gICAgcmV0dXJuIG1ldGhvZFJlZi5uYW1lO1xuICB9IGVsc2Uge1xuICAgIHN3aXRjaCAobWV0aG9kUmVmLmJ1aWx0aW4pIHtcbiAgICAgIGNhc2UgQnVpbHRpbk1ldGhvZC5CaW5kOlxuICAgICAgICByZXR1cm4gJ2JpbmQnO1xuICAgICAgY2FzZSBCdWlsdGluTWV0aG9kLkNvbmNhdEFycmF5OlxuICAgICAgICByZXR1cm4gJ2NvbmNhdCc7XG4gICAgICBjYXNlIEJ1aWx0aW5NZXRob2QuU3Vic2NyaWJlT2JzZXJ2YWJsZTpcbiAgICAgICAgcmV0dXJuICdzdWJzY3JpYmUnO1xuICAgIH1cbiAgfVxuICB0aHJvdyBuZXcgRXJyb3IoJ1VuZXhwZWN0ZWQgbWV0aG9kIHJlZmVyZW5jZSBmb3JtJyk7XG59XG5cbmZ1bmN0aW9uIG1vZGlmaWVyRnJvbU1vZGlmaWVyKG1vZGlmaWVyOiBTdG10TW9kaWZpZXIpOiB0cy5Nb2RpZmllciB7XG4gIHN3aXRjaCAobW9kaWZpZXIpIHtcbiAgICBjYXNlIFN0bXRNb2RpZmllci5FeHBvcnRlZDpcbiAgICAgIHJldHVybiB0cy5jcmVhdGVUb2tlbih0cy5TeW50YXhLaW5kLkV4cG9ydEtleXdvcmQpO1xuICAgIGNhc2UgU3RtdE1vZGlmaWVyLkZpbmFsOlxuICAgICAgcmV0dXJuIHRzLmNyZWF0ZVRva2VuKHRzLlN5bnRheEtpbmQuQ29uc3RLZXl3b3JkKTtcbiAgICBjYXNlIFN0bXRNb2RpZmllci5Qcml2YXRlOlxuICAgICAgcmV0dXJuIHRzLmNyZWF0ZVRva2VuKHRzLlN5bnRheEtpbmQuUHJpdmF0ZUtleXdvcmQpO1xuICAgIGNhc2UgU3RtdE1vZGlmaWVyLlN0YXRpYzpcbiAgICAgIHJldHVybiB0cy5jcmVhdGVUb2tlbih0cy5TeW50YXhLaW5kLlN0YXRpY0tleXdvcmQpO1xuICB9XG4gIHJldHVybiBlcnJvcihgdW5rbm93biBzdGF0ZW1lbnQgbW9kaWZpZXJgKTtcbn1cblxuZnVuY3Rpb24gdHJhbnNsYXRlTW9kaWZpZXJzKG1vZGlmaWVyczogU3RtdE1vZGlmaWVyW118bnVsbCk6IHRzLk1vZGlmaWVyW118dW5kZWZpbmVkIHtcbiAgcmV0dXJuIG1vZGlmaWVycyA9PSBudWxsID8gdW5kZWZpbmVkIDogbW9kaWZpZXJzIS5tYXAobW9kaWZpZXJGcm9tTW9kaWZpZXIpO1xufVxuIl19