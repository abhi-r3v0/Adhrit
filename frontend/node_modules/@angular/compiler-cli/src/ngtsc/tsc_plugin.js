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
        define("@angular/compiler-cli/src/ngtsc/tsc_plugin", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/core", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/src/ngtsc/incremental", "@angular/compiler-cli/src/ngtsc/perf", "@angular/compiler-cli/src/ngtsc/shims", "@angular/compiler-cli/src/ngtsc/typecheck/src/augmented_program"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.NgTscPlugin = void 0;
    var tslib_1 = require("tslib");
    var core_1 = require("@angular/compiler-cli/src/ngtsc/core");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var incremental_1 = require("@angular/compiler-cli/src/ngtsc/incremental");
    var perf_1 = require("@angular/compiler-cli/src/ngtsc/perf");
    var shims_1 = require("@angular/compiler-cli/src/ngtsc/shims");
    var augmented_program_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/augmented_program");
    /**
     * A plugin for `tsc_wrapped` which allows Angular compilation from a plain `ts_library`.
     */
    var NgTscPlugin = /** @class */ (function () {
        function NgTscPlugin(ngOptions) {
            this.ngOptions = ngOptions;
            this.name = 'ngtsc';
            this.options = null;
            this.host = null;
            this._compiler = null;
            file_system_1.setFileSystem(new file_system_1.NodeJSFileSystem());
        }
        Object.defineProperty(NgTscPlugin.prototype, "compiler", {
            get: function () {
                if (this._compiler === null) {
                    throw new Error('Lifecycle error: setupCompilation() must be called first.');
                }
                return this._compiler;
            },
            enumerable: false,
            configurable: true
        });
        NgTscPlugin.prototype.wrapHost = function (host, inputFiles, options) {
            // TODO(alxhub): Eventually the `wrapHost()` API will accept the old `ts.Program` (if one is
            // available). When it does, its `ts.SourceFile`s need to be re-tagged to enable proper
            // incremental compilation.
            this.options = tslib_1.__assign(tslib_1.__assign({}, this.ngOptions), options);
            this.host = core_1.NgCompilerHost.wrap(host, inputFiles, this.options, /* oldProgram */ null);
            return this.host;
        };
        NgTscPlugin.prototype.setupCompilation = function (program, oldProgram) {
            if (this.host === null || this.options === null) {
                throw new Error('Lifecycle error: setupCompilation() before wrapHost().');
            }
            this.host.postProgramCreationCleanup();
            shims_1.untagAllTsFiles(program);
            var typeCheckStrategy = new augmented_program_1.ReusedProgramStrategy(program, this.host, this.options, this.host.shimExtensionPrefixes);
            this._compiler = new core_1.NgCompiler(this.host, this.options, program, typeCheckStrategy, new incremental_1.PatchedProgramIncrementalBuildStrategy(), oldProgram, perf_1.NOOP_PERF_RECORDER);
            return {
                ignoreForDiagnostics: this._compiler.ignoreForDiagnostics,
                ignoreForEmit: this._compiler.ignoreForEmit,
            };
        };
        NgTscPlugin.prototype.getDiagnostics = function (file) {
            return this.compiler.getDiagnostics(file);
        };
        NgTscPlugin.prototype.getOptionDiagnostics = function () {
            return this.compiler.getOptionDiagnostics();
        };
        NgTscPlugin.prototype.getNextProgram = function () {
            return this.compiler.getNextProgram();
        };
        NgTscPlugin.prototype.createTransformers = function () {
            return this.compiler.prepareEmit().transformers;
        };
        return NgTscPlugin;
    }());
    exports.NgTscPlugin = NgTscPlugin;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHNjX3BsdWdpbi5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvdHNjX3BsdWdpbi50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBSUgsNkRBQWtEO0lBRWxELDJFQUE4RDtJQUM5RCwyRUFBcUU7SUFDckUsNkRBQTBDO0lBQzFDLCtEQUF3QztJQUN4QyxxR0FBd0U7SUEyQ3hFOztPQUVHO0lBQ0g7UUFjRSxxQkFBb0IsU0FBYTtZQUFiLGNBQVMsR0FBVCxTQUFTLENBQUk7WUFiakMsU0FBSSxHQUFHLE9BQU8sQ0FBQztZQUVQLFlBQU8sR0FBMkIsSUFBSSxDQUFDO1lBQ3ZDLFNBQUksR0FBd0IsSUFBSSxDQUFDO1lBQ2pDLGNBQVMsR0FBb0IsSUFBSSxDQUFDO1lBVXhDLDJCQUFhLENBQUMsSUFBSSw4QkFBZ0IsRUFBRSxDQUFDLENBQUM7UUFDeEMsQ0FBQztRQVRELHNCQUFJLGlDQUFRO2lCQUFaO2dCQUNFLElBQUksSUFBSSxDQUFDLFNBQVMsS0FBSyxJQUFJLEVBQUU7b0JBQzNCLE1BQU0sSUFBSSxLQUFLLENBQUMsMkRBQTJELENBQUMsQ0FBQztpQkFDOUU7Z0JBQ0QsT0FBTyxJQUFJLENBQUMsU0FBUyxDQUFDO1lBQ3hCLENBQUM7OztXQUFBO1FBTUQsOEJBQVEsR0FBUixVQUNJLElBQWlELEVBQUUsVUFBNkIsRUFDaEYsT0FBMkI7WUFDN0IsNEZBQTRGO1lBQzVGLHVGQUF1RjtZQUN2RiwyQkFBMkI7WUFDM0IsSUFBSSxDQUFDLE9BQU8sR0FBRyxzQ0FBSSxJQUFJLENBQUMsU0FBUyxHQUFLLE9BQU8sQ0FBc0IsQ0FBQztZQUNwRSxJQUFJLENBQUMsSUFBSSxHQUFHLHFCQUFjLENBQUMsSUFBSSxDQUFDLElBQUksRUFBRSxVQUFVLEVBQUUsSUFBSSxDQUFDLE9BQU8sRUFBRSxnQkFBZ0IsQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUN2RixPQUFPLElBQUksQ0FBQyxJQUFJLENBQUM7UUFDbkIsQ0FBQztRQUVELHNDQUFnQixHQUFoQixVQUFpQixPQUFtQixFQUFFLFVBQXVCO1lBSTNELElBQUksSUFBSSxDQUFDLElBQUksS0FBSyxJQUFJLElBQUksSUFBSSxDQUFDLE9BQU8sS0FBSyxJQUFJLEVBQUU7Z0JBQy9DLE1BQU0sSUFBSSxLQUFLLENBQUMsd0RBQXdELENBQUMsQ0FBQzthQUMzRTtZQUNELElBQUksQ0FBQyxJQUFJLENBQUMsMEJBQTBCLEVBQUUsQ0FBQztZQUN2Qyx1QkFBZSxDQUFDLE9BQU8sQ0FBQyxDQUFDO1lBQ3pCLElBQU0saUJBQWlCLEdBQUcsSUFBSSx5Q0FBcUIsQ0FDL0MsT0FBTyxFQUFFLElBQUksQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLE9BQU8sRUFBRSxJQUFJLENBQUMsSUFBSSxDQUFDLHFCQUFxQixDQUFDLENBQUM7WUFDdkUsSUFBSSxDQUFDLFNBQVMsR0FBRyxJQUFJLGlCQUFVLENBQzNCLElBQUksQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLE9BQU8sRUFBRSxPQUFPLEVBQUUsaUJBQWlCLEVBQ25ELElBQUksb0RBQXNDLEVBQUUsRUFBRSxVQUFVLEVBQUUseUJBQWtCLENBQUMsQ0FBQztZQUNsRixPQUFPO2dCQUNMLG9CQUFvQixFQUFFLElBQUksQ0FBQyxTQUFTLENBQUMsb0JBQW9CO2dCQUN6RCxhQUFhLEVBQUUsSUFBSSxDQUFDLFNBQVMsQ0FBQyxhQUFhO2FBQzVDLENBQUM7UUFDSixDQUFDO1FBRUQsb0NBQWMsR0FBZCxVQUFlLElBQW9CO1lBQ2pDLE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxjQUFjLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDNUMsQ0FBQztRQUVELDBDQUFvQixHQUFwQjtZQUNFLE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxvQkFBb0IsRUFBRSxDQUFDO1FBQzlDLENBQUM7UUFFRCxvQ0FBYyxHQUFkO1lBQ0UsT0FBTyxJQUFJLENBQUMsUUFBUSxDQUFDLGNBQWMsRUFBRSxDQUFDO1FBQ3hDLENBQUM7UUFFRCx3Q0FBa0IsR0FBbEI7WUFDRSxPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMsV0FBVyxFQUFFLENBQUMsWUFBWSxDQUFDO1FBQ2xELENBQUM7UUFDSCxrQkFBQztJQUFELENBQUMsQUFoRUQsSUFnRUM7SUFoRVksa0NBQVciLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7TmdDb21waWxlciwgTmdDb21waWxlckhvc3R9IGZyb20gJy4vY29yZSc7XG5pbXBvcnQge05nQ29tcGlsZXJPcHRpb25zLCBVbmlmaWVkTW9kdWxlc0hvc3R9IGZyb20gJy4vY29yZS9hcGknO1xuaW1wb3J0IHtOb2RlSlNGaWxlU3lzdGVtLCBzZXRGaWxlU3lzdGVtfSBmcm9tICcuL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7UGF0Y2hlZFByb2dyYW1JbmNyZW1lbnRhbEJ1aWxkU3RyYXRlZ3l9IGZyb20gJy4vaW5jcmVtZW50YWwnO1xuaW1wb3J0IHtOT09QX1BFUkZfUkVDT1JERVJ9IGZyb20gJy4vcGVyZic7XG5pbXBvcnQge3VudGFnQWxsVHNGaWxlc30gZnJvbSAnLi9zaGltcyc7XG5pbXBvcnQge1JldXNlZFByb2dyYW1TdHJhdGVneX0gZnJvbSAnLi90eXBlY2hlY2svc3JjL2F1Z21lbnRlZF9wcm9ncmFtJztcblxuLy8gVGhlIGZvbGxvd2luZyBpcyBuZWVkZWQgdG8gZml4IGEgdGhlIGNoaWNrZW4tYW5kLWVnZyBpc3N1ZSB3aGVyZSB0aGUgc3luYyAoaW50byBnMykgc2NyaXB0IHdpbGxcbi8vIHJlZnVzZSB0byBhY2NlcHQgdGhpcyBmaWxlIHVubGVzcyB0aGUgZm9sbG93aW5nIHN0cmluZyBhcHBlYXJzOlxuLy8gaW1wb3J0ICogYXMgcGx1Z2luIGZyb20gJ0BiYXplbC90eXBlc2NyaXB0L2ludGVybmFsL3RzY193cmFwcGVkL3BsdWdpbl9hcGknO1xuXG4vKipcbiAqIEEgYHRzLkNvbXBpbGVySG9zdGAgd2hpY2ggYWxzbyByZXR1cm5zIGEgbGlzdCBvZiBpbnB1dCBmaWxlcywgb3V0IG9mIHdoaWNoIHRoZSBgdHMuUHJvZ3JhbWBcbiAqIHNob3VsZCBiZSBjcmVhdGVkLlxuICpcbiAqIEN1cnJlbnRseSBtaXJyb3JlZCBmcm9tIEBiYXplbC90eXBlc2NyaXB0L2ludGVybmFsL3RzY193cmFwcGVkL3BsdWdpbl9hcGkgKHdpdGggdGhlIG5hbWluZyBvZlxuICogYGZpbGVOYW1lVG9Nb2R1bGVOYW1lYCBjb3JyZWN0ZWQpLlxuICovXG5pbnRlcmZhY2UgUGx1Z2luQ29tcGlsZXJIb3N0IGV4dGVuZHMgdHMuQ29tcGlsZXJIb3N0LCBQYXJ0aWFsPFVuaWZpZWRNb2R1bGVzSG9zdD4ge1xuICByZWFkb25seSBpbnB1dEZpbGVzOiBSZWFkb25seUFycmF5PHN0cmluZz47XG59XG5cbi8qKlxuICogTWlycm9ycyB0aGUgcGx1Z2luIGludGVyZmFjZSBmcm9tIHRzY193cmFwcGVkIHdoaWNoIGlzIGN1cnJlbnRseSB1bmRlciBhY3RpdmUgZGV2ZWxvcG1lbnQuIFRvXG4gKiBlbmFibGUgcHJvZ3Jlc3MgdG8gYmUgbWFkZSBpbiBwYXJhbGxlbCwgdGhlIHVwc3RyZWFtIGludGVyZmFjZSBpc24ndCBpbXBsZW1lbnRlZCBkaXJlY3RseS5cbiAqIEluc3RlYWQsIGBUc2NQbHVnaW5gIGhlcmUgaXMgc3RydWN0dXJhbGx5IGFzc2lnbmFibGUgdG8gd2hhdCB0c2Nfd3JhcHBlZCBleHBlY3RzLlxuICovXG5pbnRlcmZhY2UgVHNjUGx1Z2luIHtcbiAgcmVhZG9ubHkgbmFtZTogc3RyaW5nO1xuXG4gIHdyYXBIb3N0KFxuICAgICAgaG9zdDogdHMuQ29tcGlsZXJIb3N0JlBhcnRpYWw8VW5pZmllZE1vZHVsZXNIb3N0PiwgaW5wdXRGaWxlczogUmVhZG9ubHlBcnJheTxzdHJpbmc+LFxuICAgICAgb3B0aW9uczogdHMuQ29tcGlsZXJPcHRpb25zKTogUGx1Z2luQ29tcGlsZXJIb3N0O1xuXG4gIHNldHVwQ29tcGlsYXRpb24ocHJvZ3JhbTogdHMuUHJvZ3JhbSwgb2xkUHJvZ3JhbT86IHRzLlByb2dyYW0pOiB7XG4gICAgaWdub3JlRm9yRGlhZ25vc3RpY3M6IFNldDx0cy5Tb3VyY2VGaWxlPixcbiAgICBpZ25vcmVGb3JFbWl0OiBTZXQ8dHMuU291cmNlRmlsZT4sXG4gIH07XG5cbiAgZ2V0RGlhZ25vc3RpY3MoZmlsZT86IHRzLlNvdXJjZUZpbGUpOiB0cy5EaWFnbm9zdGljW107XG5cbiAgZ2V0T3B0aW9uRGlhZ25vc3RpY3MoKTogdHMuRGlhZ25vc3RpY1tdO1xuXG4gIGdldE5leHRQcm9ncmFtKCk6IHRzLlByb2dyYW07XG5cbiAgY3JlYXRlVHJhbnNmb3JtZXJzKCk6IHRzLkN1c3RvbVRyYW5zZm9ybWVycztcbn1cblxuLyoqXG4gKiBBIHBsdWdpbiBmb3IgYHRzY193cmFwcGVkYCB3aGljaCBhbGxvd3MgQW5ndWxhciBjb21waWxhdGlvbiBmcm9tIGEgcGxhaW4gYHRzX2xpYnJhcnlgLlxuICovXG5leHBvcnQgY2xhc3MgTmdUc2NQbHVnaW4gaW1wbGVtZW50cyBUc2NQbHVnaW4ge1xuICBuYW1lID0gJ25ndHNjJztcblxuICBwcml2YXRlIG9wdGlvbnM6IE5nQ29tcGlsZXJPcHRpb25zfG51bGwgPSBudWxsO1xuICBwcml2YXRlIGhvc3Q6IE5nQ29tcGlsZXJIb3N0fG51bGwgPSBudWxsO1xuICBwcml2YXRlIF9jb21waWxlcjogTmdDb21waWxlcnxudWxsID0gbnVsbDtcblxuICBnZXQgY29tcGlsZXIoKTogTmdDb21waWxlciB7XG4gICAgaWYgKHRoaXMuX2NvbXBpbGVyID09PSBudWxsKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoJ0xpZmVjeWNsZSBlcnJvcjogc2V0dXBDb21waWxhdGlvbigpIG11c3QgYmUgY2FsbGVkIGZpcnN0LicpO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5fY29tcGlsZXI7XG4gIH1cblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIG5nT3B0aW9uczoge30pIHtcbiAgICBzZXRGaWxlU3lzdGVtKG5ldyBOb2RlSlNGaWxlU3lzdGVtKCkpO1xuICB9XG5cbiAgd3JhcEhvc3QoXG4gICAgICBob3N0OiB0cy5Db21waWxlckhvc3QmUGFydGlhbDxVbmlmaWVkTW9kdWxlc0hvc3Q+LCBpbnB1dEZpbGVzOiByZWFkb25seSBzdHJpbmdbXSxcbiAgICAgIG9wdGlvbnM6IHRzLkNvbXBpbGVyT3B0aW9ucyk6IFBsdWdpbkNvbXBpbGVySG9zdCB7XG4gICAgLy8gVE9ETyhhbHhodWIpOiBFdmVudHVhbGx5IHRoZSBgd3JhcEhvc3QoKWAgQVBJIHdpbGwgYWNjZXB0IHRoZSBvbGQgYHRzLlByb2dyYW1gIChpZiBvbmUgaXNcbiAgICAvLyBhdmFpbGFibGUpLiBXaGVuIGl0IGRvZXMsIGl0cyBgdHMuU291cmNlRmlsZWBzIG5lZWQgdG8gYmUgcmUtdGFnZ2VkIHRvIGVuYWJsZSBwcm9wZXJcbiAgICAvLyBpbmNyZW1lbnRhbCBjb21waWxhdGlvbi5cbiAgICB0aGlzLm9wdGlvbnMgPSB7Li4udGhpcy5uZ09wdGlvbnMsIC4uLm9wdGlvbnN9IGFzIE5nQ29tcGlsZXJPcHRpb25zO1xuICAgIHRoaXMuaG9zdCA9IE5nQ29tcGlsZXJIb3N0LndyYXAoaG9zdCwgaW5wdXRGaWxlcywgdGhpcy5vcHRpb25zLCAvKiBvbGRQcm9ncmFtICovIG51bGwpO1xuICAgIHJldHVybiB0aGlzLmhvc3Q7XG4gIH1cblxuICBzZXR1cENvbXBpbGF0aW9uKHByb2dyYW06IHRzLlByb2dyYW0sIG9sZFByb2dyYW0/OiB0cy5Qcm9ncmFtKToge1xuICAgIGlnbm9yZUZvckRpYWdub3N0aWNzOiBTZXQ8dHMuU291cmNlRmlsZT4sXG4gICAgaWdub3JlRm9yRW1pdDogU2V0PHRzLlNvdXJjZUZpbGU+LFxuICB9IHtcbiAgICBpZiAodGhpcy5ob3N0ID09PSBudWxsIHx8IHRoaXMub3B0aW9ucyA9PT0gbnVsbCkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKCdMaWZlY3ljbGUgZXJyb3I6IHNldHVwQ29tcGlsYXRpb24oKSBiZWZvcmUgd3JhcEhvc3QoKS4nKTtcbiAgICB9XG4gICAgdGhpcy5ob3N0LnBvc3RQcm9ncmFtQ3JlYXRpb25DbGVhbnVwKCk7XG4gICAgdW50YWdBbGxUc0ZpbGVzKHByb2dyYW0pO1xuICAgIGNvbnN0IHR5cGVDaGVja1N0cmF0ZWd5ID0gbmV3IFJldXNlZFByb2dyYW1TdHJhdGVneShcbiAgICAgICAgcHJvZ3JhbSwgdGhpcy5ob3N0LCB0aGlzLm9wdGlvbnMsIHRoaXMuaG9zdC5zaGltRXh0ZW5zaW9uUHJlZml4ZXMpO1xuICAgIHRoaXMuX2NvbXBpbGVyID0gbmV3IE5nQ29tcGlsZXIoXG4gICAgICAgIHRoaXMuaG9zdCwgdGhpcy5vcHRpb25zLCBwcm9ncmFtLCB0eXBlQ2hlY2tTdHJhdGVneSxcbiAgICAgICAgbmV3IFBhdGNoZWRQcm9ncmFtSW5jcmVtZW50YWxCdWlsZFN0cmF0ZWd5KCksIG9sZFByb2dyYW0sIE5PT1BfUEVSRl9SRUNPUkRFUik7XG4gICAgcmV0dXJuIHtcbiAgICAgIGlnbm9yZUZvckRpYWdub3N0aWNzOiB0aGlzLl9jb21waWxlci5pZ25vcmVGb3JEaWFnbm9zdGljcyxcbiAgICAgIGlnbm9yZUZvckVtaXQ6IHRoaXMuX2NvbXBpbGVyLmlnbm9yZUZvckVtaXQsXG4gICAgfTtcbiAgfVxuXG4gIGdldERpYWdub3N0aWNzKGZpbGU/OiB0cy5Tb3VyY2VGaWxlKTogdHMuRGlhZ25vc3RpY1tdIHtcbiAgICByZXR1cm4gdGhpcy5jb21waWxlci5nZXREaWFnbm9zdGljcyhmaWxlKTtcbiAgfVxuXG4gIGdldE9wdGlvbkRpYWdub3N0aWNzKCk6IHRzLkRpYWdub3N0aWNbXSB7XG4gICAgcmV0dXJuIHRoaXMuY29tcGlsZXIuZ2V0T3B0aW9uRGlhZ25vc3RpY3MoKTtcbiAgfVxuXG4gIGdldE5leHRQcm9ncmFtKCk6IHRzLlByb2dyYW0ge1xuICAgIHJldHVybiB0aGlzLmNvbXBpbGVyLmdldE5leHRQcm9ncmFtKCk7XG4gIH1cblxuICBjcmVhdGVUcmFuc2Zvcm1lcnMoKTogdHMuQ3VzdG9tVHJhbnNmb3JtZXJzIHtcbiAgICByZXR1cm4gdGhpcy5jb21waWxlci5wcmVwYXJlRW1pdCgpLnRyYW5zZm9ybWVycztcbiAgfVxufVxuIl19