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
        define("@angular/compiler-cli/ngcc/src/execution/cluster/master", ["require", "exports", "tslib", "cluster", "@angular/compiler-cli/ngcc/src/execution/tasks/utils", "@angular/compiler-cli/ngcc/src/execution/cluster/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.ClusterMaster = void 0;
    var tslib_1 = require("tslib");
    /// <reference types="node" />
    var cluster = require("cluster");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/execution/tasks/utils");
    var utils_2 = require("@angular/compiler-cli/ngcc/src/execution/cluster/utils");
    /**
     * The cluster master is responsible for analyzing all entry-points, planning the work that needs to
     * be done, distributing it to worker-processes and collecting/post-processing the results.
     */
    var ClusterMaster = /** @class */ (function () {
        function ClusterMaster(maxWorkerCount, fileSystem, logger, fileWriter, pkgJsonUpdater, analyzeEntryPoints, createTaskCompletedCallback) {
            this.maxWorkerCount = maxWorkerCount;
            this.fileSystem = fileSystem;
            this.logger = logger;
            this.fileWriter = fileWriter;
            this.pkgJsonUpdater = pkgJsonUpdater;
            this.finishedDeferred = new utils_2.Deferred();
            this.processingStartTime = -1;
            this.taskAssignments = new Map();
            this.remainingRespawnAttempts = 3;
            if (!cluster.isMaster) {
                throw new Error('Tried to instantiate `ClusterMaster` on a worker process.');
            }
            // Set the worker entry-point
            cluster.setupMaster({ exec: this.fileSystem.resolve(__dirname, 'worker.js') });
            this.taskQueue = analyzeEntryPoints();
            this.onTaskCompleted = createTaskCompletedCallback(this.taskQueue);
        }
        ClusterMaster.prototype.run = function () {
            var _this = this;
            if (this.taskQueue.allTasksCompleted) {
                return Promise.resolve();
            }
            // Set up listeners for worker events (emitted on `cluster`).
            cluster.on('online', this.wrapEventHandler(function (worker) { return _this.onWorkerOnline(worker.id); }));
            cluster.on('message', this.wrapEventHandler(function (worker, msg) { return _this.onWorkerMessage(worker.id, msg); }));
            cluster.on('exit', this.wrapEventHandler(function (worker, code, signal) { return _this.onWorkerExit(worker, code, signal); }));
            // Since we have pending tasks at the very minimum we need a single worker.
            cluster.fork();
            return this.finishedDeferred.promise.then(function () { return _this.stopWorkers(); }, function (err) {
                _this.stopWorkers();
                return Promise.reject(err);
            });
        };
        /** Try to find available (idle) workers and assign them available (non-blocked) tasks. */
        ClusterMaster.prototype.maybeDistributeWork = function () {
            var e_1, _a;
            var isWorkerAvailable = false;
            // First, check whether all tasks have been completed.
            if (this.taskQueue.allTasksCompleted) {
                var duration = Math.round((Date.now() - this.processingStartTime) / 100) / 10;
                this.logger.debug("Processed tasks in " + duration + "s.");
                return this.finishedDeferred.resolve();
            }
            try {
                // Look for available workers and available tasks to assign to them.
                for (var _b = tslib_1.__values(Array.from(this.taskAssignments)), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var _d = tslib_1.__read(_c.value, 2), workerId = _d[0], assignedTask = _d[1];
                    if (assignedTask !== null) {
                        // This worker already has a job; check other workers.
                        continue;
                    }
                    else {
                        // This worker is available.
                        isWorkerAvailable = true;
                    }
                    // This worker needs a job. See if any are available.
                    var task = this.taskQueue.getNextTask();
                    if (task === null) {
                        // No suitable work available right now.
                        break;
                    }
                    // Process the next task on the worker.
                    this.taskAssignments.set(workerId, { task: task });
                    utils_2.sendMessageToWorker(workerId, { type: 'process-task', task: task });
                    isWorkerAvailable = false;
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
            if (!isWorkerAvailable) {
                var spawnedWorkerCount = Object.keys(cluster.workers).length;
                if (spawnedWorkerCount < this.maxWorkerCount) {
                    this.logger.debug('Spawning another worker process as there is more work to be done.');
                    cluster.fork();
                }
                else {
                    // If there are no available workers or no available tasks, log (for debugging purposes).
                    this.logger.debug("All " + spawnedWorkerCount + " workers are currently busy and cannot take on more work.");
                }
            }
            else {
                var busyWorkers = Array.from(this.taskAssignments)
                    .filter(function (_a) {
                    var _b = tslib_1.__read(_a, 2), _workerId = _b[0], task = _b[1];
                    return task !== null;
                })
                    .map(function (_a) {
                    var _b = tslib_1.__read(_a, 1), workerId = _b[0];
                    return workerId;
                });
                var totalWorkerCount = this.taskAssignments.size;
                var idleWorkerCount = totalWorkerCount - busyWorkers.length;
                this.logger.debug("No assignments for " + idleWorkerCount + " idle (out of " + totalWorkerCount + " total) " +
                    ("workers. Busy workers: " + busyWorkers.join(', ')));
                if (busyWorkers.length === 0) {
                    // This is a bug:
                    // All workers are idle (meaning no tasks are in progress) and `taskQueue.allTasksCompleted`
                    // is `false`, but there is still no assignable work.
                    throw new Error('There are still unprocessed tasks in the queue and no tasks are currently in ' +
                        ("progress, yet the queue did not return any available tasks: " + this.taskQueue));
                }
            }
        };
        /** Handle a worker's exiting. (Might be intentional or not.) */
        ClusterMaster.prototype.onWorkerExit = function (worker, code, signal) {
            // If the worker's exiting was intentional, nothing to do.
            if (worker.exitedAfterDisconnect)
                return;
            // The worker exited unexpectedly: Determine it's status and take an appropriate action.
            var assignment = this.taskAssignments.get(worker.id);
            this.taskAssignments.delete(worker.id);
            this.logger.warn("Worker #" + worker.id + " exited unexpectedly (code: " + code + " | signal: " + signal + ").\n" +
                ("  Current task: " + ((assignment == null) ? '-' : utils_1.stringifyTask(assignment.task)) + "\n") +
                ("  Current phase: " + ((assignment == null) ? '-' :
                    (assignment.files == null) ? 'compiling' : 'writing files')));
            if (assignment == null) {
                // The crashed worker process was not in the middle of a task:
                // Just spawn another process.
                this.logger.debug("Spawning another worker process to replace #" + worker.id + "...");
                cluster.fork();
            }
            else {
                var task = assignment.task, files = assignment.files;
                if (files != null) {
                    // The crashed worker process was in the middle of writing transformed files:
                    // Revert any changes before re-processing the task.
                    this.logger.debug("Reverting " + files.length + " transformed files...");
                    this.fileWriter.revertBundle(task.entryPoint, files, task.formatPropertiesToMarkAsProcessed);
                }
                // The crashed worker process was in the middle of a task:
                // Re-add the task back to the queue.
                this.taskQueue.markAsUnprocessed(task);
                // The crashing might be a result of increased memory consumption by ngcc.
                // Do not spawn another process, unless this was the last worker process.
                var spawnedWorkerCount = Object.keys(cluster.workers).length;
                if (spawnedWorkerCount > 0) {
                    this.logger.debug("Not spawning another worker process to replace #" + worker.id + ". Continuing with " + spawnedWorkerCount + " workers...");
                    this.maybeDistributeWork();
                }
                else if (this.remainingRespawnAttempts > 0) {
                    this.logger.debug("Spawning another worker process to replace #" + worker.id + "...");
                    this.remainingRespawnAttempts--;
                    cluster.fork();
                }
                else {
                    throw new Error('All worker processes crashed and attempts to re-spawn them failed. ' +
                        'Please check your system and ensure there is enough memory available.');
                }
            }
        };
        /** Handle a message from a worker. */
        ClusterMaster.prototype.onWorkerMessage = function (workerId, msg) {
            if (!this.taskAssignments.has(workerId)) {
                var knownWorkers = Array.from(this.taskAssignments.keys());
                throw new Error("Received message from unknown worker #" + workerId + " (known workers: " +
                    (knownWorkers.join(', ') + "): " + JSON.stringify(msg)));
            }
            switch (msg.type) {
                case 'error':
                    throw new Error("Error on worker #" + workerId + ": " + msg.error);
                case 'task-completed':
                    return this.onWorkerTaskCompleted(workerId, msg);
                case 'transformed-files':
                    return this.onWorkerTransformedFiles(workerId, msg);
                case 'update-package-json':
                    return this.onWorkerUpdatePackageJson(workerId, msg);
                default:
                    throw new Error("Invalid message received from worker #" + workerId + ": " + JSON.stringify(msg));
            }
        };
        /** Handle a worker's coming online. */
        ClusterMaster.prototype.onWorkerOnline = function (workerId) {
            if (this.taskAssignments.has(workerId)) {
                throw new Error("Invariant violated: Worker #" + workerId + " came online more than once.");
            }
            if (this.processingStartTime === -1) {
                this.logger.debug('Processing tasks...');
                this.processingStartTime = Date.now();
            }
            this.taskAssignments.set(workerId, null);
            this.maybeDistributeWork();
        };
        /** Handle a worker's having completed their assigned task. */
        ClusterMaster.prototype.onWorkerTaskCompleted = function (workerId, msg) {
            var assignment = this.taskAssignments.get(workerId) || null;
            if (assignment === null) {
                throw new Error("Expected worker #" + workerId + " to have a task assigned, while handling message: " +
                    JSON.stringify(msg));
            }
            this.onTaskCompleted(assignment.task, msg.outcome, msg.message);
            this.taskQueue.markAsCompleted(assignment.task);
            this.taskAssignments.set(workerId, null);
            this.maybeDistributeWork();
        };
        /** Handle a worker's message regarding the files transformed while processing its task. */
        ClusterMaster.prototype.onWorkerTransformedFiles = function (workerId, msg) {
            var assignment = this.taskAssignments.get(workerId) || null;
            if (assignment === null) {
                throw new Error("Expected worker #" + workerId + " to have a task assigned, while handling message: " +
                    JSON.stringify(msg));
            }
            var oldFiles = assignment.files;
            var newFiles = msg.files;
            if (oldFiles !== undefined) {
                throw new Error("Worker #" + workerId + " reported transformed files more than once.\n" +
                    ("  Old files (" + oldFiles.length + "): [" + oldFiles.join(', ') + "]\n") +
                    ("  New files (" + newFiles.length + "): [" + newFiles.join(', ') + "]\n"));
            }
            assignment.files = newFiles;
        };
        /** Handle a worker's request to update a `package.json` file. */
        ClusterMaster.prototype.onWorkerUpdatePackageJson = function (workerId, msg) {
            var assignment = this.taskAssignments.get(workerId) || null;
            if (assignment === null) {
                throw new Error("Expected worker #" + workerId + " to have a task assigned, while handling message: " +
                    JSON.stringify(msg));
            }
            var entryPoint = assignment.task.entryPoint;
            var expectedPackageJsonPath = this.fileSystem.resolve(entryPoint.path, 'package.json');
            if (expectedPackageJsonPath !== msg.packageJsonPath) {
                throw new Error("Received '" + msg.type + "' message from worker #" + workerId + " for '" + msg.packageJsonPath + "', " +
                    ("but was expecting '" + expectedPackageJsonPath + "' (based on task assignment)."));
            }
            // NOTE: Although the change in the parsed `package.json` will be reflected in tasks objects
            //       locally and thus also in future `process-task` messages sent to worker processes, any
            //       processes already running and processing a task for the same entry-point will not get
            //       the change.
            //       Do not rely on having an up-to-date `package.json` representation in worker processes.
            //       In other words, task processing should only rely on the info that was there when the
            //       file was initially parsed (during entry-point analysis) and not on the info that might
            //       be added later (during task processing).
            this.pkgJsonUpdater.writeChanges(msg.changes, msg.packageJsonPath, entryPoint.packageJson);
        };
        /** Stop all workers and stop listening on cluster events. */
        ClusterMaster.prototype.stopWorkers = function () {
            var workers = Object.values(cluster.workers);
            this.logger.debug("Stopping " + workers.length + " workers...");
            cluster.removeAllListeners();
            workers.forEach(function (worker) { return worker.kill(); });
        };
        /**
         * Wrap an event handler to ensure that `finishedDeferred` will be rejected on error (regardless
         * if the handler completes synchronously or asynchronously).
         */
        ClusterMaster.prototype.wrapEventHandler = function (fn) {
            var _this = this;
            return function () {
                var args = [];
                for (var _i = 0; _i < arguments.length; _i++) {
                    args[_i] = arguments[_i];
                }
                return tslib_1.__awaiter(_this, void 0, void 0, function () {
                    var err_1;
                    return tslib_1.__generator(this, function (_a) {
                        switch (_a.label) {
                            case 0:
                                _a.trys.push([0, 2, , 3]);
                                return [4 /*yield*/, fn.apply(void 0, tslib_1.__spread(args))];
                            case 1:
                                _a.sent();
                                return [3 /*break*/, 3];
                            case 2:
                                err_1 = _a.sent();
                                this.finishedDeferred.reject(err_1);
                                return [3 /*break*/, 3];
                            case 3: return [2 /*return*/];
                        }
                    });
                });
            };
        };
        return ClusterMaster;
    }());
    exports.ClusterMaster = ClusterMaster;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWFzdGVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL25nY2Mvc3JjL2V4ZWN1dGlvbi9jbHVzdGVyL21hc3Rlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBRUgsOEJBQThCO0lBRTlCLGlDQUFtQztJQVFuQyw4RUFBNkM7SUFHN0MsZ0ZBQXNEO0lBR3REOzs7T0FHRztJQUNIO1FBUUUsdUJBQ1ksY0FBc0IsRUFBVSxVQUFzQixFQUFVLE1BQWMsRUFDOUUsVUFBc0IsRUFBVSxjQUFrQyxFQUMxRSxrQkFBd0MsRUFDeEMsMkJBQXdEO1lBSGhELG1CQUFjLEdBQWQsY0FBYyxDQUFRO1lBQVUsZUFBVSxHQUFWLFVBQVUsQ0FBWTtZQUFVLFdBQU0sR0FBTixNQUFNLENBQVE7WUFDOUUsZUFBVSxHQUFWLFVBQVUsQ0FBWTtZQUFVLG1CQUFjLEdBQWQsY0FBYyxDQUFvQjtZQVR0RSxxQkFBZ0IsR0FBRyxJQUFJLGdCQUFRLEVBQVEsQ0FBQztZQUN4Qyx3QkFBbUIsR0FBVyxDQUFDLENBQUMsQ0FBQztZQUNqQyxvQkFBZSxHQUFHLElBQUksR0FBRyxFQUF1RCxDQUFDO1lBR2pGLDZCQUF3QixHQUFHLENBQUMsQ0FBQztZQU9uQyxJQUFJLENBQUMsT0FBTyxDQUFDLFFBQVEsRUFBRTtnQkFDckIsTUFBTSxJQUFJLEtBQUssQ0FBQywyREFBMkQsQ0FBQyxDQUFDO2FBQzlFO1lBRUQsNkJBQTZCO1lBQzdCLE9BQU8sQ0FBQyxXQUFXLENBQUMsRUFBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLFVBQVUsQ0FBQyxPQUFPLENBQUMsU0FBUyxFQUFFLFdBQVcsQ0FBQyxFQUFDLENBQUMsQ0FBQztZQUU3RSxJQUFJLENBQUMsU0FBUyxHQUFHLGtCQUFrQixFQUFFLENBQUM7WUFDdEMsSUFBSSxDQUFDLGVBQWUsR0FBRywyQkFBMkIsQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLENBQUM7UUFDckUsQ0FBQztRQUVELDJCQUFHLEdBQUg7WUFBQSxpQkFzQkM7WUFyQkMsSUFBSSxJQUFJLENBQUMsU0FBUyxDQUFDLGlCQUFpQixFQUFFO2dCQUNwQyxPQUFPLE9BQU8sQ0FBQyxPQUFPLEVBQUUsQ0FBQzthQUMxQjtZQUVELDZEQUE2RDtZQUM3RCxPQUFPLENBQUMsRUFBRSxDQUFDLFFBQVEsRUFBRSxJQUFJLENBQUMsZ0JBQWdCLENBQUMsVUFBQSxNQUFNLElBQUksT0FBQSxLQUFJLENBQUMsY0FBYyxDQUFDLE1BQU0sQ0FBQyxFQUFFLENBQUMsRUFBOUIsQ0FBOEIsQ0FBQyxDQUFDLENBQUM7WUFFdEYsT0FBTyxDQUFDLEVBQUUsQ0FDTixTQUFTLEVBQUUsSUFBSSxDQUFDLGdCQUFnQixDQUFDLFVBQUMsTUFBTSxFQUFFLEdBQUcsSUFBSyxPQUFBLEtBQUksQ0FBQyxlQUFlLENBQUMsTUFBTSxDQUFDLEVBQUUsRUFBRSxHQUFHLENBQUMsRUFBcEMsQ0FBb0MsQ0FBQyxDQUFDLENBQUM7WUFFN0YsT0FBTyxDQUFDLEVBQUUsQ0FDTixNQUFNLEVBQ04sSUFBSSxDQUFDLGdCQUFnQixDQUFDLFVBQUMsTUFBTSxFQUFFLElBQUksRUFBRSxNQUFNLElBQUssT0FBQSxLQUFJLENBQUMsWUFBWSxDQUFDLE1BQU0sRUFBRSxJQUFJLEVBQUUsTUFBTSxDQUFDLEVBQXZDLENBQXVDLENBQUMsQ0FBQyxDQUFDO1lBRTlGLDJFQUEyRTtZQUMzRSxPQUFPLENBQUMsSUFBSSxFQUFFLENBQUM7WUFFZixPQUFPLElBQUksQ0FBQyxnQkFBZ0IsQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLGNBQU0sT0FBQSxLQUFJLENBQUMsV0FBVyxFQUFFLEVBQWxCLENBQWtCLEVBQUUsVUFBQSxHQUFHO2dCQUNyRSxLQUFJLENBQUMsV0FBVyxFQUFFLENBQUM7Z0JBQ25CLE9BQU8sT0FBTyxDQUFDLE1BQU0sQ0FBQyxHQUFHLENBQUMsQ0FBQztZQUM3QixDQUFDLENBQUMsQ0FBQztRQUNMLENBQUM7UUFFRCwwRkFBMEY7UUFDbEYsMkNBQW1CLEdBQTNCOztZQUNFLElBQUksaUJBQWlCLEdBQUcsS0FBSyxDQUFDO1lBRTlCLHNEQUFzRDtZQUN0RCxJQUFJLElBQUksQ0FBQyxTQUFTLENBQUMsaUJBQWlCLEVBQUU7Z0JBQ3BDLElBQU0sUUFBUSxHQUFHLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQyxJQUFJLENBQUMsR0FBRyxFQUFFLEdBQUcsSUFBSSxDQUFDLG1CQUFtQixDQUFDLEdBQUcsR0FBRyxDQUFDLEdBQUcsRUFBRSxDQUFDO2dCQUNoRixJQUFJLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyx3QkFBc0IsUUFBUSxPQUFJLENBQUMsQ0FBQztnQkFFdEQsT0FBTyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsT0FBTyxFQUFFLENBQUM7YUFDeEM7O2dCQUVELG9FQUFvRTtnQkFDcEUsS0FBdUMsSUFBQSxLQUFBLGlCQUFBLEtBQUssQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLGVBQWUsQ0FBQyxDQUFBLGdCQUFBLDRCQUFFO29CQUE5RCxJQUFBLEtBQUEsMkJBQXdCLEVBQXZCLFFBQVEsUUFBQSxFQUFFLFlBQVksUUFBQTtvQkFDaEMsSUFBSSxZQUFZLEtBQUssSUFBSSxFQUFFO3dCQUN6QixzREFBc0Q7d0JBQ3RELFNBQVM7cUJBQ1Y7eUJBQU07d0JBQ0wsNEJBQTRCO3dCQUM1QixpQkFBaUIsR0FBRyxJQUFJLENBQUM7cUJBQzFCO29CQUVELHFEQUFxRDtvQkFDckQsSUFBTSxJQUFJLEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQyxXQUFXLEVBQUUsQ0FBQztvQkFDMUMsSUFBSSxJQUFJLEtBQUssSUFBSSxFQUFFO3dCQUNqQix3Q0FBd0M7d0JBQ3hDLE1BQU07cUJBQ1A7b0JBRUQsdUNBQXVDO29CQUN2QyxJQUFJLENBQUMsZUFBZSxDQUFDLEdBQUcsQ0FBQyxRQUFRLEVBQUUsRUFBQyxJQUFJLE1BQUEsRUFBQyxDQUFDLENBQUM7b0JBQzNDLDJCQUFtQixDQUFDLFFBQVEsRUFBRSxFQUFDLElBQUksRUFBRSxjQUFjLEVBQUUsSUFBSSxNQUFBLEVBQUMsQ0FBQyxDQUFDO29CQUU1RCxpQkFBaUIsR0FBRyxLQUFLLENBQUM7aUJBQzNCOzs7Ozs7Ozs7WUFFRCxJQUFJLENBQUMsaUJBQWlCLEVBQUU7Z0JBQ3RCLElBQU0sa0JBQWtCLEdBQUcsTUFBTSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLENBQUMsTUFBTSxDQUFDO2dCQUMvRCxJQUFJLGtCQUFrQixHQUFHLElBQUksQ0FBQyxjQUFjLEVBQUU7b0JBQzVDLElBQUksQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDLG1FQUFtRSxDQUFDLENBQUM7b0JBQ3ZGLE9BQU8sQ0FBQyxJQUFJLEVBQUUsQ0FBQztpQkFDaEI7cUJBQU07b0JBQ0wseUZBQXlGO29CQUN6RixJQUFJLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FDYixTQUFPLGtCQUFrQiw4REFBMkQsQ0FBQyxDQUFDO2lCQUMzRjthQUNGO2lCQUFNO2dCQUNMLElBQU0sV0FBVyxHQUFHLEtBQUssQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLGVBQWUsQ0FBQztxQkFDM0IsTUFBTSxDQUFDLFVBQUMsRUFBaUI7d0JBQWpCLEtBQUEscUJBQWlCLEVBQWhCLFNBQVMsUUFBQSxFQUFFLElBQUksUUFBQTtvQkFBTSxPQUFBLElBQUksS0FBSyxJQUFJO2dCQUFiLENBQWEsQ0FBQztxQkFDNUMsR0FBRyxDQUFDLFVBQUMsRUFBVTt3QkFBVixLQUFBLHFCQUFVLEVBQVQsUUFBUSxRQUFBO29CQUFNLE9BQUEsUUFBUTtnQkFBUixDQUFRLENBQUMsQ0FBQztnQkFDdkQsSUFBTSxnQkFBZ0IsR0FBRyxJQUFJLENBQUMsZUFBZSxDQUFDLElBQUksQ0FBQztnQkFDbkQsSUFBTSxlQUFlLEdBQUcsZ0JBQWdCLEdBQUcsV0FBVyxDQUFDLE1BQU0sQ0FBQztnQkFFOUQsSUFBSSxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQ2Isd0JBQXNCLGVBQWUsc0JBQWlCLGdCQUFnQixhQUFVO3FCQUNoRiw0QkFBMEIsV0FBVyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUcsQ0FBQSxDQUFDLENBQUM7Z0JBRXhELElBQUksV0FBVyxDQUFDLE1BQU0sS0FBSyxDQUFDLEVBQUU7b0JBQzVCLGlCQUFpQjtvQkFDakIsNEZBQTRGO29CQUM1RixxREFBcUQ7b0JBQ3JELE1BQU0sSUFBSSxLQUFLLENBQ1gsK0VBQStFO3lCQUMvRSxpRUFBK0QsSUFBSSxDQUFDLFNBQVcsQ0FBQSxDQUFDLENBQUM7aUJBQ3RGO2FBQ0Y7UUFDSCxDQUFDO1FBRUQsZ0VBQWdFO1FBQ3hELG9DQUFZLEdBQXBCLFVBQXFCLE1BQXNCLEVBQUUsSUFBaUIsRUFBRSxNQUFtQjtZQUNqRiwwREFBMEQ7WUFDMUQsSUFBSSxNQUFNLENBQUMscUJBQXFCO2dCQUFFLE9BQU87WUFFekMsd0ZBQXdGO1lBQ3hGLElBQU0sVUFBVSxHQUFHLElBQUksQ0FBQyxlQUFlLENBQUMsR0FBRyxDQUFDLE1BQU0sQ0FBQyxFQUFFLENBQUMsQ0FBQztZQUN2RCxJQUFJLENBQUMsZUFBZSxDQUFDLE1BQU0sQ0FBQyxNQUFNLENBQUMsRUFBRSxDQUFDLENBQUM7WUFFdkMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQ1osYUFBVyxNQUFNLENBQUMsRUFBRSxvQ0FBK0IsSUFBSSxtQkFBYyxNQUFNLFNBQU07aUJBQ2pGLHNCQUFtQixDQUFDLFVBQVUsSUFBSSxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxxQkFBYSxDQUFDLFVBQVUsQ0FBQyxJQUFJLENBQUMsUUFBSSxDQUFBO2lCQUNsRix1QkFDSSxDQUFDLFVBQVUsSUFBSSxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUM7b0JBQ0wsQ0FBQyxVQUFVLENBQUMsS0FBSyxJQUFJLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQyxXQUFXLENBQUMsQ0FBQyxDQUFDLGVBQWUsQ0FBRSxDQUFBLENBQUMsQ0FBQztZQUU3RixJQUFJLFVBQVUsSUFBSSxJQUFJLEVBQUU7Z0JBQ3RCLDhEQUE4RDtnQkFDOUQsOEJBQThCO2dCQUM5QixJQUFJLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyxpREFBK0MsTUFBTSxDQUFDLEVBQUUsUUFBSyxDQUFDLENBQUM7Z0JBQ2pGLE9BQU8sQ0FBQyxJQUFJLEVBQUUsQ0FBQzthQUNoQjtpQkFBTTtnQkFDRSxJQUFBLElBQUksR0FBVyxVQUFVLEtBQXJCLEVBQUUsS0FBSyxHQUFJLFVBQVUsTUFBZCxDQUFlO2dCQUVqQyxJQUFJLEtBQUssSUFBSSxJQUFJLEVBQUU7b0JBQ2pCLDZFQUE2RTtvQkFDN0Usb0RBQW9EO29CQUNwRCxJQUFJLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyxlQUFhLEtBQUssQ0FBQyxNQUFNLDBCQUF1QixDQUFDLENBQUM7b0JBQ3BFLElBQUksQ0FBQyxVQUFVLENBQUMsWUFBWSxDQUN4QixJQUFJLENBQUMsVUFBVSxFQUFFLEtBQUssRUFBRSxJQUFJLENBQUMsaUNBQWlDLENBQUMsQ0FBQztpQkFDckU7Z0JBRUQsMERBQTBEO2dCQUMxRCxxQ0FBcUM7Z0JBQ3JDLElBQUksQ0FBQyxTQUFTLENBQUMsaUJBQWlCLENBQUMsSUFBSSxDQUFDLENBQUM7Z0JBRXZDLDBFQUEwRTtnQkFDMUUseUVBQXlFO2dCQUN6RSxJQUFNLGtCQUFrQixHQUFHLE1BQU0sQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLE9BQU8sQ0FBQyxDQUFDLE1BQU0sQ0FBQztnQkFDL0QsSUFBSSxrQkFBa0IsR0FBRyxDQUFDLEVBQUU7b0JBQzFCLElBQUksQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDLHFEQUNkLE1BQU0sQ0FBQyxFQUFFLDBCQUFxQixrQkFBa0IsZ0JBQWEsQ0FBQyxDQUFDO29CQUNuRSxJQUFJLENBQUMsbUJBQW1CLEVBQUUsQ0FBQztpQkFDNUI7cUJBQU0sSUFBSSxJQUFJLENBQUMsd0JBQXdCLEdBQUcsQ0FBQyxFQUFFO29CQUM1QyxJQUFJLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyxpREFBK0MsTUFBTSxDQUFDLEVBQUUsUUFBSyxDQUFDLENBQUM7b0JBQ2pGLElBQUksQ0FBQyx3QkFBd0IsRUFBRSxDQUFDO29CQUNoQyxPQUFPLENBQUMsSUFBSSxFQUFFLENBQUM7aUJBQ2hCO3FCQUFNO29CQUNMLE1BQU0sSUFBSSxLQUFLLENBQ1gscUVBQXFFO3dCQUNyRSx1RUFBdUUsQ0FBQyxDQUFDO2lCQUM5RTthQUNGO1FBQ0gsQ0FBQztRQUVELHNDQUFzQztRQUM5Qix1Q0FBZSxHQUF2QixVQUF3QixRQUFnQixFQUFFLEdBQXNCO1lBQzlELElBQUksQ0FBQyxJQUFJLENBQUMsZUFBZSxDQUFDLEdBQUcsQ0FBQyxRQUFRLENBQUMsRUFBRTtnQkFDdkMsSUFBTSxZQUFZLEdBQUcsS0FBSyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsZUFBZSxDQUFDLElBQUksRUFBRSxDQUFDLENBQUM7Z0JBQzdELE1BQU0sSUFBSSxLQUFLLENBQ1gsMkNBQXlDLFFBQVEsc0JBQW1CO3FCQUNqRSxZQUFZLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxXQUFNLElBQUksQ0FBQyxTQUFTLENBQUMsR0FBRyxDQUFHLENBQUEsQ0FBQyxDQUFDO2FBQzVEO1lBRUQsUUFBUSxHQUFHLENBQUMsSUFBSSxFQUFFO2dCQUNoQixLQUFLLE9BQU87b0JBQ1YsTUFBTSxJQUFJLEtBQUssQ0FBQyxzQkFBb0IsUUFBUSxVQUFLLEdBQUcsQ0FBQyxLQUFPLENBQUMsQ0FBQztnQkFDaEUsS0FBSyxnQkFBZ0I7b0JBQ25CLE9BQU8sSUFBSSxDQUFDLHFCQUFxQixDQUFDLFFBQVEsRUFBRSxHQUFHLENBQUMsQ0FBQztnQkFDbkQsS0FBSyxtQkFBbUI7b0JBQ3RCLE9BQU8sSUFBSSxDQUFDLHdCQUF3QixDQUFDLFFBQVEsRUFBRSxHQUFHLENBQUMsQ0FBQztnQkFDdEQsS0FBSyxxQkFBcUI7b0JBQ3hCLE9BQU8sSUFBSSxDQUFDLHlCQUF5QixDQUFDLFFBQVEsRUFBRSxHQUFHLENBQUMsQ0FBQztnQkFDdkQ7b0JBQ0UsTUFBTSxJQUFJLEtBQUssQ0FDWCwyQ0FBeUMsUUFBUSxVQUFLLElBQUksQ0FBQyxTQUFTLENBQUMsR0FBRyxDQUFHLENBQUMsQ0FBQzthQUNwRjtRQUNILENBQUM7UUFFRCx1Q0FBdUM7UUFDL0Isc0NBQWMsR0FBdEIsVUFBdUIsUUFBZ0I7WUFDckMsSUFBSSxJQUFJLENBQUMsZUFBZSxDQUFDLEdBQUcsQ0FBQyxRQUFRLENBQUMsRUFBRTtnQkFDdEMsTUFBTSxJQUFJLEtBQUssQ0FBQyxpQ0FBK0IsUUFBUSxpQ0FBOEIsQ0FBQyxDQUFDO2FBQ3hGO1lBRUQsSUFBSSxJQUFJLENBQUMsbUJBQW1CLEtBQUssQ0FBQyxDQUFDLEVBQUU7Z0JBQ25DLElBQUksQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDLHFCQUFxQixDQUFDLENBQUM7Z0JBQ3pDLElBQUksQ0FBQyxtQkFBbUIsR0FBRyxJQUFJLENBQUMsR0FBRyxFQUFFLENBQUM7YUFDdkM7WUFFRCxJQUFJLENBQUMsZUFBZSxDQUFDLEdBQUcsQ0FBQyxRQUFRLEVBQUUsSUFBSSxDQUFDLENBQUM7WUFDekMsSUFBSSxDQUFDLG1CQUFtQixFQUFFLENBQUM7UUFDN0IsQ0FBQztRQUVELDhEQUE4RDtRQUN0RCw2Q0FBcUIsR0FBN0IsVUFBOEIsUUFBZ0IsRUFBRSxHQUF5QjtZQUN2RSxJQUFNLFVBQVUsR0FBRyxJQUFJLENBQUMsZUFBZSxDQUFDLEdBQUcsQ0FBQyxRQUFRLENBQUMsSUFBSSxJQUFJLENBQUM7WUFFOUQsSUFBSSxVQUFVLEtBQUssSUFBSSxFQUFFO2dCQUN2QixNQUFNLElBQUksS0FBSyxDQUNYLHNCQUFvQixRQUFRLHVEQUFvRDtvQkFDaEYsSUFBSSxDQUFDLFNBQVMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDO2FBQzFCO1lBRUQsSUFBSSxDQUFDLGVBQWUsQ0FBQyxVQUFVLENBQUMsSUFBSSxFQUFFLEdBQUcsQ0FBQyxPQUFPLEVBQUUsR0FBRyxDQUFDLE9BQU8sQ0FBQyxDQUFDO1lBRWhFLElBQUksQ0FBQyxTQUFTLENBQUMsZUFBZSxDQUFDLFVBQVUsQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUNoRCxJQUFJLENBQUMsZUFBZSxDQUFDLEdBQUcsQ0FBQyxRQUFRLEVBQUUsSUFBSSxDQUFDLENBQUM7WUFDekMsSUFBSSxDQUFDLG1CQUFtQixFQUFFLENBQUM7UUFDN0IsQ0FBQztRQUVELDJGQUEyRjtRQUNuRixnREFBd0IsR0FBaEMsVUFBaUMsUUFBZ0IsRUFBRSxHQUE0QjtZQUM3RSxJQUFNLFVBQVUsR0FBRyxJQUFJLENBQUMsZUFBZSxDQUFDLEdBQUcsQ0FBQyxRQUFRLENBQUMsSUFBSSxJQUFJLENBQUM7WUFFOUQsSUFBSSxVQUFVLEtBQUssSUFBSSxFQUFFO2dCQUN2QixNQUFNLElBQUksS0FBSyxDQUNYLHNCQUFvQixRQUFRLHVEQUFvRDtvQkFDaEYsSUFBSSxDQUFDLFNBQVMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDO2FBQzFCO1lBRUQsSUFBTSxRQUFRLEdBQUcsVUFBVSxDQUFDLEtBQUssQ0FBQztZQUNsQyxJQUFNLFFBQVEsR0FBRyxHQUFHLENBQUMsS0FBSyxDQUFDO1lBRTNCLElBQUksUUFBUSxLQUFLLFNBQVMsRUFBRTtnQkFDMUIsTUFBTSxJQUFJLEtBQUssQ0FDWCxhQUFXLFFBQVEsa0RBQStDO3FCQUNsRSxrQkFBZ0IsUUFBUSxDQUFDLE1BQU0sWUFBTyxRQUFRLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxRQUFLLENBQUE7cUJBQzlELGtCQUFnQixRQUFRLENBQUMsTUFBTSxZQUFPLFFBQVEsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLFFBQUssQ0FBQSxDQUFDLENBQUM7YUFDckU7WUFFRCxVQUFVLENBQUMsS0FBSyxHQUFHLFFBQVEsQ0FBQztRQUM5QixDQUFDO1FBRUQsaUVBQWlFO1FBQ3pELGlEQUF5QixHQUFqQyxVQUFrQyxRQUFnQixFQUFFLEdBQTZCO1lBQy9FLElBQU0sVUFBVSxHQUFHLElBQUksQ0FBQyxlQUFlLENBQUMsR0FBRyxDQUFDLFFBQVEsQ0FBQyxJQUFJLElBQUksQ0FBQztZQUU5RCxJQUFJLFVBQVUsS0FBSyxJQUFJLEVBQUU7Z0JBQ3ZCLE1BQU0sSUFBSSxLQUFLLENBQ1gsc0JBQW9CLFFBQVEsdURBQW9EO29CQUNoRixJQUFJLENBQUMsU0FBUyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUM7YUFDMUI7WUFFRCxJQUFNLFVBQVUsR0FBRyxVQUFVLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQztZQUM5QyxJQUFNLHVCQUF1QixHQUFHLElBQUksQ0FBQyxVQUFVLENBQUMsT0FBTyxDQUFDLFVBQVUsQ0FBQyxJQUFJLEVBQUUsY0FBYyxDQUFDLENBQUM7WUFFekYsSUFBSSx1QkFBdUIsS0FBSyxHQUFHLENBQUMsZUFBZSxFQUFFO2dCQUNuRCxNQUFNLElBQUksS0FBSyxDQUNYLGVBQWEsR0FBRyxDQUFDLElBQUksK0JBQTBCLFFBQVEsY0FBUyxHQUFHLENBQUMsZUFBZSxRQUFLO3FCQUN4Rix3QkFBc0IsdUJBQXVCLGtDQUErQixDQUFBLENBQUMsQ0FBQzthQUNuRjtZQUVELDRGQUE0RjtZQUM1Riw4RkFBOEY7WUFDOUYsOEZBQThGO1lBQzlGLG9CQUFvQjtZQUNwQiwrRkFBK0Y7WUFDL0YsNkZBQTZGO1lBQzdGLCtGQUErRjtZQUMvRixpREFBaUQ7WUFDakQsSUFBSSxDQUFDLGNBQWMsQ0FBQyxZQUFZLENBQUMsR0FBRyxDQUFDLE9BQU8sRUFBRSxHQUFHLENBQUMsZUFBZSxFQUFFLFVBQVUsQ0FBQyxXQUFXLENBQUMsQ0FBQztRQUM3RixDQUFDO1FBRUQsNkRBQTZEO1FBQ3JELG1DQUFXLEdBQW5CO1lBQ0UsSUFBTSxPQUFPLEdBQUcsTUFBTSxDQUFDLE1BQU0sQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFxQixDQUFDO1lBQ25FLElBQUksQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDLGNBQVksT0FBTyxDQUFDLE1BQU0sZ0JBQWEsQ0FBQyxDQUFDO1lBRTNELE9BQU8sQ0FBQyxrQkFBa0IsRUFBRSxDQUFDO1lBQzdCLE9BQU8sQ0FBQyxPQUFPLENBQUMsVUFBQSxNQUFNLElBQUksT0FBQSxNQUFNLENBQUMsSUFBSSxFQUFFLEVBQWIsQ0FBYSxDQUFDLENBQUM7UUFDM0MsQ0FBQztRQUVEOzs7V0FHRztRQUNLLHdDQUFnQixHQUF4QixVQUFpRCxFQUF5QztZQUExRixpQkFTQztZQVBDLE9BQU87Z0JBQU8sY0FBYTtxQkFBYixVQUFhLEVBQWIscUJBQWEsRUFBYixJQUFhO29CQUFiLHlCQUFhOzs7Ozs7OztnQ0FFdkIscUJBQU0sRUFBRSxnQ0FBSSxJQUFJLElBQUM7O2dDQUFqQixTQUFpQixDQUFDOzs7O2dDQUVsQixJQUFJLENBQUMsZ0JBQWdCLENBQUMsTUFBTSxDQUFDLEtBQUcsQ0FBQyxDQUFDOzs7Ozs7YUFFckMsQ0FBQztRQUNKLENBQUM7UUFDSCxvQkFBQztJQUFELENBQUMsQUEvU0QsSUErU0M7SUEvU1ksc0NBQWEiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuLy8vIDxyZWZlcmVuY2UgdHlwZXM9XCJub2RlXCIgLz5cblxuaW1wb3J0ICogYXMgY2x1c3RlciBmcm9tICdjbHVzdGVyJztcblxuaW1wb3J0IHtBYnNvbHV0ZUZzUGF0aCwgRmlsZVN5c3RlbX0gZnJvbSAnLi4vLi4vLi4vLi4vc3JjL25ndHNjL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7TG9nZ2VyfSBmcm9tICcuLi8uLi9sb2dnaW5nL2xvZ2dlcic7XG5pbXBvcnQge0ZpbGVXcml0ZXJ9IGZyb20gJy4uLy4uL3dyaXRpbmcvZmlsZV93cml0ZXInO1xuaW1wb3J0IHtQYWNrYWdlSnNvblVwZGF0ZXJ9IGZyb20gJy4uLy4uL3dyaXRpbmcvcGFja2FnZV9qc29uX3VwZGF0ZXInO1xuaW1wb3J0IHtBbmFseXplRW50cnlQb2ludHNGbn0gZnJvbSAnLi4vYXBpJztcbmltcG9ydCB7Q3JlYXRlVGFza0NvbXBsZXRlZENhbGxiYWNrLCBUYXNrLCBUYXNrQ29tcGxldGVkQ2FsbGJhY2ssIFRhc2tRdWV1ZX0gZnJvbSAnLi4vdGFza3MvYXBpJztcbmltcG9ydCB7c3RyaW5naWZ5VGFza30gZnJvbSAnLi4vdGFza3MvdXRpbHMnO1xuXG5pbXBvcnQge01lc3NhZ2VGcm9tV29ya2VyLCBUYXNrQ29tcGxldGVkTWVzc2FnZSwgVHJhbnNmb3JtZWRGaWxlc01lc3NhZ2UsIFVwZGF0ZVBhY2thZ2VKc29uTWVzc2FnZX0gZnJvbSAnLi9hcGknO1xuaW1wb3J0IHtEZWZlcnJlZCwgc2VuZE1lc3NhZ2VUb1dvcmtlcn0gZnJvbSAnLi91dGlscyc7XG5cblxuLyoqXG4gKiBUaGUgY2x1c3RlciBtYXN0ZXIgaXMgcmVzcG9uc2libGUgZm9yIGFuYWx5emluZyBhbGwgZW50cnktcG9pbnRzLCBwbGFubmluZyB0aGUgd29yayB0aGF0IG5lZWRzIHRvXG4gKiBiZSBkb25lLCBkaXN0cmlidXRpbmcgaXQgdG8gd29ya2VyLXByb2Nlc3NlcyBhbmQgY29sbGVjdGluZy9wb3N0LXByb2Nlc3NpbmcgdGhlIHJlc3VsdHMuXG4gKi9cbmV4cG9ydCBjbGFzcyBDbHVzdGVyTWFzdGVyIHtcbiAgcHJpdmF0ZSBmaW5pc2hlZERlZmVycmVkID0gbmV3IERlZmVycmVkPHZvaWQ+KCk7XG4gIHByaXZhdGUgcHJvY2Vzc2luZ1N0YXJ0VGltZTogbnVtYmVyID0gLTE7XG4gIHByaXZhdGUgdGFza0Fzc2lnbm1lbnRzID0gbmV3IE1hcDxudW1iZXIsIHt0YXNrOiBUYXNrLCBmaWxlcz86IEFic29sdXRlRnNQYXRoW119fG51bGw+KCk7XG4gIHByaXZhdGUgdGFza1F1ZXVlOiBUYXNrUXVldWU7XG4gIHByaXZhdGUgb25UYXNrQ29tcGxldGVkOiBUYXNrQ29tcGxldGVkQ2FsbGJhY2s7XG4gIHByaXZhdGUgcmVtYWluaW5nUmVzcGF3bkF0dGVtcHRzID0gMztcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgbWF4V29ya2VyQ291bnQ6IG51bWJlciwgcHJpdmF0ZSBmaWxlU3lzdGVtOiBGaWxlU3lzdGVtLCBwcml2YXRlIGxvZ2dlcjogTG9nZ2VyLFxuICAgICAgcHJpdmF0ZSBmaWxlV3JpdGVyOiBGaWxlV3JpdGVyLCBwcml2YXRlIHBrZ0pzb25VcGRhdGVyOiBQYWNrYWdlSnNvblVwZGF0ZXIsXG4gICAgICBhbmFseXplRW50cnlQb2ludHM6IEFuYWx5emVFbnRyeVBvaW50c0ZuLFxuICAgICAgY3JlYXRlVGFza0NvbXBsZXRlZENhbGxiYWNrOiBDcmVhdGVUYXNrQ29tcGxldGVkQ2FsbGJhY2spIHtcbiAgICBpZiAoIWNsdXN0ZXIuaXNNYXN0ZXIpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcignVHJpZWQgdG8gaW5zdGFudGlhdGUgYENsdXN0ZXJNYXN0ZXJgIG9uIGEgd29ya2VyIHByb2Nlc3MuJyk7XG4gICAgfVxuXG4gICAgLy8gU2V0IHRoZSB3b3JrZXIgZW50cnktcG9pbnRcbiAgICBjbHVzdGVyLnNldHVwTWFzdGVyKHtleGVjOiB0aGlzLmZpbGVTeXN0ZW0ucmVzb2x2ZShfX2Rpcm5hbWUsICd3b3JrZXIuanMnKX0pO1xuXG4gICAgdGhpcy50YXNrUXVldWUgPSBhbmFseXplRW50cnlQb2ludHMoKTtcbiAgICB0aGlzLm9uVGFza0NvbXBsZXRlZCA9IGNyZWF0ZVRhc2tDb21wbGV0ZWRDYWxsYmFjayh0aGlzLnRhc2tRdWV1ZSk7XG4gIH1cblxuICBydW4oKTogUHJvbWlzZTx2b2lkPiB7XG4gICAgaWYgKHRoaXMudGFza1F1ZXVlLmFsbFRhc2tzQ29tcGxldGVkKSB7XG4gICAgICByZXR1cm4gUHJvbWlzZS5yZXNvbHZlKCk7XG4gICAgfVxuXG4gICAgLy8gU2V0IHVwIGxpc3RlbmVycyBmb3Igd29ya2VyIGV2ZW50cyAoZW1pdHRlZCBvbiBgY2x1c3RlcmApLlxuICAgIGNsdXN0ZXIub24oJ29ubGluZScsIHRoaXMud3JhcEV2ZW50SGFuZGxlcih3b3JrZXIgPT4gdGhpcy5vbldvcmtlck9ubGluZSh3b3JrZXIuaWQpKSk7XG5cbiAgICBjbHVzdGVyLm9uKFxuICAgICAgICAnbWVzc2FnZScsIHRoaXMud3JhcEV2ZW50SGFuZGxlcigod29ya2VyLCBtc2cpID0+IHRoaXMub25Xb3JrZXJNZXNzYWdlKHdvcmtlci5pZCwgbXNnKSkpO1xuXG4gICAgY2x1c3Rlci5vbihcbiAgICAgICAgJ2V4aXQnLFxuICAgICAgICB0aGlzLndyYXBFdmVudEhhbmRsZXIoKHdvcmtlciwgY29kZSwgc2lnbmFsKSA9PiB0aGlzLm9uV29ya2VyRXhpdCh3b3JrZXIsIGNvZGUsIHNpZ25hbCkpKTtcblxuICAgIC8vIFNpbmNlIHdlIGhhdmUgcGVuZGluZyB0YXNrcyBhdCB0aGUgdmVyeSBtaW5pbXVtIHdlIG5lZWQgYSBzaW5nbGUgd29ya2VyLlxuICAgIGNsdXN0ZXIuZm9yaygpO1xuXG4gICAgcmV0dXJuIHRoaXMuZmluaXNoZWREZWZlcnJlZC5wcm9taXNlLnRoZW4oKCkgPT4gdGhpcy5zdG9wV29ya2VycygpLCBlcnIgPT4ge1xuICAgICAgdGhpcy5zdG9wV29ya2VycygpO1xuICAgICAgcmV0dXJuIFByb21pc2UucmVqZWN0KGVycik7XG4gICAgfSk7XG4gIH1cblxuICAvKiogVHJ5IHRvIGZpbmQgYXZhaWxhYmxlIChpZGxlKSB3b3JrZXJzIGFuZCBhc3NpZ24gdGhlbSBhdmFpbGFibGUgKG5vbi1ibG9ja2VkKSB0YXNrcy4gKi9cbiAgcHJpdmF0ZSBtYXliZURpc3RyaWJ1dGVXb3JrKCk6IHZvaWQge1xuICAgIGxldCBpc1dvcmtlckF2YWlsYWJsZSA9IGZhbHNlO1xuXG4gICAgLy8gRmlyc3QsIGNoZWNrIHdoZXRoZXIgYWxsIHRhc2tzIGhhdmUgYmVlbiBjb21wbGV0ZWQuXG4gICAgaWYgKHRoaXMudGFza1F1ZXVlLmFsbFRhc2tzQ29tcGxldGVkKSB7XG4gICAgICBjb25zdCBkdXJhdGlvbiA9IE1hdGgucm91bmQoKERhdGUubm93KCkgLSB0aGlzLnByb2Nlc3NpbmdTdGFydFRpbWUpIC8gMTAwKSAvIDEwO1xuICAgICAgdGhpcy5sb2dnZXIuZGVidWcoYFByb2Nlc3NlZCB0YXNrcyBpbiAke2R1cmF0aW9ufXMuYCk7XG5cbiAgICAgIHJldHVybiB0aGlzLmZpbmlzaGVkRGVmZXJyZWQucmVzb2x2ZSgpO1xuICAgIH1cblxuICAgIC8vIExvb2sgZm9yIGF2YWlsYWJsZSB3b3JrZXJzIGFuZCBhdmFpbGFibGUgdGFza3MgdG8gYXNzaWduIHRvIHRoZW0uXG4gICAgZm9yIChjb25zdCBbd29ya2VySWQsIGFzc2lnbmVkVGFza10gb2YgQXJyYXkuZnJvbSh0aGlzLnRhc2tBc3NpZ25tZW50cykpIHtcbiAgICAgIGlmIChhc3NpZ25lZFRhc2sgIT09IG51bGwpIHtcbiAgICAgICAgLy8gVGhpcyB3b3JrZXIgYWxyZWFkeSBoYXMgYSBqb2I7IGNoZWNrIG90aGVyIHdvcmtlcnMuXG4gICAgICAgIGNvbnRpbnVlO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgLy8gVGhpcyB3b3JrZXIgaXMgYXZhaWxhYmxlLlxuICAgICAgICBpc1dvcmtlckF2YWlsYWJsZSA9IHRydWU7XG4gICAgICB9XG5cbiAgICAgIC8vIFRoaXMgd29ya2VyIG5lZWRzIGEgam9iLiBTZWUgaWYgYW55IGFyZSBhdmFpbGFibGUuXG4gICAgICBjb25zdCB0YXNrID0gdGhpcy50YXNrUXVldWUuZ2V0TmV4dFRhc2soKTtcbiAgICAgIGlmICh0YXNrID09PSBudWxsKSB7XG4gICAgICAgIC8vIE5vIHN1aXRhYmxlIHdvcmsgYXZhaWxhYmxlIHJpZ2h0IG5vdy5cbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG5cbiAgICAgIC8vIFByb2Nlc3MgdGhlIG5leHQgdGFzayBvbiB0aGUgd29ya2VyLlxuICAgICAgdGhpcy50YXNrQXNzaWdubWVudHMuc2V0KHdvcmtlcklkLCB7dGFza30pO1xuICAgICAgc2VuZE1lc3NhZ2VUb1dvcmtlcih3b3JrZXJJZCwge3R5cGU6ICdwcm9jZXNzLXRhc2snLCB0YXNrfSk7XG5cbiAgICAgIGlzV29ya2VyQXZhaWxhYmxlID0gZmFsc2U7XG4gICAgfVxuXG4gICAgaWYgKCFpc1dvcmtlckF2YWlsYWJsZSkge1xuICAgICAgY29uc3Qgc3Bhd25lZFdvcmtlckNvdW50ID0gT2JqZWN0LmtleXMoY2x1c3Rlci53b3JrZXJzKS5sZW5ndGg7XG4gICAgICBpZiAoc3Bhd25lZFdvcmtlckNvdW50IDwgdGhpcy5tYXhXb3JrZXJDb3VudCkge1xuICAgICAgICB0aGlzLmxvZ2dlci5kZWJ1ZygnU3Bhd25pbmcgYW5vdGhlciB3b3JrZXIgcHJvY2VzcyBhcyB0aGVyZSBpcyBtb3JlIHdvcmsgdG8gYmUgZG9uZS4nKTtcbiAgICAgICAgY2x1c3Rlci5mb3JrKCk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICAvLyBJZiB0aGVyZSBhcmUgbm8gYXZhaWxhYmxlIHdvcmtlcnMgb3Igbm8gYXZhaWxhYmxlIHRhc2tzLCBsb2cgKGZvciBkZWJ1Z2dpbmcgcHVycG9zZXMpLlxuICAgICAgICB0aGlzLmxvZ2dlci5kZWJ1ZyhcbiAgICAgICAgICAgIGBBbGwgJHtzcGF3bmVkV29ya2VyQ291bnR9IHdvcmtlcnMgYXJlIGN1cnJlbnRseSBidXN5IGFuZCBjYW5ub3QgdGFrZSBvbiBtb3JlIHdvcmsuYCk7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIGNvbnN0IGJ1c3lXb3JrZXJzID0gQXJyYXkuZnJvbSh0aGlzLnRhc2tBc3NpZ25tZW50cylcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5maWx0ZXIoKFtfd29ya2VySWQsIHRhc2tdKSA9PiB0YXNrICE9PSBudWxsKVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLm1hcCgoW3dvcmtlcklkXSkgPT4gd29ya2VySWQpO1xuICAgICAgY29uc3QgdG90YWxXb3JrZXJDb3VudCA9IHRoaXMudGFza0Fzc2lnbm1lbnRzLnNpemU7XG4gICAgICBjb25zdCBpZGxlV29ya2VyQ291bnQgPSB0b3RhbFdvcmtlckNvdW50IC0gYnVzeVdvcmtlcnMubGVuZ3RoO1xuXG4gICAgICB0aGlzLmxvZ2dlci5kZWJ1ZyhcbiAgICAgICAgICBgTm8gYXNzaWdubWVudHMgZm9yICR7aWRsZVdvcmtlckNvdW50fSBpZGxlIChvdXQgb2YgJHt0b3RhbFdvcmtlckNvdW50fSB0b3RhbCkgYCArXG4gICAgICAgICAgYHdvcmtlcnMuIEJ1c3kgd29ya2VyczogJHtidXN5V29ya2Vycy5qb2luKCcsICcpfWApO1xuXG4gICAgICBpZiAoYnVzeVdvcmtlcnMubGVuZ3RoID09PSAwKSB7XG4gICAgICAgIC8vIFRoaXMgaXMgYSBidWc6XG4gICAgICAgIC8vIEFsbCB3b3JrZXJzIGFyZSBpZGxlIChtZWFuaW5nIG5vIHRhc2tzIGFyZSBpbiBwcm9ncmVzcykgYW5kIGB0YXNrUXVldWUuYWxsVGFza3NDb21wbGV0ZWRgXG4gICAgICAgIC8vIGlzIGBmYWxzZWAsIGJ1dCB0aGVyZSBpcyBzdGlsbCBubyBhc3NpZ25hYmxlIHdvcmsuXG4gICAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICAgICdUaGVyZSBhcmUgc3RpbGwgdW5wcm9jZXNzZWQgdGFza3MgaW4gdGhlIHF1ZXVlIGFuZCBubyB0YXNrcyBhcmUgY3VycmVudGx5IGluICcgK1xuICAgICAgICAgICAgYHByb2dyZXNzLCB5ZXQgdGhlIHF1ZXVlIGRpZCBub3QgcmV0dXJuIGFueSBhdmFpbGFibGUgdGFza3M6ICR7dGhpcy50YXNrUXVldWV9YCk7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLyoqIEhhbmRsZSBhIHdvcmtlcidzIGV4aXRpbmcuIChNaWdodCBiZSBpbnRlbnRpb25hbCBvciBub3QuKSAqL1xuICBwcml2YXRlIG9uV29ya2VyRXhpdCh3b3JrZXI6IGNsdXN0ZXIuV29ya2VyLCBjb2RlOiBudW1iZXJ8bnVsbCwgc2lnbmFsOiBzdHJpbmd8bnVsbCk6IHZvaWQge1xuICAgIC8vIElmIHRoZSB3b3JrZXIncyBleGl0aW5nIHdhcyBpbnRlbnRpb25hbCwgbm90aGluZyB0byBkby5cbiAgICBpZiAod29ya2VyLmV4aXRlZEFmdGVyRGlzY29ubmVjdCkgcmV0dXJuO1xuXG4gICAgLy8gVGhlIHdvcmtlciBleGl0ZWQgdW5leHBlY3RlZGx5OiBEZXRlcm1pbmUgaXQncyBzdGF0dXMgYW5kIHRha2UgYW4gYXBwcm9wcmlhdGUgYWN0aW9uLlxuICAgIGNvbnN0IGFzc2lnbm1lbnQgPSB0aGlzLnRhc2tBc3NpZ25tZW50cy5nZXQod29ya2VyLmlkKTtcbiAgICB0aGlzLnRhc2tBc3NpZ25tZW50cy5kZWxldGUod29ya2VyLmlkKTtcblxuICAgIHRoaXMubG9nZ2VyLndhcm4oXG4gICAgICAgIGBXb3JrZXIgIyR7d29ya2VyLmlkfSBleGl0ZWQgdW5leHBlY3RlZGx5IChjb2RlOiAke2NvZGV9IHwgc2lnbmFsOiAke3NpZ25hbH0pLlxcbmAgK1xuICAgICAgICBgICBDdXJyZW50IHRhc2s6ICR7KGFzc2lnbm1lbnQgPT0gbnVsbCkgPyAnLScgOiBzdHJpbmdpZnlUYXNrKGFzc2lnbm1lbnQudGFzayl9XFxuYCArXG4gICAgICAgIGAgIEN1cnJlbnQgcGhhc2U6ICR7XG4gICAgICAgICAgICAoYXNzaWdubWVudCA9PSBudWxsKSA/ICctJyA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIChhc3NpZ25tZW50LmZpbGVzID09IG51bGwpID8gJ2NvbXBpbGluZycgOiAnd3JpdGluZyBmaWxlcyd9YCk7XG5cbiAgICBpZiAoYXNzaWdubWVudCA9PSBudWxsKSB7XG4gICAgICAvLyBUaGUgY3Jhc2hlZCB3b3JrZXIgcHJvY2VzcyB3YXMgbm90IGluIHRoZSBtaWRkbGUgb2YgYSB0YXNrOlxuICAgICAgLy8gSnVzdCBzcGF3biBhbm90aGVyIHByb2Nlc3MuXG4gICAgICB0aGlzLmxvZ2dlci5kZWJ1ZyhgU3Bhd25pbmcgYW5vdGhlciB3b3JrZXIgcHJvY2VzcyB0byByZXBsYWNlICMke3dvcmtlci5pZH0uLi5gKTtcbiAgICAgIGNsdXN0ZXIuZm9yaygpO1xuICAgIH0gZWxzZSB7XG4gICAgICBjb25zdCB7dGFzaywgZmlsZXN9ID0gYXNzaWdubWVudDtcblxuICAgICAgaWYgKGZpbGVzICE9IG51bGwpIHtcbiAgICAgICAgLy8gVGhlIGNyYXNoZWQgd29ya2VyIHByb2Nlc3Mgd2FzIGluIHRoZSBtaWRkbGUgb2Ygd3JpdGluZyB0cmFuc2Zvcm1lZCBmaWxlczpcbiAgICAgICAgLy8gUmV2ZXJ0IGFueSBjaGFuZ2VzIGJlZm9yZSByZS1wcm9jZXNzaW5nIHRoZSB0YXNrLlxuICAgICAgICB0aGlzLmxvZ2dlci5kZWJ1ZyhgUmV2ZXJ0aW5nICR7ZmlsZXMubGVuZ3RofSB0cmFuc2Zvcm1lZCBmaWxlcy4uLmApO1xuICAgICAgICB0aGlzLmZpbGVXcml0ZXIucmV2ZXJ0QnVuZGxlKFxuICAgICAgICAgICAgdGFzay5lbnRyeVBvaW50LCBmaWxlcywgdGFzay5mb3JtYXRQcm9wZXJ0aWVzVG9NYXJrQXNQcm9jZXNzZWQpO1xuICAgICAgfVxuXG4gICAgICAvLyBUaGUgY3Jhc2hlZCB3b3JrZXIgcHJvY2VzcyB3YXMgaW4gdGhlIG1pZGRsZSBvZiBhIHRhc2s6XG4gICAgICAvLyBSZS1hZGQgdGhlIHRhc2sgYmFjayB0byB0aGUgcXVldWUuXG4gICAgICB0aGlzLnRhc2tRdWV1ZS5tYXJrQXNVbnByb2Nlc3NlZCh0YXNrKTtcblxuICAgICAgLy8gVGhlIGNyYXNoaW5nIG1pZ2h0IGJlIGEgcmVzdWx0IG9mIGluY3JlYXNlZCBtZW1vcnkgY29uc3VtcHRpb24gYnkgbmdjYy5cbiAgICAgIC8vIERvIG5vdCBzcGF3biBhbm90aGVyIHByb2Nlc3MsIHVubGVzcyB0aGlzIHdhcyB0aGUgbGFzdCB3b3JrZXIgcHJvY2Vzcy5cbiAgICAgIGNvbnN0IHNwYXduZWRXb3JrZXJDb3VudCA9IE9iamVjdC5rZXlzKGNsdXN0ZXIud29ya2VycykubGVuZ3RoO1xuICAgICAgaWYgKHNwYXduZWRXb3JrZXJDb3VudCA+IDApIHtcbiAgICAgICAgdGhpcy5sb2dnZXIuZGVidWcoYE5vdCBzcGF3bmluZyBhbm90aGVyIHdvcmtlciBwcm9jZXNzIHRvIHJlcGxhY2UgIyR7XG4gICAgICAgICAgICB3b3JrZXIuaWR9LiBDb250aW51aW5nIHdpdGggJHtzcGF3bmVkV29ya2VyQ291bnR9IHdvcmtlcnMuLi5gKTtcbiAgICAgICAgdGhpcy5tYXliZURpc3RyaWJ1dGVXb3JrKCk7XG4gICAgICB9IGVsc2UgaWYgKHRoaXMucmVtYWluaW5nUmVzcGF3bkF0dGVtcHRzID4gMCkge1xuICAgICAgICB0aGlzLmxvZ2dlci5kZWJ1ZyhgU3Bhd25pbmcgYW5vdGhlciB3b3JrZXIgcHJvY2VzcyB0byByZXBsYWNlICMke3dvcmtlci5pZH0uLi5gKTtcbiAgICAgICAgdGhpcy5yZW1haW5pbmdSZXNwYXduQXR0ZW1wdHMtLTtcbiAgICAgICAgY2x1c3Rlci5mb3JrKCk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICB0aHJvdyBuZXcgRXJyb3IoXG4gICAgICAgICAgICAnQWxsIHdvcmtlciBwcm9jZXNzZXMgY3Jhc2hlZCBhbmQgYXR0ZW1wdHMgdG8gcmUtc3Bhd24gdGhlbSBmYWlsZWQuICcgK1xuICAgICAgICAgICAgJ1BsZWFzZSBjaGVjayB5b3VyIHN5c3RlbSBhbmQgZW5zdXJlIHRoZXJlIGlzIGVub3VnaCBtZW1vcnkgYXZhaWxhYmxlLicpO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8qKiBIYW5kbGUgYSBtZXNzYWdlIGZyb20gYSB3b3JrZXIuICovXG4gIHByaXZhdGUgb25Xb3JrZXJNZXNzYWdlKHdvcmtlcklkOiBudW1iZXIsIG1zZzogTWVzc2FnZUZyb21Xb3JrZXIpOiB2b2lkIHtcbiAgICBpZiAoIXRoaXMudGFza0Fzc2lnbm1lbnRzLmhhcyh3b3JrZXJJZCkpIHtcbiAgICAgIGNvbnN0IGtub3duV29ya2VycyA9IEFycmF5LmZyb20odGhpcy50YXNrQXNzaWdubWVudHMua2V5cygpKTtcbiAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICBgUmVjZWl2ZWQgbWVzc2FnZSBmcm9tIHVua25vd24gd29ya2VyICMke3dvcmtlcklkfSAoa25vd24gd29ya2VyczogYCArXG4gICAgICAgICAgYCR7a25vd25Xb3JrZXJzLmpvaW4oJywgJyl9KTogJHtKU09OLnN0cmluZ2lmeShtc2cpfWApO1xuICAgIH1cblxuICAgIHN3aXRjaCAobXNnLnR5cGUpIHtcbiAgICAgIGNhc2UgJ2Vycm9yJzpcbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKGBFcnJvciBvbiB3b3JrZXIgIyR7d29ya2VySWR9OiAke21zZy5lcnJvcn1gKTtcbiAgICAgIGNhc2UgJ3Rhc2stY29tcGxldGVkJzpcbiAgICAgICAgcmV0dXJuIHRoaXMub25Xb3JrZXJUYXNrQ29tcGxldGVkKHdvcmtlcklkLCBtc2cpO1xuICAgICAgY2FzZSAndHJhbnNmb3JtZWQtZmlsZXMnOlxuICAgICAgICByZXR1cm4gdGhpcy5vbldvcmtlclRyYW5zZm9ybWVkRmlsZXMod29ya2VySWQsIG1zZyk7XG4gICAgICBjYXNlICd1cGRhdGUtcGFja2FnZS1qc29uJzpcbiAgICAgICAgcmV0dXJuIHRoaXMub25Xb3JrZXJVcGRhdGVQYWNrYWdlSnNvbih3b3JrZXJJZCwgbXNnKTtcbiAgICAgIGRlZmF1bHQ6XG4gICAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICAgIGBJbnZhbGlkIG1lc3NhZ2UgcmVjZWl2ZWQgZnJvbSB3b3JrZXIgIyR7d29ya2VySWR9OiAke0pTT04uc3RyaW5naWZ5KG1zZyl9YCk7XG4gICAgfVxuICB9XG5cbiAgLyoqIEhhbmRsZSBhIHdvcmtlcidzIGNvbWluZyBvbmxpbmUuICovXG4gIHByaXZhdGUgb25Xb3JrZXJPbmxpbmUod29ya2VySWQ6IG51bWJlcik6IHZvaWQge1xuICAgIGlmICh0aGlzLnRhc2tBc3NpZ25tZW50cy5oYXMod29ya2VySWQpKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoYEludmFyaWFudCB2aW9sYXRlZDogV29ya2VyICMke3dvcmtlcklkfSBjYW1lIG9ubGluZSBtb3JlIHRoYW4gb25jZS5gKTtcbiAgICB9XG5cbiAgICBpZiAodGhpcy5wcm9jZXNzaW5nU3RhcnRUaW1lID09PSAtMSkge1xuICAgICAgdGhpcy5sb2dnZXIuZGVidWcoJ1Byb2Nlc3NpbmcgdGFza3MuLi4nKTtcbiAgICAgIHRoaXMucHJvY2Vzc2luZ1N0YXJ0VGltZSA9IERhdGUubm93KCk7XG4gICAgfVxuXG4gICAgdGhpcy50YXNrQXNzaWdubWVudHMuc2V0KHdvcmtlcklkLCBudWxsKTtcbiAgICB0aGlzLm1heWJlRGlzdHJpYnV0ZVdvcmsoKTtcbiAgfVxuXG4gIC8qKiBIYW5kbGUgYSB3b3JrZXIncyBoYXZpbmcgY29tcGxldGVkIHRoZWlyIGFzc2lnbmVkIHRhc2suICovXG4gIHByaXZhdGUgb25Xb3JrZXJUYXNrQ29tcGxldGVkKHdvcmtlcklkOiBudW1iZXIsIG1zZzogVGFza0NvbXBsZXRlZE1lc3NhZ2UpOiB2b2lkIHtcbiAgICBjb25zdCBhc3NpZ25tZW50ID0gdGhpcy50YXNrQXNzaWdubWVudHMuZ2V0KHdvcmtlcklkKSB8fCBudWxsO1xuXG4gICAgaWYgKGFzc2lnbm1lbnQgPT09IG51bGwpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICBgRXhwZWN0ZWQgd29ya2VyICMke3dvcmtlcklkfSB0byBoYXZlIGEgdGFzayBhc3NpZ25lZCwgd2hpbGUgaGFuZGxpbmcgbWVzc2FnZTogYCArXG4gICAgICAgICAgSlNPTi5zdHJpbmdpZnkobXNnKSk7XG4gICAgfVxuXG4gICAgdGhpcy5vblRhc2tDb21wbGV0ZWQoYXNzaWdubWVudC50YXNrLCBtc2cub3V0Y29tZSwgbXNnLm1lc3NhZ2UpO1xuXG4gICAgdGhpcy50YXNrUXVldWUubWFya0FzQ29tcGxldGVkKGFzc2lnbm1lbnQudGFzayk7XG4gICAgdGhpcy50YXNrQXNzaWdubWVudHMuc2V0KHdvcmtlcklkLCBudWxsKTtcbiAgICB0aGlzLm1heWJlRGlzdHJpYnV0ZVdvcmsoKTtcbiAgfVxuXG4gIC8qKiBIYW5kbGUgYSB3b3JrZXIncyBtZXNzYWdlIHJlZ2FyZGluZyB0aGUgZmlsZXMgdHJhbnNmb3JtZWQgd2hpbGUgcHJvY2Vzc2luZyBpdHMgdGFzay4gKi9cbiAgcHJpdmF0ZSBvbldvcmtlclRyYW5zZm9ybWVkRmlsZXMod29ya2VySWQ6IG51bWJlciwgbXNnOiBUcmFuc2Zvcm1lZEZpbGVzTWVzc2FnZSk6IHZvaWQge1xuICAgIGNvbnN0IGFzc2lnbm1lbnQgPSB0aGlzLnRhc2tBc3NpZ25tZW50cy5nZXQod29ya2VySWQpIHx8IG51bGw7XG5cbiAgICBpZiAoYXNzaWdubWVudCA9PT0gbnVsbCkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKFxuICAgICAgICAgIGBFeHBlY3RlZCB3b3JrZXIgIyR7d29ya2VySWR9IHRvIGhhdmUgYSB0YXNrIGFzc2lnbmVkLCB3aGlsZSBoYW5kbGluZyBtZXNzYWdlOiBgICtcbiAgICAgICAgICBKU09OLnN0cmluZ2lmeShtc2cpKTtcbiAgICB9XG5cbiAgICBjb25zdCBvbGRGaWxlcyA9IGFzc2lnbm1lbnQuZmlsZXM7XG4gICAgY29uc3QgbmV3RmlsZXMgPSBtc2cuZmlsZXM7XG5cbiAgICBpZiAob2xkRmlsZXMgIT09IHVuZGVmaW5lZCkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKFxuICAgICAgICAgIGBXb3JrZXIgIyR7d29ya2VySWR9IHJlcG9ydGVkIHRyYW5zZm9ybWVkIGZpbGVzIG1vcmUgdGhhbiBvbmNlLlxcbmAgK1xuICAgICAgICAgIGAgIE9sZCBmaWxlcyAoJHtvbGRGaWxlcy5sZW5ndGh9KTogWyR7b2xkRmlsZXMuam9pbignLCAnKX1dXFxuYCArXG4gICAgICAgICAgYCAgTmV3IGZpbGVzICgke25ld0ZpbGVzLmxlbmd0aH0pOiBbJHtuZXdGaWxlcy5qb2luKCcsICcpfV1cXG5gKTtcbiAgICB9XG5cbiAgICBhc3NpZ25tZW50LmZpbGVzID0gbmV3RmlsZXM7XG4gIH1cblxuICAvKiogSGFuZGxlIGEgd29ya2VyJ3MgcmVxdWVzdCB0byB1cGRhdGUgYSBgcGFja2FnZS5qc29uYCBmaWxlLiAqL1xuICBwcml2YXRlIG9uV29ya2VyVXBkYXRlUGFja2FnZUpzb24od29ya2VySWQ6IG51bWJlciwgbXNnOiBVcGRhdGVQYWNrYWdlSnNvbk1lc3NhZ2UpOiB2b2lkIHtcbiAgICBjb25zdCBhc3NpZ25tZW50ID0gdGhpcy50YXNrQXNzaWdubWVudHMuZ2V0KHdvcmtlcklkKSB8fCBudWxsO1xuXG4gICAgaWYgKGFzc2lnbm1lbnQgPT09IG51bGwpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICBgRXhwZWN0ZWQgd29ya2VyICMke3dvcmtlcklkfSB0byBoYXZlIGEgdGFzayBhc3NpZ25lZCwgd2hpbGUgaGFuZGxpbmcgbWVzc2FnZTogYCArXG4gICAgICAgICAgSlNPTi5zdHJpbmdpZnkobXNnKSk7XG4gICAgfVxuXG4gICAgY29uc3QgZW50cnlQb2ludCA9IGFzc2lnbm1lbnQudGFzay5lbnRyeVBvaW50O1xuICAgIGNvbnN0IGV4cGVjdGVkUGFja2FnZUpzb25QYXRoID0gdGhpcy5maWxlU3lzdGVtLnJlc29sdmUoZW50cnlQb2ludC5wYXRoLCAncGFja2FnZS5qc29uJyk7XG5cbiAgICBpZiAoZXhwZWN0ZWRQYWNrYWdlSnNvblBhdGggIT09IG1zZy5wYWNrYWdlSnNvblBhdGgpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICBgUmVjZWl2ZWQgJyR7bXNnLnR5cGV9JyBtZXNzYWdlIGZyb20gd29ya2VyICMke3dvcmtlcklkfSBmb3IgJyR7bXNnLnBhY2thZ2VKc29uUGF0aH0nLCBgICtcbiAgICAgICAgICBgYnV0IHdhcyBleHBlY3RpbmcgJyR7ZXhwZWN0ZWRQYWNrYWdlSnNvblBhdGh9JyAoYmFzZWQgb24gdGFzayBhc3NpZ25tZW50KS5gKTtcbiAgICB9XG5cbiAgICAvLyBOT1RFOiBBbHRob3VnaCB0aGUgY2hhbmdlIGluIHRoZSBwYXJzZWQgYHBhY2thZ2UuanNvbmAgd2lsbCBiZSByZWZsZWN0ZWQgaW4gdGFza3Mgb2JqZWN0c1xuICAgIC8vICAgICAgIGxvY2FsbHkgYW5kIHRodXMgYWxzbyBpbiBmdXR1cmUgYHByb2Nlc3MtdGFza2AgbWVzc2FnZXMgc2VudCB0byB3b3JrZXIgcHJvY2Vzc2VzLCBhbnlcbiAgICAvLyAgICAgICBwcm9jZXNzZXMgYWxyZWFkeSBydW5uaW5nIGFuZCBwcm9jZXNzaW5nIGEgdGFzayBmb3IgdGhlIHNhbWUgZW50cnktcG9pbnQgd2lsbCBub3QgZ2V0XG4gICAgLy8gICAgICAgdGhlIGNoYW5nZS5cbiAgICAvLyAgICAgICBEbyBub3QgcmVseSBvbiBoYXZpbmcgYW4gdXAtdG8tZGF0ZSBgcGFja2FnZS5qc29uYCByZXByZXNlbnRhdGlvbiBpbiB3b3JrZXIgcHJvY2Vzc2VzLlxuICAgIC8vICAgICAgIEluIG90aGVyIHdvcmRzLCB0YXNrIHByb2Nlc3Npbmcgc2hvdWxkIG9ubHkgcmVseSBvbiB0aGUgaW5mbyB0aGF0IHdhcyB0aGVyZSB3aGVuIHRoZVxuICAgIC8vICAgICAgIGZpbGUgd2FzIGluaXRpYWxseSBwYXJzZWQgKGR1cmluZyBlbnRyeS1wb2ludCBhbmFseXNpcykgYW5kIG5vdCBvbiB0aGUgaW5mbyB0aGF0IG1pZ2h0XG4gICAgLy8gICAgICAgYmUgYWRkZWQgbGF0ZXIgKGR1cmluZyB0YXNrIHByb2Nlc3NpbmcpLlxuICAgIHRoaXMucGtnSnNvblVwZGF0ZXIud3JpdGVDaGFuZ2VzKG1zZy5jaGFuZ2VzLCBtc2cucGFja2FnZUpzb25QYXRoLCBlbnRyeVBvaW50LnBhY2thZ2VKc29uKTtcbiAgfVxuXG4gIC8qKiBTdG9wIGFsbCB3b3JrZXJzIGFuZCBzdG9wIGxpc3RlbmluZyBvbiBjbHVzdGVyIGV2ZW50cy4gKi9cbiAgcHJpdmF0ZSBzdG9wV29ya2VycygpOiB2b2lkIHtcbiAgICBjb25zdCB3b3JrZXJzID0gT2JqZWN0LnZhbHVlcyhjbHVzdGVyLndvcmtlcnMpIGFzIGNsdXN0ZXIuV29ya2VyW107XG4gICAgdGhpcy5sb2dnZXIuZGVidWcoYFN0b3BwaW5nICR7d29ya2Vycy5sZW5ndGh9IHdvcmtlcnMuLi5gKTtcblxuICAgIGNsdXN0ZXIucmVtb3ZlQWxsTGlzdGVuZXJzKCk7XG4gICAgd29ya2Vycy5mb3JFYWNoKHdvcmtlciA9PiB3b3JrZXIua2lsbCgpKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBXcmFwIGFuIGV2ZW50IGhhbmRsZXIgdG8gZW5zdXJlIHRoYXQgYGZpbmlzaGVkRGVmZXJyZWRgIHdpbGwgYmUgcmVqZWN0ZWQgb24gZXJyb3IgKHJlZ2FyZGxlc3NcbiAgICogaWYgdGhlIGhhbmRsZXIgY29tcGxldGVzIHN5bmNocm9ub3VzbHkgb3IgYXN5bmNocm9ub3VzbHkpLlxuICAgKi9cbiAgcHJpdmF0ZSB3cmFwRXZlbnRIYW5kbGVyPEFyZ3MgZXh0ZW5kcyB1bmtub3duW10+KGZuOiAoLi4uYXJnczogQXJncykgPT4gdm9pZHxQcm9taXNlPHZvaWQ+KTpcbiAgICAgICguLi5hcmdzOiBBcmdzKSA9PiBQcm9taXNlPHZvaWQ+IHtcbiAgICByZXR1cm4gYXN5bmMgKC4uLmFyZ3M6IEFyZ3MpID0+IHtcbiAgICAgIHRyeSB7XG4gICAgICAgIGF3YWl0IGZuKC4uLmFyZ3MpO1xuICAgICAgfSBjYXRjaCAoZXJyKSB7XG4gICAgICAgIHRoaXMuZmluaXNoZWREZWZlcnJlZC5yZWplY3QoZXJyKTtcbiAgICAgIH1cbiAgICB9O1xuICB9XG59XG4iXX0=