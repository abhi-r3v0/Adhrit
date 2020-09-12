(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/dependencies/esm_dependency_host", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/ngcc/src/dependencies/dependency_host"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.isStringImportOrReexport = exports.hasImportOrReexportStatements = exports.EsmDependencyHost = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var ts = require("typescript");
    var dependency_host_1 = require("@angular/compiler-cli/ngcc/src/dependencies/dependency_host");
    /**
     * Helper functions for computing dependencies.
     */
    var EsmDependencyHost = /** @class */ (function (_super) {
        tslib_1.__extends(EsmDependencyHost, _super);
        function EsmDependencyHost(fs, moduleResolver, scanImportExpressions) {
            if (scanImportExpressions === void 0) { scanImportExpressions = true; }
            var _this = _super.call(this, fs, moduleResolver) || this;
            _this.scanImportExpressions = scanImportExpressions;
            // By skipping trivia here we don't have to account for it in the processing below
            // It has no relevance to capturing imports.
            _this.scanner = ts.createScanner(ts.ScriptTarget.Latest, /* skipTrivia */ true);
            return _this;
        }
        EsmDependencyHost.prototype.canSkipFile = function (fileContents) {
            return !hasImportOrReexportStatements(fileContents);
        };
        /**
         * Extract any import paths from imports found in the contents of this file.
         *
         * This implementation uses the TypeScript scanner, which tokenizes source code,
         * to process the string. This is halfway between working with the string directly,
         * which is too difficult due to corner cases, and parsing the string into a full
         * TypeScript Abstract Syntax Tree (AST), which ends up doing more processing than
         * is needed.
         *
         * The scanning is not trivial because we must hold state between each token since
         * the context of the token affects how it should be scanned, and the scanner does
         * not manage this for us.
         *
         * Specifically, backticked strings are particularly challenging since it is possible
         * to recursively nest backticks and TypeScript expressions within each other.
         */
        EsmDependencyHost.prototype.extractImports = function (file, fileContents) {
            var imports = new Set();
            var templateStack = [];
            var lastToken = ts.SyntaxKind.Unknown;
            var currentToken = ts.SyntaxKind.Unknown;
            this.scanner.setText(fileContents);
            while ((currentToken = this.scanner.scan()) !== ts.SyntaxKind.EndOfFileToken) {
                switch (currentToken) {
                    case ts.SyntaxKind.TemplateHead:
                        // TemplateHead indicates the beginning of a backticked string
                        // Capture this in the `templateStack` to indicate we are currently processing
                        // within the static text part of a backticked string.
                        templateStack.push(currentToken);
                        break;
                    case ts.SyntaxKind.OpenBraceToken:
                        if (templateStack.length > 0) {
                            // We are processing a backticked string. This indicates that we are either
                            // entering an interpolation expression or entering an object literal expression.
                            // We add it to the `templateStack` so we can track when we leave the interpolation or
                            // object literal.
                            templateStack.push(currentToken);
                        }
                        break;
                    case ts.SyntaxKind.CloseBraceToken:
                        if (templateStack.length > 0) {
                            // We are processing a backticked string then this indicates that we are either
                            // leaving an interpolation expression or leaving an object literal expression.
                            var templateToken = templateStack[templateStack.length - 1];
                            if (templateToken === ts.SyntaxKind.TemplateHead) {
                                // We have hit a nested backticked string so we need to rescan it in that context
                                currentToken = this.scanner.reScanTemplateToken(/* isTaggedTemplate */ false);
                                if (currentToken === ts.SyntaxKind.TemplateTail) {
                                    // We got to the end of the backticked string so pop the token that started it off
                                    // the stack.
                                    templateStack.pop();
                                }
                            }
                            else {
                                // We hit the end of an object-literal expression so pop the open-brace that started
                                // it off the stack.
                                templateStack.pop();
                            }
                        }
                        break;
                    case ts.SyntaxKind.SlashToken:
                    case ts.SyntaxKind.SlashEqualsToken:
                        if (canPrecedeARegex(lastToken)) {
                            // We have hit a slash (`/`) in a context where it could be the start of a regular
                            // expression so rescan it in that context
                            currentToken = this.scanner.reScanSlashToken();
                        }
                        break;
                    case ts.SyntaxKind.ImportKeyword:
                        var importPath = this.extractImportPath();
                        if (importPath !== null) {
                            imports.add(importPath);
                        }
                        break;
                    case ts.SyntaxKind.ExportKeyword:
                        var reexportPath = this.extractReexportPath();
                        if (reexportPath !== null) {
                            imports.add(reexportPath);
                        }
                        break;
                }
                lastToken = currentToken;
            }
            // Clear the text from the scanner to avoid holding on to potentially large strings of source
            // content after the scanning has completed.
            this.scanner.setText('');
            return imports;
        };
        /**
         * We have found an `import` token so now try to identify the import path.
         *
         * This method will use the current state of `this.scanner` to extract a string literal module
         * specifier. It expects that the current state of the scanner is that an `import` token has just
         * been scanned.
         *
         * The following forms of import are matched:
         *
         * * `import "module-specifier";`
         * * `import("module-specifier")`
         * * `import defaultBinding from "module-specifier";`
         * * `import defaultBinding, * as identifier from "module-specifier";`
         * * `import defaultBinding, {...} from "module-specifier";`
         * * `import * as identifier from "module-specifier";`
         * * `import {...} from "module-specifier";`
         *
         * @returns the import path or null if there is no import or it is not a string literal.
         */
        EsmDependencyHost.prototype.extractImportPath = function () {
            // Check for side-effect import
            var sideEffectImportPath = this.tryStringLiteral();
            if (sideEffectImportPath !== null) {
                return sideEffectImportPath;
            }
            var kind = this.scanner.getToken();
            // Check for dynamic import expression
            if (kind === ts.SyntaxKind.OpenParenToken) {
                return this.scanImportExpressions ? this.tryStringLiteral() : null;
            }
            // Check for defaultBinding
            if (kind === ts.SyntaxKind.Identifier) {
                // Skip default binding
                kind = this.scanner.scan();
                if (kind === ts.SyntaxKind.CommaToken) {
                    // Skip comma that indicates additional import bindings
                    kind = this.scanner.scan();
                }
            }
            // Check for namespace import clause
            if (kind === ts.SyntaxKind.AsteriskToken) {
                kind = this.skipNamespacedClause();
                if (kind === null) {
                    return null;
                }
            }
            // Check for named imports clause
            else if (kind === ts.SyntaxKind.OpenBraceToken) {
                kind = this.skipNamedClause();
            }
            // Expect a `from` clause, if not bail out
            if (kind !== ts.SyntaxKind.FromKeyword) {
                return null;
            }
            return this.tryStringLiteral();
        };
        /**
         * We have found an `export` token so now try to identify a re-export path.
         *
         * This method will use the current state of `this.scanner` to extract a string literal module
         * specifier. It expects that the current state of the scanner is that an `export` token has
         * just been scanned.
         *
         * There are three forms of re-export that are matched:
         *
         * * `export * from '...';
         * * `export * as alias from '...';
         * * `export {...} from '...';
         */
        EsmDependencyHost.prototype.extractReexportPath = function () {
            // Skip the `export` keyword
            var token = this.scanner.scan();
            if (token === ts.SyntaxKind.AsteriskToken) {
                token = this.skipNamespacedClause();
                if (token === null) {
                    return null;
                }
            }
            else if (token === ts.SyntaxKind.OpenBraceToken) {
                token = this.skipNamedClause();
            }
            // Expect a `from` clause, if not bail out
            if (token !== ts.SyntaxKind.FromKeyword) {
                return null;
            }
            return this.tryStringLiteral();
        };
        EsmDependencyHost.prototype.skipNamespacedClause = function () {
            // Skip past the `*`
            var token = this.scanner.scan();
            // Check for a `* as identifier` alias clause
            if (token === ts.SyntaxKind.AsKeyword) {
                // Skip past the `as` keyword
                token = this.scanner.scan();
                // Expect an identifier, if not bail out
                if (token !== ts.SyntaxKind.Identifier) {
                    return null;
                }
                // Skip past the identifier
                token = this.scanner.scan();
            }
            return token;
        };
        EsmDependencyHost.prototype.skipNamedClause = function () {
            var braceCount = 1;
            // Skip past the initial opening brace `{`
            var token = this.scanner.scan();
            // Search for the matching closing brace `}`
            while (braceCount > 0 && token !== ts.SyntaxKind.EndOfFileToken) {
                if (token === ts.SyntaxKind.OpenBraceToken) {
                    braceCount++;
                }
                else if (token === ts.SyntaxKind.CloseBraceToken) {
                    braceCount--;
                }
                token = this.scanner.scan();
            }
            return token;
        };
        EsmDependencyHost.prototype.tryStringLiteral = function () {
            return this.scanner.scan() === ts.SyntaxKind.StringLiteral ? this.scanner.getTokenValue() :
                null;
        };
        return EsmDependencyHost;
    }(dependency_host_1.DependencyHostBase));
    exports.EsmDependencyHost = EsmDependencyHost;
    /**
     * Check whether a source file needs to be parsed for imports.
     * This is a performance short-circuit, which saves us from creating
     * a TypeScript AST unnecessarily.
     *
     * @param source The content of the source file to check.
     *
     * @returns false if there are definitely no import or re-export statements
     * in this file, true otherwise.
     */
    function hasImportOrReexportStatements(source) {
        return /(?:import|export)[\s\S]+?(["'])(?:\\\1|.)+?\1/.test(source);
    }
    exports.hasImportOrReexportStatements = hasImportOrReexportStatements;
    /**
     * Check whether the given statement is an import with a string literal module specifier.
     * @param stmt the statement node to check.
     * @returns true if the statement is an import with a string literal module specifier.
     */
    function isStringImportOrReexport(stmt) {
        return ts.isImportDeclaration(stmt) ||
            ts.isExportDeclaration(stmt) && !!stmt.moduleSpecifier &&
                ts.isStringLiteral(stmt.moduleSpecifier);
    }
    exports.isStringImportOrReexport = isStringImportOrReexport;
    function canPrecedeARegex(kind) {
        switch (kind) {
            case ts.SyntaxKind.Identifier:
            case ts.SyntaxKind.StringLiteral:
            case ts.SyntaxKind.NumericLiteral:
            case ts.SyntaxKind.BigIntLiteral:
            case ts.SyntaxKind.RegularExpressionLiteral:
            case ts.SyntaxKind.ThisKeyword:
            case ts.SyntaxKind.PlusPlusToken:
            case ts.SyntaxKind.MinusMinusToken:
            case ts.SyntaxKind.CloseParenToken:
            case ts.SyntaxKind.CloseBracketToken:
            case ts.SyntaxKind.CloseBraceToken:
            case ts.SyntaxKind.TrueKeyword:
            case ts.SyntaxKind.FalseKeyword:
                return false;
            default:
                return true;
        }
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXNtX2RlcGVuZGVuY3lfaG9zdC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9uZ2NjL3NyYy9kZXBlbmRlbmNpZXMvZXNtX2RlcGVuZGVuY3lfaG9zdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7O0lBQUE7Ozs7OztPQU1HO0lBQ0gsK0JBQWlDO0lBRWpDLCtGQUFxRDtJQUdyRDs7T0FFRztJQUNIO1FBQXVDLDZDQUFrQjtRQUN2RCwyQkFDSSxFQUFjLEVBQUUsY0FBOEIsRUFBVSxxQkFBNEI7WUFBNUIsc0NBQUEsRUFBQSw0QkFBNEI7WUFEeEYsWUFFRSxrQkFBTSxFQUFFLEVBQUUsY0FBYyxDQUFDLFNBQzFCO1lBRjJELDJCQUFxQixHQUFyQixxQkFBcUIsQ0FBTztZQUd4RixrRkFBa0Y7WUFDbEYsNENBQTRDO1lBQ3BDLGFBQU8sR0FBRyxFQUFFLENBQUMsYUFBYSxDQUFDLEVBQUUsQ0FBQyxZQUFZLENBQUMsTUFBTSxFQUFFLGdCQUFnQixDQUFDLElBQUksQ0FBQyxDQUFDOztRQUhsRixDQUFDO1FBS1MsdUNBQVcsR0FBckIsVUFBc0IsWUFBb0I7WUFDeEMsT0FBTyxDQUFDLDZCQUE2QixDQUFDLFlBQVksQ0FBQyxDQUFDO1FBQ3RELENBQUM7UUFFRDs7Ozs7Ozs7Ozs7Ozs7O1dBZUc7UUFDTywwQ0FBYyxHQUF4QixVQUF5QixJQUFvQixFQUFFLFlBQW9CO1lBQ2pFLElBQU0sT0FBTyxHQUFHLElBQUksR0FBRyxFQUFVLENBQUM7WUFDbEMsSUFBTSxhQUFhLEdBQW9CLEVBQUUsQ0FBQztZQUMxQyxJQUFJLFNBQVMsR0FBa0IsRUFBRSxDQUFDLFVBQVUsQ0FBQyxPQUFPLENBQUM7WUFDckQsSUFBSSxZQUFZLEdBQWtCLEVBQUUsQ0FBQyxVQUFVLENBQUMsT0FBTyxDQUFDO1lBRXhELElBQUksQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLFlBQVksQ0FBQyxDQUFDO1lBRW5DLE9BQU8sQ0FBQyxZQUFZLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQyxJQUFJLEVBQUUsQ0FBQyxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsY0FBYyxFQUFFO2dCQUM1RSxRQUFRLFlBQVksRUFBRTtvQkFDcEIsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLFlBQVk7d0JBQzdCLDhEQUE4RDt3QkFDOUQsOEVBQThFO3dCQUM5RSxzREFBc0Q7d0JBQ3RELGFBQWEsQ0FBQyxJQUFJLENBQUMsWUFBWSxDQUFDLENBQUM7d0JBQ2pDLE1BQU07b0JBQ1IsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLGNBQWM7d0JBQy9CLElBQUksYUFBYSxDQUFDLE1BQU0sR0FBRyxDQUFDLEVBQUU7NEJBQzVCLDJFQUEyRTs0QkFDM0UsaUZBQWlGOzRCQUNqRixzRkFBc0Y7NEJBQ3RGLGtCQUFrQjs0QkFDbEIsYUFBYSxDQUFDLElBQUksQ0FBQyxZQUFZLENBQUMsQ0FBQzt5QkFDbEM7d0JBQ0QsTUFBTTtvQkFDUixLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsZUFBZTt3QkFDaEMsSUFBSSxhQUFhLENBQUMsTUFBTSxHQUFHLENBQUMsRUFBRTs0QkFDNUIsK0VBQStFOzRCQUMvRSwrRUFBK0U7NEJBQy9FLElBQU0sYUFBYSxHQUFHLGFBQWEsQ0FBQyxhQUFhLENBQUMsTUFBTSxHQUFHLENBQUMsQ0FBQyxDQUFDOzRCQUM5RCxJQUFJLGFBQWEsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLFlBQVksRUFBRTtnQ0FDaEQsaUZBQWlGO2dDQUNqRixZQUFZLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQyxtQkFBbUIsQ0FBQyxzQkFBc0IsQ0FBQyxLQUFLLENBQUMsQ0FBQztnQ0FDOUUsSUFBSSxZQUFZLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxZQUFZLEVBQUU7b0NBQy9DLGtGQUFrRjtvQ0FDbEYsYUFBYTtvQ0FDYixhQUFhLENBQUMsR0FBRyxFQUFFLENBQUM7aUNBQ3JCOzZCQUNGO2lDQUFNO2dDQUNMLG9GQUFvRjtnQ0FDcEYsb0JBQW9CO2dDQUNwQixhQUFhLENBQUMsR0FBRyxFQUFFLENBQUM7NkJBQ3JCO3lCQUNGO3dCQUNELE1BQU07b0JBQ1IsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLFVBQVUsQ0FBQztvQkFDOUIsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLGdCQUFnQjt3QkFDakMsSUFBSSxnQkFBZ0IsQ0FBQyxTQUFTLENBQUMsRUFBRTs0QkFDL0Isa0ZBQWtGOzRCQUNsRiwwQ0FBMEM7NEJBQzFDLFlBQVksR0FBRyxJQUFJLENBQUMsT0FBTyxDQUFDLGdCQUFnQixFQUFFLENBQUM7eUJBQ2hEO3dCQUNELE1BQU07b0JBQ1IsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLGFBQWE7d0JBQzlCLElBQU0sVUFBVSxHQUFHLElBQUksQ0FBQyxpQkFBaUIsRUFBRSxDQUFDO3dCQUM1QyxJQUFJLFVBQVUsS0FBSyxJQUFJLEVBQUU7NEJBQ3ZCLE9BQU8sQ0FBQyxHQUFHLENBQUMsVUFBVSxDQUFDLENBQUM7eUJBQ3pCO3dCQUNELE1BQU07b0JBQ1IsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLGFBQWE7d0JBQzlCLElBQU0sWUFBWSxHQUFHLElBQUksQ0FBQyxtQkFBbUIsRUFBRSxDQUFDO3dCQUNoRCxJQUFJLFlBQVksS0FBSyxJQUFJLEVBQUU7NEJBQ3pCLE9BQU8sQ0FBQyxHQUFHLENBQUMsWUFBWSxDQUFDLENBQUM7eUJBQzNCO3dCQUNELE1BQU07aUJBQ1Q7Z0JBQ0QsU0FBUyxHQUFHLFlBQVksQ0FBQzthQUMxQjtZQUVELDZGQUE2RjtZQUM3Riw0Q0FBNEM7WUFDNUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsRUFBRSxDQUFDLENBQUM7WUFFekIsT0FBTyxPQUFPLENBQUM7UUFDakIsQ0FBQztRQUdEOzs7Ozs7Ozs7Ozs7Ozs7Ozs7V0FrQkc7UUFDTyw2Q0FBaUIsR0FBM0I7WUFDRSwrQkFBK0I7WUFDL0IsSUFBSSxvQkFBb0IsR0FBRyxJQUFJLENBQUMsZ0JBQWdCLEVBQUUsQ0FBQztZQUNuRCxJQUFJLG9CQUFvQixLQUFLLElBQUksRUFBRTtnQkFDakMsT0FBTyxvQkFBb0IsQ0FBQzthQUM3QjtZQUVELElBQUksSUFBSSxHQUF1QixJQUFJLENBQUMsT0FBTyxDQUFDLFFBQVEsRUFBRSxDQUFDO1lBRXZELHNDQUFzQztZQUN0QyxJQUFJLElBQUksS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLGNBQWMsRUFBRTtnQkFDekMsT0FBTyxJQUFJLENBQUMscUJBQXFCLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxnQkFBZ0IsRUFBRSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUM7YUFDcEU7WUFFRCwyQkFBMkI7WUFDM0IsSUFBSSxJQUFJLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxVQUFVLEVBQUU7Z0JBQ3JDLHVCQUF1QjtnQkFDdkIsSUFBSSxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxFQUFFLENBQUM7Z0JBQzNCLElBQUksSUFBSSxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsVUFBVSxFQUFFO29CQUNyQyx1REFBdUQ7b0JBQ3ZELElBQUksR0FBRyxJQUFJLENBQUMsT0FBTyxDQUFDLElBQUksRUFBRSxDQUFDO2lCQUM1QjthQUNGO1lBRUQsb0NBQW9DO1lBQ3BDLElBQUksSUFBSSxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsYUFBYSxFQUFFO2dCQUN4QyxJQUFJLEdBQUcsSUFBSSxDQUFDLG9CQUFvQixFQUFFLENBQUM7Z0JBQ25DLElBQUksSUFBSSxLQUFLLElBQUksRUFBRTtvQkFDakIsT0FBTyxJQUFJLENBQUM7aUJBQ2I7YUFDRjtZQUNELGlDQUFpQztpQkFDNUIsSUFBSSxJQUFJLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxjQUFjLEVBQUU7Z0JBQzlDLElBQUksR0FBRyxJQUFJLENBQUMsZUFBZSxFQUFFLENBQUM7YUFDL0I7WUFFRCwwQ0FBMEM7WUFDMUMsSUFBSSxJQUFJLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxXQUFXLEVBQUU7Z0JBQ3RDLE9BQU8sSUFBSSxDQUFDO2FBQ2I7WUFFRCxPQUFPLElBQUksQ0FBQyxnQkFBZ0IsRUFBRSxDQUFDO1FBQ2pDLENBQUM7UUFFRDs7Ozs7Ozs7Ozs7O1dBWUc7UUFDTywrQ0FBbUIsR0FBN0I7WUFDRSw0QkFBNEI7WUFDNUIsSUFBSSxLQUFLLEdBQXVCLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxFQUFFLENBQUM7WUFDcEQsSUFBSSxLQUFLLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxhQUFhLEVBQUU7Z0JBQ3pDLEtBQUssR0FBRyxJQUFJLENBQUMsb0JBQW9CLEVBQUUsQ0FBQztnQkFDcEMsSUFBSSxLQUFLLEtBQUssSUFBSSxFQUFFO29CQUNsQixPQUFPLElBQUksQ0FBQztpQkFDYjthQUNGO2lCQUFNLElBQUksS0FBSyxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsY0FBYyxFQUFFO2dCQUNqRCxLQUFLLEdBQUcsSUFBSSxDQUFDLGVBQWUsRUFBRSxDQUFDO2FBQ2hDO1lBQ0QsMENBQTBDO1lBQzFDLElBQUksS0FBSyxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsV0FBVyxFQUFFO2dCQUN2QyxPQUFPLElBQUksQ0FBQzthQUNiO1lBQ0QsT0FBTyxJQUFJLENBQUMsZ0JBQWdCLEVBQUUsQ0FBQztRQUNqQyxDQUFDO1FBRVMsZ0RBQW9CLEdBQTlCO1lBQ0Usb0JBQW9CO1lBQ3BCLElBQUksS0FBSyxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxFQUFFLENBQUM7WUFDaEMsNkNBQTZDO1lBQzdDLElBQUksS0FBSyxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsU0FBUyxFQUFFO2dCQUNyQyw2QkFBNkI7Z0JBQzdCLEtBQUssR0FBRyxJQUFJLENBQUMsT0FBTyxDQUFDLElBQUksRUFBRSxDQUFDO2dCQUM1Qix3Q0FBd0M7Z0JBQ3hDLElBQUksS0FBSyxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsVUFBVSxFQUFFO29CQUN0QyxPQUFPLElBQUksQ0FBQztpQkFDYjtnQkFDRCwyQkFBMkI7Z0JBQzNCLEtBQUssR0FBRyxJQUFJLENBQUMsT0FBTyxDQUFDLElBQUksRUFBRSxDQUFDO2FBQzdCO1lBQ0QsT0FBTyxLQUFLLENBQUM7UUFDZixDQUFDO1FBRVMsMkNBQWUsR0FBekI7WUFDRSxJQUFJLFVBQVUsR0FBRyxDQUFDLENBQUM7WUFDbkIsMENBQTBDO1lBQzFDLElBQUksS0FBSyxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxFQUFFLENBQUM7WUFDaEMsNENBQTRDO1lBQzVDLE9BQU8sVUFBVSxHQUFHLENBQUMsSUFBSSxLQUFLLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxjQUFjLEVBQUU7Z0JBQy9ELElBQUksS0FBSyxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsY0FBYyxFQUFFO29CQUMxQyxVQUFVLEVBQUUsQ0FBQztpQkFDZDtxQkFBTSxJQUFJLEtBQUssS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLGVBQWUsRUFBRTtvQkFDbEQsVUFBVSxFQUFFLENBQUM7aUJBQ2Q7Z0JBQ0QsS0FBSyxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxFQUFFLENBQUM7YUFDN0I7WUFDRCxPQUFPLEtBQUssQ0FBQztRQUNmLENBQUM7UUFFUyw0Q0FBZ0IsR0FBMUI7WUFDRSxPQUFPLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxFQUFFLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxhQUFhLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsYUFBYSxFQUFFLENBQUMsQ0FBQztnQkFDOUIsSUFBSSxDQUFDO1FBQ3BFLENBQUM7UUFDSCx3QkFBQztJQUFELENBQUMsQUE3T0QsQ0FBdUMsb0NBQWtCLEdBNk94RDtJQTdPWSw4Q0FBaUI7SUErTzlCOzs7Ozs7Ozs7T0FTRztJQUNILFNBQWdCLDZCQUE2QixDQUFDLE1BQWM7UUFDMUQsT0FBTywrQ0FBK0MsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUM7SUFDdEUsQ0FBQztJQUZELHNFQUVDO0lBR0Q7Ozs7T0FJRztJQUNILFNBQWdCLHdCQUF3QixDQUFDLElBQWtCO1FBRXpELE9BQU8sRUFBRSxDQUFDLG1CQUFtQixDQUFDLElBQUksQ0FBQztZQUMvQixFQUFFLENBQUMsbUJBQW1CLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDLElBQUksQ0FBQyxlQUFlO2dCQUN0RCxFQUFFLENBQUMsZUFBZSxDQUFDLElBQUksQ0FBQyxlQUFlLENBQUMsQ0FBQztJQUMvQyxDQUFDO0lBTEQsNERBS0M7SUFHRCxTQUFTLGdCQUFnQixDQUFDLElBQW1CO1FBQzNDLFFBQVEsSUFBSSxFQUFFO1lBQ1osS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLFVBQVUsQ0FBQztZQUM5QixLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsYUFBYSxDQUFDO1lBQ2pDLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxjQUFjLENBQUM7WUFDbEMsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLGFBQWEsQ0FBQztZQUNqQyxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsd0JBQXdCLENBQUM7WUFDNUMsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLFdBQVcsQ0FBQztZQUMvQixLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsYUFBYSxDQUFDO1lBQ2pDLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxlQUFlLENBQUM7WUFDbkMsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLGVBQWUsQ0FBQztZQUNuQyxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsaUJBQWlCLENBQUM7WUFDckMsS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLGVBQWUsQ0FBQztZQUNuQyxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsV0FBVyxDQUFDO1lBQy9CLEtBQUssRUFBRSxDQUFDLFVBQVUsQ0FBQyxZQUFZO2dCQUM3QixPQUFPLEtBQUssQ0FBQztZQUNmO2dCQUNFLE9BQU8sSUFBSSxDQUFDO1NBQ2Y7SUFDSCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcbmltcG9ydCB7QWJzb2x1dGVGc1BhdGgsIEZpbGVTeXN0ZW19IGZyb20gJy4uLy4uLy4uL3NyYy9uZ3RzYy9maWxlX3N5c3RlbSc7XG5pbXBvcnQge0RlcGVuZGVuY3lIb3N0QmFzZX0gZnJvbSAnLi9kZXBlbmRlbmN5X2hvc3QnO1xuaW1wb3J0IHtNb2R1bGVSZXNvbHZlcn0gZnJvbSAnLi9tb2R1bGVfcmVzb2x2ZXInO1xuXG4vKipcbiAqIEhlbHBlciBmdW5jdGlvbnMgZm9yIGNvbXB1dGluZyBkZXBlbmRlbmNpZXMuXG4gKi9cbmV4cG9ydCBjbGFzcyBFc21EZXBlbmRlbmN5SG9zdCBleHRlbmRzIERlcGVuZGVuY3lIb3N0QmFzZSB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgZnM6IEZpbGVTeXN0ZW0sIG1vZHVsZVJlc29sdmVyOiBNb2R1bGVSZXNvbHZlciwgcHJpdmF0ZSBzY2FuSW1wb3J0RXhwcmVzc2lvbnMgPSB0cnVlKSB7XG4gICAgc3VwZXIoZnMsIG1vZHVsZVJlc29sdmVyKTtcbiAgfVxuICAvLyBCeSBza2lwcGluZyB0cml2aWEgaGVyZSB3ZSBkb24ndCBoYXZlIHRvIGFjY291bnQgZm9yIGl0IGluIHRoZSBwcm9jZXNzaW5nIGJlbG93XG4gIC8vIEl0IGhhcyBubyByZWxldmFuY2UgdG8gY2FwdHVyaW5nIGltcG9ydHMuXG4gIHByaXZhdGUgc2Nhbm5lciA9IHRzLmNyZWF0ZVNjYW5uZXIodHMuU2NyaXB0VGFyZ2V0LkxhdGVzdCwgLyogc2tpcFRyaXZpYSAqLyB0cnVlKTtcblxuICBwcm90ZWN0ZWQgY2FuU2tpcEZpbGUoZmlsZUNvbnRlbnRzOiBzdHJpbmcpOiBib29sZWFuIHtcbiAgICByZXR1cm4gIWhhc0ltcG9ydE9yUmVleHBvcnRTdGF0ZW1lbnRzKGZpbGVDb250ZW50cyk7XG4gIH1cblxuICAvKipcbiAgICogRXh0cmFjdCBhbnkgaW1wb3J0IHBhdGhzIGZyb20gaW1wb3J0cyBmb3VuZCBpbiB0aGUgY29udGVudHMgb2YgdGhpcyBmaWxlLlxuICAgKlxuICAgKiBUaGlzIGltcGxlbWVudGF0aW9uIHVzZXMgdGhlIFR5cGVTY3JpcHQgc2Nhbm5lciwgd2hpY2ggdG9rZW5pemVzIHNvdXJjZSBjb2RlLFxuICAgKiB0byBwcm9jZXNzIHRoZSBzdHJpbmcuIFRoaXMgaXMgaGFsZndheSBiZXR3ZWVuIHdvcmtpbmcgd2l0aCB0aGUgc3RyaW5nIGRpcmVjdGx5LFxuICAgKiB3aGljaCBpcyB0b28gZGlmZmljdWx0IGR1ZSB0byBjb3JuZXIgY2FzZXMsIGFuZCBwYXJzaW5nIHRoZSBzdHJpbmcgaW50byBhIGZ1bGxcbiAgICogVHlwZVNjcmlwdCBBYnN0cmFjdCBTeW50YXggVHJlZSAoQVNUKSwgd2hpY2ggZW5kcyB1cCBkb2luZyBtb3JlIHByb2Nlc3NpbmcgdGhhblxuICAgKiBpcyBuZWVkZWQuXG4gICAqXG4gICAqIFRoZSBzY2FubmluZyBpcyBub3QgdHJpdmlhbCBiZWNhdXNlIHdlIG11c3QgaG9sZCBzdGF0ZSBiZXR3ZWVuIGVhY2ggdG9rZW4gc2luY2VcbiAgICogdGhlIGNvbnRleHQgb2YgdGhlIHRva2VuIGFmZmVjdHMgaG93IGl0IHNob3VsZCBiZSBzY2FubmVkLCBhbmQgdGhlIHNjYW5uZXIgZG9lc1xuICAgKiBub3QgbWFuYWdlIHRoaXMgZm9yIHVzLlxuICAgKlxuICAgKiBTcGVjaWZpY2FsbHksIGJhY2t0aWNrZWQgc3RyaW5ncyBhcmUgcGFydGljdWxhcmx5IGNoYWxsZW5naW5nIHNpbmNlIGl0IGlzIHBvc3NpYmxlXG4gICAqIHRvIHJlY3Vyc2l2ZWx5IG5lc3QgYmFja3RpY2tzIGFuZCBUeXBlU2NyaXB0IGV4cHJlc3Npb25zIHdpdGhpbiBlYWNoIG90aGVyLlxuICAgKi9cbiAgcHJvdGVjdGVkIGV4dHJhY3RJbXBvcnRzKGZpbGU6IEFic29sdXRlRnNQYXRoLCBmaWxlQ29udGVudHM6IHN0cmluZyk6IFNldDxzdHJpbmc+IHtcbiAgICBjb25zdCBpbXBvcnRzID0gbmV3IFNldDxzdHJpbmc+KCk7XG4gICAgY29uc3QgdGVtcGxhdGVTdGFjazogdHMuU3ludGF4S2luZFtdID0gW107XG4gICAgbGV0IGxhc3RUb2tlbjogdHMuU3ludGF4S2luZCA9IHRzLlN5bnRheEtpbmQuVW5rbm93bjtcbiAgICBsZXQgY3VycmVudFRva2VuOiB0cy5TeW50YXhLaW5kID0gdHMuU3ludGF4S2luZC5Vbmtub3duO1xuXG4gICAgdGhpcy5zY2FubmVyLnNldFRleHQoZmlsZUNvbnRlbnRzKTtcblxuICAgIHdoaWxlICgoY3VycmVudFRva2VuID0gdGhpcy5zY2FubmVyLnNjYW4oKSkgIT09IHRzLlN5bnRheEtpbmQuRW5kT2ZGaWxlVG9rZW4pIHtcbiAgICAgIHN3aXRjaCAoY3VycmVudFRva2VuKSB7XG4gICAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5UZW1wbGF0ZUhlYWQ6XG4gICAgICAgICAgLy8gVGVtcGxhdGVIZWFkIGluZGljYXRlcyB0aGUgYmVnaW5uaW5nIG9mIGEgYmFja3RpY2tlZCBzdHJpbmdcbiAgICAgICAgICAvLyBDYXB0dXJlIHRoaXMgaW4gdGhlIGB0ZW1wbGF0ZVN0YWNrYCB0byBpbmRpY2F0ZSB3ZSBhcmUgY3VycmVudGx5IHByb2Nlc3NpbmdcbiAgICAgICAgICAvLyB3aXRoaW4gdGhlIHN0YXRpYyB0ZXh0IHBhcnQgb2YgYSBiYWNrdGlja2VkIHN0cmluZy5cbiAgICAgICAgICB0ZW1wbGF0ZVN0YWNrLnB1c2goY3VycmVudFRva2VuKTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgY2FzZSB0cy5TeW50YXhLaW5kLk9wZW5CcmFjZVRva2VuOlxuICAgICAgICAgIGlmICh0ZW1wbGF0ZVN0YWNrLmxlbmd0aCA+IDApIHtcbiAgICAgICAgICAgIC8vIFdlIGFyZSBwcm9jZXNzaW5nIGEgYmFja3RpY2tlZCBzdHJpbmcuIFRoaXMgaW5kaWNhdGVzIHRoYXQgd2UgYXJlIGVpdGhlclxuICAgICAgICAgICAgLy8gZW50ZXJpbmcgYW4gaW50ZXJwb2xhdGlvbiBleHByZXNzaW9uIG9yIGVudGVyaW5nIGFuIG9iamVjdCBsaXRlcmFsIGV4cHJlc3Npb24uXG4gICAgICAgICAgICAvLyBXZSBhZGQgaXQgdG8gdGhlIGB0ZW1wbGF0ZVN0YWNrYCBzbyB3ZSBjYW4gdHJhY2sgd2hlbiB3ZSBsZWF2ZSB0aGUgaW50ZXJwb2xhdGlvbiBvclxuICAgICAgICAgICAgLy8gb2JqZWN0IGxpdGVyYWwuXG4gICAgICAgICAgICB0ZW1wbGF0ZVN0YWNrLnB1c2goY3VycmVudFRva2VuKTtcbiAgICAgICAgICB9XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5DbG9zZUJyYWNlVG9rZW46XG4gICAgICAgICAgaWYgKHRlbXBsYXRlU3RhY2subGVuZ3RoID4gMCkge1xuICAgICAgICAgICAgLy8gV2UgYXJlIHByb2Nlc3NpbmcgYSBiYWNrdGlja2VkIHN0cmluZyB0aGVuIHRoaXMgaW5kaWNhdGVzIHRoYXQgd2UgYXJlIGVpdGhlclxuICAgICAgICAgICAgLy8gbGVhdmluZyBhbiBpbnRlcnBvbGF0aW9uIGV4cHJlc3Npb24gb3IgbGVhdmluZyBhbiBvYmplY3QgbGl0ZXJhbCBleHByZXNzaW9uLlxuICAgICAgICAgICAgY29uc3QgdGVtcGxhdGVUb2tlbiA9IHRlbXBsYXRlU3RhY2tbdGVtcGxhdGVTdGFjay5sZW5ndGggLSAxXTtcbiAgICAgICAgICAgIGlmICh0ZW1wbGF0ZVRva2VuID09PSB0cy5TeW50YXhLaW5kLlRlbXBsYXRlSGVhZCkge1xuICAgICAgICAgICAgICAvLyBXZSBoYXZlIGhpdCBhIG5lc3RlZCBiYWNrdGlja2VkIHN0cmluZyBzbyB3ZSBuZWVkIHRvIHJlc2NhbiBpdCBpbiB0aGF0IGNvbnRleHRcbiAgICAgICAgICAgICAgY3VycmVudFRva2VuID0gdGhpcy5zY2FubmVyLnJlU2NhblRlbXBsYXRlVG9rZW4oLyogaXNUYWdnZWRUZW1wbGF0ZSAqLyBmYWxzZSk7XG4gICAgICAgICAgICAgIGlmIChjdXJyZW50VG9rZW4gPT09IHRzLlN5bnRheEtpbmQuVGVtcGxhdGVUYWlsKSB7XG4gICAgICAgICAgICAgICAgLy8gV2UgZ290IHRvIHRoZSBlbmQgb2YgdGhlIGJhY2t0aWNrZWQgc3RyaW5nIHNvIHBvcCB0aGUgdG9rZW4gdGhhdCBzdGFydGVkIGl0IG9mZlxuICAgICAgICAgICAgICAgIC8vIHRoZSBzdGFjay5cbiAgICAgICAgICAgICAgICB0ZW1wbGF0ZVN0YWNrLnBvcCgpO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAvLyBXZSBoaXQgdGhlIGVuZCBvZiBhbiBvYmplY3QtbGl0ZXJhbCBleHByZXNzaW9uIHNvIHBvcCB0aGUgb3Blbi1icmFjZSB0aGF0IHN0YXJ0ZWRcbiAgICAgICAgICAgICAgLy8gaXQgb2ZmIHRoZSBzdGFjay5cbiAgICAgICAgICAgICAgdGVtcGxhdGVTdGFjay5wb3AoKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5TbGFzaFRva2VuOlxuICAgICAgICBjYXNlIHRzLlN5bnRheEtpbmQuU2xhc2hFcXVhbHNUb2tlbjpcbiAgICAgICAgICBpZiAoY2FuUHJlY2VkZUFSZWdleChsYXN0VG9rZW4pKSB7XG4gICAgICAgICAgICAvLyBXZSBoYXZlIGhpdCBhIHNsYXNoIChgL2ApIGluIGEgY29udGV4dCB3aGVyZSBpdCBjb3VsZCBiZSB0aGUgc3RhcnQgb2YgYSByZWd1bGFyXG4gICAgICAgICAgICAvLyBleHByZXNzaW9uIHNvIHJlc2NhbiBpdCBpbiB0aGF0IGNvbnRleHRcbiAgICAgICAgICAgIGN1cnJlbnRUb2tlbiA9IHRoaXMuc2Nhbm5lci5yZVNjYW5TbGFzaFRva2VuKCk7XG4gICAgICAgICAgfVxuICAgICAgICAgIGJyZWFrO1xuICAgICAgICBjYXNlIHRzLlN5bnRheEtpbmQuSW1wb3J0S2V5d29yZDpcbiAgICAgICAgICBjb25zdCBpbXBvcnRQYXRoID0gdGhpcy5leHRyYWN0SW1wb3J0UGF0aCgpO1xuICAgICAgICAgIGlmIChpbXBvcnRQYXRoICE9PSBudWxsKSB7XG4gICAgICAgICAgICBpbXBvcnRzLmFkZChpbXBvcnRQYXRoKTtcbiAgICAgICAgICB9XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5FeHBvcnRLZXl3b3JkOlxuICAgICAgICAgIGNvbnN0IHJlZXhwb3J0UGF0aCA9IHRoaXMuZXh0cmFjdFJlZXhwb3J0UGF0aCgpO1xuICAgICAgICAgIGlmIChyZWV4cG9ydFBhdGggIT09IG51bGwpIHtcbiAgICAgICAgICAgIGltcG9ydHMuYWRkKHJlZXhwb3J0UGF0aCk7XG4gICAgICAgICAgfVxuICAgICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgbGFzdFRva2VuID0gY3VycmVudFRva2VuO1xuICAgIH1cblxuICAgIC8vIENsZWFyIHRoZSB0ZXh0IGZyb20gdGhlIHNjYW5uZXIgdG8gYXZvaWQgaG9sZGluZyBvbiB0byBwb3RlbnRpYWxseSBsYXJnZSBzdHJpbmdzIG9mIHNvdXJjZVxuICAgIC8vIGNvbnRlbnQgYWZ0ZXIgdGhlIHNjYW5uaW5nIGhhcyBjb21wbGV0ZWQuXG4gICAgdGhpcy5zY2FubmVyLnNldFRleHQoJycpO1xuXG4gICAgcmV0dXJuIGltcG9ydHM7XG4gIH1cblxuXG4gIC8qKlxuICAgKiBXZSBoYXZlIGZvdW5kIGFuIGBpbXBvcnRgIHRva2VuIHNvIG5vdyB0cnkgdG8gaWRlbnRpZnkgdGhlIGltcG9ydCBwYXRoLlxuICAgKlxuICAgKiBUaGlzIG1ldGhvZCB3aWxsIHVzZSB0aGUgY3VycmVudCBzdGF0ZSBvZiBgdGhpcy5zY2FubmVyYCB0byBleHRyYWN0IGEgc3RyaW5nIGxpdGVyYWwgbW9kdWxlXG4gICAqIHNwZWNpZmllci4gSXQgZXhwZWN0cyB0aGF0IHRoZSBjdXJyZW50IHN0YXRlIG9mIHRoZSBzY2FubmVyIGlzIHRoYXQgYW4gYGltcG9ydGAgdG9rZW4gaGFzIGp1c3RcbiAgICogYmVlbiBzY2FubmVkLlxuICAgKlxuICAgKiBUaGUgZm9sbG93aW5nIGZvcm1zIG9mIGltcG9ydCBhcmUgbWF0Y2hlZDpcbiAgICpcbiAgICogKiBgaW1wb3J0IFwibW9kdWxlLXNwZWNpZmllclwiO2BcbiAgICogKiBgaW1wb3J0KFwibW9kdWxlLXNwZWNpZmllclwiKWBcbiAgICogKiBgaW1wb3J0IGRlZmF1bHRCaW5kaW5nIGZyb20gXCJtb2R1bGUtc3BlY2lmaWVyXCI7YFxuICAgKiAqIGBpbXBvcnQgZGVmYXVsdEJpbmRpbmcsICogYXMgaWRlbnRpZmllciBmcm9tIFwibW9kdWxlLXNwZWNpZmllclwiO2BcbiAgICogKiBgaW1wb3J0IGRlZmF1bHRCaW5kaW5nLCB7Li4ufSBmcm9tIFwibW9kdWxlLXNwZWNpZmllclwiO2BcbiAgICogKiBgaW1wb3J0ICogYXMgaWRlbnRpZmllciBmcm9tIFwibW9kdWxlLXNwZWNpZmllclwiO2BcbiAgICogKiBgaW1wb3J0IHsuLi59IGZyb20gXCJtb2R1bGUtc3BlY2lmaWVyXCI7YFxuICAgKlxuICAgKiBAcmV0dXJucyB0aGUgaW1wb3J0IHBhdGggb3IgbnVsbCBpZiB0aGVyZSBpcyBubyBpbXBvcnQgb3IgaXQgaXMgbm90IGEgc3RyaW5nIGxpdGVyYWwuXG4gICAqL1xuICBwcm90ZWN0ZWQgZXh0cmFjdEltcG9ydFBhdGgoKTogc3RyaW5nfG51bGwge1xuICAgIC8vIENoZWNrIGZvciBzaWRlLWVmZmVjdCBpbXBvcnRcbiAgICBsZXQgc2lkZUVmZmVjdEltcG9ydFBhdGggPSB0aGlzLnRyeVN0cmluZ0xpdGVyYWwoKTtcbiAgICBpZiAoc2lkZUVmZmVjdEltcG9ydFBhdGggIT09IG51bGwpIHtcbiAgICAgIHJldHVybiBzaWRlRWZmZWN0SW1wb3J0UGF0aDtcbiAgICB9XG5cbiAgICBsZXQga2luZDogdHMuU3ludGF4S2luZHxudWxsID0gdGhpcy5zY2FubmVyLmdldFRva2VuKCk7XG5cbiAgICAvLyBDaGVjayBmb3IgZHluYW1pYyBpbXBvcnQgZXhwcmVzc2lvblxuICAgIGlmIChraW5kID09PSB0cy5TeW50YXhLaW5kLk9wZW5QYXJlblRva2VuKSB7XG4gICAgICByZXR1cm4gdGhpcy5zY2FuSW1wb3J0RXhwcmVzc2lvbnMgPyB0aGlzLnRyeVN0cmluZ0xpdGVyYWwoKSA6IG51bGw7XG4gICAgfVxuXG4gICAgLy8gQ2hlY2sgZm9yIGRlZmF1bHRCaW5kaW5nXG4gICAgaWYgKGtpbmQgPT09IHRzLlN5bnRheEtpbmQuSWRlbnRpZmllcikge1xuICAgICAgLy8gU2tpcCBkZWZhdWx0IGJpbmRpbmdcbiAgICAgIGtpbmQgPSB0aGlzLnNjYW5uZXIuc2NhbigpO1xuICAgICAgaWYgKGtpbmQgPT09IHRzLlN5bnRheEtpbmQuQ29tbWFUb2tlbikge1xuICAgICAgICAvLyBTa2lwIGNvbW1hIHRoYXQgaW5kaWNhdGVzIGFkZGl0aW9uYWwgaW1wb3J0IGJpbmRpbmdzXG4gICAgICAgIGtpbmQgPSB0aGlzLnNjYW5uZXIuc2NhbigpO1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIENoZWNrIGZvciBuYW1lc3BhY2UgaW1wb3J0IGNsYXVzZVxuICAgIGlmIChraW5kID09PSB0cy5TeW50YXhLaW5kLkFzdGVyaXNrVG9rZW4pIHtcbiAgICAgIGtpbmQgPSB0aGlzLnNraXBOYW1lc3BhY2VkQ2xhdXNlKCk7XG4gICAgICBpZiAoa2luZCA9PT0gbnVsbCkge1xuICAgICAgICByZXR1cm4gbnVsbDtcbiAgICAgIH1cbiAgICB9XG4gICAgLy8gQ2hlY2sgZm9yIG5hbWVkIGltcG9ydHMgY2xhdXNlXG4gICAgZWxzZSBpZiAoa2luZCA9PT0gdHMuU3ludGF4S2luZC5PcGVuQnJhY2VUb2tlbikge1xuICAgICAga2luZCA9IHRoaXMuc2tpcE5hbWVkQ2xhdXNlKCk7XG4gICAgfVxuXG4gICAgLy8gRXhwZWN0IGEgYGZyb21gIGNsYXVzZSwgaWYgbm90IGJhaWwgb3V0XG4gICAgaWYgKGtpbmQgIT09IHRzLlN5bnRheEtpbmQuRnJvbUtleXdvcmQpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIHJldHVybiB0aGlzLnRyeVN0cmluZ0xpdGVyYWwoKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBXZSBoYXZlIGZvdW5kIGFuIGBleHBvcnRgIHRva2VuIHNvIG5vdyB0cnkgdG8gaWRlbnRpZnkgYSByZS1leHBvcnQgcGF0aC5cbiAgICpcbiAgICogVGhpcyBtZXRob2Qgd2lsbCB1c2UgdGhlIGN1cnJlbnQgc3RhdGUgb2YgYHRoaXMuc2Nhbm5lcmAgdG8gZXh0cmFjdCBhIHN0cmluZyBsaXRlcmFsIG1vZHVsZVxuICAgKiBzcGVjaWZpZXIuIEl0IGV4cGVjdHMgdGhhdCB0aGUgY3VycmVudCBzdGF0ZSBvZiB0aGUgc2Nhbm5lciBpcyB0aGF0IGFuIGBleHBvcnRgIHRva2VuIGhhc1xuICAgKiBqdXN0IGJlZW4gc2Nhbm5lZC5cbiAgICpcbiAgICogVGhlcmUgYXJlIHRocmVlIGZvcm1zIG9mIHJlLWV4cG9ydCB0aGF0IGFyZSBtYXRjaGVkOlxuICAgKlxuICAgKiAqIGBleHBvcnQgKiBmcm9tICcuLi4nO1xuICAgKiAqIGBleHBvcnQgKiBhcyBhbGlhcyBmcm9tICcuLi4nO1xuICAgKiAqIGBleHBvcnQgey4uLn0gZnJvbSAnLi4uJztcbiAgICovXG4gIHByb3RlY3RlZCBleHRyYWN0UmVleHBvcnRQYXRoKCk6IHN0cmluZ3xudWxsIHtcbiAgICAvLyBTa2lwIHRoZSBgZXhwb3J0YCBrZXl3b3JkXG4gICAgbGV0IHRva2VuOiB0cy5TeW50YXhLaW5kfG51bGwgPSB0aGlzLnNjYW5uZXIuc2NhbigpO1xuICAgIGlmICh0b2tlbiA9PT0gdHMuU3ludGF4S2luZC5Bc3Rlcmlza1Rva2VuKSB7XG4gICAgICB0b2tlbiA9IHRoaXMuc2tpcE5hbWVzcGFjZWRDbGF1c2UoKTtcbiAgICAgIGlmICh0b2tlbiA9PT0gbnVsbCkge1xuICAgICAgICByZXR1cm4gbnVsbDtcbiAgICAgIH1cbiAgICB9IGVsc2UgaWYgKHRva2VuID09PSB0cy5TeW50YXhLaW5kLk9wZW5CcmFjZVRva2VuKSB7XG4gICAgICB0b2tlbiA9IHRoaXMuc2tpcE5hbWVkQ2xhdXNlKCk7XG4gICAgfVxuICAgIC8vIEV4cGVjdCBhIGBmcm9tYCBjbGF1c2UsIGlmIG5vdCBiYWlsIG91dFxuICAgIGlmICh0b2tlbiAhPT0gdHMuU3ludGF4S2luZC5Gcm9tS2V5d29yZCkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLnRyeVN0cmluZ0xpdGVyYWwoKTtcbiAgfVxuXG4gIHByb3RlY3RlZCBza2lwTmFtZXNwYWNlZENsYXVzZSgpOiB0cy5TeW50YXhLaW5kfG51bGwge1xuICAgIC8vIFNraXAgcGFzdCB0aGUgYCpgXG4gICAgbGV0IHRva2VuID0gdGhpcy5zY2FubmVyLnNjYW4oKTtcbiAgICAvLyBDaGVjayBmb3IgYSBgKiBhcyBpZGVudGlmaWVyYCBhbGlhcyBjbGF1c2VcbiAgICBpZiAodG9rZW4gPT09IHRzLlN5bnRheEtpbmQuQXNLZXl3b3JkKSB7XG4gICAgICAvLyBTa2lwIHBhc3QgdGhlIGBhc2Aga2V5d29yZFxuICAgICAgdG9rZW4gPSB0aGlzLnNjYW5uZXIuc2NhbigpO1xuICAgICAgLy8gRXhwZWN0IGFuIGlkZW50aWZpZXIsIGlmIG5vdCBiYWlsIG91dFxuICAgICAgaWYgKHRva2VuICE9PSB0cy5TeW50YXhLaW5kLklkZW50aWZpZXIpIHtcbiAgICAgICAgcmV0dXJuIG51bGw7XG4gICAgICB9XG4gICAgICAvLyBTa2lwIHBhc3QgdGhlIGlkZW50aWZpZXJcbiAgICAgIHRva2VuID0gdGhpcy5zY2FubmVyLnNjYW4oKTtcbiAgICB9XG4gICAgcmV0dXJuIHRva2VuO1xuICB9XG5cbiAgcHJvdGVjdGVkIHNraXBOYW1lZENsYXVzZSgpOiB0cy5TeW50YXhLaW5kIHtcbiAgICBsZXQgYnJhY2VDb3VudCA9IDE7XG4gICAgLy8gU2tpcCBwYXN0IHRoZSBpbml0aWFsIG9wZW5pbmcgYnJhY2UgYHtgXG4gICAgbGV0IHRva2VuID0gdGhpcy5zY2FubmVyLnNjYW4oKTtcbiAgICAvLyBTZWFyY2ggZm9yIHRoZSBtYXRjaGluZyBjbG9zaW5nIGJyYWNlIGB9YFxuICAgIHdoaWxlIChicmFjZUNvdW50ID4gMCAmJiB0b2tlbiAhPT0gdHMuU3ludGF4S2luZC5FbmRPZkZpbGVUb2tlbikge1xuICAgICAgaWYgKHRva2VuID09PSB0cy5TeW50YXhLaW5kLk9wZW5CcmFjZVRva2VuKSB7XG4gICAgICAgIGJyYWNlQ291bnQrKztcbiAgICAgIH0gZWxzZSBpZiAodG9rZW4gPT09IHRzLlN5bnRheEtpbmQuQ2xvc2VCcmFjZVRva2VuKSB7XG4gICAgICAgIGJyYWNlQ291bnQtLTtcbiAgICAgIH1cbiAgICAgIHRva2VuID0gdGhpcy5zY2FubmVyLnNjYW4oKTtcbiAgICB9XG4gICAgcmV0dXJuIHRva2VuO1xuICB9XG5cbiAgcHJvdGVjdGVkIHRyeVN0cmluZ0xpdGVyYWwoKTogc3RyaW5nfG51bGwge1xuICAgIHJldHVybiB0aGlzLnNjYW5uZXIuc2NhbigpID09PSB0cy5TeW50YXhLaW5kLlN0cmluZ0xpdGVyYWwgPyB0aGlzLnNjYW5uZXIuZ2V0VG9rZW5WYWx1ZSgpIDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbnVsbDtcbiAgfVxufVxuXG4vKipcbiAqIENoZWNrIHdoZXRoZXIgYSBzb3VyY2UgZmlsZSBuZWVkcyB0byBiZSBwYXJzZWQgZm9yIGltcG9ydHMuXG4gKiBUaGlzIGlzIGEgcGVyZm9ybWFuY2Ugc2hvcnQtY2lyY3VpdCwgd2hpY2ggc2F2ZXMgdXMgZnJvbSBjcmVhdGluZ1xuICogYSBUeXBlU2NyaXB0IEFTVCB1bm5lY2Vzc2FyaWx5LlxuICpcbiAqIEBwYXJhbSBzb3VyY2UgVGhlIGNvbnRlbnQgb2YgdGhlIHNvdXJjZSBmaWxlIHRvIGNoZWNrLlxuICpcbiAqIEByZXR1cm5zIGZhbHNlIGlmIHRoZXJlIGFyZSBkZWZpbml0ZWx5IG5vIGltcG9ydCBvciByZS1leHBvcnQgc3RhdGVtZW50c1xuICogaW4gdGhpcyBmaWxlLCB0cnVlIG90aGVyd2lzZS5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGhhc0ltcG9ydE9yUmVleHBvcnRTdGF0ZW1lbnRzKHNvdXJjZTogc3RyaW5nKTogYm9vbGVhbiB7XG4gIHJldHVybiAvKD86aW1wb3J0fGV4cG9ydClbXFxzXFxTXSs/KFtcIiddKSg/OlxcXFxcXDF8LikrP1xcMS8udGVzdChzb3VyY2UpO1xufVxuXG5cbi8qKlxuICogQ2hlY2sgd2hldGhlciB0aGUgZ2l2ZW4gc3RhdGVtZW50IGlzIGFuIGltcG9ydCB3aXRoIGEgc3RyaW5nIGxpdGVyYWwgbW9kdWxlIHNwZWNpZmllci5cbiAqIEBwYXJhbSBzdG10IHRoZSBzdGF0ZW1lbnQgbm9kZSB0byBjaGVjay5cbiAqIEByZXR1cm5zIHRydWUgaWYgdGhlIHN0YXRlbWVudCBpcyBhbiBpbXBvcnQgd2l0aCBhIHN0cmluZyBsaXRlcmFsIG1vZHVsZSBzcGVjaWZpZXIuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBpc1N0cmluZ0ltcG9ydE9yUmVleHBvcnQoc3RtdDogdHMuU3RhdGVtZW50KTogc3RtdCBpcyB0cy5JbXBvcnREZWNsYXJhdGlvbiZcbiAgICB7bW9kdWxlU3BlY2lmaWVyOiB0cy5TdHJpbmdMaXRlcmFsfSB7XG4gIHJldHVybiB0cy5pc0ltcG9ydERlY2xhcmF0aW9uKHN0bXQpIHx8XG4gICAgICB0cy5pc0V4cG9ydERlY2xhcmF0aW9uKHN0bXQpICYmICEhc3RtdC5tb2R1bGVTcGVjaWZpZXIgJiZcbiAgICAgIHRzLmlzU3RyaW5nTGl0ZXJhbChzdG10Lm1vZHVsZVNwZWNpZmllcik7XG59XG5cblxuZnVuY3Rpb24gY2FuUHJlY2VkZUFSZWdleChraW5kOiB0cy5TeW50YXhLaW5kKTogYm9vbGVhbiB7XG4gIHN3aXRjaCAoa2luZCkge1xuICAgIGNhc2UgdHMuU3ludGF4S2luZC5JZGVudGlmaWVyOlxuICAgIGNhc2UgdHMuU3ludGF4S2luZC5TdHJpbmdMaXRlcmFsOlxuICAgIGNhc2UgdHMuU3ludGF4S2luZC5OdW1lcmljTGl0ZXJhbDpcbiAgICBjYXNlIHRzLlN5bnRheEtpbmQuQmlnSW50TGl0ZXJhbDpcbiAgICBjYXNlIHRzLlN5bnRheEtpbmQuUmVndWxhckV4cHJlc3Npb25MaXRlcmFsOlxuICAgIGNhc2UgdHMuU3ludGF4S2luZC5UaGlzS2V5d29yZDpcbiAgICBjYXNlIHRzLlN5bnRheEtpbmQuUGx1c1BsdXNUb2tlbjpcbiAgICBjYXNlIHRzLlN5bnRheEtpbmQuTWludXNNaW51c1Rva2VuOlxuICAgIGNhc2UgdHMuU3ludGF4S2luZC5DbG9zZVBhcmVuVG9rZW46XG4gICAgY2FzZSB0cy5TeW50YXhLaW5kLkNsb3NlQnJhY2tldFRva2VuOlxuICAgIGNhc2UgdHMuU3ludGF4S2luZC5DbG9zZUJyYWNlVG9rZW46XG4gICAgY2FzZSB0cy5TeW50YXhLaW5kLlRydWVLZXl3b3JkOlxuICAgIGNhc2UgdHMuU3ludGF4S2luZC5GYWxzZUtleXdvcmQ6XG4gICAgICByZXR1cm4gZmFsc2U7XG4gICAgZGVmYXVsdDpcbiAgICAgIHJldHVybiB0cnVlO1xuICB9XG59XG4iXX0=