/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Rule, Tree } from '@angular-devkit/schematics';
/**
 * Add project references in "Solution Style" tsconfig.
 */
export declare function addTsConfigProjectReferences(paths: string[]): Rule;
/**
 * Throws an exception when the base tsconfig doesn't exists.
 */
export declare function verifyBaseTsConfigExists(host: Tree): void;
