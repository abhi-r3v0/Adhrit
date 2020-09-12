"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
const core_1 = require("@angular-devkit/core");
function* visit(directory) {
    for (const path of directory.subfiles) {
        if (path !== 'browserslist') {
            continue;
        }
        yield core_1.join(directory.path, path);
    }
    for (const path of directory.subdirs) {
        if (path === 'node_modules' || path.startsWith('.')) {
            continue;
        }
        yield* visit(directory.dir(path));
    }
}
function default_1() {
    return tree => {
        for (const path of visit(tree.root)) {
            tree.rename(path, path.replace(/browserslist$/, '.browserslistrc'));
        }
    };
}
exports.default = default_1;
