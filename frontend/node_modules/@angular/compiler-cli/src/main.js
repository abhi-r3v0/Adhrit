#!/usr/bin/env node
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
        define("@angular/compiler-cli/src/main", ["require", "exports", "tslib", "reflect-metadata", "typescript", "@angular/compiler-cli/src/transformers/api", "@angular/compiler-cli/src/transformers/util", "@angular/compiler-cli/src/perform_compile", "@angular/compiler-cli/src/perform_watch", "@angular/compiler-cli/src/ngtsc/file_system"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.watchMode = exports.readCommandLineAndConfiguration = exports.readNgcCommandLineAndConfiguration = exports.mainDiagnosticsForTest = exports.main = void 0;
    var tslib_1 = require("tslib");
    // Must be imported first, because Angular decorators throw on load.
    require("reflect-metadata");
    var ts = require("typescript");
    var api = require("@angular/compiler-cli/src/transformers/api");
    var util_1 = require("@angular/compiler-cli/src/transformers/util");
    var perform_compile_1 = require("@angular/compiler-cli/src/perform_compile");
    var perform_watch_1 = require("@angular/compiler-cli/src/perform_watch");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    function main(args, consoleError, config, customTransformers, programReuse, modifiedResourceFiles) {
        if (consoleError === void 0) { consoleError = console.error; }
        var _a = config || readNgcCommandLineAndConfiguration(args), project = _a.project, rootNames = _a.rootNames, options = _a.options, configErrors = _a.errors, watch = _a.watch, emitFlags = _a.emitFlags;
        if (configErrors.length) {
            return reportErrorsAndExit(configErrors, /*options*/ undefined, consoleError);
        }
        if (watch) {
            var result = watchMode(project, options, consoleError);
            return reportErrorsAndExit(result.firstCompileResult, options, consoleError);
        }
        var oldProgram;
        if (programReuse !== undefined) {
            oldProgram = programReuse.program;
        }
        var _b = perform_compile_1.performCompilation({
            rootNames: rootNames,
            options: options,
            emitFlags: emitFlags,
            oldProgram: oldProgram,
            emitCallback: createEmitCallback(options),
            customTransformers: customTransformers,
            modifiedResourceFiles: modifiedResourceFiles
        }), compileDiags = _b.diagnostics, program = _b.program;
        if (programReuse !== undefined) {
            programReuse.program = program;
        }
        return reportErrorsAndExit(compileDiags, options, consoleError);
    }
    exports.main = main;
    function mainDiagnosticsForTest(args, config, programReuse, modifiedResourceFiles) {
        var _a = config || readNgcCommandLineAndConfiguration(args), project = _a.project, rootNames = _a.rootNames, options = _a.options, configErrors = _a.errors, watch = _a.watch, emitFlags = _a.emitFlags;
        if (configErrors.length) {
            return configErrors;
        }
        var oldProgram;
        if (programReuse !== undefined) {
            oldProgram = programReuse.program;
        }
        var _b = perform_compile_1.performCompilation({
            rootNames: rootNames,
            options: options,
            emitFlags: emitFlags,
            oldProgram: oldProgram,
            modifiedResourceFiles: modifiedResourceFiles,
            emitCallback: createEmitCallback(options),
        }), compileDiags = _b.diagnostics, program = _b.program;
        if (programReuse !== undefined) {
            programReuse.program = program;
        }
        return compileDiags;
    }
    exports.mainDiagnosticsForTest = mainDiagnosticsForTest;
    function createEmitCallback(options) {
        if (!options.annotateForClosureCompiler) {
            return undefined;
        }
        var tsickleHost = {
            shouldSkipTsickleProcessing: function (fileName) { return /\.d\.ts$/.test(fileName) ||
                // View Engine's generated files were never intended to be processed with tsickle.
                (!options.enableIvy && util_1.GENERATED_FILES.test(fileName)); },
            pathToModuleName: function (context, importPath) { return ''; },
            shouldIgnoreWarningsForPath: function (filePath) { return false; },
            fileNameToModuleId: function (fileName) { return fileName; },
            googmodule: false,
            untyped: true,
            convertIndexImportShorthand: false,
            // Decorators are transformed as part of the Angular compiler programs. To avoid
            // conflicts, we disable decorator transformations for tsickle.
            transformDecorators: false,
            transformTypesToClosure: true,
        };
        return function (_a) {
            var program = _a.program, targetSourceFile = _a.targetSourceFile, writeFile = _a.writeFile, cancellationToken = _a.cancellationToken, emitOnlyDtsFiles = _a.emitOnlyDtsFiles, _b = _a.customTransformers, customTransformers = _b === void 0 ? {} : _b, host = _a.host, options = _a.options;
            // tslint:disable-next-line:no-require-imports only depend on tsickle if requested
            return require('tsickle').emitWithTsickle(program, tslib_1.__assign(tslib_1.__assign({}, tsickleHost), { options: options, host: host, moduleResolutionHost: host }), host, options, targetSourceFile, writeFile, cancellationToken, emitOnlyDtsFiles, {
                beforeTs: customTransformers.before,
                afterTs: customTransformers.after,
            });
        };
    }
    function readNgcCommandLineAndConfiguration(args) {
        var options = {};
        var parsedArgs = require('minimist')(args);
        if (parsedArgs.i18nFile)
            options.i18nInFile = parsedArgs.i18nFile;
        if (parsedArgs.i18nFormat)
            options.i18nInFormat = parsedArgs.i18nFormat;
        if (parsedArgs.locale)
            options.i18nInLocale = parsedArgs.locale;
        var mt = parsedArgs.missingTranslation;
        if (mt === 'error' || mt === 'warning' || mt === 'ignore') {
            options.i18nInMissingTranslations = mt;
        }
        var config = readCommandLineAndConfiguration(args, options, ['i18nFile', 'i18nFormat', 'locale', 'missingTranslation', 'watch']);
        var watch = parsedArgs.w || parsedArgs.watch;
        return tslib_1.__assign(tslib_1.__assign({}, config), { watch: watch });
    }
    exports.readNgcCommandLineAndConfiguration = readNgcCommandLineAndConfiguration;
    function readCommandLineAndConfiguration(args, existingOptions, ngCmdLineOptions) {
        if (existingOptions === void 0) { existingOptions = {}; }
        if (ngCmdLineOptions === void 0) { ngCmdLineOptions = []; }
        var cmdConfig = ts.parseCommandLine(args);
        var project = cmdConfig.options.project || '.';
        var cmdErrors = cmdConfig.errors.filter(function (e) {
            if (typeof e.messageText === 'string') {
                var msg_1 = e.messageText;
                return !ngCmdLineOptions.some(function (o) { return msg_1.indexOf(o) >= 0; });
            }
            return true;
        });
        if (cmdErrors.length) {
            return {
                project: project,
                rootNames: [],
                options: cmdConfig.options,
                errors: cmdErrors,
                emitFlags: api.EmitFlags.Default
            };
        }
        var config = perform_compile_1.readConfiguration(project, cmdConfig.options);
        var options = tslib_1.__assign(tslib_1.__assign({}, config.options), existingOptions);
        if (options.locale) {
            options.i18nInLocale = options.locale;
        }
        return {
            project: project,
            rootNames: config.rootNames,
            options: options,
            errors: config.errors,
            emitFlags: config.emitFlags
        };
    }
    exports.readCommandLineAndConfiguration = readCommandLineAndConfiguration;
    function getFormatDiagnosticsHost(options) {
        var basePath = options ? options.basePath : undefined;
        return {
            getCurrentDirectory: function () { return basePath || ts.sys.getCurrentDirectory(); },
            // We need to normalize the path separators here because by default, TypeScript
            // compiler hosts use posix canonical paths. In order to print consistent diagnostics,
            // we also normalize the paths.
            getCanonicalFileName: function (fileName) { return fileName.replace(/\\/g, '/'); },
            getNewLine: function () {
                // Manually determine the proper new line string based on the passed compiler
                // options. There is no public TypeScript function that returns the corresponding
                // new line string. see: https://github.com/Microsoft/TypeScript/issues/29581
                if (options && options.newLine !== undefined) {
                    return options.newLine === ts.NewLineKind.LineFeed ? '\n' : '\r\n';
                }
                return ts.sys.newLine;
            },
        };
    }
    function reportErrorsAndExit(allDiagnostics, options, consoleError) {
        if (consoleError === void 0) { consoleError = console.error; }
        var errorsAndWarnings = perform_compile_1.filterErrorsAndWarnings(allDiagnostics);
        printDiagnostics(errorsAndWarnings, options, consoleError);
        return perform_compile_1.exitCodeFromResult(allDiagnostics);
    }
    function watchMode(project, options, consoleError) {
        return perform_watch_1.performWatchCompilation(perform_watch_1.createPerformWatchHost(project, function (diagnostics) {
            printDiagnostics(diagnostics, options, consoleError);
        }, options, function (options) { return createEmitCallback(options); }));
    }
    exports.watchMode = watchMode;
    function printDiagnostics(diagnostics, options, consoleError) {
        if (diagnostics.length === 0) {
            return;
        }
        var formatHost = getFormatDiagnosticsHost(options);
        consoleError(perform_compile_1.formatDiagnostics(diagnostics, formatHost));
    }
    // CLI entry point
    if (require.main === module) {
        var args = process.argv.slice(2);
        // We are running the real compiler so run against the real file-system
        file_system_1.setFileSystem(new file_system_1.NodeJSFileSystem());
        process.exitCode = main(args);
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWFpbi5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbWFpbi50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQ0E7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUVILG9FQUFvRTtJQUNwRSw0QkFBMEI7SUFFMUIsK0JBQWlDO0lBSWpDLGdFQUEwQztJQUMxQyxvRUFBb0Q7SUFFcEQsNkVBQTBLO0lBQzFLLHlFQUFnRjtJQUNoRiwyRUFBb0U7SUFFcEUsU0FBZ0IsSUFBSSxDQUNoQixJQUFjLEVBQUUsWUFBaUQsRUFDakUsTUFBK0IsRUFBRSxrQkFBMkMsRUFBRSxZQUU3RSxFQUNELHFCQUF3QztRQUp4Qiw2QkFBQSxFQUFBLGVBQW9DLE9BQU8sQ0FBQyxLQUFLO1FBSy9ELElBQUEsS0FDQSxNQUFNLElBQUksa0NBQWtDLENBQUMsSUFBSSxDQUFDLEVBRGpELE9BQU8sYUFBQSxFQUFFLFNBQVMsZUFBQSxFQUFFLE9BQU8sYUFBQSxFQUFVLFlBQVksWUFBQSxFQUFFLEtBQUssV0FBQSxFQUFFLFNBQVMsZUFDbEIsQ0FBQztRQUN2RCxJQUFJLFlBQVksQ0FBQyxNQUFNLEVBQUU7WUFDdkIsT0FBTyxtQkFBbUIsQ0FBQyxZQUFZLEVBQUUsV0FBVyxDQUFDLFNBQVMsRUFBRSxZQUFZLENBQUMsQ0FBQztTQUMvRTtRQUNELElBQUksS0FBSyxFQUFFO1lBQ1QsSUFBTSxNQUFNLEdBQUcsU0FBUyxDQUFDLE9BQU8sRUFBRSxPQUFPLEVBQUUsWUFBWSxDQUFDLENBQUM7WUFDekQsT0FBTyxtQkFBbUIsQ0FBQyxNQUFNLENBQUMsa0JBQWtCLEVBQUUsT0FBTyxFQUFFLFlBQVksQ0FBQyxDQUFDO1NBQzlFO1FBRUQsSUFBSSxVQUFpQyxDQUFDO1FBQ3RDLElBQUksWUFBWSxLQUFLLFNBQVMsRUFBRTtZQUM5QixVQUFVLEdBQUcsWUFBWSxDQUFDLE9BQU8sQ0FBQztTQUNuQztRQUVL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QUssQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNuQyx1RUFBdUU7UUFDdkUsMkJBQWEsQ0FBQyxJQUFJLDhCQUFnQixFQUFFLENBQUMsQ0FBQztRQUN0QyxPQUFPLENBQUMsUUFBUSxHQUFHLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztLQUMvQiIsInNvdXJjZXNDb250ZW50IjpbIiMhL3Vzci9iaW4vZW52IG5vZGVcbi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG4vLyBNdXN0IGJlIGltcG9ydGVkIGZpcnN0LCBiZWNhdXNlIEFuZ3VsYXIgZGVjb3JhdG9ycyB0aHJvdyBvbiBsb2FkLlxuaW1wb3J0ICdyZWZsZWN0LW1ldGFkYXRhJztcblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5pbXBvcnQgKiBhcyB0c2lja2xlIGZyb20gJ3RzaWNrbGUnO1xuXG5pbXBvcnQge3JlcGxhY2VUc1dpdGhOZ0luRXJyb3JzfSBmcm9tICcuL25ndHNjL2RpYWdub3N0aWNzJztcbmltcG9ydCAqIGFzIGFwaSBmcm9tICcuL3RyYW5zZm9ybWVycy9hcGknO1xuaW1wb3J0IHtHRU5FUkFURURfRklMRVN9IGZyb20gJy4vdHJhbnNmb3JtZXJzL3V0aWwnO1xuXG5pbXBvcnQge2V4aXRDb2RlRnJvbVJlc3VsdCwgcGVyZm9ybUNvbXBpbGF0aW9uLCByZWFkQ29uZmlndXJhdGlvbiwgZm9ybWF0RGlhZ25vc3RpY3MsIERpYWdub3N0aWNzLCBQYXJzZWRDb25maWd1cmF0aW9uLCBmaWx0ZXJFcnJvcnNBbmRXYXJuaW5nc30gZnJvbSAnLi9wZXJmb3JtX2NvbXBpbGUnO1xuaW1wb3J0IHtwZXJmb3JtV2F0Y2hDb21waWxhdGlvbizCoGNyZWF0ZVBlcmZvcm1XYXRjaEhvc3R9IGZyb20gJy4vcGVyZm9ybV93YXRjaCc7XG5pbXBvcnQge05vZGVKU0ZpbGVTeXN0ZW0sIHNldEZpbGVTeXN0ZW19IGZyb20gJy4vbmd0c2MvZmlsZV9zeXN0ZW0nO1xuXG5leHBvcnQgZnVuY3Rpb24gbWFpbihcbiAgICBhcmdzOiBzdHJpbmdbXSwgY29uc29sZUVycm9yOiAoczogc3RyaW5nKSA9PiB2b2lkID0gY29uc29sZS5lcnJvcixcbiAgICBjb25maWc/OiBOZ2NQYXJzZWRDb25maWd1cmF0aW9uLCBjdXN0b21UcmFuc2Zvcm1lcnM/OiBhcGkuQ3VzdG9tVHJhbnNmb3JtZXJzLCBwcm9ncmFtUmV1c2U/OiB7XG4gICAgICBwcm9ncmFtOiBhcGkuUHJvZ3JhbXx1bmRlZmluZWQsXG4gICAgfSxcbiAgICBtb2RpZmllZFJlc291cmNlRmlsZXM/OiBTZXQ8c3RyaW5nPnxudWxsKTogbnVtYmVyIHtcbiAgbGV0IHtwcm9qZWN0LCByb290TmFtZXMsIG9wdGlvbnMsIGVycm9yczogY29uZmlnRXJyb3JzLCB3YXRjaCwgZW1pdEZsYWdzfSA9XG4gICAgICBjb25maWcgfHwgcmVhZE5nY0NvbW1hbmRMaW5lQW5kQ29uZmlndXJhdGlvbihhcmdzKTtcbiAgaWYgKGNvbmZpZ0Vycm9ycy5sZW5ndGgpIHtcbiAgICByZXR1cm4gcmVwb3J0RXJyb3JzQW5kRXhpdChjb25maWdFcnJvcnMsIC8qb3B0aW9ucyovIHVuZGVmaW5lZCwgY29uc29sZUVycm9yKTtcbiAgfVxuICBpZiAod2F0Y2gpIHtcbiAgICBjb25zdCByZXN1bHQgPSB3YXRjaE1vZGUocHJvamVjdCwgb3B0aW9ucywgY29uc29sZUVycm9yKTtcbiAgICByZXR1cm4gcmVwb3J0RXJyb3JzQW5kRXhpdChyZXN1bHQuZmlyc3RDb21waWxlUmVzdWx0LCBvcHRpb25zLCBjb25zb2xlRXJyb3IpO1xuICB9XG5cbiAgbGV0IG9sZFByb2dyYW06IGFwaS5Qcm9ncmFtfHVuZGVmaW5lZDtcbiAgaWYgKHByb2dyYW1SZXVzZSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgb2xkUHJvZ3JhbSA9IHByb2dyYW1SZXVzZS5wcm9ncmFtO1xuICB9XG5cbiAgY29uc3Qge2RpYWdub3N0aWNzOiBjb21waWxlRGlhZ3MsIHByb2dyYW19ID0gcGVyZm9ybUNvbXBpbGF0aW9uKHtcbiAgICByb290TmFtZXMsXG4gICAgb3B0aW9ucyxcbiAgICBlbWl0RmxhZ3MsXG4gICAgb2xkUHJvZ3JhbSxcbiAgICBlbWl0Q2FsbGJhY2s6IGNyZWF0ZUVtaXRDYWxsYmFjayhvcHRpb25zKSxcbiAgICBjdXN0b21UcmFuc2Zvcm1lcnMsXG4gICAgbW9kaWZpZWRSZXNvdXJjZUZpbGVzXG4gIH0pO1xuICBpZiAocHJvZ3JhbVJldXNlICE9PSB1bmRlZmluZWQpIHtcbiAgICBwcm9ncmFtUmV1c2UucHJvZ3JhbSA9IHByb2dyYW07XG4gIH1cbiAgcmV0dXJuIHJlcG9ydEVycm9yc0FuZEV4aXQoY29tcGlsZURpYWdzLCBvcHRpb25zLCBjb25zb2xlRXJyb3IpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gbWFpbkRpYWdub3N0aWNzRm9yVGVzdChcbiAgICBhcmdzOiBzdHJpbmdbXSwgY29uZmlnPzogTmdjUGFyc2VkQ29uZmlndXJhdGlvbixcbiAgICBwcm9ncmFtUmV1c2U/OiB7cHJvZ3JhbTogYXBpLlByb2dyYW18dW5kZWZpbmVkfSxcbiAgICBtb2RpZmllZFJlc291cmNlRmlsZXM/OiBTZXQ8c3RyaW5nPnxudWxsKTogUmVhZG9ubHlBcnJheTx0cy5EaWFnbm9zdGljfGFwaS5EaWFnbm9zdGljPiB7XG4gIGxldCB7cHJvamVjdCwgcm9vdE5hbWVzLCBvcHRpb25zLCBlcnJvcnM6IGNvbmZpZ0Vycm9ycywgd2F0Y2gsIGVtaXRGbGFnc30gPVxuICAgICAgY29uZmlnIHx8IHJlYWROZ2NDb21tYW5kTGluZUFuZENvbmZpZ3VyYXRpb24oYXJncyk7XG4gIGlmIChjb25maWdFcnJvcnMubGVuZ3RoKSB7XG4gICAgcmV0dXJuIGNvbmZpZ0Vycm9ycztcbiAgfVxuXG4gIGxldCBvbGRQcm9ncmFtOiBhcGkuUHJvZ3JhbXx1bmRlZmluZWQ7XG4gIGlmIChwcm9ncmFtUmV1c2UgIT09IHVuZGVmaW5lZCkge1xuICAgIG9sZFByb2dyYW0gPSBwcm9ncmFtUmV1c2UucHJvZ3JhbTtcbiAgfVxuXG4gIGNvbnN0IHtkaWFnbm9zdGljczogY29tcGlsZURpYWdzLCBwcm9ncmFtfSA9IHBlcmZvcm1Db21waWxhdGlvbih7XG4gICAgcm9vdE5hbWVzLFxuICAgIG9wdGlvbnMsXG4gICAgZW1pdEZsYWdzLFxuICAgIG9sZFByb2dyYW0sXG4gICAgbW9kaWZpZWRSZXNvdXJjZUZpbGVzLFxuICAgIGVtaXRDYWxsYmFjazogY3JlYXRlRW1pdENhbGxiYWNrKG9wdGlvbnMpLFxuICB9KTtcblxuICBpZiAocHJvZ3JhbVJldXNlICE9PSB1bmRlZmluZWQpIHtcbiAgICBwcm9ncmFtUmV1c2UucHJvZ3JhbSA9IHByb2dyYW07XG4gIH1cblxuICByZXR1cm4gY29tcGlsZURpYWdzO1xufVxuXG5mdW5jdGlvbiBjcmVhdGVFbWl0Q2FsbGJhY2sob3B0aW9uczogYXBpLkNvbXBpbGVyT3B0aW9ucyk6IGFwaS5Uc0VtaXRDYWxsYmFja3x1bmRlZmluZWQge1xuICBpZiAoIW9wdGlvbnMuYW5ub3RhdGVGb3JDbG9zdXJlQ29tcGlsZXIpIHtcbiAgICByZXR1cm4gdW5kZWZpbmVkO1xuICB9XG4gIGNvbnN0IHRzaWNrbGVIb3N0OiBQaWNrPFxuICAgICAgdHNpY2tsZS5Uc2lja2xlSG9zdCxcbiAgICAgICdzaG91bGRTa2lwVHNpY2tsZVByb2Nlc3NpbmcnfCdwYXRoVG9Nb2R1bGVOYW1lJ3wnc2hvdWxkSWdub3JlV2FybmluZ3NGb3JQYXRoJ3xcbiAgICAgICdmaWxlTmFtZVRvTW9kdWxlSWQnfCdnb29nbW9kdWxlJ3wndW50eXBlZCd8J2NvbnZlcnRJbmRleEltcG9ydFNob3J0aGFuZCd8XG4gICAgICAndHJhbnNmb3JtRGVjb3JhdG9ycyd8J3RyYW5zZm9ybVR5cGVzVG9DbG9zdXJlJz4gPSB7XG4gICAgc2hvdWxkU2tpcFRzaWNrbGVQcm9jZXNzaW5nOiAoZmlsZU5hbWUpID0+IC9cXC5kXFwudHMkLy50ZXN0KGZpbGVOYW1lKSB8fFxuICAgICAgICAvLyBWaWV3IEVuZ2luZSdzIGdlbmVyYXRlZCBmaWxlcyB3ZXJlIG5ldmVyIGludGVuZGVkIHRvIGJlIHByb2Nlc3NlZCB3aXRoIHRzaWNrbGUuXG4gICAgICAgICghb3B0aW9ucy5lbmFibGVJdnkgJiYgR0VORVJBVEVEX0ZJTEVTLnRlc3QoZmlsZU5hbWUpKSxcbiAgICBwYXRoVG9Nb2R1bGVOYW1lOiAoY29udGV4dCwgaW1wb3J0UGF0aCkgPT4gJycsXG4gICAgc2hvdWxkSWdub3JlV2FybmluZ3NGb3JQYXRoOiAoZmlsZVBhdGgpID0+IGZhbHNlLFxuICAgIGZpbGVOYW1lVG9Nb2R1bGVJZDogKGZpbGVOYW1lKSA9PiBmaWxlTmFtZSxcbiAgICBnb29nbW9kdWxlOiBmYWxzZSxcbiAgICB1bnR5cGVkOiB0cnVlLFxuICAgIGNvbnZlcnRJbmRleEltcG9ydFNob3J0aGFuZDogZmFsc2UsXG4gICAgLy8gRGVjb3JhdG9ycyBhcmUgdHJhbnNmb3JtZWQgYXMgcGFydCBvZiB0aGUgQW5ndWxhciBjb21waWxlciBwcm9ncmFtcy4gVG8gYXZvaWRcbiAgICAvLyBjb25mbGljdHMsIHdlIGRpc2FibGUgZGVjb3JhdG9yIHRyYW5zZm9ybWF0aW9ucyBmb3IgdHNpY2tsZS5cbiAgICB0cmFuc2Zvcm1EZWNvcmF0b3JzOiBmYWxzZSxcbiAgICB0cmFuc2Zvcm1UeXBlc1RvQ2xvc3VyZTogdHJ1ZSxcbiAgfTtcblxuICByZXR1cm4gKHtcbiAgICAgICAgICAgcHJvZ3JhbSxcbiAgICAgICAgICAgdGFyZ2V0U291cmNlRmlsZSxcbiAgICAgICAgICAgd3JpdGVGaWxlLFxuICAgICAgICAgICBjYW5jZWxsYXRpb25Ub2tlbixcbiAgICAgICAgICAgZW1pdE9ubHlEdHNGaWxlcyxcbiAgICAgICAgICAgY3VzdG9tVHJhbnNmb3JtZXJzID0ge30sXG4gICAgICAgICAgIGhvc3QsXG4gICAgICAgICAgIG9wdGlvbnNcbiAgICAgICAgIH0pID0+XG4gICAgICAgICAgICAgLy8gdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOm5vLXJlcXVpcmUtaW1wb3J0cyBvbmx5IGRlcGVuZCBvbiB0c2lja2xlIGlmIHJlcXVlc3RlZFxuICAgICAgcmVxdWlyZSgndHNpY2tsZScpLmVtaXRXaXRoVHNpY2tsZShcbiAgICAgICAgICBwcm9ncmFtLCB7Li4udHNpY2tsZUhvc3QsIG9wdGlvbnMsIGhvc3QsIG1vZHVsZVJlc29sdXRpb25Ib3N0OiBob3N0fSwgaG9zdCwgb3B0aW9ucyxcbiAgICAgICAgICB0YXJnZXRTb3VyY2VGaWxlLCB3cml0ZUZpbGUsIGNhbmNlbGxhdGlvblRva2VuLCBlbWl0T25seUR0c0ZpbGVzLCB7XG4gICAgICAgICAgICBiZWZvcmVUczogY3VzdG9tVHJhbnNmb3JtZXJzLmJlZm9yZSxcbiAgICAgICAgICAgIGFmdGVyVHM6IGN1c3RvbVRyYW5zZm9ybWVycy5hZnRlcixcbiAgICAgICAgICB9KTtcbn1cblxuZXhwb3J0IGludGVyZmFjZSBOZ2NQYXJzZWRDb25maWd1cmF0aW9uIGV4dGVuZHMgUGFyc2VkQ29uZmlndXJhdGlvbiB7XG4gIHdhdGNoPzogYm9vbGVhbjtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHJlYWROZ2NDb21tYW5kTGluZUFuZENvbmZpZ3VyYXRpb24oYXJnczogc3RyaW5nW10pOiBOZ2NQYXJzZWRDb25maWd1cmF0aW9uIHtcbiAgY29uc3Qgb3B0aW9uczogYXBpLkNvbXBpbGVyT3B0aW9ucyA9IHt9O1xuICBjb25zdCBwYXJzZWRBcmdzID0gcmVxdWlyZSgnbWluaW1pc3QnKShhcmdzKTtcbiAgaWYgKHBhcnNlZEFyZ3MuaTE4bkZpbGUpIG9wdGlvbnMuaTE4bkluRmlsZSA9IHBhcnNlZEFyZ3MuaTE4bkZpbGU7XG4gIGlmIChwYXJzZWRBcmdzLmkxOG5Gb3JtYXQpIG9wdGlvbnMuaTE4bkluRm9ybWF0ID0gcGFyc2VkQXJncy5pMThuRm9ybWF0O1xuICBpZiAocGFyc2VkQXJncy5sb2NhbGUpIG9wdGlvbnMuaTE4bkluTG9jYWxlID0gcGFyc2VkQXJncy5sb2NhbGU7XG4gIGNvbnN0IG10ID0gcGFyc2VkQXJncy5taXNzaW5nVHJhbnNsYXRpb247XG4gIGlmIChtdCA9PT0gJ2Vycm9yJyB8fCBtdCA9PT0gJ3dhcm5pbmcnIHx8IG10ID09PSAnaWdub3JlJykge1xuICAgIG9wdGlvbnMuaTE4bkluTWlzc2luZ1RyYW5zbGF0aW9ucyA9IG10O1xuICB9XG4gIGNvbnN0IGNvbmZpZyA9IHJlYWRDb21tYW5kTGluZUFuZENvbmZpZ3VyYXRpb24oXG4gICAgICBhcmdzLCBvcHRpb25zLCBbJ2kxOG5GaWxlJywgJ2kxOG5Gb3JtYXQnLCAnbG9jYWxlJywgJ21pc3NpbmdUcmFuc2xhdGlvbicsICd3YXRjaCddKTtcbiAgY29uc3Qgd2F0Y2ggPSBwYXJzZWRBcmdzLncgfHwgcGFyc2VkQXJncy53YXRjaDtcbiAgcmV0dXJuIHsuLi5jb25maWcsIHdhdGNofTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHJlYWRDb21tYW5kTGluZUFuZENvbmZpZ3VyYXRpb24oXG4gICAgYXJnczogc3RyaW5nW10sIGV4aXN0aW5nT3B0aW9uczogYXBpLkNvbXBpbGVyT3B0aW9ucyA9IHt9LFxuICAgIG5nQ21kTGluZU9wdGlvbnM6IHN0cmluZ1tdID0gW10pOiBQYXJzZWRDb25maWd1cmF0aW9uIHtcbiAgbGV0IGNtZENvbmZpZyA9IHRzLnBhcnNlQ29tbWFuZExpbmUoYXJncyk7XG4gIGNvbnN0IHByb2plY3QgPSBjbWRDb25maWcub3B0aW9ucy5wcm9qZWN0IHx8ICcuJztcbiAgY29uc3QgY21kRXJyb3JzID0gY21kQ29uZmlnLmVycm9ycy5maWx0ZXIoZSA9PiB7XG4gICAgaWYgKHR5cGVvZiBlLm1lc3NhZ2VUZXh0ID09PSAnc3RyaW5nJykge1xuICAgICAgY29uc3QgbXNnID0gZS5tZXNzYWdlVGV4dDtcbiAgICAgIHJldHVybiAhbmdDbWRMaW5lT3B0aW9ucy5zb21lKG8gPT4gbXNnLmluZGV4T2YobykgPj0gMCk7XG4gICAgfVxuICAgIHJldHVybiB0cnVlO1xuICB9KTtcbiAgaWYgKGNtZEVycm9ycy5sZW5ndGgpIHtcbiAgICByZXR1cm4ge1xuICAgICAgcHJvamVjdCxcbiAgICAgIHJvb3ROYW1lczogW10sXG4gICAgICBvcHRpb25zOiBjbWRDb25maWcub3B0aW9ucyxcbiAgICAgIGVycm9yczogY21kRXJyb3JzLFxuICAgICAgZW1pdEZsYWdzOiBhcGkuRW1pdEZsYWdzLkRlZmF1bHRcbiAgICB9O1xuICB9XG4gIGNvbnN0IGNvbmZpZyA9IHJlYWRDb25maWd1cmF0aW9uKHByb2plY3QsIGNtZENvbmZpZy5vcHRpb25zKTtcbiAgY29uc3Qgb3B0aW9ucyA9IHsuLi5jb25maWcub3B0aW9ucywgLi4uZXhpc3RpbmdPcHRpb25zfTtcbiAgaWYgKG9wdGlvbnMubG9jYWxlKSB7XG4gICAgb3B0aW9ucy5pMThuSW5Mb2NhbGUgPSBvcHRpb25zLmxvY2FsZTtcbiAgfVxuICByZXR1cm4ge1xuICAgIHByb2plY3QsXG4gICAgcm9vdE5hbWVzOiBjb25maWcucm9vdE5hbWVzLFxuICAgIG9wdGlvbnMsXG4gICAgZXJyb3JzOiBjb25maWcuZXJyb3JzLFxuICAgIGVtaXRGbGFnczogY29uZmlnLmVtaXRGbGFnc1xuICB9O1xufVxuXG5mdW5jdGlvbiBnZXRGb3JtYXREaWFnbm9zdGljc0hvc3Qob3B0aW9ucz86IGFwaS5Db21waWxlck9wdGlvbnMpOiB0cy5Gb3JtYXREaWFnbm9zdGljc0hvc3Qge1xuICBjb25zdCBiYXNlUGF0aCA9IG9wdGlvbnMgPyBvcHRpb25zLmJhc2VQYXRoIDogdW5kZWZpbmVkO1xuICByZXR1cm4ge1xuICAgIGdldEN1cnJlbnREaXJlY3Rvcnk6ICgpID0+IGJhc2VQYXRoIHx8IHRzLnN5cy5nZXRDdXJyZW50RGlyZWN0b3J5KCksXG4gICAgLy8gV2UgbmVlZCB0byBub3JtYWxpemUgdGhlIHBhdGggc2VwYXJhdG9ycyBoZXJlIGJlY2F1c2UgYnkgZGVmYXVsdCwgVHlwZVNjcmlwdFxuICAgIC8vIGNvbXBpbGVyIGhvc3RzIHVzZSBwb3NpeCBjYW5vbmljYWwgcGF0aHMuIEluIG9yZGVyIHRvIHByaW50IGNvbnNpc3RlbnQgZGlhZ25vc3RpY3MsXG4gICAgLy8gd2UgYWxzbyBub3JtYWxpemUgdGhlIHBhdGhzLlxuICAgIGdldENhbm9uaWNhbEZpbGVOYW1lOiBmaWxlTmFtZSA9PiBmaWxlTmFtZS5yZXBsYWNlKC9cXFxcL2csICcvJyksXG4gICAgZ2V0TmV3TGluZTogKCkgPT4ge1xuICAgICAgLy8gTWFudWFsbHkgZGV0ZXJtaW5lIHRoZSBwcm9wZXIgbmV3IGxpbmUgc3RyaW5nIGJhc2VkIG9uIHRoZSBwYXNzZWQgY29tcGlsZXJcbiAgICAgIC8vIG9wdGlvbnMuIFRoZXJlIGlzIG5vIHB1YmxpYyBUeXBlU2NyaXB0IGZ1bmN0aW9uIHRoYXQgcmV0dXJucyB0aGUgY29ycmVzcG9uZGluZ1xuICAgICAgLy8gbmV3IGxpbmUgc3RyaW5nLiBzZWU6IGh0dHBzOi8vZ2l0aHViLmNvbS9NaWNyb3NvZnQvVHlwZVNjcmlwdC9pc3N1ZXMvMjk1ODFcbiAgICAgIGlmIChvcHRpb25zICYmIG9wdGlvbnMubmV3TGluZSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICAgIHJldHVybiBvcHRpb25zLm5ld0xpbmUgPT09IHRzLk5ld0xpbmVLaW5kLkxpbmVGZWVkID8gJ1xcbicgOiAnXFxyXFxuJztcbiAgICAgIH1cbiAgICAgIHJldHVybiB0cy5zeXMubmV3TGluZTtcbiAgICB9LFxuICB9O1xufVxuXG5mdW5jdGlvbiByZXBvcnRFcnJvcnNBbmRFeGl0KFxuICAgIGFsbERpYWdub3N0aWNzOiBEaWFnbm9zdGljcywgb3B0aW9ucz86IGFwaS5Db21waWxlck9wdGlvbnMsXG4gICAgY29uc29sZUVycm9yOiAoczogc3RyaW5nKSA9PiB2b2lkID0gY29uc29sZS5lcnJvcik6IG51bWJlciB7XG4gIGNvbnN0IGVycm9yc0FuZFdhcm5pbmdzID0gZmlsdGVyRXJyb3JzQW5kV2FybmluZ3MoYWxsRGlhZ25vc3RpY3MpO1xuICBwcmludERpYWdub3N0aWNzKGVycm9yc0FuZFdhcm5pbmdzLCBvcHRpb25zLCBjb25zb2xlRXJyb3IpO1xuICByZXR1cm4gZXhpdENvZGVGcm9tUmVzdWx0KGFsbERpYWdub3N0aWNzKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHdhdGNoTW9kZShcbiAgICBwcm9qZWN0OiBzdHJpbmcsIG9wdGlvbnM6IGFwaS5Db21waWxlck9wdGlvbnMsIGNvbnNvbGVFcnJvcjogKHM6IHN0cmluZykgPT4gdm9pZCkge1xuICByZXR1cm4gcGVyZm9ybVdhdGNoQ29tcGlsYXRpb24oY3JlYXRlUGVyZm9ybVdhdGNoSG9zdChwcm9qZWN0LCBkaWFnbm9zdGljcyA9PiB7XG4gICAgcHJpbnREaWFnbm9zdGljcyhkaWFnbm9zdGljcywgb3B0aW9ucywgY29uc29sZUVycm9yKTtcbiAgfSwgb3B0aW9ucywgb3B0aW9ucyA9PiBjcmVhdGVFbWl0Q2FsbGJhY2sob3B0aW9ucykpKTtcbn1cblxuZnVuY3Rpb24gcHJpbnREaWFnbm9zdGljcyhcbiAgICBkaWFnbm9zdGljczogUmVhZG9ubHlBcnJheTx0cy5EaWFnbm9zdGljfGFwaS5EaWFnbm9zdGljPixcbiAgICBvcHRpb25zOiBhcGkuQ29tcGlsZXJPcHRpb25zfHVuZGVmaW5lZCwgY29uc29sZUVycm9yOiAoczogc3RyaW5nKSA9PiB2b2lkKTogdm9pZCB7XG4gIGlmIChkaWFnbm9zdGljcy5sZW5ndGggPT09IDApIHtcbiAgICByZXR1cm47XG4gIH1cbiAgY29uc3QgZm9ybWF0SG9zdCA9IGdldEZvcm1hdERpYWdub3N0aWNzSG9zdChvcHRpb25zKTtcbiAgY29uc29sZUVycm9yKGZvcm1hdERpYWdub3N0aWNzKGRpYWdub3N0aWNzLCBmb3JtYXRIb3N0KSk7XG59XG5cbi8vIENMSSBlbnRyeSBwb2ludFxuaWYgKHJlcXVpcmUubWFpbiA9PT0gbW9kdWxlKSB7XG4gIGNvbnN0IGFyZ3MgPSBwcm9jZXNzLmFyZ3Yuc2xpY2UoMik7XG4gIC8vIFdlIGFyZSBydW5uaW5nIHRoZSByZWFsIGNvbXBpbGVyIHNvIHJ1biBhZ2FpbnN0IHRoZSByZWFsIGZpbGUtc3lzdGVtXG4gIHNldEZpbGVTeXN0ZW0obmV3IE5vZGVKU0ZpbGVTeXN0ZW0oKSk7XG4gIHByb2Nlc3MuZXhpdENvZGUgPSBtYWluKGFyZ3MpO1xufVxuIl19