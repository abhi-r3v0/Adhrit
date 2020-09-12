"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.attributeSelectors = void 0;
const target_version_1 = require("../../update-tool/target-version");
exports.attributeSelectors = {
    [target_version_1.TargetVersion.V6]: [{
            pr: 'https://github.com/angular/components/pull/10257',
            changes: [
                { replace: 'cdkPortalHost', replaceWith: 'cdkPortalOutlet' },
                { replace: 'portalHost', replaceWith: 'cdkPortalOutlet' }
            ]
        }]
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXR0cmlidXRlLXNlbGVjdG9ycy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvc2NoZW1hdGljcy9uZy11cGRhdGUvZGF0YS9hdHRyaWJ1dGUtc2VsZWN0b3JzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQTs7Ozs7O0dBTUc7OztBQUVILHFFQUErRDtBQVVsRCxRQUFBLGtCQUFrQixHQUFpRDtJQUM5RSxDQUFDLDhCQUFhLENBQUMsRUFBRSxDQUFDLEVBQUUsQ0FBQztZQUNuQixFQUFFLEVBQUUsa0RBQWtEO1lBQ3RELE9BQU8sRUFBRTtnQkFDUCxFQUFDLE9BQU8sRUFBRSxlQUFlLEVBQUUsV0FBVyxFQUFFLGlCQUFpQixFQUFDO2dCQUMxRCxFQUFDLE9BQU8sRUFBRSxZQUFZLEVBQUUsV0FBVyxFQUFFLGlCQUFpQixFQUFDO2FBQ3hEO1NBQ0YsQ0FBQztDQUNILENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtUYXJnZXRWZXJzaW9ufSBmcm9tICcuLi8uLi91cGRhdGUtdG9vbC90YXJnZXQtdmVyc2lvbic7XG5pbXBvcnQge1ZlcnNpb25DaGFuZ2VzfSBmcm9tICcuLi8uLi91cGRhdGUtdG9vbC92ZXJzaW9uLWNoYW5nZXMnO1xuXG5leHBvcnQgaW50ZXJmYWNlIEF0dHJpYnV0ZVNlbGVjdG9yVXBncmFkZURhdGEge1xuICAvKiogVGhlIGF0dHJpYnV0ZSBuYW1lIHRvIHJlcGxhY2UuICovXG4gIHJlcGxhY2U6IHN0cmluZztcbiAgLyoqIFRoZSBuZXcgbmFtZSBmb3IgdGhlIGF0dHJpYnV0ZS4gKi9cbiAgcmVwbGFjZVdpdGg6IHN0cmluZztcbn1cblxuZXhwb3J0IGNvbnN0IGF0dHJpYnV0ZVNlbGVjdG9yczogVmVyc2lvbkNoYW5nZXM8QXR0cmlidXRlU2VsZWN0b3JVcGdyYWRlRGF0YT4gPSB7XG4gIFtUYXJnZXRWZXJzaW9uLlY2XTogW3tcbiAgICBwcjogJ2h0dHBzOi8vZ2l0aHViLmNvbS9hbmd1bGFyL2NvbXBvbmVudHMvcHVsbC8xMDI1NycsXG4gICAgY2hhbmdlczogW1xuICAgICAge3JlcGxhY2U6ICdjZGtQb3J0YWxIb3N0JywgcmVwbGFjZVdpdGg6ICdjZGtQb3J0YWxPdXRsZXQnfSxcbiAgICAgIHtyZXBsYWNlOiAncG9ydGFsSG9zdCcsIHJlcGxhY2VXaXRoOiAnY2RrUG9ydGFsT3V0bGV0J31cbiAgICBdXG4gIH1dXG59O1xuIl19