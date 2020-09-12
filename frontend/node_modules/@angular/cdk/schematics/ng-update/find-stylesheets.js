"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.findStylesheetFiles = void 0;
const core_1 = require("@angular-devkit/core");
/** Regular expression that matches stylesheet paths */
const STYLESHEET_REGEX = /.*\.(css|scss)/;
/** Finds stylesheets in the given directory from within the specified tree. */
function findStylesheetFiles(tree, baseDir) {
    const result = [];
    const visitDir = dirPath => {
        const { subfiles, subdirs } = tree.getDir(dirPath);
        result.push(...subfiles.filter(f => STYLESHEET_REGEX.test(f)));
        subdirs.forEach(fragment => {
            // Do not visit directories or files inside node modules or `dist/` folders.
            if (fragment !== 'node_modules' && fragment !== 'dist') {
                visitDir(core_1.join(dirPath, fragment));
            }
        });
    };
    visitDir(baseDir);
    return result;
}
exports.findStylesheetFiles = findStylesheetFiles;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZmluZC1zdHlsZXNoZWV0cy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvc2NoZW1hdGljcy9uZy11cGRhdGUvZmluZC1zdHlsZXNoZWV0cy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUE7Ozs7OztHQU1HOzs7QUFFSCwrQ0FBMEM7QUFHMUMsdURBQXVEO0FBQ3ZELE1BQU0sZ0JBQWdCLEdBQUcsZ0JBQWdCLENBQUM7QUFFMUMsK0VBQStFO0FBQy9FLFNBQWdCLG1CQUFtQixDQUFDLElBQVUsRUFBRSxPQUFlO0lBQzdELE1BQU0sTUFBTSxHQUFhLEVBQUUsQ0FBQztJQUM1QixNQUFNLFFBQVEsR0FBRyxPQUFPLENBQUMsRUFBRTtRQUN6QixNQUFNLEVBQUMsUUFBUSxFQUFFLE9BQU8sRUFBQyxHQUFHLElBQUksQ0FBQyxNQUFNLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDakQsTUFBTSxDQUFDLElBQUksQ0FBQyxHQUFHLFFBQVEsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxnQkFBZ0IsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQy9ELE9BQU8sQ0FBQyxPQUFPLENBQUMsUUFBUSxDQUFDLEVBQUU7WUFDekIsNEVBQTRFO1lBQzVFLElBQUksUUFBUSxLQUFLLGNBQWMsSUFBSSxRQUFRLEtBQUssTUFBTSxFQUFFO2dCQUN0RCxRQUFRLENBQUMsV0FBSSxDQUFDLE9BQU8sRUFBRSxRQUFRLENBQUMsQ0FBQyxDQUFDO2FBQ25DO1FBQ0gsQ0FBQyxDQUFDLENBQUM7SUFDTCxDQUFDLENBQUM7SUFDRixRQUFRLENBQUMsT0FBTyxDQUFDLENBQUM7SUFDbEIsT0FBTyxNQUFNLENBQUM7QUFDaEIsQ0FBQztBQWRELGtEQWNDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7am9pbn0gZnJvbSAnQGFuZ3VsYXItZGV2a2l0L2NvcmUnO1xuaW1wb3J0IHtUcmVlfSBmcm9tICdAYW5ndWxhci1kZXZraXQvc2NoZW1hdGljcyc7XG5cbi8qKiBSZWd1bGFyIGV4cHJlc3Npb24gdGhhdCBtYXRjaGVzIHN0eWxlc2hlZXQgcGF0aHMgKi9cbmNvbnN0IFNUWUxFU0hFRVRfUkVHRVggPSAvLipcXC4oY3NzfHNjc3MpLztcblxuLyoqIEZpbmRzIHN0eWxlc2hlZXRzIGluIHRoZSBnaXZlbiBkaXJlY3RvcnkgZnJvbSB3aXRoaW4gdGhlIHNwZWNpZmllZCB0cmVlLiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGZpbmRTdHlsZXNoZWV0RmlsZXModHJlZTogVHJlZSwgYmFzZURpcjogc3RyaW5nKTogc3RyaW5nW10ge1xuICBjb25zdCByZXN1bHQ6IHN0cmluZ1tdID0gW107XG4gIGNvbnN0IHZpc2l0RGlyID0gZGlyUGF0aCA9PiB7XG4gICAgY29uc3Qge3N1YmZpbGVzLCBzdWJkaXJzfSA9IHRyZWUuZ2V0RGlyKGRpclBhdGgpO1xuICAgIHJlc3VsdC5wdXNoKC4uLnN1YmZpbGVzLmZpbHRlcihmID0+IFNUWUxFU0hFRVRfUkVHRVgudGVzdChmKSkpO1xuICAgIHN1YmRpcnMuZm9yRWFjaChmcmFnbWVudCA9PiB7XG4gICAgICAvLyBEbyBub3QgdmlzaXQgZGlyZWN0b3JpZXMgb3IgZmlsZXMgaW5zaWRlIG5vZGUgbW9kdWxlcyBvciBgZGlzdC9gIGZvbGRlcnMuXG4gICAgICBpZiAoZnJhZ21lbnQgIT09ICdub2RlX21vZHVsZXMnICYmIGZyYWdtZW50ICE9PSAnZGlzdCcpIHtcbiAgICAgICAgdmlzaXREaXIoam9pbihkaXJQYXRoLCBmcmFnbWVudCkpO1xuICAgICAgfVxuICAgIH0pO1xuICB9O1xuICB2aXNpdERpcihiYXNlRGlyKTtcbiAgcmV0dXJuIHJlc3VsdDtcbn1cbiJdfQ==