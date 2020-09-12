"use strict";
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.WebpackRollupLoader = void 0;
// Exports the webpack plugins we use internally.
var any_component_style_budget_checker_1 = require("./any-component-style-budget-checker");
Object.defineProperty(exports, "AnyComponentStyleBudgetChecker", { enumerable: true, get: function () { return any_component_style_budget_checker_1.AnyComponentStyleBudgetChecker; } });
var optimize_css_webpack_plugin_1 = require("./optimize-css-webpack-plugin");
Object.defineProperty(exports, "OptimizeCssWebpackPlugin", { enumerable: true, get: function () { return optimize_css_webpack_plugin_1.OptimizeCssWebpackPlugin; } });
var bundle_budget_1 = require("./bundle-budget");
Object.defineProperty(exports, "BundleBudgetPlugin", { enumerable: true, get: function () { return bundle_budget_1.BundleBudgetPlugin; } });
var scripts_webpack_plugin_1 = require("./scripts-webpack-plugin");
Object.defineProperty(exports, "ScriptsWebpackPlugin", { enumerable: true, get: function () { return scripts_webpack_plugin_1.ScriptsWebpackPlugin; } });
var suppress_entry_chunks_webpack_plugin_1 = require("./suppress-entry-chunks-webpack-plugin");
Object.defineProperty(exports, "SuppressExtractedTextChunksWebpackPlugin", { enumerable: true, get: function () { return suppress_entry_chunks_webpack_plugin_1.SuppressExtractedTextChunksWebpackPlugin; } });
var remove_hash_plugin_1 = require("./remove-hash-plugin");
Object.defineProperty(exports, "RemoveHashPlugin", { enumerable: true, get: function () { return remove_hash_plugin_1.RemoveHashPlugin; } });
var named_chunks_plugin_1 = require("./named-chunks-plugin");
Object.defineProperty(exports, "NamedLazyChunksPlugin", { enumerable: true, get: function () { return named_chunks_plugin_1.NamedLazyChunksPlugin; } });
var dedupe_module_resolve_plugin_1 = require("./dedupe-module-resolve-plugin");
Object.defineProperty(exports, "DedupeModuleResolvePlugin", { enumerable: true, get: function () { return dedupe_module_resolve_plugin_1.DedupeModuleResolvePlugin; } });
var common_js_usage_warn_plugin_1 = require("./common-js-usage-warn-plugin");
Object.defineProperty(exports, "CommonJsUsageWarnPlugin", { enumerable: true, get: function () { return common_js_usage_warn_plugin_1.CommonJsUsageWarnPlugin; } });
var postcss_cli_resources_1 = require("./postcss-cli-resources");
Object.defineProperty(exports, "PostcssCliResources", { enumerable: true, get: function () { return postcss_cli_resources_1.default; } });
const path_1 = require("path");
exports.WebpackRollupLoader = require.resolve(path_1.join(__dirname, 'webpack-rollup-loader'));
