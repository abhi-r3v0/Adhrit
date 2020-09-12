"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
const schematics_1 = require("@angular-devkit/schematics");
const schematics_2 = require("@angular/cdk/schematics");
const config_1 = require("@schematics/angular/utility/config");
/** Name of the ngx-spinner module */
const spinnerModuleName = 'NgxSpinnerModule';
function default_1(options) {
    return (host, _context) => {
        const workspace = config_1.getWorkspace(host);
        const project = schematics_2.getProjectFromWorkspace(workspace, options.project);
        if (project.projectType === 'application') {
            return schematics_1.chain([
                addSpinnerModule(options),
            ]);
        }
        return host;
    };
}
exports.default = default_1;
function addSpinnerModule(options) {
    return (host, _context) => {
        const workspace = config_1.getWorkspace(host);
        const project = schematics_2.getProjectFromWorkspace(workspace, options.project);
        const appModulePath = schematics_2.getAppModulePath(host, schematics_2.getProjectMainFile(project));
        if (!schematics_2.hasNgModuleImport(host, appModulePath, spinnerModuleName)) {
            schematics_2.addModuleImportToRootModule(host, spinnerModuleName, 'ngx-spinner', project);
        }
        return host;
    };
}
//# sourceMappingURL=setup-project.js.map