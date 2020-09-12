/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/// <amd-module name="@angular/compiler-cli/src/ngtsc/typecheck/src/host" />
import * as ts from 'typescript';
/**
 * A `ts.CompilerHost` which augments source files with type checking code from a
 * `TypeCheckContext`.
 */
export declare class TypeCheckProgramHost implements ts.CompilerHost {
    private originalProgram;
    private delegate;
    private shimExtensionPrefixes;
    /**
     * Map of source file names to `ts.SourceFile` instances.
     */
    private sfMap;
    /**
     * The `ShimReferenceTagger` responsible for tagging `ts.SourceFile`s loaded via this host.
     *
     * The `TypeCheckProgramHost` is used in the creation of a new `ts.Program`. Even though this new
     * program is based on a prior one, TypeScript will still start from the root files and enumerate
     * all source files to include in the new program.  This means that just like during the original
     * program's creation, these source files must be tagged with references to per-file shims in
     * order for those shims to be loaded, and then cleaned up afterwards. Thus the
     * `TypeCheckProgramHost` has its own `ShimReferenceTagger` to perform this function.
     */
    private shimTagger;
    readonly resolveModuleNames?: ts.CompilerHost['resolveModuleNames'];
    constructor(sfMap: Map<string, ts.SourceFile>, originalProgram: ts.Program, delegate: ts.CompilerHost, shimExtensionPrefixes: string[]);
    getSourceFile(fileName: string, languageVersion: ts.ScriptTarget, onError?: ((message: string) => void) | undefined, shouldCreateNewSourceFile?: boolean | undefined): ts.SourceFile | undefined;
    postProgramCreationCleanup(): void;
    getDefaultLibFileName(options: ts.CompilerOptions): string;
    writeFile(fileName: string, data: string, writeByteOrderMark: boolean, onError: ((message: string) => void) | undefined, sourceFiles: ReadonlyArray<ts.SourceFile> | undefined): void;
    getCurrentDirectory(): string;
    getDirectories?: (path: string) => string[];
    getCanonicalFileName(fileName: string): string;
    useCaseSensitiveFileNames(): boolean;
    getNewLine(): string;
    fileExists(fileName: string): boolean;
    readFile(fileName: string): string | undefined;
}
