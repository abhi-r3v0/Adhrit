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
exports.Tree = exports.workflow = exports.formats = void 0;
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
const interface_1 = require("./tree/interface");
const static_1 = require("./tree/static");
var exception_1 = require("./exception/exception");
Object.defineProperty(exports, "SchematicsException", { enumerable: true, get: function () { return exception_1.SchematicsException; } });
__exportStar(require("./tree/action"), exports);
__exportStar(require("./engine/index"), exports);
__exportStar(require("./exception/exception"), exports);
__exportStar(require("./tree/interface"), exports);
__exportStar(require("./rules/base"), exports);
__exportStar(require("./rules/call"), exports);
__exportStar(require("./rules/move"), exports);
__exportStar(require("./rules/random"), exports);
__exportStar(require("./rules/schematic"), exports);
__exportStar(require("./rules/template"), exports);
__exportStar(require("./rules/url"), exports);
__exportStar(require("./tree/delegate"), exports);
__exportStar(require("./tree/empty"), exports);
__exportStar(require("./tree/host-tree"), exports);
__exportStar(require("./engine/schematic"), exports);
__exportStar(require("./sink/dryrun"), exports);
__exportStar(require("./sink/host"), exports);
__exportStar(require("./sink/sink"), exports);
const formats = require("./formats/index");
exports.formats = formats;
const workflow = require("./workflow/index");
exports.workflow = workflow;
exports.Tree = {
    empty() { return static_1.empty(); },
    branch(tree) { return static_1.branch(tree); },
    merge(tree, other, strategy = interface_1.MergeStrategy.Default) {
        return static_1.merge(tree, other, strategy);
    },
    partition(tree, predicate) {
        return static_1.partition(tree, predicate);
    },
    optimize(tree) { return tree; },
};
