/// <amd-module name="@angular/compiler-cli/ngcc/src/packages/ngcc_compiler_host" />
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import * as ts from 'typescript';
import { AbsoluteFsPath, FileSystem, NgtscCompilerHost } from '../../../src/ngtsc/file_system';
/**
 * Represents a compiler host that resolves a module import as a JavaScript source file if
 * available, instead of the .d.ts typings file that would have been resolved by TypeScript. This
 * is necessary for packages that have their typings in the same directory as the sources, which
 * would otherwise let TypeScript prefer the .d.ts file instead of the JavaScript source file.
 */
export declare class NgccSourcesCompilerHost extends NgtscCompilerHost {
    protected packagePath: AbsoluteFsPath;
    private cache;
    constructor(fs: FileSystem, options: ts.CompilerOptions, packagePath: AbsoluteFsPath);
    resolveModuleNames(moduleNames: string[], containingFile: string, reusedNames?: string[], redirectedReference?: ts.ResolvedProjectReference): Array<ts.ResolvedModule | undefined>;
}
