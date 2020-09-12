/// <amd-module name="@angular/compiler-cli/ngcc/src/entry_point_finder/targeted_entry_point_finder" />
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { AbsoluteFsPath, FileSystem } from '../../../src/ngtsc/file_system';
import { DependencyResolver, SortedEntryPointsInfo } from '../dependencies/dependency_resolver';
import { Logger } from '../logging/logger';
import { NgccConfiguration } from '../packages/configuration';
import { EntryPointJsonProperty } from '../packages/entry_point';
import { PathMappings } from '../path_mappings';
import { TracingEntryPointFinder } from './tracing_entry_point_finder';
/**
 * An EntryPointFinder that starts from a target entry-point and only finds
 * entry-points that are dependencies of the target.
 *
 * This is faster than searching the entire file-system for all the entry-points,
 * and is used primarily by the CLI integration.
 */
export declare class TargetedEntryPointFinder extends TracingEntryPointFinder {
    private targetPath;
    constructor(fs: FileSystem, config: NgccConfiguration, logger: Logger, resolver: DependencyResolver, basePath: AbsoluteFsPath, pathMappings: PathMappings | undefined, targetPath: AbsoluteFsPath);
    findEntryPoints(): SortedEntryPointsInfo;
    targetNeedsProcessingOrCleaning(propertiesToConsider: EntryPointJsonProperty[], compileAllFormats: boolean): boolean;
    protected getInitialEntryPointPaths(): AbsoluteFsPath[];
}
