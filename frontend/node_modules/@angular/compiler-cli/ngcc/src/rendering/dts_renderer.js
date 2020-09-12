(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/rendering/dts_renderer", ["require", "exports", "tslib", "magic-string", "typescript", "@angular/compiler-cli/src/ngtsc/translator", "@angular/compiler-cli/ngcc/src/constants", "@angular/compiler-cli/ngcc/src/rendering/source_maps", "@angular/compiler-cli/ngcc/src/rendering/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.DtsRenderer = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var magic_string_1 = require("magic-string");
    var ts = require("typescript");
    var translator_1 = require("@angular/compiler-cli/src/ngtsc/translator");
    var constants_1 = require("@angular/compiler-cli/ngcc/src/constants");
    var source_maps_1 = require("@angular/compiler-cli/ngcc/src/rendering/source_maps");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/rendering/utils");
    /**
     * A structure that captures information about what needs to be rendered
     * in a typings file.
     *
     * It is created as a result of processing the analysis passed to the renderer.
     *
     * The `renderDtsFile()` method consumes it when rendering a typings file.
     */
    var DtsRenderInfo = /** @class */ (function () {
        function DtsRenderInfo() {
            this.classInfo = [];
            this.moduleWithProviders = [];
            this.privateExports = [];
            this.reexports = [];
        }
        return DtsRenderInfo;
    }());
    /**
     * A base-class for rendering an `AnalyzedFile`.
     *
     * Package formats have output files that must be rendered differently. Concrete sub-classes must
     * implement the `addImports`, `addDefinitions` and `removeDecorators` abstract methods.
     */
    var DtsRenderer = /** @class */ (function () {
        function DtsRenderer(dtsFormatter, fs, logger, host, bundle) {
            this.dtsFormatter = dtsFormatter;
            this.fs = fs;
            this.logger = logger;
            this.host = host;
            this.bundle = bundle;
        }
        DtsRenderer.prototype.renderProgram = function (decorationAnalyses, privateDeclarationsAnalyses, moduleWithProvidersAnalyses) {
            var _this = this;
            var renderedFiles = [];
            // Transform the .d.ts files
            if (this.bundle.dts) {
                var dtsFiles = this.getTypingsFilesToRender(decorationAnalyses, privateDeclarationsAnalyses, moduleWithProvidersAnalyses);
                // If the dts entry-point is not already there (it did not have compiled classes)
                // then add it now, to ensure it gets its extra exports rendered.
                if (!dtsFiles.has(this.bundle.dts.file)) {
                    dtsFiles.set(this.bundle.dts.file, new DtsRenderInfo());
                }
                dtsFiles.forEach(function (renderInfo, file) { return renderedFiles.push.apply(renderedFiles, tslib_1.__spread(_this.renderDtsFile(file, renderInfo))); });
            }
            return renderedFiles;
        };
        DtsRenderer.prototype.renderDtsFile = function (dtsFile, renderInfo) {
            var e_1, _a;
            var outputText = new magic_string_1.default(dtsFile.text);
            var printer = ts.createPrinter();
            var importManager = new translator_1.ImportManager(utils_1.getImportRewriter(this.bundle.dts.r3SymbolsFile, this.bundle.isCore, false), constants_1.IMPORT_PREFIX);
            renderInfo.classInfo.forEach(function (dtsClass) {
                var endOfClass = dtsClass.dtsDeclaration.getEnd();
                dtsClass.compilation.forEach(function (declaration) {
                    var type = translator_1.translateType(declaration.type, importManager);
                    markForEmitAsSingleLine(type);
                    var typeStr = printer.printNode(ts.EmitHint.Unspecified, type, dtsFile);
                    var newStatement = "    static " + declaration.name + ": " + typeStr + ";\n";
                    outputText.appendRight(endOfClass - 1, newStatement);
                });
            });
            if (renderInfo.reexports.length > 0) {
                try {
                    for (var _b = tslib_1.__values(renderInfo.reexports), _c = _b.next(); !_c.done; _c = _b.next()) {
                        var e = _c.value;
                        var newStatement = "\nexport {" + e.symbolName + " as " + e.asAlias + "} from '" + e.fromModule + "';";
                        outputText.append(newStatement);
                    }
                }
                catch (e_1_1) { e_1 = { error: e_1_1 }; }
                finally {
                    try {
                        if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                    }
                    finally { if (e_1) throw e_1.error; }
                }
            }
            this.dtsFormatter.addModuleWithProvidersParams(outputText, renderInfo.moduleWithProviders, importManager);
            this.dtsFormatter.addExports(outputText, dtsFile.fileName, renderInfo.privateExports, importManager, dtsFile);
            this.dtsFormatter.addImports(outputText, importManager.getAllImports(dtsFile.fileName), dtsFile);
            return source_maps_1.renderSourceAndMap(this.logger, this.fs, dtsFile, outputText);
        };
        DtsRenderer.prototype.getTypingsFilesToRender = function (decorationAnalyses, privateDeclarationsAnalyses, moduleWithProvidersAnalyses) {
            var _this = this;
            var dtsMap = new Map();
            // Capture the rendering info from the decoration analyses
            decorationAnalyses.forEach(function (compiledFile) {
                var appliedReexports = false;
                compiledFile.compiledClasses.forEach(function (compiledClass) {
                    var _a;
                    var dtsDeclaration = _this.host.getDtsDeclaration(compiledClass.declaration);
                    if (dtsDeclaration) {
                        var dtsFile = dtsDeclaration.getSourceFile();
                        var renderInfo = dtsMap.has(dtsFile) ? dtsMap.get(dtsFile) : new DtsRenderInfo();
                        renderInfo.classInfo.push({ dtsDeclaration: dtsDeclaration, compilation: compiledClass.compilation });
                        // Only add re-exports if the .d.ts tree is overlayed with the .js tree, as re-exports in
                        // ngcc are only used to support deep imports into e.g. commonjs code. For a deep import
                        // to work, the typing file and JS file must be in parallel trees. This logic will detect
                        // the simplest version of this case, which is sufficient to handle most commonjs
                        // libraries.
                        if (!appliedReexports &&
                            compiledClass.declaration.getSourceFile().fileName ===
                                dtsFile.fileName.replace(/\.d\.ts$/, '.js')) {
                            (_a = renderInfo.reexports).push.apply(_a, tslib_1.__spread(compiledFile.reexports));
                            appliedReexports = true;
                        }
                        dtsMap.set(dtsFile, renderInfo);
                    }
                });
            });
            // Capture the ModuleWithProviders functions/methods that need updating
            if (moduleWithProvidersAnalyses !== null) {
                moduleWithProvidersAnalyses.forEach(function (moduleWithProvidersToFix, dtsFile) {
                    var renderInfo = dtsMap.has(dtsFile) ? dtsMap.get(dtsFile) : new DtsRenderInfo();
                    renderInfo.moduleWithProviders = moduleWithProvidersToFix;
                    dtsMap.set(dtsFile, renderInfo);
                });
            }
            // Capture the private declarations that need to be re-exported
            if (privateDeclarationsAnalyses.length) {
                privateDeclarationsAnalyses.forEach(function (e) {
                    if (!e.dtsFrom) {
                        throw new Error("There is no typings path for " + e.identifier + " in " + e.from + ".\n" +
                            "We need to add an export for this class to a .d.ts typings file because " +
                            "Angular compiler needs to be able to reference this class in compiled code, such as templates.\n" +
                            "The simplest fix for this is to ensure that this class is exported from the package's entry-point.");
                    }
                });
                var dtsEntryPoint = this.bundle.dts.file;
                var renderInfo = dtsMap.has(dtsEntryPoint) ? dtsMap.get(dtsEntryPoint) : new DtsRenderInfo();
                renderInfo.privateExports = privateDeclarationsAnalyses;
                dtsMap.set(dtsEntryPoint, renderInfo);
            }
            return dtsMap;
        };
        return DtsRenderer;
    }());
    exports.DtsRenderer = DtsRenderer;
    function markForEmitAsSingleLine(node) {
        ts.setEmitFlags(node, ts.EmitFlags.SingleLine);
        ts.forEachChild(node, markForEmitAsSingleLine);
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZHRzX3JlbmRlcmVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL25nY2Mvc3JjL3JlbmRlcmluZy9kdHNfcmVuZGVyZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztJQUFBOzs7Ozs7T0FNRztJQUNILDZDQUF1QztJQUN2QywrQkFBaUM7SUFLakMseUVBQTJFO0lBSTNFLHNFQUEyQztJQU0zQyxvRkFBaUQ7SUFDakQsd0VBQXVEO0lBRXZEOzs7Ozs7O09BT0c7SUFDSDtRQUFBO1lBQ0UsY0FBUyxHQUFtQixFQUFFLENBQUM7WUFDL0Isd0JBQW1CLEdBQThCLEVBQUUsQ0FBQztZQUNwRCxtQkFBYyxHQUFpQixFQUFFLENBQUM7WUFDbEMsY0FBUyxHQUFlLEVBQUUsQ0FBQztRQUM3QixDQUFDO1FBQUQsb0JBQUM7SUFBRCxDQUFDLEFBTEQsSUFLQztJQVdEOzs7OztPQUtHO0lBQ0g7UUFDRSxxQkFDWSxZQUFnQyxFQUFVLEVBQWMsRUFBVSxNQUFjLEVBQ2hGLElBQXdCLEVBQVUsTUFBd0I7WUFEMUQsaUJBQVksR0FBWixZQUFZLENBQW9CO1lBQVUsT0FBRSxHQUFGLEVBQUUsQ0FBWTtZQUFVLFdBQU0sR0FBTixNQUFNLENBQVE7WUFDaEYsU0FBSSxHQUFKLElBQUksQ0FBb0I7WUFBVSxXQUFNLEdBQU4sTUFBTSxDQUFrQjtRQUFHLENBQUM7UUFFMUUsbUNBQWEsR0FBYixVQUNJLGtCQUFzQyxFQUN0QywyQkFBd0QsRUFDeEQsMkJBQTZEO1lBSGpFLGlCQXFCQztZQWpCQyxJQUFNLGFBQWEsR0FBa0IsRUFBRSxDQUFDO1lBRXhDLDRCQUE0QjtZQUM1QixJQUFJLElBQUksQ0FBQyxNQUFNLENBQUMsR0FBRyxFQUFFO2dCQUNuQixJQUFNLFFBQVEsR0FBRyxJQUFJLENBQUMsdUJBQXVCLENBQ3pDLGtCQUFrQixFQUFFLDJCQUEyQixFQUFFLDJC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QU0sQ0FBQyxHQUFJLENBQUMsSUFBSSxDQUFDO2dCQUM1QyxJQUFNLFVBQVUsR0FDWixNQUFNLENBQUMsR0FBRyxDQUFDLGFBQWEsQ0FBQyxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsR0FBRyxDQUFDLGFBQWEsQ0FBRSxDQUFDLENBQUMsQ0FBQyxJQUFJLGFBQWEsRUFBRSxDQUFDO2dCQUNqRixVQUFVLENBQUMsY0FBYyxHQUFHLDJCQUEyQixDQUFDO2dCQUN4RCxNQUFNLENBQUMsR0FBRyxDQUFDLGFBQWEsRUFBRSxVQUFVLENBQUMsQ0FBQzthQUN2QztZQUVELE9BQU8sTUFBTSxDQUFDO1FBQ2hCLENBQUM7UUFDSCxrQkFBQztJQUFELENBQUMsQUE1SEQsSUE0SEM7SUE1SFksa0NBQVc7SUE4SHhCLFNBQVMsdUJBQXVCLENBQUMsSUFBYTtRQUM1QyxFQUFFLENBQUMsWUFBWSxDQUFDLElBQUksRUFBRSxFQUFFLENBQUMsU0FBUyxDQUFDLFVBQVUsQ0FBQyxDQUFDO1FBQy9DLEVBQUUsQ0FBQyxZQUFZLENBQUMsSUFBSSxFQUFFLHVCQUF1QixDQUFDLENBQUM7SUFDakQsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IE1hZ2ljU3RyaW5nIGZyb20gJ21hZ2ljLXN0cmluZyc7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtGaWxlU3lzdGVtfSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvZmlsZV9zeXN0ZW0nO1xuaW1wb3J0IHtSZWV4cG9ydH0gZnJvbSAnLi4vLi4vLi4vc3JjL25ndHNjL2ltcG9ydHMnO1xuaW1wb3J0IHtDb21waWxlUmVzdWx0fSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvdHJhbnNmb3JtJztcbmltcG9ydCB7SW1wb3J0TWFuYWdlciwgdHJhbnNsYXRlVHlwZX0gZnJvbSAnLi4vLi4vLi4vc3JjL25ndHNjL3RyYW5zbGF0b3InO1xuaW1wb3J0IHtNb2R1bGVXaXRoUHJvdmlkZXJzQW5hbHlzZXMsIE1vZHVsZVdpdGhQcm92aWRlcnNJbmZvfSBmcm9tICcuLi9hbmFseXNpcy9tb2R1bGVfd2l0aF9wcm92aWRlcnNfYW5hbHl6ZXInO1xuaW1wb3J0IHtFeHBvcnRJbmZvLCBQcml2YXRlRGVjbGFyYXRpb25zQW5hbHlzZXN9IGZyb20gJy4uL2FuYWx5c2lzL3ByaXZhdGVfZGVjbGFyYXRpb25zX2FuYWx5emVyJztcbmltcG9ydCB7RGVjb3JhdGlvbkFuYWx5c2VzfSBmcm9tICcuLi9hbmFseXNpcy90eXBlcyc7XG5pbXBvcnQge0lNUE9SVF9QUkVGSVh9IGZyb20gJy4uL2NvbnN0YW50cyc7XG5pbXBvcnQge05nY2NSZWZsZWN0aW9uSG9zdH0gZnJvbSAnLi4vaG9zdC9uZ2NjX2hvc3QnO1xuaW1wb3J0IHtMb2dnZXJ9IGZyb20gJy4uL2xvZ2dpbmcvbG9nZ2VyJztcbmltcG9ydCB7RW50cnlQb2ludEJ1bmRsZX0gZnJvbSAnLi4vcGFja2FnZXMvZW50cnlfcG9pbnRfYnVuZGxlJztcblxuaW1wb3J0IHtSZW5kZXJpbmdGb3JtYXR0ZXJ9IGZyb20gJy4vcmVuZGVyaW5nX2Zvcm1hdHRlcic7XG5pbXBvcnQge3JlbmRlclNvdXJjZUFuZE1hcH0gZnJvbSAnLi9zb3VyY2VfbWFwcyc7XG5pbXBvcnQge0ZpbGVUb1dyaXRlLCBnZXRJbXBvcnRSZXdyaXRlcn0gZnJvbSAnLi91dGlscyc7XG5cbi8qKlxuICogQSBzdHJ1Y3R1cmUgdGhhdCBjYXB0dXJlcyBpbmZvcm1hdGlvbiBhYm91dCB3aGF0IG5lZWRzIHRvIGJlIHJlbmRlcmVkXG4gKiBpbiBhIHR5cGluZ3MgZmlsZS5cbiAqXG4gKiBJdCBpcyBjcmVhdGVkIGFzIGEgcmVzdWx0IG9mIHByb2Nlc3NpbmcgdGhlIGFuYWx5c2lzIHBhc3NlZCB0byB0aGUgcmVuZGVyZXIuXG4gKlxuICogVGhlIGByZW5kZXJEdHNGaWxlKClgIG1ldGhvZCBjb25zdW1lcyBpdCB3aGVuIHJlbmRlcmluZyBhIHR5cGluZ3MgZmlsZS5cbiAqL1xuY2xhc3MgRHRzUmVuZGVySW5mbyB7XG4gIGNsYXNzSW5mbzogRHRzQ2xhc3NJbmZvW10gPSBbXTtcbiAgbW9kdWxlV2l0aFByb3ZpZGVyczogTW9kdWxlV2l0aFByb3ZpZGVyc0luZm9bXSA9IFtdO1xuICBwcml2YXRlRXhwb3J0czogRXhwb3J0SW5mb1tdID0gW107XG4gIHJlZXhwb3J0czogUmVleHBvcnRbXSA9IFtdO1xufVxuXG5cbi8qKlxuICogSW5mb3JtYXRpb24gYWJvdXQgYSBjbGFzcyBpbiBhIHR5cGluZ3MgZmlsZS5cbiAqL1xuZXhwb3J0IGludGVyZmFjZSBEdHNDbGFzc0luZm8ge1xuICBkdHNEZWNsYXJhdGlvbjogdHMuRGVjbGFyYXRpb247XG4gIGNvbXBpbGF0aW9uOiBDb21waWxlUmVzdWx0W107XG59XG5cbi8qKlxuICogQSBiYXNlLWNsYXNzIGZvciByZW5kZXJpbmcgYW4gYEFuYWx5emVkRmlsZWAuXG4gKlxuICogUGFja2FnZSBmb3JtYXRzIGhhdmUgb3V0cHV0IGZpbGVzIHRoYXQgbXVzdCBiZSByZW5kZXJlZCBkaWZmZXJlbnRseS4gQ29uY3JldGUgc3ViLWNsYXNzZXMgbXVzdFxuICogaW1wbGVtZW50IHRoZSBgYWRkSW1wb3J0c2AsIGBhZGREZWZpbml0aW9uc2AgYW5kIGByZW1vdmVEZWNvcmF0b3JzYCBhYnN0cmFjdCBtZXRob2RzLlxuICovXG5leHBvcnQgY2xhc3MgRHRzUmVuZGVyZXIge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgZHRzRm9ybWF0dGVyOiBSZW5kZXJpbmdGb3JtYXR0ZXIsIHByaXZhdGUgZnM6IEZpbGVTeXN0ZW0sIHByaXZhdGUgbG9nZ2VyOiBMb2dnZXIsXG4gICAgICBwcml2YXRlIGhvc3Q6IE5nY2NSZWZsZWN0aW9uSG9zdCwgcHJpdmF0ZSBidW5kbGU6IEVudHJ5UG9pbnRCdW5kbGUpIHt9XG5cbiAgcmVuZGVyUHJvZ3JhbShcbiAgICAgIGRlY29yYXRpb25BbmFseXNlczogRGVjb3JhdGlvbkFuYWx5c2VzLFxuICAgICAgcHJpdmF0ZURlY2xhcmF0aW9uc0FuYWx5c2VzOiBQcml2YXRlRGVjbGFyYXRpb25zQW5hbHlzZXMsXG4gICAgICBtb2R1bGVXaXRoUHJvdmlkZXJzQW5hbHlzZXM6IE1vZHVsZVdpdGhQcm92aWRlcnNBbmFseXNlc3xudWxsKTogRmlsZVRvV3JpdGVbXSB7XG4gICAgY29uc3QgcmVuZGVyZWRGaWxlczogRmlsZVRvV3JpdGVbXSA9IFtdO1xuXG4gICAgLy8gVHJhbnNmb3JtIHRoZSAuZC50cyBmaWxlc1xuICAgIGlmICh0aGlzLmJ1bmRsZS5kdHMpIHtcbiAgICAgIGNvbnN0IGR0c0ZpbGVzID0gdGhpcy5nZXRUeXBpbmdzRmlsZXNUb1JlbmRlcihcbiAgICAgICAgICBkZWNvcmF0aW9uQW5hbHlzZXMsIHByaXZhdGVEZWNsYXJhdGlvbnNBbmFseXNlcywgbW9kdWxlV2l0aFByb3ZpZGVyc0FuYWx5c2VzKTtcblxuICAgICAgLy8gSWYgdGhlIGR0cyBlbnRyeS1wb2ludCBpcyBub3QgYWxyZWFkeSB0aGVyZSAoaXQgZGlkIG5vdCBoYXZlIGNvbXBpbGVkIGNsYXNzZXMpXG4gICAgICAvLyB0aGVuIGFkZCBpdCBub3csIHRvIGVuc3VyZSBpdCBnZXRzIGl0cyBleHRyYSBleHBvcnRzIHJlbmRlcmVkLlxuICAgICAgaWYgKCFkdHNGaWxlcy5oYXModGhpcy5idW5kbGUuZHRzLmZpbGUpKSB7XG4gICAgICAgIGR0c0ZpbGVzLnNldCh0aGlzLmJ1bmRsZS5kdHMuZmlsZSwgbmV3IER0c1JlbmRlckluZm8oKSk7XG4gICAgICB9XG4gICAgICBkdHNGaWxlcy5mb3JFYWNoKFxuICAgICAgICAgIChyZW5kZXJJbmZvLCBmaWxlKSA9PiByZW5kZXJlZEZpbGVzLnB1c2goLi4udGhpcy5yZW5kZXJEdHNGaWxlKGZpbGUsIHJlbmRlckluZm8pKSk7XG4gICAgfVxuXG4gICAgcmV0dXJuIHJlbmRlcmVkRmlsZXM7XG4gIH1cblxuICByZW5kZXJEdHNGaWxlKGR0c0ZpbGU6IHRzLlNvdXJjZUZpbGUsIHJlbmRlckluZm86IER0c1JlbmRlckluZm8pOiBGaWxlVG9Xcml0ZVtdIHtcbiAgICBjb25zdCBvdXRwdXRUZXh0ID0gbmV3IE1hZ2ljU3RyaW5nKGR0c0ZpbGUudGV4dCk7XG4gICAgY29uc3QgcHJpbnRlciA9IHRzLmNyZWF0ZVByaW50ZXIoKTtcbiAgICBjb25zdCBpbXBvcnRNYW5hZ2VyID0gbmV3IEltcG9ydE1hbmFnZXIoXG4gICAgICAgIGdldEltcG9ydFJld3JpdGVyKHRoaXMuYnVuZGxlLmR0cyEucjNTeW1ib2xzRmlsZSwgdGhpcy5idW5kbGUuaXNDb3JlLCBmYWxzZSksXG4gICAgICAgIElNUE9SVF9QUkVGSVgpO1xuXG4gICAgcmVuZGVySW5mby5jbGFzc0luZm8uZm9yRWFjaChkdHNDbGFzcyA9PiB7XG4gICAgICBjb25zdCBlbmRPZkNsYXNzID0gZHRzQ2xhc3MuZHRzRGVjbGFyYXRpb24uZ2V0RW5kKCk7XG4gICAgICBkdHNDbGFzcy5jb21waWxhdGlvbi5mb3JFYWNoKGRlY2xhcmF0aW9uID0+IHtcbiAgICAgICAgY29uc3QgdHlwZSA9IHRyYW5zbGF0ZVR5cGUoZGVjbGFyYXRpb24udHlwZSwgaW1wb3J0TWFuYWdlcik7XG4gICAgICAgIG1hcmtGb3JFbWl0QXNTaW5nbGVMaW5lKHR5cGUpO1xuICAgICAgICBjb25zdCB0eXBlU3RyID0gcHJpbnRlci5wcmludE5vZGUodHMuRW1pdEhpbnQuVW5zcGVjaWZpZWQsIHR5cGUsIGR0c0ZpbGUpO1xuICAgICAgICBjb25zdCBuZXdTdGF0ZW1lbnQgPSBgICAgIHN0YXRpYyAke2RlY2xhcmF0aW9uLm5hbWV9OiAke3R5cGVTdHJ9O1xcbmA7XG4gICAgICAgIG91dHB1dFRleHQuYXBwZW5kUmlnaHQoZW5kT2ZDbGFzcyAtIDEsIG5ld1N0YXRlbWVudCk7XG4gICAgICB9KTtcbiAgICB9KTtcblxuICAgIGlmIChyZW5kZXJJbmZvLnJlZXhwb3J0cy5sZW5ndGggPiAwKSB7XG4gICAgICBmb3IgKGNvbnN0IGUgb2YgcmVuZGVySW5mby5yZWV4cG9ydHMpIHtcbiAgICAgICAgY29uc3QgbmV3U3RhdGVtZW50ID0gYFxcbmV4cG9ydCB7JHtlLnN5bWJvbE5hbWV9IGFzICR7ZS5hc0FsaWFzfX0gZnJvbSAnJHtlLmZyb21Nb2R1bGV9JztgO1xuICAgICAgICBvdXRwdXRUZXh0LmFwcGVuZChuZXdTdGF0ZW1lbnQpO1xuICAgICAgfVxuICAgIH1cblxuICAgIHRoaXMuZHRzRm9ybWF0dGVyLmFkZE1vZHVsZVdpdGhQcm92aWRlcnNQYXJhbXMoXG4gICAgICAgIG91dHB1dFRleHQsIHJlbmRlckluZm8ubW9kdWxlV2l0aFByb3ZpZGVycywgaW1wb3J0TWFuYWdlcik7XG4gICAgdGhpcy5kdHNGb3JtYXR0ZXIuYWRkRXhwb3J0cyhcbiAgICAgICAgb3V0cHV0VGV4dCwgZHRzRmlsZS5maWxlTmFtZSwgcmVuZGVySW5mby5wcml2YXRlRXhwb3J0cywgaW1wb3J0TWFuYWdlciwgZHRzRmlsZSk7XG4gICAgdGhpcy5kdHNGb3JtYXR0ZXIuYWRkSW1wb3J0cyhcbiAgICAgICAgb3V0cHV0VGV4dCwgaW1wb3J0TWFuYWdlci5nZXRBbGxJbXBvcnRzKGR0c0ZpbGUuZmlsZU5hbWUpLCBkdHNGaWxlKTtcblxuICAgIHJldHVybiByZW5kZXJTb3VyY2VBbmRNYXAodGhpcy5sb2dnZXIsIHRoaXMuZnMsIGR0c0ZpbGUsIG91dHB1dFRleHQpO1xuICB9XG5cbiAgcHJpdmF0ZSBnZXRUeXBpbmdzRmlsZXNUb1JlbmRlcihcbiAgICAgIGRlY29yYXRpb25BbmFseXNlczogRGVjb3JhdGlvbkFuYWx5c2VzLFxuICAgICAgcHJpdmF0ZURlY2xhcmF0aW9uc0FuYWx5c2VzOiBQcml2YXRlRGVjbGFyYXRpb25zQW5hbHlzZXMsXG4gICAgICBtb2R1bGVXaXRoUHJvdmlkZXJzQW5hbHlzZXM6IE1vZHVsZVdpdGhQcm92aWRlcnNBbmFseXNlc3xcbiAgICAgIG51bGwpOiBNYXA8dHMuU291cmNlRmlsZSwgRHRzUmVuZGVySW5mbz4ge1xuICAgIGNvbnN0IGR0c01hcCA9IG5ldyBNYXA8dHMuU291cmNlRmlsZSwgRHRzUmVuZGVySW5mbz4oKTtcblxuICAgIC8vIENhcHR1cmUgdGhlIHJlbmRlcmluZyBpbmZvIGZyb20gdGhlIGRlY29yYXRpb24gYW5hbHlzZXNcbiAgICBkZWNvcmF0aW9uQW5hbHlzZXMuZm9yRWFjaChjb21waWxlZEZpbGUgPT4ge1xuICAgICAgbGV0IGFwcGxpZWRSZWV4cG9ydHMgPSBmYWxzZTtcbiAgICAgIGNvbXBpbGVkRmlsZS5jb21waWxlZENsYXNzZXMuZm9yRWFjaChjb21waWxlZENsYXNzID0+IHtcbiAgICAgICAgY29uc3QgZHRzRGVjbGFyYXRpb24gPSB0aGlzLmhvc3QuZ2V0RHRzRGVjbGFyYXRpb24oY29tcGlsZWRDbGFzcy5kZWNsYXJhdGlvbik7XG4gICAgICAgIGlmIChkdHNEZWNsYXJhdGlvbikge1xuICAgICAgICAgIGNvbnN0IGR0c0ZpbGUgPSBkdHNEZWNsYXJhdGlvbi5nZXRTb3VyY2VGaWxlKCk7XG4gICAgICAgICAgY29uc3QgcmVuZGVySW5mbyA9IGR0c01hcC5oYXMoZHRzRmlsZSkgPyBkdHNNYXAuZ2V0KGR0c0ZpbGUpISA6IG5ldyBEdHNSZW5kZXJJbmZvKCk7XG4gICAgICAgICAgcmVuZGVySW5mby5jbGFzc0luZm8ucHVzaCh7ZHRzRGVjbGFyYXRpb24sIGNvbXBpbGF0aW9uOiBjb21waWxlZENsYXNzLmNvbXBpbGF0aW9ufSk7XG4gICAgICAgICAgLy8gT25seSBhZGQgcmUtZXhwb3J0cyBpZiB0aGUgLmQudHMgdHJlZSBpcyBvdmVybGF5ZWQgd2l0aCB0aGUgLmpzIHRyZWUsIGFzIHJlLWV4cG9ydHMgaW5cbiAgICAgICAgICAvLyBuZ2NjIGFyZSBvbmx5IHVzZWQgdG8gc3VwcG9ydCBkZWVwIGltcG9ydHMgaW50byBlLmcuIGNvbW1vbmpzIGNvZGUuIEZvciBhIGRlZXAgaW1wb3J0XG4gICAgICAgICAgLy8gdG8gd29yaywgdGhlIHR5cGluZyBmaWxlIGFuZCBKUyBmaWxlIG11c3QgYmUgaW4gcGFyYWxsZWwgdHJlZXMuIFRoaXMgbG9naWMgd2lsbCBkZXRlY3RcbiAgICAgICAgICAvLyB0aGUgc2ltcGxlc3QgdmVyc2lvbiBvZiB0aGlzIGNhc2UsIHdoaWNoIGlzIHN1ZmZpY2llbnQgdG8gaGFuZGxlIG1vc3QgY29tbW9uanNcbiAgICAgICAgICAvLyBsaWJyYXJpZXMuXG4gICAgICAgICAgaWYgKCFhcHBsaWVkUmVleHBvcnRzICYmXG4gICAgICAgICAgICAgIGNvbXBpbGVkQ2xhc3MuZGVjbGFyYXRpb24uZ2V0U291cmNlRmlsZSgpLmZpbGVOYW1lID09PVxuICAgICAgICAgICAgICAgICAgZHRzRmlsZS5maWxlTmFtZS5yZXBsYWNlKC9cXC5kXFwudHMkLywgJy5qcycpKSB7XG4gICAgICAgICAgICByZW5kZXJJbmZvLnJlZXhwb3J0cy5wdXNoKC4uLmNvbXBpbGVkRmlsZS5yZWV4cG9ydHMpO1xuICAgICAgICAgICAgYXBwbGllZFJlZXhwb3J0cyA9IHRydWU7XG4gICAgICAgICAgfVxuICAgICAgICAgIGR0c01hcC5zZXQoZHRzRmlsZSwgcmVuZGVySW5mbyk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgIH0pO1xuXG4gICAgLy8gQ2FwdHVyZSB0aGUgTW9kdWxlV2l0aFByb3ZpZGVycyBmdW5jdGlvbnMvbWV0aG9kcyB0aGF0IG5lZWQgdXBkYXRpbmdcbiAgICBpZiAobW9kdWxlV2l0aFByb3ZpZGVyc0FuYWx5c2VzICE9PSBudWxsKSB7XG4gICAgICBtb2R1bGVXaXRoUHJvdmlkZXJzQW5hbHlzZXMuZm9yRWFjaCgobW9kdWxlV2l0aFByb3ZpZGVyc1RvRml4LCBkdHNGaWxlKSA9PiB7XG4gICAgICAgIGNvbnN0IHJlbmRlckluZm8gPSBkdHNNYXAuaGFzKGR0c0ZpbGUpID8gZHRzTWFwLmdldChkdHNGaWxlKSEgOiBuZXcgRHRzUmVuZGVySW5mbygpO1xuICAgICAgICByZW5kZXJJbmZvLm1vZHVsZVdpdGhQcm92aWRlcnMgPSBtb2R1bGVXaXRoUHJvdmlkZXJzVG9GaXg7XG4gICAgICAgIGR0c01hcC5zZXQoZHRzRmlsZSwgcmVuZGVySW5mbyk7XG4gICAgICB9KTtcbiAgICB9XG5cbiAgICAvLyBDYXB0dXJlIHRoZSBwcml2YXRlIGRlY2xhcmF0aW9ucyB0aGF0IG5lZWQgdG8gYmUgcmUtZXhwb3J0ZWRcbiAgICBpZiAocHJpdmF0ZURlY2xhcmF0aW9uc0FuYWx5c2VzLmxlbmd0aCkge1xuICAgICAgcHJpdmF0ZURlY2xhcmF0aW9uc0FuYWx5c2VzLmZvckVhY2goZSA9PiB7XG4gICAgICAgIGlmICghZS5kdHNGcm9tKSB7XG4gICAgICAgICAgdGhyb3cgbmV3IEVycm9yKFxuICAgICAgICAgICAgICBgVGhlcmUgaXMgbm8gdHlwaW5ncyBwYXRoIGZvciAke2UuaWRlbnRpZmllcn0gaW4gJHtlLmZyb219LlxcbmAgK1xuICAgICAgICAgICAgICBgV2UgbmVlZCB0byBhZGQgYW4gZXhwb3J0IGZvciB0aGlzIGNsYXNzIHRvIGEgLmQudHMgdHlwaW5ncyBmaWxlIGJlY2F1c2UgYCArXG4gICAgICAgICAgICAgIGBBbmd1bGFyIGNvbXBpbGVyIG5lZWRzIHRvIGJlIGFibGUgdG8gcmVmZXJlbmNlIHRoaXMgY2xhc3MgaW4gY29tcGlsZWQgY29kZSwgc3VjaCBhcyB0ZW1wbGF0ZXMuXFxuYCArXG4gICAgICAgICAgICAgIGBUaGUgc2ltcGxlc3QgZml4IGZvciB0aGlzIGlzIHRvIGVuc3VyZSB0aGF0IHRoaXMgY2xhc3MgaXMgZXhwb3J0ZWQgZnJvbSB0aGUgcGFja2FnZSdzIGVudHJ5LXBvaW50LmApO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICAgIGNvbnN0IGR0c0VudHJ5UG9pbnQgPSB0aGlzLmJ1bmRsZS5kdHMhLmZpbGU7XG4gICAgICBjb25zdCByZW5kZXJJbmZvID1cbiAgICAgICAgICBkdHNNYXAuaGFzKGR0c0VudHJ5UG9pbnQpID8gZHRzTWFwLmdldChkdHNFbnRyeVBvaW50KSEgOiBuZXcgRHRzUmVuZGVySW5mbygpO1xuICAgICAgcmVuZGVySW5mby5wcml2YXRlRXhwb3J0cyA9IHByaXZhdGVEZWNsYXJhdGlvbnNBbmFseXNlcztcbiAgICAgIGR0c01hcC5zZXQoZHRzRW50cnlQb2ludCwgcmVuZGVySW5mbyk7XG4gICAgfVxuXG4gICAgcmV0dXJuIGR0c01hcDtcbiAgfVxufVxuXG5mdW5jdGlvbiBtYXJrRm9yRW1pdEFzU2luZ2xlTGluZShub2RlOiB0cy5Ob2RlKSB7XG4gIHRzLnNldEVtaXRGbGFncyhub2RlLCB0cy5FbWl0RmxhZ3MuU2luZ2xlTGluZSk7XG4gIHRzLmZvckVhY2hDaGlsZChub2RlLCBtYXJrRm9yRW1pdEFzU2luZ2xlTGluZSk7XG59XG4iXX0=