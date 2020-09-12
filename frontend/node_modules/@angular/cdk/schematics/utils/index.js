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
__exportStar(require("./ast"), exports);
__exportStar(require("./ast/ng-module-imports"), exports);
__exportStar(require("./build-component"), exports);
__exportStar(require("./get-project"), exports);
__exportStar(require("./html-manipulation"), exports);
__exportStar(require("./parse5-element"), exports);
__exportStar(require("./project-index-file"), exports);
__exportStar(require("./project-main-file"), exports);
__exportStar(require("./project-style-file"), exports);
__exportStar(require("./project-targets"), exports);
__exportStar(require("./schematic-options"), exports);
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL3NjaGVtYXRpY3MvdXRpbHMvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7O0FBRUgsd0NBQXNCO0FBQ3RCLDBEQUF3QztBQUN4QyxvREFBa0M7QUFDbEMsZ0RBQThCO0FBQzlCLHNEQUFvQztBQUNwQyxtREFBaUM7QUFDakMsdURBQXFDO0FBQ3JDLHNEQUFvQztBQUNwQyx1REFBcUM7QUFDckMsb0RBQWtDO0FBQ2xDLHNEQUFvQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5leHBvcnQgKiBmcm9tICcuL2FzdCc7XG5leHBvcnQgKiBmcm9tICcuL2FzdC9uZy1tb2R1bGUtaW1wb3J0cyc7XG5leHBvcnQgKiBmcm9tICcuL2J1aWxkLWNvbXBvbmVudCc7XG5leHBvcnQgKiBmcm9tICcuL2dldC1wcm9qZWN0JztcbmV4cG9ydCAqIGZyb20gJy4vaHRtbC1tYW5pcHVsYXRpb24nO1xuZXhwb3J0ICogZnJvbSAnLi9wYXJzZTUtZWxlbWVudCc7XG5leHBvcnQgKiBmcm9tICcuL3Byb2plY3QtaW5kZXgtZmlsZSc7XG5leHBvcnQgKiBmcm9tICcuL3Byb2plY3QtbWFpbi1maWxlJztcbmV4cG9ydCAqIGZyb20gJy4vcHJvamVjdC1zdHlsZS1maWxlJztcbmV4cG9ydCAqIGZyb20gJy4vcHJvamVjdC10YXJnZXRzJztcbmV4cG9ydCAqIGZyb20gJy4vc2NoZW1hdGljLW9wdGlvbnMnO1xuIl19