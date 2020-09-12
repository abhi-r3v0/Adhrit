/// <amd-module name="@angular/core/schematics/utils/typescript/compiler_host" />
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Tree } from '@angular-devkit/schematics';
import * as ts from 'typescript';
export declare function createMigrationCompilerHost(tree: Tree, options: ts.CompilerOptions, basePath: string, fakeRead?: (fileName: string) => string | null): ts.CompilerHost;
