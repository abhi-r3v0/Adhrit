"use strict";
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    Object.defineProperty(o, k2, { enumerable: true, get: function() { return m[k]; } });
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __exportStar = (this && this.__exportStar) || function(m, exports) {
    for (var p in m) if (p !== "default" && !exports.hasOwnProperty(p)) __createBinding(exports, m, p);
};
Object.defineProperty(exports, "__esModule", { value: true });
// TODO: remove this commented AJV require.
// We don't actually require AJV, but there is a bug with NPM and peer dependencies that is
// whose workaround is to depend on AJV.
// See https://github.com/angular/angular-cli/issues/9691#issuecomment-367322703 for details.
// We need to add a require here to satisfy the dependency checker.
// require('ajv');
__exportStar(require("./transforms"), exports);
var schema_1 = require("./browser/schema");
Object.defineProperty(exports, "CrossOrigin", { enumerable: true, get: function () { return schema_1.CrossOrigin; } });
Object.defineProperty(exports, "OutputHashing", { enumerable: true, get: function () { return schema_1.OutputHashing; } });
Object.defineProperty(exports, "Type", { enumerable: true, get: function () { return schema_1.Type; } });
var browser_1 = require("./browser");
Object.defineProperty(exports, "executeBrowserBuilder", { enumerable: true, get: function () { return browser_1.buildWebpackBrowser; } });
var dev_server_1 = require("./dev-server");
Object.defineProperty(exports, "executeDevServerBuilder", { enumerable: true, get: function () { return dev_server_1.serveWebpackBrowser; } });
var extract_i18n_1 = require("./extract-i18n");
Object.defineProperty(exports, "executeExtractI18nBuilder", { enumerable: true, get: function () { return extract_i18n_1.execute; } });
var karma_1 = require("./karma");
Object.defineProperty(exports, "executeKarmaBuilder", { enumerable: true, get: function () { return karma_1.execute; } });
var protractor_1 = require("./protractor");
Object.defineProperty(exports, "executeProtractorBuilder", { enumerable: true, get: function () { return protractor_1.execute; } });
var server_1 = require("./server");
Object.defineProperty(exports, "executeServerBuilder", { enumerable: true, get: function () { return server_1.execute; } });
