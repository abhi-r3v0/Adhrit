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
        define("@angular/compiler-cli/src/ngtsc/incremental/src/strategy", ["require", "exports", "@angular/compiler-cli/src/ngtsc/incremental/src/state"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.PatchedProgramIncrementalBuildStrategy = exports.TrackedIncrementalBuildStrategy = exports.NoopIncrementalBuildStrategy = void 0;
    var state_1 = require("@angular/compiler-cli/src/ngtsc/incremental/src/state");
    /**
     * A noop implementation of `IncrementalBuildStrategy` which neither returns nor tracks any
     * incremental data.
     */
    var NoopIncrementalBuildStrategy = /** @class */ (function () {
        function NoopIncrementalBuildStrategy() {
        }
        NoopIncrementalBuildStrategy.prototype.getIncrementalDriver = function () {
            return null;
        };
        NoopIncrementalBuildStrategy.prototype.setIncrementalDriver = function () { };
        return NoopIncrementalBuildStrategy;
    }());
    exports.NoopIncrementalBuildStrategy = NoopIncrementalBuildStrategy;
    /**
     * Tracks an `IncrementalDriver` within the strategy itself.
     */
    var TrackedIncrementalBuildStrategy = /** @class */ (function () {
        function TrackedIncrementalBuildStrategy() {
            this.driver = null;
            this.isSet = false;
        }
        TrackedIncrementalBuildStrategy.prototype.getIncrementalDriver = function () {
            return this.driver;
        };
        TrackedIncrementalBuildStrategy.prototype.setIncrementalDriver = function (driver) {
            this.driver = driver;
            this.isSet = true;
        };
        TrackedIncrementalBuildStrategy.prototype.toNextBuildStrategy = function () {
            var strategy = new TrackedIncrementalBuildStrategy();
            // Only reuse a driver that was explicitly set via `setIncrementalDriver`.
            strategy.driver = this.isSet ? this.driver : null;
            return strategy;
        };
        return TrackedIncrementalBuildStrategy;
    }());
    exports.TrackedIncrementalBuildStrategy = TrackedIncrementalBuildStrategy;
    /**
     * Manages the `IncrementalDriver` associated with a `ts.Program` by monkey-patching it onto the
     * program under `SYM_INCREMENTAL_DRIVER`.
     */
    var PatchedProgramIncrementalBuildStrategy = /** @class */ (function () {
        function PatchedProgramIncrementalBuildStrategy() {
        }
        PatchedProgramIncrementalBuildStrategy.prototype.getIncrementalDriver = function (program) {
            var driver = program[SYM_INCREMENTAL_DRIVER];
            if (driver === undefined || !(driver instanceof state_1.IncrementalDriver)) {
                return null;
            }
            return driver;
        };
        PatchedProgramIncrementalBuildStrategy.prototype.setIncrementalDriver = function (driver, program) {
            program[SYM_INCREMENTAL_DRIVER] = driver;
        };
        return PatchedProgramIncrementalBuildStrategy;
    }());
    exports.PatchedProgramIncrementalBuildStrategy = PatchedProgramIncrementalBuildStrategy;
    /**
     * Symbol under which the `IncrementalDriver` is stored on a `ts.Program`.
     *
     * The TS model of incremental compilation is based around reuse of a previous `ts.Program` in the
     * construction of a new one. The `NgCompiler` follows this abstraction - passing in a previous
     * `ts.Program` is sufficient to trigger incremental compilation. This previous `ts.Program` need
     * not be from an Angular compilation (that is, it need not have been created from `NgCompiler`).
     *
     * If it is, though, Angular can benefit from reusing previous analysis work. This reuse is managed
     * by the `IncrementalDriver`, which is inherited from the old program to the new program. To
     * support this behind the API of passing an old `ts.Program`, the `IncrementalDriver` is stored on
     * the `ts.Program` under this symbol.
     */
    var SYM_INCREMENTAL_DRIVER = Symbol('NgIncrementalDriver');
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic3RyYXRlZ3kuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL2luY3JlbWVudGFsL3NyYy9zdHJhdGVneS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7SUFHSCwrRUFBMEM7SUFtQjFDOzs7T0FHRztJQUNIO1FBQUE7UUFNQSxDQUFDO1FBTEMsMkRBQW9CLEdBQXBCO1lBQ0UsT0FBTyxJQUFJLENBQUM7UUFDZCxDQUFDO1FBRUQsMkRBQW9CLEdBQXBCLGNBQThCLENBQUM7UUFDakMsbUNBQUM7SUFBRCxDQUFDLEFBTkQsSUFNQztJQU5ZLG9FQUE0QjtJQVF6Qzs7T0FFRztJQUNIO1FBQUE7WUFDVSxXQUFNLEdBQTJCLElBQUksQ0FBQztZQUN0QyxVQUFLLEdBQVksS0FBSyxDQUFDO1FBaUJqQyxDQUFDO1FBZkMsOERBQW9CLEdBQXBCO1lBQ0UsT0FBTyxJQUFJLENBQUMsTUFBTSxDQUFDO1FBQ3JCLENBQUM7UUFFRCw4REFBb0IsR0FBcEIsVUFBcUIsTUFBeUI7WUFDNUMsSUFBSSxDQUFDLE1BQU0sR0FBRyxNQUFNLENBQUM7WUFDckIsSUFBSSxDQUFDLEtBQUssR0FBRyxJQUFJLENBQUM7UUFDcEIsQ0FBQztRQUVELDZEQUFtQixHQUFuQjtZQUNFLElBQU0sUUFBUSxHQUFHLElBQUksK0JBQStCLEVBQUUsQ0FBQztZQUN2RCwwRUFBMEU7WUFDMUUsUUFBUSxDQUFDLE1BQU0sR0FBRyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUM7WUFDbEQsT0FBTyxRQUFRLENBQUM7UUFDbEIsQ0FBQztRQUNILHNDQUFDO0lBQUQsQ0FBQyxBQW5CRCxJQW1CQztJQW5CWSwwRUFBK0I7SUFxQjVDOzs7T0FHRztJQUNIO1FBQUE7UUFZQSxDQUFDO1FBWEMscUVBQW9CLEdBQXBCLFVBQXFCLE9BQW1CO1lBQ3RDLElBQU0sTUFBTSxHQUFJLE9BQWUsQ0FBQyxzQkFBc0IsQ0FBQyxDQUFDO1lBQ3hELElBQUksTUFBTSxLQUFLLFNBQVMsSUFBSSxDQUFDLENBQUMsTUFBTSxZQUFZLHlCQUFpQixDQUFDLEVBQUU7Z0JBQ2xFLE9BQU8sSUFBSSxDQUFDO2FBQ2I7WUFDRCxPQUFPLE1BQU0sQ0FBQztRQUNoQixDQUFDO1FBRUQscUVBQW9CLEdBQXBCLFVBQXFCLE1BQXlCLEVBQUUsT0FBbUI7WUFDaEUsT0FBZSxDQUFDLHNCQUFzQixDQUFDLEdBQUcsTUFBTSxDQUFDO1FBQ3BELENBQUM7UUFDSCw2Q0FBQztJQUFELENBQUMsQUFaRCxJQVlDO0lBWlksd0ZBQXNDO0lBZW5EOzs7Ozs7Ozs7Ozs7T0FZRztJQUNILElBQU0sc0JBQXNCLEdBQUcsTUFBTSxDQUFDLHFCQUFxQixDQUFDLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5pbXBvcnQge0luY3JlbWVudGFsRHJpdmVyfSBmcm9tICcuL3N0YXRlJztcblxuLyoqXG4gKiBTdHJhdGVneSB1c2VkIHRvIG1hbmFnZSB0aGUgYXNzb2NpYXRpb24gYmV0d2VlbiBhIGB0cy5Qcm9ncmFtYCBhbmQgdGhlIGBJbmNyZW1lbnRhbERyaXZlcmAgd2hpY2hcbiAqIHJlcHJlc2VudHMgdGhlIHJldXNhYmxlIEFuZ3VsYXIgcGFydCBvZiBpdHMgY29tcGlsYXRpb24uXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgSW5jcmVtZW50YWxCdWlsZFN0cmF0ZWd5IHtcbiAgLyoqXG4gICAqIERldGVybWluZSB0aGUgQW5ndWxhciBgSW5jcmVtZW50YWxEcml2ZXJgIGZvciB0aGUgZ2l2ZW4gYHRzLlByb2dyYW1gLCBpZiBvbmUgaXMgYXZhaWxhYmxlLlxuICAgKi9cbiAgZ2V0SW5jcmVtZW50YWxEcml2ZXIocHJvZ3JhbTogdHMuUHJvZ3JhbSk6IEluY3JlbWVudGFsRHJpdmVyfG51bGw7XG5cbiAgLyoqXG4gICAqIEFzc29jaWF0ZSB0aGUgZ2l2ZW4gYEluY3JlbWVudGFsRHJpdmVyYCB3aXRoIHRoZSBnaXZlbiBgdHMuUHJvZ3JhbWAgYW5kIG1ha2UgaXQgYXZhaWxhYmxlIHRvXG4gICAqIGZ1dHVyZSBjb21waWxhdGlvbnMuXG4gICAqL1xuICBzZXRJbmNyZW1lbnRhbERyaXZlcihkcml2ZXI6IEluY3JlbWVudGFsRHJpdmVyLCBwcm9ncmFtOiB0cy5Qcm9ncmFtKTogdm9pZDtcbn1cblxuLyoqXG4gKiBBIG5vb3AgaW1wbGVtZW50YXRpb24gb2YgYEluY3JlbWVudGFsQnVpbGRTdHJhdGVneWAgd2hpY2ggbmVpdGhlciByZXR1cm5zIG5vciB0cmFja3MgYW55XG4gKiBpbmNyZW1lbnRhbCBkYXRhLlxuICovXG5leHBvcnQgY2xhc3MgTm9vcEluY3JlbWVudGFsQnVpbGRTdHJhdGVneSBpbXBsZW1lbnRzIEluY3JlbWVudGFsQnVpbGRTdHJhdGVneSB7XG4gIGdldEluY3JlbWVudGFsRHJpdmVyKCk6IG51bGwge1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgc2V0SW5jcmVtZW50YWxEcml2ZXIoKTogdm9pZCB7fVxufVxuXG4vKipcbiAqIFRyYWNrcyBhbiBgSW5jcmVtZW50YWxEcml2ZXJgIHdpdGhpbiB0aGUgc3RyYXRlZ3kgaXRzZWxmLlxuICovXG5leHBvcnQgY2xhc3MgVHJhY2tlZEluY3JlbWVudGFsQnVpbGRTdHJhdGVneSBpbXBsZW1lbnRzIEluY3JlbWVudGFsQnVpbGRTdHJhdGVneSB7XG4gIHByaXZhdGUgZHJpdmVyOiBJbmNyZW1lbnRhbERyaXZlcnxudWxsID0gbnVsbDtcbiAgcHJpdmF0ZSBpc1NldDogYm9vbGVhbiA9IGZhbHNlO1xuXG4gIGdldEluY3JlbWVudGFsRHJpdmVyKCk6IEluY3JlbWVudGFsRHJpdmVyfG51bGwge1xuICAgIHJldHVybiB0aGlzLmRyaXZlcjtcbiAgfVxuXG4gIHNldEluY3JlbWVudGFsRHJpdmVyKGRyaXZlcjogSW5jcmVtZW50YWxEcml2ZXIpOiB2b2lkIHtcbiAgICB0aGlzLmRyaXZlciA9IGRyaXZlcjtcbiAgICB0aGlzLmlzU2V0ID0gdHJ1ZTtcbiAgfVxuXG4gIHRvTmV4dEJ1aWxkU3RyYXRlZ3koKTogVHJhY2tlZEluY3JlbWVudGFsQnVpbGRTdHJhdGVneSB7XG4gICAgY29uc3Qgc3RyYXRlZ3kgPSBuZXcgVHJhY2tlZEluY3JlbWVudGFsQnVpbGRTdHJhdGVneSgpO1xuICAgIC8vIE9ubHkgcmV1c2UgYSBkcml2ZXIgdGhhdCB3YXMgZXhwbGljaXRseSBzZXQgdmlhIGBzZXRJbmNyZW1lbnRhbERyaXZlcmAuXG4gICAgc3RyYXRlZ3kuZHJpdmVyID0gdGhpcy5pc1NldCA/IHRoaXMuZHJpdmVyIDogbnVsbDtcbiAgICByZXR1cm4gc3RyYXRlZ3k7XG4gIH1cbn1cblxuLyoqXG4gKiBNYW5hZ2VzIHRoZSBgSW5jcmVtZW50YWxEcml2ZXJgIGFzc29jaWF0ZWQgd2l0aCBhIGB0cy5Qcm9ncmFtYCBieSBtb25rZXktcGF0Y2hpbmcgaXQgb250byB0aGVcbiAqIHByb2dyYW0gdW5kZXIgYFNZTV9JTkNSRU1FTlRBTF9EUklWRVJgLlxuICovXG5leHBvcnQgY2xhc3MgUGF0Y2hlZFByb2dyYW1JbmNyZW1lbnRhbEJ1aWxkU3RyYXRlZ3kgaW1wbGVtZW50cyBJbmNyZW1lbnRhbEJ1aWxkU3RyYXRlZ3kge1xuICBnZXRJbmNyZW1lbnRhbERyaXZlcihwcm9ncmFtOiB0cy5Qcm9ncmFtKTogSW5jcmVtZW50YWxEcml2ZXJ8bnVsbCB7XG4gICAgY29uc3QgZHJpdmVyID0gKHByb2dyYW0gYXMgYW55KVtTWU1fSU5DUkVNRU5UQUxfRFJJVkVSXTtcbiAgICBpZiAoZHJpdmVyID09PSB1bmRlZmluZWQgfHwgIShkcml2ZXIgaW5zdGFuY2VvZiBJbmNyZW1lbnRhbERyaXZlcikpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgICByZXR1cm4gZHJpdmVyO1xuICB9XG5cbiAgc2V0SW5jcmVtZW50YWxEcml2ZXIoZHJpdmVyOiBJbmNyZW1lbnRhbERyaXZlciwgcHJvZ3JhbTogdHMuUHJvZ3JhbSk6IHZvaWQge1xuICAgIChwcm9ncmFtIGFzIGFueSlbU1lNX0lOQ1JFTUVOVEFMX0RSSVZFUl0gPSBkcml2ZXI7XG4gIH1cbn1cblxuXG4vKipcbiAqIFN5bWJvbCB1bmRlciB3aGljaCB0aGUgYEluY3JlbWVudGFsRHJpdmVyYCBpcyBzdG9yZWQgb24gYSBgdHMuUHJvZ3JhbWAuXG4gKlxuICogVGhlIFRTIG1vZGVsIG9mIGluY3JlbWVudGFsIGNvbXBpbGF0aW9uIGlzIGJhc2VkIGFyb3VuZCByZXVzZSBvZiBhIHByZXZpb3VzIGB0cy5Qcm9ncmFtYCBpbiB0aGVcbiAqIGNvbnN0cnVjdGlvbiBvZiBhIG5ldyBvbmUuIFRoZSBgTmdDb21waWxlcmAgZm9sbG93cyB0aGlzIGFic3RyYWN0aW9uIC0gcGFzc2luZyBpbiBhIHByZXZpb3VzXG4gKiBgdHMuUHJvZ3JhbWAgaXMgc3VmZmljaWVudCB0byB0cmlnZ2VyIGluY3JlbWVudGFsIGNvbXBpbGF0aW9uLiBUaGlzIHByZXZpb3VzIGB0cy5Qcm9ncmFtYCBuZWVkXG4gKiBub3QgYmUgZnJvbSBhbiBBbmd1bGFyIGNvbXBpbGF0aW9uICh0aGF0IGlzLCBpdCBuZWVkIG5vdCBoYXZlIGJlZW4gY3JlYXRlZCBmcm9tIGBOZ0NvbXBpbGVyYCkuXG4gKlxuICogSWYgaXQgaXMsIHRob3VnaCwgQW5ndWxhciBjYW4gYmVuZWZpdCBmcm9tIHJldXNpbmcgcHJldmlvdXMgYW5hbHlzaXMgd29yay4gVGhpcyByZXVzZSBpcyBtYW5hZ2VkXG4gKiBieSB0aGUgYEluY3JlbWVudGFsRHJpdmVyYCwgd2hpY2ggaXMgaW5oZXJpdGVkIGZyb20gdGhlIG9sZCBwcm9ncmFtIHRvIHRoZSBuZXcgcHJvZ3JhbS4gVG9cbiAqIHN1cHBvcnQgdGhpcyBiZWhpbmQgdGhlIEFQSSBvZiBwYXNzaW5nIGFuIG9sZCBgdHMuUHJvZ3JhbWAsIHRoZSBgSW5jcmVtZW50YWxEcml2ZXJgIGlzIHN0b3JlZCBvblxuICogdGhlIGB0cy5Qcm9ncmFtYCB1bmRlciB0aGlzIHN5bWJvbC5cbiAqL1xuY29uc3QgU1lNX0lOQ1JFTUVOVEFMX0RSSVZFUiA9IFN5bWJvbCgnTmdJbmNyZW1lbnRhbERyaXZlcicpO1xuIl19