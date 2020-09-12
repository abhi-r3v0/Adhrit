/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/// <reference types="node" />
(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/execution/cluster/worker", ["require", "exports", "tslib", "cluster", "@angular/compiler-cli/ngcc/src/command_line_options", "@angular/compiler-cli/ngcc/src/ngcc_options", "@angular/compiler-cli/ngcc/src/execution/create_compile_function", "@angular/compiler-cli/ngcc/src/execution/tasks/utils", "@angular/compiler-cli/ngcc/src/execution/cluster/package_json_updater", "@angular/compiler-cli/ngcc/src/execution/cluster/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.startWorker = void 0;
    var tslib_1 = require("tslib");
    var cluster = require("cluster");
    var command_line_options_1 = require("@angular/compiler-cli/ngcc/src/command_line_options");
    var ngcc_options_1 = require("@angular/compiler-cli/ngcc/src/ngcc_options");
    var create_compile_function_1 = require("@angular/compiler-cli/ngcc/src/execution/create_compile_function");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/execution/tasks/utils");
    var package_json_updater_1 = require("@angular/compiler-cli/ngcc/src/execution/cluster/package_json_updater");
    var utils_2 = require("@angular/compiler-cli/ngcc/src/execution/cluster/utils");
    // Cluster worker entry point
    if (require.main === module) {
        (function () { return tslib_1.__awaiter(void 0, void 0, void 0, function () {
            var _a, logger, pathMappings, enableI18nLegacyMessageIdFormat, fileSystem, tsConfig, getFileWriter, pkgJsonUpdater, fileWriter, createCompileFn, e_1;
            return tslib_1.__generator(this, function (_b) {
                switch (_b.label) {
                    case 0:
                        process.title = 'ngcc (worker)';
                        _b.label = 1;
                    case 1:
                        _b.trys.push([1, 3, , 4]);
                        _a = ngcc_options_1.getSharedSetup(command_line_options_1.parseCommandLineOptions(process.argv.slice(2))), logger = _a.logger, pathMappings = _a.pathMappings, enableI18nLegacyMessageIdFormat = _a.enableI18nLegacyMessageIdFormat, fileSystem = _a.fileSystem, tsConfig = _a.tsConfig, getFileWriter = _a.getFileWriter;
                        pkgJsonUpdater = new package_json_updater_1.ClusterWorkerPackageJsonUpdater();
                        fileWriter = getFileWriter(pkgJsonUpdater);
                        createCompileFn = create_compile_function_1.getCreateCompileFn(fileSystem, logger, fileWriter, enableI18nLegacyMessageIdFormat, tsConfig, pathMappings);
                        return [4 /*yield*/, startWorker(logger, createCompileFn)];
                    case 2:
                        _b.sent();
                        process.exitCode = 0;
                        return [3 /*break*/, 4];
                    case 3:
                        e_1 = _b.sent();
                        console.error(e_1.stack || e_1.message);
                        process.exit(1);
                        return [3 /*break*/, 4];
                    case 4: return [2 /*return*/];
                }
            });
        }); })();
    }
    function startWorker(logger, createCompileFn) {
        return tslib_1.__awaiter(this, void 0, void 0, function () {
            var compile;
            var _this = this;
            return tslib_1.__generator(this, function (_a) {
                if (cluster.isMaster) {
                    throw new Error('Tried to run cluster worker on the master process.');
                }
                compile = createCompileFn(function (transformedFiles) { return utils_2.sendMessageToMaster({
                    type: 'transformed-files',
                    files: transformedFiles.map(function (f) { return f.path; }),
                }); }, function (_task, outcome, message) { return utils_2.sendMessageToMaster({ type: 'task-completed', outcome: outcome, message: message }); });
                // Listen for `ProcessTaskMessage`s and process tasks.
                cluster.worker.on('message', function (msg) { return tslib_1.__awaiter(_this, void 0, void 0, function () {
                    var _a, err_1, _b;
                    return tslib_1.__generator(this, function (_c) {
                        switch (_c.label) {
                            case 0:
                                _c.trys.push([0, 5, , 10]);
                                _a = msg.type;
                                switch (_a) {
                                    case 'process-task': return [3 /*break*/, 1];
                                }
                                return [3 /*break*/, 3];
                            case 1:
                                logger.debug("[Worker #" + cluster.worker.id + "] Processing task: " + utils_1.stringifyTask(msg.task));
                                return [4 /*yield*/, compile(msg.task)];
                            case 2: return [2 /*return*/, _c.sent()];
                            case 3: throw new Error("[Worker #" + cluster.worker.id + "] Invalid message received: " + JSON.stringify(msg));
                            case 4: return [3 /*break*/, 10];
                            case 5:
                                err_1 = _c.sent();
                                _b = err_1 && err_1.code;
                                switch (_b) {
                                    case 'ENOMEM': return [3 /*break*/, 6];
                                }
                                return [3 /*break*/, 7];
                            case 6:
                                // Not being able to allocate enough memory is not necessarily a problem with processing
                                // the current task. It could just mean that there are too many tasks being processed
                                // simultaneously.
                                //
                                // Exit with an error and let the cluster master decide how to handle this.
                                logger.warn("[Worker #" + cluster.worker.id + "] " + (err_1.stack || err_1.message));
                                return [2 /*return*/, process.exit(1)];
                            case 7: return [4 /*yield*/, utils_2.sendMessageToMaster({
                                    type: 'error',
                                    error: (err_1 instanceof Error) ? (err_1.stack || err_1.message) : err_1,
                                })];
                            case 8:
                                _c.sent();
                                _c.label = 9;
                            case 9: return [3 /*break*/, 10];
                            case 10: return [2 /*return*/];
                        }
                    });
                }); });
                // Return a promise that is never resolved.
                return [2 /*return*/, new Promise(function () { return undefined; })];
            });
        });
    }
    exports.startWorker = startWorker;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoid29ya2VyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL25nY2Mvc3JjL2V4ZWN1dGlvbi9jbHVzdGVyL3dvcmtlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFDSCw4QkFBOEI7Ozs7Ozs7Ozs7Ozs7O0lBRTlCLGlDQUFtQztJQUVuQyw0RkFBbUU7SUFHbkUsNEVBQWtEO0lBRWxELDRHQUE4RDtJQUM5RCw4RUFBNkM7SUFHN0MsOEdBQXVFO0lBQ3ZFLGdGQUE0QztJQUU1Qyw2QkFBNkI7SUFDN0IsSUFBSSxPQUFPLENBQUMsSUFBSSxLQUFLLE1BQU0sRUFBRTtRQUMzQixDQUFDOzs7Ozt3QkFDQyxPQUFPLENBQUMsS0FBSyxHQUFHLGVBQWUsQ0FBQzs7Ozt3QkFHeEIsS0FPRiw2QkFBYyxDQUFDLDhDQUF1QixDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsRUFOaEUsTUFBTSxZQUFBLEVBQ04sWUFBWSxrQkFBQSxFQUNaLCtCQUErQixxQ0FBQSxFQUMvQixVQUFVLGdCQUFBLEVBQ1YsUUFBUSxjQUFBLEVBQ1IsYUFBYSxtQkFBQSxDQUNvRDt3QkFLN0QsY0FBYyxHQUFHLElBQUksc0RBQStCLEVBQUUsQ0FBQzt3QkFDdkQsVUFBVSxHQUFHLGFBQWEsQ0FBQyxjQUFjLENBQUMsQ0FBQzt3QkFHM0MsZUFBZSxHQUFHLDRDQUFrQixDQUN0QyxVQUFVLEVBQUUsTUFBTSxFQUFFLFVBQVUsRUFBRSwrQkFBK0IsRUFBRSxRQUFRLEVBQUUsWUFBWSxDQUFDLENBQUM7d0JBRTdGLHFCQUFNLFdBQVcsQ0FBQyxNQUFNLEVBQUUsZUFBZSxDQUFDLEVBQUE7O3dCQUExQyxTQUEwQyxDQUFDO3dCQUMzQyxPQUFPLENBQUMsUUFBUSxHQUFHLENBQUMsQ0FBQzs7Ozt3QkFFckIsT0FBTyxDQUFDLEtBQUssQ0FBQyxHQUFDLENBQUMsS0FBSyxJQUFJLEdBQUMsQ0FBQyxPQUFPLENBQUMsQ0FBQzt3QkFDcEMsT0FBTyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQzs7Ozs7YUFFbkIsQ0FBQyxFQUFFLENBQUM7S0FDTjtJQUVELFNBQXNCLFdBQVcsQ0FBQyxNQUFjLEVBQUUsZUFBZ0M7Ozs7O2dCQUNoRixJQUFJLE9BQU8sQ0FBQyxRQUFRLEVBQUU7b0JBQ3BCLE1BQU0sSUFBSSxLQUFLLENBQUMsb0RBQW9ELENBQUMsQ0FBQztpQkFDdkU7Z0JBRUssT0FBTyxHQUFHLGVBQWUsQ0FDM0IsVUFBQSxnQkFBZ0IsSUFBSSxPQUFBLDJCQUFtQixDQUFDO29CQUN0QyxJQUFJLEVBQUUsbUJBQW1CO29CQUN6QixLQUFLLEVBQUUsZ0JBQWdCLENBQUMsR0FBRyxDQUFDLFVBQUEsQ0FBQyxJQUFJLE9BQUEsQ0FBQyxDQUFDLElBQUksRUFBTixDQUFNLENBQUM7aUJBQ3pDLENBQUMsRUFIa0IsQ0FHbEIsRUFDRixVQUFDLEtBQUssRUFBRSxPQUFPLEVBQUUsT0FBTyxJQUFLLE9BQUEsMkJBQW1CLENBQUMsRUFBQyxJQUFJLEVBQUUsZ0JBQWdCLEVBQUUsT0FBTyxTQUFBLEVBQUUsT0FBTyxTQUFBLEVBQUMsQ0FBQyxFQUEvRCxDQUErRCxDQUFDLENBQUM7Z0JBR2xHLHNEQUFzRDtnQkFDdEQsT0FBTyxDQUFDLE1BQU0sQ0FBQyxFQUFFLENBQUMsU0FBUyxFQUFFLFVBQU8sR0FBb0I7Ozs7OztnQ0FFNUMsS0FBQSxHQUFHLENBQUMsSUFBSSxDQUFBOzt5Q0FDVCxjQUFjLENBQUMsQ0FBZix3QkFBYzs7OztnQ0FDakIsTUFBTSxDQUFDLEtBQUssQ0FDUixjQUFZLE9BQU8sQ0FBQyxNQUFNLENBQUMsRUFBRSwyQkFBc0IscUJBQWEsQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFHLENBQUMsQ0FBQztnQ0FDM0UscUJBQU0sT0FBTyxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsRUFBQTtvQ0FBOUIsc0JBQU8sU0FBdUIsRUFBQztvQ0FFL0IsTUFBTSxJQUFJLEtBQUssQ0FDWCxjQUFZLE9BQU8sQ0FBQyxNQUFNLENBQUMsRUFBRSxvQ0FBK0IsSUFBSSxDQUFDLFNBQVMsQ0FBQyxHQUFHLENBQUcsQ0FBQyxDQUFDOzs7O2dDQUduRixLQUFBLEtBQUcsSUFBSSxLQUFHLENBQUMsSUFBSSxDQUFBOzt5Q0FDaEIsUUFBUSxDQUFDLENBQVQsd0JBQVE7Ozs7Z0NBQ1gsd0ZBQXdGO2dDQUN4RixxRkFBcUY7Z0NBQ3JGLGtCQUFrQjtnQ0FDbEIsRUFBRTtnQ0FDRiwyRUFBMkU7Z0NBQzNFLE1BQU0sQ0FBQyxJQUFJLENBQUMsY0FBWSxPQUFPLENBQUMsTUFBTSxDQUFDLEVBQUUsV0FBSyxLQUFHLENBQUMsS0FBSyxJQUFJLEtBQUcsQ0FBQyxPQUFPLENBQUUsQ0FBQyxDQUFDO2dDQUMxRSxzQkFBTyxPQUFPLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxFQUFDO29DQUV2QixxQkFBTSwyQkFBbUIsQ0FBQztvQ0FDeEIsSUFBSSxFQUFFLE9BQU87b0NBQ2IsS0FBSyxFQUFFLENBQUMsS0FBRyxZQUFZLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLEtBQUcsQ0FBQyxLQUFLLElBQUksS0FBRyxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUMsQ0FBQyxLQUFHO2lDQUNqRSxDQUFDLEVBQUE7O2dDQUhGLFNBR0UsQ0FBQzs7Ozs7O3FCQUdWLENBQUMsQ0FBQztnQkFFSCwyQ0FBMkM7Z0JBQzNDLHNCQUFPLElBQUksT0FBTyxDQUFDLGNBQU0sT0FBQSxTQUFTLEVBQVQsQ0FBUyxDQUFDLEVBQUM7OztLQUNyQztJQTlDRCxrQ0E4Q0MiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbi8vLyA8cmVmZXJlbmNlIHR5cGVzPVwibm9kZVwiIC8+XG5cbmltcG9ydCAqIGFzIGNsdXN0ZXIgZnJvbSAnY2x1c3Rlcic7XG5cbmltcG9ydCB7cGFyc2VDb21tYW5kTGluZU9wdGlvbnN9IGZyb20gJy4uLy4uL2NvbW1hbmRfbGluZV9vcHRpb25zJztcbmltcG9ydCB7Q29uc29sZUxvZ2dlcn0gZnJvbSAnLi4vLi4vbG9nZ2luZy9jb25zb2xlX2xvZ2dlcic7XG5pbXBvcnQge0xvZ2dlciwgTG9nTGV2ZWx9IGZyb20gJy4uLy4uL2xvZ2dpbmcvbG9nZ2VyJztcbmltcG9ydCB7Z2V0U2hhcmVkU2V0dXB9IGZyb20gJy4uLy4uL25nY2Nfb3B0aW9ucyc7XG5pbXBvcnQge0NyZWF0ZUNvbXBpbGVGbn0gZnJvbSAnLi4vYXBpJztcbmltcG9ydCB7Z2V0Q3JlYXRlQ29tcGlsZUZufSBmcm9tICcuLi9jcmVhdGVfY29tcGlsZV9mdW5jdGlvbic7XG5pbXBvcnQge3N0cmluZ2lmeVRhc2t9IGZyb20gJy4uL3Rhc2tzL3V0aWxzJztcblxuaW1wb3J0IHtNZXNzYWdlVG9Xb3JrZXJ9IGZyb20gJy4vYXBpJztcbmltcG9ydCB7Q2x1c3RlcldvcmtlclBhY2thZ2VKc29uVXBkYXRlcn0gZnJvbSAnLi9wYWNrYWdlX2pzb25fdXBkYXRlcic7XG5pbXBvcnQge3NlbmRNZXNzYWdlVG9NYXN0ZXJ9IGZyb20gJy4vdXRpbHMnO1xuXG4vLyBDbHVzdGVyIHdvcmtlciBlbnRyeSBwb2ludFxuaWYgKHJlcXVpcmUubWFpbiA9PT0gbW9kdWxlKSB7XG4gIChhc3luYyAoKSA9PiB7XG4gICAgcHJvY2Vzcy50aXRsZSA9ICduZ2NjICh3b3JrZXIpJztcblxuICAgIHRyeSB7XG4gICAgICBjb25zdCB7XG4gICAgICAgIGxvZ2dlcixcbiAgICAgICAgcGF0aE1hcHBpbmdzLFxuICAgICAgICBlbmFibGVJMThuTGVnYWN5TWVzc2FnZUlkRm9ybWF0LFxuICAgICAgICBmaWxlU3lzdGVtLFxuICAgICAgICB0c0NvbmZpZyxcbiAgICAgICAgZ2V0RmlsZVdyaXRlcixcbiAgICAgIH0gPSBnZXRTaGFyZWRTZXR1cChwYXJzZUNvbW1hbmRMaW5lT3B0aW9ucyhwcm9jZXNzLmFyZ3Yuc2xpY2UoMikpKTtcblxuICAgICAgLy8gTk9URTogVG8gYXZvaWQgZmlsZSBjb3JydXB0aW9uLCBgbmdjY2AgaW52b2NhdGlvbiBvbmx5IGNyZWF0ZXMgX29uZV8gaW5zdGFuY2Ugb2ZcbiAgICAgIC8vIGBQYWNrYWdlSnNvblVwZGF0ZXJgIHRoYXQgYWN0dWFsbHkgd3JpdGVzIHRvIGRpc2sgKGFjcm9zcyBhbGwgcHJvY2Vzc2VzKS5cbiAgICAgIC8vIEluIGNsdXN0ZXIgd29ya2VycyB3ZSB1c2UgYSBgUGFja2FnZUpzb25VcGRhdGVyYCB0aGF0IGRlbGVnYXRlcyB0byB0aGUgY2x1c3RlciBtYXN0ZXIuXG4gICAgICBjb25zdCBwa2dKc29uVXBkYXRlciA9IG5ldyBDbHVzdGVyV29ya2VyUGFja2FnZUpzb25VcGRhdGVyKCk7XG4gICAgICBjb25zdCBmaWxlV3JpdGVyID0gZ2V0RmlsZVdyaXRlcihwa2dKc29uVXBkYXRlcik7XG5cbiAgICAgIC8vIFRoZSBmdW5jdGlvbiBmb3IgY3JlYXRpbmcgdGhlIGBjb21waWxlKClgIGZ1bmN0aW9uLlxuICAgICAgY29uc3QgY3JlYXRlQ29tcGlsZUZuID0gZ2V0Q3JlYXRlQ29tcGlsZUZuKFxuICAgICAgICAgIGZpbGVTeXN0ZW0sIGxvZ2dlciwgZmlsZVdyaXRlciwgZW5hYmxlSTE4bkxlZ2FjeU1lc3NhZ2VJZEZvcm1hdCwgdHNDb25maWcsIHBhdGhNYXBwaW5ncyk7XG5cbiAgICAgIGF3YWl0IHN0YXJ0V29ya2VyKGxvZ2dlciwgY3JlYXRlQ29tcGlsZUZuKTtcbiAgICAgIHByb2Nlc3MuZXhpdENvZGUgPSAwO1xuICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgIGNvbnNvbGUuZXJyb3IoZS5zdGFjayB8fCBlLm1lc3NhZ2UpO1xuICAgICAgcHJvY2Vzcy5leGl0KDEpO1xuICAgIH1cbiAgfSkoKTtcbn1cblxuZXhwb3J0IGFzeW5jIGZ1bmN0aW9uIHN0YXJ0V29ya2VyKGxvZ2dlcjogTG9nZ2VyLCBjcmVhdGVDb21waWxlRm46IENyZWF0ZUNvbXBpbGVGbik6IFByb21pc2U8dm9pZD4ge1xuICBpZiAoY2x1c3Rlci5pc01hc3Rlcikge1xuICAgIHRocm93IG5ldyBFcnJvcignVHJpZWQgdG8gcnVuIGNsdXN0ZXIgd29ya2VyIG9uIHRoZSBtYXN0ZXIgcHJvY2Vzcy4nKTtcbiAgfVxuXG4gIGNvbnN0IGNvbXBpbGUgPSBjcmVhdGVDb21waWxlRm4oXG4gICAgICB0cmFuc2Zvcm1lZEZpbGVzID0+IHNlbmRNZXNzYWdlVG9NYXN0ZXIoe1xuICAgICAgICB0eXBlOiAndHJhbnNmb3JtZWQtZmlsZXMnLFxuICAgICAgICBmaWxlczogdHJhbnNmb3JtZWRGaWxlcy5tYXAoZiA9PiBmLnBhdGgpLFxuICAgICAgfSksXG4gICAgICAoX3Rhc2ssIG91dGNvbWUsIG1lc3NhZ2UpID0+IHNlbmRNZXNzYWdlVG9NYXN0ZXIoe3R5cGU6ICd0YXNrLWNvbXBsZXRlZCcsIG91dGNvbWUsIG1lc3NhZ2V9KSk7XG5cblxuICAvLyBMaXN0ZW4gZm9yIGBQcm9jZXNzVGFza01lc3NhZ2VgcyBhbmQgcHJvY2VzcyB0YXNrcy5cbiAgY2x1c3Rlci53b3JrZXIub24oJ21lc3NhZ2UnLCBhc3luYyAobXNnOiBNZXNzYWdlVG9Xb3JrZXIpID0+IHtcbiAgICB0cnkge1xuICAgICAgc3dpdGNoIChtc2cudHlwZSkge1xuICAgICAgICBjYXNlICdwcm9jZXNzLXRhc2snOlxuICAgICAgICAgIGxvZ2dlci5kZWJ1ZyhcbiAgICAgICAgICAgICAgYFtXb3JrZXIgIyR7Y2x1c3Rlci53b3JrZXIuaWR9XSBQcm9jZXNzaW5nIHRhc2s6ICR7c3RyaW5naWZ5VGFzayhtc2cudGFzayl9YCk7XG4gICAgICAgICAgcmV0dXJuIGF3YWl0IGNvbXBpbGUobXNnLnRhc2spO1xuICAgICAgICBkZWZhdWx0OlxuICAgICAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICAgICAgYFtXb3JrZXIgIyR7Y2x1c3Rlci53b3JrZXIuaWR9XSBJbnZhbGlkIG1lc3NhZ2UgcmVjZWl2ZWQ6ICR7SlNPTi5zdHJpbmdpZnkobXNnKX1gKTtcbiAgICAgIH1cbiAgICB9IGNhdGNoIChlcnIpIHtcbiAgICAgIHN3aXRjaCAoZXJyICYmIGVyci5jb2RlKSB7XG4gICAgICAgIGNhc2UgJ0VOT01FTSc6XG4gICAgICAgICAgLy8gTm90IGJlaW5nIGFibGUgdG8gYWxsb2NhdGUgZW5vdWdoIG1lbW9yeSBpcyBub3QgbmVjZXNzYXJpbHkgYSBwcm9ibGVtIHdpdGggcHJvY2Vzc2luZ1xuICAgICAgICAgIC8vIHRoZSBjdXJyZW50IHRhc2suIEl0IGNvdWxkIGp1c3QgbWVhbiB0aGF0IHRoZXJlIGFyZSB0b28gbWFueSB0YXNrcyBiZWluZyBwcm9jZXNzZWRcbiAgICAgICAgICAvLyBzaW11bHRhbmVvdXNseS5cbiAgICAgICAgICAvL1xuICAgICAgICAgIC8vIEV4aXQgd2l0aCBhbiBlcnJvciBhbmQgbGV0IHRoZSBjbHVzdGVyIG1hc3RlciBkZWNpZGUgaG93IHRvIGhhbmRsZSB0aGlzLlxuICAgICAgICAgIGxvZ2dlci53YXJuKGBbV29ya2VyICMke2NsdXN0ZXIud29ya2VyLmlkfV0gJHtlcnIuc3RhY2sgfHwgZXJyLm1lc3NhZ2V9YCk7XG4gICAgICAgICAgcmV0dXJuIHByb2Nlc3MuZXhpdCgxKTtcbiAgICAgICAgZGVmYXVsdDpcbiAgICAgICAgICBhd2FpdCBzZW5kTWVzc2FnZVRvTWFzdGVyKHtcbiAgICAgICAgICAgIHR5cGU6ICdlcnJvcicsXG4gICAgICAgICAgICBlcnJvcjogKGVyciBpbnN0YW5jZW9mIEVycm9yKSA/IChlcnIuc3RhY2sgfHwgZXJyLm1lc3NhZ2UpIDogZXJyLFxuICAgICAgICAgIH0pO1xuICAgICAgfVxuICAgIH1cbiAgfSk7XG5cbiAgLy8gUmV0dXJuIGEgcHJvbWlzZSB0aGF0IGlzIG5ldmVyIHJlc29sdmVkLlxuICByZXR1cm4gbmV3IFByb21pc2UoKCkgPT4gdW5kZWZpbmVkKTtcbn1cbiJdfQ==