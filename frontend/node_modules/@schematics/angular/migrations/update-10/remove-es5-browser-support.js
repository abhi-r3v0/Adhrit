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
const workspace_1 = require("../../utility/workspace");
const workspace_models_1 = require("../../utility/workspace-models");
function default_1() {
    return async (host, context) => {
        const workspace = await workspace_1.getWorkspace(host);
        for (const [projectName, project] of workspace.projects) {
            if (project.extensions.projectType !== workspace_models_1.ProjectType.Application) {
                // Only interested in application projects
                continue;
            }
            for (const [, target] of project.targets) {
                // Only interested in Angular Devkit Browser builder
                if ((target === null || target === void 0 ? void 0 : target.builder) !== workspace_models_1.Builders.Browser) {
                    continue;
                }
                const isES5Needed = await isES5SupportNeeded(core_1.resolve(core_1.normalize(host.root.path), core_1.normalize(project.root)));
                // Check options
                if (target.options) {
                    target.options = removeE5BrowserSupportOption(projectName, target.options, isES5Needed, context.logger);
                }
                // Go through each configuration entry
                if (!target.configurations) {
                    continue;
                }
                for (const [configurationName, options] of Object.entries(target.configurations)) {
                    target.configurations[configurationName] = removeE5BrowserSupportOption(projectName, options, isES5Needed, context.logger, configurationName);
                }
            }
        }
        return workspace_1.updateWorkspace(workspace);
    };
}
exports.default = default_1;
function removeE5BrowserSupportOption(projectName, options, isES5Needed, logger, configurationName = '') {
    if (typeof (options === null || options === void 0 ? void 0 : options.es5BrowserSupport) !== 'boolean') {
        return options;
    }
    const configurationPath = configurationName ? `configurations.${configurationName}.` : '';
    if (options.es5BrowserSupport && isES5Needed === false) {
        logger.warn(`Project '${projectName}' doesn't require ES5 support, but '${configurationPath}es5BrowserSupport' was set to 'true'.\n` +
            `ES5 polyfills will no longer be added when building this project${configurationName ? ` with '${configurationName}' configuration.` : '.'}\n` +
            `If ES5 polyfills are needed, add the supported ES5 browsers in the browserslist configuration.`);
    }
    else if (!options.es5BrowserSupport && isES5Needed === true) {
        logger.warn(`Project '${projectName}' requires ES5 support, but '${configurationPath}es5BrowserSupport' was set to 'false'.\n` +
            `ES5 polyfills will be added when building this project${configurationName ? ` with '${configurationName}' configuration.` : '.'}\n` +
            `If ES5 polyfills are not needed, remove the unsupported ES5 browsers from the browserslist configuration.`);
    }
    return {
        ...options,
        es5BrowserSupport: undefined,
    };
}
/**
 * True, when one or more browsers requires ES5 support
 */
async function isES5SupportNeeded(projectRoot) {
    // y: feature is fully available
    // n: feature is unavailable
    // a: feature is partially supported
    // x: feature is prefixed
    const criteria = [
        'y',
        'a',
    ];
    try {
        // tslint:disable-next-line:no-implicit-dependencies
        const browserslist = await Promise.resolve().then(() => require('browserslist'));
        const supportedBrowsers = browserslist(undefined, {
            path: core_1.getSystemPath(projectRoot),
        });
        // tslint:disable-next-line:no-implicit-dependencies
        const { feature, features } = await Promise.resolve().then(() => require('caniuse-lite'));
        const data = feature(features['es6-module']);
        return supportedBrowsers
            .some(browser => {
            const [agentId, version] = browser.split(' ');
            const browserData = data.stats[agentId];
            const featureStatus = (browserData && browserData[version]);
            // We are only interested in the first character
            // Ex: when 'a #4 #5', we only need to check for 'a'
            // as for such cases we should polyfill these features as needed
            return !featureStatus || !criteria.includes(featureStatus.charAt(0));
        });
    }
    catch (_a) {
        return undefined;
    }
}
