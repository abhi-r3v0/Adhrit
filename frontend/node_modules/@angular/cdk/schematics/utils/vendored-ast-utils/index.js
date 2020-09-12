"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.getAppModulePath = exports.findBootstrapModulePath = exports.findBootstrapModuleCall = exports.addEntryComponentToModule = exports.addExportToModule = exports.addImportToModule = exports.addDeclarationToModule = exports.addSymbolToNgModuleMetadata = exports.getMetadataField = exports.getDecoratorMetadata = exports.insertAfterLastOccurrence = exports.findNode = exports.getSourceNodes = exports.findNodes = exports.insertImport = void 0;
// tslint:disable
/*
 * Note: This file contains vendored TypeScript AST utils from "@schematics/angular".
 * Since there is no canonical place for common utils, and we don't want to use the AST
 * utils directly from "@schematics/angular" to avoid TypeScript version mismatches, we
 * copy the needed AST utils until there is a general place for such utility functions.
 *
 * Taken from:
 *   (1) https://github.com/angular/angular-cli/blob/30df1470a0f18989db336d50b55a79021ab64c85/packages/schematics/angular/utility/ng-ast-utils.ts
 *   (2) https://github.com/angular/angular-cli/blob/30df1470a0f18989db336d50b55a79021ab64c85/packages/schematics/angular/utility/ast-utils.ts
 */
const core_1 = require("@angular-devkit/core");
const schematics_1 = require("@angular-devkit/schematics");
const change_1 = require("@schematics/angular/utility/change");
const path_1 = require("path");
const ts = require("typescript");
/**
 * Add Import `import { symbolName } from fileName` if the import doesn't exit
 * already. Assumes fileToEdit can be resolved and accessed.
 * @param fileToEdit (file we want to add import to)
 * @param symbolName (item to import)
 * @param fileName (path to the file)
 * @param isDefault (if true, import follows style for importing default exports)
 * @return Change
 */
function insertImport(source, fileToEdit, symbolName, fileName, isDefault = false) {
    const rootNode = source;
    const allImports = findNodes(rootNode, ts.SyntaxKind.ImportDeclaration);
    // get nodes that map to import statements from the file fileName
    const relevantImports = allImports.filter(node => {
        // StringLiteral of the ImportDeclaration is the import file (fileName in this case).
        const importFiles = node.getChildren()
            .filter(child => child.kind === ts.SyntaxKind.StringLiteral)
            .map(n => n.text);
        return importFiles.filter(file => file === fileName).length === 1;
    });
    if (relevantImports.length > 0) {
        let importsAsterisk = false;
        // imports from import file
        const imports = [];
        relevantImports.forEach(n => {
            Array.prototype.push.apply(imports, findNodes(n, ts.SyntaxKind.Identifier));
            if (findNodes(n, ts.SyntaxKind.AsteriskToken).length > 0) {
                importsAsterisk = true;
            }
        });
        // if imports * from fileName, don't add symbolName
        if (importsAsterisk) {
            return new change_1.NoopChange();
        }
        const importTextNodes = imports.filter(n => n.text === symbolName);
        // insert import if it's not there
        if (importTextNodes.length === 0) {
            const fallbackPos = findNodes(relevantImports[0], ts.SyntaxKind.CloseBraceToken)[0].getStart() ||
                findNodes(relevantImports[0], ts.SyntaxKind.FromKeyword)[0].getStart();
            return insertAfterLastOccurrence(imports, `, ${symbolName}`, fileToEdit, fallbackPos);
        }
        return new change_1.NoopChange();
    }
    // no such import declaration exists
    const useStrict = findNodes(rootNode, ts.SyntaxKind.StringLiteral)
        .filter((n) => n.text === 'use strict');
    let fallbackPos = 0;
    if (useStrict.length > 0) {
        fallbackPos = useStrict[0].end;
    }
    const open = isDefault ? '' : '{ ';
    const close = isDefault ? '' : ' }';
    // if there are no imports or 'use strict' statement, insert import at beginning of file
    const insertAtBeginning = allImports.length === 0 && useStrict.length === 0;
    const separator = insertAtBeginning ? '' : ';\n';
    const toInsert = `${separator}import ${open}${symbolName}${close}` +
        ` from '${fileName}'${insertAtBeginning ? ';\n' : ''}`;
    return insertAfterLastOccurrence(allImports, toInsert, fileToEdit, fallbackPos, ts.SyntaxKind.StringLiteral);
}
exports.insertImport = insertImport;
/**
 * Find all nodes from the AST in the subtree of node of SyntaxKind kind.
 * @param node
 * @param kind
 * @param max The maximum number of items to return.
 * @param recursive Continue looking for nodes of kind recursive until end
 * the last child even when node of kind has been found.
 * @return all nodes of kind, or [] if none is found
 */
function findNodes(node, kind, max = Infinity, recursive = false) {
    if (!node || max == 0) {
        return [];
    }
    const arr = [];
    if (node.kind === kind) {
        arr.push(node);
        max--;
    }
    if (max > 0 && (recursive || node.kind !== kind)) {
        for (const child of node.getChildren()) {
            findNodes(child, kind, max).forEach(node => {
                if (max > 0) {
                    arr.push(node);
                }
                max--;
            });
            if (max <= 0) {
                break;
            }
        }
    }
    return arr;
}
exports.findNodes = findNodes;
/**
 * Get all the nodes from a source.
 * @param sourceFile The source file object.
 * @returns {Observable<ts.Node>} An observable of all the nodes in the source.
 */
function getSourceNodes(sourceFile) {
    const nodes = [sourceFile];
    const result = [];
    while (nodes.length > 0) {
        const node = nodes.shift();
        if (node) {
            result.push(node);
            if (node.getChildCount(sourceFile) >= 0) {
                nodes.unshift(...node.getChildren());
            }
        }
    }
    return result;
}
exports.getSourceNodes = getSourceNodes;
function findNode(node, kind, text) {
    if (node.kind === kind && node.getText() === text) {
        // throw new Error(node.getText());
        return node;
    }
    let foundNode = null;
    ts.forEachChild(node, childNode => {
        foundNode = foundNode || findNode(childNode, kind, text);
    });
    return foundNode;
}
exports.findNode = findNode;
/**
 * Helper for sorting nodes.
 * @return function to sort nodes in increasing order of position in sourceFile
 */
function nodesByPosition(first, second) {
    return first.getStart() - second.getStart();
}
/**
 * Insert `toInsert` after the last occurence of `ts.SyntaxKind[nodes[i].kind]`
 * or after the last of occurence of `syntaxKind` if the last occurence is a sub child
 * of ts.SyntaxKind[nodes[i].kind] and save the changes in file.
 *
 * @param nodes insert after the last occurence of nodes
 * @param toInsert string to insert
 * @param file file to insert changes into
 * @param fallbackPos position to insert if toInsert happens to be the first occurence
 * @param syntaxKind the ts.SyntaxKind of the subchildren to insert after
 * @return Change instance
 * @throw Error if toInsert is first occurence but fall back is not set
 */
function insertAfterLastOccurrence(nodes, toInsert, file, fallbackPos, syntaxKind) {
    let lastItem;
    for (const node of nodes) {
        if (!lastItem || lastItem.getStart() < node.getStart()) {
            lastItem = node;
        }
    }
    if (syntaxKind && lastItem) {
        lastItem = findNodes(lastItem, syntaxKind).sort(nodesByPosition).pop();
    }
    if (!lastItem && fallbackPos == undefined) {
        throw new Error(`tried to insert ${toInsert} as first occurence with no fallback position`);
    }
    const lastItemPosition = lastItem ? lastItem.getEnd() : fallbackPos;
    return new change_1.InsertChange(file, lastItemPosition, toInsert);
}
exports.insertAfterLastOccurrence = insertAfterLastOccurrence;
function _angularImportsFromNode(node, _sourceFile) {
    const ms = node.moduleSpecifier;
    let modulePath;
    switch (ms.kind) {
        case ts.SyntaxKind.StringLiteral:
            modulePath = ms.text;
            break;
        default:
            return {};
    }
    if (!modulePath.startsWith('@angular/')) {
        return {};
    }
    if (node.importClause) {
        if (node.importClause.name) {
            // This is of the form `import Name from 'path'`. Ignore.
            return {};
        }
        else if (node.importClause.namedBindings) {
            const nb = node.importClause.namedBindings;
            if (nb.kind == ts.SyntaxKind.NamespaceImport) {
                // This is of the form `import * as name from 'path'`. Return `name.`.
                return {
                    [nb.name.text + '.']: modulePath,
                };
            }
            else {
                // This is of the form `import {a,b,c} from 'path'`
                const namedImports = nb;
                return namedImports.elements
                    .map((is) => is.propertyName ? is.propertyName.text : is.name.text)
                    .reduce((acc, curr) => {
                    acc[curr] = modulePath;
                    return acc;
                }, {});
            }
        }
        return {};
    }
    else {
        // This is of the form `import 'path';`. Nothing to do.
        return {};
    }
}
function getDecoratorMetadata(source, identifier, module) {
    const angularImports = findNodes(source, ts.SyntaxKind.ImportDeclaration)
        .map((node) => _angularImportsFromNode(node, source))
        .reduce((acc, current) => {
        for (const key of Object.keys(current)) {
            acc[key] = current[key];
        }
        return acc;
    }, {});
    return getSourceNodes(source)
        .filter(node => {
        return node.kind == ts.SyntaxKind.Decorator
            && node.expression.kind == ts.SyntaxKind.CallExpression;
    })
        .map(node => node.expression)
        .filter(expr => {
        if (expr.expression.kind == ts.SyntaxKind.Identifier) {
            const id = expr.expression;
            return id.text == identifier && angularImports[id.text] === module;
        }
        else if (expr.expression.kind == ts.SyntaxKind.PropertyAccessExpression) {
            // This covers foo.NgModule when importing * as foo.
            const paExpr = expr.expression;
            // If the left expression is not an identifier, just give up at that point.
            if (paExpr.expression.kind !== ts.SyntaxKind.Identifier) {
                return false;
            }
            const id = paExpr.name.text;
            const moduleId = paExpr.expression.text;
            return id === identifier && (angularImports[moduleId + '.'] === module);
        }
        return false;
    })
        .filter(expr => expr.arguments[0]
        && expr.arguments[0].kind == ts.SyntaxKind.ObjectLiteralExpression)
        .map(expr => expr.arguments[0]);
}
exports.getDecoratorMetadata = getDecoratorMetadata;
function getMetadataField(node, metadataField) {
    return node.properties
        .filter(prop => ts.isPropertyAssignment(prop))
        // Filter out every fields that's not "metadataField". Also handles string literals
        // (but not expressions).
        .filter(({ name }) => {
        return (ts.isIdentifier(name) || ts.isStringLiteral(name))
            && name.getText() === metadataField;
    });
}
exports.getMetadataField = getMetadataField;
function addSymbolToNgModuleMetadata(source, ngModulePath, metadataField, symbolName, importPath = null) {
    const nodes = getDecoratorMetadata(source, 'NgModule', '@angular/core');
    let node = nodes[0]; // tslint:disable-line:no-any
    // Find the decorator declaration.
    if (!node) {
        return [];
    }
    // Get all the children property assignment of object literals.
    const matchingProperties = getMetadataField(node, metadataField);
    // Get the last node of the array literal.
    if (!matchingProperties) {
        return [];
    }
    if (matchingProperties.length == 0) {
        // We haven't found the field in the metadata declaration. Insert a new field.
        const expr = node;
        let position;
        let toInsert;
        if (expr.properties.length == 0) {
            position = expr.getEnd() - 1;
            toInsert = `  ${metadataField}: [${symbolName}]\n`;
        }
        else {
            node = expr.properties[expr.properties.length - 1];
            position = node.getEnd();
            // Get the indentation of the last element, if any.
            const text = node.getFullText(source);
            const matches = text.match(/^\r?\n\s*/);
            if (matches && matches.length > 0) {
                toInsert = `,${matches[0]}${metadataField}: [${symbolName}]`;
            }
            else {
                toInsert = `, ${metadataField}: [${symbolName}]`;
            }
        }
        if (importPath !== null) {
            return [
                new change_1.InsertChange(ngModulePath, position, toInsert),
                insertImport(source, ngModulePath, symbolName.replace(/\..*$/, ''), importPath),
            ];
        }
        else {
            return [new change_1.InsertChange(ngModulePath, position, toInsert)];
        }
    }
    const assignment = matchingProperties[0];
    // If it's not an array, nothing we can do really.
    if (assignment.initializer.kind !== ts.SyntaxKind.ArrayLiteralExpression) {
        return [];
    }
    const arrLiteral = assignment.initializer;
    if (arrLiteral.elements.length == 0) {
        // Forward the property.
        node = arrLiteral;
    }
    else {
        node = arrLiteral.elements;
    }
    if (!node) {
        // tslint:disable-next-line: no-console
        console.error('No app module found. Please add your new class to your component.');
        return [];
    }
    if (Array.isArray(node)) {
        const nodeArray = node;
        const symbolsArray = nodeArray.map(node => node.getText());
        if (symbolsArray.includes(symbolName)) {
            return [];
        }
        node = node[node.length - 1];
    }
    let toInsert;
    let position = node.getEnd();
    if (node.kind == ts.SyntaxKind.ObjectLiteralExpression) {
        // We haven't found the field in the metadata declaration. Insert a new
        // field.
        const expr = node;
        if (expr.properties.length == 0) {
            position = expr.getEnd() - 1;
            toInsert = `  ${symbolName}\n`;
        }
        else {
            // Get the indentation of the last element, if any.
            const text = node.getFullText(source);
            if (text.match(/^\r?\r?\n/)) {
                toInsert = `,${text.match(/^\r?\n\s*/)[0]}${symbolName}`;
            }
            else {
                toInsert = `, ${symbolName}`;
            }
        }
    }
    else if (node.kind == ts.SyntaxKind.ArrayLiteralExpression) {
        // We found the field but it's empty. Insert it just before the `]`.
        position--;
        toInsert = `${symbolName}`;
    }
    else {
        // Get the indentation of the last element, if any.
        const text = node.getFullText(source);
        if (text.match(/^\r?\n/)) {
            toInsert = `,${text.match(/^\r?\n(\r?)\s*/)[0]}${symbolName}`;
        }
        else {
            toInsert = `, ${symbolName}`;
        }
    }
    if (importPath !== null) {
        return [
            new change_1.InsertChange(ngModulePath, position, toInsert),
            insertImport(source, ngModulePath, symbolName.replace(/\..*$/, ''), importPath),
        ];
    }
    return [new change_1.InsertChange(ngModulePath, position, toInsert)];
}
exports.addSymbolToNgModuleMetadata = addSymbolToNgModuleMetadata;
/**
 * Custom function to insert a declaration (component, pipe, directive)
 * into NgModule declarations. It also imports the component.
 */
function addDeclarationToModule(source, modulePath, classifiedName, importPath) {
    return addSymbolToNgModuleMetadata(source, modulePath, 'declarations', classifiedName, importPath);
}
exports.addDeclarationToModule = addDeclarationToModule;
/**
 * Custom function to insert an NgModule into NgModule imports. It also imports the module.
 */
function addImportToModule(source, modulePath, classifiedName, importPath) {
    return addSymbolToNgModuleMetadata(source, modulePath, 'imports', classifiedName, importPath);
}
exports.addImportToModule = addImportToModule;
/**
 * Custom function to insert an export into NgModule. It also imports it.
 */
function addExportToModule(source, modulePath, classifiedName, importPath) {
    return addSymbolToNgModuleMetadata(source, modulePath, 'exports', classifiedName, importPath);
}
exports.addExportToModule = addExportToModule;
/**
 * Custom function to insert an entryComponent into NgModule. It also imports it.
 * @deprecated - Since version 9.0.0 with Ivy, entryComponents is no longer necessary.
 */
function addEntryComponentToModule(source, modulePath, classifiedName, importPath) {
    return addSymbolToNgModuleMetadata(source, modulePath, 'entryComponents', classifiedName, importPath);
}
exports.addEntryComponentToModule = addEntryComponentToModule;
function findBootstrapModuleCall(host, mainPath) {
    const mainBuffer = host.read(mainPath);
    if (!mainBuffer) {
        throw new schematics_1.SchematicsException(`Main file (${mainPath}) not found`);
    }
    const mainText = mainBuffer.toString('utf-8');
    const source = ts.createSourceFile(mainPath, mainText, ts.ScriptTarget.Latest, true);
    const allNodes = getSourceNodes(source);
    let bootstrapCall = null;
    for (const node of allNodes) {
        let bootstrapCallNode = null;
        bootstrapCallNode = findNode(node, ts.SyntaxKind.Identifier, 'bootstrapModule');
        // Walk up the parent until CallExpression is found.
        while (bootstrapCallNode && bootstrapCallNode.parent
            && bootstrapCallNode.parent.kind !== ts.SyntaxKind.CallExpression) {
            bootstrapCallNode = bootstrapCallNode.parent;
        }
        if (bootstrapCallNode !== null &&
            bootstrapCallNode.parent !== undefined &&
            bootstrapCallNode.parent.kind === ts.SyntaxKind.CallExpression) {
            bootstrapCall = bootstrapCallNode.parent;
            break;
        }
    }
    return bootstrapCall;
}
exports.findBootstrapModuleCall = findBootstrapModuleCall;
function findBootstrapModulePath(host, mainPath) {
    const bootstrapCall = findBootstrapModuleCall(host, mainPath);
    if (!bootstrapCall) {
        throw new schematics_1.SchematicsException('Bootstrap call not found');
    }
    const bootstrapModule = bootstrapCall.arguments[0];
    const mainBuffer = host.read(mainPath);
    if (!mainBuffer) {
        throw new schematics_1.SchematicsException(`Client app main file (${mainPath}) not found`);
    }
    const mainText = mainBuffer.toString('utf-8');
    const source = ts.createSourceFile(mainPath, mainText, ts.ScriptTarget.Latest, true);
    const allNodes = getSourceNodes(source);
    const bootstrapModuleRelativePath = allNodes
        .filter(node => node.kind === ts.SyntaxKind.ImportDeclaration)
        .filter(imp => {
        return findNode(imp, ts.SyntaxKind.Identifier, bootstrapModule.getText());
    })
        .map((imp) => {
        const modulePathStringLiteral = imp.moduleSpecifier;
        return modulePathStringLiteral.text;
    })[0];
    return bootstrapModuleRelativePath;
}
exports.findBootstrapModulePath = findBootstrapModulePath;
function getAppModulePath(host, mainPath) {
    const moduleRelativePath = findBootstrapModulePath(host, mainPath);
    const mainDir = path_1.dirname(mainPath);
    const modulePath = core_1.normalize(`/${mainDir}/${moduleRelativePath}.ts`);
    return modulePath;
}
exports.getAppModulePath = getAppModulePath;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL3NjaGVtYXRpY3MvdXRpbHMvdmVuZG9yZWQtYXN0LXV0aWxzL2luZGV4LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQTs7Ozs7O0dBTUc7OztBQUVILGlCQUFpQjtBQUVqQjs7Ozs7Ozs7O0dBU0c7QUFFSCwrQ0FBK0M7QUFDL0MsMkRBQXFFO0FBQ3JFLCtEQUFvRjtBQUNwRiwrQkFBNkI7QUFFN0IsaUNBQWlDO0FBRWpDOzs7Ozs7OztHQVFHO0FBQ0gsU0FBZ0IsWUFBWSxDQUFDLE1BQXFCLEVBQUUsVUFBa0IsRUFBRSxVQUFrQixFQUM3RCxRQUFnQixFQUFFLFNBQVMsR0FBRyxLQUFLO0lBQzlELE1BQU0sUUFBUSxHQUFHLE1BQU0sQ0FBQztJQUN4QixNQUFNLFVBQVUsR0FBRyxTQUFTLENBQUMsUUFBUSxFQUFFLEVBQUUsQ0FBQyxVQUFVLENBQUMsaUJBQWlCLENBQUMsQ0FBQztJQUV4RSxpRUFBaUU7SUFDakUsTUFBTSxlQUFlLEdBQUcsVUFBVSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsRUFBRTtRQUMvQyxxRkFBcUY7UUFDckYsTUFBTSxXQUFXLEdBQUcsSUFBSSxDQUFDLFdBQVcsRUFBRTthQUNuQyxNQUFNLENBQUMsS0FBSyxDQUFDLEVBQUUsQ0FBQyxLQUFLLENBQUMsSUFBSSxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsYUFBYSxDQUFDO2FBQzNELEdBQUcsQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFFLENBQXNCLENBQUMsSUFBSSxDQUFDLENBQUM7UUFFMUMsT0FBTyxXQUFXLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsSUFBSSxLQUFLLFFBQVEsQ0FBQyxDQUFDLE1BQU0sS0FBSyxDQUFDLENBQUM7SUFDcEUsQ0FBQyxDQUFDLENBQUM7SUFFSCxJQUFJLGVBQWUsQ0FBQyxNQUFNLEdBQUcs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RUQsU0FBZ0IsZ0JBQWdCLENBQUMsSUFBVSxFQUFFLFFBQWdCO0lBQzNELE1BQU0sa0JBQWtCLEdBQUcsdUJBQXVCLENBQUMsSUFBSSxFQUFFLFFBQVEsQ0FBQyxDQUFDO0lBQ25FLE1BQU0sT0FBTyxHQUFHLGNBQU8sQ0FBQyxRQUFRLENBQUMsQ0FBQztJQUNsQyxNQUFNLFVBQVUsR0FBRyxnQkFBUyxDQUFDLElBQUksT0FBTyxJQUFJLGtCQUFrQixLQUFLLENBQUMsQ0FBQztJQUVyRSxPQUFPLFVBQVUsQ0FBQztBQUNwQixDQUFDO0FBTkQsNENBTUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuLy8gdHNsaW50OmRpc2FibGVcblxuLypcbiAqIE5vdGU6IFRoaXMgZmlsZSBjb250YWlucyB2ZW5kb3JlZCBUeXBlU2NyaXB0IEFTVCB1dGlscyBmcm9tIFwiQHNjaGVtYXRpY3MvYW5ndWxhclwiLlxuICogU2luY2UgdGhlcmUgaXMgbm8gY2Fub25pY2FsIHBsYWNlIGZvciBjb21tb24gdXRpbHMsIGFuZCB3ZSBkb24ndCB3YW50IHRvIHVzZSB0aGUgQVNUXG4gKiB1dGlscyBkaXJlY3RseSBmcm9tIFwiQHNjaGVtYXRpY3MvYW5ndWxhclwiIHRvIGF2b2lkIFR5cGVTY3JpcHQgdmVyc2lvbiBtaXNtYXRjaGVzLCB3ZVxuICogY29weSB0aGUgbmVlZGVkIEFTVCB1dGlscyB1bnRpbCB0aGVyZSBpcyBhIGdlbmVyYWwgcGxhY2UgZm9yIHN1Y2ggdXRpbGl0eSBmdW5jdGlvbnMuXG4gKlxuICogVGFrZW4gZnJvbTpcbiAqICAgKDEpIGh0dHBzOi8vZ2l0aHViLmNvbS9hbmd1bGFyL2FuZ3VsYXItY2xpL2Jsb2IvMzBkZjE0NzBhMGYxODk4OWRiMzM2ZDUwYjU1YTc5MDIxYWI2NGM4NS9wYWNrYWdlcy9zY2hlbWF0aWNzL2FuZ3VsYXIvdXRpbGl0eS9uZy1hc3QtdXRpbHMudHNcbiAqICAgKDIpIGh0dHBzOi8vZ2l0aHViLmNvbS9hbmd1bGFyL2FuZ3VsYXItY2xpL2Jsb2IvMzBkZjE0NzBhMGYxODk4OWRiMzM2ZDUwYjU1YTc5MDIxYWI2NGM4NS9wYWNrYWdlcy9zY2hlbWF0aWNzL2FuZ3VsYXIvdXRpbGl0eS9hc3QtdXRpbHMudHNcbiAqL1xuXG5pbXBvcnQge25vcm1hbGl6ZX0gZnJvbSAnQGFuZ3VsYXItZGV2a2l0L2NvcmUnO1xuaW1wb3J0IHtTY2hlbWF0aWNzRXhjZXB0aW9uLCBUcmVlfSBmcm9tICdAYW5ndWxhci1kZXZraXQvc2NoZW1hdGljcyc7XG5pbXBvcnQge0NoYW5nZSwgSW5zZXJ0Q2hhbmdlLCBOb29wQ2hhbmdlfSBmcm9tICdAc2NoZW1hdGljcy9hbmd1bGFyL3V0aWxpdHkvY2hhbmdlJztcbmltcG9ydCB7ZGlybmFtZX0gZnJvbSAncGF0aCc7XG5cbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG4vKipcbiAqIEFkZCBJbXBvcnQgYGltcG9ydCB7IHN5bWJvbE5hbWUgfSBmcm9tIGZpbGVOYW1lYCBpZiB0aGUgaW1wb3J0IGRvZXNuJ3QgZXhpdFxuICogYWxyZWFkeS4gQXNzdW1lcyBmaWxlVG9FZGl0IGNhbiBiZSByZXNvbHZlZCBhbmQgYWNjZXNzZWQuXG4gKiBAcGFyYW0gZmlsZVRvRWRpdCAoZmlsZSB3ZSB3YW50IHRvIGFkZCBpbXBvcnQgdG8pXG4gKiBAcGFyYW0gc3ltYm9sTmFtZSAoaXRlbSB0byBpbXBvcnQpXG4gKiBAcGFyYW0gZmlsZU5hbWUgKHBhdGggdG8gdGhlIGZpbGUpXG4gKiBAcGFyYW0gaXNEZWZhdWx0IChpZiB0cnVlLCBpbXBvcnQgZm9sbG93cyBzdHlsZSBmb3IgaW1wb3J0aW5nIGRlZmF1bHQgZXhwb3J0cylcbiAqIEByZXR1cm4gQ2hhbmdlXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBpbnNlcnRJbXBvcnQoc291cmNlOiB0cy5Tb3VyY2VGaWxlLCBmaWxlVG9FZGl0OiBzdHJpbmcsIHN5bWJvbE5hbWU6IHN0cmluZyxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZmlsZU5hbWU6IHN0cmluZywgaXNEZWZhdWx0ID0gZmFsc2UpOiBDaGFuZ2Uge1xuICBjb25zdCByb290Tm9kZSA9IHNvdXJjZTtcbiAgY29uc3QgYWxsSW1wb3J0cyA9IGZpbmROb2Rlcyhyb290Tm9kZSwgdHMuU3ludGF4S2luZC5JbXBvcnREZWNsYXJhdGlvbik7XG5cbiAgLy8gZ2V0IG5vZGVzIHRoYXQgbWFwIHRvIGltcG9ydCBzdGF0ZW1lbnRzIGZyb20gdGhlIGZpbGUgZmlsZU5hbWVcbiAgY29uc3QgcmVsZXZhbnRJbXBvcnRzID0gYWxsSW1wb3J0cy5maWx0ZXIobm9kZSA9PiB7XG4gICAgLy8gU3RyaW5nTGl0ZXJhbCBvZiB0aGUgSW1wb3J0RGVjbGFyYXRpb24gaXMgdGhlIGltcG9ydCBmaWxlIChmaWxlTmFtZSBpbiB0aGlzIGNhc2UpLlxuICAgIGNvbnN0IGltcG9ydEZpbGVzID0gbm9kZS5nZXRDaGlsZHJlbigpXG4gICAgICAuZmlsdGVyKGNoaWxkID0+IGNoaWxkLmtpbmQgPT09IHRzLlN5bnRheEtpbmQuU3RyaW5nTGl0ZXJhbClcbiAgICAgIC5tYXAobiA9PiAobiBhcyB0cy5TdHJpbmdMaXRlcmFsKS50ZXh0KTtcblxuICAgIHJldHVybiBpbXBvcnRGaWxlcy5maWx0ZXIoZmlsZSA9PiBmaWxlID09PSBmaWxlTmFtZSkubGVuZ3RoID09PSAxO1xuICB9KTtcblxuICBpZiAocmVsZXZhbnRJbXBvcnRzLmxlbmd0aCA+IDApIHtcbiAgICBsZXQgaW1wb3J0c0FzdGVyaXNrID0gZmFsc2U7XG4gICAgLy8gaW1wb3J0cyBmcm9tIGltcG9ydCBmaWxlXG4gICAgY29uc3QgaW1wb3J0czogdHMuTm9kZVtdID0gW107XG4gICAgcmVsZXZhbnRJbXBvcnRzLmZvckVhY2gobiA9PiB7XG4gICAgICBBcnJheS5wcm90b3R5cGUucHVzaC5hcHBseShpbXBvcnRzLCBmaW5kTm9kZXMobiwgdHMuU3ludGF4S2luZC5JZGVudGlmaWVyKSk7XG4gICAgICBpZiAoZmluZE5vZGVzKG4sIHRzLlN5bnRheEtpbmQuQXN0ZXJpc2tUb2tlbikubGVuZ3RoID4gMCkge1xuICAgICAgICBpbXBvcnRzQXN0ZXJpc2sgPSB0cnVlO1xuICAgICAgfVxuICAgIH0pO1xuXG4gICAgLy8gaWYgaW1wb3J0cyAqIGZyb20gZmlsZU5hbWUsIGRvbid0IGFkZCBzeW1ib2xOYW1lXG4gICAgaWYgKGltcG9ydHNBc3Rlcmlzaykge1xuICAgICAgcmV0dXJuIG5ldyBOb29wQ2hhbmdlKCk7XG4gICAgfVxuXG4gICAgY29uc3QgaW1wb3J0VGV4dE5vZGVzID0gaW1wb3J0cy5maWx0ZXIobiA9PiAobiBhcyB0cy5JZGVudGlmaWVyKS50ZXh0ID09PSBzeW1ib2xOYW1lKTtcblxuICAgIC8vIGluc2VydCBpbXBvcnQgaWYgaXQncyBub3QgdGhlcmVcbiAgICBpZiAoaW1wb3J0VGV4dE5vZGVzLmxlbmd0aCA9PT0gMCkge1xuICAgICAgY29uc3QgZmFsbGJhY2tQb3MgPVxuICAgICAgICBmaW5kTm9kZXMocmVsZXZhbnRJbXBvcnRzWzBdLCB0cy5TeW50YXhLaW5kLkNsb3NlQnJhY2VUb2tlbilbMF0uZ2V0U3RhcnQoKSB8fFxuICAgICAgICBmaW5kTm9kZXMocmVsZXZhbnRJbXBvcnRzWzBdLCB0cy5TeW50YXhLaW5kLkZyb21LZXl3b3JkKVswXS5nZXRTdGFydCgpO1xuXG4gICAgICByZXR1cm4gaW5zZXJ0QWZ0ZXJMYXN0T2NjdXJyZW5jZShpbXBvcnRzLCBgLCAke3N5bWJvbE5hbWV9YCwgZmlsZVRvRWRpdCwgZmFsbGJhY2tQb3MpO1xuICAgIH1cblxuICAgIHJldHVybiBuZXcgTm9vcENoYW5nZSgpO1xuICB9XG5cbiAgLy8gbm8gc3VjaCBpbXBvcnQgZGVjbGFyYXRpb24gZXhpc3RzXG4gIGNvbnN0IHVzZVN0cmljdCA9IGZpbmROb2Rlcyhyb290Tm9kZSwgdHMuU3ludGF4S2luZC5TdHJpbmdMaXRlcmFsKVxuICAgIC5maWx0ZXIoKG46IHRzLlN0cmluZ0xpdGVyYWwpID0+IG4udGV4dCA9PT0gJ3VzZSBzdHJpY3QnKTtcbiAgbGV0IGZhbGxiYWNrUG9zID0gMDtcbiAgaWYgKHVzZVN0cmljdC5sZW5ndGggPiAwKSB7XG4gICAgZmFsbGJhY2tQb3MgPSB1c2VTdHJpY3RbMF0uZW5kO1xuICB9XG4gIGNvbnN0IG9wZW4gPSBpc0RlZmF1bHQgPyAnJyA6ICd7ICc7XG4gIGNvbnN0IGNsb3NlID0gaXNEZWZhdWx0ID8gJycgOiAnIH0nO1xuICAvLyBpZiB0aGVyZSBhcmUgbm8gaW1wb3J0cyBvciAndXNlIHN0cmljdCcgc3RhdGVtZW50LCBpbnNlcnQgaW1wb3J0IGF0IGJlZ2lubmluZyBvZiBmaWxlXG4gIGNvbnN0IGluc2VydEF0QmVnaW5uaW5nID0gYWxsSW1wb3J0cy5sZW5ndGggPT09IDAgJiYgdXNlU3RyaWN0Lmxlbmd0aCA9PT0gMDtcbiAgY29uc3Qgc2VwYXJhdG9yID0gaW5zZXJ0QXRCZWdpbm5pbmcgPyAnJyA6ICc7XFxuJztcbiAgY29uc3QgdG9JbnNlcnQgPSBgJHtzZXBhcmF0b3J9aW1wb3J0ICR7b3Blbn0ke3N5bWJvbE5hbWV9JHtjbG9zZX1gICtcbiAgICBgIGZyb20gJyR7ZmlsZU5hbWV9JyR7aW5zZXJ0QXRCZWdpbm5pbmcgPyAnO1xcbicgOiAnJ31gO1xuXG4gIHJldHVybiBpbnNlcnRBZnRlckxhc3RPY2N1cnJlbmNlKFxuICAgIGFsbEltcG9ydHMsXG4gICAgdG9JbnNlcnQsXG4gICAgZmlsZVRvRWRpdCxcbiAgICBmYWxsYmFja1BvcyxcbiAgICB0cy5TeW50YXhLaW5kLlN0cmluZ0xpdGVyYWwsXG4gICk7XG59XG5cblxuLyoqXG4gKiBGaW5kIGFsbCBub2RlcyBmcm9tIHRoZSBBU1QgaW4gdGhlIHN1YnRyZWUgb2Ygbm9kZSBvZiBTeW50YXhLaW5kIGtpbmQuXG4gKiBAcGFyYW0gbm9kZVxuICogQHBhcmFtIGtpbmRcbiAqIEBwYXJhbSBtYXggVGhlIG1heGltdW0gbnVtYmVyIG9mIGl0ZW1zIHRvIHJldHVybi5cbiAqIEBwYXJhbSByZWN1cnNpdmUgQ29udGludWUgbG9va2luZyBmb3Igbm9kZXMgb2Yga2luZCByZWN1cnNpdmUgdW50aWwgZW5kXG4gKiB0aGUgbGFzdCBjaGlsZCBldmVuIHdoZW4gbm9kZSBvZiBraW5kIGhhcyBiZWVuIGZvdW5kLlxuICogQHJldHVybiBhbGwgbm9kZXMgb2Yga2luZCwgb3IgW10gaWYgbm9uZSBpcyBmb3VuZFxuICovXG5leHBvcnQgZnVuY3Rpb24gZmluZE5vZGVzKG5vZGU6IHRzLk5vZGUsIGtpbmQ6IHRzLlN5bnRheEtpbmQsIG1heCA9IEluZmluaXR5LCByZWN1cnNpdmUgPSBmYWxzZSk6IHRzLk5vZGVbXSB7XG4gIGlmICghbm9kZSB8fCBtYXggPT0gMCkge1xuICAgIHJldHVybiBbXTtcbiAgfVxuXG4gIGNvbnN0IGFycjogdHMuTm9kZVtdID0gW107XG4gIGlmIChub2RlLmtpbmQgPT09IGtpbmQpIHtcbiAgICBhcnIucHVzaChub2RlKTtcbiAgICBtYXgtLTtcbiAgfVxuICBpZiAobWF4ID4gMCAmJiAocmVjdXJzaXZlIHx8IG5vZGUua2luZCAhPT0ga2luZCkpIHtcbiAgICBmb3IgKGNvbnN0IGNoaWxkIG9mIG5vZGUuZ2V0Q2hpbGRyZW4oKSkge1xuICAgICAgZmluZE5vZGVzKGNoaWxkLCBraW5kLCBtYXgpLmZvckVhY2gobm9kZSA9PiB7XG4gICAgICAgIGlmIChtYXggPiAwKSB7XG4gICAgICAgICAgYXJyLnB1c2gobm9kZSk7XG4gICAgICAgIH1cbiAgICAgICAgbWF4LS07XG4gICAgICB9KTtcblxuICAgICAgaWYgKG1heCA8PSAwKSB7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHJldHVybiBhcnI7XG59XG5cblxuLyoqXG4gKiBHZXQgYWxsIHRoZSBub2RlcyBmcm9tIGEgc291cmNlLlxuICogQHBhcmFtIHNvdXJjZUZpbGUgVGhlIHNvdXJjZSBmaWxlIG9iamVjdC5cbiAqIEByZXR1cm5zIHtPYnNlcnZhYmxlPHRzLk5vZGU+fSBBbiBvYnNlcnZhYmxlIG9mIGFsbCB0aGUgbm9kZXMgaW4gdGhlIHNvdXJjZS5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldFNvdXJjZU5vZGVzKHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUpOiB0cy5Ob2RlW10ge1xuICBjb25zdCBub2RlczogdHMuTm9kZVtdID0gW3NvdXJjZUZpbGVdO1xuICBjb25zdCByZXN1bHQ6IHRzLk5vZGVbXSA9IFtdO1xuXG4gIHdoaWxlIChub2Rlcy5sZW5ndGggPiAwKSB7XG4gICAgY29uc3Qgbm9kZSA9IG5vZGVzLnNoaWZ0KCk7XG5cbiAgICBpZiAobm9kZSkge1xuICAgICAgcmVzdWx0LnB1c2gobm9kZSk7XG4gICAgICBpZiAobm9kZS5nZXRDaGlsZENvdW50KHNvdXJjZUZpbGUpID49IDApIHtcbiAgICAgICAgbm9kZXMudW5zaGlmdCguLi5ub2RlLmdldENoaWxkcmVuKCkpO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHJldHVybiByZXN1bHQ7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBmaW5kTm9kZShub2RlOiB0cy5Ob2RlLCBraW5kOiB0cy5TeW50YXhLaW5kLCB0ZXh0OiBzdHJpbmcpOiB0cy5Ob2RlIHwgbnVsbCB7XG4gIGlmIChub2RlLmtpbmQgPT09IGtpbmQgJiYgbm9kZS5nZXRUZXh0KCkgPT09IHRleHQpIHtcbiAgICAvLyB0aHJvdyBuZXcgRXJyb3Iobm9kZS5nZXRUZXh0KCkpO1xuICAgIHJldHVybiBub2RlO1xuICB9XG5cbiAgbGV0IGZvdW5kTm9kZTogdHMuTm9kZSB8IG51bGwgPSBudWxsO1xuICB0cy5mb3JFYWNoQ2hpbGQobm9kZSwgY2hpbGROb2RlID0+IHtcbiAgICBmb3VuZE5vZGUgPSBmb3VuZE5vZGUgfHwgZmluZE5vZGUoY2hpbGROb2RlLCBraW5kLCB0ZXh0KTtcbiAgfSk7XG5cbiAgcmV0dXJuIGZvdW5kTm9kZTtcbn1cblxuXG4vKipcbiAqIEhlbHBlciBmb3Igc29ydGluZyBub2Rlcy5cbiAqIEByZXR1cm4gZnVuY3Rpb24gdG8gc29ydCBub2RlcyBpbiBpbmNyZWFzaW5nIG9yZGVyIG9mIHBvc2l0aW9uIGluIHNvdXJjZUZpbGVcbiAqL1xuZnVuY3Rpb24gbm9kZXNCeVBvc2l0aW9uKGZpcnN0OiB0cy5Ob2RlLCBzZWNvbmQ6IHRzLk5vZGUpOiBudW1iZXIge1xuICByZXR1cm4gZmlyc3QuZ2V0U3RhcnQoKSAtIHNlY29uZC5nZXRTdGFydCgpO1xufVxuXG5cbi8qKlxuICogSW5zZXJ0IGB0b0luc2VydGAgYWZ0ZXIgdGhlIGxhc3Qgb2NjdXJlbmNlIG9mIGB0cy5TeW50YXhLaW5kW25vZGVzW2ldLmtpbmRdYFxuICogb3IgYWZ0ZXIgdGhlIGxhc3Qgb2Ygb2NjdXJlbmNlIG9mIGBzeW50YXhLaW5kYCBpZiB0aGUgbGFzdCBvY2N1cmVuY2UgaXMgYSBzdWIgY2hpbGRcbiAqIG9mIHRzLlN5bnRheEtpbmRbbm9kZXNbaV0ua2luZF0gYW5kIHNhdmUgdGhlIGNoYW5nZXMgaW4gZmlsZS5cbiAqXG4gKiBAcGFyYW0gbm9kZXMgaW5zZXJ0IGFmdGVyIHRoZSBsYXN0IG9jY3VyZW5jZSBvZiBub2Rlc1xuICogQHBhcmFtIHRvSW5zZXJ0IHN0cmluZyB0byBpbnNlcnRcbiAqIEBwYXJhbSBmaWxlIGZpbGUgdG8gaW5zZXJ0IGNoYW5nZXMgaW50b1xuICogQHBhcmFtIGZhbGxiYWNrUG9zIHBvc2l0aW9uIHRvIGluc2VydCBpZiB0b0luc2VydCBoYXBwZW5zIHRvIGJlIHRoZSBmaXJzdCBvY2N1cmVuY2VcbiAqIEBwYXJhbSBzeW50YXhLaW5kIHRoZSB0cy5TeW50YXhLaW5kIG9mIHRoZSBzdWJjaGlsZHJlbiB0byBpbnNlcnQgYWZ0ZXJcbiAqIEByZXR1cm4gQ2hhbmdlIGluc3RhbmNlXG4gKiBAdGhyb3cgRXJyb3IgaWYgdG9JbnNlcnQgaXMgZmlyc3Qgb2NjdXJlbmNlIGJ1dCBmYWxsIGJhY2sgaXMgbm90IHNldFxuICovXG5leHBvcnQgZnVuY3Rpb24gaW5zZXJ0QWZ0ZXJMYXN0T2NjdXJyZW5jZShub2RlczogdHMuTm9kZVtdLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdG9JbnNlcnQ6IHN0cmluZyxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZpbGU6IHN0cmluZyxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZhbGxiYWNrUG9zOiBudW1iZXIsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzeW50YXhLaW5kPzogdHMuU3ludGF4S2luZCk6IENoYW5nZSB7XG4gIGxldCBsYXN0SXRlbTogdHMuTm9kZSB8IHVuZGVmaW5lZDtcbiAgZm9yIChjb25zdCBub2RlIG9mIG5vZGVzKSB7XG4gICAgaWYgKCFsYXN0SXRlbSB8fCBsYXN0SXRlbS5nZXRTdGFydCgpIDwgbm9kZS5nZXRTdGFydCgpKSB7XG4gICAgICBsYXN0SXRlbSA9IG5vZGU7XG4gICAgfVxuICB9XG4gIGlmIChzeW50YXhLaW5kICYmIGxhc3RJdGVtKSB7XG4gICAgbGFzdEl0ZW0gPSBmaW5kTm9kZXMobGFzdEl0ZW0sIHN5bnRheEtpbmQpLnNvcnQobm9kZXNCeVBvc2l0aW9uKS5wb3AoKTtcbiAgfVxuICBpZiAoIWxhc3RJdGVtICYmIGZhbGxiYWNrUG9zID09IHVuZGVmaW5lZCkge1xuICAgIHRocm93IG5ldyBFcnJvcihgdHJpZWQgdG8gaW5zZXJ0ICR7dG9JbnNlcnR9IGFzIGZpcnN0IG9jY3VyZW5jZSB3aXRoIG5vIGZhbGxiYWNrIHBvc2l0aW9uYCk7XG4gIH1cbiAgY29uc3QgbGFzdEl0ZW1Qb3NpdGlvbjogbnVtYmVyID0gbGFzdEl0ZW0gPyBsYXN0SXRlbS5nZXRFbmQoKSA6IGZhbGxiYWNrUG9zO1xuXG4gIHJldHVybiBuZXcgSW5zZXJ0Q2hhbmdlKGZpbGUsIGxhc3RJdGVtUG9zaXRpb24sIHRvSW5zZXJ0KTtcbn1cblxuZnVuY3Rpb24gX2FuZ3VsYXJJbXBvcnRzRnJvbU5vZGUobm9kZTogdHMuSW1wb3J0RGVjbGFyYXRpb24sXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBfc291cmNlRmlsZTogdHMuU291cmNlRmlsZSk6IHtbbmFtZTogc3RyaW5nXTogc3RyaW5nfSB7XG4gIGNvbnN0IG1zID0gbm9kZS5tb2R1bGVTcGVjaWZpZXI7XG4gIGxldCBtb2R1bGVQYXRoOiBzdHJpbmc7XG4gIHN3aXRjaCAobXMua2luZCkge1xuICAgIGNhc2UgdHMuU3ludGF4S2luZC5TdHJpbmdMaXRlcmFsOlxuICAgICAgbW9kdWxlUGF0aCA9IChtcyBhcyB0cy5TdHJpbmdMaXRlcmFsKS50ZXh0O1xuICAgICAgYnJlYWs7XG4gICAgZGVmYXVsdDpcbiAgICAgIHJldHVybiB7fTtcbiAgfVxuXG4gIGlmICghbW9kdWxlUGF0aC5zdGFydHNXaXRoKCdAYW5ndWxhci8nKSkge1xuICAgIHJldHVybiB7fTtcbiAgfVxuXG4gIGlmIChub2RlLmltcG9ydENsYXVzZSkge1xuICAgIGlmIChub2RlLmltcG9ydENsYXVzZS5uYW1lKSB7XG4gICAgICAvLyBUaGlzIGlzIG9mIHRoZSBmb3JtIGBpbXBvcnQgTmFtZSBmcm9tICdwYXRoJ2AuIElnbm9yZS5cbiAgICAgIHJldHVybiB7fTtcbiAgICB9IGVsc2UgaWYgKG5vZGUuaW1wb3J0Q2xhdXNlLm5hbWVkQmluZGluZ3MpIHtcbiAgICAgIGNvbnN0IG5iID0gbm9kZS5pbXBvcnRDbGF1c2UubmFtZWRCaW5kaW5ncztcbiAgICAgIGlmIChuYi5raW5kID09IHRzLlN5bnRheEtpbmQuTmFtZXNwYWNlSW1wb3J0KSB7XG4gICAgICAgIC8vIFRoaXMgaXMgb2YgdGhlIGZvcm0gYGltcG9ydCAqIGFzIG5hbWUgZnJvbSAncGF0aCdgLiBSZXR1cm4gYG5hbWUuYC5cbiAgICAgICAgcmV0dXJuIHtcbiAgICAgICAgICBbKG5iIGFzIHRzLk5hbWVzcGFjZUltcG9ydCkubmFtZS50ZXh0ICsgJy4nXTogbW9kdWxlUGF0aCxcbiAgICAgICAgfTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIC8vIFRoaXMgaXMgb2YgdGhlIGZvcm0gYGltcG9ydCB7YSxiLGN9IGZyb20gJ3BhdGgnYFxuICAgICAgICBjb25zdCBuYW1lZEltcG9ydHMgPSBuYiBhcyB0cy5OYW1lZEltcG9ydHM7XG5cbiAgICAgICAgcmV0dXJuIG5hbWVkSW1wb3J0cy5lbGVtZW50c1xuICAgICAgICAgIC5tYXAoKGlzOiB0cy5JbXBvcnRTcGVjaWZpZXIpID0+IGlzLnByb3BlcnR5TmFtZSA/IGlzLnByb3BlcnR5TmFtZS50ZXh0IDogaXMubmFtZS50ZXh0KVxuICAgICAgICAgIC5yZWR1Y2UoKGFjYzoge1tuYW1lOiBzdHJpbmddOiBzdHJpbmd9LCBjdXJyOiBzdHJpbmcpID0+IHtcbiAgICAgICAgICAgIGFjY1tjdXJyXSA9IG1vZHVsZVBhdGg7XG5cbiAgICAgICAgICAgIHJldHVybiBhY2M7XG4gICAgICAgICAgfSwge30pO1xuICAgICAgfVxuICAgIH1cblxuICAgIHJldHVybiB7fTtcbiAgfSBlbHNlIHtcbiAgICAvLyBUaGlzIGlzIG9mIHRoZSBmb3JtIGBpbXBvcnQgJ3BhdGgnO2AuIE5vdGhpbmcgdG8gZG8uXG4gICAgcmV0dXJuIHt9O1xuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXREZWNvcmF0b3JNZXRhZGF0YShzb3VyY2U6IHRzLlNvdXJjZUZpbGUsIGlkZW50aWZpZXI6IHN0cmluZyxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtb2R1bGU6IHN0cmluZyk6IHRzLk5vZGVbXSB7XG4gIGNvbnN0IGFuZ3VsYXJJbXBvcnRzOiB7W25hbWU6IHN0cmluZ106IHN0cmluZ31cbiAgICA9IGZpbmROb2Rlcyhzb3VyY2UsIHRzLlN5bnRheEtpbmQuSW1wb3J0RGVjbGFyYXRpb24pXG4gICAgLm1hcCgobm9kZTogdHMuSW1wb3J0RGVjbGFyYXRpb24pID0+IF9hbmd1bGFySW1wb3J0c0Zyb21Ob2RlKG5vZGUsIHNvdXJjZSkpXG4gICAgLnJlZHVjZSgoYWNjOiB7W25hbWU6IHN0cmluZ106IHN0cmluZ30sIGN1cnJlbnQ6IHtbbmFtZTogc3RyaW5nXTogc3RyaW5nfSkgPT4ge1xuICAgICAgZm9yIChjb25zdCBrZXkgb2YgT2JqZWN0LmtleXMoY3VycmVudCkpIHtcbiAgICAgICAgYWNjW2tleV0gPSBjdXJyZW50W2tleV07XG4gICAgICB9XG5cbiAgICAgIHJldHVybiBhY2M7XG4gICAgfSwge30pO1xuXG4gIHJldHVybiBnZXRTb3VyY2VOb2Rlcyhzb3VyY2UpXG4gICAgLmZpbHRlcihub2RlID0+IHtcbiAgICAgIHJldHVybiBub2RlLmtpbmQgPT0gdHMuU3ludGF4S2luZC5EZWNvcmF0b3JcbiAgICAgICAgJiYgKG5vZGUgYXMgdHMuRGVjb3JhdG9yKS5leHByZXNzaW9uLmtpbmQgPT0gdHMuU3ludGF4S2luZC5DYWxsRXhwcmVzc2lvbjtcbiAgICB9KVxuICAgIC5tYXAobm9kZSA9PiAobm9kZSBhcyB0cy5EZWNvcmF0b3IpLmV4cHJlc3Npb24gYXMgdHMuQ2FsbEV4cHJlc3Npb24pXG4gICAgLmZpbHRlcihleHByID0+IHtcbiAgICAgIGlmIChleHByLmV4cHJlc3Npb24ua2luZCA9PSB0cy5TeW50YXhLaW5kLklkZW50aWZpZXIpIHtcbiAgICAgICAgY29uc3QgaWQgPSBleHByLmV4cHJlc3Npb24gYXMgdHMuSWRlbnRpZmllcjtcblxuICAgICAgICByZXR1cm4gaWQudGV4dCA9PSBpZGVudGlmaWVyICYmIGFuZ3VsYXJJbXBvcnRzW2lkLnRleHRdID09PSBtb2R1bGU7XG4gICAgICB9IGVsc2UgaWYgKGV4cHIuZXhwcmVzc2lvbi5raW5kID09IHRzLlN5bnRheEtpbmQuUHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uKSB7XG4gICAgICAgIC8vIFRoaXMgY292ZXJzIGZvby5OZ01vZHVsZSB3aGVuIGltcG9ydGluZyAqIGFzIGZvby5cbiAgICAgICAgY29uc3QgcGFFeHByID0gZXhwci5leHByZXNzaW9uIGFzIHRzLlByb3BlcnR5QWNjZXNzRXhwcmVzc2lvbjtcbiAgICAgICAgLy8gSWYgdGhlIGxlZnQgZXhwcmVzc2lvbiBpcyBub3QgYW4gaWRlbnRpZmllciwganVzdCBnaXZlIHVwIGF0IHRoYXQgcG9pbnQuXG4gICAgICAgIGlmIChwYUV4cHIuZXhwcmVzc2lvbi5raW5kICE9PSB0cy5TeW50YXhLaW5kLklkZW50aWZpZXIpIHtcbiAgICAgICAgICByZXR1cm4gZmFsc2U7XG4gICAgICAgIH1cblxuICAgICAgICBjb25zdCBpZCA9IHBhRXhwci5uYW1lLnRleHQ7XG4gICAgICAgIGNvbnN0IG1vZHVsZUlkID0gKHBhRXhwci5leHByZXNzaW9uIGFzIHRzLklkZW50aWZpZXIpLnRleHQ7XG5cbiAgICAgICAgcmV0dXJuIGlkID09PSBpZGVudGlmaWVyICYmIChhbmd1bGFySW1wb3J0c1ttb2R1bGVJZCArICcuJ10gPT09IG1vZHVsZSk7XG4gICAgICB9XG5cbiAgICAgIHJldHVybiBmYWxzZTtcbiAgICB9KVxuICAgIC5maWx0ZXIoZXhwciA9PiBleHByLmFyZ3VtZW50c1swXVxuICAgICAgJiYgZXhwci5hcmd1bWVudHNbMF0ua2luZCA9PSB0cy5TeW50YXhLaW5kLk9iamVjdExpdGVyYWxFeHByZXNzaW9uKVxuICAgIC5tYXAoZXhwciA9PiBleHByLmFyZ3VtZW50c1swXSBhcyB0cy5PYmplY3RMaXRlcmFsRXhwcmVzc2lvbik7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRNZXRhZGF0YUZpZWxkKFxuICBub2RlOiB0cy5PYmplY3RMaXRlcmFsRXhwcmVzc2lvbixcbiAgbWV0YWRhdGFGaWVsZDogc3RyaW5nLFxuKTogdHMuT2JqZWN0TGl0ZXJhbEVsZW1lbnRbXSB7XG4gIHJldHVybiBub2RlLnByb3BlcnRpZXNcbiAgICAuZmlsdGVyKHByb3AgPT4gdHMuaXNQcm9wZXJ0eUFzc2lnbm1lbnQocHJvcCkpXG4gICAgLy8gRmlsdGVyIG91dCBldmVyeSBmaWVsZHMgdGhhdCdzIG5vdCBcIm1ldGFkYXRhRmllbGRcIi4gQWxzbyBoYW5kbGVzIHN0cmluZyBsaXRlcmFsc1xuICAgIC8vIChidXQgbm90IGV4cHJlc3Npb25zKS5cbiAgICAuZmlsdGVyKCh7IG5hbWUgfTogdHMuUHJvcGVydHlBc3NpZ25tZW50KSA9PiB7XG4gICAgICByZXR1cm4gKHRzLmlzSWRlbnRpZmllcihuYW1lKSB8fCB0cy5pc1N0cmluZ0xpdGVyYWwobmFtZSkpXG4gICAgICAgICYmIG5hbWUuZ2V0VGV4dCgpID09PSBtZXRhZGF0YUZpZWxkO1xuICAgIH0pO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gYWRkU3ltYm9sVG9OZ01vZHVsZU1ldGFkYXRhKFxuICBzb3VyY2U6IHRzLlNvdXJjZUZpbGUsXG4gIG5nTW9kdWxlUGF0aDogc3RyaW5nLFxuICBtZXRhZGF0YUZpZWxkOiBzdHJpbmcsXG4gIHN5bWJvbE5hbWU6IHN0cmluZyxcbiAgaW1wb3J0UGF0aDogc3RyaW5nIHwgbnVsbCA9IG51bGwsXG4pOiBDaGFuZ2VbXSB7XG4gIGNvbnN0IG5vZGVzID0gZ2V0RGVjb3JhdG9yTWV0YWRhdGEoc291cmNlLCAnTmdNb2R1bGUnLCAnQGFuZ3VsYXIvY29yZScpO1xuICBsZXQgbm9kZTogYW55ID0gbm9kZXNbMF07ICAvLyB0c2xpbnQ6ZGlzYWJsZS1saW5lOm5vLWFueVxuXG4gIC8vIEZpbmQgdGhlIGRlY29yYXRvciBkZWNsYXJhdGlvbi5cbiAgaWYgKCFub2RlKSB7XG4gICAgcmV0dXJuIFtdO1xuICB9XG5cbiAgLy8gR2V0IGFsbCB0aGUgY2hpbGRyZW4gcHJvcGVydHkgYXNzaWdubWVudCBvZiBvYmplY3QgbGl0ZXJhbHMuXG4gIGNvbnN0IG1hdGNoaW5nUHJvcGVydGllcyA9IGdldE1ldGFkYXRhRmllbGQoXG4gICAgbm9kZSBhcyB0cy5PYmplY3RMaXRlcmFsRXhwcmVzc2lvbixcbiAgICBtZXRhZGF0YUZpZWxkLFxuICApO1xuXG4gIC8vIEdldCB0aGUgbGFzdCBub2RlIG9mIHRoZSBhcnJheSBsaXRlcmFsLlxuICBpZiAoIW1hdGNoaW5nUHJvcGVydGllcykge1xuICAgIHJldHVybiBbXTtcbiAgfVxuICBpZiAobWF0Y2hpbmdQcm9wZXJ0aWVzLmxlbmd0aCA9PSAwKSB7XG4gICAgLy8gV2UgaGF2ZW4ndCBmb3VuZCB0aGUgZmllbGQgaW4gdGhlIG1ldGFkYXRhIGRlY2xhcmF0aW9uLiBJbnNlcnQgYSBuZXcgZmllbGQuXG4gICAgY29uc3QgZXhwciA9IG5vZGUgYXMgdHMuT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb247XG4gICAgbGV0IHBvc2l0aW9uOiBudW1iZXI7XG4gICAgbGV0IHRvSW5zZXJ0OiBzdHJpbmc7XG4gICAgaWYgKGV4cHIucHJvcGVydGllcy5sZW5ndGggPT0gMCkge1xuICAgICAgcG9zaXRpb24gPSBleHByLmdldEVuZCgpIC0gMTtcbiAgICAgIHRvSW5zZXJ0ID0gYCAgJHttZXRhZGF0YUZpZWxkfTogWyR7c3ltYm9sTmFtZX1dXFxuYDtcbiAgICB9IGVsc2Uge1xuICAgICAgbm9kZSA9IGV4cHIucHJvcGVydGllc1tleHByLnByb3BlcnRpZXMubGVuZ3RoIC0gMV07XG4gICAgICBwb3NpdGlvbiA9IG5vZGUuZ2V0RW5kKCk7XG4gICAgICAvLyBHZXQgdGhlIGluZGVudGF0aW9uIG9mIHRoZSBsYXN0IGVsZW1lbnQsIGlmIGFueS5cbiAgICAgIGNvbnN0IHRleHQgPSBub2RlLmdldEZ1bGxUZXh0KHNvdXJjZSk7XG4gICAgICBjb25zdCBtYXRjaGVzID0gdGV4dC5tYXRjaCgvXlxccj9cXG5cXHMqLyk7XG4gICAgICBpZiAobWF0Y2hlcyAmJiBtYXRjaGVzLmxlbmd0aCA+IDApIHtcbiAgICAgICAgdG9JbnNlcnQgPSBgLCR7bWF0Y2hlc1swXX0ke21ldGFkYXRhRmllbGR9OiBbJHtzeW1ib2xOYW1lfV1gO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdG9JbnNlcnQgPSBgLCAke21ldGFkYXRhRmllbGR9OiBbJHtzeW1ib2xOYW1lfV1gO1xuICAgICAgfVxuICAgIH1cbiAgICBpZiAoaW1wb3J0UGF0aCAhPT0gbnVsbCkge1xuICAgICAgcmV0dXJuIFtcbiAgICAgICAgbmV3IEluc2VydENoYW5nZShuZ01vZHVsZVBhdGgsIHBvc2l0aW9uLCB0b0luc2VydCksXG4gICAgICAgIGluc2VydEltcG9ydChzb3VyY2UsIG5nTW9kdWxlUGF0aCwgc3ltYm9sTmFtZS5yZXBsYWNlKC9cXC4uKiQvLCAnJyksIGltcG9ydFBhdGgpLFxuICAgICAgXTtcbiAgICB9IGVsc2Uge1xuICAgICAgcmV0dXJuIFtuZXcgSW5zZXJ0Q2hhbmdlKG5nTW9kdWxlUGF0aCwgcG9zaXRpb24sIHRvSW5zZXJ0KV07XG4gICAgfVxuICB9XG4gIGNvbnN0IGFzc2lnbm1lbnQgPSBtYXRjaGluZ1Byb3BlcnRpZXNbMF0gYXMgdHMuUHJvcGVydHlBc3NpZ25tZW50O1xuXG4gIC8vIElmIGl0J3Mgbm90IGFuIGFycmF5LCBub3RoaW5nIHdlIGNhbiBkbyByZWFsbHkuXG4gIGlmIChhc3NpZ25tZW50LmluaXRpYWxpemVyLmtpbmQgIT09IHRzLlN5bnRheEtpbmQuQXJyYXlMaXRlcmFsRXhwcmVzc2lvbikge1xuICAgIHJldHVybiBbXTtcbiAgfVxuXG4gIGNvbnN0IGFyckxpdGVyYWwgPSBhc3NpZ25tZW50LmluaXRpYWxpemVyIGFzIHRzLkFycmF5TGl0ZXJhbEV4cHJlc3Npb247XG4gIGlmIChhcnJMaXRlcmFsLmVsZW1lbnRzLmxlbmd0aCA9PSAwKSB7XG4gICAgLy8gRm9yd2FyZCB0aGUgcHJvcGVydHkuXG4gICAgbm9kZSA9IGFyckxpdGVyYWw7XG4gIH0gZWxzZSB7XG4gICAgbm9kZSA9IGFyckxpdGVyYWwuZWxlbWVudHM7XG4gIH1cblxuICBpZiAoIW5vZGUpIHtcbiAgICAvLyB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6IG5vLWNvbnNvbGVcbiAgICBjb25zb2xlLmVycm9yKCdObyBhcHAgbW9kdWxlIGZvdW5kLiBQbGVhc2UgYWRkIHlvdXIgbmV3IGNsYXNzIHRvIHlvdXIgY29tcG9uZW50LicpO1xuXG4gICAgcmV0dXJuIFtdO1xuICB9XG5cbiAgaWYgKEFycmF5LmlzQXJyYXkobm9kZSkpIHtcbiAgICBjb25zdCBub2RlQXJyYXkgPSBub2RlIGFzIHt9IGFzIEFycmF5PHRzLk5vZGU+O1xuICAgIGNvbnN0IHN5bWJvbHNBcnJheSA9IG5vZGVBcnJheS5tYXAobm9kZSA9PiBub2RlLmdldFRleHQoKSk7XG4gICAgaWYgKHN5bWJvbHNBcnJheS5pbmNsdWRlcyhzeW1ib2xOYW1lKSkge1xuICAgICAgcmV0dXJuIFtdO1xuICAgIH1cblxuICAgIG5vZGUgPSBub2RlW25vZGUubGVuZ3RoIC0gMV07XG4gIH1cblxuICBsZXQgdG9JbnNlcnQ6IHN0cmluZztcbiAgbGV0IHBvc2l0aW9uID0gbm9kZS5nZXRFbmQoKTtcbiAgaWYgKG5vZGUua2luZCA9PSB0cy5TeW50YXhLaW5kLk9iamVjdExpdGVyYWxFeHByZXNzaW9uKSB7XG4gICAgLy8gV2UgaGF2ZW4ndCBmb3VuZCB0aGUgZmllbGQgaW4gdGhlIG1ldGFkYXRhIGRlY2xhcmF0aW9uLiBJbnNlcnQgYSBuZXdcbiAgICAvLyBmaWVsZC5cbiAgICBjb25zdCBleHByID0gbm9kZSBhcyB0cy5PYmplY3RMaXRlcmFsRXhwcmVzc2lvbjtcbiAgICBpZiAoZXhwci5wcm9wZXJ0aWVzLmxlbmd0aCA9PSAwKSB7XG4gICAgICBwb3NpdGlvbiA9IGV4cHIuZ2V0RW5kKCkgLSAxO1xuICAgICAgdG9JbnNlcnQgPSBgICAke3N5bWJvbE5hbWV9XFxuYDtcbiAgICB9IGVsc2Uge1xuICAgICAgLy8gR2V0IHRoZSBpbmRlbnRhdGlvbiBvZiB0aGUgbGFzdCBlbGVtZW50LCBpZiBhbnkuXG4gICAgICBjb25zdCB0ZXh0ID0gbm9kZS5nZXRGdWxsVGV4dChzb3VyY2UpO1xuICAgICAgaWYgKHRleHQubWF0Y2goL15cXHI/XFxyP1xcbi8pKSB7XG4gICAgICAgIHRvSW5zZXJ0ID0gYCwke3RleHQubWF0Y2goL15cXHI/XFxuXFxzKi8pWzBdfSR7c3ltYm9sTmFtZX1gO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdG9JbnNlcnQgPSBgLCAke3N5bWJvbE5hbWV9YDtcbiAgICAgIH1cbiAgICB9XG4gIH0gZWxzZSBpZiAobm9kZS5raW5kID09IHRzLlN5bnRheEtpbmQuQXJyYXlMaXRlcmFsRXhwcmVzc2lvbikge1xuICAgIC8vIFdlIGZvdW5kIHRoZSBmaWVsZCBidXQgaXQncyBlbXB0eS4gSW5zZXJ0IGl0IGp1c3QgYmVmb3JlIHRoZSBgXWAuXG4gICAgcG9zaXRpb24tLTtcbiAgICB0b0luc2VydCA9IGAke3N5bWJvbE5hbWV9YDtcbiAgfSBlbHNlIHtcbiAgICAvLyBHZXQgdGhlIGluZGVudGF0aW9uIG9mIHRoZSBsYXN0IGVsZW1lbnQsIGlmIGFueS5cbiAgICBjb25zdCB0ZXh0ID0gbm9kZS5nZXRGdWxsVGV4dChzb3VyY2UpO1xuICAgIGlmICh0ZXh0Lm1hdGNoKC9eXFxyP1xcbi8pKSB7XG4gICAgICB0b0luc2VydCA9IGAsJHt0ZXh0Lm1hdGNoKC9eXFxyP1xcbihcXHI/KVxccyovKVswXX0ke3N5bWJvbE5hbWV9YDtcbiAgICB9IGVsc2Uge1xuICAgICAgdG9JbnNlcnQgPSBgLCAke3N5bWJvbE5hbWV9YDtcbiAgICB9XG4gIH1cbiAgaWYgKGltcG9ydFBhdGggIT09IG51bGwpIHtcbiAgICByZXR1cm4gW1xuICAgICAgbmV3IEluc2VydENoYW5nZShuZ01vZHVsZVBhdGgsIHBvc2l0aW9uLCB0b0luc2VydCksXG4gICAgICBpbnNlcnRJbXBvcnQoc291cmNlLCBuZ01vZHVsZVBhdGgsIHN5bWJvbE5hbWUucmVwbGFjZSgvXFwuLiokLywgJycpLCBpbXBvcnRQYXRoKSxcbiAgICBdO1xuICB9XG5cbiAgcmV0dXJuIFtuZXcgSW5zZXJ0Q2hhbmdlKG5nTW9kdWxlUGF0aCwgcG9zaXRpb24sIHRvSW5zZXJ0KV07XG59XG5cbi8qKlxuICogQ3VzdG9tIGZ1bmN0aW9uIHRvIGluc2VydCBhIGRlY2xhcmF0aW9uIChjb21wb25lbnQsIHBpcGUsIGRpcmVjdGl2ZSlcbiAqIGludG8gTmdNb2R1bGUgZGVjbGFyYXRpb25zLiBJdCBhbHNvIGltcG9ydHMgdGhlIGNvbXBvbmVudC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGFkZERlY2xhcmF0aW9uVG9Nb2R1bGUoc291cmNlOiB0cy5Tb3VyY2VGaWxlLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbW9kdWxlUGF0aDogc3RyaW5nLCBjbGFzc2lmaWVkTmFtZTogc3RyaW5nLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW1wb3J0UGF0aDogc3RyaW5nKTogQ2hhbmdlW10ge1xuICByZXR1cm4gYWRkU3ltYm9sVG9OZ01vZHVsZU1ldGFkYXRhKFxuICAgIHNvdXJjZSwgbW9kdWxlUGF0aCwgJ2RlY2xhcmF0aW9ucycsIGNsYXNzaWZpZWROYW1lLCBpbXBvcnRQYXRoKTtcbn1cblxuLyoqXG4gKiBDdXN0b20gZnVuY3Rpb24gdG8gaW5zZXJ0IGFuIE5nTW9kdWxlIGludG8gTmdNb2R1bGUgaW1wb3J0cy4gSXQgYWxzbyBpbXBvcnRzIHRoZSBtb2R1bGUuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBhZGRJbXBvcnRUb01vZHVsZShzb3VyY2U6IHRzLlNvdXJjZUZpbGUsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbW9kdWxlUGF0aDogc3RyaW5nLCBjbGFzc2lmaWVkTmFtZTogc3RyaW5nLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGltcG9ydFBhdGg6IHN0cmluZyk6IENoYW5nZVtdIHtcblxuICByZXR1cm4gYWRkU3ltYm9sVG9OZ01vZHVsZU1ldGFkYXRhKHNvdXJjZSwgbW9kdWxlUGF0aCwgJ2ltcG9ydHMnLCBjbGFzc2lmaWVkTmFtZSwgaW1wb3J0UGF0aCk7XG59XG5cbi8qKlxuICogQ3VzdG9tIGZ1bmN0aW9uIHRvIGluc2VydCBhbiBleHBvcnQgaW50byBOZ01vZHVsZS4gSXQgYWxzbyBpbXBvcnRzIGl0LlxuICovXG5leHBvcnQgZnVuY3Rpb24gYWRkRXhwb3J0VG9Nb2R1bGUoc291cmNlOiB0cy5Tb3VyY2VGaWxlLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1vZHVsZVBhdGg6IHN0cmluZywgY2xhc3NpZmllZE5hbWU6IHN0cmluZyxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbXBvcnRQYXRoOiBzdHJpbmcpOiBDaGFuZ2VbXSB7XG4gIHJldHVybiBhZGRTeW1ib2xUb05nTW9kdWxlTWV0YWRhdGEoc291cmNlLCBtb2R1bGVQYXRoLCAnZXhwb3J0cycsIGNsYXNzaWZpZWROYW1lLCBpbXBvcnRQYXRoKTtcbn1cblxuLyoqXG4gKiBDdXN0b20gZnVuY3Rpb24gdG8gaW5zZXJ0IGFuIGVudHJ5Q29tcG9uZW50IGludG8gTmdNb2R1bGUuIEl0IGFsc28gaW1wb3J0cyBpdC5cbiAqIEBkZXByZWNhdGVkIC0gU2luY2UgdmVyc2lvbiA5LjAuMCB3aXRoIEl2eSwgZW50cnlDb21wb25lbnRzIGlzIG5vIGxvbmdlciBuZWNlc3NhcnkuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBhZGRFbnRyeUNvbXBvbmVudFRvTW9kdWxlKHNvdXJjZTogdHMuU291cmNlRmlsZSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1vZHVsZVBhdGg6IHN0cmluZywgY2xhc3NpZmllZE5hbWU6IHN0cmluZyxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGltcG9ydFBhdGg6IHN0cmluZyk6IENoYW5nZVtdIHtcbiAgcmV0dXJuIGFkZFN5bWJvbFRvTmdNb2R1bGVNZXRhZGF0YShcbiAgICBzb3VyY2UsIG1vZHVsZVBhdGgsXG4gICAgJ2VudHJ5Q29tcG9uZW50cycsIGNsYXNzaWZpZWROYW1lLCBpbXBvcnRQYXRoLFxuICApO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZmluZEJvb3RzdHJhcE1vZHVsZUNhbGwoaG9zdDogVHJlZSwgbWFpblBhdGg6IHN0cmluZyk6IHRzLkNhbGxFeHByZXNzaW9uIHwgbnVsbCB7XG4gIGNvbnN0IG1haW5CdWZmZXIgPSBob3N0LnJlYWQobWFpblBhdGgpO1xuICBpZiAoIW1haW5CdWZmZXIpIHtcbiAgICB0aHJvdyBuZXcgU2NoZW1hdGljc0V4Y2VwdGlvbihgTWFpbiBmaWxlICgke21haW5QYXRofSkgbm90IGZvdW5kYCk7XG4gIH1cbiAgY29uc3QgbWFpblRleHQgPSBtYWluQnVmZmVyLnRvU3RyaW5nKCd1dGYtOCcpO1xuICBjb25zdCBzb3VyY2UgPSB0cy5jcmVhdGVTb3VyY2VGaWxlKG1haW5QYXRoLCBtYWluVGV4dCwgdHMuU2NyaXB0VGFyZ2V0LkxhdGVzdCwgdHJ1ZSk7XG5cbiAgY29uc3QgYWxsTm9kZXMgPSBnZXRTb3VyY2VOb2Rlcyhzb3VyY2UpO1xuXG4gIGxldCBib290c3RyYXBDYWxsOiB0cy5DYWxsRXhwcmVzc2lvbiB8IG51bGwgPSBudWxsO1xuXG4gIGZvciAoY29uc3Qgbm9kZSBvZiBhbGxOb2Rlcykge1xuXG4gICAgbGV0IGJvb3RzdHJhcENhbGxOb2RlOiB0cy5Ob2RlIHwgbnVsbCA9IG51bGw7XG4gICAgYm9vdHN0cmFwQ2FsbE5vZGUgPSBmaW5kTm9kZShub2RlLCB0cy5TeW50YXhLaW5kLklkZW50aWZpZXIsICdib290c3RyYXBNb2R1bGUnKTtcblxuICAgIC8vIFdhbGsgdXAgdGhlIHBhcmVudCB1bnRpbCBDYWxsRXhwcmVzc2lvbiBpcyBmb3VuZC5cbiAgICB3aGlsZSAoYm9vdHN0cmFwQ2FsbE5vZGUgJiYgYm9vdHN0cmFwQ2FsbE5vZGUucGFyZW50XG4gICAgJiYgYm9vdHN0cmFwQ2FsbE5vZGUucGFyZW50LmtpbmQgIT09IHRzLlN5bnRheEtpbmQuQ2FsbEV4cHJlc3Npb24pIHtcblxuICAgICAgYm9vdHN0cmFwQ2FsbE5vZGUgPSBib290c3RyYXBDYWxsTm9kZS5wYXJlbnQ7XG4gICAgfVxuXG4gICAgaWYgKGJvb3RzdHJhcENhbGxOb2RlICE9PSBudWxsICYmXG4gICAgICBib290c3RyYXBDYWxsTm9kZS5wYXJlbnQgIT09IHVuZGVmaW5lZCAmJlxuICAgICAgYm9vdHN0cmFwQ2FsbE5vZGUucGFyZW50LmtpbmQgPT09IHRzLlN5bnRheEtpbmQuQ2FsbEV4cHJlc3Npb24pIHtcbiAgICAgIGJvb3RzdHJhcENhbGwgPSBib290c3RyYXBDYWxsTm9kZS5wYXJlbnQgYXMgdHMuQ2FsbEV4cHJlc3Npb247XG4gICAgICBicmVhaztcbiAgICB9XG4gIH1cblxuICByZXR1cm4gYm9vdHN0cmFwQ2FsbDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGZpbmRCb290c3RyYXBNb2R1bGVQYXRoKGhvc3Q6IFRyZWUsIG1haW5QYXRoOiBzdHJpbmcpOiBzdHJpbmcge1xuICBjb25zdCBib290c3RyYXBDYWxsID0gZmluZEJvb3RzdHJhcE1vZHVsZUNhbGwoaG9zdCwgbWFpblBhdGgpO1xuICBpZiAoIWJvb3RzdHJhcENhbGwpIHtcbiAgICB0aHJvdyBuZXcgU2NoZW1hdGljc0V4Y2VwdGlvbignQm9vdHN0cmFwIGNhbGwgbm90IGZvdW5kJyk7XG4gIH1cblxuICBjb25zdCBib290c3RyYXBNb2R1bGUgPSBib290c3RyYXBDYWxsLmFyZ3VtZW50c1swXTtcblxuICBjb25zdCBtYWluQnVmZmVyID0gaG9zdC5yZWFkKG1haW5QYXRoKTtcbiAgaWYgKCFtYWluQnVmZmVyKSB7XG4gICAgdGhyb3cgbmV3IFNjaGVtYXRpY3NFeGNlcHRpb24oYENsaWVudCBhcHAgbWFpbiBmaWxlICgke21haW5QYXRofSkgbm90IGZvdW5kYCk7XG4gIH1cbiAgY29uc3QgbWFpblRleHQgPSBtYWluQnVmZmVyLnRvU3RyaW5nKCd1dGYtOCcpO1xuICBjb25zdCBzb3VyY2UgPSB0cy5jcmVhdGVTb3VyY2VGaWxlKG1haW5QYXRoLCBtYWluVGV4dCwgdHMuU2NyaXB0VGFyZ2V0LkxhdGVzdCwgdHJ1ZSk7XG4gIGNvbnN0IGFsbE5vZGVzID0gZ2V0U291cmNlTm9kZXMoc291cmNlKTtcbiAgY29uc3QgYm9vdHN0cmFwTW9kdWxlUmVsYXRpdmVQYXRoID0gYWxsTm9kZXNcbiAgICAuZmlsdGVyKG5vZGUgPT4gbm9kZS5raW5kID09PSB0cy5TeW50YXhLaW5kLkltcG9ydERlY2xhcmF0aW9uKVxuICAgIC5maWx0ZXIoaW1wID0+IHtcbiAgICAgIHJldHVybiBmaW5kTm9kZShpbXAsIHRzLlN5bnRheEtpbmQuSWRlbnRpZmllciwgYm9vdHN0cmFwTW9kdWxlLmdldFRleHQoKSk7XG4gICAgfSlcbiAgICAubWFwKChpbXA6IHRzLkltcG9ydERlY2xhcmF0aW9uKSA9PiB7XG4gICAgICBjb25zdCBtb2R1bGVQYXRoU3RyaW5nTGl0ZXJhbCA9IGltcC5tb2R1bGVTcGVjaWZpZXIgYXMgdHMuU3RyaW5nTGl0ZXJhbDtcblxuICAgICAgcmV0dXJuIG1vZHVsZVBhdGhTdHJpbmdMaXRlcmFsLnRleHQ7XG4gICAgfSlbMF07XG5cbiAgcmV0dXJuIGJvb3RzdHJhcE1vZHVsZVJlbGF0aXZlUGF0aDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdldEFwcE1vZHVsZVBhdGgoaG9zdDogVHJlZSwgbWFpblBhdGg6IHN0cmluZyk6IHN0cmluZyB7XG4gIGNvbnN0IG1vZHVsZVJlbGF0aXZlUGF0aCA9IGZpbmRCb290c3RyYXBNb2R1bGVQYXRoKGhvc3QsIG1haW5QYXRoKTtcbiAgY29uc3QgbWFpbkRpciA9IGRpcm5hbWUobWFpblBhdGgpO1xuICBjb25zdCBtb2R1bGVQYXRoID0gbm9ybWFsaXplKGAvJHttYWluRGlyfS8ke21vZHVsZVJlbGF0aXZlUGF0aH0udHNgKTtcblxuICByZXR1cm4gbW9kdWxlUGF0aDtcbn1cbiJdfQ==