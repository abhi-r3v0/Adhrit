/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/// <amd-module name="@angular/compiler-cli/ngcc/src/host/commonjs_umd_utils" />
import * as ts from 'typescript';
import { Declaration } from '../../../src/ngtsc/reflection';
export interface ExportDeclaration {
    name: string;
    declaration: Declaration;
}
export interface ExportStatement extends ts.ExpressionStatement {
    expression: ts.BinaryExpression & {
        left: ts.PropertyAccessExpression & {
            expression: ts.Identifier;
        };
    };
}
/**
 * A CommonJS or UMD wildcard re-export statement.
 *
 * The CommonJS or UMD version of `export * from 'blah';`.
 *
 * These statements can have several forms (depending, for example, on whether
 * the TypeScript helpers are imported or emitted inline). The expression can have one of the
 * following forms:
 * - `__export(firstArg)`
 * - `__exportStar(firstArg)`
 * - `tslib.__export(firstArg, exports)`
 * - `tslib.__exportStar(firstArg, exports)`
 *
 * In all cases, we only care about `firstArg`, which is the first argument of the re-export call
 * expression and can be either a `require('...')` call or an identifier (initialized via a
 * `require('...')` call).
 */
export interface WildcardReexportStatement extends ts.ExpressionStatement {
    expression: ts.CallExpression;
}
/**
 * A CommonJS or UMD re-export statement using an `Object.defineProperty()` call.
 * For example:
 *
 * ```
 * Object.defineProperty(exports, "<exported-id>",
 *     { enumerable: true, get: function () { return <imported-id>; } });
 * ```
 */
export interface DefinePropertyReexportStatement extends ts.ExpressionStatement {
    expression: ts.CallExpression & {
        arguments: [ts.Identifier, ts.StringLiteral, ts.ObjectLiteralExpression];
    };
}
export interface RequireCall extends ts.CallExpression {
    arguments: ts.CallExpression['arguments'] & [ts.StringLiteral];
}
/**
 * Return the "namespace" of the specified `ts.Identifier` if the identifier is the RHS of a
 * property access expression, i.e. an expression of the form `<namespace>.<id>` (in which case a
 * `ts.Identifier` corresponding to `<namespace>` will be returned). Otherwise return `null`.
 */
export declare function findNamespaceOfIdentifier(id: ts.Identifier): ts.Identifier | null;
/**
 * Return the `RequireCall` that is used to initialize the specified `ts.Identifier`, if the
 * specified indentifier was indeed initialized with a require call in a declaration of the form:
 * `var <id> = require('...')`
 */
export declare function findRequireCallReference(id: ts.Identifier, checker: ts.TypeChecker): RequireCall | null;
/**
 * Check whether the specified `ts.Statement` is an export statement, i.e. an expression statement
 * of the form: `exports.<foo> = <bar>`
 */
export declare function isExportStatement(stmt: ts.Statement): stmt is ExportStatement;
/**
 * Check whether the specified `ts.Statement` is a wildcard re-export statement.
 * I.E. an expression statement of one of the following forms:
 * - `__export(<foo>)`
 * - `__exportStar(<foo>)`
 * - `tslib.__export(<foo>, exports)`
 * - `tslib.__exportStar(<foo>, exports)`
 */
export declare function isWildcardReexportStatement(stmt: ts.Statement): stmt is WildcardReexportStatement;
/**
 * Check whether the statement is a re-export of the form:
 *
 * ```
 * Object.defineProperty(exports, "<export-name>",
 *     { enumerable: true, get: function () { return <import-name>; } });
 * ```
 */
export declare function isDefinePropertyReexportStatement(stmt: ts.Statement): stmt is DefinePropertyReexportStatement;
export declare function extractGetterFnExpression(statement: DefinePropertyReexportStatement): ts.Expression | null;
/**
 * Check whether the specified `ts.Node` represents a `require()` call, i.e. an call expression of
 * the form: `require('<foo>')`
 */
export declare function isRequireCall(node: ts.Node): node is RequireCall;
export declare function isExternalImport(path: string): boolean;
