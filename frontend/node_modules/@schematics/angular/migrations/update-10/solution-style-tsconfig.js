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
const schematics_1 = require("@angular-devkit/schematics");
const json_utils_1 = require("../../utility/json-utils");
const workspace_1 = require("../../utility/workspace");
const SOLUTIONS_TS_CONFIG_HEADER = `/*
  This is a "Solution Style" tsconfig.json file, and is used by editors and TypeScript’s language server to improve development experience.
  It is not intended to be used to perform a compilation.

  To learn more about this file see: https://angular.io/config/solution-tsconfig.
*/
`;
function* visitExtendedJsonFiles(directory, logger) {
    for (const path of directory.subfiles) {
        if (!path.endsWith('.json')) {
            continue;
        }
        const entry = directory.file(path);
        const content = entry === null || entry === void 0 ? void 0 : entry.content.toString();
        if (!content) {
            continue;
        }
        let jsonAst;
        try {
            jsonAst = core_1.parseJsonAst(content, core_1.JsonParseMode.Loose);
        }
        catch (error) {
            let jsonFilePath = `${core_1.join(directory.path, path)}`;
            jsonFilePath = jsonFilePath.startsWith('/') ? jsonFilePath.substr(1) : jsonFilePath;
            const msg = error instanceof Error ? error.message : error;
            logger.warn(`Failed to parse "${jsonFilePath}" as JSON AST Object. ${msg}\n` +
                'If this is a TypeScript configuration file you will need to update the "extends" value manually.');
            continue;
        }
        if (jsonAst.kind !== 'object') {
            continue;
        }
        const extendsAst = json_utils_1.findPropertyInAstObject(jsonAst, 'extends');
        // Check if this config has the potential of extended the workspace tsconfig.
        // Unlike tslint configuration, tsconfig "extends" cannot be an array.
        if ((extendsAst === null || extendsAst === void 0 ? void 0 : extendsAst.kind) === 'string' && extendsAst.value.endsWith('tsconfig.json')) {
            yield [core_1.join(directory.path, path), extendsAst];
        }
    }
    for (const path of directory.subdirs) {
        if (path === 'node_modules' || path.startsWith('.')) {
            continue;
        }
        yield* visitExtendedJsonFiles(directory.dir(path), logger);
    }
}
function updateTsconfigExtendsRule() {
    return (host, context) => {
        if (!host.exists('tsconfig.json')) {
            return;
        }
        // Rename workspace tsconfig to base tsconfig.
        host.rename('tsconfig.json', 'tsconfig.base.json');
        // Iterate over all tsconfig files and change the extends from 'tsconfig.json' 'tsconfig.base.json'
        for (const [tsconfigPath, extendsAst] of visitExtendedJsonFiles(host.root, context.logger)) {
            const tsConfigDir = core_1.dirname(core_1.normalize(tsconfigPath));
            if ('/tsconfig.json' !== core_1.resolve(tsConfigDir, core_1.normalize(extendsAst.value))) {
                // tsconfig extends doesn't refer to the workspace tsconfig path.
                continue;
            }
            // Replace last path, json -> base.json
            const recorder = host.beginUpdate(tsconfigPath);
            const offset = extendsAst.end.offset - 5;
            recorder.remove(offset, 4);
            recorder.insertLeft(offset, 'base.json');
            host.commitUpdate(recorder);
        }
    };
}
function addSolutionTsConfigRule() {
    return async (host) => {
        const tsConfigPaths = new Set();
        const workspace = await workspace_1.getWorkspace(host);
        // Find all tsconfig which are refereces used by builders
        for (const [, project] of workspace.projects) {
            for (const [, target] of project.targets) {
                if (!target.options) {
                    continue;
                }
                for (const [key, value] of Object.entries(target.options)) {
                    if ((key === 'tsConfig' || key === 'webWorkerTsConfig') && typeof value === 'string') {
                        tsConfigPaths.add(value);
                    }
                }
            }
        }
        // Generate the solutions style tsconfig/
        const tsConfigContent = {
            files: [],
            references: [...tsConfigPaths].map(p => ({ path: `./${p}` })),
        };
        host.create('tsconfig.json', SOLUTIONS_TS_CONFIG_HEADER + JSON.stringify(tsConfigContent, undefined, 2));
    };
}
function default_1() {
    return (host, context) => {
        const logger = context.logger;
        if (host.exists('tsconfig.base.json')) {
            logger.info('Migration has already been executed.');
            return;
        }
        return schematics_1.chain([
            updateTsconfigExtendsRule,
            addSolutionTsConfigRule,
        ]);
    };
}
exports.default = default_1;
