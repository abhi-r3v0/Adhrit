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
exports.strings = exports.tags = void 0;
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
const tags = require("./literals");
exports.tags = tags;
const strings = require("./strings");
exports.strings = strings;
__exportStar(require("./array"), exports);
__exportStar(require("./object"), exports);
__exportStar(require("./template"), exports);
__exportStar(require("./partially-ordered-set"), exports);
__exportStar(require("./priority-queue"), exports);
__exportStar(require("./lang"), exports);
