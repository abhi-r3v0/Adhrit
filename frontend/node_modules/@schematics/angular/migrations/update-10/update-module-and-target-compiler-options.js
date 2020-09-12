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
const json_utils_1 = require("../../utility/json-utils");
const workspace_1 = require("../../utility/workspace");
const workspace_models_1 = require("../../utility/workspace-models");
const utils_1 = require("../update-9/utils");
function default_1() {
    return async (host) => {
        var _a;
        // Workspace level tsconfig
        updateModuleAndTarget(host, 'tsconfig.base.json', {
            oldModule: 'esnext',
            newModule: 'es2020',
        });
        const workspace = await workspace_1.getWorkspace(host);
        // Find all tsconfig which are refereces used by builders
        for (const [, project] of workspace.projects) {
            for (const [, target] of project.targets) {
                // E2E builder doesn't reference a tsconfig but it uses one found in the root folder.
                if (target.builder === workspace_models_1.Builders.Protractor && typeof ((_a = target.options) === null || _a === void 0 ? void 0 : _a.protractorConfig) === 'string') {
                    const tsConfigPath = core_1.join(core_1.dirname(core_1.normalize(target.options.protractorConfig)), 'tsconfig.json');
                    updateModuleAndTarget(host, tsConfigPath, {
                        oldTarget: 'es5',
                        newTarget: 'es2018',
                    });
                    continue;
                }
                // Update all other known CLI builders that use a tsconfig
                const tsConfigs = [
                    target.options || {},
                    ...Object.values(target.configurations || {}),
                ]
                    .filter(opt => typeof (opt === null || opt === void 0 ? void 0 : opt.tsConfig) === 'string')
                    .map(opt => opt.tsConfig);
                const uniqueTsConfigs = [...new Set(tsConfigs)];
                if (uniqueTsConfigs.length < 1) {
                    continue;
                }
                switch (target.builder) {
                    case workspace_models_1.Builders.Server:
                        uniqueTsConfigs.forEach(p => {
                            updateModuleAndTarget(host, p, {
                                oldModule: 'commonjs',
                                // False will remove the module
                                // NB: For server we no longer use commonjs because it is bundled using webpack which has it's own module system.
                                // This ensures that lazy-loaded works on the server.
                                newModule: false,
                            });
                            updateModuleAndTarget(host, p, {
                                newTarget: 'es2016',
                            });
                        });
                        break;
                    case workspace_models_1.Builders.Karma:
                    case workspace_models_1.Builders.Browser:
                    case workspace_models_1.Builders.NgPackagr:
                        uniqueTsConfigs.forEach(p => {
                            updateModuleAndTarget(host, p, {
                                oldModule: 'esnext',
                                newModule: 'es2020',
                            });
                        });
                        break;
                }
            }
        }
    };
}
exports.default = default_1;
function updateModuleAndTarget(host, tsConfigPath, replacements) {
    const jsonAst = utils_1.readJsonFileAsAstObject(host, tsConfigPath);
    if (!jsonAst) {
        return;
    }
    const compilerOptionsAst = json_utils_1.findPropertyInAstObject(jsonAst, 'compilerOptions');
    if ((compilerOptionsAst === null || compilerOptionsAst === void 0 ? void 0 : compilerOptionsAst.kind) !== 'object') {
        return;
    }
    const { oldTarget, newTarget, newModule, oldModule } = replacements;
    const recorder = host.beginUpdate(tsConfigPath);
    if (newTarget) {
        const targetAst = json_utils_1.findPropertyInAstObject(compilerOptionsAst, 'target');
        if (!targetAst && !oldTarget) {
            json_utils_1.appendPropertyInAstObject(recorder, compilerOptionsAst, 'target', newTarget, 4);
        }
        else if ((targetAst === null || targetAst === void 0 ? void 0 : targetAst.kind) === 'string' && (!oldTarget || oldTarget === targetAst.value.toLowerCase())) {
            const offset = targetAst.start.offset + 1;
            recorder.remove(offset, targetAst.value.length);
            recorder.insertLeft(offset, newTarget);
        }
    }
    if (newModule === false) {
        json_utils_1.removePropertyInAstObject(recorder, compilerOptionsAst, 'module');
    }
    else if (newModule) {
        const moduleAst = json_utils_1.findPropertyInAstObject(compilerOptionsAst, 'module');
        if ((moduleAst === null || moduleAst === void 0 ? void 0 : moduleAst.kind) === 'string' && oldModule === moduleAst.value.toLowerCase()) {
            const offset = moduleAst.start.offset + 1;
            recorder.remove(offset, moduleAst.value.length);
            recorder.insertLeft(offset, newModule);
        }
    }
    host.commitUpdate(recorder);
}
