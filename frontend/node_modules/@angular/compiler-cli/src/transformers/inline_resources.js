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
        define("@angular/compiler-cli/src/transformers/inline_resources", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/metadata/index"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.getInlineResourcesTransformFactory = exports.InlineResourcesMetadataTransformer = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    var index_1 = require("@angular/compiler-cli/src/metadata/index");
    var PRECONDITIONS_TEXT = 'angularCompilerOptions.enableResourceInlining requires all resources to be statically resolvable.';
    function getResourceLoader(host, containingFileName) {
        return {
            get: function (url) {
                if (typeof url !== 'string') {
                    throw new Error('templateUrl and stylesUrl must be string literals. ' + PRECONDITIONS_TEXT);
                }
                var fileName = host.resourceNameToFileName(url, containingFileName);
                if (fileName) {
                    var content = host.loadResource(fileName);
                    if (typeof content !== 'string') {
                        throw new Error('Cannot handle async resource. ' + PRECONDITIONS_TEXT);
                    }
                    return content;
                }
                throw new Error("Failed to resolve " + url + " from " + containingFileName + ". " + PRECONDITIONS_TEXT);
            }
        };
    }
    var InlineResourcesMetadataTransformer = /** @class */ (function () {
        function InlineResourcesMetadataTransformer(host) {
            this.host = host;
        }
        InlineResourcesMetadataTransformer.prototype.start = function (sourceFile) {
            var _this = this;
            var loader = getResourceLoader(this.host, sourceFile.fileName);
            return function (value, node) {
                if (index_1.isClassMetadata(value) && ts.isClassDeclaration(node) && value.decorators) {
                    value.decorators.forEach(function (d) {
                        if (index_1.isMetadataSymbolicCallExpression(d) &&
                            index_1.isMetadataImportedSymbolReferenceExpression(d.expression) &&
                            d.expression.module === '@angular/core' && d.expression.name === 'Component' &&
                            d.arguments) {
                            // Arguments to an @Component that was compiled successfully are always
                            // MetadataObject(s).
                            d.arguments = d.arguments
                                .map(_this.updateDecoratorMetadata.bind(_this, loader));
                        }
                    });
                }
                return value;
            };
        };
        InlineResourcesMetadataTransformer.prototype.updateDecoratorMetadata = function (loader, arg) {
            if (arg['templateUrl']) {
                arg['template'] = loader.get(arg['templateUrl']);
                delete arg['templateUrl'];
            }
            var styles = arg['styles'] || [];
            var styleUrls = arg['styleUrls'] || [];
            if (!Array.isArray(styles))
                throw new Error('styles should be an array');
            if (!Array.isArray(styleUrls))
                throw new Error('styleUrls should be an array');
            styles.push.apply(styles, tslib_1.__spread(styleUrls.map(function (styleUrl) { return loader.get(styleUrl); })));
            if (styles.length > 0) {
                arg['styles'] = styles;
                delete arg['styleUrls'];
            }
            return arg;
        };
        return InlineResourcesMetadataTransformer;
    }());
    exports.InlineResourcesMetadataTransformer = InlineResourcesMetadataTransformer;
    function getInlineResourcesTransformFactory(program, host) {
        return function (context) { return function (sourceFile) {
            var loader = getResourceLoader(host, sourceFile.fileName);
            var visitor = function (node) {
                // Components are always classes; skip any other node
                if (!ts.isClassDeclaration(node)) {
                    return node;
                }
                // Decorator case - before or without decorator downleveling
                // @Component()
                var newDecorators = ts.visitNodes(node.decorators, function (node) {
                    if (ts.isDecorator(node) && isComponentDecorator(node, program.getTypeChecker())) {
                        return updateDecorator(node, loader);
                    }
                    return node;
                });
                // Annotation case - after decorator downleveling
                // static decorators: {type: Function, args?: any[]}[]
                var newMembers = ts.visitNodes(node.members, function (node) {
                    if (ts.isClassElement(node)) {
                        return updateAnnotations(node, loader, program.getTypeChecker());
                    }
                    else {
                        return node;
                    }
                });
                // Create a new AST subtree with our modifications
                return ts.updateClassDeclaration(node, newDecorators, node.modifiers, node.name, node.typeParameters, node.heritageClauses || [], newMembers);
            };
            return ts.visitEachChild(sourceFile, visitor, context);
        }; };
    }
    exports.getInlineResourcesTransformFactory = getInlineResourcesTransformFactory;
    /**
     * Update a Decorator AST node to inline the resources
     * @param node the @Component decorator
     * @param loader provides access to load resources
     */
    function updateDecorator(node, loader) {
        if (!ts.isCallExpression(node.expression)) {
            // User will get an error somewhere else with bare @Component
            return node;
        }
        var expr = node.expression;
        var newArguments = updateComponentProperties(expr.arguments, loader);
        return ts.updateDecorator(node, ts.updateCall(expr, expr.expression, expr.typeArguments, newArguments));
    }
    /**
     * Update an Annotations AST node to inline the resources
     * @param node the static decorators property
     * @param loader provides access to load resources
     * @param typeChecker provides access to symbol table
     */
    function updateAnnotations(node, loader, typeChecker) {
        // Looking for a member of this shape:
        // PropertyDeclaration called decorators, with static modifier
        // Initializer is ArrayLiteralExpression
        // One element is the Component type, its initializer is the @angular/core Component symbol
        // One element is the component args, its initializer is the Component arguments to change
        // e.g.
        //   static decorators: {type: Function, args?: any[]}[] =
        //   [{
        //     type: Component,
        //     args: [{
        //       templateUrl: './my.component.html',
        //       styleUrls: ['./my.component.css'],
        //     }],
        //   }];
        if (!ts.isPropertyDeclaration(node) || // ts.ModifierFlags.Static &&
            !ts.isIdentifier(node.name) || node.name.text !== 'decorators' || !node.initializer ||
            !ts.isArrayLiteralExpression(node.initializer)) {
            return node;
        }
        var newAnnotations = node.initializer.elements.map(function (annotation) {
            // No-op if there's a non-object-literal mixed in the decorators values
            if (!ts.isObjectLiteralExpression(annotation))
                return annotation;
            var decoratorType = annotation.properties.find(function (p) { return isIdentifierNamed(p, 'type'); });
            // No-op if there's no 'type' property, or if it's not initialized to the Component symbol
            if (!decoratorType || !ts.isPropertyAssignment(decoratorType) ||
                !ts.isIdentifier(decoratorType.initializer) ||
                !isComponentSymbol(decoratorType.initializer, typeChecker)) {
                return annotation;
            }
            var newAnnotation = annotation.properties.map(function (prop) {
                // No-op if this isn't the 'args' property or if it's not initialized to an array
                if (!isIdentifierNamed(prop, 'args') || !ts.isPropertyAssignment(prop) ||
                    !ts.isArrayLiteralExpression(prop.initializer))
                    return prop;
                var newDecoratorArgs = ts.updatePropertyAssignment(prop, prop.name, ts.createArrayLiteral(updateComponentProperties(prop.initializer.elements, loader)));
                return newDecoratorArgs;
            });
            return ts.updateObjectLiteral(annotation, newAnnotation);
        });
        return ts.updateProperty(node, node.decorators, node.modifiers, node.name, node.questionToken, node.type, ts.updateArrayLiteral(node.initializer, newAnnotations));
    }
    function isIdentifierNamed(p, name) {
        return !!p.name && ts.isIdentifier(p.name) && p.name.text === name;
    }
    /**
     * Check that the node we are visiting is the actual Component decorator defined in @angular/core.
     */
    function isComponentDecorator(node, typeChecker) {
        if (!ts.isCallExpression(node.expression)) {
            return false;
        }
        var callExpr = node.expression;
        var identifier;
        if (ts.isIdentifier(callExpr.expression)) {
            identifier = callExpr.expression;
        }
        else {
            return false;
        }
        return isComponentSymbol(identifier, typeChecker);
    }
    function isComponentSymbol(identifier, typeChecker) {
        // Only handle identifiers, not expressions
        if (!ts.isIdentifier(identifier))
            return false;
        // NOTE: resolver.getReferencedImportDeclaration would work as well but is internal
        var symbol = typeChecker.getSymbolAtLocation(identifier);
        if (!symbol || !symbol.declarations || !symbol.declarations.length) {
            console.error("Unable to resolve symbol '" + identifier.text + "' in the program, does it type-check?");
            return false;
        }
        var declaration = symbol.declarations[0];
        if (!declaration || !ts.isImportSpecifier(declaration)) {
            return false;
        }
        var name = (declaration.propertyName || declaration.name).text;
        // We know that parent pointers are set because we created the SourceFile ourselves.
        // The number of parent references here match the recursion depth at this point.
        var moduleId = declaration.parent.parent.parent.moduleSpecifier.text;
        return moduleId === '@angular/core' && name === 'Component';
    }
    /**
     * For each property in the object literal, if it's templateUrl or styleUrls, replace it
     * with content.
     * @param node the arguments to @Component() or args property of decorators: [{type:Component}]
     * @param loader provides access to the loadResource method of the host
     * @returns updated arguments
     */
    function updateComponentProperties(args, loader) {
        if (args.length !== 1) {
            // User should have gotten a type-check error because @Component takes one argument
            return args;
        }
        var componentArg = args[0];
        if (!ts.isObjectLiteralExpression(componentArg)) {
            // User should have gotten a type-check error because @Component takes an object literal
            // argument
            return args;
        }
        var newProperties = [];
        var newStyleExprs = [];
        componentArg.properties.forEach(function (prop) {
            if (!ts.isPropertyAssignment(prop) || ts.isComputedPropertyName(prop.name)) {
                newProperties.push(prop);
                return;
            }
            switch (prop.name.text) {
                case 'styles':
                    if (!ts.isArrayLiteralExpression(prop.initializer)) {
                        throw new Error('styles takes an array argument');
                    }
                    newStyleExprs.push.apply(newStyleExprs, tslib_1.__spread(prop.initializer.elements));
                    break;
                case 'styleUrls':
                    if (!ts.isArrayLiteralExpression(prop.initializer)) {
                        throw new Error('styleUrls takes an array argument');
                    }
                    newStyleExprs.push.apply(newStyleExprs, tslib_1.__spread(prop.initializer.elements.map(function (expr) {
                        if (!ts.isStringLiteral(expr) && !ts.isNoSubstitutionTemplateLiteral(expr)) {
                            throw new Error('Can only accept string literal arguments to styleUrls. ' + PRECONDITIONS_TEXT);
                        }
                        var styles = loader.get(expr.text);
                        return ts.createLiteral(styles);
                    })));
                    break;
                case 'templateUrl':
                    if (!ts.isStringLiteral(prop.initializer) &&
                        !ts.isNoSubstitutionTemplateLiteral(prop.initializer)) {
                        throw new Error('Can only accept a string literal argument to templateUrl. ' + PRECONDITIONS_TEXT);
                    }
                    var template = loader.get(prop.initializer.text);
                    newProperties.push(ts.updatePropertyAssignment(prop, ts.createIdentifier('template'), ts.createLiteral(template)));
                    break;
                default:
                    newProperties.push(prop);
            }
        });
        // Add the non-inline styles
        if (newStyleExprs.length > 0) {
            var newStyles = ts.createPropertyAssignment(ts.createIdentifier('styles'), ts.createArrayLiteral(newStyleExprs));
            newProperties.push(newStyles);
        }
        return ts.createNodeArray([ts.updateObjectLiteral(componentArg, newProperties)]);
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5saW5lX3Jlc291cmNlcy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvdHJhbnNmb3JtZXJzL2lubGluZV9yZXNvdXJjZXMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUVILCtCQUFpQztJQUVqQyxrRUFBZ0s7SUFJaEssSUFBTSxrQkFBa0IsR0FDcEIsbUdBQW1HLENBQUM7SUFZeEcsU0FBUyxpQkFBaUIsQ0FBQyxJQUFtQixFQUFFLGtCQUEwQjtRQUN4RSxPQUFPO1lBQ0wsR0FBRyxFQUFILFVBQUksR0FBeUI7Z0JBQzNCLElBQUksT0FBTyxHQUFHLEtBQUssUUFBUSxFQUFFO29CQUMzQixNQUFNLElBQUksS0FBSyxDQUFDLHFEQUFxRCxHQUFHLGtCQUFrQixDQUFDLENBQUM7aUJBQzdGO2dCQUNELElBQU0sUUFBUSxHQUFHLElBQUksQ0FBQyxzQkFBc0IsQ0FBQyxHQUFHLEVBQUUsa0JBQWtCLENBQUMsQ0FBQztnQkFDdEUsSUFBSSxRQUFRLEVBQUU7b0JBQ1osSUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLFlBQVksQ0FBQyxRQUFRLENBQUMsQ0FBQztvQkFDNUMsSUFBSSxPQUFPLE9BQU8sS0FBSyxRQUFRLEVBQUU7d0JBQy9CLE1BQU0sSUFBSSxLQUFLLENBQUMsZ0NBQWdDLEdBQUcsa0JBQWtCLENBQUMsQ0FBQztxQkFDeEU7b0JBQ0QsT0FBTyxPQUFPLENBQUM7aUJBQ2hCO2dCQUNELE1BQU0sSUFBSSxLQUFLLENBQUMsdUJBQXFCLEdBQUcsY0FBUyxrQkFBa0IsVUFBSyxrQkFBb0IsQ0FBQyxDQUFDO1lBQ2hHLENBQUM7U0FDRixDQUFDO0lBQ0osQ0FBQztJQUVEO1FBQ0UsNENBQW9CLElBQW1CO1lBQW5CLFNBQUksR0FBSixJQUFJLENBQWU7UUFBRyxDQUFDO1FBRTNDLGtEQUFLLEdBQUwsVUFB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QUMsYUFBYSxDQUFDLENBQUMsQ0FBQztZQUN6RSxhQUFhLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDO1NBQy9CO1FBRUQsT0FBTyxFQUFFLENBQUMsZUFBZSxDQUFDLENBQUMsRUFBRSxDQUFDLG1CQUFtQixDQUFDLFlBQVksRUFBRSxhQUFhLENBQUMsQ0FBQyxDQUFDLENBQUM7SUFDbkYsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtpc0NsYXNzTWV0YWRhdGEsIGlzTWV0YWRhdGFJbXBvcnRlZFN5bWJvbFJlZmVyZW5jZUV4cHJlc3Npb24sIGlzTWV0YWRhdGFTeW1ib2xpY0NhbGxFeHByZXNzaW9uLCBNZXRhZGF0YU9iamVjdCwgTWV0YWRhdGFWYWx1ZX0gZnJvbSAnLi4vbWV0YWRhdGEvaW5kZXgnO1xuXG5pbXBvcnQge01ldGFkYXRhVHJhbnNmb3JtZXIsIFZhbHVlVHJhbnNmb3JtfSBmcm9tICcuL21ldGFkYXRhX2NhY2hlJztcblxuY29uc3QgUFJFQ09ORElUSU9OU19URVhUID1cbiAgICAnYW5ndWxhckNvbXBpbGVyT3B0aW9ucy5lbmFibGVSZXNvdXJjZUlubGluaW5nIHJlcXVpcmVzIGFsbCByZXNvdXJjZXMgdG8gYmUgc3RhdGljYWxseSByZXNvbHZhYmxlLic7XG5cbi8qKiBBIHN1YnNldCBvZiBtZW1iZXJzIGZyb20gQW90Q29tcGlsZXJIb3N0ICovXG5leHBvcnQgdHlwZSBSZXNvdXJjZXNIb3N0ID0ge1xuICByZXNvdXJjZU5hbWVUb0ZpbGVOYW1lKHJlc291cmNlTmFtZTogc3RyaW5nLCBjb250YWluaW5nRmlsZU5hbWU6IHN0cmluZyk6IHN0cmluZ3xudWxsO1xuICBsb2FkUmVzb3VyY2UocGF0aDogc3RyaW5nKTogUHJvbWlzZTxzdHJpbmc+fCBzdHJpbmc7XG59O1xuXG5leHBvcnQgdHlwZSBTdGF0aWNSZXNvdXJjZUxvYWRlciA9IHtcbiAgZ2V0KHVybDogc3RyaW5nfE1ldGFkYXRhVmFsdWUpOiBzdHJpbmc7XG59O1xuXG5mdW5jdGlvbiBnZXRSZXNvdXJjZUxvYWRlcihob3N0OiBSZXNvdXJjZXNIb3N0LCBjb250YWluaW5nRmlsZU5hbWU6IHN0cmluZyk6IFN0YXRpY1Jlc291cmNlTG9hZGVyIHtcbiAgcmV0dXJuIHtcbiAgICBnZXQodXJsOiBzdHJpbmd8TWV0YWRhdGFWYWx1ZSk6IHN0cmluZyB7XG4gICAgICBpZiAodHlwZW9mIHVybCAhPT0gJ3N0cmluZycpIHtcbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKCd0ZW1wbGF0ZVVybCBhbmQgc3R5bGVzVXJsIG11c3QgYmUgc3RyaW5nIGxpdGVyYWxzLiAnICsgUFJFQ09ORElUSU9OU19URVhUKTtcbiAgICAgIH1cbiAgICAgIGNvbnN0IGZpbGVOYW1lID0gaG9zdC5yZXNvdXJjZU5hbWVUb0ZpbGVOYW1lKHVybCwgY29udGFpbmluZ0ZpbGVOYW1lKTtcbiAgICAgIGlmIChmaWxlTmFtZSkge1xuICAgICAgICBjb25zdCBjb250ZW50ID0gaG9zdC5sb2FkUmVzb3VyY2UoZmlsZU5hbWUpO1xuICAgICAgICBpZiAodHlwZW9mIGNvbnRlbnQgIT09ICdzdHJpbmcnKSB7XG4gICAgICAgICAgdGhyb3cgbmV3IEVycm9yKCdDYW5ub3QgaGFuZGxlIGFzeW5jIHJlc291cmNlLiAnICsgUFJFQ09ORElUSU9OU19URVhUKTtcbiAgICAgICAgfVxuICAgICAgICByZXR1cm4gY29udGVudDtcbiAgICAgIH1cbiAgICAgIHRocm93IG5ldyBFcnJvcihgRmFpbGVkIHRvIHJlc29sdmUgJHt1cmx9IGZyb20gJHtjb250YWluaW5nRmlsZU5hbWV9LiAke1BSRUNPTkRJVElPTlNfVEVYVH1gKTtcbiAgICB9XG4gIH07XG59XG5cbmV4cG9ydCBjbGFzcyBJbmxpbmVSZXNvdXJjZXNNZXRhZGF0YVRyYW5zZm9ybWVyIGltcGxlbWVudHMgTWV0YWRhdGFUcmFuc2Zvcm1lciB7XG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgaG9zdDogUmVzb3VyY2VzSG9zdCkge31cblxuICBzdGFydChzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlKTogVmFsdWVUcmFuc2Zvcm18dW5kZWZpbmVkIHtcbiAgICBjb25zdCBsb2FkZXIgPSBnZXRSZXNvdXJjZUxvYWRlcih0aGlzLmhvc3QsIHNvdXJjZUZpbGUuZmlsZU5hbWUpO1xuICAgIHJldHVybiAodmFsdWU6IE1ldGFkYXRhVmFsdWUsIG5vZGU6IHRzLk5vZGUpOiBNZXRhZGF0YVZhbHVlID0+IHtcbiAgICAgIGlmIChpc0NsYXNzTWV0YWRhdGEodmFsdWUpICYmIHRzLmlzQ2xhc3NEZWNsYXJhdGlvbihub2RlKSAmJiB2YWx1ZS5kZWNvcmF0b3JzKSB7XG4gICAgICAgIHZhbHVlLmRlY29yYXRvcnMuZm9yRWFjaChkID0+IHtcbiAgICAgICAgICBpZiAoaXNNZXRhZGF0YVN5bWJvbGljQ2FsbEV4cHJlc3Npb24oZCkgJiZcbiAgICAgICAgICAgICAgaXNNZXRhZGF0YUltcG9ydGVkU3ltYm9sUmVmZXJlbmNlRXhwcmVzc2lvbihkLmV4cHJlc3Npb24pICYmXG4gICAgICAgICAgICAgIGQuZXhwcmVzc2lvbi5tb2R1bGUgPT09ICdAYW5ndWxhci9jb3JlJyAmJiBkLmV4cHJlc3Npb24ubmFtZSA9PT0gJ0NvbXBvbmVudCcgJiZcbiAgICAgICAgICAgICAgZC5hcmd1bWVudHMpIHtcbiAgICAgICAgICAgIC8vIEFyZ3VtZW50cyB0byBhbiBAQ29tcG9uZW50IHRoYXQgd2FzIGNvbXBpbGVkIHN1Y2Nlc3NmdWxseSBhcmUgYWx3YXlzXG4gICAgICAgICAgICAvLyBNZXRhZGF0YU9iamVjdChzKS5cbiAgICAgICAgICAgIGQuYXJndW1lbnRzID0gKGQuYXJndW1lbnRzIGFzIE1ldGFkYXRhT2JqZWN0W10pXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAubWFwKHRoaXMudXBkYXRlRGVjb3JhdG9yTWV0YWRhdGEuYmluZCh0aGlzLCBsb2FkZXIpKTtcbiAgICAgICAgICB9XG4gICAgICAgIH0pO1xuICAgICAgfVxuICAgICAgcmV0dXJuIHZhbHVlO1xuICAgIH07XG4gIH1cblxuICB1cGRhdGVEZWNvcmF0b3JNZXRhZGF0YShsb2FkZXI6IFN0YXRpY1Jlc291cmNlTG9hZGVyLCBhcmc6IE1ldGFkYXRhT2JqZWN0KTogTWV0YWRhdGFPYmplY3Qge1xuICAgIGlmIChhcmdbJ3RlbXBsYXRlVXJsJ10pIHtcbiAgICAgIGFyZ1sndGVtcGxhdGUnXSA9IGxvYWRlci5nZXQoYXJnWyd0ZW1wbGF0ZVVybCddKTtcbiAgICAgIGRlbGV0ZSBhcmdbJ3RlbXBsYXRlVXJsJ107XG4gICAgfVxuXG4gICAgY29uc3Qgc3R5bGVzID0gYXJnWydzdHlsZXMnXSB8fCBbXTtcbiAgICBjb25zdCBzdHlsZVVybHMgPSBhcmdbJ3N0eWxlVXJscyddIHx8IFtdO1xuICAgIGlmICghQXJyYXkuaXNBcnJheShzdHlsZXMpKSB0aHJvdyBuZXcgRXJyb3IoJ3N0eWxlcyBzaG91bGQgYmUgYW4gYXJyYXknKTtcbiAgICBpZiAoIUFycmF5LmlzQXJyYXkoc3R5bGVVcmxzKSkgdGhyb3cgbmV3IEVycm9yKCdzdHlsZVVybHMgc2hvdWxkIGJlIGFuIGFycmF5Jyk7XG5cbiAgICBzdHlsZXMucHVzaCguLi5zdHlsZVVybHMubWFwKHN0eWxlVXJsID0+IGxvYWRlci5nZXQoc3R5bGVVcmwpKSk7XG4gICAgaWYgKHN0eWxlcy5sZW5ndGggPiAwKSB7XG4gICAgICBhcmdbJ3N0eWxlcyddID0gc3R5bGVzO1xuICAgICAgZGVsZXRlIGFyZ1snc3R5bGVVcmxzJ107XG4gICAgfVxuXG4gICAgcmV0dXJuIGFyZztcbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0SW5saW5lUmVzb3VyY2VzVHJhbnNmb3JtRmFjdG9yeShcbiAgICBwcm9ncmFtOiB0cy5Qcm9ncmFtLCBob3N0OiBSZXNvdXJjZXNIb3N0KTogdHMuVHJhbnNmb3JtZXJGYWN0b3J5PHRzLlNvdXJjZUZpbGU+IHtcbiAgcmV0dXJuIChjb250ZXh0OiB0cy5UcmFuc2Zvcm1hdGlvbkNvbnRleHQpID0+IChzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlKSA9PiB7XG4gICAgY29uc3QgbG9hZGVyID0gZ2V0UmVzb3VyY2VMb2FkZXIoaG9zdCwgc291cmNlRmlsZS5maWxlTmFtZSk7XG4gICAgY29uc3QgdmlzaXRvcjogdHMuVmlzaXRvciA9IG5vZGUgPT4ge1xuICAgICAgLy8gQ29tcG9uZW50cyBhcmUgYWx3YXlzIGNsYXNzZXM7IHNraXAgYW55IG90aGVyIG5vZGVcbiAgICAgIGlmICghdHMuaXNDbGFzc0RlY2xhcmF0aW9uKG5vZGUpKSB7XG4gICAgICAgIHJldHVybiBub2RlO1xuICAgICAgfVxuXG4gICAgICAvLyBEZWNvcmF0b3IgY2FzZSAtIGJlZm9yZSBvciB3aXRob3V0IGRlY29yYXRvciBkb3dubGV2ZWxpbmdcbiAgICAgIC8vIEBDb21wb25lbnQoKVxuICAgICAgY29uc3QgbmV3RGVjb3JhdG9ycyA9IHRzLnZpc2l0Tm9kZXMobm9kZS5kZWNvcmF0b3JzLCAobm9kZTogdHMuTm9kZSkgPT4ge1xuICAgICAgICBpZiAodHMuaXNEZWNvcmF0b3Iobm9kZSkgJiYgaXNDb21wb25lbnREZWNvcmF0b3Iobm9kZSwgcHJvZ3JhbS5nZXRUeXBlQ2hlY2tlcigpKSkge1xuICAgICAgICAgIHJldHVybiB1cGRhdGVEZWNvcmF0b3Iobm9kZSwgbG9hZGVyKTtcbiAgICAgICAgfVxuICAgICAgICByZXR1cm4gbm9kZTtcbiAgICAgIH0pO1xuXG4gICAgICAvLyBBbm5vdGF0aW9uIGNhc2UgLSBhZnRlciBkZWNvcmF0b3IgZG93bmxldmVsaW5nXG4gICAgICAvLyBzdGF0aWMgZGVjb3JhdG9yczoge3R5cGU6IEZ1bmN0aW9uLCBhcmdzPzogYW55W119W11cbiAgICAgIGNvbnN0IG5ld01lbWJlcnMgPSB0cy52aXNpdE5vZGVzKG5vZGUubWVtYmVycywgKG5vZGU6IHRzLk5vZGUpID0+IHtcbiAgICAgICAgaWYgKHRzLmlzQ2xhc3NFbGVtZW50KG5vZGUpKSB7XG4gICAgICAgICAgcmV0dXJuIHVwZGF0ZUFubm90YXRpb25zKG5vZGUsIGxvYWRlciwgcHJvZ3JhbS5nZXRUeXBlQ2hlY2tlcigpKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICByZXR1cm4gbm9kZTtcbiAgICAgICAgfVxuICAgICAgfSk7XG5cbiAgICAgIC8vIENyZWF0ZSBhIG5ldyBBU1Qgc3VidHJlZSB3aXRoIG91ciBtb2RpZmljYXRpb25zXG4gICAgICByZXR1cm4gdHMudXBkYXRlQ2xhc3NEZWNsYXJhdGlvbihcbiAgICAgICAgICBub2RlLCBuZXdEZWNvcmF0b3JzLCBub2RlLm1vZGlmaWVycywgbm9kZS5uYW1lLCBub2RlLnR5cGVQYXJhbWV0ZXJzLFxuICAgICAgICAgIG5vZGUuaGVyaXRhZ2VDbGF1c2VzIHx8IFtdLCBuZXdNZW1iZXJzKTtcbiAgICB9O1xuXG4gICAgcmV0dXJuIHRzLnZpc2l0RWFjaENoaWxkKHNvdXJjZUZpbGUsIHZpc2l0b3IsIGNvbnRleHQpO1xuICB9O1xufVxuXG4vKipcbiAqIFVwZGF0ZSBhIERlY29yYXRvciBBU1Qgbm9kZSB0byBpbmxpbmUgdGhlIHJlc291cmNlc1xuICogQHBhcmFtIG5vZGUgdGhlIEBDb21wb25lbnQgZGVjb3JhdG9yXG4gKiBAcGFyYW0gbG9hZGVyIHByb3ZpZGVzIGFjY2VzcyB0byBsb2FkIHJlc291cmNlc1xuICovXG5mdW5jdGlvbiB1cGRhdGVEZWNvcmF0b3Iobm9kZTogdHMuRGVjb3JhdG9yLCBsb2FkZXI6IFN0YXRpY1Jlc291cmNlTG9hZGVyKTogdHMuRGVjb3JhdG9yIHtcbiAgaWYgKCF0cy5pc0NhbGxFeHByZXNzaW9uKG5vZGUuZXhwcmVzc2lvbikpIHtcbiAgICAvLyBVc2VyIHdpbGwgZ2V0IGFuIGVycm9yIHNvbWV3aGVyZSBlbHNlIHdpdGggYmFyZSBAQ29tcG9uZW50XG4gICAgcmV0dXJuIG5vZGU7XG4gIH1cbiAgY29uc3QgZXhwciA9IG5vZGUuZXhwcmVzc2lvbjtcbiAgY29uc3QgbmV3QXJndW1lbnRzID0gdXBkYXRlQ29tcG9uZW50UHJvcGVydGllcyhleHByLmFyZ3VtZW50cywgbG9hZGVyKTtcbiAgcmV0dXJuIHRzLnVwZGF0ZURlY29yYXRvcihcbiAgICAgIG5vZGUsIHRzLnVwZGF0ZUNhbGwoZXhwciwgZXhwci5leHByZXNzaW9uLCBleHByLnR5cGVBcmd1bWVudHMsIG5ld0FyZ3VtZW50cykpO1xufVxuXG4vKipcbiAqIFVwZGF0ZSBhbiBBbm5vdGF0aW9ucyBBU1Qgbm9kZSB0byBpbmxpbmUgdGhlIHJlc291cmNlc1xuICogQHBhcmFtIG5vZGUgdGhlIHN0YXRpYyBkZWNvcmF0b3JzIHByb3BlcnR5XG4gKiBAcGFyYW0gbG9hZGVyIHByb3ZpZGVzIGFjY2VzcyB0byBsb2FkIHJlc291cmNlc1xuICogQHBhcmFtIHR5cGVDaGVja2VyIHByb3ZpZGVzIGFjY2VzcyB0byBzeW1ib2wgdGFibGVcbiAqL1xuZnVuY3Rpb24gdXBkYXRlQW5ub3RhdGlvbnMoXG4gICAgbm9kZTogdHMuQ2xhc3NFbGVtZW50LCBsb2FkZXI6IFN0YXRpY1Jlc291cmNlTG9hZGVyLFxuICAgIHR5cGVDaGVja2VyOiB0cy5UeXBlQ2hlY2tlcik6IHRzLkNsYXNzRWxlbWVudCB7XG4gIC8vIExvb2tpbmcgZm9yIGEgbWVtYmVyIG9mIHRoaXMgc2hhcGU6XG4gIC8vIFByb3BlcnR5RGVjbGFyYXRpb24gY2FsbGVkIGRlY29yYXRvcnMsIHdpdGggc3RhdGljIG1vZGlmaWVyXG4gIC8vIEluaXRpYWxpemVyIGlzIEFycmF5TGl0ZXJhbEV4cHJlc3Npb25cbiAgLy8gT25lIGVsZW1lbnQgaXMgdGhlIENvbXBvbmVudCB0eXBlLCBpdHMgaW5pdGlhbGl6ZXIgaXMgdGhlIEBhbmd1bGFyL2NvcmUgQ29tcG9uZW50IHN5bWJvbFxuICAvLyBPbmUgZWxlbWVudCBpcyB0aGUgY29tcG9uZW50IGFyZ3MsIGl0cyBpbml0aWFsaXplciBpcyB0aGUgQ29tcG9uZW50IGFyZ3VtZW50cyB0byBjaGFuZ2VcbiAgLy8gZS5nLlxuICAvLyAgIHN0YXRpYyBkZWNvcmF0b3JzOiB7dHlwZTogRnVuY3Rpb24sIGFyZ3M/OiBhbnlbXX1bXSA9XG4gIC8vICAgW3tcbiAgLy8gICAgIHR5cGU6IENvbXBvbmVudCxcbiAgLy8gICAgIGFyZ3M6IFt7XG4gIC8vICAgICAgIHRlbXBsYXRlVXJsOiAnLi9teS5jb21wb25lbnQuaHRtbCcsXG4gIC8vICAgICAgIHN0eWxlVXJsczogWycuL215LmNvbXBvbmVudC5jc3MnXSxcbiAgLy8gICAgIH1dLFxuICAvLyAgIH1dO1xuICBpZiAoIXRzLmlzUHJvcGVydHlEZWNsYXJhdGlvbihub2RlKSB8fCAgLy8gdHMuTW9kaWZpZXJGbGFncy5TdGF0aWMgJiZcbiAgICAgICF0cy5pc0lkZW50aWZpZXIobm9kZS5uYW1lKSB8fCBub2RlLm5hbWUudGV4dCAhPT0gJ2RlY29yYXRvcnMnIHx8ICFub2RlLmluaXRpYWxpemVyIHx8XG4gICAgICAhdHMuaXNBcnJheUxpdGVyYWxFeHByZXNzaW9uKG5vZGUuaW5pdGlhbGl6ZXIpKSB7XG4gICAgcmV0dXJuIG5vZGU7XG4gIH1cblxuICBjb25zdCBuZXdBbm5vdGF0aW9ucyA9IG5vZGUuaW5pdGlhbGl6ZXIuZWxlbWVudHMubWFwKGFubm90YXRpb24gPT4ge1xuICAgIC8vIE5vLW9wIGlmIHRoZXJlJ3MgYSBub24tb2JqZWN0LWxpdGVyYWwgbWl4ZWQgaW4gdGhlIGRlY29yYXRvcnMgdmFsdWVzXG4gICAgaWYgKCF0cy5pc09iamVjdExpdGVyYWxFeHByZXNzaW9uKGFubm90YXRpb24pKSByZXR1cm4gYW5ub3RhdGlvbjtcblxuICAgIGNvbnN0IGRlY29yYXRvclR5cGUgPSBhbm5vdGF0aW9uLnByb3BlcnRpZXMuZmluZChwID0+IGlzSWRlbnRpZmllck5hbWVkKHAsICd0eXBlJykpO1xuXG4gICAgLy8gTm8tb3AgaWYgdGhlcmUncyBubyAndHlwZScgcHJvcGVydHksIG9yIGlmIGl0J3Mgbm90IGluaXRpYWxpemVkIHRvIHRoZSBDb21wb25lbnQgc3ltYm9sXG4gICAgaWYgKCFkZWNvcmF0b3JUeXBlIHx8ICF0cy5pc1Byb3BlcnR5QXNzaWdubWVudChkZWNvcmF0b3JUeXBlKSB8fFxuICAgICAgICAhdHMuaXNJZGVudGlmaWVyKGRlY29yYXRvclR5cGUuaW5pdGlhbGl6ZXIpIHx8XG4gICAgICAgICFpc0NvbXBvbmVudFN5bWJvbChkZWNvcmF0b3JUeXBlLmluaXRpYWxpemVyLCB0eXBlQ2hlY2tlcikpIHtcbiAgICAgIHJldHVybiBhbm5vdGF0aW9uO1xuICAgIH1cblxuICAgIGNvbnN0IG5ld0Fubm90YXRpb24gPSBhbm5vdGF0aW9uLnByb3BlcnRpZXMubWFwKHByb3AgPT4ge1xuICAgICAgLy8gTm8tb3AgaWYgdGhpcyBpc24ndCB0aGUgJ2FyZ3MnIHByb3BlcnR5IG9yIGlmIGl0J3Mgbm90IGluaXRpYWxpemVkIHRvIGFuIGFycmF5XG4gICAgICBpZiAoIWlzSWRlbnRpZmllck5hbWVkKHByb3AsICdhcmdzJykgfHwgIXRzLmlzUHJvcGVydHlBc3NpZ25tZW50KHByb3ApIHx8XG4gICAgICAgICAgIXRzLmlzQXJyYXlMaXRlcmFsRXhwcmVzc2lvbihwcm9wLmluaXRpYWxpemVyKSlcbiAgICAgICAgcmV0dXJuIHByb3A7XG5cbiAgICAgIGNvbnN0IG5ld0RlY29yYXRvckFyZ3MgPSB0cy51cGRhdGVQcm9wZXJ0eUFzc2lnbm1lbnQoXG4gICAgICAgICAgcHJvcCwgcHJvcC5uYW1lLFxuICAgICAgICAgIHRzLmNyZWF0ZUFycmF5TGl0ZXJhbCh1cGRhdGVDb21wb25lbnRQcm9wZXJ0aWVzKHByb3AuaW5pdGlhbGl6ZXIuZWxlbWVudHMsIGxvYWRlcikpKTtcblxuICAgICAgcmV0dXJuIG5ld0RlY29yYXRvckFyZ3M7XG4gICAgfSk7XG5cbiAgICByZXR1cm4gdHMudXBkYXRlT2JqZWN0TGl0ZXJhbChhbm5vdGF0aW9uLCBuZXdBbm5vdGF0aW9uKTtcbiAgfSk7XG5cbiAgcmV0dXJuIHRzLnVwZGF0ZVByb3BlcnR5KFxuICAgICAgbm9kZSwgbm9kZS5kZWNvcmF0b3JzLCBub2RlLm1vZGlmaWVycywgbm9kZS5uYW1lLCBub2RlLnF1ZXN0aW9uVG9rZW4sIG5vZGUudHlwZSxcbiAgICAgIHRzLnVwZGF0ZUFycmF5TGl0ZXJhbChub2RlLmluaXRpYWxpemVyLCBuZXdBbm5vdGF0aW9ucykpO1xufVxuXG5mdW5jdGlvbiBpc0lkZW50aWZpZXJOYW1lZChwOiB0cy5PYmplY3RMaXRlcmFsRWxlbWVudExpa2UsIG5hbWU6IHN0cmluZyk6IGJvb2xlYW4ge1xuICByZXR1cm4gISFwLm5hbWUgJiYgdHMuaXNJZGVudGlmaWVyKHAubmFtZSkgJiYgcC5uYW1lLnRleHQgPT09IG5hbWU7XG59XG5cbi8qKlxuICogQ2hlY2sgdGhhdCB0aGUgbm9kZSB3ZSBhcmUgdmlzaXRpbmcgaXMgdGhlIGFjdHVhbCBDb21wb25lbnQgZGVjb3JhdG9yIGRlZmluZWQgaW4gQGFuZ3VsYXIvY29yZS5cbiAqL1xuZnVuY3Rpb24gaXNDb21wb25lbnREZWNvcmF0b3Iobm9kZTogdHMuRGVjb3JhdG9yLCB0eXBlQ2hlY2tlcjogdHMuVHlwZUNoZWNrZXIpOiBib29sZWFuIHtcbiAgaWYgKCF0cy5pc0NhbGxFeHByZXNzaW9uKG5vZGUuZXhwcmVzc2lvbikpIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cbiAgY29uc3QgY2FsbEV4cHIgPSBub2RlLmV4cHJlc3Npb247XG5cbiAgbGV0IGlkZW50aWZpZXI6IHRzLk5vZGU7XG5cbiAgaWYgKHRzLmlzSWRlbnRpZmllcihjYWxsRXhwci5leHByZXNzaW9uKSkge1xuICAgIGlkZW50aWZpZXIgPSBjYWxsRXhwci5leHByZXNzaW9uO1xuICB9IGVsc2Uge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuICByZXR1cm4gaXNDb21wb25lbnRTeW1ib2woaWRlbnRpZmllciwgdHlwZUNoZWNrZXIpO1xufVxuXG5mdW5jdGlvbiBpc0NvbXBvbmVudFN5bWJvbChpZGVudGlmaWVyOiB0cy5Ob2RlLCB0eXBlQ2hlY2tlcjogdHMuVHlwZUNoZWNrZXIpIHtcbiAgLy8gT25seSBoYW5kbGUgaWRlbnRpZmllcnMsIG5vdCBleHByZXNzaW9uc1xuICBpZiAoIXRzLmlzSWRlbnRpZmllcihpZGVudGlmaWVyKSkgcmV0dXJuIGZhbHNlO1xuXG4gIC8vIE5PVEU6IHJlc29sdmVyLmdldFJlZmVyZW5jZWRJbXBvcnREZWNsYXJhdGlvbiB3b3VsZCB3b3JrIGFzIHdlbGwgYnV0IGlzIGludGVybmFsXG4gIGNvbnN0IHN5bWJvbCA9IHR5cGVDaGVja2VyLmdldFN5bWJvbEF0TG9jYXRpb24oaWRlbnRpZmllcik7XG5cbiAgaWYgKCFzeW1ib2wgfHwgIXN5bWJvbC5kZWNsYXJhdGlvbnMgfHwgIXN5bWJvbC5kZWNsYXJhdGlvbnMubGVuZ3RoKSB7XG4gICAgY29uc29sZS5lcnJvcihcbiAgICAgICAgYFVuYWJsZSB0byByZXNvbHZlIHN5bWJvbCAnJHtpZGVudGlmaWVyLnRleHR9JyBpbiB0aGUgcHJvZ3JhbSwgZG9lcyBpdCB0eXBlLWNoZWNrP2ApO1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIGNvbnN0IGRlY2xhcmF0aW9uID0gc3ltYm9sLmRlY2xhcmF0aW9uc1swXTtcblxuICBpZiAoIWRlY2xhcmF0aW9uIHx8ICF0cy5pc0ltcG9ydFNwZWNpZmllcihkZWNsYXJhdGlvbikpIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cblxuICBjb25zdCBuYW1lID0gKGRlY2xhcmF0aW9uLnByb3BlcnR5TmFtZSB8fCBkZWNsYXJhdGlvbi5uYW1lKS50ZXh0O1xuICAvLyBXZSBrbm93IHRoYXQgcGFyZW50IHBvaW50ZXJzIGFyZSBzZXQgYmVjYXVzZSB3ZSBjcmVhdGVkIHRoZSBTb3VyY2VGaWxlIG91cnNlbHZlcy5cbiAgLy8gVGhlIG51bWJlciBvZiBwYXJlbnQgcmVmZXJlbmNlcyBoZXJlIG1hdGNoIHRoZSByZWN1cnNpb24gZGVwdGggYXQgdGhpcyBwb2ludC5cbiAgY29uc3QgbW9kdWxlSWQgPSAoZGVjbGFyYXRpb24ucGFyZW50IS5wYXJlbnQhLnBhcmVudCEubW9kdWxlU3BlY2lmaWVyIGFzIHRzLlN0cmluZ0xpdGVyYWwpLnRleHQ7XG4gIHJldHVybiBtb2R1bGVJZCA9PT0gJ0Bhbmd1bGFyL2NvcmUnICYmIG5hbWUgPT09ICdDb21wb25lbnQnO1xufVxuXG4vKipcbiAqIEZvciBlYWNoIHByb3BlcnR5IGluIHRoZSBvYmplY3QgbGl0ZXJhbCwgaWYgaXQncyB0ZW1wbGF0ZVVybCBvciBzdHlsZVVybHMsIHJlcGxhY2UgaXRcbiAqIHdpdGggY29udGVudC5cbiAqIEBwYXJhbSBub2RlIHRoZSBhcmd1bWVudHMgdG8gQENvbXBvbmVudCgpIG9yIGFyZ3MgcHJvcGVydHkgb2YgZGVjb3JhdG9yczogW3t0eXBlOkNvbXBvbmVudH1dXG4gKiBAcGFyYW0gbG9hZGVyIHByb3ZpZGVzIGFjY2VzcyB0byB0aGUgbG9hZFJlc291cmNlIG1ldGhvZCBvZiB0aGUgaG9zdFxuICogQHJldHVybnMgdXBkYXRlZCBhcmd1bWVudHNcbiAqL1xuZnVuY3Rpb24gdXBkYXRlQ29tcG9uZW50UHJvcGVydGllcyhcbiAgICBhcmdzOiB0cy5Ob2RlQXJyYXk8dHMuRXhwcmVzc2lvbj4sIGxvYWRlcjogU3RhdGljUmVzb3VyY2VMb2FkZXIpOiB0cy5Ob2RlQXJyYXk8dHMuRXhwcmVzc2lvbj4ge1xuICBpZiAoYXJncy5sZW5ndGggIT09IDEpIHtcbiAgICAvLyBVc2VyIHNob3VsZCBoYXZlIGdvdHRlbiBhIHR5cGUtY2hlY2sgZXJyb3IgYmVjYXVzZSBAQ29tcG9uZW50IHRha2VzIG9uZSBhcmd1bWVudFxuICAgIHJldHVybiBhcmdzO1xuICB9XG4gIGNvbnN0IGNvbXBvbmVudEFyZyA9IGFyZ3NbMF07XG4gIGlmICghdHMuaXNPYmplY3RMaXRlcmFsRXhwcmVzc2lvbihjb21wb25lbnRBcmcpKSB7XG4gICAgLy8gVXNlciBzaG91bGQgaGF2ZSBnb3R0ZW4gYSB0eXBlLWNoZWNrIGVycm9yIGJlY2F1c2UgQENvbXBvbmVudCB0YWtlcyBhbiBvYmplY3QgbGl0ZXJhbFxuICAgIC8vIGFyZ3VtZW50XG4gICAgcmV0dXJuIGFyZ3M7XG4gIH1cblxuICBjb25zdCBuZXdQcm9wZXJ0aWVzOiB0cy5PYmplY3RMaXRlcmFsRWxlbWVudExpa2VbXSA9IFtdO1xuICBjb25zdCBuZXdTdHlsZUV4cHJzOiB0cy5FeHByZXNzaW9uW10gPSBbXTtcbiAgY29tcG9uZW50QXJnLnByb3BlcnRpZXMuZm9yRWFjaChwcm9wID0+IHtcbiAgICBpZiAoIXRzLmlzUHJvcGVydHlBc3NpZ25tZW50KHByb3ApIHx8IHRzLmlzQ29tcHV0ZWRQcm9wZXJ0eU5hbWUocHJvcC5uYW1lKSkge1xuICAgICAgbmV3UHJvcGVydGllcy5wdXNoKHByb3ApO1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIHN3aXRjaCAocHJvcC5uYW1lLnRleHQpIHtcbiAgICAgIGNhc2UgJ3N0eWxlcyc6XG4gICAgICAgIGlmICghdHMuaXNBcnJheUxpdGVyYWxFeHByZXNzaW9uKHByb3AuaW5pdGlhbGl6ZXIpKSB7XG4gICAgICAgICAgdGhyb3cgbmV3IEVycm9yKCdzdHlsZXMgdGFrZXMgYW4gYXJyYXkgYXJndW1lbnQnKTtcbiAgICAgICAgfVxuICAgICAgICBuZXdTdHlsZUV4cHJzLnB1c2goLi4ucHJvcC5pbml0aWFsaXplci5lbGVtZW50cyk7XG4gICAgICAgIGJyZWFrO1xuXG4gICAgICBjYXNlICdzdHlsZVVybHMnOlxuICAgICAgICBpZiAoIXRzLmlzQXJyYXlMaXRlcmFsRXhwcmVzc2lvbihwcm9wLmluaXRpYWxpemVyKSkge1xuICAgICAgICAgIHRocm93IG5ldyBFcnJvcignc3R5bGVVcmxzIHRha2VzIGFuIGFycmF5IGFyZ3VtZW50Jyk7XG4gICAgICAgIH1cbiAgICAgICAgbmV3U3R5bGVFeHBycy5wdXNoKC4uLnByb3AuaW5pdGlhbGl6ZXIuZWxlbWVudHMubWFwKChleHByOiB0cy5FeHByZXNzaW9uKSA9PiB7XG4gICAgICAgICAgaWYgKCF0cy5pc1N0cmluZ0xpdGVyYWwoZXhwcikgJiYgIXRzLmlzTm9TdWJzdGl0dXRpb25UZW1wbGF0ZUxpdGVyYWwoZXhwcikpIHtcbiAgICAgICAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICAgICAgICAnQ2FuIG9ubHkgYWNjZXB0IHN0cmluZyBsaXRlcmFsIGFyZ3VtZW50cyB0byBzdHlsZVVybHMuICcgKyBQUkVDT05ESVRJT05TX1RFWFQpO1xuICAgICAgICAgIH1cbiAgICAgICAgICBjb25zdCBzdHlsZXMgPSBsb2FkZXIuZ2V0KGV4cHIudGV4dCk7XG4gICAgICAgICAgcmV0dXJuIHRzLmNyZWF0ZUxpdGVyYWwoc3R5bGVzKTtcbiAgICAgICAgfSkpO1xuICAgICAgICBicmVhaztcblxuICAgICAgY2FzZSAndGVtcGxhdGVVcmwnOlxuICAgICAgICBpZiAoIXRzLmlzU3RyaW5nTGl0ZXJhbChwcm9wLmluaXRpYWxpemVyKSAmJlxuICAgICAgICAgICAgIXRzLmlzTm9TdWJzdGl0dXRpb25UZW1wbGF0ZUxpdGVyYWwocHJvcC5pbml0aWFsaXplcikpIHtcbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoXG4gICAgICAgICAgICAgICdDYW4gb25seSBhY2NlcHQgYSBzdHJpbmcgbGl0ZXJhbCBhcmd1bWVudCB0byB0ZW1wbGF0ZVVybC4gJyArIFBSRUNPTkRJVElPTlNfVEVYVCk7XG4gICAgICAgIH1cbiAgICAgICAgY29uc3QgdGVtcGxhdGUgPSBsb2FkZXIuZ2V0KHByb3AuaW5pdGlhbGl6ZXIudGV4dCk7XG4gICAgICAgIG5ld1Byb3BlcnRpZXMucHVzaCh0cy51cGRhdGVQcm9wZXJ0eUFzc2lnbm1lbnQoXG4gICAgICAgICAgICBwcm9wLCB0cy5jcmVhdGVJZGVudGlmaWVyKCd0ZW1wbGF0ZScpLCB0cy5jcmVhdGVMaXRlcmFsKHRlbXBsYXRlKSkpO1xuICAgICAgICBicmVhaztcblxuICAgICAgZGVmYXVsdDpcbiAgICAgICAgbmV3UHJvcGVydGllcy5wdXNoKHByb3ApO1xuICAgIH1cbiAgfSk7XG5cbiAgLy8gQWRkIHRoZSBub24taW5saW5lIHN0eWxlc1xuICBpZiAobmV3U3R5bGVFeHBycy5sZW5ndGggPiAwKSB7XG4gICAgY29uc3QgbmV3U3R5bGVzID0gdHMuY3JlYXRlUHJvcGVydHlBc3NpZ25tZW50KFxuICAgICAgICB0cy5jcmVhdGVJZGVudGlmaWVyKCdzdHlsZXMnKSwgdHMuY3JlYXRlQXJyYXlMaXRlcmFsKG5ld1N0eWxlRXhwcnMpKTtcbiAgICBuZXdQcm9wZXJ0aWVzLnB1c2gobmV3U3R5bGVzKTtcbiAgfVxuXG4gIHJldHVybiB0cy5jcmVhdGVOb2RlQXJyYXkoW3RzLnVwZGF0ZU9iamVjdExpdGVyYWwoY29tcG9uZW50QXJnLCBuZXdQcm9wZXJ0aWVzKV0pO1xufVxuIl19