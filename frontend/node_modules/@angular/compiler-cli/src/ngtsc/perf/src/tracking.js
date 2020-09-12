(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/src/ngtsc/perf/src/tracking", ["require", "exports", "fs", "typescript", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/src/ngtsc/perf/src/clock"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.PerfLogEventType = exports.PerfTracker = void 0;
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    /// <reference types="node" />
    var fs = require("fs");
    var ts = require("typescript");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var clock_1 = require("@angular/compiler-cli/src/ngtsc/perf/src/clock");
    var PerfTracker = /** @class */ (function () {
        function PerfTracker(zeroTime) {
            this.zeroTime = zeroTime;
            this.nextSpanId = 1;
            this.log = [];
            this.enabled = true;
        }
        PerfTracker.zeroedToNow = function () {
            return new PerfTracker(clock_1.mark());
        };
        PerfTracker.prototype.mark = function (name, node, category, detail) {
            var msg = this.makeLogMessage(PerfLogEventType.MARK, name, node, category, detail, undefined);
            this.log.push(msg);
        };
        PerfTracker.prototype.start = function (name, node, category, detail) {
            var span = this.nextSpanId++;
            var msg = this.makeLogMessage(PerfLogEventType.SPAN_OPEN, name, node, category, detail, span);
            this.log.push(msg);
            return span;
        };
        PerfTracker.prototype.stop = function (span) {
            this.log.push({
                type: PerfLogEventType.SPAN_CLOSE,
                span: span,
                stamp: clock_1.timeSinceInMicros(this.zeroTime),
            });
        };
        PerfTracker.prototype.makeLogMessage = function (type, name, node, category, detail, span) {
            var msg = {
                type: type,
                name: name,
                stamp: clock_1.timeSinceInMicros(this.zeroTime),
            };
            if (category !== undefined) {
                msg.category = category;
            }
            if (detail !== undefined) {
                msg.detail = detail;
            }
            if (span !== undefined) {
                msg.span = span;
            }
            if (node !== undefined) {
                msg.file = node.getSourceFile().fileName;
                if (!ts.isSourceFile(node)) {
                    var name_1 = ts.getNameOfDeclaration(node);
                    if (name_1 !== undefined && ts.isIdentifier(name_1)) {
                        msg.declaration = name_1.text;
                    }
                }
            }
            return msg;
        };
        PerfTracker.prototype.asJson = function () {
            return this.log;
        };
        PerfTracker.prototype.serializeToFile = function (target, host) {
            var json = JSON.stringify(this.log, null, 2);
            if (target.startsWith('ts:')) {
                target = target.substr('ts:'.length);
                var outFile = file_system_1.resolve(host.getCurrentDirectory(), target);
                host.writeFile(outFile, json, false);
            }
            else {
                var outFile = file_system_1.resolve(host.getCurrentDirectory(), target);
                fs.writeFileSync(outFile, json);
            }
        };
        return PerfTracker;
    }());
    exports.PerfTracker = PerfTracker;
    var PerfLogEventType;
    (function (PerfLogEventType) {
        PerfLogEventType[PerfLogEventType["SPAN_OPEN"] = 0] = "SPAN_OPEN";
        PerfLogEventType[PerfLogEventType["SPAN_CLOSE"] = 1] = "SPAN_CLOSE";
        PerfLogEventType[PerfLogEventType["MARK"] = 2] = "MARK";
    })(PerfLogEventType = exports.PerfLogEventType || (exports.PerfLogEventType = {}));
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhY2tpbmcuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3BlcmYvc3JjL3RyYWNraW5nLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztJQUFBOzs7Ozs7T0FNRztJQUNILDhCQUE4QjtJQUM5Qix1QkFBeUI7SUFDekIsK0JBQWlDO0lBQ2pDLDJFQUEwQztJQUUxQyx3RUFBd0Q7SUFFeEQ7UUFNRSxxQkFBNEIsUUFBZ0I7WUFBaEIsYUFBUSxHQUFSLFFBQVEsQ0FBUTtZQUxwQyxlQUFVLEdBQUcsQ0FBQyxDQUFDO1lBQ2YsUUFBRyxHQUFtQixFQUFFLENBQUM7WUFFeEIsWUFBTyxHQUFHLElBQUksQ0FBQztRQUV1QixDQUFDO1FBRXpDLHVCQUFXLEdBQWxCO1lBQ0UsT0FBTyxJQUFJLFdBQVcsQ0FBQyxZQUFJLEVBQUUsQ0FBQyxDQUFDO1FBQ2pDLENBQUM7UUFFRCwwQkFBSSxHQUFKLFVBQUssSUFBWSxFQUFFLElBQW1DLEVBQUUsUUFBaUIsRUFBRSxNQUFlO1lBRXhGLElBQU0sR0FBRyxHQUFHLElBQUksQ0FBQyxjQUFjLENBQUMsZ0JBQWdCLENBQUMsSUFBSSxFQUFFLElBQUksRUFBRSxJQUFJLEVBQUUsUUFBUSxFQUFFLE1BQU0sRUFBRSxTQUFTLENBQUMsQ0FBQztZQUNoRyxJQUFJLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQztRQUNyQixDQUFDO1FBRUQsMkJBQUssR0FBTCxVQUFNLElBQVksRUFBRSxJQUFtQyxFQUFFLFFBQWlCLEVBQUUsTUFBZTtZQUV6RixJQUFNLElBQUksR0FBRyxJQUFJLENBQUMsVUFBVSxFQUFFLENBQUM7WUFDL0IsSUFBTSxHQUFHLEdBQUcsSUFBSSxDQUFDLGNBQWMsQ0FBQyxnQkFBZ0IsQ0FBQyxTQUFTLEVBQUUsSUFBSSxFQUFFLElBQUksRUFBRSxRQUFR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SlcsZ0JBQWdCLEdBQWhCLHdCQUFnQixLQUFoQix3QkFBZ0IsUUFJM0IiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbi8vLyA8cmVmZXJlbmNlIHR5cGVzPVwibm9kZVwiIC8+XG5pbXBvcnQgKiBhcyBmcyBmcm9tICdmcyc7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcbmltcG9ydCB7cmVzb2x2ZX0gZnJvbSAnLi4vLi4vZmlsZV9zeXN0ZW0nO1xuaW1wb3J0IHtQZXJmUmVjb3JkZXJ9IGZyb20gJy4vYXBpJztcbmltcG9ydCB7SHJUaW1lLCBtYXJrLCB0aW1lU2luY2VJbk1pY3Jvc30gZnJvbSAnLi9jbG9jayc7XG5cbmV4cG9ydCBjbGFzcyBQZXJmVHJhY2tlciBpbXBsZW1lbnRzIFBlcmZSZWNvcmRlciB7XG4gIHByaXZhdGUgbmV4dFNwYW5JZCA9IDE7XG4gIHByaXZhdGUgbG9nOiBQZXJmTG9nRXZlbnRbXSA9IFtdO1xuXG4gIHJlYWRvbmx5IGVuYWJsZWQgPSB0cnVlO1xuXG4gIHByaXZhdGUgY29uc3RydWN0b3IocHJpdmF0ZSB6ZXJvVGltZTogSHJUaW1lKSB7fVxuXG4gIHN0YXRpYyB6ZXJvZWRUb05vdygpOiBQZXJmVHJhY2tlciB7XG4gICAgcmV0dXJuIG5ldyBQZXJmVHJhY2tlcihtYXJrKCkpO1xuICB9XG5cbiAgbWFyayhuYW1lOiBzdHJpbmcsIG5vZGU/OiB0cy5Tb3VyY2VGaWxlfHRzLkRlY2xhcmF0aW9uLCBjYXRlZ29yeT86IHN0cmluZywgZGV0YWlsPzogc3RyaW5nKTpcbiAgICAgIHZvaWQge1xuICAgIGNvbnN0IG1zZyA9IHRoaXMubWFrZUxvZ01lc3NhZ2UoUGVyZkxvZ0V2ZW50VHlwZS5NQVJLLCBuYW1lLCBub2RlLCBjYXRlZ29yeSwgZGV0YWlsLCB1bmRlZmluZWQpO1xuICAgIHRoaXMubG9nLnB1c2gobXNnKTtcbiAgfVxuXG4gIHN0YXJ0KG5hbWU6IHN0cmluZywgbm9kZT86IHRzLlNvdXJjZUZpbGV8dHMuRGVjbGFyYXRpb24sIGNhdGVnb3J5Pzogc3RyaW5nLCBkZXRhaWw/OiBzdHJpbmcpOlxuICAgICAgbnVtYmVyIHtcbiAgICBjb25zdCBzcGFuID0gdGhpcy5uZXh0U3BhbklkKys7XG4gICAgY29uc3QgbXNnID0gdGhpcy5tYWtlTG9nTWVzc2FnZShQZXJmTG9nRXZlbnRUeXBlLlNQQU5fT1BFTiwgbmFtZSwgbm9kZSwgY2F0ZWdvcnksIGRldGFpbCwgc3Bhbik7XG4gICAgdGhpcy5sb2cucHVzaChtc2cpO1xuICAgIHJldHVybiBzcGFuO1xuICB9XG5cbiAgc3RvcChzcGFuOiBudW1iZXIpOiB2b2lkIHtcbiAgICB0aGlzLmxvZy5wdXNoKHtcbiAgICAgIHR5cGU6IFBlcmZMb2dFdmVudFR5cGUuU1BBTl9DTE9TRSxcbiAgICAgIHNwYW4sXG4gICAgICBzdGFtcDogdGltZVNpbmNlSW5NaWNyb3ModGhpcy56ZXJvVGltZSksXG4gICAgfSk7XG4gIH1cblxuICBwcml2YXRlIG1ha2VMb2dNZXNzYWdlKFxuICAgICAgdHlwZTogUGVyZkxvZ0V2ZW50VHlwZSwgbmFtZTogc3RyaW5nLCBub2RlOiB0cy5Tb3VyY2VGaWxlfHRzLkRlY2xhcmF0aW9ufHVuZGVmaW5lZCxcbiAgICAgIGNhdGVnb3J5OiBzdHJpbmd8dW5kZWZpbmVkLCBkZXRhaWw6IHN0cmluZ3x1bmRlZmluZWQsIHNwYW46IG51bWJlcnx1bmRlZmluZWQpOiBQZXJmTG9nRXZlbnQge1xuICAgIGNvbnN0IG1zZzogUGVyZkxvZ0V2ZW50ID0ge1xuICAgICAgdHlwZSxcbiAgICAgIG5hbWUsXG4gICAgICBzdGFtcDogdGltZVNpbmNlSW5NaWNyb3ModGhpcy56ZXJvVGltZSksXG4gICAgfTtcbiAgICBpZiAoY2F0ZWdvcnkgIT09IHVuZGVmaW5lZCkge1xuICAgICAgbXNnLmNhdGVnb3J5ID0gY2F0ZWdvcnk7XG4gICAgfVxuICAgIGlmIChkZXRhaWwgIT09IHVuZGVmaW5lZCkge1xuICAgICAgbXNnLmRldGFpbCA9IGRldGFpbDtcbiAgICB9XG4gICAgaWYgKHNwYW4gIT09IHVuZGVmaW5lZCkge1xuICAgICAgbXNnLnNwYW4gPSBzcGFuO1xuICAgIH1cbiAgICBpZiAobm9kZSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICBtc2cuZmlsZSA9IG5vZGUuZ2V0U291cmNlRmlsZSgpLmZpbGVOYW1lO1xuICAgICAgaWYgKCF0cy5pc1NvdXJjZUZpbGUobm9kZSkpIHtcbiAgICAgICAgY29uc3QgbmFtZSA9IHRzLmdldE5hbWVPZkRlY2xhcmF0aW9uKG5vZGUpO1xuICAgICAgICBpZiAobmFtZSAhPT0gdW5kZWZpbmVkICYmIHRzLmlzSWRlbnRpZmllcihuYW1lKSkge1xuICAgICAgICAgIG1zZy5kZWNsYXJhdGlvbiA9IG5hbWUudGV4dDtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4gbXNnO1xuICB9XG5cbiAgYXNKc29uKCk6IHVua25vd24ge1xuICAgIHJldHVybiB0aGlzLmxvZztcbiAgfVxuXG4gIHNlcmlhbGl6ZVRvRmlsZSh0YXJnZXQ6IHN0cmluZywgaG9zdDogdHMuQ29tcGlsZXJIb3N0KTogdm9pZCB7XG4gICAgY29uc3QganNvbiA9IEpTT04uc3RyaW5naWZ5KHRoaXMubG9nLCBudWxsLCAyKTtcblxuICAgIGlmICh0YXJnZXQuc3RhcnRzV2l0aCgndHM6JykpIHtcbiAgICAgIHRhcmdldCA9IHRhcmdldC5zdWJzdHIoJ3RzOicubGVuZ3RoKTtcbiAgICAgIGNvbnN0IG91dEZpbGUgPSByZXNvbHZlKGhvc3QuZ2V0Q3VycmVudERpcmVjdG9yeSgpLCB0YXJnZXQpO1xuICAgICAgaG9zdC53cml0ZUZpbGUob3V0RmlsZSwganNvbiwgZmFsc2UpO1xuICAgIH0gZWxzZSB7XG4gICAgICBjb25zdCBvdXRGaWxlID0gcmVzb2x2ZShob3N0LmdldEN1cnJlbnREaXJlY3RvcnkoKSwgdGFyZ2V0KTtcbiAgICAgIGZzLndyaXRlRmlsZVN5bmMob3V0RmlsZSwganNvbik7XG4gICAgfVxuICB9XG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgUGVyZkxvZ0V2ZW50IHtcbiAgbmFtZT86IHN0cmluZztcbiAgc3Bhbj86IG51bWJlcjtcbiAgZmlsZT86IHN0cmluZztcbiAgZGVjbGFyYXRpb24/OiBzdHJpbmc7XG4gIHR5cGU6IFBlcmZMb2dFdmVudFR5cGU7XG4gIGNhdGVnb3J5Pzogc3RyaW5nO1xuICBkZXRhaWw/OiBzdHJpbmc7XG4gIHN0YW1wOiBudW1iZXI7XG59XG5cbmV4cG9ydCBlbnVtIFBlcmZMb2dFdmVudFR5cGUge1xuICBTUEFOX09QRU4sXG4gIFNQQU5fQ0xPU0UsXG4gIE1BUkssXG59XG4iXX0=