"use strict";
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.verifyBaseTsConfigExists = exports.addTsConfigProjectReferences = void 0;
const core_1 = require("@angular-devkit/core");
const schematics_1 = require("@angular-devkit/schematics");
const json_utils_1 = require("./json-utils");
const SOLUTION_TSCONFIG_PATH = 'tsconfig.json';
/**
 * Add project references in "Solution Style" tsconfig.
 */
function addTsConfigProjectReferences(paths) {
    return (host, context) => {
        const logger = context.logger;
        // We need to read after each write to avoid missing `,` when appending multiple items.
        for (const path of paths) {
            const source = host.read(SOLUTION_TSCONFIG_PATH);
            if (!source) {
                // Solution tsconfig doesn't exist.
                logger.warn(`Cannot add reference '${path}' in '${SOLUTION_TSCONFIG_PATH}'. File doesn't exists.`);
                return;
            }
            const jsonAst = core_1.parseJsonAst(source.toString(), core_1.JsonParseMode.Loose);
            if ((jsonAst === null || jsonAst === void 0 ? void 0 : jsonAst.kind) !== 'object') {
                // Invalid JSON
                throw new schematics_1.SchematicsException(`Invalid JSON AST Object '${SOLUTION_TSCONFIG_PATH}'.`);
            }
            // Solutions style tsconfig can contain 2 properties:
            //  - 'files' with a value of empty array
            //  - 'references'
            const filesAst = json_utils_1.findPropertyInAstObject(jsonAst, 'files');
            const referencesAst = json_utils_1.findPropertyInAstObject(jsonAst, 'references');
            if ((filesAst === null || filesAst === void 0 ? void 0 : filesAst.kind) !== 'array' ||
                filesAst.elements.length !== 0 ||
                (referencesAst === null || referencesAst === void 0 ? void 0 : referencesAst.kind) !== 'array') {
                logger.warn(`Cannot add reference '${path}' in '${SOLUTION_TSCONFIG_PATH}'. It appears to be an invalid solution style tsconfig.`);
                return;
            }
            // Append new paths
            const recorder = host.beginUpdate(SOLUTION_TSCONFIG_PATH);
            json_utils_1.appendValueInAstArray(recorder, referencesAst, { 'path': `./${path}` }, 4);
            host.commitUpdate(recorder);
        }
    };
}
exports.addTsConfigProjectReferences = addTsConfigProjectReferences;
/**
 * Throws an exception when the base tsconfig doesn't exists.
 */
function verifyBaseTsConfigExists(host) {
    if (host.exists('tsconfig.base.json')) {
        return;
    }
    throw new schematics_1.SchematicsException(`Cannot find base TypeScript configuration file 'tsconfig.base.json'.`);
}
exports.verifyBaseTsConfigExists = verifyBaseTsConfigExists;
