(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc", ["require", "exports", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/ngcc/src/main", "@angular/compiler-cli/ngcc/src/logging/console_logger", "@angular/compiler-cli/ngcc/src/logging/logger", "@angular/compiler-cli/ngcc/src/ngcc_options"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.process = void 0;
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var main_1 = require("@angular/compiler-cli/ngcc/src/main");
    var console_logger_1 = require("@angular/compiler-cli/ngcc/src/logging/console_logger");
    Object.defineProperty(exports, "ConsoleLogger", { enumerable: true, get: function () { return console_logger_1.ConsoleLogger; } });
    var logger_1 = require("@angular/compiler-cli/ngcc/src/logging/logger");
    Object.defineProperty(exports, "LogLevel", { enumerable: true, get: function () { return logger_1.LogLevel; } });
    var ngcc_options_1 = require("@angular/compiler-cli/ngcc/src/ngcc_options");
    Object.defineProperty(exports, "clearTsConfigCache", { enumerable: true, get: function () { return ngcc_options_1.clearTsConfigCache; } });
    function process(options) {
        file_system_1.setFileSystem(new file_system_1.NodeJSFileSystem());
        return main_1.mainNgcc(options);
    }
    exports.process = process;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9pbmRleC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7SUFBQTs7Ozs7O09BTUc7SUFDSCwyRUFBeUU7SUFFekUsNERBQW9DO0lBR3BDLHdGQUEyRDtJQUFuRCwrR0FBQSxhQUFhLE9BQUE7SUFDckIsd0VBQXNEO0lBQXRDLGtHQUFBLFFBQVEsT0FBQTtJQUN4Qiw0RUFBc0c7SUFBNUUsa0hBQUEsa0JBQWtCLE9BQUE7SUFLNUMsU0FBZ0IsT0FBTyxDQUFDLE9BQXlDO1FBQy9ELDJCQUFhLENBQUMsSUFBSSw4QkFBZ0IsRUFBRSxDQUFDLENBQUM7UUFDdEMsT0FBTyxlQUFRLENBQUMsT0FBTyxDQUFDLENBQUM7SUFDM0IsQ0FBQztJQUhELDBCQUdDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQge05vZGVKU0ZpbGVTeXN0ZW0sIHNldEZpbGVTeXN0ZW19IGZyb20gJy4uL3NyYy9uZ3RzYy9maWxlX3N5c3RlbSc7XG5cbmltcG9ydCB7bWFpbk5nY2N9IGZyb20gJy4vc3JjL21haW4nO1xuaW1wb3J0IHtBc3luY05nY2NPcHRpb25zLCBTeW5jTmdjY09wdGlvbnN9IGZyb20gJy4vc3JjL25nY2Nfb3B0aW9ucyc7XG5cbmV4cG9ydCB7Q29uc29sZUxvZ2dlcn0gZnJvbSAnLi9zcmMvbG9nZ2luZy9jb25zb2xlX2xvZ2dlcic7XG5leHBvcnQge0xvZ2dlciwgTG9nTGV2ZWx9IGZyb20gJy4vc3JjL2xvZ2dpbmcvbG9nZ2VyJztcbmV4cG9ydCB7QXN5bmNOZ2NjT3B0aW9ucywgY2xlYXJUc0NvbmZpZ0NhY2hlLCBOZ2NjT3B0aW9ucywgU3luY05nY2NPcHRpb25zfSBmcm9tICcuL3NyYy9uZ2NjX29wdGlvbnMnO1xuZXhwb3J0IHtQYXRoTWFwcGluZ3N9IGZyb20gJy4vc3JjL3BhdGhfbWFwcGluZ3MnO1xuXG5leHBvcnQgZnVuY3Rpb24gcHJvY2VzczxUIGV4dGVuZHMgQXN5bmNOZ2NjT3B0aW9uc3xTeW5jTmdjY09wdGlvbnM+KG9wdGlvbnM6IFQpOlxuICAgIFQgZXh0ZW5kcyBBc3luY05nY2NPcHRpb25zID8gUHJvbWlzZTx2b2lkPjogdm9pZDtcbmV4cG9ydCBmdW5jdGlvbiBwcm9jZXNzKG9wdGlvbnM6IEFzeW5jTmdjY09wdGlvbnN8U3luY05nY2NPcHRpb25zKTogdm9pZHxQcm9taXNlPHZvaWQ+IHtcbiAgc2V0RmlsZVN5c3RlbShuZXcgTm9kZUpTRmlsZVN5c3RlbSgpKTtcbiAgcmV0dXJuIG1haW5OZ2NjKG9wdGlvbnMpO1xufVxuIl19