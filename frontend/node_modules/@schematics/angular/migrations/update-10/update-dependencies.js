"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const tasks_1 = require("@angular-devkit/schematics/tasks");
const dependencies_1 = require("../../utility/dependencies");
const latest_versions_1 = require("../../utility/latest-versions");
function default_1() {
    return (host, context) => {
        const dependenciesToUpdate = {
            'codelyzer': '^6.0.0',
            'jasmine-core': '~3.5.0',
            'jasmine-spec-reporter': '~5.0.0',
            'karma': '~5.0.0',
            'karma-chrome-launcher': '~3.1.0',
            'karma-coverage-istanbul-reporter': '~3.0.2',
            'karma-jasmine': '~3.3.0',
            'karma-jasmine-html-reporter': '^1.5.0',
            'protractor': '~7.0.0',
            'ng-packagr': latest_versions_1.latestVersions.ngPackagr,
            'tslib': '^2.0.0',
        };
        let hasChanges = false;
        for (const [name, version] of Object.entries(dependenciesToUpdate)) {
            const current = dependencies_1.getPackageJsonDependency(host, name);
            if (!current || current.version === version) {
                continue;
            }
            dependencies_1.addPackageJsonDependency(host, {
                type: current.type,
                name,
                version,
                overwrite: true,
            });
            hasChanges = true;
        }
        if (hasChanges) {
            context.addTask(new tasks_1.NodePackageInstallTask());
        }
        // Check for @angular-devkit/schematics and @angular-devkit/core
        for (const name of ['@angular-devkit/schematics', '@angular-devkit/core']) {
            if (dependencies_1.getPackageJsonDependency(host, name)) {
                context.logger.info(`Package "${name}" found in the workspace package.json. ` +
                    'This package typically does not need to be installed manually. ' +
                    'If it is not being used by project code, it can be removed from the package.json.');
            }
        }
        if (dependencies_1.getPackageJsonDependency(host, 'rxjs-compat')) {
            context.logger.info(`Package "rxjs-compat" found in the workspace package.json. ` +
                'This package typically was used during migration from RxJs version 5 to 6 during the Angular 5 ' +
                'timeframe and may no longer be needed.\n' +
                'Read more about this: https://rxjs-dev.firebaseapp.com/guide/v6/migration');
        }
    };
}
exports.default = default_1;
