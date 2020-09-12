"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.methodCallChecks = void 0;
const target_version_1 = require("../../update-tool/target-version");
exports.methodCallChecks = {
    [target_version_1.TargetVersion.V9]: [{
            pr: 'https://github.com/angular/components/pull/17084',
            changes: [{
                    className: 'DropListRef',
                    method: 'drop',
                    invalidArgCounts: [{ count: 4, message: 'The "distance" parameter is required' }]
                }]
        }],
    [target_version_1.TargetVersion.V8]: [],
    [target_version_1.TargetVersion.V7]: [],
    [target_version_1.TargetVersion.V6]: [{
            pr: 'https://github.com/angular/components/pull/10325',
            changes: [{
                    className: 'FocusMonitor',
                    method: 'monitor',
                    invalidArgCounts: [{ count: 3, message: 'The "renderer" argument has been removed' }]
                }]
        }]
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWV0aG9kLWNhbGwtY2hlY2tzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9zY2hlbWF0aWNzL25nLXVwZGF0ZS9kYXRhL21ldGhvZC1jYWxsLWNoZWNrcy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUE7Ozs7OztHQU1HOzs7QUFFSCxxRUFBK0Q7QUFTbEQsUUFBQSxnQkFBZ0IsR0FBMEM7SUFDckUsQ0FBQyw4QkFBYSxDQUFDLEVBQUUsQ0FBQyxFQUFFLENBQUM7WUFDbkIsRUFBRSxFQUFFLGtEQUFrRDtZQUN0RCxPQUFPLEVBQUUsQ0FBQztvQkFDUixTQUFTLEVBQUUsYUFBYTtvQkFDeEIsTUFBTSxFQUFFLE1BQU07b0JBQ2QsZ0JBQWdCLEVBQUUsQ0FBQyxFQUFDLEtBQUssRUFBRSxDQUFDLEVBQUUsT0FBTyxFQUFFLHNDQUFzQyxFQUFDLENBQUM7aUJBQ2hGLENBQUM7U0FDSCxDQUFDO0lBQ0YsQ0FBQyw4QkFBYSxDQUFDLEVBQUUsQ0FBQyxFQUFFLEVBQUU7SUFDdEIsQ0FBQyw4QkFBYSxDQUFDLEVBQUUsQ0FBQyxFQUFFLEVBQUU7SUFDdEIsQ0FBQyw4QkFBYSxDQUFDLEVBQUUsQ0FBQyxFQUFFLENBQUM7WUFDbkIsRUFBRSxFQUFFLGtEQUFrRDtZQUN0RCxPQUFPLEVBQUUsQ0FBQztvQkFDUixTQUFTLEVBQUUsY0FBYztvQkFDekIsTUFBTSxFQUFFLFNBQVM7b0JBQ2pCLGdCQUFnQixFQUFFLENBQUMsRUFBQyxLQUFLLEVBQUUsQ0FBQyxFQUFFLE9BQU8sRUFBRSwwQ0FBMEMsRUFBQyxDQUFDO2lCQUNwRixDQUFDO1NBQ0gsQ0FBQztDQUNILENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtUYXJnZXRWZXJzaW9ufSBmcm9tICcuLi8uLi91cGRhdGUtdG9vbC90YXJnZXQtdmVyc2lvbic7XG5pbXBvcnQge1ZlcnNpb25DaGFuZ2VzfSBmcm9tICcuLi8uLi91cGRhdGUtdG9vbC92ZXJzaW9uLWNoYW5nZXMnO1xuXG5leHBvcnQgaW50ZXJmYWNlIE1ldGhvZENhbGxVcGdyYWRlRGF0YSB7XG4gIGNsYXNzTmFtZTogc3RyaW5nO1xuICBtZXRob2Q6IHN0cmluZztcbiAgaW52YWxpZEFyZ0NvdW50czoge2NvdW50OiBudW1iZXIsIG1lc3NhZ2U6IHN0cmluZ31bXTtcbn1cblxuZXhwb3J0IGNvbnN0IG1ldGhvZENhbGxDaGVja3M6IFZlcnNpb25DaGFuZ2VzPE1ldGhvZENhbGxVcGdyYWRlRGF0YT4gPSB7XG4gIFtUYXJnZXRWZXJzaW9uLlY5XTogW3tcbiAgICBwcjogJ2h0dHBzOi8vZ2l0aHViLmNvbS9hbmd1bGFyL2NvbXBvbmVudHMvcHVsbC8xNzA4NCcsXG4gICAgY2hhbmdlczogW3tcbiAgICAgIGNsYXNzTmFtZTogJ0Ryb3BMaXN0UmVmJyxcbiAgICAgIG1ldGhvZDogJ2Ryb3AnLFxuICAgICAgaW52YWxpZEFyZ0NvdW50czogW3tjb3VudDogNCwgbWVzc2FnZTogJ1RoZSBcImRpc3RhbmNlXCIgcGFyYW1ldGVyIGlzIHJlcXVpcmVkJ31dXG4gICAgfV1cbiAgfV0sXG4gIFtUYXJnZXRWZXJzaW9uLlY4XTogW10sXG4gIFtUYXJnZXRWZXJzaW9uLlY3XTogW10sXG4gIFtUYXJnZXRWZXJzaW9uLlY2XTogW3tcbiAgICBwcjogJ2h0dHBzOi8vZ2l0aHViLmNvbS9hbmd1bGFyL2NvbXBvbmVudHMvcHVsbC8xMDMyNScsXG4gICAgY2hhbmdlczogW3tcbiAgICAgIGNsYXNzTmFtZTogJ0ZvY3VzTW9uaXRvcicsXG4gICAgICBtZXRob2Q6ICdtb25pdG9yJyxcbiAgICAgIGludmFsaWRBcmdDb3VudHM6IFt7Y291bnQ6IDMsIG1lc3NhZ2U6ICdUaGUgXCJyZW5kZXJlclwiIGFyZ3VtZW50IGhhcyBiZWVuIHJlbW92ZWQnfV1cbiAgICB9XVxuICB9XVxufTtcbiJdfQ==