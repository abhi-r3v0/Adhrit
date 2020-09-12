/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Tree } from '@angular-devkit/schematics';
/** Finds stylesheets in the given directory from within the specified tree. */
export declare function findStylesheetFiles(tree: Tree, baseDir: string): string[];
