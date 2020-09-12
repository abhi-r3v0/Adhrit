/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/// <amd-module name="@angular/compiler-cli/src/ngtsc/typecheck/src/checker" />
import { ParseError, TmplAstNode } from '@angular/compiler';
import * as ts from 'typescript';
import { AbsoluteFsPath } from '../../file_system';
import { ReferenceEmitter } from '../../imports';
import { IncrementalBuild } from '../../incremental/api';
import { ReflectionHost } from '../../reflection';
import { OptimizeFor, ProgramTypeCheckAdapter, TemplateId, TemplateTypeChecker, TypeCheckingConfig, TypeCheckingProgramStrategy } from '../api';
import { ShimTypeCheckingData } from './context';
import { TemplateSourceManager } from './source';
/**
 * Primary template type-checking engine, which performs type-checking using a
 * `TypeCheckingProgramStrategy` for type-checking program maintenance, and the
 * `ProgramTypeCheckAdapter` for generation of template type-checking code.
 */
export declare class TemplateTypeCheckerImpl implements TemplateTypeChecker {
    private originalProgram;
    readonly typeCheckingStrategy: TypeCheckingProgramStrategy;
    private typeCheckAdapter;
    private config;
    private refEmitter;
    private reflector;
    private compilerHost;
    private priorBuild;
    private state;
    private isComplete;
    constructor(originalProgram: ts.Program, typeCheckingStrategy: TypeCheckingProgramStrategy, typeCheckAdapter: ProgramTypeCheckAdapter, config: TypeCheckingConfig, refEmitter: ReferenceEmitter, reflector: ReflectionHost, compilerHost: Pick<ts.CompilerHost, 'getCanonicalFileName'>, priorBuild: IncrementalBuild<unknown, FileTypeCheckingData>);
    resetOverrides(): void;
    getTemplate(component: ts.ClassDeclaration): TmplAstNode[] | null;
    overrideComponentTemplate(component: ts.ClassDeclaration, template: string): {
        nodes: TmplAstNode[];
        errors?: ParseError[];
    };
    /**
     * Retrieve type-checking diagnostics from the given `ts.SourceFile` using the most recent
     * type-checking program.
     */
    getDiagnosticsForFile(sf: ts.SourceFile, optimizeFor: OptimizeFor): ts.Diagnostic[];
    getDiagnosticsForComponent(component: ts.ClassDeclaration): ts.Diagnostic[];
    getTypeCheckBlock(component: ts.ClassDeclaration): ts.Node | null;
    private maybeAdoptPriorResultsForFile;
    private ensureAllShimsForAllFiles;
    private ensureAllShimsForOneFile;
    private ensureShimForComponent;
    private newContext;
    /**
     * Remove any shim data that depends on inline operations applied to the type-checking program.
     *
     * This can be useful if new inlines need to be applied, and it's not possible to guarantee that
     * they won't overwrite or corrupt existing inlines that are used by such shims.
     */
    clearAllShimDataUsingInlines(): void;
    private updateFromContext;
    getFileData(path: AbsoluteFsPath): FileTypeCheckingData;
}
/**
 * Data for template type-checking related to a specific input file in the user's program (which
 * contains components to be checked).
 */
export interface FileTypeCheckingData {
    /**
     * Whether the type-checking shim required any inline changes to the original file, which affects
     * whether the shim can be reused.
     */
    hasInlines: boolean;
    /**
     * Source mapping information for mapping diagnostics from inlined type check blocks back to the
     * original template.
     */
    sourceManager: TemplateSourceManager;
    /**
     * Map of template overrides applied to any components in this input file.
     */
    templateOverrides: Map<TemplateId, TmplAstNode[]> | null;
    /**
     * Data for each shim generated from this input file.
     *
     * A single input file will generate one or more shim files that actually contain template
     * type-checking code.
     */
    shimData: Map<AbsoluteFsPath, ShimTypeCheckingData>;
    /**
     * Whether the template type-checker is certain that all components from this input file have had
     * type-checking code generated into shims.
     */
    isComplete: boolean;
}
