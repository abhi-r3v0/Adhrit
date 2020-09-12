#!/usr/bin/env node
(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/main-ngcc", ["require", "exports", "tslib", "@angular/compiler-cli/ngcc/src/main", "@angular/compiler-cli/ngcc/src/command_line_options"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var main_1 = require("@angular/compiler-cli/ngcc/src/main");
    var command_line_options_1 = require("@angular/compiler-cli/ngcc/src/command_line_options");
    // CLI entry point
    if (require.main === module) {
        process.title = 'ngcc';
        var startTime_1 = Date.now();
        var options_1 = command_line_options_1.parseCommandLineOptions(process.argv.slice(2));
        (function () { return tslib_1.__awaiter(void 0, void 0, void 0, function () {
            var duration, e_1;
            return tslib_1.__generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _a.trys.push([0, 2, , 3]);
                        return [4 /*yield*/, main_1.mainNgcc(options_1)];
                    case 1:
                        _a.sent();
                        if (options_1.logger) {
                            duration = Math.round((Date.now() - startTime_1) / 1000);
                            options_1.logger.debug("Run ngcc in " + duration + "s.");
                        }
                        process.exitCode = 0;
                        return [3 /*break*/, 3];
                    case 2:
                        e_1 = _a.sent();
                        console.error(e_1.stack || e_1.message);
                        process.exit(typeof e_1.code === 'number' ? e_1.code : 1);
                        return [3 /*break*/, 3];
                    case 3: return [2 /*return*/];
                }
            });
        }); })();
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWFpbi1uZ2NjLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL25nY2MvbWFpbi1uZ2NjLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7SUFDQTs7Ozs7O09BTUc7SUFDSCw0REFBb0M7SUFDcEMsNEZBQW1FO0lBRW5FLGtCQUFrQjtJQUNsQixJQUFJLE9BQU8sQ0FBQyxJQUFJLEtBQUssTUFBTSxFQUFFO1FBQzNCLE9BQU8sQ0FBQyxLQUFLLEdBQUcsTUFBTSxDQUFDO1FBQ3ZCLElBQU0sV0FBUyxHQUFHLElBQUksQ0FBQyxHQUFHLEVBQUUsQ0FBQztRQUM3QixJQUFNLFNBQU8sR0FBRyw4Q0FBdUIsQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQy9ELENBQUM7Ozs7Ozt3QkFFRyxxQkFBTSxlQUFRLENBQUMsU0FBTyxDQUFDLEVBQUE7O3dCQUF2QixTQUF1QixDQUFDO3dCQUN4QixJQUFJLFNBQU8sQ0FBQyxNQUFNLEVBQUU7NEJBQ1osUUFBUSxHQUFHLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQyxJQUFJLENBQUMsR0FBRyxFQUFFLEdBQUcsV0FBUyxDQUFDLEdBQUcsSUFBSSxDQUFDLENBQUM7NEJBQzdELFNBQU8sQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDLGlCQUFlLFFBQVEsT0FBSSxDQUFDLENBQUM7eUJBQ25EO3dCQUNELE9BQU8sQ0FBQyxRQUFRLEdBQUcsQ0FBQyxDQUFDOzs7O3dCQUVyQixPQUFPLENBQUMsS0FBSyxDQUFDLEdBQUMsQ0FBQyxLQUFLLElBQUksR0FBQyxDQUFDLE9BQU8sQ0FBQyxDQUFDO3dCQUNwQyxPQUFPLENBQUMsSUFBSSxDQUFDLE9BQU8sR0FBQyxDQUFDLElBQUksS0FBSyxRQUFRLENBQUMsQ0FBQyxDQUFDLEdBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDOzs7OzthQUV6RCxDQUFDLEVBQUUsQ0FBQztLQUNOIiwic291cmNlc0NvbnRlbnQiOlsiIyEvdXNyL2Jpbi9lbnYgbm9kZVxuLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQge21haW5OZ2NjfSBmcm9tICcuL3NyYy9tYWluJztcbmltcG9ydCB7cGFyc2VDb21tYW5kTGluZU9wdGlvbnN9IGZyb20gJy4vc3JjL2NvbW1hbmRfbGluZV9vcHRpb25zJztcblxuLy8gQ0xJIGVudHJ5IHBvaW50XG5pZiAocmVxdWlyZS5tYWluID09PSBtb2R1bGUpIHtcbiAgcHJvY2Vzcy50aXRsZSA9ICduZ2NjJztcbiAgY29uc3Qgc3RhcnRUaW1lID0gRGF0ZS5ub3coKTtcbiAgY29uc3Qgb3B0aW9ucyA9IHBhcnNlQ29tbWFuZExpbmVPcHRpb25zKHByb2Nlc3MuYXJndi5zbGljZSgyKSk7XG4gIChhc3luYyAoKSA9PiB7XG4gICAgdHJ5IHtcbiAgICAgIGF3YWl0IG1haW5OZ2NjKG9wdGlvbnMpO1xuICAgICAgaWYgKG9wdGlvbnMubG9nZ2VyKSB7XG4gICAgICAgIGNvbnN0IGR1cmF0aW9uID0gTWF0aC5yb3VuZCgoRGF0ZS5ub3coKSAtIHN0YXJ0VGltZSkgLyAxMDAwKTtcbiAgICAgICAgb3B0aW9ucy5sb2dnZXIuZGVidWcoYFJ1biBuZ2NjIGluICR7ZHVyYXRpb259cy5gKTtcbiAgICAgIH1cbiAgICAgIHByb2Nlc3MuZXhpdENvZGUgPSAwO1xuICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgIGNvbnNvbGUuZXJyb3IoZS5zdGFjayB8fCBlLm1lc3NhZ2UpO1xuICAgICAgcHJvY2Vzcy5leGl0KHR5cGVvZiBlLmNvZGUgPT09ICdudW1iZXInID8gZS5jb2RlIDogMSk7XG4gICAgfVxuICB9KSgpO1xufVxuIl19