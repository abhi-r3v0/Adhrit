/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
interface NormalModuleFactoryRequest {
    request: string;
    context: {
        issuer: string;
    };
    relativePath: string;
    path: string;
    descriptionFileData: {
        name?: string;
        version?: string;
    };
    descriptionFileRoot: string;
    descriptionFilePath: string;
    directory?: boolean;
    file?: boolean;
}
export interface DedupeModuleResolvePluginOptions {
    verbose?: boolean;
}
/**
 * DedupeModuleResolvePlugin is a webpack resolver plugin which dedupes modules with the same name and versions
 * that are laid out in different parts of the node_modules tree.
 *
 * This is needed because Webpack relies on package managers to hoist modules and doesn't have any deduping logic.
 */
export declare class DedupeModuleResolvePlugin {
    private options?;
    modules: Map<string, NormalModuleFactoryRequest>;
    constructor(options?: DedupeModuleResolvePluginOptions | undefined);
    apply(resolver: any): void;
}
export {};
