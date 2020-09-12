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
        define("@angular/compiler-cli/src/metadata/index_writer", ["require", "exports", "tslib"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.privateEntriesToIndex = void 0;
    var tslib_1 = require("tslib");
    var INDEX_HEADER = "/**\n * Generated bundle index. Do not edit.\n */\n";
    function privateEntriesToIndex(index, privates) {
        var e_1, _a, e_2, _b;
        var results = [INDEX_HEADER];
        // Export all of the index symbols.
        results.push("export * from '" + index + "';", '');
        // Simplify the exports
        var exports = new Map();
        try {
            for (var privates_1 = tslib_1.__values(privates), privates_1_1 = privates_1.next(); !privates_1_1.done; privates_1_1 = privates_1.next()) {
                var entry = privates_1_1.value;
                var entries = exports.get(entry.module);
                if (!entries) {
                    entries = [];
                    exports.set(entry.module, entries);
                }
                entries.push(entry);
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (privates_1_1 && !privates_1_1.done && (_a = privates_1.return)) _a.call(privates_1);
            }
            finally { if (e_1) throw e_1.error; }
        }
        var compareEntries = compare(function (e) { return e.name; });
        var compareModules = compare(function (e) { return e[0]; });
        var orderedExports = Array.from(exports)
            .map(function (_a) {
            var _b = tslib_1.__read(_a, 2), module = _b[0], entries = _b[1];
            return [module, entries.sort(compareEntries)];
        })
            .sort(compareModules);
        try {
            for (var orderedExports_1 = tslib_1.__values(orderedExports), orderedExports_1_1 = orderedExports_1.next(); !orderedExports_1_1.done; orderedExports_1_1 = orderedExports_1.next()) {
                var _c = tslib_1.__read(orderedExports_1_1.value, 2), module_1 = _c[0], entries = _c[1];
                var symbols = entries.map(function (e) { return e.name + " as " + e.privateName; });
                results.push("export {" + symbols + "} from '" + module_1 + "';");
            }
        }
        catch (e_2_1) { e_2 = { error: e_2_1 }; }
        finally {
            try {
                if (orderedExports_1_1 && !orderedExports_1_1.done && (_b = orderedExports_1.return)) _b.call(orderedExports_1);
            }
            finally { if (e_2) throw e_2.error; }
        }
        return results.join('\n');
    }
    exports.privateEntriesToIndex = privateEntriesToIndex;
    function compare(select) {
        return function (a, b) {
            var ak = select(a);
            var bk = select(b);
            return ak > bk ? 1 : ak < bk ? -1 : 0;
        };
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXhfd3JpdGVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy9tZXRhZGF0YS9pbmRleF93cml0ZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUlILElBQU0sWUFBWSxHQUFHLHFEQUdwQixDQUFDO0lBSUYsU0FBZ0IscUJBQXFCLENBQUMsS0FBYSxFQUFFLFFBQThCOztRQUNqRixJQUFNLE9BQU8sR0FBYSxDQUFDLFlBQVksQ0FBQyxDQUFDO1FBRXpDLG1DQUFtQztRQUNuQyxPQUFPLENBQUMsSUFBSSxDQUFDLG9CQUFrQixLQUFLLE9BQUksRUFBRSxFQUFFLENBQUMsQ0FBQztRQUU5Qyx1QkFBdUI7UUFDdkIsSUFBTSxPQUFPLEdBQUcsSUFBSSxHQUFHLEVBQWdDLENBQUM7O1lBRXhELEtBQW9CLElBQUEsYUFBQSxpQkFBQSxRQUFRLENBQUEsa0NBQUEsd0RBQUU7Z0JBQXpCLElBQU0sS0FBSyxxQkFBQTtnQkFDZCxJQUFJLE9BQU8sR0FBRyxPQUFPLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBQyxNQUFNLENBQUMsQ0FBQztnQkFDeEMsSUFBSSxDQUFDLE9BQU8sRUFBRTtvQkFDWixPQUFPLEdBQUcsRUFBRSxDQUFDO29CQUNiLE9BQU8sQ0FBQyxHQUFHLENBQUMsS0FBSyxDQUFDLE1BQU0sRUFBRSxPQUFPLENBQUMsQ0FBQztpQkFDcEM7Z0JBQ0QsT0FBTyxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQzthQUNyQjs7Ozs7Ozs7O1FBR0QsSUFBTSxjQUFjLEdBQUcsT0FBTyxDQUFDLFVBQUMsQ0FBcUIsSUFBSyxPQUFBLENBQUMsQ0FBQyxJQUFJLEVBQU4sQ0FBTSxDQUFDLENBQUM7UUFDbEUsSUFBTSxjQUFjLEdBQUcsT0FBTyxDQUFDLFVBQUMsQ0FBVyxJQUFLLE9BQUEsQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFKLENBQUksQ0FBQyxDQUFDO1FBQ3RELElBQU0sY0FBYyxHQUNoQixLQUFLLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQzthQUNkLEdBQUcsQ0FBQyxVQUFDLEVBQWlCO2dCQUFqQixLQUFBLHFCQUFpQixFQUFoQixNQUFNLFFBQUEsRUFBRSxPQUFPLFFBQUE7WUFBTSxPQUFVLENBQUMsTUFBTSxFQUFFLE9BQU8sQ0FBQyxJQUFJLENBQUMsY0FBYyxDQUFDLENBQUM7UUFBaEQsQ0FBZ0QsQ0FBQzthQUM1RSxJQUFJLENBQUMsY0FBYyxDQUFDLENBQUM7O1lBRTlCLEtBQWdDLElBQUEsbUJBQUEsaUJBQUEsY0FBYyxDQUFBLDhDQUFBLDBFQUFFO2dCQUFyQyxJQUFBLEtBQUEsMkNBQWlCLEVBQWhCLFFBQU0sUUFBQSxFQUFFLE9BQU8sUUFBQTtnQkFDekIsSUFBSSxPQUFPLEdBQUcsT0FBTyxDQUFDLEdBQUcsQ0FBQyxVQUFBLENBQUMsSUFBSSxPQUFHLENBQUMsQ0FBQyxJQUFJLFlBQU8sQ0FBQyxDQUFDLFdBQWEsRUFBL0IsQ0FBK0IsQ0FBQyxDQUFDO2dCQUNoRSxPQUFPLENBQUMsSUFBSSxDQUFDLGFBQVcsT0FBTyxnQkFBVyxRQUFNLE9BQUksQ0FBQyxDQUFDO2FBQ3ZEOzs7Ozs7Ozs7UUFFRCxPQUFPLE9BQU8sQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDNUIsQ0FBQztJQWhDRCxzREFnQ0M7SUFFRCxTQUFTLE9BQU8sQ0FBTyxNQUFtQjtRQUN4QyxPQUFPLFVBQUMsQ0FBQyxFQUFFLENBQUM7WUFDVixJQUFNLEVBQUUsR0FBRyxNQUFNLENBQUMsQ0FBQyxDQUFDLENBQUM7WUFDckIsSUFBTSxFQUFFLEdBQUcsTUFBTSxDQUFDLENBQUMsQ0FBQyxDQUFDO1lBQ3JCLE9BQU8sRUFBRSxHQUFHLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFFLEdBQUcsRUFBRSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQ3hDLENBQUMsQ0FBQztJQUNKLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtCdW5kbGVQcml2YXRlRW50cnl9IGZyb20gJy4vYnVuZGxlcic7XG5cbmNvbnN0IElOREVYX0hFQURFUiA9IGAvKipcbiAqIEdlbmVyYXRlZCBidW5kbGUgaW5kZXguIERvIG5vdCBlZGl0LlxuICovXG5gO1xuXG50eXBlIE1hcEVudHJ5ID0gW3N0cmluZywgQnVuZGxlUHJpdmF0ZUVudHJ5W11dO1xuXG5leHBvcnQgZnVuY3Rpb24gcHJpdmF0ZUVudHJpZXNUb0luZGV4KGluZGV4OiBzdHJpbmcsIHByaXZhdGVzOiBCdW5kbGVQcml2YXRlRW50cnlbXSk6IHN0cmluZyB7XG4gIGNvbnN0IHJlc3VsdHM6IHN0cmluZ1tdID0gW0lOREVYX0hFQURFUl07XG5cbiAgLy8gRXhwb3J0IGFsbCBvZiB0aGUgaW5kZXggc3ltYm9scy5cbiAgcmVzdWx0cy5wdXNoKGBleHBvcnQgKiBmcm9tICcke2luZGV4fSc7YCwgJycpO1xuXG4gIC8vIFNpbXBsaWZ5IHRoZSBleHBvcnRzXG4gIGNvbnN0IGV4cG9ydHMgPSBuZXcgTWFwPHN0cmluZywgQnVuZGxlUHJpdmF0ZUVudHJ5W10+KCk7XG5cbiAgZm9yIChjb25zdCBlbnRyeSBvZiBwcml2YXRlcykge1xuICAgIGxldCBlbnRyaWVzID0gZXhwb3J0cy5nZXQoZW50cnkubW9kdWxlKTtcbiAgICBpZiAoIWVudHJpZXMpIHtcbiAgICAgIGVudHJpZXMgPSBbXTtcbiAgICAgIGV4cG9ydHMuc2V0KGVudHJ5Lm1vZHVsZSwgZW50cmllcyk7XG4gICAgfVxuICAgIGVudHJpZXMucHVzaChlbnRyeSk7XG4gIH1cblxuXG4gIGNvbnN0IGNvbXBhcmVFbnRyaWVzID0gY29tcGFyZSgoZTogQnVuZGxlUHJpdmF0ZUVudHJ5KSA9PiBlLm5hbWUpO1xuICBjb25zdCBjb21wYXJlTW9kdWxlcyA9IGNvbXBhcmUoKGU6IE1hcEVudHJ5KSA9PiBlWzBdKTtcbiAgY29uc3Qgb3JkZXJlZEV4cG9ydHMgPVxuICAgICAgQXJyYXkuZnJvbShleHBvcnRzKVxuICAgICAgICAgIC5tYXAoKFttb2R1bGUsIGVudHJpZXNdKSA9PiA8TWFwRW50cnk+W21vZHVsZSwgZW50cmllcy5zb3J0KGNvbXBhcmVFbnRyaWVzKV0pXG4gICAgICAgICAgLnNvcnQoY29tcGFyZU1vZHVsZXMpO1xuXG4gIGZvciAoY29uc3QgW21vZHVsZSwgZW50cmllc10gb2Ygb3JkZXJlZEV4cG9ydHMpIHtcbiAgICBsZXQgc3ltYm9scyA9IGVudHJpZXMubWFwKGUgPT4gYCR7ZS5uYW1lfSBhcyAke2UucHJpdmF0ZU5hbWV9YCk7XG4gICAgcmVzdWx0cy5wdXNoKGBleHBvcnQgeyR7c3ltYm9sc319IGZyb20gJyR7bW9kdWxlfSc7YCk7XG4gIH1cblxuICByZXR1cm4gcmVzdWx0cy5qb2luKCdcXG4nKTtcbn1cblxuZnVuY3Rpb24gY29tcGFyZTxFLCBUPihzZWxlY3Q6IChlOiBFKSA9PiBUKTogKGE6IEUsIGI6IEUpID0+IG51bWJlciB7XG4gIHJldHVybiAoYSwgYikgPT4ge1xuICAgIGNvbnN0IGFrID0gc2VsZWN0KGEpO1xuICAgIGNvbnN0IGJrID0gc2VsZWN0KGIpO1xuICAgIHJldHVybiBhayA+IGJrID8gMSA6IGFrIDwgYmsgPyAtMSA6IDA7XG4gIH07XG59XG4iXX0=