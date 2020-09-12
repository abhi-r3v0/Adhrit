/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/// <amd-module name="@angular/compiler-cli/src/ngtsc/typecheck/src/augmented_program" />
import * as ts from 'typescript';
import { AbsoluteFsPath } from '../../file_system';
import { TypeCheckingProgramStrategy, UpdateMode } from '../api';
/**
 * Implements a template type-checking program using `ts.createProgram` and TypeScript's program
 * reuse functionality.
 */
export declare class ReusedProgramStrategy implements TypeCheckingProgramStrategy {
    private originalProgram;
    private originalHost;
    private options;
    private shimExtensionPrefixes;
    /**
     * A map of source file paths to replacement `ts.SourceFile`s for those paths.
     *
     * Effectively, this tracks the delta between the user's program (represented by the
     * `originalHost`) and the template type-checking program being managed.
     */
    private sfMap;
    private program;
    constructor(originalProgram: ts.Program, originalHost: ts.CompilerHost, options: ts.CompilerOptions, shimExtensionPrefixes: string[]);
    readonly supportsInlineOperations = true;
    getProgram(): ts.Program;
    updateFiles(contents: Map<AbsoluteFsPath, string>, updateMode: UpdateMode): void;
    shimPathForComponent(node: ts.ClassDeclaration): AbsoluteFsPath;
}
