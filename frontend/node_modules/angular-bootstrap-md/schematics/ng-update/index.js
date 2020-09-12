"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const config_1 = require("@schematics/angular/utility/config");
const schematics_1 = require("@angular/cdk/schematics");
function updateToV9() {
    return (tree, context) => {
        const fontUrl = 'https://fonts.googleapis.com/css?family=Roboto:300,400,500,600&display=swap';
        const workspace = config_1.getWorkspace(tree);
        const project = schematics_1.getProjectFromWorkspace(workspace);
        const projectIndexFiles = schematics_1.getProjectIndexFiles(project);
        const logger = context.logger;
        if (!projectIndexFiles.length) {
            logger.error('Index HTML not found');
            logger.info('Add roboto font manually');
            return;
        }
        projectIndexFiles.forEach((indexFile) => {
            schematics_1.appendHtmlElementToHead(tree, indexFile, `<link href="${fontUrl}" rel="stylesheet">`);
        });
        return tree;
    };
}
exports.updateToV9 = updateToV9;
//# sourceMappingURL=index.js.map