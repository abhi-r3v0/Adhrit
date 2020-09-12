"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
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
    for (var p in m) if (p !== "default" && !Object.prototype.hasOwnProperty.call(exports, p)) __createBinding(exports, m, p);
};
Object.defineProperty(exports, "__esModule", { value: true });
__exportStar(require("./component-resource-collector"), exports);
__exportStar(require("./file-system"), exports);
__exportStar(require("./index"), exports);
__exportStar(require("./migration"), exports);
__exportStar(require("./target-version"), exports);
__exportStar(require("./utils/decorators"), exports);
__exportStar(require("./utils/imports"), exports);
__exportStar(require("./version-changes"), exports);
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicHVibGljLWFwaS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvc2NoZW1hdGljcy91cGRhdGUtdG9vbC9wdWJsaWMtYXBpLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7OztBQUVILGlFQUErQztBQUMvQyxnREFBOEI7QUFDOUIsMENBQXdCO0FBQ3hCLDhDQUE0QjtBQUM1QixtREFBaUM7QUFDakMscURBQW1DO0FBQ25DLGtEQUFnQztBQUNoQyxvREFBa0MiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuZXhwb3J0ICogZnJvbSAnLi9jb21wb25lbnQtcmVzb3VyY2UtY29sbGVjdG9yJztcbmV4cG9ydCAqIGZyb20gJy4vZmlsZS1zeXN0ZW0nO1xuZXhwb3J0ICogZnJvbSAnLi9pbmRleCc7XG5leHBvcnQgKiBmcm9tICcuL21pZ3JhdGlvbic7XG5leHBvcnQgKiBmcm9tICcuL3RhcmdldC12ZXJzaW9uJztcbmV4cG9ydCAqIGZyb20gJy4vdXRpbHMvZGVjb3JhdG9ycyc7XG5leHBvcnQgKiBmcm9tICcuL3V0aWxzL2ltcG9ydHMnO1xuZXhwb3J0ICogZnJvbSAnLi92ZXJzaW9uLWNoYW5nZXMnO1xuIl19