(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/locking/async_locker", ["require", "exports", "tslib", "@angular/compiler-cli/ngcc/src/constants"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.AsyncLocker = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var constants_1 = require("@angular/compiler-cli/ngcc/src/constants");
    var TimeoutError = /** @class */ (function (_super) {
        tslib_1.__extends(TimeoutError, _super);
        function TimeoutError() {
            var _this = _super !== null && _super.apply(this, arguments) || this;
            _this.code = constants_1.NGCC_TIMED_OUT_EXIT_CODE;
            return _this;
        }
        return TimeoutError;
    }(Error));
    /**
     * AsyncLocker is used to prevent more than one instance of ngcc executing at the same time,
     * when being called in an asynchronous context.
     *
     * * When ngcc starts executing, it creates a file in the `compiler-cli/ngcc` folder.
     * * If it finds one is already there then it pauses and waits for the file to be removed by the
     *   other process. If the file is not removed within a set timeout period given by
     *   `retryDelay*retryAttempts` an error is thrown with a suitable error message.
     * * If the process locking the file changes, then we restart the timeout.
     * * When ngcc completes executing, it removes the file so that future ngcc executions can start.
     */
    var AsyncLocker = /** @class */ (function () {
        function AsyncLocker(lockFile, logger, retryDelay, retryAttempts) {
            this.lockFile = lockFile;
            this.logger = logger;
            this.retryDelay = retryDelay;
            this.retryAttempts = retryAttempts;
        }
        /**
         * Run a function guarded by the lock file.
         *
         * @param fn The function to run.
         */
        AsyncLocker.prototype.lock = function (fn) {
            return tslib_1.__awaiter(this, void 0, void 0, function () {
                return tslib_1.__generator(this, function (_a) {
                    switch (_a.label) {
                        case 0: return [4 /*yield*/, this.create()];
                        case 1:
                            _a.sent();
                            _a.label = 2;
                        case 2:
                            _a.trys.push([2, , 4, 5]);
                            return [4 /*yield*/, fn()];
                        case 3: return [2 /*return*/, _a.sent()];
                        case 4:
                            this.lockFile.remove();
                            return [7 /*endfinally*/];
                        case 5: return [2 /*return*/];
                    }
                });
            });
        };
        AsyncLocker.prototype.create = function () {
            return tslib_1.__awaiter(this, void 0, void 0, function () {
                var pid, attempts, e_1, newPid, finalPid;
                var _this = this;
                return tslib_1.__generator(this, function (_a) {
                    switch (_a.label) {
                        case 0:
                            pid = '';
                            attempts = 0;
                            _a.label = 1;
                        case 1:
                            if (!(attempts < this.retryAttempts)) return [3 /*break*/, 6];
                            _a.label = 2;
                        case 2:
                            _a.trys.push([2, 3, , 5]);
                            return [2 /*return*/, this.lockFile.write()];
                        case 3:
                            e_1 = _a.sent();
                            if (e_1.code !== 'EEXIST') {
                                throw e_1;
                            }
                            newPid = this.lockFile.read();
                            if (newPid !== pid) {
                                // The process locking the file has changed, so restart the timeout
                                attempts = 0;
                                pid = newPid;
                            }
                            if (attempts === 0) {
                                // Check to see if the process identified by the PID is still running. Because the
                                // process *should* clean up after itself, we only check for a stale lock file when the
                                // PID changes and only once. This may mean you have to wait if the process is killed
                                // after the first check and isn't given the chance to clean up after itself.
                                if (!this.isProcessRunning(pid)) {
                                    // try to re-lock one last time in case there was a race condition checking the process.
                                    try {
                                        return [2 /*return*/, this.lockFile.write()];
                                    }
                                    catch (e2) {
                                        if (e2.code !== 'EEXIST') {
                                            throw e2;
                                        }
                                    }
                                    finalPid = this.lockFile.read();
                                    if (finalPid === pid) {
                                        throw new TimeoutError(this.lockFileMessage("Lock found, but no process with PID " + pid + " seems to be running."));
                                    }
                                    else {
                                        // attempts is still 0, but adjust the PID so the message below is correct.
                                        pid = finalPid;
                                    }
                                }
                                this.logger.info(this.lockFileMessage("Another process, with id " + pid + ", is currently running ngcc.\n" +
                                    ("Waiting up to " + this.retryDelay * this.retryAttempts / 1000 + "s for it to finish.")));
                            }
                            // The file is still locked by another process so wait for a bit and retry
                            return [4 /*yield*/, new Promise(function (resolve) { return setTimeout(resolve, _this.retryDelay); })];
                        case 4:
                            // The file is still locked by another process so wait for a bit and retry
                            _a.sent();
                            return [3 /*break*/, 5];
                        case 5:
                            attempts++;
                            return [3 /*break*/, 1];
                        case 6: 
                        // If we fall out of the loop then we ran out of rety attempts
                        throw new TimeoutError(this.lockFileMessage("Timed out waiting " + this.retryAttempts * this.retryDelay /
                            1000 + "s for another ngcc process, with id " + pid + ", to complete."));
                    }
                });
            });
        };
        AsyncLocker.prototype.isProcessRunning = function (pid) {
            // let the normal logic run if this is not called with a valid PID
            if (isNaN(+pid)) {
                this.logger.debug("Cannot check if invalid PID \"" + pid + "\" is running, a number is expected.");
                return true;
            }
            try {
                process.kill(+pid, 0);
                return true;
            }
            catch (e) {
                // If the process doesn't exist ESRCH will be thrown, if the error is not that, throw it.
                if (e.code !== 'ESRCH') {
                    throw e;
                }
                return false;
            }
        };
        AsyncLocker.prototype.lockFileMessage = function (message) {
            return message +
                ("\n(If you are sure no ngcc process is running then you should delete the lock-file at " + this.lockFile.path + ".)");
        };
        return AsyncLocker;
    }());
    exports.AsyncLocker = AsyncLocker;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXN5bmNfbG9ja2VyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL25nY2Mvc3JjL2xvY2tpbmcvYXN5bmNfbG9ja2VyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7SUFBQTs7Ozs7O09BTUc7SUFDSCxzRUFBc0Q7SUFLdEQ7UUFBMkIsd0NBQUs7UUFBaEM7WUFBQSxxRUFFQztZQURDLFVBQUksR0FBRyxvQ0FBd0IsQ0FBQzs7UUFDbEMsQ0FBQztRQUFELG1CQUFDO0lBQUQsQ0FBQyxBQUZELENBQTJCLEtBQUssR0FFL0I7SUFFRDs7Ozs7Ozs7OztPQVVHO0lBQ0g7UUFDRSxxQkFDWSxRQUFrQixFQUFZLE1BQWMsRUFBVSxVQUFrQixFQUN4RSxhQUFxQjtZQURyQixhQUFRLEdBQVIsUUFBUSxDQUFVO1lBQVksV0FBTSxHQUFOLE1BQU0sQ0FBUTtZQUFVLGVBQVUsR0FBVixVQUFVLENBQVE7WUFDeEUsa0JBQWEsR0FBYixhQUFhLENBQVE7UUFBRyxDQUFDO1FBRXJDOzs7O1dBSUc7UUFDRywwQkFBSSxHQUFWLFVBQWMsRUFBb0I7Ozs7Z0NBQ2hDLHFCQUFNLElBQUksQ0FBQyxNQUFNLEVBQUUsRUFBQTs7NEJBQW5CLFNBQW1CLENBQUM7Ozs7NEJBRVgscUJBQU0sRUFBRSxFQUFFLEVBQUE7Z0NBQWpCLHNCQUFPLFNBQVUsRUFBQzs7NEJBRWxCLElBQUksQ0FBQyxRQUFRLENBQUMsTUFBTSxFQUFFLENBQUM7Ozs7OztTQUUxQjtRQUVlLDRCQUFNLEdBQXRCOzs7Ozs7OzRCQUNNLEdBQUcsR0FBVyxFQUFFLENBQUM7NEJBQ1osUUFBUSxHQUFHLENBQUM7OztpQ0FBRSxDQUFBLFFBQVEsR0FBRyxJQUFJLENBQUMsYUFBYSxDQUFBOzs7OzRCQUVoRCxzQkFBTyxJQUFJLENBQUMsUUFBUSxDQUFDLEtBQUssRUFBRSxFQUFDOzs7NEJBRTdCLElBQUks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QUQsQ0FBQyxBQW5HRCxJQW1HQztJQW5HWSxrQ0FBVyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IHtOR0NDX1RJTUVEX09VVF9FWElUX0NPREV9IGZyb20gJy4uL2NvbnN0YW50cyc7XG5pbXBvcnQge0xvZ2dlcn0gZnJvbSAnLi4vbG9nZ2luZy9sb2dnZXInO1xuXG5pbXBvcnQge0xvY2tGaWxlfSBmcm9tICcuL2xvY2tfZmlsZSc7XG5cbmNsYXNzIFRpbWVvdXRFcnJvciBleHRlbmRzIEVycm9yIHtcbiAgY29kZSA9IE5HQ0NfVElNRURfT1VUX0VYSVRfQ09ERTtcbn1cblxuLyoqXG4gKiBBc3luY0xvY2tlciBpcyB1c2VkIHRvIHByZXZlbnQgbW9yZSB0aGFuIG9uZSBpbnN0YW5jZSBvZiBuZ2NjIGV4ZWN1dGluZyBhdCB0aGUgc2FtZSB0aW1lLFxuICogd2hlbiBiZWluZyBjYWxsZWQgaW4gYW4gYXN5bmNocm9ub3VzIGNvbnRleHQuXG4gKlxuICogKiBXaGVuIG5nY2Mgc3RhcnRzIGV4ZWN1dGluZywgaXQgY3JlYXRlcyBhIGZpbGUgaW4gdGhlIGBjb21waWxlci1jbGkvbmdjY2AgZm9sZGVyLlxuICogKiBJZiBpdCBmaW5kcyBvbmUgaXMgYWxyZWFkeSB0aGVyZSB0aGVuIGl0IHBhdXNlcyBhbmQgd2FpdHMgZm9yIHRoZSBmaWxlIHRvIGJlIHJlbW92ZWQgYnkgdGhlXG4gKiAgIG90aGVyIHByb2Nlc3MuIElmIHRoZSBmaWxlIGlzIG5vdCByZW1vdmVkIHdpdGhpbiBhIHNldCB0aW1lb3V0IHBlcmlvZCBnaXZlbiBieVxuICogICBgcmV0cnlEZWxheSpyZXRyeUF0dGVtcHRzYCBhbiBlcnJvciBpcyB0aHJvd24gd2l0aCBhIHN1aXRhYmxlIGVycm9yIG1lc3NhZ2UuXG4gKiAqIElmIHRoZSBwcm9jZXNzIGxvY2tpbmcgdGhlIGZpbGUgY2hhbmdlcywgdGhlbiB3ZSByZXN0YXJ0IHRoZSB0aW1lb3V0LlxuICogKiBXaGVuIG5nY2MgY29tcGxldGVzIGV4ZWN1dGluZywgaXQgcmVtb3ZlcyB0aGUgZmlsZSBzbyB0aGF0IGZ1dHVyZSBuZ2NjIGV4ZWN1dGlvbnMgY2FuIHN0YXJ0LlxuICovXG5leHBvcnQgY2xhc3MgQXN5bmNMb2NrZXIge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgbG9ja0ZpbGU6IExvY2tGaWxlLCBwcm90ZWN0ZWQgbG9nZ2VyOiBMb2dnZXIsIHByaXZhdGUgcmV0cnlEZWxheTogbnVtYmVyLFxuICAgICAgcHJpdmF0ZSByZXRyeUF0dGVtcHRzOiBudW1iZXIpIHt9XG5cbiAgLyoqXG4gICAqIFJ1biBhIGZ1bmN0aW9uIGd1YXJkZWQgYnkgdGhlIGxvY2sgZmlsZS5cbiAgICpcbiAgICogQHBhcmFtIGZuIFRoZSBmdW5jdGlvbiB0byBydW4uXG4gICAqL1xuICBhc3luYyBsb2NrPFQ+KGZuOiAoKSA9PiBQcm9taXNlPFQ+KTogUHJvbWlzZTxUPiB7XG4gICAgYXdhaXQgdGhpcy5jcmVhdGUoKTtcbiAgICB0cnkge1xuICAgICAgcmV0dXJuIGF3YWl0IGZuKCk7XG4gICAgfSBmaW5hbGx5IHtcbiAgICAgIHRoaXMubG9ja0ZpbGUucmVtb3ZlKCk7XG4gICAgfVxuICB9XG5cbiAgcHJvdGVjdGVkIGFzeW5jIGNyZWF0ZSgpIHtcbiAgICBsZXQgcGlkOiBzdHJpbmcgPSAnJztcbiAgICBmb3IgKGxldCBhdHRlbXB0cyA9IDA7IGF0dGVtcHRzIDwgdGhpcy5yZXRyeUF0dGVtcHRzOyBhdHRlbXB0cysrKSB7XG4gICAgICB0cnkge1xuICAgICAgICByZXR1cm4gdGhpcy5sb2NrRmlsZS53cml0ZSgpO1xuICAgICAgfSBjYXRjaCAoZSkge1xuICAgICAgICBpZiAoZS5jb2RlICE9PSAnRUVYSVNUJykge1xuICAgICAgICAgIHRocm93IGU7XG4gICAgICAgIH1cbiAgICAgICAgY29uc3QgbmV3UGlkID0gdGhpcy5sb2NrRmlsZS5yZWFkKCk7XG4gICAgICAgIGlmIChuZXdQaWQgIT09IHBpZCkge1xuICAgICAgICAgIC8vIFRoZSBwcm9jZXNzIGxvY2tpbmcgdGhlIGZpbGUgaGFzIGNoYW5nZWQsIHNvIHJlc3RhcnQgdGhlIHRpbWVvdXRcbiAgICAgICAgICBhdHRlbXB0cyA9IDA7XG4gICAgICAgICAgcGlkID0gbmV3UGlkO1xuICAgICAgICB9XG4gICAgICAgIGlmIChhdHRlbXB0cyA9PT0gMCkge1xuICAgICAgICAgIC8vIENoZWNrIHRvIHNlZSBpZiB0aGUgcHJvY2VzcyBpZGVudGlmaWVkIGJ5IHRoZSBQSUQgaXMgc3RpbGwgcnVubmluZy4gQmVjYXVzZSB0aGVcbiAgICAgICAgICAvLyBwcm9jZXNzICpzaG91bGQqIGNsZWFuIHVwIGFmdGVyIGl0c2VsZiwgd2Ugb25seSBjaGVjayBmb3IgYSBzdGFsZSBsb2NrIGZpbGUgd2hlbiB0aGVcbiAgICAgICAgICAvLyBQSUQgY2hhbmdlcyBhbmQgb25seSBvbmNlLiBUaGlzIG1heSBtZWFuIHlvdSBoYXZlIHRvIHdhaXQgaWYgdGhlIHByb2Nlc3MgaXMga2lsbGVkXG4gICAgICAgICAgLy8gYWZ0ZXIgdGhlIGZpcnN0IGNoZWNrIGFuZCBpc24ndCBnaXZlbiB0aGUgY2hhbmNlIHRvIGNsZWFuIHVwIGFmdGVyIGl0c2VsZi5cbiAgICAgICAgICBpZiAoIXRoaXMuaXNQcm9jZXNzUnVubmluZyhwaWQpKSB7XG4gICAgICAgICAgICAvLyB0cnkgdG8gcmUtbG9jayBvbmUgbGFzdCB0aW1lIGluIGNhc2UgdGhlcmUgd2FzIGEgcmFjZSBjb25kaXRpb24gY2hlY2tpbmcgdGhlIHByb2Nlc3MuXG4gICAgICAgICAgICB0cnkge1xuICAgICAgICAgICAgICByZXR1cm4gdGhpcy5sb2NrRmlsZS53cml0ZSgpO1xuICAgICAgICAgICAgfSBjYXRjaCAoZTIpIHtcbiAgICAgICAgICAgICAgaWYgKGUyLmNvZGUgIT09ICdFRVhJU1QnKSB7XG4gICAgICAgICAgICAgICAgdGhyb3cgZTI7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgLy8gZmluYWxseSBjaGVjayB0aGF0IHRoZSBsb2NrIHdhcyBoZWxkIGJ5IHRoZSBzYW1lIHByb2Nlc3MgdGhpcyB3aG9sZSB0aW1lLlxuICAgICAgICAgICAgY29uc3QgZmluYWxQaWQgPSB0aGlzLmxvY2tGaWxlLnJlYWQoKTtcbiAgICAgICAgICAgIGlmIChmaW5hbFBpZCA9PT0gcGlkKSB7XG4gICAgICAgICAgICAgIHRocm93IG5ldyBUaW1lb3V0RXJyb3IodGhpcy5sb2NrRmlsZU1lc3NhZ2UoXG4gICAgICAgICAgICAgICAgICBgTG9jayBmb3VuZCwgYnV0IG5vIHByb2Nlc3Mgd2l0aCBQSUQgJHtwaWR9IHNlZW1zIHRvIGJlIHJ1bm5pbmcuYCkpO1xuICAgICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICAgLy8gYXR0ZW1wdHMgaXMgc3RpbGwgMCwgYnV0IGFkanVzdCB0aGUgUElEIHNvIHRoZSBtZXNzYWdlIGJlbG93IGlzIGNvcnJlY3QuXG4gICAgICAgICAgICAgIHBpZCA9IGZpbmFsUGlkO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cblxuICAgICAgICAgIHRoaXMubG9nZ2VyLmluZm8odGhpcy5sb2NrRmlsZU1lc3NhZ2UoXG4gICAgICAgICAgICAgIGBBbm90aGVyIHByb2Nlc3MsIHdpdGggaWQgJHtwaWR9LCBpcyBjdXJyZW50bHkgcnVubmluZyBuZ2NjLlxcbmAgK1xuICAgICAgICAgICAgICBgV2FpdGluZyB1cCB0byAke3RoaXMucmV0cnlEZWxheSAqIHRoaXMucmV0cnlBdHRlbXB0cyAvIDEwMDB9cyBmb3IgaXQgdG8gZmluaXNoLmApKTtcbiAgICAgICAgfVxuICAgICAgICAvLyBUaGUgZmlsZSBpcyBzdGlsbCBsb2NrZWQgYnkgYW5vdGhlciBwcm9jZXNzIHNvIHdhaXQgZm9yIGEgYml0IGFuZCByZXRyeVxuICAgICAgICBhd2FpdCBuZXcgUHJvbWlzZShyZXNvbHZlID0+IHNldFRpbWVvdXQocmVzb2x2ZSwgdGhpcy5yZXRyeURlbGF5KSk7XG4gICAgICB9XG4gICAgfVxuICAgIC8vIElmIHdlIGZhbGwgb3V0IG9mIHRoZSBsb29wIHRoZW4gd2UgcmFuIG91dCBvZiByZXR5IGF0dGVtcHRzXG4gICAgdGhyb3cgbmV3IFRpbWVvdXRFcnJvcih0aGlzLmxvY2tGaWxlTWVzc2FnZShgVGltZWQgb3V0IHdhaXRpbmcgJHtcbiAgICAgICAgdGhpcy5yZXRyeUF0dGVtcHRzICogdGhpcy5yZXRyeURlbGF5IC9cbiAgICAgICAgMTAwMH1zIGZvciBhbm90aGVyIG5nY2MgcHJvY2Vzcywgd2l0aCBpZCAke3BpZH0sIHRvIGNvbXBsZXRlLmApKTtcbiAgfVxuXG4gIHByb3RlY3RlZCBpc1Byb2Nlc3NSdW5uaW5nKHBpZDogc3RyaW5nKTogYm9vbGVhbiB7XG4gICAgLy8gbGV0IHRoZSBub3JtYWwgbG9naWMgcnVuIGlmIHRoaXMgaXMgbm90IGNhbGxlZCB3aXRoIGEgdmFsaWQgUElEXG4gICAgaWYgKGlzTmFOKCtwaWQpKSB7XG4gICAgICB0aGlzLmxvZ2dlci5kZWJ1ZyhgQ2Fubm90IGNoZWNrIGlmIGludmFsaWQgUElEIFwiJHtwaWR9XCIgaXMgcnVubmluZywgYSBudW1iZXIgaXMgZXhwZWN0ZWQuYCk7XG4gICAgICByZXR1cm4gdHJ1ZTtcbiAgICB9XG5cbiAgICB0cnkge1xuICAgICAgcHJvY2Vzcy5raWxsKCtwaWQsIDApO1xuICAgICAgcmV0dXJuIHRydWU7XG4gICAgfSBjYXRjaCAoZSkge1xuICAgICAgLy8gSWYgdGhlIHByb2Nlc3MgZG9lc24ndCBleGlzdCBFU1JDSCB3aWxsIGJlIHRocm93biwgaWYgdGhlIGVycm9yIGlzIG5vdCB0aGF0LCB0aHJvdyBpdC5cbiAgICAgIGlmIChlLmNvZGUgIT09ICdFU1JDSCcpIHtcbiAgICAgICAgdGhyb3cgZTtcbiAgICAgIH1cblxuICAgICAgcmV0dXJuIGZhbHNlO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgbG9ja0ZpbGVNZXNzYWdlKG1lc3NhZ2U6IHN0cmluZyk6IHN0cmluZyB7XG4gICAgcmV0dXJuIG1lc3NhZ2UgK1xuICAgICAgICBgXFxuKElmIHlvdSBhcmUgc3VyZSBubyBuZ2NjIHByb2Nlc3MgaXMgcnVubmluZyB0aGVuIHlvdSBzaG91bGQgZGVsZXRlIHRoZSBsb2NrLWZpbGUgYXQgJHtcbiAgICAgICAgICAgICAgIHRoaXMubG9ja0ZpbGUucGF0aH0uKWA7XG4gIH1cbn1cbiJdfQ==