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
        define("@angular/compiler-cli/src/transformers/lower_expressions", ["require", "exports", "tslib", "@angular/compiler", "typescript", "@angular/compiler-cli/src/metadata/index"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.LowerMetadataTransform = exports.getExpressionLoweringTransformFactory = void 0;
    var tslib_1 = require("tslib");
    var compiler_1 = require("@angular/compiler");
    var ts = require("typescript");
    var index_1 = require("@angular/compiler-cli/src/metadata/index");
    function toMap(items, select) {
        return new Map(items.map(function (i) { return [select(i), i]; }));
    }
    // We will never lower expressions in a nested lexical scope so avoid entering them.
    // This also avoids a bug in TypeScript 2.3 where the lexical scopes get out of sync
    // when using visitEachChild.
    function isLexicalScope(node) {
        switch (node.kind) {
            case ts.SyntaxKind.ArrowFunction:
            case ts.SyntaxKind.FunctionExpression:
            case ts.SyntaxKind.FunctionDeclaration:
            case ts.SyntaxKind.ClassExpression:
            case ts.SyntaxKind.ClassDeclaration:
            case ts.SyntaxKind.FunctionType:
            case ts.SyntaxKind.TypeLiteral:
            case ts.SyntaxKind.ArrayType:
                return true;
        }
        return false;
    }
    function transformSourceFile(sourceFile, requests, context) {
        var inserts = [];
        // Calculate the range of interesting locations. The transform will only visit nodes in this
        // range to improve the performance on large files.
        var locations = Array.from(requests.keys());
        var min = Math.min.apply(Math, tslib_1.__spread(locations));
        var max = Math.max.apply(Math, tslib_1.__spread(locations));
        // Visit nodes matching the request and synthetic nodes added by tsickle
        function shouldVisit(pos, end) {
            return (pos <= max && end >= min) || pos == -1;
        }
        function visitSourceFile(sourceFile) {
            function topLevelStatement(node) {
                var declarations = [];
                function visitNode(node) {
                    // Get the original node before tsickle
                    var _a = ts.getOriginalNode(node), pos = _a.pos, end = _a.end, kind = _a.kind, originalParent = _a.parent;
                    var nodeRequest = requests.get(pos);
                    if (nodeRequest && nodeRequest.kind == kind && nodeRequest.end == end) {
                        // This node is requested to be rewritten as a reference to the exported name.
                        if (originalParent && originalParent.kind === ts.SyntaxKind.VariableDeclaration) {
                            // As the value represents the whole initializer of a variable declaration,
                            // just refer to that variable. This e.g. helps to preserve closure comments
                            // at the right place.
                            var varParent = originalParent;
                            if (varParent.name.kind === ts.SyntaxKind.Identifier) {
                                var varName = varParent.name.text;
                                var exportName_1 = nodeRequest.name;
                                declarations.push({
                                    name: exportName_1,
                                    node: ts.createIdentifier(varName),
                                    order: 1 /* AfterStmt */
                                });
                                return node;
                            }
                        }
                        // Record that the node needs to be moved to an exported variable with the given name
                        var exportName = nodeRequest.name;
                        declarations.push({ name: exportName, node: node, order: 0 /* BeforeStmt */ });
                        return ts.createIdentifier(exportName);
                    }
                    var result = node;
                    if (shouldVisit(pos, end) && !isLexicalScope(node)) {
                        result = ts.visitEachChild(node, visitNode, context);
                    }
                    return result;
                }
                // Get the original node before tsickle
                var _a = ts.getOriginalNode(node), pos = _a.pos, end = _a.end;
                var resultStmt;
                if (shouldVisit(pos, end)) {
                    resultStmt = ts.visitEachChild(node, visitNode, context);
                }
                else {
                    resultStmt = node;
                }
                if (declarations.length) {
                    inserts.push({ relativeTo: resultStmt, declarations: declarations });
                }
                return resultStmt;
            }
            var newStatements = sourceFile.statements.map(topLevelStatement);
            if (inserts.length) {
                // Insert the declarations relative to the rewritten statement that references them.
                var insertMap_1 = toMap(inserts, function (i) { return i.relativeTo; });
                var tmpStatements_1 = [];
                newStatements.forEach(function (statement) {
                    var insert = insertMap_1.get(statement);
                    if (insert) {
                        var before = insert.declarations.filter(function (d) { return d.order === 0 /* BeforeStmt */; });
                        if (before.length) {
                            tmpStatements_1.push(createVariableStatementForDeclarations(before));
                        }
                        tmpStatements_1.push(statement);
                        var after = insert.declarations.filter(function (d) { return d.order === 1 /* AfterStmt */; });
                        if (after.length) {
                            tmpStatements_1.push(createVariableStatementForDeclarations(after));
                        }
                    }
                    else {
                        tmpStatements_1.push(statement);
                    }
                });
                // Insert an exports clause to export the declarations
                tmpStatements_1.push(ts.createExportDeclaration(
                /* decorators */ undefined, 
                /* modifiers */ undefined, ts.createNamedExports(inserts
                    .reduce(function (accumulator, insert) { return tslib_1.__spread(accumulator, insert.declarations); }, [])
                    .map(function (declaration) { return ts.createExportSpecifier(
                /* propertyName */ undefined, declaration.name); }))));
                newStatements = tmpStatements_1;
            }
            // Note: We cannot use ts.updateSourcefile here as
            // it does not work well with decorators.
            // See https://github.com/Microsoft/TypeScript/issues/17384
            var newSf = ts.getMutableClone(sourceFile);
            if (!(sourceFile.flags & ts.NodeFlags.Synthesized)) {
                newSf.flags &= ~ts.NodeFlags.Synthesized;
            }
            newSf.statements = ts.setTextRange(ts.createNodeArray(newStatements), sourceFile.statements);
            return newSf;
        }
        return visitSourceFile(sourceFile);
    }
    function createVariableStatementForDeclarations(declarations) {
        var varDecls = declarations.map(function (i) { return ts.createVariableDeclaration(i.name, /* type */ undefined, i.node); });
        return ts.createVariableStatement(
        /* modifiers */ undefined, ts.createVariableDeclarationList(varDecls, ts.NodeFlags.Const));
    }
    function getExpressionLoweringTransformFactory(requestsMap, program) {
        // Return the factory
        return function (context) { return function (sourceFile) {
            // We need to use the original SourceFile for reading metadata, and not the transformed one.
            var originalFile = program.getSourceFile(sourceFile.fileName);
            if (originalFile) {
                var requests = requestsMap.getRequests(originalFile);
                if (requests && requests.size) {
                    return transformSourceFile(sourceFile, requests, context);
                }
            }
            return sourceFile;
        }; };
    }
    exports.getExpressionLoweringTransformFactory = getExpressionLoweringTransformFactory;
    function isEligibleForLowering(node) {
        if (node) {
            switch (node.kind) {
                case ts.SyntaxKind.SourceFile:
                case ts.SyntaxKind.Decorator:
                    // Lower expressions that are local to the module scope or
                    // in a decorator.
                    return true;
                case ts.SyntaxKind.ClassDeclaration:
                case ts.SyntaxKind.InterfaceDeclaration:
                case ts.SyntaxKind.EnumDeclaration:
                case ts.SyntaxKind.FunctionDeclaration:
                    // Don't lower expressions in a declaration.
                    return false;
                case ts.SyntaxKind.VariableDeclaration:
                    var isExported = (ts.getCombinedModifierFlags(node) &
                        ts.ModifierFlags.Export) == 0;
                    // This might be unnecessary, as the variable might be exported and only used as a reference
                    // in another expression. However, the variable also might be involved in provider
                    // definitions. If that's the case, there is a specific token (`ROUTES`) which the compiler
                    // attempts to understand deeply. Sub-expressions within that token (`loadChildren` for
                    // example) might also require lowering even if the top-level declaration is already
                    // properly exported.
                    var varNode = node;
                    return isExported ||
                        (varNode.initializer !== undefined &&
                            (ts.isObjectLiteralExpression(varNode.initializer) ||
                                ts.isArrayLiteralExpression(varNode.initializer) ||
                                ts.isCallExpression(varNode.initializer)));
            }
            return isEligibleForLowering(node.parent);
        }
        return true;
    }
    function isPrimitive(value) {
        return Object(value) !== value;
    }
    function isRewritten(value) {
        return index_1.isMetadataGlobalReferenceExpression(value) && compiler_1.isLoweredSymbol(value.name);
    }
    function isLiteralFieldNamed(node, names) {
        if (node.parent && node.parent.kind == ts.SyntaxKind.PropertyAssignment) {
            var property = node.parent;
            if (property.parent && property.parent.kind == ts.SyntaxKind.ObjectLiteralExpression &&
                property.name && property.name.kind == ts.SyntaxKind.Identifier) {
                var propertyName = property.name;
                return names.has(propertyName.text);
            }
        }
        return false;
    }
    var LowerMetadataTransform = /** @class */ (function () {
        function LowerMetadataTransform(lowerableFieldNames) {
            this.requests = new Map();
            this.lowerableFieldNames = new Set(lowerableFieldNames);
        }
        // RequestMap
        LowerMetadataTransform.prototype.getRequests = function (sourceFile) {
            var result = this.requests.get(sourceFile.fileName);
            if (!result) {
                // Force the metadata for this source file to be collected which
                // will recursively call start() populating the request map;
                this.cache.getMetadata(sourceFile);
                // If we still don't have the requested metadata, the file is not a module
                // or is a declaration file so return an empty map.
                result = this.requests.get(sourceFile.fileName) || new Map();
            }
            return result;
        };
        // MetadataTransformer
        LowerMetadataTransform.prototype.connect = function (cache) {
            this.cache = cache;
        };
        LowerMetadataTransform.prototype.start = function (sourceFile) {
            var _this = this;
            var identNumber = 0;
            var freshIdent = function () { return compiler_1.createLoweredSymbol(identNumber++); };
            var requests = new Map();
            this.requests.set(sourceFile.fileName, requests);
            var replaceNode = function (node) {
                var name = freshIdent();
                requests.set(node.pos, { name: name, kind: node.kind, location: node.pos, end: node.end });
                return { __symbolic: 'reference', name: name };
            };
            var isExportedSymbol = (function () {
                var exportTable;
                return function (node) {
                    if (node.kind == ts.SyntaxKind.Identifier) {
                        var ident = node;
                        if (!exportTable) {
                            exportTable = createExportTableFor(sourceFile);
                        }
                        return exportTable.has(ident.text);
                    }
                    return false;
                };
            })();
            var isExportedPropertyAccess = function (node) {
                if (node.kind === ts.SyntaxKind.PropertyAccessExpression) {
                    var pae = node;
                    if (isExportedSymbol(pae.expression)) {
                        return true;
                    }
                }
                return false;
            };
            var hasLowerableParentCache = new Map();
            var shouldBeLowered = function (node) {
                if (node === undefined) {
                    return false;
                }
                var lowerable = false;
                if ((node.kind === ts.SyntaxKind.ArrowFunction ||
                    node.kind === ts.SyntaxKind.FunctionExpression) &&
                    isEligibleForLowering(node)) {
                    lowerable = true;
                }
                else if (isLiteralFieldNamed(node, _this.lowerableFieldNames) && isEligibleForLowering(node) &&
                    !isExportedSymbol(node) && !isExportedPropertyAccess(node)) {
                    lowerable = true;
                }
                return lowerable;
            };
            var hasLowerableParent = function (node) {
                if (node === undefined) {
                    return false;
                }
                if (!hasLowerableParentCache.has(node)) {
                    hasLowerableParentCache.set(node, shouldBeLowered(node.parent) || hasLowerableParent(node.parent));
                }
                return hasLowerableParentCache.get(node);
            };
            var isLowerable = function (node) {
                if (node === undefined) {
                    return false;
                }
                return shouldBeLowered(node) && !hasLowerableParent(node);
            };
            return function (value, node) {
                if (!isPrimitive(value) && !isRewritten(value) && isLowerable(node)) {
                    return replaceNode(node);
                }
                return value;
            };
        };
        return LowerMetadataTransform;
    }());
    exports.LowerMetadataTransform = LowerMetadataTransform;
    function createExportTableFor(sourceFile) {
        var exportTable = new Set();
        // Lazily collect all the exports from the source file
        ts.forEachChild(sourceFile, function scan(node) {
            var e_1, _a;
            switch (node.kind) {
                case ts.SyntaxKind.ClassDeclaration:
                case ts.SyntaxKind.FunctionDeclaration:
                case ts.SyntaxKind.InterfaceDeclaration:
                    if ((ts.getCombinedModifierFlags(node) & ts.ModifierFlags.Export) != 0) {
                        var classDeclaration = node;
                        var name = classDeclaration.name;
                        if (name)
                            exportTable.add(name.text);
                    }
                    break;
                case ts.SyntaxKind.VariableStatement:
                    var variableStatement = node;
                    try {
                        for (var _b = tslib_1.__values(variableStatement.declarationList.declarations), _c = _b.next(); !_c.done; _c = _b.next()) {
                            var declaration = _c.value;
                            scan(declaration);
                        }
                    }
                    catch (e_1_1) { e_1 = { error: e_1_1 }; }
                    finally {
                        try {
                            if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                        }
                        finally { if (e_1) throw e_1.error; }
                    }
                    break;
                case ts.SyntaxKind.VariableDeclaration:
                    var variableDeclaration = node;
                    if ((ts.getCombinedModifierFlags(variableDeclaration) & ts.ModifierFlags.Export) != 0 &&
                        variableDeclaration.name.kind == ts.SyntaxKind.Identifier) {
                        var name = variableDeclaration.name;
                        exportTable.add(name.text);
                    }
                    break;
                case ts.SyntaxKind.ExportDeclaration:
                    var exportDeclaration = node;
                    var moduleSpecifier = exportDeclaration.moduleSpecifier, exportClause = exportDeclaration.exportClause;
                    if (!moduleSpecifier && exportClause && ts.isNamedExports(exportClause)) {
                        exportClause.elements.forEach(function (spec) {
                            exportTable.add(spec.name.text);
                        });
                    }
            }
        });
        return exportTable;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibG93ZXJfZXhwcmVzc2lvbnMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL3RyYW5zZm9ybWVycy9sb3dlcl9leHByZXNzaW9ucy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBRUgsOENBQXVFO0lBQ3ZFLCtCQUFpQztJQUVqQyxrRUFBMEk7SUE2QjFJLFNBQVMsS0FBSyxDQUFPLEtBQVUsRUFBRSxNQUFzQjtRQUNyRCxPQUFPLElBQUksR0FBRyxDQUFDLEtBQUssQ0FBQyxHQUFHLENBQVMsVUFBQSxDQUFDLElBQUksT0FBQSxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLENBQUMsRUFBZCxDQUFjLENBQUMsQ0FBQyxDQUFDO0lBQ3pELENBQUM7SUFFRCxvRkFBb0Y7SUFDcEYsb0ZBQW9GO0lBQ3BGLDZCQUE2QjtJQUM3QixTQUFTLGNBQWMsQ0FBQyxJQUFhO1FBQ25DLFFBQVEsSUFBSSxDQUFDLElBQUksRUFBRTtZQUNqQixLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsYUFBYSxDQUFDO1lBQ2pDLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxrQkFBa0IsQ0FBQztZQUN0QyxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsbUJBQW1CLENBQUM7WUFDdkMsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLGVBQWUsQ0FBQztZQUNuQyxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsZ0JBQWdCLENBQUM7WUFDcEMsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLFlBQVksQ0FBQztZQUNoQyxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsV0FBVyxDQUFDO1lBQy9CLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxTQUFTO2dCQUMxQixPQUFPLElBQUksQ0FBQztTQUNmO1FBQ0QsT0FBTyxLQUFLLENBQUM7SUFDZixDQUFDO0lBRUQsU0FBUyxtQkFBbUIsQ0FDeEIsVUFBeUIsRUFBRSxRQUE0QixFQUN2RCxPQUFpQztRQUNuQyxJQUFNLE9BQU8sR0FBd0IsRUFBRSxDQUFDO1FBRXhDLDRGQUE0RjtRQUM1RixtREFBbUQ7UUFDbkQsSUFBTSxTQUFTLEdBQUcsS0FBSyxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUMsSUFBSSxFQUFFLENBQUMsQ0FBQztRQUM5QyxJQUFNLEdBQUcsR0FBRyxJQUFJLENBQUMsR0FBRyxPQUFSLElBQUksbUJBQVEsU0FBUyxFQUFDLENBQUM7UUFDbkMsSUFBTSxHQUFHLEdBQUcsSUFBSSxDQUFDLEdBQUcsT0FBUixJQUFJLG1CQUFRLFNBQVMsRUFBQyxDQUFDO1FBRW5DLHdFQUF3RTtRQUN4RSxTQUFTLFdBQVcsQ0FBQyxHQUFXLEVBQUUsR0FBVztZQUMzQyxPQUFPLENBQUMsR0FBRyxJQUFJLEdBQUcsSUFBSSxHQUFHLElBQUksR0FBRyxDQUFDLElBQUksR0FBRyxJQUFJLENBQUMsQ0FBQyxDQUFDO1FBQ2pELENBQUM7UUFFRCxTQUFTLGVBQWUsQ0FBQyxVQUF5QjtZQUNoRCxTQUFTLGlCQUFpQixDQUFDLElBQWtCO2dCQUMzQyxJQUFNLFlBQVksR0FBa0IsRUFBRSxDQUFDO2dCQUV2QyxTQUFTLFNBQVMsQ0FBQyxJQUFhO29CQUM5Qix1Q0FBdUM7b0JBQ2pDLElBQUEsS0FBMkMsRUFBRSxDQUFDLGVBQWUsQ0FBQyxJQUFJLENBQUMsRUFBbEUsR0FBRyxTQUFBLEVBQUUsR0FBRyxTQUFBLEVBQUUsSUFBSSxVQUFBLEVBQVUsY0FBYyxZQUE0QixDQUFDO29CQUMxRSxJQUFNLFdBQVcsR0FBRyxRQUFRLENBQUMsR0FBRyxDQUFDLEdBQUcsQ0FBQyxDQUFDO29CQUN0QyxJQUFJLFdBQVcsSUFBSSxXQUFXLENBQUMsSUFBSSxJQUFJLElBQUksSUFBSSxXQUFXLENBQUMsR0FBRyxJQUFJLEdBQUcsRUFBRTt3QkFDckUsOEVBQThFO3dCQUM5RSxJQUFJLGNBQWMsSUFBSSxjQUFjLENBQUMsSUFBSSxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsbUJBQW1CLEVBQUU7NEJBQy9FLDJFQUEyRTs0QkFDM0UsNEVBQTRFOzRCQUM1RSxzQkFBc0I7NEJBQ3RCLElBQU0sU0FBUyxHQUFHLGNBQXdDLENBQUM7NEJBQzNELElBQUksU0FBUyxDQUFDLElBQUksQ0FBQyxJQUFJLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxVQUFVLEVBQUU7Z0NBQ3BELElBQU0sT0FBTyxHQUFHLFNBQVMsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDO2dDQUNwQyxJQUFNLFlBQVUsR0FBRyxXQUFXLENBQUMsSUFBSSxDQUFDO2dDQUNwQyxZQUFZLENBQUMsSUFBSSxDQUFDO29DQUNoQixJQUFJLEVBQUUsWUFBVTtvQ0FDaEIsSUFBSSxFQUFFLEVBQUUsQ0FBQyxnQkFBZ0IsQ0FBQyxPQUFPLENBQUM7b0NBQ2xDLEtBQUssbUJBQTRCO2lDQUNsQyxDQUFDLENBQUM7Z0NBQ0gsT0FBTyxJQUFJLENBQUM7NkJBQ2I7eUJBQ0Y7d0JBQ0QscUZBQXFGO3dCQUNyRixJQUFNLFVBQVUsR0FBRyxXQUFXLENBQUMsSUFBSSxDQUFDO3dCQUNwQyxZQUFZLENBQUMsSUFBSSxDQUFDLEVBQUMsSUFBSSxFQUFFLFVBQVUsRUFBRSxJQUFJLE1BQUEsRUFBRSxLQUFLLG9CQUE2QixFQUFDLENBQUMsQ0FBQzt3QkFDaEYsT0FBTyxFQUFFLENBQUMsZ0JBQWdCLENBQUMsVUFBVSxDQUFDLENBQUM7cUJBQ3hDO29CQUNELElBQUksTUFBTSxHQUFHLElBQUksQ0FBQztvQkFDbEIsSUFBSSxXQUFXLENBQUMsR0FBRyxFQUFFLEdBQUcsQ0FBQyxJQUFJLENBQUMsY0FBYyxDQUFDLElBQUksQ0FBQyxFQUFFO3dCQUNsRCxNQUFNLEdBQUcsRUFBRSxDQUFDLGNBQWMsQ0FBQyxJQUFJLEVBQUUsU0FBUyxFQUFFLE9BQU8sQ0FBQyxDQUFDO3FCQUN0RDtvQkFDRCxPQUFPLE1BQU0sQ0FBQztnQkFDaEIsQ0FBQztnQkFFRCx1Q0FBdUM7Z0JBQ2pDLElBQUEsS0FBYSxFQUFFLENBQUMsZUFBZSxDQUFDLElBQUksQ0FBQyxFQUFwQyxHQUFHLFNBQUEsRUFBRSxHQUFHLFNBQTRCLENBQUM7Z0JBQzVDLElBQUksVUFBd0IsQ0FBQztnQkFDN0IsSUFBSSxXQUFXLENBQUMsR0FBRyxFQUFFLEdBQUcsQ0FBQyxFQUFFO29CQUN6QixVQUFVLEdBQUcsRUFBRSxDQUFDLGNBQWMsQ0FBQyxJQUFJLEVBQUUsU0FBUyxFQUFFLE9BQU8sQ0FBQyxDQUFDO2lCQUMxRDtxQkFBTTtvQkFDTCxVQUFVLEdBQUcsSUFBSSxDQUFDO2lCQUNuQjtnQkFFRCxJQUFJLFlBQVksQ0FBQyxNQUFNLEVBQUU7b0JBQ3ZCLE9BQU8sQ0FBQyxJQUFJLENBQUMsRUFBQyxVQUFVLEVBQUUsVUFBVSxFQUFFLFlBQVksY0FBQSxFQUFDLENBQUMsQ0FBQztpQkFDdEQ7Z0JBQ0QsT0FBTyxVQUFVLENBQUM7WUFDcEIsQ0FBQztZQUVELElBQUksYUFBYSxHQUFHLFVBQVUsQ0FBQyxVQUFVLENBQUMsR0FBRyxDQUFDLGlCQUFpQixDQUFDLENBQUM7WUFFakUsSUFBSSxPQUFPLENBQUMsTUFBTSxFQUFFO2dCQUNsQixvRkFBb0Y7Z0JBQ3BGLElBQU0sV0FBUyxHQUFHLEtBQUssQ0FBQyxPQUFPLEVBQUUsVUFBQSxDQUFDLElBQUksT0FBQSxDQUFDLENBQUMsVUFBVSxFQUFaLENBQVksQ0FBQyxDQUFDO2dCQUNwRCxJQUFNLGVBQWEsR0FBbUIsRUFBRSxDQUFDO2dCQUN6QyxhQUFhLENBQUMsT0FBTyxDQUFDLFVBQUEsU0FBUztvQkFDN0IsSUFBTSxNQUFNLEdBQUcsV0FBUyxDQUFDLEdBQUcsQ0FBQyxTQUFTLENBQUMsQ0FBQztvQkFDeEMsSUFBSSxNQUFNLEVBQUU7d0JBQ1YsSUFBTSxNQUFNLEdBQUcsTUFBTSxDQUFDLFlBQVksQ0FBQyxNQUFNLENBQUMsVUFBQSxDQUFDLElBQUksT0FBQSxDQUFDLENBQUMsS0FBSyx1QkFBZ0MsRUFBdkMsQ0FBdUMsQ0FBQyxDQUFDO3dCQUN4RixJQUFJLE1BQU0sQ0FBQyxNQUFNLEVBQUU7NEJBQ2pCLGVBQWEsQ0FBQyxJQUFJLENBQUMsc0NBQXNDLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQzt5QkFDcEU7d0JBQ0QsZUFBYSxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQzt3QkFDOUIsSUFBTSxLQUFLLEdBQUcsTUFBTSxDQUFDLFlBQVksQ0FBQyxNQUFNLENBQUMsVUFBQSxDQUFDLElBQUksT0FBQSxDQUFDLENBQUMsS0FBSyxzQkFBK0IsRUFBdEMsQ0FBc0MsQ0FBQyxDQUFDO3dCQUN0RixJQUFJLEtBQUssQ0FBQyxNQUFNLEVBQUU7NEJBQ2hCLGVBQWEsQ0FBQyxJQUFJLENBQUMsc0NBQXNDLENBQUMsS0FBSyxDQUFDLENBQUMsQ0FBQzt5QkFDbkU7cUJBQ0Y7eUJBQU07d0JBQ0wsZUFBYSxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztxQkFDL0I7Z0JBQ0gsQ0FBQyxDQUFDLENBQUM7Z0JBRUgsc0RBQXNEO2dCQUN0RCxlQUFhLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyx1QkFBdUI7Z0JBQ3pDLGdCQUFnQixDQUFDLFNBQVM7Z0JBQzFCLGVBQWUsQ0FBQyxTQUFTLEVBQ3pCLEVBQUUsQ0FBQyxrQkFBa0IsQ0FDakIsT0FBTztxQkFDRixNQUFNLENBQ0gsVUFBQyxXQUFXLEVBQUUsTUFBTSxJQUFLLHdCQUFJLFdBQVcsRUFBSyxNQUFNLENBQUMsWUFBWSxHQUF2QyxDQUF3QyxFQUNqRSxFQUFtQixDQUFDO3FCQUN2QixHQUFHLENBQ0EsVUFBQSxXQUFXLElBQUksT0FBQSxFQUFFLENBQUMscUJBQXFCO2dCQUNuQyxrQkFBa0IsQ0FBQyxTQUFTLEVBQUUsV0FBVyxDQUFDLElBQUksQ0FBQyxFQURwQyxDQUNvQyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7Z0JBRXhFLGFBQWEsR0FBRyxlQUFhLENBQUM7YUFDL0I7WUFDRCxrREFBa0Q7WUFDbEQseUNBQXlDO1lBQ3pDLDJEQUEyRDtZQUMzRCxJQUFNLEtBQUssR0FBRyxFQUFFLENBQUMsZUFBZSxDQUFDLFVBQVUsQ0FBQyxDQUFDO1lBQzdDLElBQUksQ0FBQyxDQUFDLFVBQVUsQ0FBQyxLQUFLLEdBQUcsRUFBRSxDQUFDLFNBQVMsQ0FBQyxXQUFXLENBQUMsRUFBRTtnQkFDbEQsS0FBSyxDQUFDLEtBQUssSUFBSSxDQUFDLEVBQUUsQ0FBQyxTQUFTLENBQUMsV0FBVyxDQUFDO2FBQzFDO1lBQ0QsS0FBSyxDQUFDLFVBQVUsR0FBRyxFQUFFLENBQUMsWUFBWSxDQUFDLEVBQUUsQ0FBQyxlQUFlLENBQUMsYUFBYSxDQUFDLEVBQUUsVUFBVSxDQUFDLFVBQVUsQ0FBQyxDQUFDO1lBQzdGLE9BQU8sS0FBSyxDQUFDO1FBQ2YsQ0FBQztRQUVELE9BQU8sZUFBZSxDQUFDLFVBQVUsQ0FBQyxDQUFDO0lBQ3JDLENBQUM7SUFFRCxTQUFTLHNDQUFzQyxDQUFDLFlBQTJCO1FBQ3pFLElBQU0sUUFBUSxHQUFHLFlBQVksQ0FBQyxHQUFHLENBQzdCLFVBQUEsQ0FBQyxJQUFJLE9BQUEsRUFBRSxDQUFDLHlCQUF5QixDQUFDLENBQUMsQ0FBQyxJQUFJLEVBQUUsVUFBVSxDQUFDLFNBQVMsRUFBRSxDQUFDLENBQUMsSUFBcUIsQ0FBQyxFQUFuRixDQUFtRixDQUFDLENBQUM7UUFDOUYsT0FBTyxFQUFFLENBQUMsdUJBQXVCO1FBQzdCLGVBQWUsQ0FBQyxTQUFTLEVBQUUsRUFBRSxDQUFDLDZCQUE2QixDQUFDLFFBQVEsRUFBRSxFQUFFLENBQUMsU0FBUyxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUM7SUFDakcsQ0FBQztJQUVELFNBQWdCLHFDQUFxQyxDQUNqRCxXQUF3QixFQUFFLE9BQW1CO1FBRS9DLHFCQUFxQjtRQUNyQixPQUFPLFVBQUMsT0FBaUMsSUFBSyxPQUFBLFVBQUMsVUFBeUI7WUFDdEUsNEZBQTRGO1lBQzVGLElBQU0sWUFBWSxHQUFHLE9BQU8sQ0FBQyxhQUFhLENBQUMsVUFBVSxDQUFDLFFBQVEsQ0FBQyxDQUFDO1lBQ2hFLElBQUksWUFBWSxFQUFFO2dCQUNoQixJQUFNLFFBQVEsR0FBRyxXQUFXLENBQUMsV0FBVyxDQUFDLFlBQVksQ0FBQyxDQUFDO2dCQUN2RCxJQUFJLFFBQVEsSUFBSSxRQUFRLENBQUMsSUFBSSxFQUFFO29CQUM3QixPQUFPLG1CQUFtQixDQUFDLFVBQVUsRUFBRSxRQUFRLEVBQUUsT0FBTyxDQUFDLENBQUM7aUJBQzNEO2FBQ0Y7WUFDRCxPQUFPLFVBQVUsQ0FBQztRQUNwQixDQUFDLEVBVjZDLENBVTdDLENBQUM7SUFDSixDQUFDO0lBZkQsc0ZBZUM7SUFXRCxTQUFTLHFCQUFxQixDQUFDLElBQXVCO1FBQ3BELElBQUksSUFBSSxFQUFFO1lBQ1IsUUFBUSxJQUFJLENBQUMsSUFBSSxFQUFFO2dCQUNqQixLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsVUFBVSxDQUFDO2dCQUM5QixLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsU0FBUztvQkFDMUIsMERBQTBEO29CQUMxRCxrQkFBa0I7b0JBQ2xCLE9BQU8sSUFBSSxDQUFDO2dCQUNkLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxnQkFBZ0IsQ0FBQztnQkFDcEMsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLG9CQUFvQixDQUFDO2dCQUN4QyxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsZUFBZSxDQUFDO2dCQUNuQyxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsbUJBQW1CO29CQUNwQyw0Q0FBNEM7b0JBQzVDLE9BQU8sS0FBSyxDQUFDO2dCQUNmLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxtQkFBbUI7b0JBQ3BDLElBQU0sVUFBVSxHQUFHLENBQUMsRUFBRSxDQUFDLHdCQUF3QixDQUFDLElBQThCLENBQUM7d0JBQzNELEVBQUUsQ0FBQyxhQUFhLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxDQUFDO29CQUNsRCw0RkFBNEY7b0JBQzVGLGtGQUFrRjtvQkFDbEYsMkZBQTJGO29CQUMzRix1RkFBdUY7b0JBQ3ZGLG9GQUFvRjtvQkFDcEYscUJBQXFCO29CQUNyQixJQUFNLE9BQU8sR0FBRyxJQUE4QixDQUFDO29CQUMvQyxPQUFPLFVBQVU7d0JBQ2IsQ0FBQyxPQUFPLENBQUMsV0FBVyxLQUFLLFNBQVM7NEJBQ2pDLENBQUMsRUFBRSxDQUFDLHlCQUF5QixDQUFDLE9BQU8sQ0FBQyxXQUFXLENBQUM7Z0NBQ2pELEVBQUUsQ0FBQyx3QkFBd0IsQ0FBQyxPQUFPLENBQUMsV0FBVyxDQUFDO2dDQUNoRCxFQUFFLENBQUMsZ0JBQWdCLENBQUMsT0FBTyxDQUFDLFdBQVcsQ0FBQyxDQUFDLENBQUMsQ0FBQzthQUNwRDtZQUNELE9BQU8scUJBQXFCLENBQUMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxDQUFDO1NBQzNDO1FBQ0QsT0FBTyxJQUFJLENBQUM7SUFDZCxDQUFDO0lBRUQsU0FBUyxXQUFXLENBQUMsS0FBVTtRQUM3QixPQUFPLE1BQU0sQ0FBQyxLQUFLLENBQUMsS0FBSyxLQUFLLENBQUM7SUFDakMsQ0FBQztJQUVELFNBQVMsV0FBVyxDQUFDLEtBQVU7UUFDN0IsT0FBTywyQ0FBbUMsQ0FBQyxLQUFLLENBQUMsSUFBSSwwQkFBZSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQztJQUNuRixDQUFDO0lBRUQsU0FBUyxtQkFBbUIsQ0FBQyxJQUFhLEVBQUUsS0FBa0I7UUFDNUQsSUFBSSxJQUFJLENBQUMsTUFBTSxJQUFJLElBQUksQ0FBQyxNQUFNLENBQUMsSUFBSSxJQUFJLEVBQUUsQ0FBQyxVQUFVLENBQUMsa0JBQWtCLEVBQUU7WUFDdkUsSUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLE1BQStCLENBQUM7WUFDdEQsSUFBSSxRQUFRLENBQUMsTUFBTSxJQUFJLFFBQVEsQ0FBQyxNQUFNLENBQUMsSUFBSSxJQUFJLEVBQUUsQ0FBQyxVQUFVLENBQUMsdUJBQXVCO2dCQUNoRixRQUFRLENBQUMsSUFBSSxJQUFJLFFBQVEsQ0FBQyxJQUFJLENBQUMsSUFBSSxJQUFJLEVBQUUsQ0FBQyxVQUFVLENBQUMsVUFBVSxFQUFFO2dCQUNuRSxJQUFNLFlBQVksR0FBRyxRQUFRLENBQUMsSUFBcUIsQ0FBQztnQkFDcEQsT0FBTyxLQUFLLENBQUMsR0FBRyxDQUFDLFlBQVksQ0FBQyxJQUFJLENBQUMsQ0FBQzthQUNyQztTQUNGO1FBQ0QsT0FBTyxLQUFLLENBQUM7SUFDZixDQUFDO0lBRUQ7UUFNRSxnQ0FBWSxtQkFBNkI7WUFIakMsYUFBUSxHQUFHLElBQUksR0FBRyxFQUE4QixDQUFDO1lBSXZELElBQUksQ0FBQyxtQkFBbUIsR0FBRyxJQUFJLEdBQUcsQ0FBUyxtQkFBbUIsQ0FBQyxDQUFDO1FBQ2xFLENBQUM7UUFFRCxhQUFhO1FBQ2IsNENBQVcsR0FBWCxVQUFZLFVBQXlCO1lBQ25DLElBQUksTUFBTSxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsR0FBRyxDQUFDLFVBQVUsQ0FBQyxRQUFRLENBQUMsQ0FBQztZQUNwRCxJQUFJLENBQUMsTUFBTSxFQUFFO2dCQUNYLGdFQUFnRTtnQkFDaEUsNERBQTREO2dCQUM1RCxJQUFJLENBQUMsS0FBSyxDQUFDLFdBQVcsQ0FBQyxVQUFVLENBQUMsQ0FBQztnQkFFbkMsMEVBQTBFO2dCQUMxRSxtREFBbUQ7Z0JBQ25ELE1BQU0sR0FBRyxJQUFJLENBQUMsUUFBUSxDQUFDLEdBQUcsQ0FBQyxVQUFVLENBQUMsUUFBUSxDQUFDLElBQUksSUFBSSxHQUFHLEVBQTJCLENBQUM7YUFDdkY7WUFDRCxPQUFPLE1BQU0sQ0FBQztRQUNoQixDQUFDO1FBRUQsc0JBQXNCO1FBQ3RCLHdDQUFPLEdBQVAsVUFBUSxLQUFvQjtZQUMxQixJQUFJLENBQUMsS0FBSyxHQUFHLEtBQUssQ0FBQztRQUNyQixDQUFDO1FBRUQsc0NBQUssR0FBTCxVQUFNLFVBQXlCO1lBQS9CLGlCQWdGQztZQS9FQyxJQUFJLFdBQVcsR0FBRyxDQUFDLENBQUM7WUFDcEIsSUFBTSxVQUFVLEdBQUcsY0FBTSxPQUFBLDhCQUFtQixDQUFDLFdBQVcsRUFBRSxDQUFDLEVBQWxDLENBQWtDLENBQUM7WUFDNUQsSUFBTSxRQUFRLEdBQUcsSUFBSSxHQUFHLEVBQTJCLENBQUM7WUFDcEQsSUFBSSxDQUFDLFFBQVEsQ0FBQyxHQUFHLENBQUMsVUFBVSxDQUFDLFFBQVEsRUFBRSxRQUFRLENBQUMsQ0FBQztZQUVqRCxJQUFNLFdBQVcsR0FBRyxVQUFDLElBQWE7Z0JBQ2hDLElBQU0sSUFBSSxHQUFHLFVBQVUsRUFBRSxDQUFDO2dCQUMxQixRQUFRLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxHQUFHLEVBQUUsRUFBQyxJQUFJLE1BQUEsRUFBRSxJQUFJLEVBQUUsSUFBSSxDQUFDLElBQUksRUFBRSxRQUFRLEVBQUUsSUFBSSxDQUFDLEdBQUcsRUFBRSxHQUFHLEVBQUUsSUFBSSxDQUFDLEdBQUcsRUFBQyxDQUFDLENBQUM7Z0JBQ25GLE9BQU8sRUFBQyxVQUFVLEVBQUUsV0FBVyxFQUFFLElBQUksTUFBQSxFQUFDLENBQUM7WUFDekMsQ0FBQyxDQUFDO1lBRUYsSUFBTSxnQkFBZ0IsR0FBRyxDQUFDO2dCQUN4QixJQUFJLFdBQXdCLENBQUM7Z0JBQzdCLE9BQU8sVUFBQyxJQUFhO29CQUNuQixJQUFJLElBQUksQ0FBQyxJQUFJLElBQUksRUFBRSxDQUFDLFVBQVUsQ0FBQyxVQUFVLEVBQUU7d0JBQ3pDLElBQU0sS0FBSyxHQUFHLElBQXFCLENBQUM7d0JBRXBDLElBQUksQ0FBQyxXQUFXLEVBQUU7NEJBQ2hCLFdBQVcsR0FBRyxvQkFBb0IsQ0FBQyxVQUFVLENBQUMsQ0FBQzt5QkFDaEQ7d0JBQ0QsT0FBTyxXQUFXLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQztxQkFDcEM7b0JBQ0QsT0FBTyxLQUFLLENBQUM7Z0JBQ2YsQ0FBQyxDQUFDO1lBQ0osQ0FBQyxDQUFDLEVBQUUsQ0FBQztZQUVMLElBQU0sd0JBQXdCLEdBQUcsVUFBQyxJQUFhO2dCQUM3QyxJQUFJLElBQUksQ0FBQyxJQUFJLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyx3QkFBd0IsRUFBRTtvQkFDeEQsSUFBTSxHQUFHLEdBQUcsSUFBbUMsQ0FBQztvQkFDaEQsSUFBSSxnQkFBZ0IsQ0FBQyxHQUFHLENBQUMsVUFBVSxDQUFDLEVBQUU7d0JBQ3BDLE9BQU8sSUFBSSxDQUFDO3FCQUNiO2lCQUNGO2dCQUNELE9BQU8sS0FBSyxDQUFDO1lBQ2YsQ0FBQyxDQUFDO1lBRUYsSUFBTSx1QkFBdUIsR0FBRyxJQUFJLEdBQUcsRUFBb0IsQ0FBQztZQUU1RCxJQUFNLGVBQWUsR0FBRyxVQUFDLElBQXVCO2dCQUM5QyxJQUFJLElBQUksS0FBSyxTQUFTLEVBQUU7b0JBQ3RCLE9BQU8sS0FBSyxDQUFDO2lCQUNkO2dCQUNELElBQUksU0FBUyxHQUFZLEtBQUssQ0FBQztnQkFDL0IsSUFBSSxDQUFDLElBQUksQ0FBQyxJQUFJLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxhQUFhO29CQUN6QyxJQUFJLENBQUMsSUFBSSxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsa0JBQWtCLENBQUM7b0JBQ2hELHFCQUFxQixDQUFDLElBQUksQ0FBQyxFQUFFO29CQUMvQixTQUFTLEdBQUcsSUFBSSxDQUFDO2lCQUNsQjtxQkFBTSxJQUNILG1CQUFtQixDQUFDLElBQUksRUFBRSxLQUFJLENBQUMsbUJBQW1CLENBQUMsSUFBSSxxQkFBcUIsQ0FBQyxJQUFJLENBQUM7b0JBQ2xGLENBQUMsZ0JBQWdCLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyx3QkFBd0IsQ0FBQyxJQUFJLENBQUMsRUFBRTtvQkFDOUQsU0FBUyxHQUFHLElBQUksQ0FBQztpQkFDbEI7Z0JBQ0QsT0FBTyxTQUFTLENBQUM7WUFDbkIsQ0FBQyxDQUFDO1lBRUYsSUFBTSxrQkFBa0IsR0FBRyxVQUFDLElBQXVCO2dCQUNqRCxJQUFJLElBQUksS0FBSyxTQUFTLEVBQUU7b0JBQ3RCLE9BQU8sS0FBSyxDQUFDO2lCQUNkO2dCQUNELElBQUksQ0FBQyx1QkFBdUIsQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLEVBQUU7b0JBQ3RDLHVCQUF1QixDQUFDLEdBQUcsQ0FDdkIsSUFBSSxFQUFFLGVBQWUsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLElBQUksa0JBQWtCLENBQUMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUM7aUJBQzVFO2dCQUNELE9BQU8sdUJBQXVCLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBRSxDQUFDO1lBQzVDLENBQUMsQ0FBQztZQUVGLElBQU0sV0FBVyxHQUFHLFVBQUMsSUFBdUI7Z0JBQzFDLElBQUksSUFBSSxLQUFLLFNBQVMsRUFBRTtvQkFDdEIsT0FBTyxLQUFLLENBQUM7aUJBQ2Q7Z0JBQ0QsT0FBTyxlQUFlLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUM1RCxDQUFDLENBQUM7WUFFRixPQUFPLFVBQUMsS0FBb0IsRUFBRSxJQUFhO2dCQUN6QyxJQUFJLENBQUMsV0FBVyxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsV0FBVyxDQUFDLEtBQUssQ0FBQyxJQUFJLFdBQVcsQ0FBQyxJQUFJLENBQUMsRUFBRTtvQkFDbkUsT0FBTyxXQUFXLENBQUMsSUFBSSxDQUFDLENBQUM7aUJBQzFCO2dCQUNELE9BQU8sS0FBSyxDQUFDO1lBQ2YsQ0FBQyxDQUFDO1FBQ0osQ0FBQztRQUNILDZCQUFDO0lBQUQsQ0FBQyxBQS9HRCxJQStHQztJQS9HWSx3REFBc0I7SUFpSG5DLFNBQVMsb0JBQW9CLENBQUMsVUFBeUI7UUFDckQsSUFBTSxXQUFXLEdBQUcsSUFBSSxHQUFHLEVBQVUsQ0FBQztRQUN0QyxzREFBc0Q7UUFDdEQsRUFBRSxDQUFDLFlBQVksQ0FBQyxVQUFVLEVBQUUsU0FBUyxJQUFJLENBQUMsSUFBSTs7WUFDNUMsUUFBUSxJQUFJLENBQUMsSUFBSSxFQUFFO2dCQUNqQixLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsZ0JBQWdCLENBQUM7Z0JBQ3BDLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxtQkFBbUIsQ0FBQztnQkFDdkMsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLG9CQUFvQjtvQkFDckMsSUFBSSxDQUFDLEVBQUUsQ0FBQyx3QkFBd0IsQ0FBQyxJQUFzQixDQUFDLEdBQUcsRUFBRSxDQUFDLGFBQWEsQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLEVBQUU7d0JBQ3hGLElBQU0sZ0JBQWdCLEdBQ2xCLElBQWdGLENBQUM7d0JBQ3JGLElBQU0sSUFBSSxHQUFHLGdCQUFnQixDQUFDLElBQUksQ0FBQzt3QkFDbkMsSUFBSSxJQUFJOzRCQUFFLFdBQVcsQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO3FCQUN0QztvQkFDRCxNQUFNO2dCQUNSLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxpQkFBaUI7b0JBQ2xDLElBQU0saUJBQWlCLEdBQUcsSUFBNEIsQ0FBQzs7d0JBQ3ZELEtBQTBCLElBQUEsS0FBQSxpQkFBQSxpQkFBaUIsQ0FBQyxlQUFlLENBQUMsWUFBWSxDQUFBLGdCQUFBLDRCQUFFOzRCQUFyRSxJQUFNLFdBQVcsV0FBQTs0QkFDcEIsSUFBSSxDQUFDLFdBQVcsQ0FBQyxDQUFDO3lCQUNuQjs7Ozs7Ozs7O29CQUNELE1BQU07Z0JBQ1IsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLG1CQUFtQjtvQkFDcEMsSUFBTSxtQkFBbUIsR0FBRyxJQUE4QixDQUFDO29CQUMzRCxJQUFJLENBQUMsRUFBRSxDQUFDLHdCQUF3QixDQUFDLG1CQUFtQixDQUFDLEdBQUcsRUFBRSxDQUFDLGFBQWEsQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDO3dCQUNqRixtQkFBbUIsQ0FBQyxJQUFJLENBQUMsSUFBSSxJQUFJLEVBQUUsQ0FBQyxVQUFVLENBQUMsVUFBVSxFQUFFO3dCQUM3RCxJQUFNLElBQUksR0FBRyxtQkFBbUIsQ0FBQyxJQUFxQixDQUFDO3dCQUN2RCxXQUFXLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztxQkFDNUI7b0JBQ0QsTUFBTTtnQkFDUixLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsaUJBQWlCO29CQUNsQyxJQUFNLGlCQUFpQixHQUFHLElBQTRCLENBQUM7b0JBQ2hELElBQUEsZUFBZSxHQUFrQixpQkFBaUIsZ0JBQW5DLEVBQUUsWUFBWSxHQUFJLGlCQUFpQixhQUFyQixDQUFzQjtvQkFDMUQsSUFBSSxDQUFDLGVBQWUsSUFBSSxZQUFZLElBQUksRUFBRSxDQUFDLGNBQWMsQ0FBQyxZQUFZLENBQUMsRUFBRTt3QkFDdkUsWUFBWSxDQUFDLFFBQVEsQ0FBQyxPQUFPLENBQUMsVUFBQSxJQUFJOzRCQUNoQyxXQUFXLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7d0JBQ2xDLENBQUMsQ0FBQyxDQUFDO3FCQUNKO2FBQ0o7UUFDSCxDQUFDLENBQUMsQ0FBQztRQUNILE9BQU8sV0FBVyxDQUFDO0lBQ3JCLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtjcmVhdGVMb3dlcmVkU3ltYm9sLCBpc0xvd2VyZWRTeW1ib2x9IGZyb20gJ0Bhbmd1bGFyL2NvbXBpbGVyJztcbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge0NvbGxlY3Rvck9wdGlvbnMsIGlzTWV0YWRhdGFHbG9iYWxSZWZlcmVuY2VFeHByZXNzaW9uLCBNZXRhZGF0YUNvbGxlY3RvciwgTWV0YWRhdGFWYWx1ZSwgTW9kdWxlTWV0YWRhdGF9IGZyb20gJy4uL21ldGFkYXRhL2luZGV4JztcblxuaW1wb3J0IHtNZXRhZGF0YUNhY2hlLCBNZXRhZGF0YVRyYW5zZm9ybWVyLCBWYWx1ZVRyYW5zZm9ybX0gZnJvbSAnLi9tZXRhZGF0YV9jYWNoZSc7XG5cbmV4cG9ydCBpbnRlcmZhY2UgTG93ZXJpbmdSZXF1ZXN0IHtcbiAga2luZDogdHMuU3ludGF4S2luZDtcbiAgbG9jYXRpb246IG51bWJlcjtcbiAgZW5kOiBudW1iZXI7XG4gIG5hbWU6IHN0cmluZztcbn1cblxuZXhwb3J0IHR5cGUgUmVxdWVzdExvY2F0aW9uTWFwID0gTWFwPG51bWJlciwgTG93ZXJpbmdSZXF1ZXN0PjtcblxuY29uc3QgZW51bSBEZWNsYXJhdGlvbk9yZGVyIHtcbiAgQmVmb3JlU3RtdCxcbiAgQWZ0ZXJTdG10XG59XG5cbmludGVyZmFjZSBEZWNsYXJhdGlvbiB7XG4gIG5hbWU6IHN0cmluZztcbiAgbm9kZTogdHMuTm9kZTtcbiAgb3JkZXI6IERlY2xhcmF0aW9uT3JkZXI7XG59XG5cbmludGVyZmFjZSBEZWNsYXJhdGlvbkluc2VydCB7XG4gIGRlY2xhcmF0aW9uczogRGVjbGFyYXRpb25bXTtcbiAgcmVsYXRpdmVUbzogdHMuTm9kZTtcbn1cblxuZnVuY3Rpb24gdG9NYXA8VCwgSz4oaXRlbXM6IFRbXSwgc2VsZWN0OiAoaXRlbTogVCkgPT4gSyk6IE1hcDxLLCBUPiB7XG4gIHJldHVybiBuZXcgTWFwKGl0ZW1zLm1hcDxbSywgVF0+KGkgPT4gW3NlbGVjdChpKSwgaV0pKTtcbn1cblxuLy8gV2Ugd2lsbCBuZXZlciBsb3dlciBleHByZXNzaW9ucyBpbiBhIG5lc3RlZCBsZXhpY2FsIHNjb3BlIHNvIGF2b2lkIGVudGVyaW5nIHRoZW0uXG4vLyBUaGlzIGFsc28gYXZvaWRzIGEgYnVnIGluIFR5cGVTY3JpcHQgMi4zIHdoZXJlIHRoZSBsZXhpY2FsIHNjb3BlcyBnZXQgb3V0IG9mIHN5bmNcbi8vIHdoZW4gdXNpbmcgdmlzaXRFYWNoQ2hpbGQuXG5mdW5jdGlvbiBpc0xleGljYWxTY29wZShub2RlOiB0cy5Ob2RlKTogYm9vbGVhbiB7XG4gIHN3aXRjaCAobm9kZS5raW5kKSB7XG4gICAgY2FzZSB0cy5TeW50YXhLaW5kLkFycm93RnVuY3Rpb246XG4gICAgY2FzZSB0cy5TeW50YXhLaW5kLkZ1bmN0aW9uRXhwcmVzc2lvbjpcbiAgICBjYXNlIHRzLlN5bnRheEtpbmQuRnVuY3Rpb25EZWNsYXJhdGlvbjpcbiAgICBjYXNlIHRzLlN5bnRheEtpbmQuQ2xhc3NFeHByZXNzaW9uOlxuICAgIGNhc2UgdHMuU3ludGF4S2luZC5DbGFzc0RlY2xhcmF0aW9uOlxuICAgIGNhc2UgdHMuU3ludGF4S2luZC5GdW5jdGlvblR5cGU6XG4gICAgY2FzZSB0cy5TeW50YXhLaW5kLlR5cGVMaXRlcmFsOlxuICAgIGNhc2UgdHMuU3ludGF4S2luZC5BcnJheVR5cGU6XG4gICAgICByZXR1cm4gdHJ1ZTtcbiAgfVxuICByZXR1cm4gZmFsc2U7XG59XG5cbmZ1bmN0aW9uIHRyYW5zZm9ybVNvdXJjZUZpbGUoXG4gICAgc291cmNlRmlsZTogdHMuU291cmNlRmlsZSwgcmVxdWVzdHM6IFJlcXVlc3RMb2NhdGlvbk1hcCxcbiAgICBjb250ZXh0OiB0cy5UcmFuc2Zvcm1hdGlvbkNvbnRleHQpOiB0cy5Tb3VyY2VGaWxlIHtcbiAgY29uc3QgaW5zZXJ0czogRGVjbGFyYXRpb25JbnNlcnRbXSA9IFtdO1xuXG4gIC8vIENhbGN1bGF0ZSB0aGUgcmFuZ2Ugb2YgaW50ZXJlc3RpbmcgbG9jYXRpb25zLiBUaGUgdHJhbnNmb3JtIHdpbGwgb25seSB2aXNpdCBub2RlcyBpbiB0aGlzXG4gIC8vIHJhbmdlIHRvIGltcHJvdmUgdGhlIHBlcmZvcm1hbmNlIG9uIGxhcmdlIGZpbGVzLlxuICBjb25zdCBsb2NhdGlvbnMgPSBBcnJheS5mcm9tKHJlcXVlc3RzLmtleXMoKSk7XG4gIGNvbnN0IG1pbiA9IE1hdGgubWluKC4uLmxvY2F0aW9ucyk7XG4gIGNvbnN0IG1heCA9IE1hdGgubWF4KC4uLmxvY2F0aW9ucyk7XG5cbiAgLy8gVmlzaXQgbm9kZXMgbWF0Y2hpbmcgdGhlIHJlcXVlc3QgYW5kIHN5bnRoZXRpYyBub2RlcyBhZGRlZCBieSB0c2lja2xlXG4gIGZ1bmN0aW9uIHNob3VsZFZpc2l0KHBvczogbnVtYmVyLCBlbmQ6IG51bWJlcik6IGJvb2xlYW4ge1xuICAgIHJldHVybiAocG9zIDw9IG1heCAmJiBlbmQgPj0gbWluKSB8fCBwb3MgPT0gLTE7XG4gIH1cblxuICBmdW5jdGlvbiB2aXNpdFNvdXJjZUZpbGUoc291cmNlRmlsZTogdHMuU291cmNlRmlsZSk6IHRzLlNvdXJjZUZpbGUge1xuICAgIGZ1bmN0aW9uIHRvcExldmVsU3RhdGVtZW50KG5vZGU6IHRzLlN0YXRlbWVudCk6IHRzLlN0YXRlbWVudCB7XG4gICAgICBjb25zdCBkZWNsYXJhdGlvbnM6IERlY2xhcmF0aW9uW10gPSBbXTtcblxuICAgICAgZnVuY3Rpb24gdmlzaXROb2RlKG5vZGU6IHRzLk5vZGUpOiB0cy5Ob2RlIHtcbiAgICAgICAgLy8gR2V0IHRoZSBvcmlnaW5hbCBub2RlIGJlZm9yZSB0c2lja2xlXG4gICAgICAgIGNvbnN0IHtwb3MsIGVuZCwga2luZCwgcGFyZW50OiBvcmlnaW5hbFBhcmVudH0gPSB0cy5nZXRPcmlnaW5hbE5vZGUobm9kZSk7XG4gICAgICAgIGNvbnN0IG5vZGVSZXF1ZXN0ID0gcmVxdWVzdHMuZ2V0KHBvcyk7XG4gICAgICAgIGlmIChub2RlUmVxdWVzdCAmJiBub2RlUmVxdWVzdC5raW5kID09IGtpbmQgJiYgbm9kZVJlcXVlc3QuZW5kID09IGVuZCkge1xuICAgICAgICAgIC8vIFRoaXMgbm9kZSBpcyByZXF1ZXN0ZWQgdG8gYmUgcmV3cml0dGVuIGFzIGEgcmVmZXJlbmNlIHRvIHRoZSBleHBvcnRlZCBuYW1lLlxuICAgICAgICAgIGlmIChvcmlnaW5hbFBhcmVudCAmJiBvcmlnaW5hbFBhcmVudC5raW5kID09PSB0cy5TeW50YXhLaW5kLlZhcmlhYmxlRGVjbGFyYXRpb24pIHtcbiAgICAgICAgICAgIC8vIEFzIHRoZSB2YWx1ZSByZXByZXNlbnRzIHRoZSB3aG9sZSBpbml0aWFsaXplciBvZiBhIHZhcmlhYmxlIGRlY2xhcmF0aW9uLFxuICAgICAgICAgICAgLy8ganVzdCByZWZlciB0byB0aGF0IHZhcmlhYmxlLiBUaGlzIGUuZy4gaGVscHMgdG8gcHJlc2VydmUgY2xvc3VyZSBjb21tZW50c1xuICAgICAgICAgICAgLy8gYXQgdGhlIHJpZ2h0IHBsYWNlLlxuICAgICAgICAgICAgY29uc3QgdmFyUGFyZW50ID0gb3JpZ2luYWxQYXJlbnQgYXMgdHMuVmFyaWFibGVEZWNsYXJhdGlvbjtcbiAgICAgICAgICAgIGlmICh2YXJQYXJlbnQubmFtZS5raW5kID09PSB0cy5TeW50YXhLaW5kLklkZW50aWZpZXIpIHtcbiAgICAgICAgICAgICAgY29uc3QgdmFyTmFtZSA9IHZhclBhcmVudC5uYW1lLnRleHQ7XG4gICAgICAgICAgICAgIGNvbnN0IGV4cG9ydE5hbWUgPSBub2RlUmVxdWVzdC5uYW1lO1xuICAgICAgICAgICAgICBkZWNsYXJhdGlvbnMucHVzaCh7XG4gICAgICAgICAgICAgICAgbmFtZTogZXhwb3J0TmFtZSxcbiAgICAgICAgICAgICAgICBub2RlOiB0cy5jcmVhdGVJZGVudGlmaWVyKHZhck5hbWUpLFxuICAgICAgICAgICAgICAgIG9yZGVyOiBEZWNsYXJhdGlvbk9yZGVyLkFmdGVyU3RtdFxuICAgICAgICAgICAgICB9KTtcbiAgICAgICAgICAgICAgcmV0dXJuIG5vZGU7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICAgIC8vIFJlY29yZCB0aGF0IHRoZSBub2RlIG5lZWRzIHRvIGJlIG1vdmVkIHRvIGFuIGV4cG9ydGVkIHZhcmlhYmxlIHdpdGggdGhlIGdpdmVuIG5hbWVcbiAgICAgICAgICBjb25zdCBleHBvcnROYW1lID0gbm9kZVJlcXVlc3QubmFtZTtcbiAgICAgICAgICBkZWNsYXJhdGlvbnMucHVzaCh7bmFtZTogZXhwb3J0TmFtZSwgbm9kZSwgb3JkZXI6IERlY2xhcmF0aW9uT3JkZXIuQmVmb3JlU3RtdH0pO1xuICAgICAgICAgIHJldHVybiB0cy5jcmVhdGVJZGVudGlmaWVyKGV4cG9ydE5hbWUpO1xuICAgICAgICB9XG4gICAgICAgIGxldCByZXN1bHQgPSBub2RlO1xuICAgICAgICBpZiAoc2hvdWxkVmlzaXQocG9zLCBlbmQpICYmICFpc0xleGljYWxTY29wZShub2RlKSkge1xuICAgICAgICAgIHJlc3VsdCA9IHRzLnZpc2l0RWFjaENoaWxkKG5vZGUsIHZpc2l0Tm9kZSwgY29udGV4dCk7XG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuIHJlc3VsdDtcbiAgICAgIH1cblxuICAgICAgLy8gR2V0IHRoZSBvcmlnaW5hbCBub2RlIGJlZm9yZSB0c2lja2xlXG4gICAgICBjb25zdCB7cG9zLCBlbmR9ID0gdHMuZ2V0T3JpZ2luYWxOb2RlKG5vZGUpO1xuICAgICAgbGV0IHJlc3VsdFN0bXQ6IHRzLlN0YXRlbWVudDtcbiAgICAgIGlmIChzaG91bGRWaXNpdChwb3MsIGVuZCkpIHtcbiAgICAgICAgcmVzdWx0U3RtdCA9IHRzLnZpc2l0RWFjaENoaWxkKG5vZGUsIHZpc2l0Tm9kZSwgY29udGV4dCk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICByZXN1bHRTdG10ID0gbm9kZTtcbiAgICAgIH1cblxuICAgICAgaWYgKGRlY2xhcmF0aW9ucy5sZW5ndGgpIHtcbiAgICAgICAgaW5zZXJ0cy5wdXNoKHtyZWxhdGl2ZVRvOiByZXN1bHRTdG10LCBkZWNsYXJhdGlvbnN9KTtcbiAgICAgIH1cbiAgICAgIHJldHVybiByZXN1bHRTdG10O1xuICAgIH1cblxuICAgIGxldCBuZXdTdGF0ZW1lbnRzID0gc291cmNlRmlsZS5zdGF0ZW1lbnRzLm1hcCh0b3BMZXZlbFN0YXRlbWVudCk7XG5cbiAgICBpZiAoaW5zZXJ0cy5sZW5ndGgpIHtcbiAgICAgIC8vIEluc2VydCB0aGUgZGVjbGFyYXRpb25zIHJlbGF0aXZlIHRvIHRoZSByZXdyaXR0ZW4gc3RhdGVtZW50IHRoYXQgcmVmZXJlbmNlcyB0aGVtLlxuICAgICAgY29uc3QgaW5zZXJ0TWFwID0gdG9NYXAoaW5zZXJ0cywgaSA9PiBpLnJlbGF0aXZlVG8pO1xuICAgICAgY29uc3QgdG1wU3RhdGVtZW50czogdHMuU3RhdGVtZW50W10gPSBbXTtcbiAgICAgIG5ld1N0YXRlbWVudHMuZm9yRWFjaChzdGF0ZW1lbnQgPT4ge1xuICAgICAgICBjb25zdCBpbnNlcnQgPSBpbnNlcnRNYXAuZ2V0KHN0YXRlbWVudCk7XG4gICAgICAgIGlmIChpbnNlcnQpIHtcbiAgICAgICAgICBjb25zdCBiZWZvcmUgPSBpbnNlcnQuZGVjbGFyYXRpb25zLmZpbHRlcihkID0+IGQub3JkZXIgPT09IERlY2xhcmF0aW9uT3JkZXIuQmVmb3JlU3RtdCk7XG4gICAgICAgICAgaWYgKGJlZm9yZS5sZW5ndGgpIHtcbiAgICAgICAgICAgIHRtcFN0YXRlbWVudHMucHVzaChjcmVhdGVWYXJpYWJsZVN0YXRlbWVudEZvckRlY2xhcmF0aW9ucyhiZWZvcmUpKTtcbiAgICAgICAgICB9XG4gICAgICAgICAgdG1wU3RhdGVtZW50cy5wdXNoKHN0YXRlbWVudCk7XG4gICAgICAgICAgY29uc3QgYWZ0ZXIgPSBpbnNlcnQuZGVjbGFyYXRpb25zLmZpbHRlcihkID0+IGQub3JkZXIgPT09IERlY2xhcmF0aW9uT3JkZXIuQWZ0ZXJTdG10KTtcbiAgICAgICAgICBpZiAoYWZ0ZXIubGVuZ3RoKSB7XG4gICAgICAgICAgICB0bXBTdGF0ZW1lbnRzLnB1c2goY3JlYXRlVmFyaWFibGVTdGF0ZW1lbnRGb3JEZWNsYXJhdGlvbnMoYWZ0ZXIpKTtcbiAgICAgICAgICB9XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdG1wU3RhdGVtZW50cy5wdXNoKHN0YXRlbWVudCk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuXG4gICAgICAvLyBJbnNlcnQgYW4gZXhwb3J0cyBjbGF1c2UgdG8gZXhwb3J0IHRoZSBkZWNsYXJhdGlvbnNcbiAgICAgIHRtcFN0YXRlbWVudHMucHVzaCh0cy5jcmVhdGVFeHBvcnREZWNsYXJhdGlvbihcbiAgICAgICAgICAvKiBkZWNvcmF0b3JzICovIHVuZGVmaW5lZCxcbiAgICAgICAgICAvKiBtb2RpZmllcnMgKi8gdW5kZWZpbmVkLFxuICAgICAgICAgIHRzLmNyZWF0ZU5hbWVkRXhwb3J0cyhcbiAgICAgICAgICAgICAgaW5zZXJ0c1xuICAgICAgICAgICAgICAgICAgLnJlZHVjZShcbiAgICAgICAgICAgICAgICAgICAgICAoYWNjdW11bGF0b3IsIGluc2VydCkgPT4gWy4uLmFjY3VtdWxhdG9yLCAuLi5pbnNlcnQuZGVjbGFyYXRpb25zXSxcbiAgICAgICAgICAgICAgICAgICAgICBbXSBhcyBEZWNsYXJhdGlvbltdKVxuICAgICAgICAgICAgICAgICAgLm1hcChcbiAgICAgICAgICAgICAgICAgICAgICBkZWNsYXJhdGlvbiA9PiB0cy5jcmVhdGVFeHBvcnRTcGVjaWZpZXIoXG4gICAgICAgICAgICAgICAgICAgICAgICAgIC8qIHByb3BlcnR5TmFtZSAqLyB1bmRlZmluZWQsIGRlY2xhcmF0aW9uLm5hbWUpKSkpKTtcblxuICAgICAgbmV3U3RhdGVtZW50cyA9IHRtcFN0YXRlbWVudHM7XG4gICAgfVxuICAgIC8vIE5vdGU6IFdlIGNhbm5vdCB1c2UgdHMudXBkYXRlU291cmNlZmlsZSBoZXJlIGFzXG4gICAgLy8gaXQgZG9lcyBub3Qgd29yayB3ZWxsIHdpdGggZGVjb3JhdG9ycy5cbiAgICAvLyBTZWUgaHR0cHM6Ly9naXRodWIuY29tL01pY3Jvc29mdC9UeXBlU2NyaXB0L2lzc3Vlcy8xNzM4NFxuICAgIGNvbnN0IG5ld1NmID0gdHMuZ2V0TXV0YWJsZUNsb25lKHNvdXJjZUZpbGUpO1xuICAgIGlmICghKHNvdXJjZUZpbGUuZmxhZ3MgJiB0cy5Ob2RlRmxhZ3MuU3ludGhlc2l6ZWQpKSB7XG4gICAgICBuZXdTZi5mbGFncyAmPSB+dHMuTm9kZUZsYWdzLlN5bnRoZXNpemVkO1xuICAgIH1cbiAgICBuZXdTZi5zdGF0ZW1lbnRzID0gdHMuc2V0VGV4dFJhbmdlKHRzLmNyZWF0ZU5vZGVBcnJheShuZXdTdGF0ZW1lbnRzKSwgc291cmNlRmlsZS5zdGF0ZW1lbnRzKTtcbiAgICByZXR1cm4gbmV3U2Y7XG4gIH1cblxuICByZXR1cm4gdmlzaXRTb3VyY2VGaWxlKHNvdXJjZUZpbGUpO1xufVxuXG5mdW5jdGlvbiBjcmVhdGVWYXJpYWJsZVN0YXRlbWVudEZvckRlY2xhcmF0aW9ucyhkZWNsYXJhdGlvbnM6IERlY2xhcmF0aW9uW10pOiB0cy5WYXJpYWJsZVN0YXRlbWVudCB7XG4gIGNvbnN0IHZhckRlY2xzID0gZGVjbGFyYXRpb25zLm1hcChcbiAgICAgIGkgPT4gdHMuY3JlYXRlVmFyaWFibGVEZWNsYXJhdGlvbihpLm5hbWUsIC8qIHR5cGUgKi8gdW5kZWZpbmVkLCBpLm5vZGUgYXMgdHMuRXhwcmVzc2lvbikpO1xuICByZXR1cm4gdHMuY3JlYXRlVmFyaWFibGVTdGF0ZW1lbnQoXG4gICAgICAvKiBtb2RpZmllcnMgKi8gdW5kZWZpbmVkLCB0cy5jcmVhdGVWYXJpYWJsZURlY2xhcmF0aW9uTGlzdCh2YXJEZWNscywgdHMuTm9kZUZsYWdzLkNvbnN0KSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRFeHByZXNzaW9uTG93ZXJpbmdUcmFuc2Zvcm1GYWN0b3J5KFxuICAgIHJlcXVlc3RzTWFwOiBSZXF1ZXN0c01hcCwgcHJvZ3JhbTogdHMuUHJvZ3JhbSk6IChjb250ZXh0OiB0cy5UcmFuc2Zvcm1hdGlvbkNvbnRleHQpID0+XG4gICAgKHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUpID0+IHRzLlNvdXJjZUZpbGUge1xuICAvLyBSZXR1cm4gdGhlIGZhY3RvcnlcbiAgcmV0dXJuIChjb250ZXh0OiB0cy5UcmFuc2Zvcm1hdGlvbkNvbnRleHQpID0+IChzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlKTogdHMuU291cmNlRmlsZSA9PiB7XG4gICAgLy8gV2UgbmVlZCB0byB1c2UgdGhlIG9yaWdpbmFsIFNvdXJjZUZpbGUgZm9yIHJlYWRpbmcgbWV0YWRhdGEsIGFuZCBub3QgdGhlIHRyYW5zZm9ybWVkIG9uZS5cbiAgICBjb25zdCBvcmlnaW5hbEZpbGUgPSBwcm9ncmFtLmdldFNvdXJjZUZpbGUoc291cmNlRmlsZS5maWxlTmFtZSk7XG4gICAgaWYgKG9yaWdpbmFsRmlsZSkge1xuICAgICAgY29uc3QgcmVxdWVzdHMgPSByZXF1ZXN0c01hcC5nZXRSZXF1ZXN0cyhvcmlnaW5hbEZpbGUpO1xuICAgICAgaWYgKHJlcXVlc3RzICYmIHJlcXVlc3RzLnNpemUpIHtcbiAgICAgICAgcmV0dXJuIHRyYW5zZm9ybVNvdXJjZUZpbGUoc291cmNlRmlsZSwgcmVxdWVzdHMsIGNvbnRleHQpO1xuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4gc291cmNlRmlsZTtcbiAgfTtcbn1cblxuZXhwb3J0IGludGVyZmFjZSBSZXF1ZXN0c01hcCB7XG4gIGdldFJlcXVlc3RzKHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUpOiBSZXF1ZXN0TG9jYXRpb25NYXA7XG59XG5cbmludGVyZmFjZSBNZXRhZGF0YUFuZExvd2VyaW5nUmVxdWVzdHMge1xuICBtZXRhZGF0YTogTW9kdWxlTWV0YWRhdGF8dW5kZWZpbmVkO1xuICByZXF1ZXN0czogUmVxdWVzdExvY2F0aW9uTWFwO1xufVxuXG5mdW5jdGlvbiBpc0VsaWdpYmxlRm9yTG93ZXJpbmcobm9kZTogdHMuTm9kZXx1bmRlZmluZWQpOiBib29sZWFuIHtcbiAgaWYgKG5vZGUpIHtcbiAgICBzd2l0Y2ggKG5vZGUua2luZCkge1xuICAgICAgY2FzZSB0cy5TeW50YXhLaW5kLlNvdXJjZUZpbGU6XG4gICAgICBjYXNlIHRzLlN5bnRheEtpbmQuRGVjb3JhdG9yOlxuICAgICAgICAvLyBMb3dlciBleHByZXNzaW9ucyB0aGF0IGFyZSBsb2NhbCB0byB0aGUgbW9kdWxlIHNjb3BlIG9yXG4gICAgICAgIC8vIGluIGEgZGVjb3JhdG9yLlxuICAgICAgICByZXR1cm4gdHJ1ZTtcbiAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5DbGFzc0RlY2xhcmF0aW9uOlxuICAgICAgY2FzZSB0cy5TeW50YXhLaW5kLkludGVyZmFjZURlY2xhcmF0aW9uOlxuICAgICAgY2FzZSB0cy5TeW50YXhLaW5kLkVudW1EZWNsYXJhdGlvbjpcbiAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5GdW5jdGlvbkRlY2xhcmF0aW9uOlxuICAgICAgICAvLyBEb24ndCBsb3dlciBleHByZXNzaW9ucyBpbiBhIGRlY2xhcmF0aW9uLlxuICAgICAgICByZXR1cm4gZmFsc2U7XG4gICAgICBjYXNlIHRzLlN5bnRheEtpbmQuVmFyaWFibGVEZWNsYXJhdGlvbjpcbiAgICAgICAgY29uc3QgaXNFeHBvcnRlZCA9ICh0cy5nZXRDb21iaW5lZE1vZGlmaWVyRmxhZ3Mobm9kZSBhcyB0cy5WYXJpYWJsZURlY2xhcmF0aW9uKSAmXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgdHMuTW9kaWZpZXJGbGFncy5FeHBvcnQpID09IDA7XG4gICAgICAgIC8vIFRoaXMgbWlnaHQgYmUgdW5uZWNlc3NhcnksIGFzIHRoZSB2YXJpYWJsZSBtaWdodCBiZSBleHBvcnRlZCBhbmQgb25seSB1c2VkIGFzIGEgcmVmZXJlbmNlXG4gICAgICAgIC8vIGluIGFub3RoZXIgZXhwcmVzc2lvbi4gSG93ZXZlciwgdGhlIHZhcmlhYmxlIGFsc28gbWlnaHQgYmUgaW52b2x2ZWQgaW4gcHJvdmlkZXJcbiAgICAgICAgLy8gZGVmaW5pdGlvbnMuIElmIHRoYXQncyB0aGUgY2FzZSwgdGhlcmUgaXMgYSBzcGVjaWZpYyB0b2tlbiAoYFJPVVRFU2ApIHdoaWNoIHRoZSBjb21waWxlclxuICAgICAgICAvLyBhdHRlbXB0cyB0byB1bmRlcnN0YW5kIGRlZXBseS4gU3ViLWV4cHJlc3Npb25zIHdpdGhpbiB0aGF0IHRva2VuIChgbG9hZENoaWxkcmVuYCBmb3JcbiAgICAgICAgLy8gZXhhbXBsZSkgbWlnaHQgYWxzbyByZXF1aXJlIGxvd2VyaW5nIGV2ZW4gaWYgdGhlIHRvcC1sZXZlbCBkZWNsYXJhdGlvbiBpcyBhbHJlYWR5XG4gICAgICAgIC8vIHByb3Blcmx5IGV4cG9ydGVkLlxuICAgICAgICBjb25zdCB2YXJOb2RlID0gbm9kZSBhcyB0cy5WYXJpYWJsZURlY2xhcmF0aW9uO1xuICAgICAgICByZXR1cm4gaXNFeHBvcnRlZCB8fFxuICAgICAgICAgICAgKHZhck5vZGUuaW5pdGlhbGl6ZXIgIT09IHVuZGVmaW5lZCAmJlxuICAgICAgICAgICAgICh0cy5pc09iamVjdExpdGVyYWxFeHByZXNzaW9uKHZhck5vZGUuaW5pdGlhbGl6ZXIpIHx8XG4gICAgICAgICAgICAgIHRzLmlzQXJyYXlMaXRlcmFsRXhwcmVzc2lvbih2YXJOb2RlLmluaXRpYWxpemVyKSB8fFxuICAgICAgICAgICAgICB0cy5pc0NhbGxFeHByZXNzaW9uKHZhck5vZGUuaW5pdGlhbGl6ZXIpKSk7XG4gICAgfVxuICAgIHJldHVybiBpc0VsaWdpYmxlRm9yTG93ZXJpbmcobm9kZS5wYXJlbnQpO1xuICB9XG4gIHJldHVybiB0cnVlO1xufVxuXG5mdW5jdGlvbiBpc1ByaW1pdGl2ZSh2YWx1ZTogYW55KTogYm9vbGVhbiB7XG4gIHJldHVybiBPYmplY3QodmFsdWUpICE9PSB2YWx1ZTtcbn1cblxuZnVuY3Rpb24gaXNSZXdyaXR0ZW4odmFsdWU6IGFueSk6IGJvb2xlYW4ge1xuICByZXR1cm4gaXNNZXRhZGF0YUdsb2JhbFJlZmVyZW5jZUV4cHJlc3Npb24odmFsdWUpICYmIGlzTG93ZXJlZFN5bWJvbCh2YWx1ZS5uYW1lKTtcbn1cblxuZnVuY3Rpb24gaXNMaXRlcmFsRmllbGROYW1lZChub2RlOiB0cy5Ob2RlLCBuYW1lczogU2V0PHN0cmluZz4pOiBib29sZWFuIHtcbiAgaWYgKG5vZGUucGFyZW50ICYmIG5vZGUucGFyZW50LmtpbmQgPT0gdHMuU3ludGF4S2luZC5Qcm9wZXJ0eUFzc2lnbm1lbnQpIHtcbiAgICBjb25zdCBwcm9wZXJ0eSA9IG5vZGUucGFyZW50IGFzIHRzLlByb3BlcnR5QXNzaWdubWVudDtcbiAgICBpZiAocHJvcGVydHkucGFyZW50ICYmIHByb3BlcnR5LnBhcmVudC5raW5kID09IHRzLlN5bnRheEtpbmQuT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24gJiZcbiAgICAgICAgcHJvcGVydHkubmFtZSAmJiBwcm9wZXJ0eS5uYW1lLmtpbmQgPT0gdHMuU3ludGF4S2luZC5JZGVudGlmaWVyKSB7XG4gICAgICBjb25zdCBwcm9wZXJ0eU5hbWUgPSBwcm9wZXJ0eS5uYW1lIGFzIHRzLklkZW50aWZpZXI7XG4gICAgICByZXR1cm4gbmFtZXMuaGFzKHByb3BlcnR5TmFtZS50ZXh0KTtcbiAgICB9XG4gIH1cbiAgcmV0dXJuIGZhbHNlO1xufVxuXG5leHBvcnQgY2xhc3MgTG93ZXJNZXRhZGF0YVRyYW5zZm9ybSBpbXBsZW1lbnRzIFJlcXVlc3RzTWFwLCBNZXRhZGF0YVRyYW5zZm9ybWVyIHtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIHByaXZhdGUgY2FjaGUhOiBNZXRhZGF0YUNhY2hlO1xuICBwcml2YXRlIHJlcXVlc3RzID0gbmV3IE1hcDxzdHJpbmcsIFJlcXVlc3RMb2NhdGlvbk1hcD4oKTtcbiAgcHJpdmF0ZSBsb3dlcmFibGVGaWVsZE5hbWVzOiBTZXQ8c3RyaW5nPjtcblxuICBjb25zdHJ1Y3Rvcihsb3dlcmFibGVGaWVsZE5hbWVzOiBzdHJpbmdbXSkge1xuICAgIHRoaXMubG93ZXJhYmxlRmllbGROYW1lcyA9IG5ldyBTZXQ8c3RyaW5nPihsb3dlcmFibGVGaWVsZE5hbWVzKTtcbiAgfVxuXG4gIC8vIFJlcXVlc3RNYXBcbiAgZ2V0UmVxdWVzdHMoc291cmNlRmlsZTogdHMuU291cmNlRmlsZSk6IFJlcXVlc3RMb2NhdGlvbk1hcCB7XG4gICAgbGV0IHJlc3VsdCA9IHRoaXMucmVxdWVzdHMuZ2V0KHNvdXJjZUZpbGUuZmlsZU5hbWUpO1xuICAgIGlmICghcmVzdWx0KSB7XG4gICAgICAvLyBGb3JjZSB0aGUgbWV0YWRhdGEgZm9yIHRoaXMgc291cmNlIGZpbGUgdG8gYmUgY29sbGVjdGVkIHdoaWNoXG4gICAgICAvLyB3aWxsIHJlY3Vyc2l2ZWx5IGNhbGwgc3RhcnQoKSBwb3B1bGF0aW5nIHRoZSByZXF1ZXN0IG1hcDtcbiAgICAgIHRoaXMuY2FjaGUuZ2V0TWV0YWRhdGEoc291cmNlRmlsZSk7XG5cbiAgICAgIC8vIElmIHdlIHN0aWxsIGRvbid0IGhhdmUgdGhlIHJlcXVlc3RlZCBtZXRhZGF0YSwgdGhlIGZpbGUgaXMgbm90IGEgbW9kdWxlXG4gICAgICAvLyBvciBpcyBhIGRlY2xhcmF0aW9uIGZpbGUgc28gcmV0dXJuIGFuIGVtcHR5IG1hcC5cbiAgICAgIHJlc3VsdCA9IHRoaXMucmVxdWVzdHMuZ2V0KHNvdXJjZUZpbGUuZmlsZU5hbWUpIHx8IG5ldyBNYXA8bnVtYmVyLCBMb3dlcmluZ1JlcXVlc3Q+KCk7XG4gICAgfVxuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICAvLyBNZXRhZGF0YVRyYW5zZm9ybWVyXG4gIGNvbm5lY3QoY2FjaGU6IE1ldGFkYXRhQ2FjaGUpOiB2b2lkIHtcbiAgICB0aGlzLmNhY2hlID0gY2FjaGU7XG4gIH1cblxuICBzdGFydChzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlKTogVmFsdWVUcmFuc2Zvcm18dW5kZWZpbmVkIHtcbiAgICBsZXQgaWRlbnROdW1iZXIgPSAwO1xuICAgIGNvbnN0IGZyZXNoSWRlbnQgPSAoKSA9PiBjcmVhdGVMb3dlcmVkU3ltYm9sKGlkZW50TnVtYmVyKyspO1xuICAgIGNvbnN0IHJlcXVlc3RzID0gbmV3IE1hcDxudW1iZXIsIExvd2VyaW5nUmVxdWVzdD4oKTtcbiAgICB0aGlzLnJlcXVlc3RzLnNldChzb3VyY2VGaWxlLmZpbGVOYW1lLCByZXF1ZXN0cyk7XG5cbiAgICBjb25zdCByZXBsYWNlTm9kZSA9IChub2RlOiB0cy5Ob2RlKSA9PiB7XG4gICAgICBjb25zdCBuYW1lID0gZnJlc2hJZGVudCgpO1xuICAgICAgcmVxdWVzdHMuc2V0KG5vZGUucG9zLCB7bmFtZSwga2luZDogbm9kZS5raW5kLCBsb2NhdGlvbjogbm9kZS5wb3MsIGVuZDogbm9kZS5lbmR9KTtcbiAgICAgIHJldHVybiB7X19zeW1ib2xpYzogJ3JlZmVyZW5jZScsIG5hbWV9O1xuICAgIH07XG5cbiAgICBjb25zdCBpc0V4cG9ydGVkU3ltYm9sID0gKCgpID0+IHtcbiAgICAgIGxldCBleHBvcnRUYWJsZTogU2V0PHN0cmluZz47XG4gICAgICByZXR1cm4gKG5vZGU6IHRzLk5vZGUpID0+IHtcbiAgICAgICAgaWYgKG5vZGUua2luZCA9PSB0cy5TeW50YXhLaW5kLklkZW50aWZpZXIpIHtcbiAgICAgICAgICBjb25zdCBpZGVudCA9IG5vZGUgYXMgdHMuSWRlbnRpZmllcjtcblxuICAgICAgICAgIGlmICghZXhwb3J0VGFibGUpIHtcbiAgICAgICAgICAgIGV4cG9ydFRhYmxlID0gY3JlYXRlRXhwb3J0VGFibGVGb3Ioc291cmNlRmlsZSk7XG4gICAgICAgICAgfVxuICAgICAgICAgIHJldHVybiBleHBvcnRUYWJsZS5oYXMoaWRlbnQudGV4dCk7XG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuIGZhbHNlO1xuICAgICAgfTtcbiAgICB9KSgpO1xuXG4gICAgY29uc3QgaXNFeHBvcnRlZFByb3BlcnR5QWNjZXNzID0gKG5vZGU6IHRzLk5vZGUpID0+IHtcbiAgICAgIGlmIChub2RlLmtpbmQgPT09IHRzLlN5bnRheEtpbmQuUHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uKSB7XG4gICAgICAgIGNvbnN0IHBhZSA9IG5vZGUgYXMgdHMuUHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uO1xuICAgICAgICBpZiAoaXNFeHBvcnRlZFN5bWJvbChwYWUuZXhwcmVzc2lvbikpIHtcbiAgICAgICAgICByZXR1cm4gdHJ1ZTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgICAgcmV0dXJuIGZhbHNlO1xuICAgIH07XG5cbiAgICBjb25zdCBoYXNMb3dlcmFibGVQYXJlbnRDYWNoZSA9IG5ldyBNYXA8dHMuTm9kZSwgYm9vbGVhbj4oKTtcblxuICAgIGNvbnN0IHNob3VsZEJlTG93ZXJlZCA9IChub2RlOiB0cy5Ob2RlfHVuZGVmaW5lZCk6IGJvb2xlYW4gPT4ge1xuICAgICAgaWYgKG5vZGUgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICByZXR1cm4gZmFsc2U7XG4gICAgICB9XG4gICAgICBsZXQgbG93ZXJhYmxlOiBib29sZWFuID0gZmFsc2U7XG4gICAgICBpZiAoKG5vZGUua2luZCA9PT0gdHMuU3ludGF4S2luZC5BcnJvd0Z1bmN0aW9uIHx8XG4gICAgICAgICAgIG5vZGUua2luZCA9PT0gdHMuU3ludGF4S2luZC5GdW5jdGlvbkV4cHJlc3Npb24pICYmXG4gICAgICAgICAgaXNFbGlnaWJsZUZvckxvd2VyaW5nKG5vZGUpKSB7XG4gICAgICAgIGxvd2VyYWJsZSA9IHRydWU7XG4gICAgICB9IGVsc2UgaWYgKFxuICAgICAgICAgIGlzTGl0ZXJhbEZpZWxkTmFtZWQobm9kZSwgdGhpcy5sb3dlcmFibGVGaWVsZE5hbWVzKSAmJiBpc0VsaWdpYmxlRm9yTG93ZXJpbmcobm9kZSkgJiZcbiAgICAgICAgICAhaXNFeHBvcnRlZFN5bWJvbChub2RlKSAmJiAhaXNFeHBvcnRlZFByb3BlcnR5QWNjZXNzKG5vZGUpKSB7XG4gICAgICAgIGxvd2VyYWJsZSA9IHRydWU7XG4gICAgICB9XG4gICAgICByZXR1cm4gbG93ZXJhYmxlO1xuICAgIH07XG5cbiAgICBjb25zdCBoYXNMb3dlcmFibGVQYXJlbnQgPSAobm9kZTogdHMuTm9kZXx1bmRlZmluZWQpOiBib29sZWFuID0+IHtcbiAgICAgIGlmIChub2RlID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgcmV0dXJuIGZhbHNlO1xuICAgICAgfVxuICAgICAgaWYgKCFoYXNMb3dlcmFibGVQYXJlbnRDYWNoZS5oYXMobm9kZSkpIHtcbiAgICAgICAgaGFzTG93ZXJhYmxlUGFyZW50Q2FjaGUuc2V0KFxuICAgICAgICAgICAgbm9kZSwgc2hvdWxkQmVMb3dlcmVkKG5vZGUucGFyZW50KSB8fCBoYXNMb3dlcmFibGVQYXJlbnQobm9kZS5wYXJlbnQpKTtcbiAgICAgIH1cbiAgICAgIHJldHVybiBoYXNMb3dlcmFibGVQYXJlbnRDYWNoZS5nZXQobm9kZSkhO1xuICAgIH07XG5cbiAgICBjb25zdCBpc0xvd2VyYWJsZSA9IChub2RlOiB0cy5Ob2RlfHVuZGVmaW5lZCk6IGJvb2xlYW4gPT4ge1xuICAgICAgaWYgKG5vZGUgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICByZXR1cm4gZmFsc2U7XG4gICAgICB9XG4gICAgICByZXR1cm4gc2hvdWxkQmVMb3dlcmVkKG5vZGUpICYmICFoYXNMb3dlcmFibGVQYXJlbnQobm9kZSk7XG4gICAgfTtcblxuICAgIHJldHVybiAodmFsdWU6IE1ldGFkYXRhVmFsdWUsIG5vZGU6IHRzLk5vZGUpOiBNZXRhZGF0YVZhbHVlID0+IHtcbiAgICAgIGlmICghaXNQcmltaXRpdmUodmFsdWUpICYmICFpc1Jld3JpdHRlbih2YWx1ZSkgJiYgaXNMb3dlcmFibGUobm9kZSkpIHtcbiAgICAgICAgcmV0dXJuIHJlcGxhY2VOb2RlKG5vZGUpO1xuICAgICAgfVxuICAgICAgcmV0dXJuIHZhbHVlO1xuICAgIH07XG4gIH1cbn1cblxuZnVuY3Rpb24gY3JlYXRlRXhwb3J0VGFibGVGb3Ioc291cmNlRmlsZTogdHMuU291cmNlRmlsZSk6IFNldDxzdHJpbmc+IHtcbiAgY29uc3QgZXhwb3J0VGFibGUgPSBuZXcgU2V0PHN0cmluZz4oKTtcbiAgLy8gTGF6aWx5IGNvbGxlY3QgYWxsIHRoZSBleHBvcnRzIGZyb20gdGhlIHNvdXJjZSBmaWxlXG4gIHRzLmZvckVhY2hDaGlsZChzb3VyY2VGaWxlLCBmdW5jdGlvbiBzY2FuKG5vZGUpIHtcbiAgICBzd2l0Y2ggKG5vZGUua2luZCkge1xuICAgICAgY2FzZSB0cy5TeW50YXhLaW5kLkNsYXNzRGVjbGFyYXRpb246XG4gICAgICBjYXNlIHRzLlN5bnRheEtpbmQuRnVuY3Rpb25EZWNsYXJhdGlvbjpcbiAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5JbnRlcmZhY2VEZWNsYXJhdGlvbjpcbiAgICAgICAgaWYgKCh0cy5nZXRDb21iaW5lZE1vZGlmaWVyRmxhZ3Mobm9kZSBhcyB0cy5EZWNsYXJhdGlvbikgJiB0cy5Nb2RpZmllckZsYWdzLkV4cG9ydCkgIT0gMCkge1xuICAgICAgICAgIGNvbnN0IGNsYXNzRGVjbGFyYXRpb24gPVxuICAgICAgICAgICAgICBub2RlIGFzICh0cy5DbGFzc0RlY2xhcmF0aW9uIHwgdHMuRnVuY3Rpb25EZWNsYXJhdGlvbiB8IHRzLkludGVyZmFjZURlY2xhcmF0aW9uKTtcbiAgICAgICAgICBjb25zdCBuYW1lID0gY2xhc3NEZWNsYXJhdGlvbi5uYW1lO1xuICAgICAgICAgIGlmIChuYW1lKSBleHBvcnRUYWJsZS5hZGQobmFtZS50ZXh0KTtcbiAgICAgICAgfVxuICAgICAgICBicmVhaztcbiAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5WYXJpYWJsZVN0YXRlbWVudDpcbiAgICAgICAgY29uc3QgdmFyaWFibGVTdGF0ZW1lbnQgPSBub2RlIGFzIHRzLlZhcmlhYmxlU3RhdGVtZW50O1xuICAgICAgICBmb3IgKGNvbnN0IGRlY2xhcmF0aW9uIG9mIHZhcmlhYmxlU3RhdGVtZW50LmRlY2xhcmF0aW9uTGlzdC5kZWNsYXJhdGlvbnMpIHtcbiAgICAgICAgICBzY2FuKGRlY2xhcmF0aW9uKTtcbiAgICAgICAgfVxuICAgICAgICBicmVhaztcbiAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5WYXJpYWJsZURlY2xhcmF0aW9uOlxuICAgICAgICBjb25zdCB2YXJpYWJsZURlY2xhcmF0aW9uID0gbm9kZSBhcyB0cy5WYXJpYWJsZURlY2xhcmF0aW9uO1xuICAgICAgICBpZiAoKHRzLmdldENvbWJpbmVkTW9kaWZpZXJGbGFncyh2YXJpYWJsZURlY2xhcmF0aW9uKSAmIHRzLk1vZGlmaWVyRmxhZ3MuRXhwb3J0KSAhPSAwICYmXG4gICAgICAgICAgICB2YXJpYWJsZURlY2xhcmF0aW9uLm5hbWUua2luZCA9PSB0cy5TeW50YXhLaW5kLklkZW50aWZpZXIpIHtcbiAgICAgICAgICBjb25zdCBuYW1lID0gdmFyaWFibGVEZWNsYXJhdGlvbi5uYW1lIGFzIHRzLklkZW50aWZpZXI7XG4gICAgICAgICAgZXhwb3J0VGFibGUuYWRkKG5hbWUudGV4dCk7XG4gICAgICAgIH1cbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIHRzLlN5bnRheEtpbmQuRXhwb3J0RGVjbGFyYXRpb246XG4gICAgICAgIGNvbnN0IGV4cG9ydERlY2xhcmF0aW9uID0gbm9kZSBhcyB0cy5FeHBvcnREZWNsYXJhdGlvbjtcbiAgICAgICAgY29uc3Qge21vZHVsZVNwZWNpZmllciwgZXhwb3J0Q2xhdXNlfSA9IGV4cG9ydERlY2xhcmF0aW9uO1xuICAgICAgICBpZiAoIW1vZHVsZVNwZWNpZmllciAmJiBleHBvcnRDbGF1c2UgJiYgdHMuaXNOYW1lZEV4cG9ydHMoZXhwb3J0Q2xhdXNlKSkge1xuICAgICAgICAgIGV4cG9ydENsYXVzZS5lbGVtZW50cy5mb3JFYWNoKHNwZWMgPT4ge1xuICAgICAgICAgICAgZXhwb3J0VGFibGUuYWRkKHNwZWMubmFtZS50ZXh0KTtcbiAgICAgICAgICB9KTtcbiAgICAgICAgfVxuICAgIH1cbiAgfSk7XG4gIHJldHVybiBleHBvcnRUYWJsZTtcbn1cbiJdfQ==