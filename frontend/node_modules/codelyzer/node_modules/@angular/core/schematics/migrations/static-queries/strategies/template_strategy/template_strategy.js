/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
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
        define("@angular/core/schematics/migrations/static-queries/strategies/template_strategy/template_strategy", ["require", "exports", "@angular/compiler", "@angular/compiler-cli", "path", "typescript", "@angular/core/schematics/migrations/static-queries/angular/query-definition"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const compiler_1 = require("@angular/compiler");
    const compiler_cli_1 = require("@angular/compiler-cli");
    const path_1 = require("path");
    const ts = require("typescript");
    const query_definition_1 = require("@angular/core/schematics/migrations/static-queries/angular/query-definition");
    const QUERY_NOT_DECLARED_IN_COMPONENT_MESSAGE = 'Timing could not be determined. This happens ' +
        'if the query is not declared in any component.';
    class QueryTemplateStrategy {
        constructor(projectPath, classMetadata, host) {
            this.projectPath = projectPath;
            this.classMetadata = classMetadata;
            this.host = host;
            this.compiler = null;
            this.metadataResolver = null;
            this.analyzedQueries = new Map();
        }
        /**
         * Sets up the template strategy by creating the AngularCompilerProgram. Returns false if
         * the AOT compiler program could not be created due to failure diagnostics.
         */
        setup() {
            const { rootNames, options } = compiler_cli_1.readConfiguration(this.projectPath);
            // https://github.com/angular/angular/commit/ec4381dd401f03bded652665b047b6b90f2b425f made Ivy
            // the default. This breaks the assumption that "createProgram" from compiler-cli returns the
            // NGC program. In order to ensure that the migration runs properly, we set "enableIvy" to
            // false.
            options.enableIvy = false;
            const aotProgram = compiler_cli_1.createProgram({ rootNames, options, host: this.host });
            // The "AngularCompilerProgram" does not expose the "AotCompiler" instance, nor does it
            // expose the logic that is necessary to analyze the determined modules. We work around
            // this by just accessing the necessary private properties using the bracket notation.
            this.compiler = aotProgram['compiler'];
            this.metadataResolver = this.compiler['_metadataResolver'];
            // Modify the "DirectiveNormalizer" to not normalize any referenced external stylesheets.
            // This is necessary because in CLI projects preprocessor files are commonly referenced
            // and we don't want to parse them in order to extract relative style references. This
            // breaks the analysis of the project because we instantiate a standalone AOT compiler
            // program which does not contain the custom logic by the Angular CLI Webpack compiler plugin.
            const directiveNormalizer = this.metadataResolver['_directiveNormalizer'];
            directiveNormalizer['_normalizeStylesheet'] = function (metadata) {
                return new compiler_1.CompileStylesheetMetadata({ styles: metadata.styles, styleUrls: [], moduleUrl: metadata.moduleUrl });
            };
            // Retrieves the analyzed modules of the current program. This data can be
            // used to determine the timing for registered queries.
            const analyzedModules = aotProgram['analyzedModules'];
            const ngStructuralDiagnostics = aotProgram.getNgStructuralDiagnostics();
            if (ngStructuralDiagnostics.length) {
                throw this._createDiagnosticsError(ngStructuralDiagnostics);
            }
            analyzedModules.files.forEach(file => {
                file.directives.forEach(directive => this._analyzeDirective(directive, analyzedModules));
            });
        }
        /** Analyzes a given directive by determining the timing of all matched view queries. */
        _analyzeDirective(symbol, analyzedModules) {
            const metadata = this.metadataResolver.getDirectiveMetadata(symbol);
            const ngModule = analyzedModules.ngModuleByPipeOrDirective.get(symbol);
            if (!metadata.isComponent || !ngModule) {
                return;
            }
            const parsedTemplate = this._parseTemplate(metadata, ngModule);
            const queryTimingMap = findStaticQueryIds(parsedTemplate);
            const { staticQueryIds } = staticViewQueryIds(queryTimingMap);
            metadata.viewQueries.forEach((query, index) => {
                // Query ids are computed by adding "one" to the index. This is done within
                // the "view_compiler.ts" in order to support using a bloom filter for queries.
                const queryId = index + 1;
                const queryKey = this._getViewQueryUniqueKey(symbol.filePath, symbol.name, query.propertyName);
                this.analyzedQueries.set(queryKey, staticQueryIds.has(queryId) ? query_definition_1.QueryTiming.STATIC : query_definition_1.QueryTiming.DYNAMIC);
            });
        }
        /** Detects the timing of the query definition. */
        detectTiming(query) {
            if (query.type === query_definition_1.QueryType.ContentChild) {
                return { timing: null, message: 'Content queries cannot be migrated automatically.' };
            }
            else if (!query.name) {
                // In case the query property name is not statically analyzable, we mark this
                // query as unresolved. NGC currently skips these view queries as well.
                return { timing: null, message: 'Query is not statically analyzable.' };
            }
            const propertyName = query.name;
            const classMetadata = this.classMetadata.get(query.container);
            // In case there is no class metadata or there are no derived classes that
            // could access the current query, we just look for the query analysis of
            // the class that declares the query. e.g. only the template of the class
            // that declares the view query affects the query timing.
            if (!classMetadata || !classMetadata.derivedClasses.length) {
                const timing = this._getQueryTimingFromClass(query.container, propertyName);
                if (timing === null) {
                    return { timing: null, message: QUERY_NOT_DECLARED_IN_COMPONENT_MESSAGE };
                }
                return { timing };
            }
            let resolvedTiming = null;
            let timingMismatch = false;
            // In case there are multiple components that use the same query (e.g. through inheritance),
            // we need to check if all components use the query with the same timing. If that is not
            // the case, the query timing is ambiguous and the developer needs to fix the query manually.
            [query.container, ...classMetadata.derivedClasses].forEach(classDecl => {
                const classTiming = this._getQueryTimingFromClass(classDecl, propertyName);
                if (classTiming === null) {
                    return;
                }
                // In case there is no resolved timing yet, save the new timing. Timings from other
                // components that use the query with a different timing, cause the timing to be
                // mismatched. In that case we can't detect a working timing for all components.
                if (resolvedTiming === null) {
                    resolvedTiming = classTiming;
                }
                else if (resolvedTiming !== classTiming) {
                    timingMismatch = true;
                }
            });
            if (resolvedTiming === null) {
                return { timing: query_definition_1.QueryTiming.DYNAMIC, message: QUERY_NOT_DECLARED_IN_COMPONENT_MESSAGE };
            }
            else if (timingMismatch) {
                return { timing: null, message: 'Multiple components use the query with different timings.' };
            }
            return { timing: resolvedTiming };
        }
        /**
         * Gets the timing that has been resolved for a given query when it's used within the
         * specified class declaration. e.g. queries from an inherited class can be used.
         */
        _getQueryTimingFromClass(classDecl, queryName) {
            if (!classDecl.name) {
                return null;
            }
            const filePath = classDecl.getSourceFile().fileName;
            const queryKey = this._getViewQueryUniqueKey(filePath, classDecl.name.text, queryName);
            if (this.analyzedQueries.has(queryKey)) {
                return this.analyzedQueries.get(queryKey);
            }
            return null;
        }
        _parseTemplate(component, ngModule) {
            return this
                .compiler['_parseTemplate'](component, ngModule, ngModule.transitiveModule.directives)
                .template;
        }
        _createDiagnosticsError(diagnostics) {
            return new Error(ts.formatDiagnostics(diagnostics, this.host));
        }
        _getViewQueryUniqueKey(filePath, className, propName) {
            return `${path_1.resolve(filePath)}#${className}-${propName}`;
        }
    }
    exports.QueryTemplateStrategy = QueryTemplateStrategy;
    /** Figures out which queries are static and which ones are dynamic. */
    function findStaticQueryIds(nodes, result = new Map()) {
        nodes.forEach((node) => {
            const staticQueryIds = new Set();
            const dynamicQueryIds = new Set();
            let queryMatches = undefined;
            if (node instanceof compiler_1.ElementAst) {
                findStaticQueryIds(node.children, result);
                node.children.forEach((child) => {
                    const childData = result.get(child);
                    childData.staticQueryIds.forEach(queryId => staticQueryIds.add(queryId));
                    childData.dynamicQueryIds.forEach(queryId => dynamicQueryIds.add(queryId));
                });
                queryMatches = node.queryMatches;
            }
            else if (node instanceof compiler_1.EmbeddedTemplateAst) {
                findStaticQueryIds(node.children, result);
                node.children.forEach((child) => {
                    const childData = result.get(child);
                    childData.staticQueryIds.forEach(queryId => dynamicQueryIds.add(queryId));
                    childData.dynamicQueryIds.forEach(queryId => dynamicQueryIds.add(queryId));
                });
                queryMatches = node.queryMatches;
            }
            if (queryMatches) {
                queryMatches.forEach((match) => staticQueryIds.add(match.queryId));
            }
            dynamicQueryIds.forEach(queryId => staticQueryIds.delete(queryId));
            result.set(node, { staticQueryIds, dynamicQueryIds });
        });
        return result;
    }
    /** Splits queries into static and dynamic. */
    function staticViewQueryIds(nodeStaticQueryIds) {
        const staticQueryIds = new Set();
        const dynamicQueryIds = new Set();
        Array.from(nodeStaticQueryIds.values()).forEach((entry) => {
            entry.staticQueryIds.forEach(queryId => staticQueryIds.add(queryId));
            entry.dynamicQueryIds.forEach(queryId => dynamicQueryIds.add(queryId));
        });
        dynamicQueryIds.forEach(queryId => staticQueryIds.delete(queryId));
        return { staticQueryIds, dynamicQueryIds };
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidGVtcGxhdGVfc3RyYXRlZ3kuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NjaGVtYXRpY3MvbWlncmF0aW9ucy9zdGF0aWMtcXVlcmllcy9zdHJhdGVnaWVzL3RlbXBsYXRlX3N0cmF0ZWd5L3RlbXBsYXRlX3N0cmF0ZWd5LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7O0lBRUgsZ0RBQWdQO0lBQ2hQLHdEQUFtRjtJQUNuRiwrQkFBNkI7SUFDN0IsaUNBQWlDO0lBR2pDLGtIQUF5RjtJQUd6RixNQUFNLHVDQUF1QyxHQUFHLCtDQUErQztRQUMzRixnREFBZ0QsQ0FBQztJQUVyRCxNQUFhLHFCQUFxQjtRQUtoQyxZQUNZLFdBQW1CLEVBQVUsYUFBK0IsRUFDNUQsSUFBcUI7WUFEckIsZ0JBQVcsR0FBWCxXQUFXLENBQVE7WUFBVSxrQkFBYSxHQUFiLGFBQWEsQ0FBa0I7WUFDNUQsU0FBSSxHQUFKLElBQUksQ0FBaUI7WUFOekIsYUFBUSxHQUFxQixJQUFJLENBQUM7WUFDbEMscUJBQWdCLEdBQWlDLElBQUksQ0FBQztZQUN0RCxvQkFBZSxHQUFHLElBQUksR0FBRyxFQUF1QixDQUFDO1FBSXJCLENBQUM7UUFFckM7OztXQUdHO1FBQ0gsS0FBSztZQUNILE1BQU0sRUFBQyxTQUFTLEVBQUUsT0FBTyxFQUFDLEdBQUcsZ0NBQWlCLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxDQUFDO1lBRWpFLDhGQUE4RjtZQUM5Riw2RkFBNkY7WUFDN0YsMEZBQTBGO1lBQzFGLFNBQVM7WUFDVCxPQUFPLENBQUMsU0FBUyxHQUFHLEtBQUssQ0FBQztZQUUxQixNQUFNLFVBQVUsR0FBRyw0QkFBYSxDQUFDLEVBQUMsU0FBUyxFQUFFLE9BQU8sRUFBRSxJQUFJLEVBQUUsSUFBSSxDQUFDLElBQUksRUFBQyxDQUFDLENBQUM7WUFFeEUsdUZBQXVGO1lBQ3ZGLHVGQUF1RjtZQUN2RixzRkFBc0Y7WUFDdEYsSUFBSSxDQUFDLFFBQVEsR0FBSSxVQUFrQixDQUFDLFVBQVUsQ0FBQyxDQUFDO1lBQ2hELElBQUksQ0FBQyxnQkFBZ0IsR0FBRyxJQUFJLENBQUMsUUFBVSxDQUFDLG1CQUFtQixDQUFDLENBQUM7WUFFN0QseUZBQXlGO1lBQ3pGLHVGQUF1RjtZQUN2RixzRkFBc0Y7WUFDdEYsc0ZBQXNGO1lBQ3RGLDhGQUE4RjtZQUM5RixNQUFNLG1CQUFtQixHQUFHLElBQUksQ0FBQyxnQkFBa0IsQ0FBQyxzQkFBc0IsQ0FBQyxDQUFDO1lBQzVFLG1CQUFtQixDQUFDLHNCQUFzQixDQUFDLEdBQUcsVUFBUyxRQUFtQztnQkFDeEYsT0FBTyxJQUFJLG9DQUF5QixDQUNoQyxFQUFDLE1BQU0sRUFBRSxRQUFRLENBQUMsTUFBTSxFQUFFLFNBQVMsRUFBRSxFQUFFLEVBQUUsU0FBUyxFQUFFLFFBQVEsQ0FBQyxTQUFXLEVBQUMsQ0FBQyxDQUFDO1lBQ2pGLENBQUMsQ0FBQztZQUVGLDBFQUEwRTtZQUMxRSx1REFBdUQ7WUFDdkQsTUFBTSxlQUFlLEdBQUksVUFBa0IsQ0FBQyxpQkFBaUIsQ0FBc0IsQ0FBQztZQUVwRixNQUFNLHVCQUF1QixHQUFHLFVBQVUsQ0FBQywwQkFBMEIsRUFBRSxDQUFDO1lBQ3hFLElBQUksdUJBQXVCLENBQUMsTUFBTSxFQUFFO2dCQUNsQyxNQUFNLElBQUksQ0FBQyx1QkFBdUIsQ0FBQyx1QkFBdUIsQ0FBQyxDQUFDO2FBQzdEO1lBRUQsZUFBZSxDQUFDLEtBQUssQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLEVBQUU7Z0JBQ25DLElBQUksQ0FBQyxVQUFVLENBQUMsT0FBTyxDQUFDLFNBQVMsQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLGlCQUFpQixDQUFDLFNBQVMsRUFBRSxlQUFlLENBQUMsQ0FBQyxDQUFDO1lBQzNGLENBQUMsQ0FBQyxDQUFDO1FBQ0wsQ0FBQztRQUVELHdGQUF3RjtRQUNoRixpQkFBaUIsQ0FBQyxNQUFvQixFQUFFLGVBQWtDO1lBQ2hGLE1BQU0sUUFBUSxHQUFHLElBQUksQ0FBQyxnQkFBa0IsQ0FBQyxvQkFBb0IsQ0FBQyxNQUFNLENBQUMsQ0FBQztZQUN0RSxNQUFNLFFBQVEsR0FBRyxlQUFlLENBQUMseUJBQXlCLENBQUMsR0FBRyxDQUFDLE1BQU0sQ0FBQyxDQUFDO1lBRXZFLElBQUksQ0FBQyxRQUFRLENBQUMsV0FBVyxJQUFJLENBQUMsUUFBUSxFQUFFO2dCQUN0QyxPQUFPO2FBQ1I7WUFFRCxNQUFNLGNBQWMsR0FBRyxJQUFJLENBQUMsY0FBYyxDQUFDLFFBQVEsRUFBRSxRQUFRLENBQUMsQ0FBQztZQUMvRCxNQUFNLGNBQWMsR0FBRyxrQkFBa0IsQ0FBQyxjQUFjLENBQUMsQ0FBQztZQUMxRCxNQUFNLEVBQUMsY0FBYyxFQUFDLEdBQUcsa0JBQWtCLENBQUMsY0FBYyxDQUFDLENBQUM7WUFFNUQsUUFBUSxDQUFDLFdBQVcsQ0FBQyxPQUFPLENBQUMsQ0FBQyxLQUFLLEVBQUUsS0FBSyxFQUFFLEVBQUU7Z0JBQzVDLDJFQUEyRTtnQkFDM0UsK0VBQStFO2dCQUMvRSxNQUFNLE9BQU8sR0FBRyxLQUFLLEdBQUcsQ0FBQyxDQUFDO2dCQUMxQixNQUFNLFFBQVEsR0FDVixJQUFJLENBQUMsc0JBQXNCLENBQUMsTUFBTSxDQUFDLFFBQVEsRUFBRSxNQUFNLENBQUMsSUFBSSxFQUFFLEtBQUssQ0FBQyxZQUFZLENBQUMsQ0FBQztnQkFDbEYsSUFBSSxDQUFDLGVBQWUsQ0FBQyxHQUFHLENBQ3BCLFFBQVEsRUFBRSxjQUFjLENBQUMsR0FBRyxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUMsQ0FBQyw4QkFBVyxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsOEJBQVcsQ0FBQyxPQUFPLENBQUMsQ0FBQztZQUN4RixDQUFDLENBQUMsQ0FBQztRQUNMLENBQUM7UUFFRCxrREFBa0Q7UUFDbEQsWUFBWSxDQUFDLEtBQXdCO1lBQ25DLElBQUksS0FBSyxDQUFDLElBQUksS0FBSyw0QkFBUyxDQUFDLFlBQVksRUFBRTtnQkFDekMsT0FBTyxFQUFDLE1BQU0sRUFBRSxJQUFJLEVBQUUsT0FBTyxFQUFFLG1EQUFtRCxFQUFDLENBQUM7YUFDckY7aUJBQU0sSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLEVBQUU7Z0JBQ3RCLDZFQUE2RTtnQkFDN0UsdUVBQXVFO2dCQUN2RSxPQUFPLEVBQUMsTUFBTSxFQUFFLElBQUksRUFBRSxPQUFPLEVBQUUscUNBQXFDLEVBQUMsQ0FBQzthQUN2RTtZQUVELE1BQU0sWUFBWSxHQUFHLEtBQUssQ0FBQyxJQUFJLENBQUM7WUFDaEMsTUFBTSxhQUFhLEdBQUcsSUFBSSxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsS0FBSyxDQUFDLFNBQVMsQ0FBQyxDQUFDO1lBRTlELDBFQUEwRTtZQUMxRSx5RUFBeUU7WUFDekUseUVBQXlFO1lBQ3pFLHlEQUF5RDtZQUN6RCxJQUFJLENBQUMsYUFBYSxJQUFJLENBQUMsYUFBYSxDQUFDLGNBQWMsQ0FBQyxNQUFNLEVBQUU7Z0JBQzFELE1BQU0sTUFBTSxHQUFHLElBQUksQ0FBQyx3QkFBd0IsQ0FBQyxLQUFLLENBQUMsU0FBUyxFQUFFLFlBQVksQ0FBQyxDQUFDO2dCQUU1RSxJQUFJLE1BQU0sS0FBSyxJQUFJLEVBQUU7b0JBQ25CLE9BQU8sRUFBQyxNQUFNLEVBQUUsSUFBSSxFQUFFLE9BQU8sRUFBRSx1Q0FBdUMsRUFBQyxDQUFDO2lCQUN6RTtnQkFFRCxPQUFPLEVBQUMsTUFBTSxFQUFDLENBQUM7YUFDakI7WUFFRCxJQUFJLGNBQWMsR0FBcUIsSUFBSSxDQUFDO1lBQzVDLElBQUksY0FBYyxHQUFHLEtBQUssQ0FBQztZQUUzQiw0RkFBNEY7WUFDNUYsd0ZBQXdGO1lBQ3hGLDZGQUE2RjtZQUM3RixDQUFDLEtBQUssQ0FBQyxTQUFTLEVBQUUsR0FBRyxhQUFhLENBQUMsY0FBYyxDQUFDLENBQUMsT0FBTyxDQUFDLFNBQVMsQ0FBQyxFQUFFO2dCQUNyRSxNQUFNLFdBQVcsR0FBRyxJQUFJLENBQUMsd0JBQXdCLENBQUMsU0FBUyxFQUFFLFlBQVksQ0FBQyxDQUFDO2dCQUUzRSxJQUFJLFdBQVcsS0FBSyxJQUFJLEVBQUU7b0JBQ3hCLE9BQU87aUJBQ1I7Z0JBRUQsbUZBQW1GO2dCQUNuRixnRkFBZ0Y7Z0JBQ2hGLGdGQUFnRjtnQkFDaEYsSUFBSSxjQUFjLEtBQUssSUFBSSxFQUFFO29CQUMzQixjQUFjLEdBQUcsV0FBVyxDQUFDO2lCQUM5QjtxQkFBTSxJQUFJLGNBQWMsS0FBSyxXQUFXLEVBQUU7b0JBQ3pDLGNBQWMsR0FBRyxJQUFJLENBQUM7aUJBQ3ZCO1lBQ0gsQ0FBQyxDQUFDLENBQUM7WUFFSCxJQUFJLGNBQWMsS0FBSyxJQUFJLEVBQUU7Z0JBQzNCLE9BQU8sRUFBQyxNQUFNLEVBQUUsOEJBQVcsQ0FBQyxPQUFPLEVBQUUsT0FBTyxFQUFFLHVDQUF1QyxFQUFDLENBQUM7YUFDeEY7aUJBQU0sSUFBSSxjQUFjLEVBQUU7Z0JBQ3pCLE9BQU8sRUFBQyxNQUFNLEVBQUUsSUFBSSxFQUFFLE9BQU8sRUFBRSwyREFBMkQsRUFBQyxDQUFDO2FBQzdGO1lBQ0QsT0FBTyxFQUFDLE1BQU0sRUFBRSxjQUFjLEVBQUMsQ0FBQztRQUNsQyxDQUFDO1FBRUQ7OztXQUdHO1FBQ0ssd0JBQXdCLENBQUMsU0FBOEIsRUFBRSxTQUFpQjtZQUVoRixJQUFJLENBQUMsU0FBUyxDQUFDLElBQUksRUFBRTtnQkFDbkIsT0FBTyxJQUFJLENBQUM7YUFDYjtZQUNELE1BQU0sUUFBUSxHQUFHLFNBQVMsQ0FBQyxhQUFhLEVBQUUsQ0FBQyxRQUFRLENBQUM7WUFDcEQsTUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLHNCQUFzQixDQUFDLFFBQVEsRUFBRSxTQUFTLENBQUMsSUFBSSxDQUFDLElBQUksRUFBRSxTQUFTLENBQUMsQ0FBQztZQUV2RixJQUFJLElBQUksQ0FBQyxlQUFlLENBQUMsR0FBRyxDQUFDLFFBQVEsQ0FBQyxFQUFFO2dCQUN0QyxPQUFPLElBQUksQ0FBQyxlQUFlLENBQUMsR0FBRyxDQUFDLFFBQVEsQ0FBRyxDQUFDO2FBQzdDO1lBQ0QsT0FBTyxJQUFJLENBQUM7UUFDZCxDQUFDO1FBRU8sY0FBYyxDQUFDLFNBQW1DLEVBQUUsUUFBaUM7WUFFM0YsT0FBTyxJQUFJO2lCQUNOLFFBQVUsQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDLFNBQVMsRUFBRSxRQUFRLEVBQUUsUUFBUSxDQUFDLGdCQUFnQixDQUFDLFVBQVUsQ0FBQztpQkFDdkYsUUFBUSxDQUFDO1FBQ2hCLENBQUM7UUFFTyx1QkFBdUIsQ0FBQyxXQUFzQztZQUNwRSxPQUFPLElBQUksS0FBSyxDQUFDLEVBQUUsQ0FBQyxpQkFBaUIsQ0FBQyxXQUE4QixFQUFFLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDO1FBQ3BGLENBQUM7UUFFTyxzQkFBc0IsQ0FBQyxRQUFnQixFQUFFLFNBQWlCLEVBQUUsUUFBZ0I7WUFDbEYsT0FBTyxHQUFHLGNBQU8sQ0FBQyxRQUFRLENBQUMsSUFBSSxTQUFTLElBQUksUUFBUSxFQUFFLENBQUM7UUFDekQsQ0FBQztLQUNGO0lBektELHNEQXlLQztJQU9ELHVFQUF1RTtJQUN2RSxTQUFTLGtCQUFrQixDQUN2QixLQUFvQixFQUFFLFNBQVMsSUFBSSxHQUFHLEVBQXlDO1FBRWpGLEtBQUssQ0FBQyxPQUFPLENBQUMsQ0FBQyxJQUFJLEVBQUUsRUFBRTtZQUNyQixNQUFNLGNBQWMsR0FBRyxJQUFJLEdBQUcsRUFBVSxDQUFDO1lBQ3pDLE1BQU0sZUFBZSxHQUFHLElBQUksR0FBRyxFQUFVLENBQUM7WUFDMUMsSUFBSSxZQUFZLEdBQWlCLFNBQVcsQ0FBQztZQUM3QyxJQUFJLElBQUksWUFBWSxxQkFBVSxFQUFFO2dCQUM5QixrQkFBa0IsQ0FBQyxJQUFJLENBQUMsUUFBUSxFQUFFLE1BQU0sQ0FBQyxDQUFDO2dCQUMxQyxJQUFJLENBQUMsUUFBUSxDQUFDLE9BQU8sQ0FBQyxDQUFDLEtBQUssRUFBRSxFQUFFO29CQUM5QixNQUFNLFNBQVMsR0FBRyxNQUFNLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBRyxDQUFDO29CQUN0QyxTQUFTLENBQUMsY0FBYyxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsRUFBRSxDQUFDLGNBQWMsQ0FBQyxHQUFHLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQztvQkFDekUsU0FBUyxDQUFDLGVBQWUsQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLEVBQUUsQ0FBQyxlQUFlLENBQUMsR0FBRyxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUM7Z0JBQzdFLENBQUMsQ0FBQyxDQUFDO2dCQUNILFlBQVksR0FBRyxJQUFJLENBQUMsWUFBWSxDQUFDO2FBQ2xDO2lCQUFNLElBQUksSUFBSSxZQUFZLDhCQUFtQixFQUFFO2dCQUM5QyxrQkFBa0IsQ0FBQyxJQUFJLENBQUMsUUFBUSxFQUFFLE1BQU0sQ0FBQyxDQUFDO2dCQUMxQyxJQUFJLENBQUMsUUFBUSxDQUFDLE9BQU8sQ0FBQyxDQUFDLEtBQUssRUFBRSxFQUFFO29CQUM5QixNQUFNLFNBQVMsR0FBRyxNQUFNLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBRyxDQUFDO29CQUN0QyxTQUFTLENBQUMsY0FBYyxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsRUFBRSxDQUFDLGVBQWUsQ0FBQyxHQUFHLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQztvQkFDMUUsU0FBUyxDQUFDLGVBQWUsQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLEVBQUUsQ0FBQyxlQUFlLENBQUMsR0FBRyxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUM7Z0JBQzdFLENBQUMsQ0FBQyxDQUFDO2dCQUNILFlBQVksR0FBRyxJQUFJLENBQUMsWUFBWSxDQUFDO2FBQ2xDO1lBQ0QsSUFBSSxZQUFZLEVBQUU7Z0JBQ2hCLFlBQVksQ0FBQyxPQUFPLENBQUMsQ0FBQyxLQUFLLEVBQUUsRUFBRSxDQUFDLGNBQWMsQ0FBQyxHQUFHLENBQUMsS0FBSyxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUM7YUFDcEU7WUFDRCxlQUFlLENBQUMsT0FBTyxDQUFDLE9BQU8sQ0FBQyxFQUFFLENBQUMsY0FBYyxDQUFDLE1BQU0sQ0FBQyxPQUFPLENBQUMsQ0FBQyxDQUFDO1lBQ25FLE1BQU0sQ0FBQyxHQUFHLENBQUMsSUFBSSxFQUFFLEVBQUMsY0FBYyxFQUFFLGVBQWUsRUFBQyxDQUFDLENBQUM7UUFDdEQsQ0FBQyxDQUFDLENBQUM7UUFDSCxPQUFPLE1BQU0sQ0FBQztJQUNoQixDQUFDO0lBRUQsOENBQThDO0lBQzlDLFNBQVMsa0JBQWtCLENBQUMsa0JBQThEO1FBRXhGLE1BQU0sY0FBYyxHQUFHLElBQUksR0FBRyxFQUFVLENBQUM7UUFDekMsTUFBTSxlQUFlLEdBQUcsSUFBSSxHQUFHLEVBQVUsQ0FBQztRQUMxQyxLQUFLLENBQUMsSUFBSSxDQUFDLGtCQUFrQixDQUFDLE1BQU0sRUFBRSxDQUFDLENBQUMsT0FBTyxDQUFDLENBQUMsS0FBSyxFQUFFLEVBQUU7WUFDeEQsS0FBSyxDQUFDLGNBQWMsQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLEVBQUUsQ0FBQyxjQUFjLENBQUMsR0FBRyxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUM7WUFDckUsS0FBSyxDQUFDLGVBQWUsQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLEVBQUUsQ0FBQyxlQUFlLENBQUMsR0FBRyxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUM7UUFDekUsQ0FBQyxDQUFDLENBQUM7UUFDSCxlQUFlLENBQUMsT0FBTyxDQUFDLE9BQU8sQ0FBQyxFQUFFLENBQUMsY0FBYyxDQUFDLE1BQU0sQ0FBQyxPQUFPLENBQUMsQ0FBQyxDQUFDO1FBQ25FLE9BQU8sRUFBQyxjQUFjLEVBQUUsZUFBZSxFQUFDLENBQUM7SUFDM0MsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtBb3RDb21waWxlciwgQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhLCBDb21waWxlTWV0YWRhdGFSZXNvbHZlciwgQ29tcGlsZU5nTW9kdWxlTWV0YWRhdGEsIENvbXBpbGVTdHlsZXNoZWV0TWV0YWRhdGEsIEVsZW1lbnRBc3QsIEVtYmVkZGVkVGVtcGxhdGVBc3QsIE5nQW5hbHl6ZWRNb2R1bGVzLCBRdWVyeU1hdGNoLCBTdGF0aWNTeW1ib2wsIFRlbXBsYXRlQXN0fSBmcm9tICdAYW5ndWxhci9jb21waWxlcic7XG5pbXBvcnQge0RpYWdub3N0aWMsIGNyZWF0ZVByb2dyYW0sIHJlYWRDb25maWd1cmF0aW9ufSBmcm9tICdAYW5ndWxhci9jb21waWxlci1jbGknO1xuaW1wb3J0IHtyZXNvbHZlfSBmcm9tICdwYXRoJztcbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge0NsYXNzTWV0YWRhdGFNYXB9IGZyb20gJy4uLy4uL2FuZ3VsYXIvbmdfcXVlcnlfdmlzaXRvcic7XG5pbXBvcnQge05nUXVlcnlEZWZpbml0aW9uLCBRdWVyeVRpbWluZywgUXVlcnlUeXBlfSBmcm9tICcuLi8uLi9hbmd1bGFyL3F1ZXJ5LWRlZmluaXRpb24nO1xuaW1wb3J0IHtUaW1pbmdSZXN1bHQsIFRpbWluZ1N0cmF0ZWd5fSBmcm9tICcuLi90aW1pbmctc3RyYXRlZ3knO1xuXG5jb25zdCBRVUVSWV9OT1RfREVDTEFSRURfSU5fQ09NUE9ORU5UX01FU1NBR0UgPSAnVGltaW5nIGNvdWxkIG5vdCBiZSBkZXRlcm1pbmVkLiBUaGlzIGhhcHBlbnMgJyArXG4gICAgJ2lmIHRoZSBxdWVyeSBpcyBub3QgZGVjbGFyZWQgaW4gYW55IGNvbXBvbmVudC4nO1xuXG5leHBvcnQgY2xhc3MgUXVlcnlUZW1wbGF0ZVN0cmF0ZWd5IGltcGxlbWVudHMgVGltaW5nU3RyYXRlZ3kge1xuICBwcml2YXRlIGNvbXBpbGVyOiBBb3RDb21waWxlcnxudWxsID0gbnVsbDtcbiAgcHJpdmF0ZSBtZXRhZGF0YVJlc29sdmVyOiBDb21waWxlTWV0YWRhdGFSZXNvbHZlcnxudWxsID0gbnVsbDtcbiAgcHJpdmF0ZSBhbmFseXplZFF1ZXJpZXMgPSBuZXcgTWFwPHN0cmluZywgUXVlcnlUaW1pbmc+KCk7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHByb2plY3RQYXRoOiBzdHJpbmcsIHByaXZhdGUgY2xhc3NNZXRhZGF0YTogQ2xhc3NNZXRhZGF0YU1hcCxcbiAgICAgIHByaXZhdGUgaG9zdDogdHMuQ29tcGlsZXJIb3N0KSB7fVxuXG4gIC8qKlxuICAgKiBTZXRzIHVwIHRoZSB0ZW1wbGF0ZSBzdHJhdGVneSBieSBjcmVhdGluZyB0aGUgQW5ndWxhckNvbXBpbGVyUHJvZ3JhbS4gUmV0dXJucyBmYWxzZSBpZlxuICAgKiB0aGUgQU9UIGNvbXBpbGVyIHByb2dyYW0gY291bGQgbm90IGJlIGNyZWF0ZWQgZHVlIHRvIGZhaWx1cmUgZGlhZ25vc3RpY3MuXG4gICAqL1xuICBzZXR1cCgpIHtcbiAgICBjb25zdCB7cm9vdE5hbWVzLCBvcHRpb25zfSA9IHJlYWRDb25maWd1cmF0aW9uKHRoaXMucHJvamVjdFBhdGgpO1xuXG4gICAgLy8gaHR0cHM6Ly9naXRodWIuY29tL2FuZ3VsYXIvYW5ndWxhci9jb21taXQvZWM0MzgxZGQ0MDFmMDNiZGVkNjUyNjY1YjA0N2I2YjkwZjJiNDI1ZiBtYWRlIEl2eVxuICAgIC8vIHRoZSBkZWZhdWx0LiBUaGlzIGJyZWFrcyB0aGUgYXNzdW1wdGlvbiB0aGF0IFwiY3JlYXRlUHJvZ3JhbVwiIGZyb20gY29tcGlsZXItY2xpIHJldHVybnMgdGhlXG4gICAgLy8gTkdDIHByb2dyYW0uIEluIG9yZGVyIHRvIGVuc3VyZSB0aGF0IHRoZSBtaWdyYXRpb24gcnVucyBwcm9wZXJseSwgd2Ugc2V0IFwiZW5hYmxlSXZ5XCIgdG9cbiAgICAvLyBmYWxzZS5cbiAgICBvcHRpb25zLmVuYWJsZUl2eSA9IGZhbHNlO1xuXG4gICAgY29uc3QgYW90UHJvZ3JhbSA9IGNyZWF0ZVByb2dyYW0oe3Jvb3ROYW1lcywgb3B0aW9ucywgaG9zdDogdGhpcy5ob3N0fSk7XG5cbiAgICAvLyBUaGUgXCJBbmd1bGFyQ29tcGlsZXJQcm9ncmFtXCIgZG9lcyBub3QgZXhwb3NlIHRoZSBcIkFvdENvbXBpbGVyXCIgaW5zdGFuY2UsIG5vciBkb2VzIGl0XG4gICAgLy8gZXhwb3NlIHRoZSBsb2dpYyB0aGF0IGlzIG5lY2Vzc2FyeSB0byBhbmFseXplIHRoZSBkZXRlcm1pbmVkIG1vZHVsZXMuIFdlIHdvcmsgYXJvdW5kXG4gICAgLy8gdGhpcyBieSBqdXN0IGFjY2Vzc2luZyB0aGUgbmVjZXNzYXJ5IHByaXZhdGUgcHJvcGVydGllcyB1c2luZyB0aGUgYnJhY2tldCBub3RhdGlvbi5cbiAgICB0aGlzLmNvbXBpbGVyID0gKGFvdFByb2dyYW0gYXMgYW55KVsnY29tcGlsZXInXTtcbiAgICB0aGlzLm1ldGFkYXRhUmVzb2x2ZXIgPSB0aGlzLmNvbXBpbGVyICFbJ19tZXRhZGF0YVJlc29sdmVyJ107XG5cbiAgICAvLyBNb2RpZnkgdGhlIFwiRGlyZWN0aXZlTm9ybWFsaXplclwiIHRvIG5vdCBub3JtYWxpemUgYW55IHJlZmVyZW5jZWQgZXh0ZXJuYWwgc3R5bGVzaGVldHMuXG4gICAgLy8gVGhpcyBpcyBuZWNlc3NhcnkgYmVjYXVzZSBpbiBDTEkgcHJvamVjdHMgcHJlcHJvY2Vzc29yIGZpbGVzIGFyZSBjb21tb25seSByZWZlcmVuY2VkXG4gICAgLy8gYW5kIHdlIGRvbid0IHdhbnQgdG8gcGFyc2UgdGhlbSBpbiBvcmRlciB0byBleHRyYWN0IHJlbGF0aXZlIHN0eWxlIHJlZmVyZW5jZXMuIFRoaXNcbiAgICAvLyBicmVha3MgdGhlIGFuYWx5c2lzIG9mIHRoZSBwcm9qZWN0IGJlY2F1c2Ugd2UgaW5zdGFudGlhdGUgYSBzdGFuZGFsb25lIEFPVCBjb21waWxlclxuICAgIC8vIHByb2dyYW0gd2hpY2ggZG9lcyBub3QgY29udGFpbiB0aGUgY3VzdG9tIGxvZ2ljIGJ5IHRoZSBBbmd1bGFyIENMSSBXZWJwYWNrIGNvbXBpbGVyIHBsdWdpbi5cbiAgICBjb25zdCBkaXJlY3RpdmVOb3JtYWxpemVyID0gdGhpcy5tZXRhZGF0YVJlc29sdmVyICFbJ19kaXJlY3RpdmVOb3JtYWxpemVyJ107XG4gICAgZGlyZWN0aXZlTm9ybWFsaXplclsnX25vcm1hbGl6ZVN0eWxlc2hlZXQnXSA9IGZ1bmN0aW9uKG1ldGFkYXRhOiBDb21waWxlU3R5bGVzaGVldE1ldGFkYXRhKSB7XG4gICAgICByZXR1cm4gbmV3IENvbXBpbGVTdHlsZXNoZWV0TWV0YWRhdGEoXG4gICAgICAgICAge3N0eWxlczogbWV0YWRhdGEuc3R5bGVzLCBzdHlsZVVybHM6IFtdLCBtb2R1bGVVcmw6IG1ldGFkYXRhLm1vZHVsZVVybCAhfSk7XG4gICAgfTtcblxuICAgIC8vIFJldHJpZXZlcyB0aGUgYW5hbHl6ZWQgbW9kdWxlcyBvZiB0aGUgY3VycmVudCBwcm9ncmFtLiBUaGlzIGRhdGEgY2FuIGJlXG4gICAgLy8gdXNlZCB0byBkZXRlcm1pbmUgdGhlIHRpbWluZyBmb3IgcmVnaXN0ZXJlZCBxdWVyaWVzLlxuICAgIGNvbnN0IGFuYWx5emVkTW9kdWxlcyA9IChhb3RQcm9ncmFtIGFzIGFueSlbJ2FuYWx5emVkTW9kdWxlcyddIGFzIE5nQW5hbHl6ZWRNb2R1bGVzO1xuXG4gICAgY29uc3QgbmdTdHJ1Y3R1cmFsRGlhZ25vc3RpY3MgPSBhb3RQcm9ncmFtLmdldE5nU3RydWN0dXJhbERpYWdub3N0aWNzKCk7XG4gICAgaWYgKG5nU3RydWN0dXJhbERpYWdub3N0aWNzLmxlbmd0aCkge1xuICAgICAgdGhyb3cgdGhpcy5fY3JlYXRlRGlhZ25vc3RpY3NFcnJvcihuZ1N0cnVjdHVyYWxEaWFnbm9zdGljcyk7XG4gICAgfVxuXG4gICAgYW5hbHl6ZWRNb2R1bGVzLmZpbGVzLmZvckVhY2goZmlsZSA9PiB7XG4gICAgICBmaWxlLmRpcmVjdGl2ZXMuZm9yRWFjaChkaXJlY3RpdmUgPT4gdGhpcy5fYW5hbHl6ZURpcmVjdGl2ZShkaXJlY3RpdmUsIGFuYWx5emVkTW9kdWxlcykpO1xuICAgIH0pO1xuICB9XG5cbiAgLyoqIEFuYWx5emVzIGEgZ2l2ZW4gZGlyZWN0aXZlIGJ5IGRldGVybWluaW5nIHRoZSB0aW1pbmcgb2YgYWxsIG1hdGNoZWQgdmlldyBxdWVyaWVzLiAqL1xuICBwcml2YXRlIF9hbmFseXplRGlyZWN0aXZlKHN5bWJvbDogU3RhdGljU3ltYm9sLCBhbmFseXplZE1vZHVsZXM6IE5nQW5hbHl6ZWRNb2R1bGVzKSB7XG4gICAgY29uc3QgbWV0YWRhdGEgPSB0aGlzLm1ldGFkYXRhUmVzb2x2ZXIgIS5nZXREaXJlY3RpdmVNZXRhZGF0YShzeW1ib2wpO1xuICAgIGNvbnN0IG5nTW9kdWxlID0gYW5hbHl6ZWRNb2R1bGVzLm5nTW9kdWxlQnlQaXBlT3JEaXJlY3RpdmUuZ2V0KHN5bWJvbCk7XG5cbiAgICBpZiAoIW1ldGFkYXRhLmlzQ29tcG9uZW50IHx8ICFuZ01vZHVsZSkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIGNvbnN0IHBhcnNlZFRlbXBsYXRlID0gdGhpcy5fcGFyc2VUZW1wbGF0ZShtZXRhZGF0YSwgbmdNb2R1bGUpO1xuICAgIGNvbnN0IHF1ZXJ5VGltaW5nTWFwID0gZmluZFN0YXRpY1F1ZXJ5SWRzKHBhcnNlZFRlbXBsYXRlKTtcbiAgICBjb25zdCB7c3RhdGljUXVlcnlJZHN9ID0gc3RhdGljVmlld1F1ZXJ5SWRzKHF1ZXJ5VGltaW5nTWFwKTtcblxuICAgIG1ldGFkYXRhLnZpZXdRdWVyaWVzLmZvckVhY2goKHF1ZXJ5LCBpbmRleCkgPT4ge1xuICAgICAgLy8gUXVlcnkgaWRzIGFyZSBjb21wdXRlZCBieSBhZGRpbmcgXCJvbmVcIiB0byB0aGUgaW5kZXguIFRoaXMgaXMgZG9uZSB3aXRoaW5cbiAgICAgIC8vIHRoZSBcInZpZXdfY29tcGlsZXIudHNcIiBpbiBvcmRlciB0byBzdXBwb3J0IHVzaW5nIGEgYmxvb20gZmlsdGVyIGZvciBxdWVyaWVzLlxuICAgICAgY29uc3QgcXVlcnlJZCA9IGluZGV4ICsgMTtcbiAgICAgIGNvbnN0IHF1ZXJ5S2V5ID1cbiAgICAgICAgICB0aGlzLl9nZXRWaWV3UXVlcnlVbmlxdWVLZXkoc3ltYm9sLmZpbGVQYXRoLCBzeW1ib2wubmFtZSwgcXVlcnkucHJvcGVydHlOYW1lKTtcbiAgICAgIHRoaXMuYW5hbHl6ZWRRdWVyaWVzLnNldChcbiAgICAgICAgICBxdWVyeUtleSwgc3RhdGljUXVlcnlJZHMuaGFzKHF1ZXJ5SWQpID8gUXVlcnlUaW1pbmcuU1RBVElDIDogUXVlcnlUaW1pbmcuRFlOQU1JQyk7XG4gICAgfSk7XG4gIH1cblxuICAvKiogRGV0ZWN0cyB0aGUgdGltaW5nIG9mIHRoZSBxdWVyeSBkZWZpbml0aW9uLiAqL1xuICBkZXRlY3RUaW1pbmcocXVlcnk6IE5nUXVlcnlEZWZpbml0aW9uKTogVGltaW5nUmVzdWx0IHtcbiAgICBpZiAocXVlcnkudHlwZSA9PT0gUXVlcnlUeXBlLkNvbnRlbnRDaGlsZCkge1xuICAgICAgcmV0dXJuIHt0aW1pbmc6IG51bGwsIG1lc3NhZ2U6ICdDb250ZW50IHF1ZXJpZXMgY2Fubm90IGJlIG1pZ3JhdGVkIGF1dG9tYXRpY2FsbHkuJ307XG4gICAgfSBlbHNlIGlmICghcXVlcnkubmFtZSkge1xuICAgICAgLy8gSW4gY2FzZSB0aGUgcXVlcnkgcHJvcGVydHkgbmFtZSBpcyBub3Qgc3RhdGljYWxseSBhbmFseXphYmxlLCB3ZSBtYXJrIHRoaXNcbiAgICAgIC8vIHF1ZXJ5IGFzIHVucmVzb2x2ZWQuIE5HQyBjdXJyZW50bHkgc2tpcHMgdGhlc2UgdmlldyBxdWVyaWVzIGFzIHdlbGwuXG4gICAgICByZXR1cm4ge3RpbWluZzogbnVsbCwgbWVzc2FnZTogJ1F1ZXJ5IGlzIG5vdCBzdGF0aWNhbGx5IGFuYWx5emFibGUuJ307XG4gICAgfVxuXG4gICAgY29uc3QgcHJvcGVydHlOYW1lID0gcXVlcnkubmFtZTtcbiAgICBjb25zdCBjbGFzc01ldGFkYXRhID0gdGhpcy5jbGFzc01ldGFkYXRhLmdldChxdWVyeS5jb250YWluZXIpO1xuXG4gICAgLy8gSW4gY2FzZSB0aGVyZSBpcyBubyBjbGFzcyBtZXRhZGF0YSBvciB0aGVyZSBhcmUgbm8gZGVyaXZlZCBjbGFzc2VzIHRoYXRcbiAgICAvLyBjb3VsZCBhY2Nlc3MgdGhlIGN1cnJlbnQgcXVlcnksIHdlIGp1c3QgbG9vayBmb3IgdGhlIHF1ZXJ5IGFuYWx5c2lzIG9mXG4gICAgLy8gdGhlIGNsYXNzIHRoYXQgZGVjbGFyZXMgdGhlIHF1ZXJ5LiBlLmcuIG9ubHkgdGhlIHRlbXBsYXRlIG9mIHRoZSBjbGFzc1xuICAgIC8vIHRoYXQgZGVjbGFyZXMgdGhlIHZpZXcgcXVlcnkgYWZmZWN0cyB0aGUgcXVlcnkgdGltaW5nLlxuICAgIGlmICghY2xhc3NNZXRhZGF0YSB8fCAhY2xhc3NNZXRhZGF0YS5kZXJpdmVkQ2xhc3Nlcy5sZW5ndGgpIHtcbiAgICAgIGNvbnN0IHRpbWluZyA9IHRoaXMuX2dldFF1ZXJ5VGltaW5nRnJvbUNsYXNzKHF1ZXJ5LmNvbnRhaW5lciwgcHJvcGVydHlOYW1lKTtcblxuICAgICAgaWYgKHRpbWluZyA9PT0gbnVsbCkge1xuICAgICAgICByZXR1cm4ge3RpbWluZzogbnVsbCwgbWVzc2FnZTogUVVFUllfTk9UX0RFQ0xBUkVEX0lOX0NPTVBPTkVOVF9NRVNTQUdFfTtcbiAgICAgIH1cblxuICAgICAgcmV0dXJuIHt0aW1pbmd9O1xuICAgIH1cblxuICAgIGxldCByZXNvbHZlZFRpbWluZzogUXVlcnlUaW1pbmd8bnVsbCA9IG51bGw7XG4gICAgbGV0IHRpbWluZ01pc21hdGNoID0gZmFsc2U7XG5cbiAgICAvLyBJbiBjYXNlIHRoZXJlIGFyZSBtdWx0aXBsZSBjb21wb25lbnRzIHRoYXQgdXNlIHRoZSBzYW1lIHF1ZXJ5IChlLmcuIHRocm91Z2ggaW5oZXJpdGFuY2UpLFxuICAgIC8vIHdlIG5lZWQgdG8gY2hlY2sgaWYgYWxsIGNvbXBvbmVudHMgdXNlIHRoZSBxdWVyeSB3aXRoIHRoZSBzYW1lIHRpbWluZy4gSWYgdGhhdCBpcyBub3RcbiAgICAvLyB0aGUgY2FzZSwgdGhlIHF1ZXJ5IHRpbWluZyBpcyBhbWJpZ3VvdXMgYW5kIHRoZSBkZXZlbG9wZXIgbmVlZHMgdG8gZml4IHRoZSBxdWVyeSBtYW51YWxseS5cbiAgICBbcXVlcnkuY29udGFpbmVyLCAuLi5jbGFzc01ldGFkYXRhLmRlcml2ZWRDbGFzc2VzXS5mb3JFYWNoKGNsYXNzRGVjbCA9PiB7XG4gICAgICBjb25zdCBjbGFzc1RpbWluZyA9IHRoaXMuX2dldFF1ZXJ5VGltaW5nRnJvbUNsYXNzKGNsYXNzRGVjbCwgcHJvcGVydHlOYW1lKTtcblxuICAgICAgaWYgKGNsYXNzVGltaW5nID09PSBudWxsKSB7XG4gICAgICAgIHJldHVybjtcbiAgICAgIH1cblxuICAgICAgLy8gSW4gY2FzZSB0aGVyZSBpcyBubyByZXNvbHZlZCB0aW1pbmcgeWV0LCBzYXZlIHRoZSBuZXcgdGltaW5nLiBUaW1pbmdzIGZyb20gb3RoZXJcbiAgICAgIC8vIGNvbXBvbmVudHMgdGhhdCB1c2UgdGhlIHF1ZXJ5IHdpdGggYSBkaWZmZXJlbnQgdGltaW5nLCBjYXVzZSB0aGUgdGltaW5nIHRvIGJlXG4gICAgICAvLyBtaXNtYXRjaGVkLiBJbiB0aGF0IGNhc2Ugd2UgY2FuJ3QgZGV0ZWN0IGEgd29ya2luZyB0aW1pbmcgZm9yIGFsbCBjb21wb25lbnRzLlxuICAgICAgaWYgKHJlc29sdmVkVGltaW5nID09PSBudWxsKSB7XG4gICAgICAgIHJlc29sdmVkVGltaW5nID0gY2xhc3NUaW1pbmc7XG4gICAgICB9IGVsc2UgaWYgKHJlc29sdmVkVGltaW5nICE9PSBjbGFzc1RpbWluZykge1xuICAgICAgICB0aW1pbmdNaXNtYXRjaCA9IHRydWU7XG4gICAgICB9XG4gICAgfSk7XG5cbiAgICBpZiAocmVzb2x2ZWRUaW1pbmcgPT09IG51bGwpIHtcbiAgICAgIHJldHVybiB7dGltaW5nOiBRdWVyeVRpbWluZy5EWU5BTUlDLCBtZXNzYWdlOiBRVUVSWV9OT1RfREVDTEFSRURfSU5fQ09NUE9ORU5UX01FU1NBR0V9O1xuICAgIH0gZWxzZSBpZiAodGltaW5nTWlzbWF0Y2gpIHtcbiAgICAgIHJldHVybiB7dGltaW5nOiBudWxsLCBtZXNzYWdlOiAnTXVsdGlwbGUgY29tcG9uZW50cyB1c2UgdGhlIHF1ZXJ5IHdpdGggZGlmZmVyZW50IHRpbWluZ3MuJ307XG4gICAgfVxuICAgIHJldHVybiB7dGltaW5nOiByZXNvbHZlZFRpbWluZ307XG4gIH1cblxuICAvKipcbiAgICogR2V0cyB0aGUgdGltaW5nIHRoYXQgaGFzIGJlZW4gcmVzb2x2ZWQgZm9yIGEgZ2l2ZW4gcXVlcnkgd2hlbiBpdCdzIHVzZWQgd2l0aGluIHRoZVxuICAgKiBzcGVjaWZpZWQgY2xhc3MgZGVjbGFyYXRpb24uIGUuZy4gcXVlcmllcyBmcm9tIGFuIGluaGVyaXRlZCBjbGFzcyBjYW4gYmUgdXNlZC5cbiAgICovXG4gIHByaXZhdGUgX2dldFF1ZXJ5VGltaW5nRnJvbUNsYXNzKGNsYXNzRGVjbDogdHMuQ2xhc3NEZWNsYXJhdGlvbiwgcXVlcnlOYW1lOiBzdHJpbmcpOiBRdWVyeVRpbWluZ1xuICAgICAgfG51bGwge1xuICAgIGlmICghY2xhc3NEZWNsLm5hbWUpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgICBjb25zdCBmaWxlUGF0aCA9IGNsYXNzRGVjbC5nZXRTb3VyY2VGaWxlKCkuZmlsZU5hbWU7XG4gICAgY29uc3QgcXVlcnlLZXkgPSB0aGlzLl9nZXRWaWV3UXVlcnlVbmlxdWVLZXkoZmlsZVBhdGgsIGNsYXNzRGVjbC5uYW1lLnRleHQsIHF1ZXJ5TmFtZSk7XG5cbiAgICBpZiAodGhpcy5hbmFseXplZFF1ZXJpZXMuaGFzKHF1ZXJ5S2V5KSkge1xuICAgICAgcmV0dXJuIHRoaXMuYW5hbHl6ZWRRdWVyaWVzLmdldChxdWVyeUtleSkgITtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBwcml2YXRlIF9wYXJzZVRlbXBsYXRlKGNvbXBvbmVudDogQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhLCBuZ01vZHVsZTogQ29tcGlsZU5nTW9kdWxlTWV0YWRhdGEpOlxuICAgICAgVGVtcGxhdGVBc3RbXSB7XG4gICAgcmV0dXJuIHRoaXNcbiAgICAgICAgLmNvbXBpbGVyICFbJ19wYXJzZVRlbXBsYXRlJ10oY29tcG9uZW50LCBuZ01vZHVsZSwgbmdNb2R1bGUudHJhbnNpdGl2ZU1vZHVsZS5kaXJlY3RpdmVzKVxuICAgICAgICAudGVtcGxhdGU7XG4gIH1cblxuICBwcml2YXRlIF9jcmVhdGVEaWFnbm9zdGljc0Vycm9yKGRpYWdub3N0aWNzOiBSZWFkb25seUFycmF5PERpYWdub3N0aWM+KSB7XG4gICAgcmV0dXJuIG5ldyBFcnJvcih0cy5mb3JtYXREaWFnbm9zdGljcyhkaWFnbm9zdGljcyBhcyB0cy5EaWFnbm9zdGljW10sIHRoaXMuaG9zdCkpO1xuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0Vmlld1F1ZXJ5VW5pcXVlS2V5KGZpbGVQYXRoOiBzdHJpbmcsIGNsYXNzTmFtZTogc3RyaW5nLCBwcm9wTmFtZTogc3RyaW5nKSB7XG4gICAgcmV0dXJuIGAke3Jlc29sdmUoZmlsZVBhdGgpfSMke2NsYXNzTmFtZX0tJHtwcm9wTmFtZX1gO1xuICB9XG59XG5cbmludGVyZmFjZSBTdGF0aWNBbmREeW5hbWljUXVlcnlJZHMge1xuICBzdGF0aWNRdWVyeUlkczogU2V0PG51bWJlcj47XG4gIGR5bmFtaWNRdWVyeUlkczogU2V0PG51bWJlcj47XG59XG5cbi8qKiBGaWd1cmVzIG91dCB3aGljaCBxdWVyaWVzIGFyZSBzdGF0aWMgYW5kIHdoaWNoIG9uZXMgYXJlIGR5bmFtaWMuICovXG5mdW5jdGlvbiBmaW5kU3RhdGljUXVlcnlJZHMoXG4gICAgbm9kZXM6IFRlbXBsYXRlQXN0W10sIHJlc3VsdCA9IG5ldyBNYXA8VGVtcGxhdGVBc3QsIFN0YXRpY0FuZER5bmFtaWNRdWVyeUlkcz4oKSk6XG4gICAgTWFwPFRlbXBsYXRlQXN0LCBTdGF0aWNBbmREeW5hbWljUXVlcnlJZHM+IHtcbiAgbm9kZXMuZm9yRWFjaCgobm9kZSkgPT4ge1xuICAgIGNvbnN0IHN0YXRpY1F1ZXJ5SWRzID0gbmV3IFNldDxudW1iZXI+KCk7XG4gICAgY29uc3QgZHluYW1pY1F1ZXJ5SWRzID0gbmV3IFNldDxudW1iZXI+KCk7XG4gICAgbGV0IHF1ZXJ5TWF0Y2hlczogUXVlcnlNYXRjaFtdID0gdW5kZWZpbmVkICE7XG4gICAgaWYgKG5vZGUgaW5zdGFuY2VvZiBFbGVtZW50QXN0KSB7XG4gICAgICBmaW5kU3RhdGljUXVlcnlJZHMobm9kZS5jaGlsZHJlbiwgcmVzdWx0KTtcbiAgICAgIG5vZGUuY2hpbGRyZW4uZm9yRWFjaCgoY2hpbGQpID0+IHtcbiAgICAgICAgY29uc3QgY2hpbGREYXRhID0gcmVzdWx0LmdldChjaGlsZCkgITtcbiAgICAgICAgY2hpbGREYXRhLnN0YXRpY1F1ZXJ5SWRzLmZvckVhY2gocXVlcnlJZCA9PiBzdGF0aWNRdWVyeUlkcy5hZGQocXVlcnlJZCkpO1xuICAgICAgICBjaGlsZERhdGEuZHluYW1pY1F1ZXJ5SWRzLmZvckVhY2gocXVlcnlJZCA9PiBkeW5hbWljUXVlcnlJZHMuYWRkKHF1ZXJ5SWQpKTtcbiAgICAgIH0pO1xuICAgICAgcXVlcnlNYXRjaGVzID0gbm9kZS5xdWVyeU1hdGNoZXM7XG4gICAgfSBlbHNlIGlmIChub2RlIGluc3RhbmNlb2YgRW1iZWRkZWRUZW1wbGF0ZUFzdCkge1xuICAgICAgZmluZFN0YXRpY1F1ZXJ5SWRzKG5vZGUuY2hpbGRyZW4sIHJlc3VsdCk7XG4gICAgICBub2RlLmNoaWxkcmVuLmZvckVhY2goKGNoaWxkKSA9PiB7XG4gICAgICAgIGNvbnN0IGNoaWxkRGF0YSA9IHJlc3VsdC5nZXQoY2hpbGQpICE7XG4gICAgICAgIGNoaWxkRGF0YS5zdGF0aWNRdWVyeUlkcy5mb3JFYWNoKHF1ZXJ5SWQgPT4gZHluYW1pY1F1ZXJ5SWRzLmFkZChxdWVyeUlkKSk7XG4gICAgICAgIGNoaWxkRGF0YS5keW5hbWljUXVlcnlJZHMuZm9yRWFjaChxdWVyeUlkID0+IGR5bmFtaWNRdWVyeUlkcy5hZGQocXVlcnlJZCkpO1xuICAgICAgfSk7XG4gICAgICBxdWVyeU1hdGNoZXMgPSBub2RlLnF1ZXJ5TWF0Y2hlcztcbiAgICB9XG4gICAgaWYgKHF1ZXJ5TWF0Y2hlcykge1xuICAgICAgcXVlcnlNYXRjaGVzLmZvckVhY2goKG1hdGNoKSA9PiBzdGF0aWNRdWVyeUlkcy5hZGQobWF0Y2gucXVlcnlJZCkpO1xuICAgIH1cbiAgICBkeW5hbWljUXVlcnlJZHMuZm9yRWFjaChxdWVyeUlkID0+IHN0YXRpY1F1ZXJ5SWRzLmRlbGV0ZShxdWVyeUlkKSk7XG4gICAgcmVzdWx0LnNldChub2RlLCB7c3RhdGljUXVlcnlJZHMsIGR5bmFtaWNRdWVyeUlkc30pO1xuICB9KTtcbiAgcmV0dXJuIHJlc3VsdDtcbn1cblxuLyoqIFNwbGl0cyBxdWVyaWVzIGludG8gc3RhdGljIGFuZCBkeW5hbWljLiAqL1xuZnVuY3Rpb24gc3RhdGljVmlld1F1ZXJ5SWRzKG5vZGVTdGF0aWNRdWVyeUlkczogTWFwPFRlbXBsYXRlQXN0LCBTdGF0aWNBbmREeW5hbWljUXVlcnlJZHM+KTpcbiAgICBTdGF0aWNBbmREeW5hbWljUXVlcnlJZHMge1xuICBjb25zdCBzdGF0aWNRdWVyeUlkcyA9IG5ldyBTZXQ8bnVtYmVyPigpO1xuICBjb25zdCBkeW5hbWljUXVlcnlJZHMgPSBuZXcgU2V0PG51bWJlcj4oKTtcbiAgQXJyYXkuZnJvbShub2RlU3RhdGljUXVlcnlJZHMudmFsdWVzKCkpLmZvckVhY2goKGVudHJ5KSA9PiB7XG4gICAgZW50cnkuc3RhdGljUXVlcnlJZHMuZm9yRWFjaChxdWVyeUlkID0+IHN0YXRpY1F1ZXJ5SWRzLmFkZChxdWVyeUlkKSk7XG4gICAgZW50cnkuZHluYW1pY1F1ZXJ5SWRzLmZvckVhY2gocXVlcnlJZCA9PiBkeW5hbWljUXVlcnlJZHMuYWRkKHF1ZXJ5SWQpKTtcbiAgfSk7XG4gIGR5bmFtaWNRdWVyeUlkcy5mb3JFYWNoKHF1ZXJ5SWQgPT4gc3RhdGljUXVlcnlJZHMuZGVsZXRlKHF1ZXJ5SWQpKTtcbiAgcmV0dXJuIHtzdGF0aWNRdWVyeUlkcywgZHluYW1pY1F1ZXJ5SWRzfTtcbn1cbiJdfQ==