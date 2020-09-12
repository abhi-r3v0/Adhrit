"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const tasks_1 = require("@angular-devkit/schematics/tasks");
// Just return the tree
function default_1(options) {
    return (_tree, context) => {
        const installTaskId = context.addTask(new tasks_1.NodePackageInstallTask());
        context.addTask(new tasks_1.RunSchematicTask('ng-add-setup-project', options), [installTaskId]);
        // _context.addTask(new NodePackageInstallTask());
        // return tree;
    };
}
exports.default = default_1;
//# sourceMappingURL=index.js.map