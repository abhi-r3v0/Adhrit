"use strict";
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
exports.fs = exports.experimental = void 0;
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
const experimental = require("./experimental/jobs/job-registry");
exports.experimental = experimental;
const fs = require("./fs");
exports.fs = fs;
__exportStar(require("./cli-logger"), exports);
__exportStar(require("./host"), exports);
var resolve_1 = require("./resolve");
Object.defineProperty(exports, "ModuleNotFoundException", { enumerable: true, get: function () { return resolve_1.ModuleNotFoundException; } });
Object.defineProperty(exports, "resolve", { enumerable: true, get: function () { return resolve_1.resolve; } });
