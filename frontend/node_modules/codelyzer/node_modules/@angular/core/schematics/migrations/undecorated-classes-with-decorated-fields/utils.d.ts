/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/// <amd-module name="@angular/core/schematics/migrations/undecorated-classes-with-decorated-fields/utils" />
import * as ts from 'typescript';
/** Name of the decorator that should be added to undecorated classes. */
export declare const FALLBACK_DECORATOR = "Directive";
/** Finds all of the undecorated classes that have decorated fields within a file. */
export declare function getUndecoratedClassesWithDecoratedFields(sourceFile: ts.SourceFile, typeChecker: ts.TypeChecker): UndecoratedClassWithDecoratedFields[];
/** Checks whether an import declaration has an import with a certain name. */
export declare function hasNamedImport(declaration: ts.ImportDeclaration, symbolName: string): boolean;
/** Extracts the NamedImports node from an import declaration. */
export declare function getNamedImports(declaration: ts.ImportDeclaration): ts.NamedImports | null;
/** Adds a new import to a NamedImports node. */
export declare function addImport(declaration: ts.NamedImports, symbolName: string): ts.NamedImports;
interface UndecoratedClassWithDecoratedFields {
    classDeclaration: ts.ClassDeclaration;
    importDeclaration: ts.ImportDeclaration;
}
export {};
