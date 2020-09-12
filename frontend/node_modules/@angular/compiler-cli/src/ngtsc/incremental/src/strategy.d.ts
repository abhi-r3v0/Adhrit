/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/// <amd-module name="@angular/compiler-cli/src/ngtsc/incremental/src/strategy" />
import * as ts from 'typescript';
import { IncrementalDriver } from './state';
/**
 * Strategy used to manage the association between a `ts.Program` and the `IncrementalDriver` which
 * represents the reusable Angular part of its compilation.
 */
export interface IncrementalBuildStrategy {
    /**
     * Determine the Angular `IncrementalDriver` for the given `ts.Program`, if one is available.
     */
    getIncrementalDriver(program: ts.Program): IncrementalDriver | null;
    /**
     * Associate the given `IncrementalDriver` with the given `ts.Program` and make it available to
     * future compilations.
     */
    setIncrementalDriver(driver: IncrementalDriver, program: ts.Program): void;
}
/**
 * A noop implementation of `IncrementalBuildStrategy` which neither returns nor tracks any
 * incremental data.
 */
export declare class NoopIncrementalBuildStrategy implements IncrementalBuildStrategy {
    getIncrementalDriver(): null;
    setIncrementalDriver(): void;
}
/**
 * Tracks an `IncrementalDriver` within the strategy itself.
 */
export declare class TrackedIncrementalBuildStrategy implements IncrementalBuildStrategy {
    private driver;
    private isSet;
    getIncrementalDriver(): IncrementalDriver | null;
    setIncrementalDriver(driver: IncrementalDriver): void;
    toNextBuildStrategy(): TrackedIncrementalBuildStrategy;
}
/**
 * Manages the `IncrementalDriver` associated with a `ts.Program` by monkey-patching it onto the
 * program under `SYM_INCREMENTAL_DRIVER`.
 */
export declare class PatchedProgramIncrementalBuildStrategy implements IncrementalBuildStrategy {
    getIncrementalDriver(program: ts.Program): IncrementalDriver | null;
    setIncrementalDriver(driver: IncrementalDriver, program: ts.Program): void;
}
