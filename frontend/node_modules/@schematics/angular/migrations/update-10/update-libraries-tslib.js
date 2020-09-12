"use strict";
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
const core_1 = require("@angular-devkit/core");
const dependencies_1 = require("../../utility/dependencies");
const workspace_1 = require("../../utility/workspace");
const workspace_models_1 = require("../../utility/workspace-models");
function default_1() {
    return async (host) => {
        const workspace = await workspace_1.getWorkspace(host);
        for (const [, project] of workspace.projects) {
            if (project.extensions.projectType !== workspace_models_1.ProjectType.Library) {
                // Only interested in library projects
                continue;
            }
            const packageJsonPath = core_1.join(core_1.normalize(project.root), 'package.json');
            if (!host.exists(packageJsonPath)) {
                continue;
            }
            // Remove tslib from any type of dependency
            dependencies_1.removePackageJsonDependency(host, 'tslib', packageJsonPath);
            // Add tslib as a direct dependency
            dependencies_1.addPackageJsonDependency(host, {
                name: 'tslib',
                version: '^2.0.0',
                type: dependencies_1.NodeDependencyType.Default,
            }, packageJsonPath);
        }
    };
}
exports.default = default_1;
