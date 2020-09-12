(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/src/ngtsc/file_system/src/util", ["require", "exports"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.getSourceFileOrError = exports.stripExtension = exports.normalizeSeparators = void 0;
    var TS_DTS_JS_EXTENSION = /(?:\.d)?\.ts$|\.js$/;
    /**
     * Convert Windows-style separators to POSIX separators.
     */
    function normalizeSeparators(path) {
        // TODO: normalize path only for OS that need it.
        return path.replace(/\\/g, '/');
    }
    exports.normalizeSeparators = normalizeSeparators;
    /**
     * Remove a .ts, .d.ts, or .js extension from a file name.
     */
    function stripExtension(path) {
        return path.replace(TS_DTS_JS_EXTENSION, '');
    }
    exports.stripExtension = stripExtension;
    function getSourceFileOrError(program, fileName) {
        var sf = program.getSourceFile(fileName);
        if (sf === undefined) {
            throw new Error("Program does not contain \"" + fileName + "\" - available files are " + program.getSourceFiles().map(function (sf) { return sf.fileName; }).join(', '));
        }
        return sf;
    }
    exports.getSourceFileOrError = getSourceFileOrError;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvZmlsZV9zeXN0ZW0vc3JjL3V0aWwudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0lBVUEsSUFBTSxtQkFBbUIsR0FBRyxxQkFBcUIsQ0FBQztJQUVsRDs7T0FFRztJQUNILFNBQWdCLG1CQUFtQixDQUFDLElBQVk7UUFDOUMsaURBQWlEO1FBQ2pELE9BQU8sSUFBSSxDQUFDLE9BQU8sQ0FBQyxLQUFLLEVBQUUsR0FBRyxDQUFDLENBQUM7SUFDbEMsQ0FBQztJQUhELGtEQUdDO0lBRUQ7O09BRUc7SUFDSCxTQUFnQixjQUFjLENBQXVCLElBQU87UUFDMUQsT0FBTyxJQUFJLENBQUMsT0FBTyxDQUFDLG1CQUFtQixFQUFFLEVBQUUsQ0FBTSxDQUFDO0lBQ3BELENBQUM7SUFGRCx3Q0FFQztJQUVELFNBQWdCLG9CQUFvQixDQUFDLE9BQW1CLEVBQUUsUUFBd0I7UUFDaEYsSUFBTSxFQUFFLEdBQUcsT0FBTyxDQUFDLGFBQWEsQ0FBQyxRQUFRLENBQUMsQ0FBQztRQUMzQyxJQUFJLEVBQUUsS0FBSyxTQUFTLEVBQUU7WUFDcEIsTUFBTSxJQUFJLEtBQUssQ0FBQyxnQ0FBNkIsUUFBUSxpQ0FDakQsT0FBTyxDQUFDLGNBQWMsRUFBRSxDQUFDLEdBQUcsQ0FBQyxVQUFBLEVBQUUsSUFBSSxPQUFBLEVBQUUsQ0FBQyxRQUFRLEVBQVgsQ0FBVyxDQUFDLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBRyxDQUFDLENBQUM7U0FDbkU7UUFDRCxPQUFPLEVBQUUsQ0FBQztJQUNaLENBQUM7SUFQRCxvREFPQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5pbXBvcnQge0Fic29sdXRlRnNQYXRoLCBQYXRoU3RyaW5nfSBmcm9tICcuL3R5cGVzJztcblxuY29uc3QgVFNfRFRTX0pTX0VYVEVOU0lPTiA9IC8oPzpcXC5kKT9cXC50cyR8XFwuanMkLztcblxuLyoqXG4gKiBDb252ZXJ0IFdpbmRvd3Mtc3R5bGUgc2VwYXJhdG9ycyB0byBQT1NJWCBzZXBhcmF0b3JzLlxuICovXG5leHBvcnQgZnVuY3Rpb24gbm9ybWFsaXplU2VwYXJhdG9ycyhwYXRoOiBzdHJpbmcpOiBzdHJpbmcge1xuICAvLyBUT0RPOiBub3JtYWxpemUgcGF0aCBvbmx5IGZvciBPUyB0aGF0IG5lZWQgaXQuXG4gIHJldHVybiBwYXRoLnJlcGxhY2UoL1xcXFwvZywgJy8nKTtcbn1cblxuLyoqXG4gKiBSZW1vdmUgYSAudHMsIC5kLnRzLCBvciAuanMgZXh0ZW5zaW9uIGZyb20gYSBmaWxlIG5hbWUuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBzdHJpcEV4dGVuc2lvbjxUIGV4dGVuZHMgUGF0aFN0cmluZz4ocGF0aDogVCk6IFQge1xuICByZXR1cm4gcGF0aC5yZXBsYWNlKFRTX0RUU19KU19FWFRFTlNJT04sICcnKSBhcyBUO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0U291cmNlRmlsZU9yRXJyb3IocHJvZ3JhbTogdHMuUHJvZ3JhbSwgZmlsZU5hbWU6IEFic29sdXRlRnNQYXRoKTogdHMuU291cmNlRmlsZSB7XG4gIGNvbnN0IHNmID0gcHJvZ3JhbS5nZXRTb3VyY2VGaWxlKGZpbGVOYW1lKTtcbiAgaWYgKHNmID09PSB1bmRlZmluZWQpIHtcbiAgICB0aHJvdyBuZXcgRXJyb3IoYFByb2dyYW0gZG9lcyBub3QgY29udGFpbiBcIiR7ZmlsZU5hbWV9XCIgLSBhdmFpbGFibGUgZmlsZXMgYXJlICR7XG4gICAgICAgIHByb2dyYW0uZ2V0U291cmNlRmlsZXMoKS5tYXAoc2YgPT4gc2YuZmlsZU5hbWUpLmpvaW4oJywgJyl9YCk7XG4gIH1cbiAgcmV0dXJuIHNmO1xufVxuIl19