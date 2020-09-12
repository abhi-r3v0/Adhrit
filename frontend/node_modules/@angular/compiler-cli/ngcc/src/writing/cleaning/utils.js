(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/writing/cleaning/utils", ["require", "exports"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.isLocalDirectory = void 0;
    /**
     * Returns true if the given `path` is a directory (not a symlink) and actually exists.
     *
     * @param fs the current filesystem
     * @param path the path to check
     */
    function isLocalDirectory(fs, path) {
        if (fs.exists(path)) {
            var stat = fs.lstat(path);
            return stat.isDirectory();
        }
        else {
            return false;
        }
    }
    exports.isLocalDirectory = isLocalDirectory;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbHMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvd3JpdGluZy9jbGVhbmluZy91dGlscy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7SUFTQTs7Ozs7T0FLRztJQUNILFNBQWdCLGdCQUFnQixDQUFDLEVBQWMsRUFBRSxJQUFvQjtRQUNuRSxJQUFJLEVBQUUsQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLEVBQUU7WUFDbkIsSUFBTSxJQUFJLEdBQUcsRUFBRSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUM1QixPQUFPLElBQUksQ0FBQyxXQUFXLEVBQUUsQ0FBQztTQUMzQjthQUFNO1lBQ0wsT0FBTyxLQUFLLENBQUM7U0FDZDtJQUNILENBQUM7SUFQRCw0Q0FPQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IHtBYnNvbHV0ZUZzUGF0aCwgRmlsZVN5c3RlbX0gZnJvbSAnLi4vLi4vLi4vLi4vc3JjL25ndHNjL2ZpbGVfc3lzdGVtJztcblxuLyoqXG4gKiBSZXR1cm5zIHRydWUgaWYgdGhlIGdpdmVuIGBwYXRoYCBpcyBhIGRpcmVjdG9yeSAobm90IGEgc3ltbGluaykgYW5kIGFjdHVhbGx5IGV4aXN0cy5cbiAqXG4gKiBAcGFyYW0gZnMgdGhlIGN1cnJlbnQgZmlsZXN5c3RlbVxuICogQHBhcmFtIHBhdGggdGhlIHBhdGggdG8gY2hlY2tcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGlzTG9jYWxEaXJlY3RvcnkoZnM6IEZpbGVTeXN0ZW0sIHBhdGg6IEFic29sdXRlRnNQYXRoKTogYm9vbGVhbiB7XG4gIGlmIChmcy5leGlzdHMocGF0aCkpIHtcbiAgICBjb25zdCBzdGF0ID0gZnMubHN0YXQocGF0aCk7XG4gICAgcmV0dXJuIHN0YXQuaXNEaXJlY3RvcnkoKTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cbn1cbiJdfQ==