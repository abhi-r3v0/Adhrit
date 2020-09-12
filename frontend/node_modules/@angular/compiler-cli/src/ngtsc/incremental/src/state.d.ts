/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/// <amd-module name="@angular/compiler-cli/src/ngtsc/incremental/src/state" />
import * as ts from 'typescript';
import { AbsoluteFsPath } from '../../file_system';
import { ClassRecord, TraitCompiler } from '../../transform';
import { FileTypeCheckingData } from '../../typecheck/src/checker';
import { IncrementalBuild } from '../api';
import { FileDependencyGraph } from './dependency_tracking';
/**
 * Drives an incremental build, by tracking changes and determining which files need to be emitted.
 */
export declare class IncrementalDriver implements IncrementalBuild<ClassRecord, FileTypeCheckingData> {
    private allTsFiles;
    readonly depGraph: FileDependencyGraph;
    private logicalChanges;
    /**
     * State of the current build.
     *
     * This transitions as the compilation progresses.
     */
    private state;
    private constructor();
    /**
     * Construct an `IncrementalDriver` with a starting state that incorporates the results of a
     * previous build.
     *
     * The previous build's `BuildState` is reconciled with the new program's changes, and the results
     * are merged into the new build's `PendingBuildState`.
     */
    static reconcile(oldProgram: ts.Program, oldDriver: IncrementalDriver, newProgram: ts.Program, modifiedResourceFiles: Set<string> | null): IncrementalDriver;
    static fresh(program: ts.Program): IncrementalDriver;
    recordSuccessfulAnalysis(traitCompiler: TraitCompiler): void;
    recordSuccessfulTypeCheck(results: Map<AbsoluteFsPath, FileTypeCheckingData>): void;
    recordSuccessfulEmit(sf: ts.SourceFile): void;
    safeToSkipEmit(sf: ts.SourceFile): boolean;
    priorWorkFor(sf: ts.SourceFile): ClassRecord[] | null;
    priorTypeCheckingResultsFor(sf: ts.SourceFile): FileTypeCheckingData | null;
}
