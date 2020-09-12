"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
const tasks_1 = require("@angular-devkit/schematics/tasks");
const package_config_1 = require("./package-config");
/**
 * Schematic factory entry-point for the `ng-add` schematic. The ng-add schematic will be
 * automatically executed if developers run `ng add @angular/cdk`.
 *
 * By default, the CLI already installs the package that has been specified with `ng add`.
 * We just store the version in the `package.json` in case the package manager didn't. Also
 * this ensures that there will be no error that says that the CDK does not support `ng add`.
 */
function default_1() {
    return (host, context) => {
        // The CLI inserts `@angular/cdk` into the `package.json` before this schematic runs. This
        // means that we do not need to insert the CDK into `package.json` files again. In some cases
        // though, it could happen that this schematic runs outside of the CLI `ng add` command, or
        // the CDK is only listed as a dev dependency. If that is the case, we insert a version based
        // on the current build version (substituted version placeholder).
        if (package_config_1.getPackageVersionFromPackageJson(host, '@angular/cdk') === null) {
            // In order to align the CDK version with other Angular dependencies that are setup by
            // `@schematics/angular`, we use tilde instead of caret. This is default for Angular
            // dependencies in new CLI projects.
            package_config_1.addPackageToPackageJson(host, '@angular/cdk', `~10.2.0-rc.0-sha-7ec514be9`);
            // Add a task to run the package manager. This is necessary because we updated the
            // workspace "package.json" file and we want lock files to reflect the new version range.
            context.addTask(new tasks_1.NodePackageInstallTask());
        }
    };
}
exports.default = default_1;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL3NjaGVtYXRpY3MvbmctYWRkL2luZGV4LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQTs7Ozs7O0dBTUc7O0FBR0gsNERBQXdFO0FBQ3hFLHFEQUEyRjtBQUUzRjs7Ozs7OztHQU9HO0FBQ0g7SUFDRSxPQUFPLENBQUMsSUFBVSxFQUFFLE9BQXlCLEVBQUUsRUFBRTtRQUMvQywwRkFBMEY7UUFDMUYsNkZBQTZGO1FBQzdGLDJGQUEyRjtRQUMzRiw2RkFBNkY7UUFDN0Ysa0VBQWtFO1FBQ2xFLElBQUksaURBQWdDLENBQUMsSUFBSSxFQUFFLGNBQWMsQ0FBQyxLQUFLLElBQUksRUFBRTtZQUNuRSxzRkFBc0Y7WUFDdEYsb0ZBQW9GO1lBQ3BGLG9DQUFvQztZQUNwQyx3Q0FBdUIsQ0FBQyxJQUFJLEVBQUUsY0FBYyxFQUFFLG9CQUFvQixDQUFDLENBQUM7WUFFcEUsa0ZBQWtGO1lBQ2xGLHlGQUF5RjtZQUN6RixPQUFPLENBQUMsT0FBTyxDQUFDLElBQUksOEJBQXNCLEVBQUUsQ0FBQyxDQUFDO1NBQy9DO0lBQ0gsQ0FBQyxDQUFDO0FBQ0osQ0FBQztBQWxCRCw0QkFrQkMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtSdWxlLCBTY2hlbWF0aWNDb250ZXh0LCBUcmVlfSBmcm9tICdAYW5ndWxhci1kZXZraXQvc2NoZW1hdGljcyc7XG5pbXBvcnQge05vZGVQYWNrYWdlSW5zdGFsbFRhc2t9IGZyb20gJ0Bhbmd1bGFyLWRldmtpdC9zY2hlbWF0aWNzL3Rhc2tzJztcbmltcG9ydCB7YWRkUGFja2FnZVRvUGFja2FnZUpzb24sIGdldFBhY2thZ2VWZXJzaW9uRnJvbVBhY2thZ2VKc29ufSBmcm9tICcuL3BhY2thZ2UtY29uZmlnJztcblxuLyoqXG4gKiBTY2hlbWF0aWMgZmFjdG9yeSBlbnRyeS1wb2ludCBmb3IgdGhlIGBuZy1hZGRgIHNjaGVtYXRpYy4gVGhlIG5nLWFkZCBzY2hlbWF0aWMgd2lsbCBiZVxuICogYXV0b21hdGljYWxseSBleGVjdXRlZCBpZiBkZXZlbG9wZXJzIHJ1biBgbmcgYWRkIEBhbmd1bGFyL2Nka2AuXG4gKlxuICogQnkgZGVmYXVsdCwgdGhlIENMSSBhbHJlYWR5IGluc3RhbGxzIHRoZSBwYWNrYWdlIHRoYXQgaGFzIGJlZW4gc3BlY2lmaWVkIHdpdGggYG5nIGFkZGAuXG4gKiBXZSBqdXN0IHN0b3JlIHRoZSB2ZXJzaW9uIGluIHRoZSBgcGFja2FnZS5qc29uYCBpbiBjYXNlIHRoZSBwYWNrYWdlIG1hbmFnZXIgZGlkbid0LiBBbHNvXG4gKiB0aGlzIGVuc3VyZXMgdGhhdCB0aGVyZSB3aWxsIGJlIG5vIGVycm9yIHRoYXQgc2F5cyB0aGF0IHRoZSBDREsgZG9lcyBub3Qgc3VwcG9ydCBgbmcgYWRkYC5cbiAqL1xuZXhwb3J0IGRlZmF1bHQgZnVuY3Rpb24oKTogUnVsZSB7XG4gIHJldHVybiAoaG9zdDogVHJlZSwgY29udGV4dDogU2NoZW1hdGljQ29udGV4dCkgPT4ge1xuICAgIC8vIFRoZSBDTEkgaW5zZXJ0cyBgQGFuZ3VsYXIvY2RrYCBpbnRvIHRoZSBgcGFja2FnZS5qc29uYCBiZWZvcmUgdGhpcyBzY2hlbWF0aWMgcnVucy4gVGhpc1xuICAgIC8vIG1lYW5zIHRoYXQgd2UgZG8gbm90IG5lZWQgdG8gaW5zZXJ0IHRoZSBDREsgaW50byBgcGFja2FnZS5qc29uYCBmaWxlcyBhZ2Fpbi4gSW4gc29tZSBjYXNlc1xuICAgIC8vIHRob3VnaCwgaXQgY291bGQgaGFwcGVuIHRoYXQgdGhpcyBzY2hlbWF0aWMgcnVucyBvdXRzaWRlIG9mIHRoZSBDTEkgYG5nIGFkZGAgY29tbWFuZCwgb3JcbiAgICAvLyB0aGUgQ0RLIGlzIG9ubHkgbGlzdGVkIGFzIGEgZGV2IGRlcGVuZGVuY3kuIElmIHRoYXQgaXMgdGhlIGNhc2UsIHdlIGluc2VydCBhIHZlcnNpb24gYmFzZWRcbiAgICAvLyBvbiB0aGUgY3VycmVudCBidWlsZCB2ZXJzaW9uIChzdWJzdGl0dXRlZCB2ZXJzaW9uIHBsYWNlaG9sZGVyKS5cbiAgICBpZiAoZ2V0UGFja2FnZVZlcnNpb25Gcm9tUGFja2FnZUpzb24oaG9zdCwgJ0Bhbmd1bGFyL2NkaycpID09PSBudWxsKSB7XG4gICAgICAvLyBJbiBvcmRlciB0byBhbGlnbiB0aGUgQ0RLIHZlcnNpb24gd2l0aCBvdGhlciBBbmd1bGFyIGRlcGVuZGVuY2llcyB0aGF0IGFyZSBzZXR1cCBieVxuICAgICAgLy8gYEBzY2hlbWF0aWNzL2FuZ3VsYXJgLCB3ZSB1c2UgdGlsZGUgaW5zdGVhZCBvZiBjYXJldC4gVGhpcyBpcyBkZWZhdWx0IGZvciBBbmd1bGFyXG4gICAgICAvLyBkZXBlbmRlbmNpZXMgaW4gbmV3IENMSSBwcm9qZWN0cy5cbiAgICAgIGFkZFBhY2thZ2VUb1BhY2thZ2VKc29uKGhvc3QsICdAYW5ndWxhci9jZGsnLCBgfjAuMC4wLVBMQUNFSE9MREVSYCk7XG5cbiAgICAgIC8vIEFkZCBhIHRhc2sgdG8gcnVuIHRoZSBwYWNrYWdlIG1hbmFnZXIuIFRoaXMgaXMgbmVjZXNzYXJ5IGJlY2F1c2Ugd2UgdXBkYXRlZCB0aGVcbiAgICAgIC8vIHdvcmtzcGFjZSBcInBhY2thZ2UuanNvblwiIGZpbGUgYW5kIHdlIHdhbnQgbG9jayBmaWxlcyB0byByZWZsZWN0IHRoZSBuZXcgdmVyc2lvbiByYW5nZS5cbiAgICAgIGNvbnRleHQuYWRkVGFzayhuZXcgTm9kZVBhY2thZ2VJbnN0YWxsVGFzaygpKTtcbiAgICB9XG4gIH07XG59XG4iXX0=