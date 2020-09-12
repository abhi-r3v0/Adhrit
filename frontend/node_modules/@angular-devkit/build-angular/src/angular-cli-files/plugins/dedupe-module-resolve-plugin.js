"use strict";
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.DedupeModuleResolvePlugin = void 0;
/**
 * DedupeModuleResolvePlugin is a webpack resolver plugin which dedupes modules with the same name and versions
 * that are laid out in different parts of the node_modules tree.
 *
 * This is needed because Webpack relies on package managers to hoist modules and doesn't have any deduping logic.
 */
class DedupeModuleResolvePlugin {
    constructor(options) {
        this.options = options;
        this.modules = new Map();
    }
    // tslint:disable-next-line: no-any
    apply(resolver) {
        resolver
            .getHook('before-described-relative')
            .tapPromise('DedupeModuleResolvePlugin', async (request) => {
            var _a;
            if (request.relativePath !== '.') {
                return;
            }
            // When either of these properties is undefined. It typically means it's a link.
            // In which case we shouldn't try to dedupe it.
            if (request.file === undefined || request.directory === undefined) {
                return;
            }
            // Empty name or versions are no valid primary entrypoints of a library
            if (!request.descriptionFileData.name || !request.descriptionFileData.version) {
                return;
            }
            const moduleId = request.descriptionFileData.name + '@' + request.descriptionFileData.version;
            const prevResolvedModule = this.modules.get(moduleId);
            if (!prevResolvedModule) {
                // This is the first time we visit this module.
                this.modules.set(moduleId, request);
                return;
            }
            const { path, descriptionFilePath, descriptionFileRoot, } = prevResolvedModule;
            if (request.path === path) {
                // No deduping needed.
                // Current path and previously resolved path are the same.
                return;
            }
            if ((_a = this.options) === null || _a === void 0 ? void 0 : _a.verbose) {
                // tslint:disable-next-line: no-console
                console.warn(`[DedupeModuleResolvePlugin]: ${request.path} -> ${path}`);
            }
            // Alter current request with previously resolved module.
            request.path = path;
            request.descriptionFileRoot = descriptionFileRoot;
            request.descriptionFilePath = descriptionFilePath;
        });
    }
}
exports.DedupeModuleResolvePlugin = DedupeModuleResolvePlugin;
