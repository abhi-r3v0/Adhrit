/// <amd-module name="@angular/compiler-cli/ngcc/src/entry_point_finder/program_based_entry_point_finder" />
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { AbsoluteFsPath, FileSystem } from '../../../src/ngtsc/file_system';
import { ParsedConfiguration } from '../../../src/perform_compile';
import { DependencyResolver } from '../dependencies/dependency_resolver';
import { Logger } from '../logging/logger';
import { NgccConfiguration } from '../packages/configuration';
import { TracingEntryPointFinder } from './tracing_entry_point_finder';
/**
 * An EntryPointFinder that starts from the files in the program defined by the given tsconfig.json
 * and only returns entry-points that are dependencies of these files.
 *
 * This is faster than searching the entire file-system for all the entry-points,
 * and is used primarily by the CLI integration.
 */
export declare class ProgramBasedEntryPointFinder extends TracingEntryPointFinder {
    private tsConfig;
    constructor(fs: FileSystem, config: NgccConfiguration, logger: Logger, resolver: DependencyResolver, basePath: AbsoluteFsPath, tsConfig: ParsedConfiguration, projectPath: AbsoluteFsPath);
    protected getInitialEntryPointPaths(): AbsoluteFsPath[];
}
