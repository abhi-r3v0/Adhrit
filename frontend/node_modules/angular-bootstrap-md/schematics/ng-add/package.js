"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function sortObjectByKeys(obj) {
    return Object.keys(obj)
        .sort()
        .reduce((result, key) => (result[key] = obj[key]) && result, {});
}
function addPackageToPackageJson(tree, pkg, version) {
    if (tree.exists('package.json')) {
        const packageJsonFile = tree.read('package.json');
        const sourceText = packageJsonFile && packageJsonFile.toString('utf-8');
        const json = sourceText && JSON.parse(sourceText);
        if (!json.dependencies) {
            json.dependencies = {};
        }
        if (!json.dependencies[pkg]) {
            json.dependencies[pkg] = version;
            json.dependencies = sortObjectByKeys(json.dependencies);
        }
        tree.overwrite('package.json', JSON.stringify(json, null, 2));
    }
    return tree;
}
exports.addPackageToPackageJson = addPackageToPackageJson;
//# sourceMappingURL=package.js.map