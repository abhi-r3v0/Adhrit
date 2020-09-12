"use strict";
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.CommonJsUsageWarnPlugin = void 0;
const path_1 = require("path");
// Webpack doesn't export these so the deep imports can potentially break.
const CommonJsRequireDependency = require('webpack/lib/dependencies/CommonJsRequireDependency');
const AMDDefineDependency = require('webpack/lib/dependencies/AMDDefineDependency');
const STYLES_TEMPLATE_URL_REGEXP = /\.(html|svg|css|sass|less|styl|scss)$/;
class CommonJsUsageWarnPlugin {
    constructor(options = {}) {
        var _a;
        this.options = options;
        this.shownWarnings = new Set();
        // Allow the below depedency for HMR
        // tslint:disable-next-line: max-line-length
        // https://github.com/angular/angular-cli/blob/1e258317b1f6ec1e957ee3559cc3b28ba602f3ba/packages/angular_devkit/build_angular/src/dev-server/index.ts#L605-L638
        this.allowedDepedencies = new Set(['webpack/hot/dev-server']);
        (_a = this.options.allowedDepedencies) === null || _a === void 0 ? void 0 : _a.forEach(d => this.allowedDepedencies.add(d));
    }
    apply(compiler) {
        compiler.hooks.compilation.tap('CommonJsUsageWarnPlugin', compilation => {
            compilation.hooks.finishModules.tap('CommonJsUsageWarnPlugin', modules => {
                var _a, _b;
                for (const { dependencies, rawRequest, issuer } of modules) {
                    if (!rawRequest ||
                        rawRequest.startsWith('.') ||
                        path_1.isAbsolute(rawRequest) ||
                        this.allowedDepedencies.has(rawRequest) ||
                        this.allowedDepedencies.has(this.rawRequestToPackageName(rawRequest)) ||
                        rawRequest.startsWith('@angular/common/locales/')) {
                        /**
                         * Skip when:
                         * - module is absolute or relative.
                         * - module is allowed even if it's a CommonJS.
                         * - module is a locale imported from '@angular/common'.
                         */
                        continue;
                    }
                    if (this.hasCommonJsDependencies(dependencies)) {
                        // Dependency is CommonsJS or AMD.
                        // Check if it's parent issuer is also a CommonJS dependency.
                        // In case it is skip as an warning will be show for the parent CommonJS dependency.
                        const parentDependencies = (_a = issuer === null || issuer === void 0 ? void 0 : issuer.issuer) === null || _a === void 0 ? void 0 : _a.dependencies;
                        if (parentDependencies && this.hasCommonJsDependencies(parentDependencies, true)) {
                            continue;
                        }
                        // Find the main issuer (entry-point).
                        let mainIssuer = issuer;
                        while (mainIssuer === null || mainIssuer === void 0 ? void 0 : mainIssuer.issuer) {
                            mainIssuer = mainIssuer.issuer;
                        }
                        // Only show warnings for modules from main entrypoint.
                        // And if the issuer request is not from 'webpack-dev-server', as 'webpack-dev-server'
                        // will require CommonJS libraries for live reloading such as 'sockjs-node'.
                        if ((mainIssuer === null || mainIssuer === void 0 ? void 0 : mainIssuer.name) === 'main' && !((_b = issuer === null || issuer === void 0 ? void 0 : issuer.userRequest) === null || _b === void 0 ? void 0 : _b.includes('webpack-dev-server'))) {
                            const warning = `${issuer === null || issuer === void 0 ? void 0 : issuer.userRequest} depends on '${rawRequest}'. ` +
                                'CommonJS or AMD dependencies can cause optimization bailouts.\n' +
                                'For more info see: https://angular.io/guide/build#configuring-commonjs-dependencies';
                            // Avoid showing the same warning multiple times when in 'watch' mode.
                            if (!this.shownWarnings.has(warning)) {
                                compilation.warnings.push(warning);
                                this.shownWarnings.add(warning);
                            }
                        }
                    }
                }
            });
        });
    }
    hasCommonJsDependencies(dependencies, checkParentModules = false) {
        for (const dep of dependencies) {
            if (dep instanceof CommonJsRequireDependency) {
                if (STYLES_TEMPLATE_URL_REGEXP.test(dep.request)) {
                    // Skip in case it's a template or stylesheet
                    continue;
                }
                return true;
            }
            if (dep instanceof AMDDefineDependency) {
                return true;
            }
            if (checkParentModules && dep.module && this.hasCommonJsDependencies(dep.module.dependencies)) {
                return true;
            }
        }
        return false;
    }
    rawRequestToPackageName(rawRequest) {
        return rawRequest.startsWith('@')
            // Scoped request ex: @angular/common/locale/en -> @angular/common
            ? rawRequest.split('/', 2).join('/')
            // Non-scoped request ex: lodash/isEmpty -> lodash
            : rawRequest.split('/', 1)[0];
    }
}
exports.CommonJsUsageWarnPlugin = CommonJsUsageWarnPlugin;
