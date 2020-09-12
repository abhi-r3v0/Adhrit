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
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
__exportStar(require("./interfaces"), exports);
__exportStar(require("./ast_helpers"), exports);
__exportStar(require("./make_transform"), exports);
__exportStar(require("./insert_import"), exports);
__exportStar(require("./elide_imports"), exports);
__exportStar(require("./replace_bootstrap"), exports);
__exportStar(require("./replace_server_bootstrap"), exports);
__exportStar(require("./export_ngfactory"), exports);
__exportStar(require("./export_lazy_module_map"), exports);
__exportStar(require("./register_locale_data"), exports);
__exportStar(require("./replace_resources"), exports);
__exportStar(require("./remove_decorators"), exports);
__exportStar(require("./find_resources"), exports);
__exportStar(require("./import_factory"), exports);
