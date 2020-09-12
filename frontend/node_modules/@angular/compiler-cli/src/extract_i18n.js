#!/usr/bin/env node
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/src/extract_i18n", ["require", "exports", "tslib", "reflect-metadata", "@angular/compiler-cli/src/transformers/api", "@angular/compiler-cli/src/main", "@angular/compiler-cli/src/ngtsc/file_system"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.mainXi18n = void 0;
    var tslib_1 = require("tslib");
    /**
     * Extract i18n messages from source code
     */
    // Must be imported first, because Angular decorators throw on load.
    require("reflect-metadata");
    var api = require("@angular/compiler-cli/src/transformers/api");
    var main_1 = require("@angular/compiler-cli/src/main");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    function mainXi18n(args, consoleError) {
        if (consoleError === void 0) { consoleError = console.error; }
        var config = readXi18nCommandLineAndConfiguration(args);
        return main_1.main(args, consoleError, config, undefined, undefined, undefined);
    }
    exports.mainXi18n = mainXi18n;
    function readXi18nCommandLineAndConfiguration(args) {
        var options = {};
        var parsedArgs = require('minimist')(args);
        if (parsedArgs.outFile)
            options.i18nOutFile = parsedArgs.outFile;
        if (parsedArgs.i18nFormat)
            options.i18nOutFormat = parsedArgs.i18nFormat;
        if (parsedArgs.locale)
            options.i18nOutLocale = parsedArgs.locale;
        var config = main_1.readCommandLineAndConfiguration(args, options, [
            'outFile',
            'i18nFormat',
            'locale',
        ]);
        // only emit the i18nBundle but nothing else.
        return tslib_1.__assign(tslib_1.__assign({}, config), { emitFlags: api.EmitFlags.I18nBundle });
    }
    // Entry point
    if (require.main === module) {
        var args = process.argv.slice(2);
        // We are running the real compiler so run against the real file-system
        file_system_1.setFileSystem(new file_system_1.NodeJSFileSystem());
        process.exitCode = mainXi18n(args);
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXh0cmFjdF9pMThuLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy9leHRyYWN0X2kxOG4udHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUNBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFFSDs7T0FFRztJQUNILG9FQUFvRTtJQUNwRSw0QkFBMEI7SUFDMUIsZ0VBQTBDO0lBRTFDLHVEQUE2RDtJQUM3RCwyRUFBb0U7SUFFcEUsU0FBZ0IsU0FBUyxDQUNyQixJQUFjLEVBQUUsWUFBbUQ7UUFBbkQsNkJBQUEsRUFBQSxlQUFzQyxPQUFPLENBQUMsS0FBSztRQUNyRSxJQUFNLE1BQU0sR0FBRyxvQ0FBb0MsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUMxRCxPQUFPLFdBQUksQ0FBQyxJQUFJLEVBQUUsWUFBWSxFQUFFLE1BQU0sRUFBRSxTQUFTLEVBQUUsU0FBUyxFQUFFLFNBQVMsQ0FBQyxDQUFDO0lBQzNFLENBQUM7SUFKRCw4QkFJQztJQUVELFNBQVMsb0NBQW9DLENBQUMsSUFBYztRQUMxRCxJQUFNLE9BQU8sR0FBd0IsRUFBRSxDQUFDO1FBQ3hDLElBQU0sVUFBVSxHQUFHLE9BQU8sQ0FBQyxVQUFVLENBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUM3QyxJQUFJLFVBQVUsQ0FBQyxPQUFPO1lBQUUsT0FBTyxDQUFDLFdBQVcsR0FBRyxVQUFVLENBQUMsT0FBTyxDQUFDO1FBQ2pFLElBQUksVUFBVSxDQUFDLFVBQVU7WUFBRSxPQUFPLENBQUMsYUFBYSxHQUFHLFVBQVUsQ0FBQyxVQUFVLENBQUM7UUFDekUsSUFBSSxVQUFVLENBQUMsTUFBTTtZQUFFLE9BQU8sQ0FBQyxhQUFhLEdBQUcsVUFBVSxDQUFDLE1BQU0sQ0FBQztRQUVqRSxJQUFNLE1BQU0sR0FBRyxzQ0FBK0IsQ0FBQyxJQUFJLEVBQUUsT0FBTyxFQUFFO1lBQzVELFNBQVM7WUFDVCxZQUFZO1lBQ1osUUFBUTtTQUNULENBQUMsQ0FBQztRQUNILDZDQUE2QztRQUM3Qyw2Q0FBVyxNQUFNLEtBQUUsU0FBUyxFQUFFLEdBQUcsQ0FBQyxTQUFTLENBQUMsVUFBVSxJQUFFO0lBQzFELENBQUM7SUFFRCxjQUFjO0lBQ2QsSUFBSSxPQUFPLENBQUMsSUFBSSxLQUFLLE1BQU0sRUFBRTtRQUMzQixJQUFNLElBQUksR0FBRyxPQUFPLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNuQyx1RUFBdUU7UUFDdkUsMkJBQWEsQ0FBQyxJQUFJLDhCQUFnQixFQUFFLENBQUMsQ0FBQztRQUN0QyxPQUFPLENBQUMsUUFBUSxHQUFHLFNBQVMsQ0FBQyxJQUFJLENBQUMsQ0FBQztLQUNwQyIsInNvdXJjZXNDb250ZW50IjpbIiMhL3Vzci9iaW4vZW52IG5vZGVcbi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG4vKipcbiAqIEV4dHJhY3QgaTE4biBtZXNzYWdlcyBmcm9tIHNvdXJjZSBjb2RlXG4gKi9cbi8vIE11c3QgYmUgaW1wb3J0ZWQgZmlyc3QsIGJlY2F1c2UgQW5ndWxhciBkZWNvcmF0b3JzIHRocm93IG9uIGxvYWQuXG5pbXBvcnQgJ3JlZmxlY3QtbWV0YWRhdGEnO1xuaW1wb3J0ICogYXMgYXBpIGZyb20gJy4vdHJhbnNmb3JtZXJzL2FwaSc7XG5pbXBvcnQge1BhcnNlZENvbmZpZ3VyYXRpb259IGZyb20gJy4vcGVyZm9ybV9jb21waWxlJztcbmltcG9ydCB7bWFpbiwgcmVhZENvbW1hbmRMaW5lQW5kQ29uZmlndXJhdGlvbn0gZnJvbSAnLi9tYWluJztcbmltcG9ydCB7c2V0RmlsZVN5c3RlbSwgTm9kZUpTRmlsZVN5c3RlbX0gZnJvbSAnLi9uZ3RzYy9maWxlX3N5c3RlbSc7XG5cbmV4cG9ydCBmdW5jdGlvbiBtYWluWGkxOG4oXG4gICAgYXJnczogc3RyaW5nW10sIGNvbnNvbGVFcnJvcjogKG1zZzogc3RyaW5nKSA9PiB2b2lkID0gY29uc29sZS5lcnJvcik6IG51bWJlciB7XG4gIGNvbnN0IGNvbmZpZyA9IHJlYWRYaTE4bkNvbW1hbmRMaW5lQW5kQ29uZmlndXJhdGlvbihhcmdzKTtcbiAgcmV0dXJuIG1haW4oYXJncywgY29uc29sZUVycm9yLCBjb25maWcsIHVuZGVmaW5lZCwgdW5kZWZpbmVkLCB1bmRlZmluZWQpO1xufVxuXG5mdW5jdGlvbiByZWFkWGkxOG5Db21tYW5kTGluZUFuZENvbmZpZ3VyYXRpb24oYXJnczogc3RyaW5nW10pOiBQYXJzZWRDb25maWd1cmF0aW9uIHtcbiAgY29uc3Qgb3B0aW9uczogYXBpLkNvbXBpbGVyT3B0aW9ucyA9IHt9O1xuICBjb25zdCBwYXJzZWRBcmdzID0gcmVxdWlyZSgnbWluaW1pc3QnKShhcmdzKTtcbiAgaWYgKHBhcnNlZEFyZ3Mub3V0RmlsZSkgb3B0aW9ucy5pMThuT3V0RmlsZSA9IHBhcnNlZEFyZ3Mub3V0RmlsZTtcbiAgaWYgKHBhcnNlZEFyZ3MuaTE4bkZvcm1hdCkgb3B0aW9ucy5pMThuT3V0Rm9ybWF0ID0gcGFyc2VkQXJncy5pMThuRm9ybWF0O1xuICBpZiAocGFyc2VkQXJncy5sb2NhbGUpIG9wdGlvbnMuaTE4bk91dExvY2FsZSA9IHBhcnNlZEFyZ3MubG9jYWxlO1xuXG4gIGNvbnN0IGNvbmZpZyA9IHJlYWRDb21tYW5kTGluZUFuZENvbmZpZ3VyYXRpb24oYXJncywgb3B0aW9ucywgW1xuICAgICdvdXRGaWxlJyxcbiAgICAnaTE4bkZvcm1hdCcsXG4gICAgJ2xvY2FsZScsXG4gIF0pO1xuICAvLyBvbmx5IGVtaXQgdGhlIGkxOG5CdW5kbGUgYnV0IG5vdGhpbmcgZWxzZS5cbiAgcmV0dXJuIHsuLi5jb25maWcsIGVtaXRGbGFnczogYXBpLkVtaXRGbGFncy5JMThuQnVuZGxlfTtcbn1cblxuLy8gRW50cnkgcG9pbnRcbmlmIChyZXF1aXJlLm1haW4gPT09IG1vZHVsZSkge1xuICBjb25zdCBhcmdzID0gcHJvY2Vzcy5hcmd2LnNsaWNlKDIpO1xuICAvLyBXZSBhcmUgcnVubmluZyB0aGUgcmVhbCBjb21waWxlciBzbyBydW4gYWdhaW5zdCB0aGUgcmVhbCBmaWxlLXN5c3RlbVxuICBzZXRGaWxlU3lzdGVtKG5ldyBOb2RlSlNGaWxlU3lzdGVtKCkpO1xuICBwcm9jZXNzLmV4aXRDb2RlID0gbWFpblhpMThuKGFyZ3MpO1xufVxuIl19