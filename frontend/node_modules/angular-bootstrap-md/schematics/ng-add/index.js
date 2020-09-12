"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const tasks_1 = require("@angular-devkit/schematics/tasks");
const package_1 = require("./package");
// Just return the tree
function ngAdd(options) {
    return (tree, context) => {
        const angularDependencyVersion = '^9.0.0';
        package_1.addPackageToPackageJson(tree, '@angular/cdk', angularDependencyVersion);
        package_1.addPackageToPackageJson(tree, '@angular/forms', angularDependencyVersion);
        package_1.addPackageToPackageJson(tree, '@angular/animations', angularDependencyVersion);
        if (options.externalDependencies) {
            package_1.addPackageToPackageJson(tree, 'chart.js', '^2.7.2');
            package_1.addPackageToPackageJson(tree, '@types/chart.js', '^2.7.40');
            package_1.addPackageToPackageJson(tree, '@fortawesome/fontawesome-free', '~5.6.3');
            package_1.addPackageToPackageJson(tree, 'hammerjs', '~2.0.8');
            package_1.addPackageToPackageJson(tree, 'animate.css', '~3.7.2');
        }
        const installMainDependenciesTask = context.addTask(new tasks_1.NodePackageInstallTask());
        context.addTask(new tasks_1.RunSchematicTask('ng-add-mdb-setup', options), [installMainDependenciesTask]);
    };
}
exports.ngAdd = ngAdd;
//# sourceMappingURL=index.js.map