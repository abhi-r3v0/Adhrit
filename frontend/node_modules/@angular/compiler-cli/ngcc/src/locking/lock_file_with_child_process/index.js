(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/locking/lock_file_with_child_process/index", ["require", "exports", "child_process", "@angular/compiler-cli/ngcc/src/logging/logger", "@angular/compiler-cli/ngcc/src/locking/lock_file", "@angular/compiler-cli/ngcc/src/locking/lock_file_with_child_process/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.LockFileWithChildProcess = void 0;
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var child_process_1 = require("child_process");
    var logger_1 = require("@angular/compiler-cli/ngcc/src/logging/logger");
    var lock_file_1 = require("@angular/compiler-cli/ngcc/src/locking/lock_file");
    var util_1 = require("@angular/compiler-cli/ngcc/src/locking/lock_file_with_child_process/util");
    /// <reference types="node" />
    /**
     * This `LockFile` implementation uses a child-process to remove the lock file when the main process
     * exits (for whatever reason).
     *
     * There are a few milliseconds between the child-process being forked and it registering its
     * `disconnect` event, which is responsible for tidying up the lock-file in the event that the main
     * process exits unexpectedly.
     *
     * We eagerly create the unlocker child-process so that it maximizes the time before the lock-file
     * is actually written, which makes it very unlikely that the unlocker would not be ready in the
     * case that the developer hits Ctrl-C or closes the terminal within a fraction of a second of the
     * lock-file being created.
     *
     * The worst case scenario is that ngcc is killed too quickly and leaves behind an orphaned
     * lock-file. In which case the next ngcc run will display a helpful error message about deleting
     * the lock-file.
     */
    var LockFileWithChildProcess = /** @class */ (function () {
        function LockFileWithChildProcess(fs, logger) {
            this.fs = fs;
            this.logger = logger;
            this.path = lock_file_1.getLockFilePath(fs);
            this.unlocker = this.createUnlocker(this.path);
        }
        LockFileWithChildProcess.prototype.write = function () {
            if (this.unlocker === null) {
                // In case we already disconnected the previous unlocker child-process, perhaps by calling
                // `remove()`. Normally the LockFile should only be used once per instance.
                this.unlocker = this.createUnlocker(this.path);
            }
            this.logger.debug("Attemping to write lock-file at " + this.path + " with PID " + process.pid);
            // To avoid race conditions, check for existence of the lock-file by trying to create it.
            // This will throw an error if the file already exists.
            this.fs.writeFile(this.path, process.pid.toString(), /* exclusive */ true);
            this.logger.debug("Written lock-file at " + this.path + " with PID " + process.pid);
        };
        LockFileWithChildProcess.prototype.read = function () {
            try {
                return this.fs.readFile(this.path);
            }
            catch (_a) {
                return '{unknown}';
            }
        };
        LockFileWithChildProcess.prototype.remove = function () {
            util_1.removeLockFile(this.fs, this.logger, this.path, process.pid.toString());
            if (this.unlocker !== null) {
                // If there is an unlocker child-process then disconnect from it so that it can exit itself.
                this.unlocker.disconnect();
                this.unlocker = null;
            }
        };
        LockFileWithChildProcess.prototype.createUnlocker = function (path) {
            var _a, _b;
            this.logger.debug('Forking unlocker child-process');
            var logLevel = this.logger.level !== undefined ? this.logger.level.toString() : logger_1.LogLevel.info.toString();
            var isWindows = process.platform === 'win32';
            var unlocker = child_process_1.fork(__dirname + '/unlocker.js', [path, logLevel], { detached: true, stdio: isWindows ? 'pipe' : 'inherit' });
            if (isWindows) {
                (_a = unlocker.stdout) === null || _a === void 0 ? void 0 : _a.on('data', process.stdout.write.bind(process.stdout));
                (_b = unlocker.stderr) === null || _b === void 0 ? void 0 : _b.on('data', process.stderr.write.bind(process.stderr));
            }
            return unlocker;
        };
        return LockFileWithChildProcess;
    }());
    exports.LockFileWithChildProcess = LockFileWithChildProcess;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvbG9ja2luZy9sb2NrX2ZpbGVfd2l0aF9jaGlsZF9wcm9jZXNzL2luZGV4LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztJQUFBOzs7Ozs7T0FNRztJQUNILCtDQUFpRDtJQUdqRCx3RUFBc0Q7SUFDdEQsOEVBQXVEO0lBRXZELGlHQUFzQztJQUV0Qyw4QkFBOEI7SUFFOUI7Ozs7Ozs7Ozs7Ozs7Ozs7T0FnQkc7SUFDSDtRQUlFLGtDQUFzQixFQUFjLEVBQVksTUFBYztZQUF4QyxPQUFFLEdBQUYsRUFBRSxDQUFZO1lBQVksV0FBTSxHQUFOLE1BQU0sQ0FBUTtZQUM1RCxJQUFJLENBQUMsSUFBSSxHQUFHLDJCQUFlLENBQUMsRUFBRSxDQUFDLENBQUM7WUFDaEMsSUFBSSxDQUFDLFFBQVEsR0FBRyxJQUFJLENBQUMsY0FBYyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUNqRCxDQUFDO1FBR0Qsd0NBQUssR0FBTDtZQUNFLElBQUksSUFBSSxDQUFDLFFBQVEsS0FBSyxJQUFJLEVBQUU7Z0JBQzFCLDBGQUEwRjtnQkFDMUYsMkVBQTJFO2dCQUMzRSxJQUFJLENBQUMsUUFBUSxHQUFHLElBQUksQ0FBQyxjQUFjLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO2FBQ2hEO1lBQ0QsSUFBSSxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQUMscUNBQW1DLElBQUksQ0FBQyxJQUFJLGtCQUFhLE9BQU8sQ0FBQyxHQUFLLENBQUMsQ0FBQztZQUMxRix5RkFBeUY7WUFDekYsdURBQXVEO1lBQ3ZELElBQUksQ0FBQyxFQUFFLENBQUMsU0FBUyxDQUFDLElBQUksQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLEdBQUcsQ0FBQyxRQUFRLEVBQUUsRUFBRSxlQUFlLENBQUMsSUFBSSxDQUFDLENBQUM7WUFDM0UsSUFBSSxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQUMsMEJBQXdCLElBQUksQ0FBQyxJQUFJLGtCQUFhLE9BQU8sQ0FBQyxHQUFLLENBQUMsQ0FBQztRQUNqRixDQUFDO1FBRUQsdUNBQUksR0FBSjtZQUNFLElBQUk7Z0JBQ0YsT0FBTyxJQUFJLENBQUMsRUFBRSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7YUFDcEM7WUFBQyxXQUFNO2dCQUNOLE9BQU8sV0FBVyxDQUFDO2FBQ3BCO1FBQ0gsQ0FBQztRQUVELHlDQUFNLEdBQU47WUFDRSxxQkFBYyxDQUFDLElBQUksQ0FBQyxFQUFFLEVBQUUsSUFBSSxDQUFDLE1BQU0sRUFBRSxJQUFJLENBQUMsSUFBSSxFQUFFLE9BQU8sQ0FBQyxHQUFHLENBQUMsUUFBUSxFQUFFLENBQUMsQ0FBQztZQUN4RSxJQUFJLElBQUksQ0FBQyxRQUFRLEtBQUssSUFBSSxFQUFFO2dCQUMxQiw0RkFBNEY7Z0JBQzVGLElBQUksQ0FBQyxRQUFRLENBQUMsVUFBVSxFQUFFLENBQUM7Z0JBQzNCLElBQUksQ0FBQyxRQUFRLEdBQUcsSUFBSSxDQUFDO2FBQ3RCO1FBQ0gsQ0FBQztRQUVTLGlEQUFjLEdBQXhCLFVBQXlCLElBQW9COztZQUMzQyxJQUFJLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyxnQ0FBZ0MsQ0FBQyxDQUFDO1lBQ3BELElBQU0sUUFBUSxHQUNWLElBQUksQ0FBQyxNQUFNLENBQUMsS0FBSyxLQUFLLFNBQVMsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQUMsUUFBUSxFQUFFLENBQUMsQ0FBQyxDQUFDLGlCQUFRLENBQUMsSUFBSSxDQUFDLFFBQVEsRUFBRSxDQUFDO1lBQzlGLElBQU0sU0FBUyxHQUFHLE9BQU8sQ0FBQyxRQUFRLEtBQUssT0FBTyxDQUFDO1lBQy9DLElBQU0sUUFBUSxHQUFHLG9CQUFJLENBQ2pCLFNBQVMsR0FBRyxjQUFjLEVBQUUsQ0FBQyxJQUFJLEVBQUUsUUFBUSxDQUFDLEVBQzVDLEVBQUMsUUFBUSxFQUFFLElBQUksRUFBRSxLQUFLLEVBQUUsU0FBUyxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLFNBQVMsRUFBQyxDQUFDLENBQUM7WUFDN0QsSUFBSSxTQUFTLEVBQUU7Z0JBQ2IsTUFBQSxRQUFRLENBQUMsTUFBTSwwQ0FBRSxFQUFFLENBQUMsTUFBTSxFQUFFLE9BQU8sQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUFDLEVBQUU7Z0JBQ3ZFLE1BQUEsUUFBUSxDQUFDLE1BQU0sMENBQUUsRUFBRSxDQUFDLE1BQU0sRUFBRSxPQUFPLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FBQyxFQUFFO2FBQ3hFO1lBQ0QsT0FBTyxRQUFRLENBQUM7UUFDbEIsQ0FBQztRQUNILCtCQUFDO0lBQUQsQ0FBQyxBQXRERCxJQXNEQztJQXREWSw0REFBd0IiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCB7Q2hpbGRQcm9jZXNzLCBmb3JrfSBmcm9tICdjaGlsZF9wcm9jZXNzJztcblxuaW1wb3J0IHtBYnNvbHV0ZUZzUGF0aCwgRmlsZVN5c3RlbX0gZnJvbSAnLi4vLi4vLi4vLi4vc3JjL25ndHNjL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7TG9nZ2VyLCBMb2dMZXZlbH0gZnJvbSAnLi4vLi4vbG9nZ2luZy9sb2dnZXInO1xuaW1wb3J0IHtnZXRMb2NrRmlsZVBhdGgsIExvY2tGaWxlfSBmcm9tICcuLi9sb2NrX2ZpbGUnO1xuXG5pbXBvcnQge3JlbW92ZUxvY2tGaWxlfSBmcm9tICcuL3V0aWwnO1xuXG4vLy8gPHJlZmVyZW5jZSB0eXBlcz1cIm5vZGVcIiAvPlxuXG4vKipcbiAqIFRoaXMgYExvY2tGaWxlYCBpbXBsZW1lbnRhdGlvbiB1c2VzIGEgY2hpbGQtcHJvY2VzcyB0byByZW1vdmUgdGhlIGxvY2sgZmlsZSB3aGVuIHRoZSBtYWluIHByb2Nlc3NcbiAqIGV4aXRzIChmb3Igd2hhdGV2ZXIgcmVhc29uKS5cbiAqXG4gKiBUaGVyZSBhcmUgYSBmZXcgbWlsbGlzZWNvbmRzIGJldHdlZW4gdGhlIGNoaWxkLXByb2Nlc3MgYmVpbmcgZm9ya2VkIGFuZCBpdCByZWdpc3RlcmluZyBpdHNcbiAqIGBkaXNjb25uZWN0YCBldmVudCwgd2hpY2ggaXMgcmVzcG9uc2libGUgZm9yIHRpZHlpbmcgdXAgdGhlIGxvY2stZmlsZSBpbiB0aGUgZXZlbnQgdGhhdCB0aGUgbWFpblxuICogcHJvY2VzcyBleGl0cyB1bmV4cGVjdGVkbHkuXG4gKlxuICogV2UgZWFnZXJseSBjcmVhdGUgdGhlIHVubG9ja2VyIGNoaWxkLXByb2Nlc3Mgc28gdGhhdCBpdCBtYXhpbWl6ZXMgdGhlIHRpbWUgYmVmb3JlIHRoZSBsb2NrLWZpbGVcbiAqIGlzIGFjdHVhbGx5IHdyaXR0ZW4sIHdoaWNoIG1ha2VzIGl0IHZlcnkgdW5saWtlbHkgdGhhdCB0aGUgdW5sb2NrZXIgd291bGQgbm90IGJlIHJlYWR5IGluIHRoZVxuICogY2FzZSB0aGF0IHRoZSBkZXZlbG9wZXIgaGl0cyBDdHJsLUMgb3IgY2xvc2VzIHRoZSB0ZXJtaW5hbCB3aXRoaW4gYSBmcmFjdGlvbiBvZiBhIHNlY29uZCBvZiB0aGVcbiAqIGxvY2stZmlsZSBiZWluZyBjcmVhdGVkLlxuICpcbiAqIFRoZSB3b3JzdCBjYXNlIHNjZW5hcmlvIGlzIHRoYXQgbmdjYyBpcyBraWxsZWQgdG9vIHF1aWNrbHkgYW5kIGxlYXZlcyBiZWhpbmQgYW4gb3JwaGFuZWRcbiAqIGxvY2stZmlsZS4gSW4gd2hpY2ggY2FzZSB0aGUgbmV4dCBuZ2NjIHJ1biB3aWxsIGRpc3BsYXkgYSBoZWxwZnVsIGVycm9yIG1lc3NhZ2UgYWJvdXQgZGVsZXRpbmdcbiAqIHRoZSBsb2NrLWZpbGUuXG4gKi9cbmV4cG9ydCBjbGFzcyBMb2NrRmlsZVdpdGhDaGlsZFByb2Nlc3MgaW1wbGVtZW50cyBMb2NrRmlsZSB7XG4gIHBhdGg6IEFic29sdXRlRnNQYXRoO1xuICBwcml2YXRlIHVubG9ja2VyOiBDaGlsZFByb2Nlc3N8bnVsbDtcblxuICBjb25zdHJ1Y3Rvcihwcm90ZWN0ZWQgZnM6IEZpbGVTeXN0ZW0sIHByb3RlY3RlZCBsb2dnZXI6IExvZ2dlcikge1xuICAgIHRoaXMucGF0aCA9IGdldExvY2tGaWxlUGF0aChmcyk7XG4gICAgdGhpcy51bmxvY2tlciA9IHRoaXMuY3JlYXRlVW5sb2NrZXIodGhpcy5wYXRoKTtcbiAgfVxuXG5cbiAgd3JpdGUoKTogdm9pZCB7XG4gICAgaWYgKHRoaXMudW5sb2NrZXIgPT09IG51bGwpIHtcbiAgICAgIC8vIEluIGNhc2Ugd2UgYWxyZWFkeSBkaXNjb25uZWN0ZWQgdGhlIHByZXZpb3VzIHVubG9ja2VyIGNoaWxkLXByb2Nlc3MsIHBlcmhhcHMgYnkgY2FsbGluZ1xuICAgICAgLy8gYHJlbW92ZSgpYC4gTm9ybWFsbHkgdGhlIExvY2tGaWxlIHNob3VsZCBvbmx5IGJlIHVzZWQgb25jZSBwZXIgaW5zdGFuY2UuXG4gICAgICB0aGlzLnVubG9ja2VyID0gdGhpcy5jcmVhdGVVbmxvY2tlcih0aGlzLnBhdGgpO1xuICAgIH1cbiAgICB0aGlzLmxvZ2dlci5kZWJ1ZyhgQXR0ZW1waW5nIHRvIHdyaXRlIGxvY2stZmlsZSBhdCAke3RoaXMucGF0aH0gd2l0aCBQSUQgJHtwcm9jZXNzLnBpZH1gKTtcbiAgICAvLyBUbyBhdm9pZCByYWNlIGNvbmRpdGlvbnMsIGNoZWNrIGZvciBleGlzdGVuY2Ugb2YgdGhlIGxvY2stZmlsZSBieSB0cnlpbmcgdG8gY3JlYXRlIGl0LlxuICAgIC8vIFRoaXMgd2lsbCB0aHJvdyBhbiBlcnJvciBpZiB0aGUgZmlsZSBhbHJlYWR5IGV4aXN0cy5cbiAgICB0aGlzLmZzLndyaXRlRmlsZSh0aGlzLnBhdGgsIHByb2Nlc3MucGlkLnRvU3RyaW5nKCksIC8qIGV4Y2x1c2l2ZSAqLyB0cnVlKTtcbiAgICB0aGlzLmxvZ2dlci5kZWJ1ZyhgV3JpdHRlbiBsb2NrLWZpbGUgYXQgJHt0aGlzLnBhdGh9IHdpdGggUElEICR7cHJvY2Vzcy5waWR9YCk7XG4gIH1cblxuICByZWFkKCk6IHN0cmluZyB7XG4gICAgdHJ5IHtcbiAgICAgIHJldHVybiB0aGlzLmZzLnJlYWRGaWxlKHRoaXMucGF0aCk7XG4gICAgfSBjYXRjaCB7XG4gICAgICByZXR1cm4gJ3t1bmtub3dufSc7XG4gICAgfVxuICB9XG5cbiAgcmVtb3ZlKCkge1xuICAgIHJlbW92ZUxvY2tGaWxlKHRoaXMuZnMsIHRoaXMubG9nZ2VyLCB0aGlzLnBhdGgsIHByb2Nlc3MucGlkLnRvU3RyaW5nKCkpO1xuICAgIGlmICh0aGlzLnVubG9ja2VyICE9PSBudWxsKSB7XG4gICAgICAvLyBJZiB0aGVyZSBpcyBhbiB1bmxvY2tlciBjaGlsZC1wcm9jZXNzIHRoZW4gZGlzY29ubmVjdCBmcm9tIGl0IHNvIHRoYXQgaXQgY2FuIGV4aXQgaXRzZWxmLlxuICAgICAgdGhpcy51bmxvY2tlci5kaXNjb25uZWN0KCk7XG4gICAgICB0aGlzLnVubG9ja2VyID0gbnVsbDtcbiAgICB9XG4gIH1cblxuICBwcm90ZWN0ZWQgY3JlYXRlVW5sb2NrZXIocGF0aDogQWJzb2x1dGVGc1BhdGgpOiBDaGlsZFByb2Nlc3Mge1xuICAgIHRoaXMubG9nZ2VyLmRlYnVnKCdGb3JraW5nIHVubG9ja2VyIGNoaWxkLXByb2Nlc3MnKTtcbiAgICBjb25zdCBsb2dMZXZlbCA9XG4gICAgICAgIHRoaXMubG9nZ2VyLmxldmVsICE9PSB1bmRlZmluZWQgPyB0aGlzLmxvZ2dlci5sZXZlbC50b1N0cmluZygpIDogTG9nTGV2ZWwuaW5mby50b1N0cmluZygpO1xuICAgIGNvbnN0IGlzV2luZG93cyA9IHByb2Nlc3MucGxhdGZvcm0gPT09ICd3aW4zMic7XG4gICAgY29uc3QgdW5sb2NrZXIgPSBmb3JrKFxuICAgICAgICBfX2Rpcm5hbWUgKyAnL3VubG9ja2VyLmpzJywgW3BhdGgsIGxvZ0xldmVsXSxcbiAgICAgICAge2RldGFjaGVkOiB0cnVlLCBzdGRpbzogaXNXaW5kb3dzID8gJ3BpcGUnIDogJ2luaGVyaXQnfSk7XG4gICAgaWYgKGlzV2luZG93cykge1xuICAgICAgdW5sb2NrZXIuc3Rkb3V0Py5vbignZGF0YScsIHByb2Nlc3Muc3Rkb3V0LndyaXRlLmJpbmQocHJvY2Vzcy5zdGRvdXQpKTtcbiAgICAgIHVubG9ja2VyLnN0ZGVycj8ub24oJ2RhdGEnLCBwcm9jZXNzLnN0ZGVyci53cml0ZS5iaW5kKHByb2Nlc3Muc3RkZXJyKSk7XG4gICAgfVxuICAgIHJldHVybiB1bmxvY2tlcjtcbiAgfVxufVxuIl19