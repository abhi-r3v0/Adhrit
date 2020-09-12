"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const dependencies_1 = require("../../utility/dependencies");
const json_utils_1 = require("../../utility/json-utils");
const utils_1 = require("../update-9/utils");
const TSLINT_CONFIG_PATH = '/tslint.json';
const RULES_TO_ADD = {
    deprecation: {
        severity: 'warning',
    },
};
function default_1() {
    return (tree, context) => {
        const logger = context.logger;
        // Update tslint dependency
        const current = dependencies_1.getPackageJsonDependency(tree, 'tslint');
        if (!current) {
            logger.info('Skipping: "tslint" in not a dependency of this workspace.');
            return;
        }
        // Update tslint config.
        const tslintJsonAst = utils_1.readJsonFileAsAstObject(tree, TSLINT_CONFIG_PATH);
        if (!tslintJsonAst) {
            const config = ['tslint.js', 'tslint.yaml'].find(c => tree.exists(c));
            if (config) {
                logger.warn(`Skipping: Expected a JSON configuration file but found "${config}".`);
            }
            else {
                logger.warn('Skipping: Cannot find "tslint.json" configuration file.');
            }
            return;
        }
        for (const [name, value] of Object.entries(RULES_TO_ADD)) {
            const tslintJsonAst = utils_1.readJsonFileAsAstObject(tree, TSLINT_CONFIG_PATH);
            const rulesAst = json_utils_1.findPropertyInAstObject(tslintJsonAst, 'rules');
            if ((rulesAst === null || rulesAst === void 0 ? void 0 : rulesAst.kind) !== 'object') {
                break;
            }
            if (json_utils_1.findPropertyInAstObject(rulesAst, name)) {
                // Skip as rule already exists.
                continue;
            }
            const recorder = tree.beginUpdate(TSLINT_CONFIG_PATH);
            json_utils_1.insertPropertyInAstObjectInOrder(recorder, rulesAst, name, value, 4);
            tree.commitUpdate(recorder);
        }
    };
}
exports.default = default_1;
