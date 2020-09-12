(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/locking/lock_file_with_child_process/unlocker", ["require", "exports", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/ngcc/src/logging/console_logger", "@angular/compiler-cli/ngcc/src/locking/lock_file_with_child_process/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var console_logger_1 = require("@angular/compiler-cli/ngcc/src/logging/console_logger");
    var util_1 = require("@angular/compiler-cli/ngcc/src/locking/lock_file_with_child_process/util");
    /// <reference types="node" />
    // This file is an entry-point for the child-process that is started by `LockFileWithChildProcess`
    // to ensure that the lock-file is removed when the primary process exits unexpectedly.
    // We have no choice but to use the node.js file-system here since we are in a separate process
    // from the main ngcc run, which may be running a mock file-system from within a test.
    var fs = new file_system_1.NodeJSFileSystem();
    // We create a logger that has the same logging level as the parent process, since it should have
    // been passed through as one of the args
    var logLevel = parseInt(process.argv.pop(), 10);
    var logger = new console_logger_1.ConsoleLogger(logLevel);
    // We must store the parent PID now as it changes if the parent process is killed early
    var ppid = process.ppid.toString();
    // The path to the lock-file to remove should have been passed as one of the args
    var lockFilePath = fs.resolve(process.argv.pop());
    logger.debug("Starting unlocker at process " + process.pid + " on behalf of process " + ppid);
    logger.debug("The lock-file path is " + lockFilePath);
    /**
     * When the parent process exits (for whatever reason) remove the loc-file if it exists and as long
     * as it was one that was created by the parent process.
     */
    process.on('disconnect', function () {
        util_1.removeLockFile(fs, logger, lockFilePath, ppid);
    });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidW5sb2NrZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvbG9ja2luZy9sb2NrX2ZpbGVfd2l0aF9jaGlsZF9wcm9jZXNzL3VubG9ja2VyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7O0lBQUE7Ozs7OztPQU1HO0lBQ0gsMkVBQW1FO0lBQ25FLHdGQUEyRDtJQUMzRCxpR0FBc0M7SUFFdEMsOEJBQThCO0lBRTlCLGtHQUFrRztJQUNsRyx1RkFBdUY7SUFFdkYsK0ZBQStGO0lBQy9GLHNGQUFzRjtJQUN0RixJQUFNLEVBQUUsR0FBRyxJQUFJLDhCQUFnQixFQUFFLENBQUM7SUFFbEMsaUdBQWlHO0lBQ2pHLHlDQUF5QztJQUN6QyxJQUFNLFFBQVEsR0FBRyxRQUFRLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxHQUFHLEVBQUcsRUFBRSxFQUFFLENBQUMsQ0FBQztJQUNuRCxJQUFNLE1BQU0sR0FBRyxJQUFJLDhCQUFhLENBQUMsUUFBUSxDQUFDLENBQUM7SUFFM0MsdUZBQXVGO0lBQ3ZGLElBQU0sSUFBSSxHQUFHLE9BQU8sQ0FBQyxJQUFJLENBQUMsUUFBUSxFQUFFLENBQUM7SUFFckMsaUZBQWlGO0lBQ2pGLElBQU0sWUFBWSxHQUFHLEVBQUUsQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxHQUFHLEVBQUcsQ0FBQyxDQUFDO0lBRXJELE1BQU0sQ0FBQyxLQUFLLENBQUMsa0NBQWdDLE9BQU8sQ0FBQyxHQUFHLDhCQUF5QixJQUFNLENBQUMsQ0FBQztJQUN6RixNQUFNLENBQUMsS0FBSyxDQUFDLDJCQUF5QixZQUFjLENBQUMsQ0FBQztJQUV0RDs7O09BR0c7SUFDSCxPQUFPLENBQUMsRUFBRSxDQUFDLFlBQVksRUFBRTtRQUN2QixxQkFBYyxDQUFDLEVBQUUsRUFBRSxNQUFNLEVBQUUsWUFBWSxFQUFFLElBQUksQ0FBQyxDQUFDO0lBQ2pELENBQUMsQ0FBQyxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQge05vZGVKU0ZpbGVTeXN0ZW19IGZyb20gJy4uLy4uLy4uLy4uL3NyYy9uZ3RzYy9maWxlX3N5c3RlbSc7XG5pbXBvcnQge0NvbnNvbGVMb2dnZXJ9IGZyb20gJy4uLy4uL2xvZ2dpbmcvY29uc29sZV9sb2dnZXInO1xuaW1wb3J0IHtyZW1vdmVMb2NrRmlsZX0gZnJvbSAnLi91dGlsJztcblxuLy8vIDxyZWZlcmVuY2UgdHlwZXM9XCJub2RlXCIgLz5cblxuLy8gVGhpcyBmaWxlIGlzIGFuIGVudHJ5LXBvaW50IGZvciB0aGUgY2hpbGQtcHJvY2VzcyB0aGF0IGlzIHN0YXJ0ZWQgYnkgYExvY2tGaWxlV2l0aENoaWxkUHJvY2Vzc2Bcbi8vIHRvIGVuc3VyZSB0aGF0IHRoZSBsb2NrLWZpbGUgaXMgcmVtb3ZlZCB3aGVuIHRoZSBwcmltYXJ5IHByb2Nlc3MgZXhpdHMgdW5leHBlY3RlZGx5LlxuXG4vLyBXZSBoYXZlIG5vIGNob2ljZSBidXQgdG8gdXNlIHRoZSBub2RlLmpzIGZpbGUtc3lzdGVtIGhlcmUgc2luY2Ugd2UgYXJlIGluIGEgc2VwYXJhdGUgcHJvY2Vzc1xuLy8gZnJvbSB0aGUgbWFpbiBuZ2NjIHJ1biwgd2hpY2ggbWF5IGJlIHJ1bm5pbmcgYSBtb2NrIGZpbGUtc3lzdGVtIGZyb20gd2l0aGluIGEgdGVzdC5cbmNvbnN0IGZzID0gbmV3IE5vZGVKU0ZpbGVTeXN0ZW0oKTtcblxuLy8gV2UgY3JlYXRlIGEgbG9nZ2VyIHRoYXQgaGFzIHRoZSBzYW1lIGxvZ2dpbmcgbGV2ZWwgYXMgdGhlIHBhcmVudCBwcm9jZXNzLCBzaW5jZSBpdCBzaG91bGQgaGF2ZVxuLy8gYmVlbiBwYXNzZWQgdGhyb3VnaCBhcyBvbmUgb2YgdGhlIGFyZ3NcbmNvbnN0IGxvZ0xldmVsID0gcGFyc2VJbnQocHJvY2Vzcy5hcmd2LnBvcCgpISwgMTApO1xuY29uc3QgbG9nZ2VyID0gbmV3IENvbnNvbGVMb2dnZXIobG9nTGV2ZWwpO1xuXG4vLyBXZSBtdXN0IHN0b3JlIHRoZSBwYXJlbnQgUElEIG5vdyBhcyBpdCBjaGFuZ2VzIGlmIHRoZSBwYXJlbnQgcHJvY2VzcyBpcyBraWxsZWQgZWFybHlcbmNvbnN0IHBwaWQgPSBwcm9jZXNzLnBwaWQudG9TdHJpbmcoKTtcblxuLy8gVGhlIHBhdGggdG8gdGhlIGxvY2stZmlsZSB0byByZW1vdmUgc2hvdWxkIGhhdmUgYmVlbiBwYXNzZWQgYXMgb25lIG9mIHRoZSBhcmdzXG5jb25zdCBsb2NrRmlsZVBhdGggPSBmcy5yZXNvbHZlKHByb2Nlc3MuYXJndi5wb3AoKSEpO1xuXG5sb2dnZXIuZGVidWcoYFN0YXJ0aW5nIHVubG9ja2VyIGF0IHByb2Nlc3MgJHtwcm9jZXNzLnBpZH0gb24gYmVoYWxmIG9mIHByb2Nlc3MgJHtwcGlkfWApO1xubG9nZ2VyLmRlYnVnKGBUaGUgbG9jay1maWxlIHBhdGggaXMgJHtsb2NrRmlsZVBhdGh9YCk7XG5cbi8qKlxuICogV2hlbiB0aGUgcGFyZW50IHByb2Nlc3MgZXhpdHMgKGZvciB3aGF0ZXZlciByZWFzb24pIHJlbW92ZSB0aGUgbG9jLWZpbGUgaWYgaXQgZXhpc3RzIGFuZCBhcyBsb25nXG4gKiBhcyBpdCB3YXMgb25lIHRoYXQgd2FzIGNyZWF0ZWQgYnkgdGhlIHBhcmVudCBwcm9jZXNzLlxuICovXG5wcm9jZXNzLm9uKCdkaXNjb25uZWN0JywgKCkgPT4ge1xuICByZW1vdmVMb2NrRmlsZShmcywgbG9nZ2VyLCBsb2NrRmlsZVBhdGgsIHBwaWQpO1xufSk7XG4iXX0=