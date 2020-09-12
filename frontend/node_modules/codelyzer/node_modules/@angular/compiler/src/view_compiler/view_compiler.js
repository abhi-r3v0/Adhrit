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
        define("@angular/compiler/src/view_compiler/view_compiler", ["require", "exports", "tslib", "@angular/compiler/src/compile_metadata", "@angular/compiler/src/compiler_util/expression_converter", "@angular/compiler/src/core", "@angular/compiler/src/identifiers", "@angular/compiler/src/lifecycle_reflector", "@angular/compiler/src/ml_parser/tags", "@angular/compiler/src/output/output_ast", "@angular/compiler/src/output/value_util", "@angular/compiler/src/template_parser/template_ast", "@angular/compiler/src/view_compiler/provider_compiler"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    var compile_metadata_1 = require("@angular/compiler/src/compile_metadata");
    var expression_converter_1 = require("@angular/compiler/src/compiler_util/expression_converter");
    var core_1 = require("@angular/compiler/src/core");
    var identifiers_1 = require("@angular/compiler/src/identifiers");
    var lifecycle_reflector_1 = require("@angular/compiler/src/lifecycle_reflector");
    var tags_1 = require("@angular/compiler/src/ml_parser/tags");
    var o = require("@angular/compiler/src/output/output_ast");
    var value_util_1 = require("@angular/compiler/src/output/value_util");
    var template_ast_1 = require("@angular/compiler/src/template_parser/template_ast");
    var provider_compiler_1 = require("@angular/compiler/src/view_compiler/provider_compiler");
    var CLASS_ATTR = 'class';
    var STYLE_ATTR = 'style';
    var IMPLICIT_TEMPLATE_VAR = '\$implicit';
    var ViewCompileResult = /** @class */ (function () {
        function ViewCompileResult(viewClassVar, rendererTypeVar) {
            this.viewClassVar = viewClassVar;
            this.rendererTypeVar = rendererTypeVar;
        }
        return ViewCompileResult;
    }());
    exports.ViewCompileResult = ViewCompileResult;
    var ViewCompiler = /** @class */ (function () {
        function ViewCompiler(_reflector) {
            this._reflector = _reflector;
        }
        ViewCompiler.prototype.compileComponent = function (outputCtx, component, template, styles, usedPipes) {
            var _a;
            var _this = this;
            var embeddedViewCount = 0;
            var renderComponentVarName = undefined;
            if (!component.isHost) {
                var template_1 = component.template;
                var customRenderData = [];
                if (template_1.animations && template_1.animations.length) {
                    customRenderData.push(new o.LiteralMapEntry('animation', value_util_1.convertValueToOutputAst(outputCtx, template_1.animations), true));
                }
                var renderComponentVar = o.variable(compile_metadata_1.rendererTypeName(component.type.reference));
                renderComponentVarName = renderComponentVar.name;
                outputCtx.statements.push(renderComponentVar
                    .set(o.importExpr(identifiers_1.Identifiers.createRendererType2).callFn([new o.LiteralMapExpr([
                        new o.LiteralMapEntry('encapsulation', o.literal(template_1.encapsulation), false),
                        new o.LiteralMapEntry('styles', styles, false),
                        new o.LiteralMapEntry('data', new o.LiteralMapExpr(customRenderData), false)
                    ])]))
                    .toDeclStmt(o.importType(identifiers_1.Identifiers.RendererType2), [o.StmtModifier.Final, o.StmtModifier.Exported]));
            }
            var viewBuilderFactory = function (parent) {
                var embeddedViewIndex = embeddedViewCount++;
                return new ViewBuilder(_this._reflector, outputCtx, parent, component, embeddedViewIndex, usedPipes, viewBuilderFactory);
            };
            var visitor = viewBuilderFactory(null);
            visitor.visitAll([], template);
            (_a = outputCtx.statements).push.apply(_a, tslib_1.__spread(visitor.build()));
            return new ViewCompileResult(visitor.viewName, renderComponentVarName);
        };
        return ViewCompiler;
    }());
    exports.ViewCompiler = ViewCompiler;
    var LOG_VAR = o.variable('_l');
    var VIEW_VAR = o.variable('_v');
    var CHECK_VAR = o.variable('_ck');
    var COMP_VAR = o.variable('_co');
    var EVENT_NAME_VAR = o.variable('en');
    var ALLOW_DEFAULT_VAR = o.variable("ad");
    var ViewBuilder = /** @class */ (function () {
        function ViewBuilder(reflector, outputCtx, parent, component, embeddedViewIndex, usedPipes, viewBuilderFactory) {
            this.reflector = reflector;
            this.outputCtx = outputCtx;
            this.parent = parent;
            this.component = component;
            this.embeddedViewIndex = embeddedViewIndex;
            this.usedPipes = usedPipes;
            this.viewBuilderFactory = viewBuilderFactory;
            this.nodes = [];
            this.purePipeNodeIndices = Object.create(null);
            // Need Object.create so that we don't have builtin values...
            this.refNodeIndices = Object.create(null);
            this.variables = [];
            this.children = [];
            // TODO(tbosch): The old view compiler used to use an `any` type
            // for the context in any embedded view. We keep this behaivor for now
            // to be able to introduce the new view compiler without too many errors.
            this.compType = this.embeddedViewIndex > 0 ?
                o.DYNAMIC_TYPE :
                o.expressionType(outputCtx.importExpr(this.component.type.reference));
            this.viewName = compile_metadata_1.viewClassName(this.component.type.reference, this.embeddedViewIndex);
        }
        ViewBuilder.prototype.visitAll = function (variables, astNodes) {
            var _this = this;
            this.variables = variables;
            // create the pipes for the pure pipes immediately, so that we know their indices.
            if (!this.parent) {
                this.usedPipes.forEach(function (pipe) {
                    if (pipe.pure) {
                        _this.purePipeNodeIndices[pipe.name] = _this._createPipe(null, pipe);
                    }
                });
            }
            if (!this.parent) {
                this.component.viewQueries.forEach(function (query, queryIndex) {
                    // Note: queries start with id 1 so we can use the number in a Bloom filter!
                    var queryId = queryIndex + 1;
                    var bindingType = query.first ? 0 /* First */ : 1 /* All */;
                    var flags = 134217728 /* TypeViewQuery */ | calcStaticDynamicQueryFlags(query);
                    _this.nodes.push(function () { return ({
                        sourceSpan: null,
                        nodeFlags: flags,
                        nodeDef: o.importExpr(identifiers_1.Identifiers.queryDef).callFn([
                            o.literal(flags), o.literal(queryId),
                            new o.LiteralMapExpr([new o.LiteralMapEntry(query.propertyName, o.literal(bindingType), false)])
                        ])
                    }); });
                });
            }
            template_ast_1.templateVisitAll(this, astNodes);
            if (this.parent && (astNodes.length === 0 || needsAdditionalRootNode(astNodes))) {
                // if the view is an embedded view, then we need to add an additional root node in some cases
                this.nodes.push(function () { return ({
                    sourceSpan: null,
                    nodeFlags: 1 /* TypeElement */,
                    nodeDef: o.importExpr(identifiers_1.Identifiers.anchorDef).callFn([
                        o.literal(0 /* None */), o.NULL_EXPR, o.NULL_EXPR, o.literal(0)
                    ])
                }); });
            }
        };
        ViewBuilder.prototype.build = function (targetStatements) {
            if (targetStatements === void 0) { targetStatements = []; }
            this.children.forEach(function (child) { return child.build(targetStatements); });
            var _a = this._createNodeExpressions(), updateRendererStmts = _a.updateRendererStmts, updateDirectivesStmts = _a.updateDirectivesStmts, nodeDefExprs = _a.nodeDefExprs;
            var updateRendererFn = this._createUpdateFn(updateRendererStmts);
            var updateDirectivesFn = this._createUpdateFn(updateDirectivesStmts);
            var viewFlags = 0 /* None */;
            if (!this.parent && this.component.changeDetection === core_1.ChangeDetectionStrategy.OnPush) {
                viewFlags |= 2 /* OnPush */;
            }
            var viewFactory = new o.DeclareFunctionStmt(this.viewName, [new o.FnParam(LOG_VAR.name)], [new o.ReturnStatement(o.importExpr(identifiers_1.Identifiers.viewDef).callFn([
                    o.literal(viewFlags),
                    o.literalArr(nodeDefExprs),
                    updateDirectivesFn,
                    updateRendererFn,
                ]))], o.importType(identifiers_1.Identifiers.ViewDefinition), this.embeddedViewIndex === 0 ? [o.StmtModifier.Exported] : []);
            targetStatements.push(viewFactory);
            return targetStatements;
        };
        ViewBuilder.prototype._createUpdateFn = function (updateStmts) {
            var updateFn;
            if (updateStmts.length > 0) {
                var preStmts = [];
                if (!this.component.isHost && o.findReadVarNames(updateStmts).has(COMP_VAR.name)) {
                    preStmts.push(COMP_VAR.set(VIEW_VAR.prop('component')).toDeclStmt(this.compType));
                }
                updateFn = o.fn([
                    new o.FnParam(CHECK_VAR.name, o.INFERRED_TYPE),
                    new o.FnParam(VIEW_VAR.name, o.INFERRED_TYPE)
                ], tslib_1.__spread(preStmts, updateStmts), o.INFERRED_TYPE);
            }
            else {
                updateFn = o.NULL_EXPR;
            }
            return updateFn;
        };
        ViewBuilder.prototype.visitNgContent = function (ast, context) {
            // ngContentDef(ngContentIndex: number, index: number): NodeDef;
            this.nodes.push(function () { return ({
                sourceSpan: ast.sourceSpan,
                nodeFlags: 8 /* TypeNgContent */,
                nodeDef: o.importExpr(identifiers_1.Identifiers.ngContentDef).callFn([
                    o.literal(ast.ngContentIndex), o.literal(ast.index)
                ])
            }); });
        };
        ViewBuilder.prototype.visitText = function (ast, context) {
            // Static text nodes have no check function
            var checkIndex = -1;
            this.nodes.push(function () { return ({
                sourceSpan: ast.sourceSpan,
                nodeFlags: 2 /* TypeText */,
                nodeDef: o.importExpr(identifiers_1.Identifiers.textDef).callFn([
                    o.literal(checkIndex),
                    o.literal(ast.ngContentIndex),
                    o.literalArr([o.literal(ast.value)]),
                ])
            }); });
        };
        ViewBuilder.prototype.visitBoundText = function (ast, context) {
            var _this = this;
            var nodeIndex = this.nodes.length;
            // reserve the space in the nodeDefs array
            this.nodes.push(null);
            var astWithSource = ast.value;
            var inter = astWithSource.ast;
            var updateRendererExpressions = inter.expressions.map(function (expr, bindingIndex) { return _this._preprocessUpdateExpression({ nodeIndex: nodeIndex, bindingIndex: bindingIndex, sourceSpan: ast.sourceSpan, context: COMP_VAR, value: expr }); });
            // Check index is the same as the node index during compilation
            // They might only differ at runtime
            var checkIndex = nodeIndex;
            this.nodes[nodeIndex] = function () { return ({
                sourceSpan: ast.sourceSpan,
                nodeFlags: 2 /* TypeText */,
                nodeDef: o.importExpr(identifiers_1.Identifiers.textDef).callFn([
                    o.literal(checkIndex),
                    o.literal(ast.ngContentIndex),
                    o.literalArr(inter.strings.map(function (s) { return o.literal(s); })),
                ]),
                updateRenderer: updateRendererExpressions
            }); };
        };
        ViewBuilder.prototype.visitEmbeddedTemplate = function (ast, context) {
            var _this = this;
            var nodeIndex = this.nodes.length;
            // reserve the space in the nodeDefs array
            this.nodes.push(null);
            var _a = this._visitElementOrTemplate(nodeIndex, ast), flags = _a.flags, queryMatchesExpr = _a.queryMatchesExpr, hostEvents = _a.hostEvents;
            var childVisitor = this.viewBuilderFactory(this);
            this.children.push(childVisitor);
            childVisitor.visitAll(ast.variables, ast.children);
            var childCount = this.nodes.length - nodeIndex - 1;
            // anchorDef(
            //   flags: NodeFlags, matchedQueries: [string, QueryValueType][], ngContentIndex: number,
            //   childCount: number, handleEventFn?: ElementHandleEventFn, templateFactory?:
            //   ViewDefinitionFactory): NodeDef;
            this.nodes[nodeIndex] = function () { return ({
                sourceSpan: ast.sourceSpan,
                nodeFlags: 1 /* TypeElement */ | flags,
                nodeDef: o.importExpr(identifiers_1.Identifiers.anchorDef).callFn([
                    o.literal(flags),
                    queryMatchesExpr,
                    o.literal(ast.ngContentIndex),
                    o.literal(childCount),
                    _this._createElementHandleEventFn(nodeIndex, hostEvents),
                    o.variable(childVisitor.viewName),
                ])
            }); };
        };
        ViewBuilder.prototype.visitElement = function (ast, context) {
            var _this = this;
            var nodeIndex = this.nodes.length;
            // reserve the space in the nodeDefs array so we can add children
            this.nodes.push(null);
            // Using a null element name creates an anchor.
            var elName = tags_1.isNgContainer(ast.name) ? null : ast.name;
            var _a = this._visitElementOrTemplate(nodeIndex, ast), flags = _a.flags, usedEvents = _a.usedEvents, queryMatchesExpr = _a.queryMatchesExpr, dirHostBindings = _a.hostBindings, hostEvents = _a.hostEvents;
            var inputDefs = [];
            var updateRendererExpressions = [];
            var outputDefs = [];
            if (elName) {
                var hostBindings = ast.inputs
                    .map(function (inputAst) { return ({
                    context: COMP_VAR,
                    inputAst: inputAst,
                    dirAst: null,
                }); })
                    .concat(dirHostBindings);
                if (hostBindings.length) {
                    updateRendererExpressions =
                        hostBindings.map(function (hostBinding, bindingIndex) { return _this._preprocessUpdateExpression({
                            context: hostBinding.context,
                            nodeIndex: nodeIndex,
                            bindingIndex: bindingIndex,
                            sourceSpan: hostBinding.inputAst.sourceSpan,
                            value: hostBinding.inputAst.value
                        }); });
                    inputDefs = hostBindings.map(function (hostBinding) { return elementBindingDef(hostBinding.inputAst, hostBinding.dirAst); });
                }
                outputDefs = usedEvents.map(function (_a) {
                    var _b = tslib_1.__read(_a, 2), target = _b[0], eventName = _b[1];
                    return o.literalArr([o.literal(target), o.literal(eventName)]);
                });
            }
            template_ast_1.templateVisitAll(this, ast.children);
            var childCount = this.nodes.length - nodeIndex - 1;
            var compAst = ast.directives.find(function (dirAst) { return dirAst.directive.isComponent; });
            var compRendererType = o.NULL_EXPR;
            var compView = o.NULL_EXPR;
            if (compAst) {
                compView = this.outputCtx.importExpr(compAst.directive.componentViewType);
                compRendererType = this.outputCtx.importExpr(compAst.directive.rendererType);
            }
            // Check index is the same as the node index during compilation
            // They might only differ at runtime
            var checkIndex = nodeIndex;
            this.nodes[nodeIndex] = function () { return ({
                sourceSpan: ast.sourceSpan,
                nodeFlags: 1 /* TypeElement */ | flags,
                nodeDef: o.importExpr(identifiers_1.Identifiers.elementDef).callFn([
                    o.literal(checkIndex),
                    o.literal(flags),
                    queryMatchesExpr,
                    o.literal(ast.ngContentIndex),
                    o.literal(childCount),
                    o.literal(elName),
                    elName ? fixedAttrsDef(ast) : o.NULL_EXPR,
                    inputDefs.length ? o.literalArr(inputDefs) : o.NULL_EXPR,
                    outputDefs.length ? o.literalArr(outputDefs) : o.NULL_EXPR,
                    _this._createElementHandleEventFn(nodeIndex, hostEvents),
                    compView,
                    compRendererType,
                ]),
                updateRenderer: updateRendererExpressions
            }); };
        };
        ViewBuilder.prototype._visitElementOrTemplate = function (nodeIndex, ast) {
            var _this = this;
            var flags = 0 /* None */;
            if (ast.hasViewContainer) {
                flags |= 16777216 /* EmbeddedViews */;
            }
            var usedEvents = new Map();
            ast.outputs.forEach(function (event) {
                var _a = elementEventNameAndTarget(event, null), name = _a.name, target = _a.target;
                usedEvents.set(elementEventFullName(target, name), [target, name]);
            });
            ast.directives.forEach(function (dirAst) {
                dirAst.hostEvents.forEach(function (event) {
                    var _a = elementEventNameAndTarget(event, dirAst), name = _a.name, target = _a.target;
                    usedEvents.set(elementEventFullName(target, name), [target, name]);
                });
            });
            var hostBindings = [];
            var hostEvents = [];
            this._visitComponentFactoryResolverProvider(ast.directives);
            ast.providers.forEach(function (providerAst) {
                var dirAst = undefined;
                ast.directives.forEach(function (localDirAst) {
                    if (localDirAst.directive.type.reference === compile_metadata_1.tokenReference(providerAst.token)) {
                        dirAst = localDirAst;
                    }
                });
                if (dirAst) {
                    var _a = _this._visitDirective(providerAst, dirAst, ast.references, ast.queryMatches, usedEvents), dirHostBindings = _a.hostBindings, dirHostEvents = _a.hostEvents;
                    hostBindings.push.apply(hostBindings, tslib_1.__spread(dirHostBindings));
                    hostEvents.push.apply(hostEvents, tslib_1.__spread(dirHostEvents));
                }
                else {
                    _this._visitProvider(providerAst, ast.queryMatches);
                }
            });
            var queryMatchExprs = [];
            ast.queryMatches.forEach(function (match) {
                var valueType = undefined;
                if (compile_metadata_1.tokenReference(match.value) ===
                    _this.reflector.resolveExternalReference(identifiers_1.Identifiers.ElementRef)) {
                    valueType = 0 /* ElementRef */;
                }
                else if (compile_metadata_1.tokenReference(match.value) ===
                    _this.reflector.resolveExternalReference(identifiers_1.Identifiers.ViewContainerRef)) {
                    valueType = 3 /* ViewContainerRef */;
                }
                else if (compile_metadata_1.tokenReference(match.value) ===
                    _this.reflector.resolveExternalReference(identifiers_1.Identifiers.TemplateRef)) {
                    valueType = 2 /* TemplateRef */;
                }
                if (valueType != null) {
                    queryMatchExprs.push(o.literalArr([o.literal(match.queryId), o.literal(valueType)]));
                }
            });
            ast.references.forEach(function (ref) {
                var valueType = undefined;
                if (!ref.value) {
                    valueType = 1 /* RenderElement */;
                }
                else if (compile_metadata_1.tokenReference(ref.value) ===
                    _this.reflector.resolveExternalReference(identifiers_1.Identifiers.TemplateRef)) {
                    valueType = 2 /* TemplateRef */;
                }
                if (valueType != null) {
                    _this.refNodeIndices[ref.name] = nodeIndex;
                    queryMatchExprs.push(o.literalArr([o.literal(ref.name), o.literal(valueType)]));
                }
            });
            ast.outputs.forEach(function (outputAst) {
                hostEvents.push({ context: COMP_VAR, eventAst: outputAst, dirAst: null });
            });
            return {
                flags: flags,
                usedEvents: Array.from(usedEvents.values()),
                queryMatchesExpr: queryMatchExprs.length ? o.literalArr(queryMatchExprs) : o.NULL_EXPR,
                hostBindings: hostBindings,
                hostEvents: hostEvents
            };
        };
        ViewBuilder.prototype._visitDirective = function (providerAst, dirAst, refs, queryMatches, usedEvents) {
            var _this = this;
            var nodeIndex = this.nodes.length;
            // reserve the space in the nodeDefs array so we can add children
            this.nodes.push(null);
            dirAst.directive.queries.forEach(function (query, queryIndex) {
                var queryId = dirAst.contentQueryStartId + queryIndex;
                var flags = 67108864 /* TypeContentQuery */ | calcStaticDynamicQueryFlags(query);
                var bindingType = query.first ? 0 /* First */ : 1 /* All */;
                _this.nodes.push(function () { return ({
                    sourceSpan: dirAst.sourceSpan,
                    nodeFlags: flags,
                    nodeDef: o.importExpr(identifiers_1.Identifiers.queryDef).callFn([
                        o.literal(flags), o.literal(queryId),
                        new o.LiteralMapExpr([new o.LiteralMapEntry(query.propertyName, o.literal(bindingType), false)])
                    ]),
                }); });
            });
            // Note: the operation below might also create new nodeDefs,
            // but we don't want them to be a child of a directive,
            // as they might be a provider/pipe on their own.
            // I.e. we only allow queries as children of directives nodes.
            var childCount = this.nodes.length - nodeIndex - 1;
            var _a = this._visitProviderOrDirective(providerAst, queryMatches), flags = _a.flags, queryMatchExprs = _a.queryMatchExprs, providerExpr = _a.providerExpr, depsExpr = _a.depsExpr;
            refs.forEach(function (ref) {
                if (ref.value && compile_metadata_1.tokenReference(ref.value) === compile_metadata_1.tokenReference(providerAst.token)) {
                    _this.refNodeIndices[ref.name] = nodeIndex;
                    queryMatchExprs.push(o.literalArr([o.literal(ref.name), o.literal(4 /* Provider */)]));
                }
            });
            if (dirAst.directive.isComponent) {
                flags |= 32768 /* Component */;
            }
            var inputDefs = dirAst.inputs.map(function (inputAst, inputIndex) {
                var mapValue = o.literalArr([o.literal(inputIndex), o.literal(inputAst.directiveName)]);
                // Note: it's important to not quote the key so that we can capture renames by minifiers!
                return new o.LiteralMapEntry(inputAst.directiveName, mapValue, false);
            });
            var outputDefs = [];
            var dirMeta = dirAst.directive;
            Object.keys(dirMeta.outputs).forEach(function (propName) {
                var eventName = dirMeta.outputs[propName];
                if (usedEvents.has(eventName)) {
                    // Note: it's important to not quote the key so that we can capture renames by minifiers!
                    outputDefs.push(new o.LiteralMapEntry(propName, o.literal(eventName), false));
                }
            });
            var updateDirectiveExpressions = [];
            if (dirAst.inputs.length || (flags & (262144 /* DoCheck */ | 65536 /* OnInit */)) > 0) {
                updateDirectiveExpressions =
                    dirAst.inputs.map(function (input, bindingIndex) { return _this._preprocessUpdateExpression({
                        nodeIndex: nodeIndex,
                        bindingIndex: bindingIndex,
                        sourceSpan: input.sourceSpan,
                        context: COMP_VAR,
                        value: input.value
                    }); });
            }
            var dirContextExpr = o.importExpr(identifiers_1.Identifiers.nodeValue).callFn([VIEW_VAR, o.literal(nodeIndex)]);
            var hostBindings = dirAst.hostProperties.map(function (inputAst) { return ({
                context: dirContextExpr,
                dirAst: dirAst,
                inputAst: inputAst,
            }); });
            var hostEvents = dirAst.hostEvents.map(function (hostEventAst) { return ({
                context: dirContextExpr,
                eventAst: hostEventAst, dirAst: dirAst,
            }); });
            // Check index is the same as the node index during compilation
            // They might only differ at runtime
            var checkIndex = nodeIndex;
            this.nodes[nodeIndex] = function () { return ({
                sourceSpan: dirAst.sourceSpan,
                nodeFlags: 16384 /* TypeDirective */ | flags,
                nodeDef: o.importExpr(identifiers_1.Identifiers.directiveDef).callFn([
                    o.literal(checkIndex),
                    o.literal(flags),
                    queryMatchExprs.length ? o.literalArr(queryMatchExprs) : o.NULL_EXPR,
                    o.literal(childCount),
                    providerExpr,
                    depsExpr,
                    inputDefs.length ? new o.LiteralMapExpr(inputDefs) : o.NULL_EXPR,
                    outputDefs.length ? new o.LiteralMapExpr(outputDefs) : o.NULL_EXPR,
                ]),
                updateDirectives: updateDirectiveExpressions,
                directive: dirAst.directive.type,
            }); };
            return { hostBindings: hostBindings, hostEvents: hostEvents };
        };
        ViewBuilder.prototype._visitProvider = function (providerAst, queryMatches) {
            this._addProviderNode(this._visitProviderOrDirective(providerAst, queryMatches));
        };
        ViewBuilder.prototype._visitComponentFactoryResolverProvider = function (directives) {
            var componentDirMeta = directives.find(function (dirAst) { return dirAst.directive.isComponent; });
            if (componentDirMeta && componentDirMeta.directive.entryComponents.length) {
                var _a = provider_compiler_1.componentFactoryResolverProviderDef(this.reflector, this.outputCtx, 8192 /* PrivateProvider */, componentDirMeta.directive.entryComponents), providerExpr = _a.providerExpr, depsExpr = _a.depsExpr, flags = _a.flags, tokenExpr = _a.tokenExpr;
                this._addProviderNode({
                    providerExpr: providerExpr,
                    depsExpr: depsExpr,
                    flags: flags,
                    tokenExpr: tokenExpr,
                    queryMatchExprs: [],
                    sourceSpan: componentDirMeta.sourceSpan
                });
            }
        };
        ViewBuilder.prototype._addProviderNode = function (data) {
            // providerDef(
            //   flags: NodeFlags, matchedQueries: [string, QueryValueType][], token:any,
            //   value: any, deps: ([DepFlags, any] | any)[]): NodeDef;
            this.nodes.push(function () { return ({
                sourceSpan: data.sourceSpan,
                nodeFlags: data.flags,
                nodeDef: o.importExpr(identifiers_1.Identifiers.providerDef).callFn([
                    o.literal(data.flags),
                    data.queryMatchExprs.length ? o.literalArr(data.queryMatchExprs) : o.NULL_EXPR,
                    data.tokenExpr, data.providerExpr, data.depsExpr
                ])
            }); });
        };
        ViewBuilder.prototype._visitProviderOrDirective = function (providerAst, queryMatches) {
            var flags = 0 /* None */;
            var queryMatchExprs = [];
            queryMatches.forEach(function (match) {
                if (compile_metadata_1.tokenReference(match.value) === compile_metadata_1.tokenReference(providerAst.token)) {
                    queryMatchExprs.push(o.literalArr([o.literal(match.queryId), o.literal(4 /* Provider */)]));
                }
            });
            var _a = provider_compiler_1.providerDef(this.outputCtx, providerAst), providerExpr = _a.providerExpr, depsExpr = _a.depsExpr, providerFlags = _a.flags, tokenExpr = _a.tokenExpr;
            return {
                flags: flags | providerFlags,
                queryMatchExprs: queryMatchExprs,
                providerExpr: providerExpr,
                depsExpr: depsExpr,
                tokenExpr: tokenExpr,
                sourceSpan: providerAst.sourceSpan
            };
        };
        ViewBuilder.prototype.getLocal = function (name) {
            if (name == expression_converter_1.EventHandlerVars.event.name) {
                return expression_converter_1.EventHandlerVars.event;
            }
            var currViewExpr = VIEW_VAR;
            for (var currBuilder = this; currBuilder; currBuilder = currBuilder.parent,
                currViewExpr = currViewExpr.prop('parent').cast(o.DYNAMIC_TYPE)) {
                // check references
                var refNodeIndex = currBuilder.refNodeIndices[name];
                if (refNodeIndex != null) {
                    return o.importExpr(identifiers_1.Identifiers.nodeValue).callFn([currViewExpr, o.literal(refNodeIndex)]);
                }
                // check variables
                var varAst = currBuilder.variables.find(function (varAst) { return varAst.name === name; });
                if (varAst) {
                    var varValue = varAst.value || IMPLICIT_TEMPLATE_VAR;
                    return currViewExpr.prop('context').prop(varValue);
                }
            }
            return null;
        };
        ViewBuilder.prototype.notifyImplicitReceiverUse = function () {
            // Not needed in View Engine as View Engine walks through the generated
            // expressions to figure out if the implicit receiver is used and needs
            // to be generated as part of the pre-update statements.
        };
        ViewBuilder.prototype._createLiteralArrayConverter = function (sourceSpan, argCount) {
            if (argCount === 0) {
                var valueExpr_1 = o.importExpr(identifiers_1.Identifiers.EMPTY_ARRAY);
                return function () { return valueExpr_1; };
            }
            var checkIndex = this.nodes.length;
            this.nodes.push(function () { return ({
                sourceSpan: sourceSpan,
                nodeFlags: 32 /* TypePureArray */,
                nodeDef: o.importExpr(identifiers_1.Identifiers.pureArrayDef).callFn([
                    o.literal(checkIndex),
                    o.literal(argCount),
                ])
            }); });
            return function (args) { return callCheckStmt(checkIndex, args); };
        };
        ViewBuilder.prototype._createLiteralMapConverter = function (sourceSpan, keys) {
            if (keys.length === 0) {
                var valueExpr_2 = o.importExpr(identifiers_1.Identifiers.EMPTY_MAP);
                return function () { return valueExpr_2; };
            }
            var map = o.literalMap(keys.map(function (e, i) { return (tslib_1.__assign(tslib_1.__assign({}, e), { value: o.literal(i) })); }));
            var checkIndex = this.nodes.length;
            this.nodes.push(function () { return ({
                sourceSpan: sourceSpan,
                nodeFlags: 64 /* TypePureObject */,
                nodeDef: o.importExpr(identifiers_1.Identifiers.pureObjectDef).callFn([
                    o.literal(checkIndex),
                    map,
                ])
            }); });
            return function (args) { return callCheckStmt(checkIndex, args); };
        };
        ViewBuilder.prototype._createPipeConverter = function (expression, name, argCount) {
            var pipe = this.usedPipes.find(function (pipeSummary) { return pipeSummary.name === name; });
            if (pipe.pure) {
                var checkIndex_1 = this.nodes.length;
                this.nodes.push(function () { return ({
                    sourceSpan: expression.sourceSpan,
                    nodeFlags: 128 /* TypePurePipe */,
                    nodeDef: o.importExpr(identifiers_1.Identifiers.purePipeDef).callFn([
                        o.literal(checkIndex_1),
                        o.literal(argCount),
                    ])
                }); });
                // find underlying pipe in the component view
                var compViewExpr = VIEW_VAR;
                var compBuilder = this;
                while (compBuilder.parent) {
                    compBuilder = compBuilder.parent;
                    compViewExpr = compViewExpr.prop('parent').cast(o.DYNAMIC_TYPE);
                }
                var pipeNodeIndex = compBuilder.purePipeNodeIndices[name];
                var pipeValueExpr_1 = o.importExpr(identifiers_1.Identifiers.nodeValue).callFn([compViewExpr, o.literal(pipeNodeIndex)]);
                return function (args) { return callUnwrapValue(expression.nodeIndex, expression.bindingIndex, callCheckStmt(checkIndex_1, [pipeValueExpr_1].concat(args))); };
            }
            else {
                var nodeIndex = this._createPipe(expression.sourceSpan, pipe);
                var nodeValueExpr_1 = o.importExpr(identifiers_1.Identifiers.nodeValue).callFn([VIEW_VAR, o.literal(nodeIndex)]);
                return function (args) { return callUnwrapValue(expression.nodeIndex, expression.bindingIndex, nodeValueExpr_1.callMethod('transform', args)); };
            }
        };
        ViewBuilder.prototype._createPipe = function (sourceSpan, pipe) {
            var _this = this;
            var nodeIndex = this.nodes.length;
            var flags = 0 /* None */;
            pipe.type.lifecycleHooks.forEach(function (lifecycleHook) {
                // for pipes, we only support ngOnDestroy
                if (lifecycleHook === lifecycle_reflector_1.LifecycleHooks.OnDestroy) {
                    flags |= provider_compiler_1.lifecycleHookToNodeFlag(lifecycleHook);
                }
            });
            var depExprs = pipe.type.diDeps.map(function (diDep) { return provider_compiler_1.depDef(_this.outputCtx, diDep); });
            // function pipeDef(
            //   flags: NodeFlags, ctor: any, deps: ([DepFlags, any] | any)[]): NodeDef
            this.nodes.push(function () { return ({
                sourceSpan: sourceSpan,
                nodeFlags: 16 /* TypePipe */,
                nodeDef: o.importExpr(identifiers_1.Identifiers.pipeDef).callFn([
                    o.literal(flags), _this.outputCtx.importExpr(pipe.type.reference), o.literalArr(depExprs)
                ])
            }); });
            return nodeIndex;
        };
        /**
         * For the AST in `UpdateExpression.value`:
         * - create nodes for pipes, literal arrays and, literal maps,
         * - update the AST to replace pipes, literal arrays and, literal maps with calls to check fn.
         *
         * WARNING: This might create new nodeDefs (for pipes and literal arrays and literal maps)!
         */
        ViewBuilder.prototype._preprocessUpdateExpression = function (expression) {
            var _this = this;
            return {
                nodeIndex: expression.nodeIndex,
                bindingIndex: expression.bindingIndex,
                sourceSpan: expression.sourceSpan,
                context: expression.context,
                value: expression_converter_1.convertPropertyBindingBuiltins({
                    createLiteralArrayConverter: function (argCount) { return _this._createLiteralArrayConverter(expression.sourceSpan, argCount); },
                    createLiteralMapConverter: function (keys) {
                        return _this._createLiteralMapConverter(expression.sourceSpan, keys);
                    },
                    createPipeConverter: function (name, argCount) {
                        return _this._createPipeConverter(expression, name, argCount);
                    }
                }, expression.value)
            };
        };
        ViewBuilder.prototype._createNodeExpressions = function () {
            var self = this;
            var updateBindingCount = 0;
            var updateRendererStmts = [];
            var updateDirectivesStmts = [];
            var nodeDefExprs = this.nodes.map(function (factory, nodeIndex) {
                var _a = factory(), nodeDef = _a.nodeDef, nodeFlags = _a.nodeFlags, updateDirectives = _a.updateDirectives, updateRenderer = _a.updateRenderer, sourceSpan = _a.sourceSpan;
                if (updateRenderer) {
                    updateRendererStmts.push.apply(updateRendererStmts, tslib_1.__spread(createUpdateStatements(nodeIndex, sourceSpan, updateRenderer, false)));
                }
                if (updateDirectives) {
                    updateDirectivesStmts.push.apply(updateDirectivesStmts, tslib_1.__spread(createUpdateStatements(nodeIndex, sourceSpan, updateDirectives, (nodeFlags & (262144 /* DoCheck */ | 65536 /* OnInit */)) > 0)));
                }
                // We use a comma expression to call the log function before
                // the nodeDef function, but still use the result of the nodeDef function
                // as the value.
                // Note: We only add the logger to elements / text nodes,
                // so we don't generate too much code.
                var logWithNodeDef = nodeFlags & 3 /* CatRenderNode */ ?
                    new o.CommaExpr([LOG_VAR.callFn([]).callFn([]), nodeDef]) :
                    nodeDef;
                return o.applySourceSpanToExpressionIfNeeded(logWithNodeDef, sourceSpan);
            });
            return { updateRendererStmts: updateRendererStmts, updateDirectivesStmts: updateDirectivesStmts, nodeDefExprs: nodeDefExprs };
            function createUpdateStatements(nodeIndex, sourceSpan, expressions, allowEmptyExprs) {
                var updateStmts = [];
                var exprs = expressions.map(function (_a) {
                    var sourceSpan = _a.sourceSpan, context = _a.context, value = _a.value;
                    var bindingId = "" + updateBindingCount++;
                    var nameResolver = context === COMP_VAR ? self : null;
                    var _b = expression_converter_1.convertPropertyBinding(nameResolver, context, value, bindingId, expression_converter_1.BindingForm.General), stmts = _b.stmts, currValExpr = _b.currValExpr;
                    updateStmts.push.apply(updateStmts, tslib_1.__spread(stmts.map(function (stmt) { return o.applySourceSpanToStatementIfNeeded(stmt, sourceSpan); })));
                    return o.applySourceSpanToExpressionIfNeeded(currValExpr, sourceSpan);
                });
                if (expressions.length || allowEmptyExprs) {
                    updateStmts.push(o.applySourceSpanToStatementIfNeeded(callCheckStmt(nodeIndex, exprs).toStmt(), sourceSpan));
                }
                return updateStmts;
            }
        };
        ViewBuilder.prototype._createElementHandleEventFn = function (nodeIndex, handlers) {
            var _this = this;
            var handleEventStmts = [];
            var handleEventBindingCount = 0;
            handlers.forEach(function (_a) {
                var context = _a.context, eventAst = _a.eventAst, dirAst = _a.dirAst;
                var bindingId = "" + handleEventBindingCount++;
                var nameResolver = context === COMP_VAR ? _this : null;
                var _b = expression_converter_1.convertActionBinding(nameResolver, context, eventAst.handler, bindingId), stmts = _b.stmts, allowDefault = _b.allowDefault;
                var trueStmts = stmts;
                if (allowDefault) {
                    trueStmts.push(ALLOW_DEFAULT_VAR.set(allowDefault.and(ALLOW_DEFAULT_VAR)).toStmt());
                }
                var _c = elementEventNameAndTarget(eventAst, dirAst), eventTarget = _c.target, eventName = _c.name;
                var fullEventName = elementEventFullName(eventTarget, eventName);
                handleEventStmts.push(o.applySourceSpanToStatementIfNeeded(new o.IfStmt(o.literal(fullEventName).identical(EVENT_NAME_VAR), trueStmts), eventAst.sourceSpan));
            });
            var handleEventFn;
            if (handleEventStmts.length > 0) {
                var preStmts = [ALLOW_DEFAULT_VAR.set(o.literal(true)).toDeclStmt(o.BOOL_TYPE)];
                if (!this.component.isHost && o.findReadVarNames(handleEventStmts).has(COMP_VAR.name)) {
                    preStmts.push(COMP_VAR.set(VIEW_VAR.prop('component')).toDeclStmt(this.compType));
                }
                handleEventFn = o.fn([
                    new o.FnParam(VIEW_VAR.name, o.INFERRED_TYPE),
                    new o.FnParam(EVENT_NAME_VAR.name, o.INFERRED_TYPE),
                    new o.FnParam(expression_converter_1.EventHandlerVars.event.name, o.INFERRED_TYPE)
                ], tslib_1.__spread(preStmts, handleEventStmts, [new o.ReturnStatement(ALLOW_DEFAULT_VAR)]), o.INFERRED_TYPE);
            }
            else {
                handleEventFn = o.NULL_EXPR;
            }
            return handleEventFn;
        };
        ViewBuilder.prototype.visitDirective = function (ast, context) { };
        ViewBuilder.prototype.visitDirectiveProperty = function (ast, context) { };
        ViewBuilder.prototype.visitReference = function (ast, context) { };
        ViewBuilder.prototype.visitVariable = function (ast, context) { };
        ViewBuilder.prototype.visitEvent = function (ast, context) { };
        ViewBuilder.prototype.visitElementProperty = function (ast, context) { };
        ViewBuilder.prototype.visitAttr = function (ast, context) { };
        return ViewBuilder;
    }());
    function needsAdditionalRootNode(astNodes) {
        var lastAstNode = astNodes[astNodes.length - 1];
        if (lastAstNode instanceof template_ast_1.EmbeddedTemplateAst) {
            return lastAstNode.hasViewContainer;
        }
        if (lastAstNode instanceof template_ast_1.ElementAst) {
            if (tags_1.isNgContainer(lastAstNode.name) && lastAstNode.children.length) {
                return needsAdditionalRootNode(lastAstNode.children);
            }
            return lastAstNode.hasViewContainer;
        }
        return lastAstNode instanceof template_ast_1.NgContentAst;
    }
    function elementBindingDef(inputAst, dirAst) {
        var inputType = inputAst.type;
        switch (inputType) {
            case 1 /* Attribute */:
                return o.literalArr([
                    o.literal(1 /* TypeElementAttribute */), o.literal(inputAst.name),
                    o.literal(inputAst.securityContext)
                ]);
            case 0 /* Property */:
                return o.literalArr([
                    o.literal(8 /* TypeProperty */), o.literal(inputAst.name),
                    o.literal(inputAst.securityContext)
                ]);
            case 4 /* Animation */:
                var bindingType = 8 /* TypeProperty */ |
                    (dirAst && dirAst.directive.isComponent ? 32 /* SyntheticHostProperty */ :
                        16 /* SyntheticProperty */);
                return o.literalArr([
                    o.literal(bindingType), o.literal('@' + inputAst.name), o.literal(inputAst.securityContext)
                ]);
            case 2 /* Class */:
                return o.literalArr([o.literal(2 /* TypeElementClass */), o.literal(inputAst.name), o.NULL_EXPR]);
            case 3 /* Style */:
                return o.literalArr([
                    o.literal(4 /* TypeElementStyle */), o.literal(inputAst.name), o.literal(inputAst.unit)
                ]);
            default:
                // This default case is not needed by TypeScript compiler, as the switch is exhaustive.
                // However Closure Compiler does not understand that and reports an error in typed mode.
                // The `throw new Error` below works around the problem, and the unexpected: never variable
                // makes sure tsc still checks this code is unreachable.
                var unexpected = inputType;
                throw new Error("unexpected " + unexpected);
        }
    }
    function fixedAttrsDef(elementAst) {
        var mapResult = Object.create(null);
        elementAst.attrs.forEach(function (attrAst) { mapResult[attrAst.name] = attrAst.value; });
        elementAst.directives.forEach(function (dirAst) {
            Object.keys(dirAst.directive.hostAttributes).forEach(function (name) {
                var value = dirAst.directive.hostAttributes[name];
                var prevValue = mapResult[name];
                mapResult[name] = prevValue != null ? mergeAttributeValue(name, prevValue, value) : value;
            });
        });
        // Note: We need to sort to get a defined output order
        // for tests and for caching generated artifacts...
        return o.literalArr(Object.keys(mapResult).sort().map(function (attrName) { return o.literalArr([o.literal(attrName), o.literal(mapResult[attrName])]); }));
    }
    function mergeAttributeValue(attrName, attrValue1, attrValue2) {
        if (attrName == CLASS_ATTR || attrName == STYLE_ATTR) {
            return attrValue1 + " " + attrValue2;
        }
        else {
            return attrValue2;
        }
    }
    function callCheckStmt(nodeIndex, exprs) {
        if (exprs.length > 10) {
            return CHECK_VAR.callFn([VIEW_VAR, o.literal(nodeIndex), o.literal(1 /* Dynamic */), o.literalArr(exprs)]);
        }
        else {
            return CHECK_VAR.callFn(tslib_1.__spread([VIEW_VAR, o.literal(nodeIndex), o.literal(0 /* Inline */)], exprs));
        }
    }
    function callUnwrapValue(nodeIndex, bindingIdx, expr) {
        return o.importExpr(identifiers_1.Identifiers.unwrapValue).callFn([
            VIEW_VAR, o.literal(nodeIndex), o.literal(bindingIdx), expr
        ]);
    }
    function elementEventNameAndTarget(eventAst, dirAst) {
        if (eventAst.isAnimation) {
            return {
                name: "@" + eventAst.name + "." + eventAst.phase,
                target: dirAst && dirAst.directive.isComponent ? 'component' : null
            };
        }
        else {
            return eventAst;
        }
    }
    function calcStaticDynamicQueryFlags(query) {
        var flags = 0 /* None */;
        // Note: We only make queries static that query for a single item and the user specifically
        // set the to be static. This is because of backwards compatibility with the old view compiler...
        if (query.first && query.static) {
            flags |= 268435456 /* StaticQuery */;
        }
        else {
            flags |= 536870912 /* DynamicQuery */;
        }
        return flags;
    }
    function elementEventFullName(target, name) {
        return target ? target + ":" + name : name;
    }
    exports.elementEventFullName = elementEventFullName;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlld19jb21waWxlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy92aWV3X2NvbXBpbGVyL3ZpZXdfY29tcGlsZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7O0lBRUgsMkVBQXdKO0lBRXhKLGlHQUFtTTtJQUNuTSxtREFBb0k7SUFFcEksaUVBQTJDO0lBQzNDLGlGQUFzRDtJQUN0RCw2REFBZ0Q7SUFDaEQsMkRBQTBDO0lBQzFDLHNFQUE2RDtJQUU3RCxtRkFBMlU7SUFHM1UsMkZBQXNIO0lBRXRILElBQU0sVUFBVSxHQUFHLE9BQU8sQ0FBQztJQUMzQixJQUFNLFVBQVUsR0FBRyxPQUFPLENBQUM7SUFDM0IsSUFBTSxxQkFBcUIsR0FBRyxZQUFZLENBQUM7SUFFM0M7UUFDRSwyQkFBbUIsWUFBb0IsRUFBUyxlQUF1QjtZQUFwRCxpQkFBWSxHQUFaLFlBQVksQ0FBUTtZQUFTLG9CQUFlLEdBQWYsZUFBZSxDQUFRO1FBQUcsQ0FBQztRQUM3RSx3QkFBQztJQUFELENBQUMsQUFGRCxJQUVDO0lBRlksOENBQWlCO0lBSTlCO1FBQ0Usc0JBQW9CLFVBQTRCO1lBQTVCLGVBQVUsR0FBVixVQUFVLENBQWtCO1FBQUcsQ0FBQztRQUVwRCx1Q0FBZ0IsR0FBaEIsVUFDSSxTQUF3QixFQUFFLFNBQW1DLEVBQUUsUUFBdUIsRUFDdEYsTUFBb0IsRUFBRSxTQUErQjs7WUFGekQsaUJBeUNDO1lBdENDLElBQUksaUJBQWlCLEdBQUcsQ0FBQyxDQUFDO1lBRTFCLElBQUksc0JBQXNCLEdBQVcsU0FBVyxDQUFDO1lBQ2pELElBQUksQ0FBQyxTQUFTLENBQUMsTUFBTSxFQUFFO2dCQUNyQixJQUFNLFVBQVEsR0FBRyxTQUFTLENBQUMsUUFBVSxDQUFDO2dCQUN0QyxJQUFNLGdCQUFnQixHQUF3QixFQUFFLENBQUM7Z0JBQ2pELElBQUks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LG9CQUFvQixDQUFDLE1BQXFCLEVBQUUsSUFBWTtRQUN0RSxPQUFPLE1BQU0sQ0FBQyxDQUFDLENBQUksTUFBTSxTQUFJLElBQU0sQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDO0lBQzdDLENBQUM7SUFGRCxvREFFQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtDb21waWxlRGlyZWN0aXZlTWV0YWRhdGEsIENvbXBpbGVQaXBlU3VtbWFyeSwgQ29tcGlsZVF1ZXJ5TWV0YWRhdGEsIHJlbmRlcmVyVHlwZU5hbWUsIHRva2VuUmVmZXJlbmNlLCB2aWV3Q2xhc3NOYW1lfSBmcm9tICcuLi9jb21waWxlX21ldGFkYXRhJztcbmltcG9ydCB7Q29tcGlsZVJlZmxlY3Rvcn0gZnJvbSAnLi4vY29tcGlsZV9yZWZsZWN0b3InO1xuaW1wb3J0IHtCaW5kaW5nRm9ybSwgQnVpbHRpbkNvbnZlcnRlciwgRXZlbnRIYW5kbGVyVmFycywgTG9jYWxSZXNvbHZlciwgY29udmVydEFjdGlvbkJpbmRpbmcsIGNvbnZlcnRQcm9wZXJ0eUJpbmRpbmcsIGNvbnZlcnRQcm9wZXJ0eUJpbmRpbmdCdWlsdGluc30gZnJvbSAnLi4vY29tcGlsZXJfdXRpbC9leHByZXNzaW9uX2NvbnZlcnRlcic7XG5pbXBvcnQge0FyZ3VtZW50VHlwZSwgQmluZGluZ0ZsYWdzLCBDaGFuZ2VEZXRlY3Rpb25TdHJhdGVneSwgTm9kZUZsYWdzLCBRdWVyeUJpbmRpbmdUeXBlLCBRdWVyeVZhbHVlVHlwZSwgVmlld0ZsYWdzfSBmcm9tICcuLi9jb3JlJztcbmltcG9ydCB7QVNULCBBU1RXaXRoU291cmNlLCBJbnRlcnBvbGF0aW9ufSBmcm9tICcuLi9leHByZXNzaW9uX3BhcnNlci9hc3QnO1xuaW1wb3J0IHtJZGVudGlmaWVyc30gZnJvbSAnLi4vaWRlbnRpZmllcnMnO1xuaW1wb3J0IHtMaWZlY3ljbGVIb29rc30gZnJvbSAnLi4vbGlmZWN5Y2xlX3JlZmxlY3Rvcic7XG5pbXBvcnQge2lzTmdDb250YWluZXJ9IGZyb20gJy4uL21sX3BhcnNlci90YWdzJztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi4vb3V0cHV0L291dHB1dF9hc3QnO1xuaW1wb3J0IHtjb252ZXJ0VmFsdWVUb091dHB1dEFzdH0gZnJvbSAnLi4vb3V0cHV0L3ZhbHVlX3V0aWwnO1xuaW1wb3J0IHtQYXJzZVNvdXJjZVNwYW59IGZyb20gJy4uL3BhcnNlX3V0aWwnO1xuaW1wb3J0IHtBdHRyQXN0LCBCb3VuZERpcmVjdGl2ZVByb3BlcnR5QXN0LCBCb3VuZEVsZW1lbnRQcm9wZXJ0eUFzdCwgQm91bmRFdmVudEFzdCwgQm91bmRUZXh0QXN0LCBEaXJlY3RpdmVBc3QsIEVsZW1lbnRBc3QsIEVtYmVkZGVkVGVtcGxhdGVBc3QsIE5nQ29udGVudEFzdCwgUHJvcGVydHlCaW5kaW5nVHlwZSwgUHJvdmlkZXJBc3QsIFF1ZXJ5TWF0Y2gsIFJlZmVyZW5jZUFzdCwgVGVtcGxhdGVBc3QsIFRlbXBsYXRlQXN0VmlzaXRvciwgVGV4dEFzdCwgVmFyaWFibGVBc3QsIHRlbXBsYXRlVmlzaXRBbGx9IGZyb20gJy4uL3RlbXBsYXRlX3BhcnNlci90ZW1wbGF0ZV9hc3QnO1xuaW1wb3J0IHtPdXRwdXRDb250ZXh0fSBmcm9tICcuLi91dGlsJztcblxuaW1wb3J0IHtjb21wb25lbnRGYWN0b3J5UmVzb2x2ZXJQcm92aWRlckRlZiwgZGVwRGVmLCBsaWZlY3ljbGVIb29rVG9Ob2RlRmxhZywgcHJvdmlkZXJEZWZ9IGZyb20gJy4vcHJvdmlkZXJfY29tcGlsZXInO1xuXG5jb25zdCBDTEFTU19BVFRSID0gJ2NsYXNzJztcbmNvbnN0IFNUWUxFX0FUVFIgPSAnc3R5bGUnO1xuY29uc3QgSU1QTElDSVRfVEVNUExBVEVfVkFSID0gJ1xcJGltcGxpY2l0JztcblxuZXhwb3J0IGNsYXNzIFZpZXdDb21waWxlUmVzdWx0IHtcbiAgY29uc3RydWN0b3IocHVibGljIHZpZXdDbGFzc1Zhcjogc3RyaW5nLCBwdWJsaWMgcmVuZGVyZXJUeXBlVmFyOiBzdHJpbmcpIHt9XG59XG5cbmV4cG9ydCBjbGFzcyBWaWV3Q29tcGlsZXIge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9yZWZsZWN0b3I6IENvbXBpbGVSZWZsZWN0b3IpIHt9XG5cbiAgY29tcGlsZUNvbXBvbmVudChcbiAgICAgIG91dHB1dEN0eDogT3V0cHV0Q29udGV4dCwgY29tcG9uZW50OiBDb21waWxlRGlyZWN0aXZlTWV0YWRhdGEsIHRlbXBsYXRlOiBUZW1wbGF0ZUFzdFtdLFxuICAgICAgc3R5bGVzOiBvLkV4cHJlc3Npb24sIHVzZWRQaXBlczogQ29tcGlsZVBpcGVTdW1tYXJ5W10pOiBWaWV3Q29tcGlsZVJlc3VsdCB7XG4gICAgbGV0IGVtYmVkZGVkVmlld0NvdW50ID0gMDtcblxuICAgIGxldCByZW5kZXJDb21wb25lbnRWYXJOYW1lOiBzdHJpbmcgPSB1bmRlZmluZWQgITtcbiAgICBpZiAoIWNvbXBvbmVudC5pc0hvc3QpIHtcbiAgICAgIGNvbnN0IHRlbXBsYXRlID0gY29tcG9uZW50LnRlbXBsYXRlICE7XG4gICAgICBjb25zdCBjdXN0b21SZW5kZXJEYXRhOiBvLkxpdGVyYWxNYXBFbnRyeVtdID0gW107XG4gICAgICBpZiAodGVtcGxhdGUuYW5pbWF0aW9ucyAmJiB0ZW1wbGF0ZS5hbmltYXRpb25zLmxlbmd0aCkge1xuICAgICAgICBjdXN0b21SZW5kZXJEYXRhLnB1c2gobmV3IG8uTGl0ZXJhbE1hcEVudHJ5KFxuICAgICAgICAgICAgJ2FuaW1hdGlvbicsIGNvbnZlcnRWYWx1ZVRvT3V0cHV0QXN0KG91dHB1dEN0eCwgdGVtcGxhdGUuYW5pbWF0aW9ucyksIHRydWUpKTtcbiAgICAgIH1cblxuICAgICAgY29uc3QgcmVuZGVyQ29tcG9uZW50VmFyID0gby52YXJpYWJsZShyZW5kZXJlclR5cGVOYW1lKGNvbXBvbmVudC50eXBlLnJlZmVyZW5jZSkpO1xuICAgICAgcmVuZGVyQ29tcG9uZW50VmFyTmFtZSA9IHJlbmRlckNvbXBvbmVudFZhci5uYW1lICE7XG4gICAgICBvdXRwdXRDdHguc3RhdGVtZW50cy5wdXNoKFxuICAgICAgICAgIHJlbmRlckNvbXBvbmVudFZhclxuICAgICAgICAgICAgICAuc2V0KG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5jcmVhdGVSZW5kZXJlclR5cGUyKS5jYWxsRm4oW25ldyBvLkxpdGVyYWxNYXBFeHByKFtcbiAgICAgICAgICAgICAgICBuZXcgby5MaXRlcmFsTWFwRW50cnkoJ2VuY2Fwc3VsYXRpb24nLCBvLmxpdGVyYWwodGVtcGxhdGUuZW5jYXBzdWxhdGlvbiksIGZhbHNlKSxcbiAgICAgICAgICAgICAgICBuZXcgby5MaXRlcmFsTWFwRW50cnkoJ3N0eWxlcycsIHN0eWxlcywgZmFsc2UpLFxuICAgICAgICAgICAgICAgIG5ldyBvLkxpdGVyYWxNYXBFbnRyeSgnZGF0YScsIG5ldyBvLkxpdGVyYWxNYXBFeHByKGN1c3RvbVJlbmRlckRhdGEpLCBmYWxzZSlcbiAgICAgICAgICAgICAgXSldKSlcbiAgICAgICAgICAgICAgLnRvRGVjbFN0bXQoXG4gICAgICAgICAgICAgICAgICBvLmltcG9ydFR5cGUoSWRlbnRpZmllcnMuUmVuZGVyZXJUeXBlMiksXG4gICAgICAgICAgICAgICAgICBbby5TdG10TW9kaWZpZXIuRmluYWwsIG8uU3RtdE1vZGlmaWVyLkV4cG9ydGVkXSkpO1xuICAgIH1cblxuICAgIGNvbnN0IHZpZXdCdWlsZGVyRmFjdG9yeSA9IChwYXJlbnQ6IFZpZXdCdWlsZGVyIHwgbnVsbCk6IFZpZXdCdWlsZGVyID0+IHtcbiAgICAgIGNvbnN0IGVtYmVkZGVkVmlld0luZGV4ID0gZW1iZWRkZWRWaWV3Q291bnQrKztcbiAgICAgIHJldHVybiBuZXcgVmlld0J1aWxkZXIoXG4gICAgICAgICAgdGhpcy5fcmVmbGVjdG9yLCBvdXRwdXRDdHgsIHBhcmVudCwgY29tcG9uZW50LCBlbWJlZGRlZFZpZXdJbmRleCwgdXNlZFBpcGVzLFxuICAgICAgICAgIHZpZXdCdWlsZGVyRmFjdG9yeSk7XG4gICAgfTtcblxuICAgIGNvbnN0IHZpc2l0b3IgPSB2aWV3QnVpbGRlckZhY3RvcnkobnVsbCk7XG4gICAgdmlzaXRvci52aXNpdEFsbChbXSwgdGVtcGxhdGUpO1xuXG4gICAgb3V0cHV0Q3R4LnN0YXRlbWVudHMucHVzaCguLi52aXNpdG9yLmJ1aWxkKCkpO1xuXG4gICAgcmV0dXJuIG5ldyBWaWV3Q29tcGlsZVJlc3VsdCh2aXNpdG9yLnZpZXdOYW1lLCByZW5kZXJDb21wb25lbnRWYXJOYW1lKTtcbiAgfVxufVxuXG5pbnRlcmZhY2UgVmlld0J1aWxkZXJGYWN0b3J5IHtcbiAgKHBhcmVudDogVmlld0J1aWxkZXIpOiBWaWV3QnVpbGRlcjtcbn1cblxuaW50ZXJmYWNlIFVwZGF0ZUV4cHJlc3Npb24ge1xuICBjb250ZXh0OiBvLkV4cHJlc3Npb247XG4gIG5vZGVJbmRleDogbnVtYmVyO1xuICBiaW5kaW5nSW5kZXg6IG51bWJlcjtcbiAgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuO1xuICB2YWx1ZTogQVNUO1xufVxuXG5jb25zdCBMT0dfVkFSID0gby52YXJpYWJsZSgnX2wnKTtcbmNvbnN0IFZJRVdfVkFSID0gby52YXJpYWJsZSgnX3YnKTtcbmNvbnN0IENIRUNLX1ZBUiA9IG8udmFyaWFibGUoJ19jaycpO1xuY29uc3QgQ09NUF9WQVIgPSBvLnZhcmlhYmxlKCdfY28nKTtcbmNvbnN0IEVWRU5UX05BTUVfVkFSID0gby52YXJpYWJsZSgnZW4nKTtcbmNvbnN0IEFMTE9XX0RFRkFVTFRfVkFSID0gby52YXJpYWJsZShgYWRgKTtcblxuY2xhc3MgVmlld0J1aWxkZXIgaW1wbGVtZW50cyBUZW1wbGF0ZUFzdFZpc2l0b3IsIExvY2FsUmVzb2x2ZXIge1xuICBwcml2YXRlIGNvbXBUeXBlOiBvLlR5cGU7XG4gIHByaXZhdGUgbm9kZXM6ICgoKSA9PiB7XG4gICAgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuIHwgbnVsbCxcbiAgICBub2RlRGVmOiBvLkV4cHJlc3Npb24sXG4gICAgbm9kZUZsYWdzOiBOb2RlRmxhZ3MsIHVwZGF0ZURpcmVjdGl2ZXM/OiBVcGRhdGVFeHByZXNzaW9uW10sIHVwZGF0ZVJlbmRlcmVyPzogVXBkYXRlRXhwcmVzc2lvbltdXG4gIH0pW10gPSBbXTtcbiAgcHJpdmF0ZSBwdXJlUGlwZU5vZGVJbmRpY2VzOiB7W3BpcGVOYW1lOiBzdHJpbmddOiBudW1iZXJ9ID0gT2JqZWN0LmNyZWF0ZShudWxsKTtcbiAgLy8gTmVlZCBPYmplY3QuY3JlYXRlIHNvIHRoYXQgd2UgZG9uJ3QgaGF2ZSBidWlsdGluIHZhbHVlcy4uLlxuICBwcml2YXRlIHJlZk5vZGVJbmRpY2VzOiB7W3JlZk5hbWU6IHN0cmluZ106IG51bWJlcn0gPSBPYmplY3QuY3JlYXRlKG51bGwpO1xuICBwcml2YXRlIHZhcmlhYmxlczogVmFyaWFibGVBc3RbXSA9IFtdO1xuICBwcml2YXRlIGNoaWxkcmVuOiBWaWV3QnVpbGRlcltdID0gW107XG5cbiAgcHVibGljIHJlYWRvbmx5IHZpZXdOYW1lOiBzdHJpbmc7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHJlZmxlY3RvcjogQ29tcGlsZVJlZmxlY3RvciwgcHJpdmF0ZSBvdXRwdXRDdHg6IE91dHB1dENvbnRleHQsXG4gICAgICBwcml2YXRlIHBhcmVudDogVmlld0J1aWxkZXJ8bnVsbCwgcHJpdmF0ZSBjb21wb25lbnQ6IENvbXBpbGVEaXJlY3RpdmVNZXRhZGF0YSxcbiAgICAgIHByaXZhdGUgZW1iZWRkZWRWaWV3SW5kZXg6IG51bWJlciwgcHJpdmF0ZSB1c2VkUGlwZXM6IENvbXBpbGVQaXBlU3VtbWFyeVtdLFxuICAgICAgcHJpdmF0ZSB2aWV3QnVpbGRlckZhY3Rvcnk6IFZpZXdCdWlsZGVyRmFjdG9yeSkge1xuICAgIC8vIFRPRE8odGJvc2NoKTogVGhlIG9sZCB2aWV3IGNvbXBpbGVyIHVzZWQgdG8gdXNlIGFuIGBhbnlgIHR5cGVcbiAgICAvLyBmb3IgdGhlIGNvbnRleHQgaW4gYW55IGVtYmVkZGVkIHZpZXcuIFdlIGtlZXAgdGhpcyBiZWhhaXZvciBmb3Igbm93XG4gICAgLy8gdG8gYmUgYWJsZSB0byBpbnRyb2R1Y2UgdGhlIG5ldyB2aWV3IGNvbXBpbGVyIHdpdGhvdXQgdG9vIG1hbnkgZXJyb3JzLlxuICAgIHRoaXMuY29tcFR5cGUgPSB0aGlzLmVtYmVkZGVkVmlld0luZGV4ID4gMCA/XG4gICAgICAgIG8uRFlOQU1JQ19UWVBFIDpcbiAgICAgICAgby5leHByZXNzaW9uVHlwZShvdXRwdXRDdHguaW1wb3J0RXhwcih0aGlzLmNvbXBvbmVudC50eXBlLnJlZmVyZW5jZSkpICE7XG4gICAgdGhpcy52aWV3TmFtZSA9IHZpZXdDbGFzc05hbWUodGhpcy5jb21wb25lbnQudHlwZS5yZWZlcmVuY2UsIHRoaXMuZW1iZWRkZWRWaWV3SW5kZXgpO1xuICB9XG5cbiAgdmlzaXRBbGwodmFyaWFibGVzOiBWYXJpYWJsZUFzdFtdLCBhc3ROb2RlczogVGVtcGxhdGVBc3RbXSkge1xuICAgIHRoaXMudmFyaWFibGVzID0gdmFyaWFibGVzO1xuICAgIC8vIGNyZWF0ZSB0aGUgcGlwZXMgZm9yIHRoZSBwdXJlIHBpcGVzIGltbWVkaWF0ZWx5LCBzbyB0aGF0IHdlIGtub3cgdGhlaXIgaW5kaWNlcy5cbiAgICBpZiAoIXRoaXMucGFyZW50KSB7XG4gICAgICB0aGlzLnVzZWRQaXBlcy5mb3JFYWNoKChwaXBlKSA9PiB7XG4gICAgICAgIGlmIChwaXBlLnB1cmUpIHtcbiAgICAgICAgICB0aGlzLnB1cmVQaXBlTm9kZUluZGljZXNbcGlwZS5uYW1lXSA9IHRoaXMuX2NyZWF0ZVBpcGUobnVsbCwgcGlwZSk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgIH1cblxuICAgIGlmICghdGhpcy5wYXJlbnQpIHtcbiAgICAgIHRoaXMuY29tcG9uZW50LnZpZXdRdWVyaWVzLmZvckVhY2goKHF1ZXJ5LCBxdWVyeUluZGV4KSA9PiB7XG4gICAgICAgIC8vIE5vdGU6IHF1ZXJpZXMgc3RhcnQgd2l0aCBpZCAxIHNvIHdlIGNhbiB1c2UgdGhlIG51bWJlciBpbiBhIEJsb29tIGZpbHRlciFcbiAgICAgICAgY29uc3QgcXVlcnlJZCA9IHF1ZXJ5SW5kZXggKyAxO1xuICAgICAgICBjb25zdCBiaW5kaW5nVHlwZSA9IHF1ZXJ5LmZpcnN0ID8gUXVlcnlCaW5kaW5nVHlwZS5GaXJzdCA6IFF1ZXJ5QmluZGluZ1R5cGUuQWxsO1xuICAgICAgICBjb25zdCBmbGFncyA9IE5vZGVGbGFncy5UeXBlVmlld1F1ZXJ5IHwgY2FsY1N0YXRpY0R5bmFtaWNRdWVyeUZsYWdzKHF1ZXJ5KTtcbiAgICAgICAgdGhpcy5ub2Rlcy5wdXNoKCgpID0+ICh7XG4gICAgICAgICAgICAgICAgICAgICAgICAgIHNvdXJjZVNwYW46IG51bGwsXG4gICAgICAgICAgICAgICAgICAgICAgICAgIG5vZGVGbGFnczogZmxhZ3MsXG4gICAgICAgICAgICAgICAgICAgICAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5xdWVyeURlZikuY2FsbEZuKFtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBvLmxpdGVyYWwoZmxhZ3MpLCBvLmxpdGVyYWwocXVlcnlJZCksXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgbmV3IG8uTGl0ZXJhbE1hcEV4cHIoW25ldyBvLkxpdGVyYWxNYXBFbnRyeShcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcXVlcnkucHJvcGVydHlOYW1lLCBvLmxpdGVyYWwoYmluZGluZ1R5cGUpLCBmYWxzZSldKVxuICAgICAgICAgICAgICAgICAgICAgICAgICBdKVxuICAgICAgICAgICAgICAgICAgICAgICAgfSkpO1xuICAgICAgfSk7XG4gICAgfVxuICAgIHRlbXBsYXRlVmlzaXRBbGwodGhpcywgYXN0Tm9kZXMpO1xuICAgIGlmICh0aGlzLnBhcmVudCAmJiAoYXN0Tm9kZXMubGVuZ3RoID09PSAwIHx8IG5lZWRzQWRkaXRpb25hbFJvb3ROb2RlKGFzdE5vZGVzKSkpIHtcbiAgICAgIC8vIGlmIHRoZSB2aWV3IGlzIGFuIGVtYmVkZGVkIHZpZXcsIHRoZW4gd2UgbmVlZCB0byBhZGQgYW4gYWRkaXRpb25hbCByb290IG5vZGUgaW4gc29tZSBjYXNlc1xuICAgICAgdGhpcy5ub2Rlcy5wdXNoKCgpID0+ICh7XG4gICAgICAgICAgICAgICAgICAgICAgICBzb3VyY2VTcGFuOiBudWxsLFxuICAgICAgICAgICAgICAgICAgICAgICAgbm9kZUZsYWdzOiBOb2RlRmxhZ3MuVHlwZUVsZW1lbnQsXG4gICAgICAgICAgICAgICAgICAgICAgICBub2RlRGVmOiBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMuYW5jaG9yRGVmKS5jYWxsRm4oW1xuICAgICAgICAgICAgICAgICAgICAgICAgICBvLmxpdGVyYWwoTm9kZUZsYWdzLk5vbmUpLCBvLk5VTExfRVhQUiwgby5OVUxMX0VYUFIsIG8ubGl0ZXJhbCgwKVxuICAgICAgICAgICAgICAgICAgICAgICAgXSlcbiAgICAgICAgICAgICAgICAgICAgICB9KSk7XG4gICAgfVxuICB9XG5cbiAgYnVpbGQodGFyZ2V0U3RhdGVtZW50czogby5TdGF0ZW1lbnRbXSA9IFtdKTogby5TdGF0ZW1lbnRbXSB7XG4gICAgdGhpcy5jaGlsZHJlbi5mb3JFYWNoKChjaGlsZCkgPT4gY2hpbGQuYnVpbGQodGFyZ2V0U3RhdGVtZW50cykpO1xuXG4gICAgY29uc3Qge3VwZGF0ZVJlbmRlcmVyU3RtdHMsIHVwZGF0ZURpcmVjdGl2ZXNTdG10cywgbm9kZURlZkV4cHJzfSA9XG4gICAgICAgIHRoaXMuX2NyZWF0ZU5vZGVFeHByZXNzaW9ucygpO1xuXG4gICAgY29uc3QgdXBkYXRlUmVuZGVyZXJGbiA9IHRoaXMuX2NyZWF0ZVVwZGF0ZUZuKHVwZGF0ZVJlbmRlcmVyU3RtdHMpO1xuICAgIGNvbnN0IHVwZGF0ZURpcmVjdGl2ZXNGbiA9IHRoaXMuX2NyZWF0ZVVwZGF0ZUZuKHVwZGF0ZURpcmVjdGl2ZXNTdG10cyk7XG5cblxuICAgIGxldCB2aWV3RmxhZ3MgPSBWaWV3RmxhZ3MuTm9uZTtcbiAgICBpZiAoIXRoaXMucGFyZW50ICYmIHRoaXMuY29tcG9uZW50LmNoYW5nZURldGVjdGlvbiA9PT0gQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kuT25QdXNoKSB7XG4gICAgICB2aWV3RmxhZ3MgfD0gVmlld0ZsYWdzLk9uUHVzaDtcbiAgICB9XG4gICAgY29uc3Qgdmlld0ZhY3RvcnkgPSBuZXcgby5EZWNsYXJlRnVuY3Rpb25TdG10KFxuICAgICAgICB0aGlzLnZpZXdOYW1lLCBbbmV3IG8uRm5QYXJhbShMT0dfVkFSLm5hbWUgISldLFxuICAgICAgICBbbmV3IG8uUmV0dXJuU3RhdGVtZW50KG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy52aWV3RGVmKS5jYWxsRm4oW1xuICAgICAgICAgIG8ubGl0ZXJhbCh2aWV3RmxhZ3MpLFxuICAgICAgICAgIG8ubGl0ZXJhbEFycihub2RlRGVmRXhwcnMpLFxuICAgICAgICAgIHVwZGF0ZURpcmVjdGl2ZXNGbixcbiAgICAgICAgICB1cGRhdGVSZW5kZXJlckZuLFxuICAgICAgICBdKSldLFxuICAgICAgICBvLmltcG9ydFR5cGUoSWRlbnRpZmllcnMuVmlld0RlZmluaXRpb24pLFxuICAgICAgICB0aGlzLmVtYmVkZGVkVmlld0luZGV4ID09PSAwID8gW28uU3RtdE1vZGlmaWVyLkV4cG9ydGVkXSA6IFtdKTtcblxuICAgIHRhcmdldFN0YXRlbWVudHMucHVzaCh2aWV3RmFjdG9yeSk7XG4gICAgcmV0dXJuIHRhcmdldFN0YXRlbWVudHM7XG4gIH1cblxuICBwcml2YXRlIF9jcmVhdGVVcGRhdGVGbih1cGRhdGVTdG10czogby5TdGF0ZW1lbnRbXSk6IG8uRXhwcmVzc2lvbiB7XG4gICAgbGV0IHVwZGF0ZUZuOiBvLkV4cHJlc3Npb247XG4gICAgaWYgKHVwZGF0ZVN0bXRzLmxlbmd0aCA+IDApIHtcbiAgICAgIGNvbnN0IHByZVN0bXRzOiBvLlN0YXRlbWVudFtdID0gW107XG4gICAgICBpZiAoIXRoaXMuY29tcG9uZW50LmlzSG9zdCAmJiBvLmZpbmRSZWFkVmFyTmFtZXModXBkYXRlU3RtdHMpLmhhcyhDT01QX1ZBUi5uYW1lICEpKSB7XG4gICAgICAgIHByZVN0bXRzLnB1c2goQ09NUF9WQVIuc2V0KFZJRVdfVkFSLnByb3AoJ2NvbXBvbmVudCcpKS50b0RlY2xTdG10KHRoaXMuY29tcFR5cGUpKTtcbiAgICAgIH1cbiAgICAgIHVwZGF0ZUZuID0gby5mbihcbiAgICAgICAgICBbXG4gICAgICAgICAgICBuZXcgby5GblBhcmFtKENIRUNLX1ZBUi5uYW1lICEsIG8uSU5GRVJSRURfVFlQRSksXG4gICAgICAgICAgICBuZXcgby5GblBhcmFtKFZJRVdfVkFSLm5hbWUgISwgby5JTkZFUlJFRF9UWVBFKVxuICAgICAgICAgIF0sXG4gICAgICAgICAgWy4uLnByZVN0bXRzLCAuLi51cGRhdGVTdG10c10sIG8uSU5GRVJSRURfVFlQRSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHVwZGF0ZUZuID0gby5OVUxMX0VYUFI7XG4gICAgfVxuICAgIHJldHVybiB1cGRhdGVGbjtcbiAgfVxuXG4gIHZpc2l0TmdDb250ZW50KGFzdDogTmdDb250ZW50QXN0LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIC8vIG5nQ29udGVudERlZihuZ0NvbnRlbnRJbmRleDogbnVtYmVyLCBpbmRleDogbnVtYmVyKTogTm9kZURlZjtcbiAgICB0aGlzLm5vZGVzLnB1c2goKCkgPT4gKHtcbiAgICAgICAgICAgICAgICAgICAgICBzb3VyY2VTcGFuOiBhc3Quc291cmNlU3BhbixcbiAgICAgICAgICAgICAgICAgICAgICBub2RlRmxhZ3M6IE5vZGVGbGFncy5UeXBlTmdDb250ZW50LFxuICAgICAgICAgICAgICAgICAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5uZ0NvbnRlbnREZWYpLmNhbGxGbihbXG4gICAgICAgICAgICAgICAgICAgICAgICBvLmxpdGVyYWwoYXN0Lm5nQ29udGVudEluZGV4KSwgby5saXRlcmFsKGFzdC5pbmRleClcbiAgICAgICAgICAgICAgICAgICAgICBdKVxuICAgICAgICAgICAgICAgICAgICB9KSk7XG4gIH1cblxuICB2aXNpdFRleHQoYXN0OiBUZXh0QXN0LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIC8vIFN0YXRpYyB0ZXh0IG5vZGVzIGhhdmUgbm8gY2hlY2sgZnVuY3Rpb25cbiAgICBjb25zdCBjaGVja0luZGV4ID0gLTE7XG4gICAgdGhpcy5ub2Rlcy5wdXNoKCgpID0+ICh7XG4gICAgICAgICAgICAgICAgICAgICAgc291cmNlU3BhbjogYXN0LnNvdXJjZVNwYW4sXG4gICAgICAgICAgICAgICAgICAgICAgbm9kZUZsYWdzOiBOb2RlRmxhZ3MuVHlwZVRleHQsXG4gICAgICAgICAgICAgICAgICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLnRleHREZWYpLmNhbGxGbihbXG4gICAgICAgICAgICAgICAgICAgICAgICBvLmxpdGVyYWwoY2hlY2tJbmRleCksXG4gICAgICAgICAgICAgICAgICAgICAgICBvLmxpdGVyYWwoYXN0Lm5nQ29udGVudEluZGV4KSxcbiAgICAgICAgICAgICAgICAgICAgICAgIG8ubGl0ZXJhbEFycihbby5saXRlcmFsKGFzdC52YWx1ZSldKSxcbiAgICAgICAgICAgICAgICAgICAgICBdKVxuICAgICAgICAgICAgICAgICAgICB9KSk7XG4gIH1cblxuICB2aXNpdEJvdW5kVGV4dChhc3Q6IEJvdW5kVGV4dEFzdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBjb25zdCBub2RlSW5kZXggPSB0aGlzLm5vZGVzLmxlbmd0aDtcbiAgICAvLyByZXNlcnZlIHRoZSBzcGFjZSBpbiB0aGUgbm9kZURlZnMgYXJyYXlcbiAgICB0aGlzLm5vZGVzLnB1c2gobnVsbCAhKTtcblxuICAgIGNvbnN0IGFzdFdpdGhTb3VyY2UgPSA8QVNUV2l0aFNvdXJjZT5hc3QudmFsdWU7XG4gICAgY29uc3QgaW50ZXIgPSA8SW50ZXJwb2xhdGlvbj5hc3RXaXRoU291cmNlLmFzdDtcblxuICAgIGNvbnN0IHVwZGF0ZVJlbmRlcmVyRXhwcmVzc2lvbnMgPSBpbnRlci5leHByZXNzaW9ucy5tYXAoXG4gICAgICAgIChleHByLCBiaW5kaW5nSW5kZXgpID0+IHRoaXMuX3ByZXByb2Nlc3NVcGRhdGVFeHByZXNzaW9uKFxuICAgICAgICAgICAge25vZGVJbmRleCwgYmluZGluZ0luZGV4LCBzb3VyY2VTcGFuOiBhc3Quc291cmNlU3BhbiwgY29udGV4dDogQ09NUF9WQVIsIHZhbHVlOiBleHByfSkpO1xuXG4gICAgLy8gQ2hlY2sgaW5kZXggaXMgdGhlIHNhbWUgYXMgdGhlIG5vZGUgaW5kZXggZHVyaW5nIGNvbXBpbGF0aW9uXG4gICAgLy8gVGhleSBtaWdodCBvbmx5IGRpZmZlciBhdCBydW50aW1lXG4gICAgY29uc3QgY2hlY2tJbmRleCA9IG5vZGVJbmRleDtcblxuICAgIHRoaXMubm9kZXNbbm9kZUluZGV4XSA9ICgpID0+ICh7XG4gICAgICBzb3VyY2VTcGFuOiBhc3Quc291cmNlU3BhbixcbiAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVUZXh0LFxuICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLnRleHREZWYpLmNhbGxGbihbXG4gICAgICAgIG8ubGl0ZXJhbChjaGVja0luZGV4KSxcbiAgICAgICAgby5saXRlcmFsKGFzdC5uZ0NvbnRlbnRJbmRleCksXG4gICAgICAgIG8ubGl0ZXJhbEFycihpbnRlci5zdHJpbmdzLm1hcChzID0+IG8ubGl0ZXJhbChzKSkpLFxuICAgICAgXSksXG4gICAgICB1cGRhdGVSZW5kZXJlcjogdXBkYXRlUmVuZGVyZXJFeHByZXNzaW9uc1xuICAgIH0pO1xuICB9XG5cbiAgdmlzaXRFbWJlZGRlZFRlbXBsYXRlKGFzdDogRW1iZWRkZWRUZW1wbGF0ZUFzdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBjb25zdCBub2RlSW5kZXggPSB0aGlzLm5vZGVzLmxlbmd0aDtcbiAgICAvLyByZXNlcnZlIHRoZSBzcGFjZSBpbiB0aGUgbm9kZURlZnMgYXJyYXlcbiAgICB0aGlzLm5vZGVzLnB1c2gobnVsbCAhKTtcblxuICAgIGNvbnN0IHtmbGFncywgcXVlcnlNYXRjaGVzRXhwciwgaG9zdEV2ZW50c30gPSB0aGlzLl92aXNpdEVsZW1lbnRPclRlbXBsYXRlKG5vZGVJbmRleCwgYXN0KTtcblxuICAgIGNvbnN0IGNoaWxkVmlzaXRvciA9IHRoaXMudmlld0J1aWxkZXJGYWN0b3J5KHRoaXMpO1xuICAgIHRoaXMuY2hpbGRyZW4ucHVzaChjaGlsZFZpc2l0b3IpO1xuICAgIGNoaWxkVmlzaXRvci52aXNpdEFsbChhc3QudmFyaWFibGVzLCBhc3QuY2hpbGRyZW4pO1xuXG4gICAgY29uc3QgY2hpbGRDb3VudCA9IHRoaXMubm9kZXMubGVuZ3RoIC0gbm9kZUluZGV4IC0gMTtcblxuICAgIC8vIGFuY2hvckRlZihcbiAgICAvLyAgIGZsYWdzOiBOb2RlRmxhZ3MsIG1hdGNoZWRRdWVyaWVzOiBbc3RyaW5nLCBRdWVyeVZhbHVlVHlwZV1bXSwgbmdDb250ZW50SW5kZXg6IG51bWJlcixcbiAgICAvLyAgIGNoaWxkQ291bnQ6IG51bWJlciwgaGFuZGxlRXZlbnRGbj86IEVsZW1lbnRIYW5kbGVFdmVudEZuLCB0ZW1wbGF0ZUZhY3Rvcnk/OlxuICAgIC8vICAgVmlld0RlZmluaXRpb25GYWN0b3J5KTogTm9kZURlZjtcbiAgICB0aGlzLm5vZGVzW25vZGVJbmRleF0gPSAoKSA9PiAoe1xuICAgICAgc291cmNlU3BhbjogYXN0LnNvdXJjZVNwYW4sXG4gICAgICBub2RlRmxhZ3M6IE5vZGVGbGFncy5UeXBlRWxlbWVudCB8IGZsYWdzLFxuICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLmFuY2hvckRlZikuY2FsbEZuKFtcbiAgICAgICAgby5saXRlcmFsKGZsYWdzKSxcbiAgICAgICAgcXVlcnlNYXRjaGVzRXhwcixcbiAgICAgICAgby5saXRlcmFsKGFzdC5uZ0NvbnRlbnRJbmRleCksXG4gICAgICAgIG8ubGl0ZXJhbChjaGlsZENvdW50KSxcbiAgICAgICAgdGhpcy5fY3JlYXRlRWxlbWVudEhhbmRsZUV2ZW50Rm4obm9kZUluZGV4LCBob3N0RXZlbnRzKSxcbiAgICAgICAgby52YXJpYWJsZShjaGlsZFZpc2l0b3Iudmlld05hbWUpLFxuICAgICAgXSlcbiAgICB9KTtcbiAgfVxuXG4gIHZpc2l0RWxlbWVudChhc3Q6IEVsZW1lbnRBc3QsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgY29uc3Qgbm9kZUluZGV4ID0gdGhpcy5ub2Rlcy5sZW5ndGg7XG4gICAgLy8gcmVzZXJ2ZSB0aGUgc3BhY2UgaW4gdGhlIG5vZGVEZWZzIGFycmF5IHNvIHdlIGNhbiBhZGQgY2hpbGRyZW5cbiAgICB0aGlzLm5vZGVzLnB1c2gobnVsbCAhKTtcblxuICAgIC8vIFVzaW5nIGEgbnVsbCBlbGVtZW50IG5hbWUgY3JlYXRlcyBhbiBhbmNob3IuXG4gICAgY29uc3QgZWxOYW1lOiBzdHJpbmd8bnVsbCA9IGlzTmdDb250YWluZXIoYXN0Lm5hbWUpID8gbnVsbCA6IGFzdC5uYW1lO1xuXG4gICAgY29uc3Qge2ZsYWdzLCB1c2VkRXZlbnRzLCBxdWVyeU1hdGNoZXNFeHByLCBob3N0QmluZGluZ3M6IGRpckhvc3RCaW5kaW5ncywgaG9zdEV2ZW50c30gPVxuICAgICAgICB0aGlzLl92aXNpdEVsZW1lbnRPclRlbXBsYXRlKG5vZGVJbmRleCwgYXN0KTtcblxuICAgIGxldCBpbnB1dERlZnM6IG8uRXhwcmVzc2lvbltdID0gW107XG4gICAgbGV0IHVwZGF0ZVJlbmRlcmVyRXhwcmVzc2lvbnM6IFVwZGF0ZUV4cHJlc3Npb25bXSA9IFtdO1xuICAgIGxldCBvdXRwdXREZWZzOiBvLkV4cHJlc3Npb25bXSA9IFtdO1xuICAgIGlmIChlbE5hbWUpIHtcbiAgICAgIGNvbnN0IGhvc3RCaW5kaW5nczogYW55W10gPSBhc3QuaW5wdXRzXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5tYXAoKGlucHV0QXN0KSA9PiAoe1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGV4dDogQ09NUF9WQVIgYXMgby5FeHByZXNzaW9uLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW5wdXRBc3QsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkaXJBc3Q6IG51bGwgYXMgYW55LFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH0pKVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuY29uY2F0KGRpckhvc3RCaW5kaW5ncyk7XG4gICAgICBpZiAoaG9zdEJpbmRpbmdzLmxlbmd0aCkge1xuICAgICAgICB1cGRhdGVSZW5kZXJlckV4cHJlc3Npb25zID1cbiAgICAgICAgICAgIGhvc3RCaW5kaW5ncy5tYXAoKGhvc3RCaW5kaW5nLCBiaW5kaW5nSW5kZXgpID0+IHRoaXMuX3ByZXByb2Nlc3NVcGRhdGVFeHByZXNzaW9uKHtcbiAgICAgICAgICAgICAgY29udGV4dDogaG9zdEJpbmRpbmcuY29udGV4dCxcbiAgICAgICAgICAgICAgbm9kZUluZGV4LFxuICAgICAgICAgICAgICBiaW5kaW5nSW5kZXgsXG4gICAgICAgICAgICAgIHNvdXJjZVNwYW46IGhvc3RCaW5kaW5nLmlucHV0QXN0LnNvdXJjZVNwYW4sXG4gICAgICAgICAgICAgIHZhbHVlOiBob3N0QmluZGluZy5pbnB1dEFzdC52YWx1ZVxuICAgICAgICAgICAgfSkpO1xuICAgICAgICBpbnB1dERlZnMgPSBob3N0QmluZGluZ3MubWFwKFxuICAgICAgICAgICAgaG9zdEJpbmRpbmcgPT4gZWxlbWVudEJpbmRpbmdEZWYoaG9zdEJpbmRpbmcuaW5wdXRBc3QsIGhvc3RCaW5kaW5nLmRpckFzdCkpO1xuICAgICAgfVxuICAgICAgb3V0cHV0RGVmcyA9IHVzZWRFdmVudHMubWFwKFxuICAgICAgICAgIChbdGFyZ2V0LCBldmVudE5hbWVdKSA9PiBvLmxpdGVyYWxBcnIoW28ubGl0ZXJhbCh0YXJnZXQpLCBvLmxpdGVyYWwoZXZlbnROYW1lKV0pKTtcbiAgICB9XG5cbiAgICB0ZW1wbGF0ZVZpc2l0QWxsKHRoaXMsIGFzdC5jaGlsZHJlbik7XG5cbiAgICBjb25zdCBjaGlsZENvdW50ID0gdGhpcy5ub2Rlcy5sZW5ndGggLSBub2RlSW5kZXggLSAxO1xuXG4gICAgY29uc3QgY29tcEFzdCA9IGFzdC5kaXJlY3RpdmVzLmZpbmQoZGlyQXN0ID0+IGRpckFzdC5kaXJlY3RpdmUuaXNDb21wb25lbnQpO1xuICAgIGxldCBjb21wUmVuZGVyZXJUeXBlID0gby5OVUxMX0VYUFIgYXMgby5FeHByZXNzaW9uO1xuICAgIGxldCBjb21wVmlldyA9IG8uTlVMTF9FWFBSIGFzIG8uRXhwcmVzc2lvbjtcbiAgICBpZiAoY29tcEFzdCkge1xuICAgICAgY29tcFZpZXcgPSB0aGlzLm91dHB1dEN0eC5pbXBvcnRFeHByKGNvbXBBc3QuZGlyZWN0aXZlLmNvbXBvbmVudFZpZXdUeXBlKTtcbiAgICAgIGNvbXBSZW5kZXJlclR5cGUgPSB0aGlzLm91dHB1dEN0eC5pbXBvcnRFeHByKGNvbXBBc3QuZGlyZWN0aXZlLnJlbmRlcmVyVHlwZSk7XG4gICAgfVxuXG4gICAgLy8gQ2hlY2sgaW5kZXggaXMgdGhlIHNhbWUgYXMgdGhlIG5vZGUgaW5kZXggZHVyaW5nIGNvbXBpbGF0aW9uXG4gICAgLy8gVGhleSBtaWdodCBvbmx5IGRpZmZlciBhdCBydW50aW1lXG4gICAgY29uc3QgY2hlY2tJbmRleCA9IG5vZGVJbmRleDtcblxuICAgIHRoaXMubm9kZXNbbm9kZUluZGV4XSA9ICgpID0+ICh7XG4gICAgICBzb3VyY2VTcGFuOiBhc3Quc291cmNlU3BhbixcbiAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVFbGVtZW50IHwgZmxhZ3MsXG4gICAgICBub2RlRGVmOiBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMuZWxlbWVudERlZikuY2FsbEZuKFtcbiAgICAgICAgby5saXRlcmFsKGNoZWNrSW5kZXgpLFxuICAgICAgICBvLmxpdGVyYWwoZmxhZ3MpLFxuICAgICAgICBxdWVyeU1hdGNoZXNFeHByLFxuICAgICAgICBvLmxpdGVyYWwoYXN0Lm5nQ29udGVudEluZGV4KSxcbiAgICAgICAgby5saXRlcmFsKGNoaWxkQ291bnQpLFxuICAgICAgICBvLmxpdGVyYWwoZWxOYW1lKSxcbiAgICAgICAgZWxOYW1lID8gZml4ZWRBdHRyc0RlZihhc3QpIDogby5OVUxMX0VYUFIsXG4gICAgICAgIGlucHV0RGVmcy5sZW5ndGggPyBvLmxpdGVyYWxBcnIoaW5wdXREZWZzKSA6IG8uTlVMTF9FWFBSLFxuICAgICAgICBvdXRwdXREZWZzLmxlbmd0aCA/IG8ubGl0ZXJhbEFycihvdXRwdXREZWZzKSA6IG8uTlVMTF9FWFBSLFxuICAgICAgICB0aGlzLl9jcmVhdGVFbGVtZW50SGFuZGxlRXZlbnRGbihub2RlSW5kZXgsIGhvc3RFdmVudHMpLFxuICAgICAgICBjb21wVmlldyxcbiAgICAgICAgY29tcFJlbmRlcmVyVHlwZSxcbiAgICAgIF0pLFxuICAgICAgdXBkYXRlUmVuZGVyZXI6IHVwZGF0ZVJlbmRlcmVyRXhwcmVzc2lvbnNcbiAgICB9KTtcbiAgfVxuXG4gIHByaXZhdGUgX3Zpc2l0RWxlbWVudE9yVGVtcGxhdGUobm9kZUluZGV4OiBudW1iZXIsIGFzdDoge1xuICAgIGhhc1ZpZXdDb250YWluZXI6IGJvb2xlYW4sXG4gICAgb3V0cHV0czogQm91bmRFdmVudEFzdFtdLFxuICAgIGRpcmVjdGl2ZXM6IERpcmVjdGl2ZUFzdFtdLFxuICAgIHByb3ZpZGVyczogUHJvdmlkZXJBc3RbXSxcbiAgICByZWZlcmVuY2VzOiBSZWZlcmVuY2VBc3RbXSxcbiAgICBxdWVyeU1hdGNoZXM6IFF1ZXJ5TWF0Y2hbXVxuICB9KToge1xuICAgIGZsYWdzOiBOb2RlRmxhZ3MsXG4gICAgdXNlZEV2ZW50czogW3N0cmluZyB8IG51bGwsIHN0cmluZ11bXSxcbiAgICBxdWVyeU1hdGNoZXNFeHByOiBvLkV4cHJlc3Npb24sXG4gICAgaG9zdEJpbmRpbmdzOlxuICAgICAgICB7Y29udGV4dDogby5FeHByZXNzaW9uLCBpbnB1dEFzdDogQm91bmRFbGVtZW50UHJvcGVydHlBc3QsIGRpckFzdDogRGlyZWN0aXZlQXN0fVtdLFxuICAgIGhvc3RFdmVudHM6IHtjb250ZXh0OiBvLkV4cHJlc3Npb24sIGV2ZW50QXN0OiBCb3VuZEV2ZW50QXN0LCBkaXJBc3Q6IERpcmVjdGl2ZUFzdH1bXSxcbiAgfSB7XG4gICAgbGV0IGZsYWdzID0gTm9kZUZsYWdzLk5vbmU7XG4gICAgaWYgKGFzdC5oYXNWaWV3Q29udGFpbmVyKSB7XG4gICAgICBmbGFncyB8PSBOb2RlRmxhZ3MuRW1iZWRkZWRWaWV3cztcbiAgICB9XG4gICAgY29uc3QgdXNlZEV2ZW50cyA9IG5ldyBNYXA8c3RyaW5nLCBbc3RyaW5nIHwgbnVsbCwgc3RyaW5nXT4oKTtcbiAgICBhc3Qub3V0cHV0cy5mb3JFYWNoKChldmVudCkgPT4ge1xuICAgICAgY29uc3Qge25hbWUsIHRhcmdldH0gPSBlbGVtZW50RXZlbnROYW1lQW5kVGFyZ2V0KGV2ZW50LCBudWxsKTtcbiAgICAgIHVzZWRFdmVudHMuc2V0KGVsZW1lbnRFdmVudEZ1bGxOYW1lKHRhcmdldCwgbmFtZSksIFt0YXJnZXQsIG5hbWVdKTtcbiAgICB9KTtcbiAgICBhc3QuZGlyZWN0aXZlcy5mb3JFYWNoKChkaXJBc3QpID0+IHtcbiAgICAgIGRpckFzdC5ob3N0RXZlbnRzLmZvckVhY2goKGV2ZW50KSA9PiB7XG4gICAgICAgIGNvbnN0IHtuYW1lLCB0YXJnZXR9ID0gZWxlbWVudEV2ZW50TmFtZUFuZFRhcmdldChldmVudCwgZGlyQXN0KTtcbiAgICAgICAgdXNlZEV2ZW50cy5zZXQoZWxlbWVudEV2ZW50RnVsbE5hbWUodGFyZ2V0LCBuYW1lKSwgW3RhcmdldCwgbmFtZV0pO1xuICAgICAgfSk7XG4gICAgfSk7XG4gICAgY29uc3QgaG9zdEJpbmRpbmdzOlxuICAgICAgICB7Y29udGV4dDogby5FeHByZXNzaW9uLCBpbnB1dEFzdDogQm91bmRFbGVtZW50UHJvcGVydHlBc3QsIGRpckFzdDogRGlyZWN0aXZlQXN0fVtdID0gW107XG4gICAgY29uc3QgaG9zdEV2ZW50czoge2NvbnRleHQ6IG8uRXhwcmVzc2lvbiwgZXZlbnRBc3Q6IEJvdW5kRXZlbnRBc3QsIGRpckFzdDogRGlyZWN0aXZlQXN0fVtdID0gW107XG4gICAgdGhpcy5fdmlzaXRDb21wb25lbnRGYWN0b3J5UmVzb2x2ZXJQcm92aWRlcihhc3QuZGlyZWN0aXZlcyk7XG5cbiAgICBhc3QucHJvdmlkZXJzLmZvckVhY2gocHJvdmlkZXJBc3QgPT4ge1xuICAgICAgbGV0IGRpckFzdDogRGlyZWN0aXZlQXN0ID0gdW5kZWZpbmVkICE7XG4gICAgICBhc3QuZGlyZWN0aXZlcy5mb3JFYWNoKGxvY2FsRGlyQXN0ID0+IHtcbiAgICAgICAgaWYgKGxvY2FsRGlyQXN0LmRpcmVjdGl2ZS50eXBlLnJlZmVyZW5jZSA9PT0gdG9rZW5SZWZlcmVuY2UocHJvdmlkZXJBc3QudG9rZW4pKSB7XG4gICAgICAgICAgZGlyQXN0ID0gbG9jYWxEaXJBc3Q7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgICAgaWYgKGRpckFzdCkge1xuICAgICAgICBjb25zdCB7aG9zdEJpbmRpbmdzOiBkaXJIb3N0QmluZGluZ3MsIGhvc3RFdmVudHM6IGRpckhvc3RFdmVudHN9ID1cbiAgICAgICAgICAgIHRoaXMuX3Zpc2l0RGlyZWN0aXZlKHByb3ZpZGVyQXN0LCBkaXJBc3QsIGFzdC5yZWZlcmVuY2VzLCBhc3QucXVlcnlNYXRjaGVzLCB1c2VkRXZlbnRzKTtcbiAgICAgICAgaG9zdEJpbmRpbmdzLnB1c2goLi4uZGlySG9zdEJpbmRpbmdzKTtcbiAgICAgICAgaG9zdEV2ZW50cy5wdXNoKC4uLmRpckhvc3RFdmVudHMpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdGhpcy5fdmlzaXRQcm92aWRlcihwcm92aWRlckFzdCwgYXN0LnF1ZXJ5TWF0Y2hlcyk7XG4gICAgICB9XG4gICAgfSk7XG5cbiAgICBsZXQgcXVlcnlNYXRjaEV4cHJzOiBvLkV4cHJlc3Npb25bXSA9IFtdO1xuICAgIGFzdC5xdWVyeU1hdGNoZXMuZm9yRWFjaCgobWF0Y2gpID0+IHtcbiAgICAgIGxldCB2YWx1ZVR5cGU6IFF1ZXJ5VmFsdWVUeXBlID0gdW5kZWZpbmVkICE7XG4gICAgICBpZiAodG9rZW5SZWZlcmVuY2UobWF0Y2gudmFsdWUpID09PVxuICAgICAgICAgIHRoaXMucmVmbGVjdG9yLnJlc29sdmVFeHRlcm5hbFJlZmVyZW5jZShJZGVudGlmaWVycy5FbGVtZW50UmVmKSkge1xuICAgICAgICB2YWx1ZVR5cGUgPSBRdWVyeVZhbHVlVHlwZS5FbGVtZW50UmVmO1xuICAgICAgfSBlbHNlIGlmIChcbiAgICAgICAgICB0b2tlblJlZmVyZW5jZShtYXRjaC52YWx1ZSkgPT09XG4gICAgICAgICAgdGhpcy5yZWZsZWN0b3IucmVzb2x2ZUV4dGVybmFsUmVmZXJlbmNlKElkZW50aWZpZXJzLlZpZXdDb250YWluZXJSZWYpKSB7XG4gICAgICAgIHZhbHVlVHlwZSA9IFF1ZXJ5VmFsdWVUeXBlLlZpZXdDb250YWluZXJSZWY7XG4gICAgICB9IGVsc2UgaWYgKFxuICAgICAgICAgIHRva2VuUmVmZXJlbmNlKG1hdGNoLnZhbHVlKSA9PT1cbiAgICAgICAgICB0aGlzLnJlZmxlY3Rvci5yZXNvbHZlRXh0ZXJuYWxSZWZlcmVuY2UoSWRlbnRpZmllcnMuVGVtcGxhdGVSZWYpKSB7XG4gICAgICAgIHZhbHVlVHlwZSA9IFF1ZXJ5VmFsdWVUeXBlLlRlbXBsYXRlUmVmO1xuICAgICAgfVxuICAgICAgaWYgKHZhbHVlVHlwZSAhPSBudWxsKSB7XG4gICAgICAgIHF1ZXJ5TWF0Y2hFeHBycy5wdXNoKG8ubGl0ZXJhbEFycihbby5saXRlcmFsKG1hdGNoLnF1ZXJ5SWQpLCBvLmxpdGVyYWwodmFsdWVUeXBlKV0pKTtcbiAgICAgIH1cbiAgICB9KTtcbiAgICBhc3QucmVmZXJlbmNlcy5mb3JFYWNoKChyZWYpID0+IHtcbiAgICAgIGxldCB2YWx1ZVR5cGU6IFF1ZXJ5VmFsdWVUeXBlID0gdW5kZWZpbmVkICE7XG4gICAgICBpZiAoIXJlZi52YWx1ZSkge1xuICAgICAgICB2YWx1ZVR5cGUgPSBRdWVyeVZhbHVlVHlwZS5SZW5kZXJFbGVtZW50O1xuICAgICAgfSBlbHNlIGlmIChcbiAgICAgICAgICB0b2tlblJlZmVyZW5jZShyZWYudmFsdWUpID09PVxuICAgICAgICAgIHRoaXMucmVmbGVjdG9yLnJlc29sdmVFeHRlcm5hbFJlZmVyZW5jZShJZGVudGlmaWVycy5UZW1wbGF0ZVJlZikpIHtcbiAgICAgICAgdmFsdWVUeXBlID0gUXVlcnlWYWx1ZVR5cGUuVGVtcGxhdGVSZWY7XG4gICAgICB9XG4gICAgICBpZiAodmFsdWVUeXBlICE9IG51bGwpIHtcbiAgICAgICAgdGhpcy5yZWZOb2RlSW5kaWNlc1tyZWYubmFtZV0gPSBub2RlSW5kZXg7XG4gICAgICAgIHF1ZXJ5TWF0Y2hFeHBycy5wdXNoKG8ubGl0ZXJhbEFycihbby5saXRlcmFsKHJlZi5uYW1lKSwgby5saXRlcmFsKHZhbHVlVHlwZSldKSk7XG4gICAgICB9XG4gICAgfSk7XG4gICAgYXN0Lm91dHB1dHMuZm9yRWFjaCgob3V0cHV0QXN0KSA9PiB7XG4gICAgICBob3N0RXZlbnRzLnB1c2goe2NvbnRleHQ6IENPTVBfVkFSLCBldmVudEFzdDogb3V0cHV0QXN0LCBkaXJBc3Q6IG51bGwgIX0pO1xuICAgIH0pO1xuXG4gICAgcmV0dXJuIHtcbiAgICAgIGZsYWdzLFxuICAgICAgdXNlZEV2ZW50czogQXJyYXkuZnJvbSh1c2VkRXZlbnRzLnZhbHVlcygpKSxcbiAgICAgIHF1ZXJ5TWF0Y2hlc0V4cHI6IHF1ZXJ5TWF0Y2hFeHBycy5sZW5ndGggPyBvLmxpdGVyYWxBcnIocXVlcnlNYXRjaEV4cHJzKSA6IG8uTlVMTF9FWFBSLFxuICAgICAgaG9zdEJpbmRpbmdzLFxuICAgICAgaG9zdEV2ZW50czogaG9zdEV2ZW50c1xuICAgIH07XG4gIH1cblxuICBwcml2YXRlIF92aXNpdERpcmVjdGl2ZShcbiAgICAgIHByb3ZpZGVyQXN0OiBQcm92aWRlckFzdCwgZGlyQXN0OiBEaXJlY3RpdmVBc3QsIHJlZnM6IFJlZmVyZW5jZUFzdFtdLFxuICAgICAgcXVlcnlNYXRjaGVzOiBRdWVyeU1hdGNoW10sIHVzZWRFdmVudHM6IE1hcDxzdHJpbmcsIGFueT4pOiB7XG4gICAgaG9zdEJpbmRpbmdzOlxuICAgICAgICB7Y29udGV4dDogby5FeHByZXNzaW9uLCBpbnB1dEFzdDogQm91bmRFbGVtZW50UHJvcGVydHlBc3QsIGRpckFzdDogRGlyZWN0aXZlQXN0fVtdLFxuICAgIGhvc3RFdmVudHM6IHtjb250ZXh0OiBvLkV4cHJlc3Npb24sIGV2ZW50QXN0OiBCb3VuZEV2ZW50QXN0LCBkaXJBc3Q6IERpcmVjdGl2ZUFzdH1bXVxuICB9IHtcbiAgICBjb25zdCBub2RlSW5kZXggPSB0aGlzLm5vZGVzLmxlbmd0aDtcbiAgICAvLyByZXNlcnZlIHRoZSBzcGFjZSBpbiB0aGUgbm9kZURlZnMgYXJyYXkgc28gd2UgY2FuIGFkZCBjaGlsZHJlblxuICAgIHRoaXMubm9kZXMucHVzaChudWxsICEpO1xuXG4gICAgZGlyQXN0LmRpcmVjdGl2ZS5xdWVyaWVzLmZvckVhY2goKHF1ZXJ5LCBxdWVyeUluZGV4KSA9PiB7XG4gICAgICBjb25zdCBxdWVyeUlkID0gZGlyQXN0LmNvbnRlbnRRdWVyeVN0YXJ0SWQgKyBxdWVyeUluZGV4O1xuICAgICAgY29uc3QgZmxhZ3MgPSBOb2RlRmxhZ3MuVHlwZUNvbnRlbnRRdWVyeSB8IGNhbGNTdGF0aWNEeW5hbWljUXVlcnlGbGFncyhxdWVyeSk7XG4gICAgICBjb25zdCBiaW5kaW5nVHlwZSA9IHF1ZXJ5LmZpcnN0ID8gUXVlcnlCaW5kaW5nVHlwZS5GaXJzdCA6IFF1ZXJ5QmluZGluZ1R5cGUuQWxsO1xuICAgICAgdGhpcy5ub2Rlcy5wdXNoKCgpID0+ICh7XG4gICAgICAgICAgICAgICAgICAgICAgICBzb3VyY2VTcGFuOiBkaXJBc3Quc291cmNlU3BhbixcbiAgICAgICAgICAgICAgICAgICAgICAgIG5vZGVGbGFnczogZmxhZ3MsXG4gICAgICAgICAgICAgICAgICAgICAgICBub2RlRGVmOiBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMucXVlcnlEZWYpLmNhbGxGbihbXG4gICAgICAgICAgICAgICAgICAgICAgICAgIG8ubGl0ZXJhbChmbGFncyksIG8ubGl0ZXJhbChxdWVyeUlkKSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgbmV3IG8uTGl0ZXJhbE1hcEV4cHIoW25ldyBvLkxpdGVyYWxNYXBFbnRyeShcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHF1ZXJ5LnByb3BlcnR5TmFtZSwgby5saXRlcmFsKGJpbmRpbmdUeXBlKSwgZmFsc2UpXSlcbiAgICAgICAgICAgICAgICAgICAgICAgIF0pLFxuICAgICAgICAgICAgICAgICAgICAgIH0pKTtcbiAgICB9KTtcblxuICAgIC8vIE5vdGU6IHRoZSBvcGVyYXRpb24gYmVsb3cgbWlnaHQgYWxzbyBjcmVhdGUgbmV3IG5vZGVEZWZzLFxuICAgIC8vIGJ1dCB3ZSBkb24ndCB3YW50IHRoZW0gdG8gYmUgYSBjaGlsZCBvZiBhIGRpcmVjdGl2ZSxcbiAgICAvLyBhcyB0aGV5IG1pZ2h0IGJlIGEgcHJvdmlkZXIvcGlwZSBvbiB0aGVpciBvd24uXG4gICAgLy8gSS5lLiB3ZSBvbmx5IGFsbG93IHF1ZXJpZXMgYXMgY2hpbGRyZW4gb2YgZGlyZWN0aXZlcyBub2Rlcy5cbiAgICBjb25zdCBjaGlsZENvdW50ID0gdGhpcy5ub2Rlcy5sZW5ndGggLSBub2RlSW5kZXggLSAxO1xuXG4gICAgbGV0IHtmbGFncywgcXVlcnlNYXRjaEV4cHJzLCBwcm92aWRlckV4cHIsIGRlcHNFeHByfSA9XG4gICAgICAgIHRoaXMuX3Zpc2l0UHJvdmlkZXJPckRpcmVjdGl2ZShwcm92aWRlckFzdCwgcXVlcnlNYXRjaGVzKTtcblxuICAgIHJlZnMuZm9yRWFjaCgocmVmKSA9PiB7XG4gICAgICBpZiAocmVmLnZhbHVlICYmIHRva2VuUmVmZXJlbmNlKHJlZi52YWx1ZSkgPT09IHRva2VuUmVmZXJlbmNlKHByb3ZpZGVyQXN0LnRva2VuKSkge1xuICAgICAgICB0aGlzLnJlZk5vZGVJbmRpY2VzW3JlZi5uYW1lXSA9IG5vZGVJbmRleDtcbiAgICAgICAgcXVlcnlNYXRjaEV4cHJzLnB1c2goXG4gICAgICAgICAgICBvLmxpdGVyYWxBcnIoW28ubGl0ZXJhbChyZWYubmFtZSksIG8ubGl0ZXJhbChRdWVyeVZhbHVlVHlwZS5Qcm92aWRlcildKSk7XG4gICAgICB9XG4gICAgfSk7XG5cbiAgICBpZiAoZGlyQXN0LmRpcmVjdGl2ZS5pc0NvbXBvbmVudCkge1xuICAgICAgZmxhZ3MgfD0gTm9kZUZsYWdzLkNvbXBvbmVudDtcbiAgICB9XG5cbiAgICBjb25zdCBpbnB1dERlZnMgPSBkaXJBc3QuaW5wdXRzLm1hcCgoaW5wdXRBc3QsIGlucHV0SW5kZXgpID0+IHtcbiAgICAgIGNvbnN0IG1hcFZhbHVlID0gby5saXRlcmFsQXJyKFtvLmxpdGVyYWwoaW5wdXRJbmRleCksIG8ubGl0ZXJhbChpbnB1dEFzdC5kaXJlY3RpdmVOYW1lKV0pO1xuICAgICAgLy8gTm90ZTogaXQncyBpbXBvcnRhbnQgdG8gbm90IHF1b3RlIHRoZSBrZXkgc28gdGhhdCB3ZSBjYW4gY2FwdHVyZSByZW5hbWVzIGJ5IG1pbmlmaWVycyFcbiAgICAgIHJldHVybiBuZXcgby5MaXRlcmFsTWFwRW50cnkoaW5wdXRBc3QuZGlyZWN0aXZlTmFtZSwgbWFwVmFsdWUsIGZhbHNlKTtcbiAgICB9KTtcblxuICAgIGNvbnN0IG91dHB1dERlZnM6IG8uTGl0ZXJhbE1hcEVudHJ5W10gPSBbXTtcbiAgICBjb25zdCBkaXJNZXRhID0gZGlyQXN0LmRpcmVjdGl2ZTtcbiAgICBPYmplY3Qua2V5cyhkaXJNZXRhLm91dHB1dHMpLmZvckVhY2goKHByb3BOYW1lKSA9PiB7XG4gICAgICBjb25zdCBldmVudE5hbWUgPSBkaXJNZXRhLm91dHB1dHNbcHJvcE5hbWVdO1xuICAgICAgaWYgKHVzZWRFdmVudHMuaGFzKGV2ZW50TmFtZSkpIHtcbiAgICAgICAgLy8gTm90ZTogaXQncyBpbXBvcnRhbnQgdG8gbm90IHF1b3RlIHRoZSBrZXkgc28gdGhhdCB3ZSBjYW4gY2FwdHVyZSByZW5hbWVzIGJ5IG1pbmlmaWVycyFcbiAgICAgICAgb3V0cHV0RGVmcy5wdXNoKG5ldyBvLkxpdGVyYWxNYXBFbnRyeShwcm9wTmFtZSwgby5saXRlcmFsKGV2ZW50TmFtZSksIGZhbHNlKSk7XG4gICAgICB9XG4gICAgfSk7XG4gICAgbGV0IHVwZGF0ZURpcmVjdGl2ZUV4cHJlc3Npb25zOiBVcGRhdGVFeHByZXNzaW9uW10gPSBbXTtcbiAgICBpZiAoZGlyQXN0LmlucHV0cy5sZW5ndGggfHwgKGZsYWdzICYgKE5vZGVGbGFncy5Eb0NoZWNrIHwgTm9kZUZsYWdzLk9uSW5pdCkpID4gMCkge1xuICAgICAgdXBkYXRlRGlyZWN0aXZlRXhwcmVzc2lvbnMgPVxuICAgICAgICAgIGRpckFzdC5pbnB1dHMubWFwKChpbnB1dCwgYmluZGluZ0luZGV4KSA9PiB0aGlzLl9wcmVwcm9jZXNzVXBkYXRlRXhwcmVzc2lvbih7XG4gICAgICAgICAgICBub2RlSW5kZXgsXG4gICAgICAgICAgICBiaW5kaW5nSW5kZXgsXG4gICAgICAgICAgICBzb3VyY2VTcGFuOiBpbnB1dC5zb3VyY2VTcGFuLFxuICAgICAgICAgICAgY29udGV4dDogQ09NUF9WQVIsXG4gICAgICAgICAgICB2YWx1ZTogaW5wdXQudmFsdWVcbiAgICAgICAgICB9KSk7XG4gICAgfVxuXG4gICAgY29uc3QgZGlyQ29udGV4dEV4cHIgPVxuICAgICAgICBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMubm9kZVZhbHVlKS5jYWxsRm4oW1ZJRVdfVkFSLCBvLmxpdGVyYWwobm9kZUluZGV4KV0pO1xuICAgIGNvbnN0IGhvc3RCaW5kaW5ncyA9IGRpckFzdC5ob3N0UHJvcGVydGllcy5tYXAoKGlucHV0QXN0KSA9PiAoe1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250ZXh0OiBkaXJDb250ZXh0RXhwcixcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGlyQXN0LFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnB1dEFzdCxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH0pKTtcbiAgICBjb25zdCBob3N0RXZlbnRzID0gZGlyQXN0Lmhvc3RFdmVudHMubWFwKChob3N0RXZlbnRBc3QpID0+ICh7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRleHQ6IGRpckNvbnRleHRFeHByLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBldmVudEFzdDogaG9zdEV2ZW50QXN0LCBkaXJBc3QsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9KSk7XG5cbiAgICAvLyBDaGVjayBpbmRleCBpcyB0aGUgc2FtZSBhcyB0aGUgbm9kZSBpbmRleCBkdXJpbmcgY29tcGlsYXRpb25cbiAgICAvLyBUaGV5IG1pZ2h0IG9ubHkgZGlmZmVyIGF0IHJ1bnRpbWVcbiAgICBjb25zdCBjaGVja0luZGV4ID0gbm9kZUluZGV4O1xuXG4gICAgdGhpcy5ub2Rlc1tub2RlSW5kZXhdID0gKCkgPT4gKHtcbiAgICAgIHNvdXJjZVNwYW46IGRpckFzdC5zb3VyY2VTcGFuLFxuICAgICAgbm9kZUZsYWdzOiBOb2RlRmxhZ3MuVHlwZURpcmVjdGl2ZSB8IGZsYWdzLFxuICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLmRpcmVjdGl2ZURlZikuY2FsbEZuKFtcbiAgICAgICAgby5saXRlcmFsKGNoZWNrSW5kZXgpLFxuICAgICAgICBvLmxpdGVyYWwoZmxhZ3MpLFxuICAgICAgICBxdWVyeU1hdGNoRXhwcnMubGVuZ3RoID8gby5saXRlcmFsQXJyKHF1ZXJ5TWF0Y2hFeHBycykgOiBvLk5VTExfRVhQUixcbiAgICAgICAgby5saXRlcmFsKGNoaWxkQ291bnQpLFxuICAgICAgICBwcm92aWRlckV4cHIsXG4gICAgICAgIGRlcHNFeHByLFxuICAgICAgICBpbnB1dERlZnMubGVuZ3RoID8gbmV3IG8uTGl0ZXJhbE1hcEV4cHIoaW5wdXREZWZzKSA6IG8uTlVMTF9FWFBSLFxuICAgICAgICBvdXRwdXREZWZzLmxlbmd0aCA/IG5ldyBvLkxpdGVyYWxNYXBFeHByKG91dHB1dERlZnMpIDogby5OVUxMX0VYUFIsXG4gICAgICBdKSxcbiAgICAgIHVwZGF0ZURpcmVjdGl2ZXM6IHVwZGF0ZURpcmVjdGl2ZUV4cHJlc3Npb25zLFxuICAgICAgZGlyZWN0aXZlOiBkaXJBc3QuZGlyZWN0aXZlLnR5cGUsXG4gICAgfSk7XG5cbiAgICByZXR1cm4ge2hvc3RCaW5kaW5ncywgaG9zdEV2ZW50c307XG4gIH1cblxuICBwcml2YXRlIF92aXNpdFByb3ZpZGVyKHByb3ZpZGVyQXN0OiBQcm92aWRlckFzdCwgcXVlcnlNYXRjaGVzOiBRdWVyeU1hdGNoW10pOiB2b2lkIHtcbiAgICB0aGlzLl9hZGRQcm92aWRlck5vZGUodGhpcy5fdmlzaXRQcm92aWRlck9yRGlyZWN0aXZlKHByb3ZpZGVyQXN0LCBxdWVyeU1hdGNoZXMpKTtcbiAgfVxuXG4gIHByaXZhdGUgX3Zpc2l0Q29tcG9uZW50RmFjdG9yeVJlc29sdmVyUHJvdmlkZXIoZGlyZWN0aXZlczogRGlyZWN0aXZlQXN0W10pIHtcbiAgICBjb25zdCBjb21wb25lbnREaXJNZXRhID0gZGlyZWN0aXZlcy5maW5kKGRpckFzdCA9PiBkaXJBc3QuZGlyZWN0aXZlLmlzQ29tcG9uZW50KTtcbiAgICBpZiAoY29tcG9uZW50RGlyTWV0YSAmJiBjb21wb25lbnREaXJNZXRhLmRpcmVjdGl2ZS5lbnRyeUNvbXBvbmVudHMubGVuZ3RoKSB7XG4gICAgICBjb25zdCB7cHJvdmlkZXJFeHByLCBkZXBzRXhwciwgZmxhZ3MsIHRva2VuRXhwcn0gPSBjb21wb25lbnRGYWN0b3J5UmVzb2x2ZXJQcm92aWRlckRlZihcbiAgICAgICAgICB0aGlzLnJlZmxlY3RvciwgdGhpcy5vdXRwdXRDdHgsIE5vZGVGbGFncy5Qcml2YXRlUHJvdmlkZXIsXG4gICAgICAgICAgY29tcG9uZW50RGlyTWV0YS5kaXJlY3RpdmUuZW50cnlDb21wb25lbnRzKTtcbiAgICAgIHRoaXMuX2FkZFByb3ZpZGVyTm9kZSh7XG4gICAgICAgIHByb3ZpZGVyRXhwcixcbiAgICAgICAgZGVwc0V4cHIsXG4gICAgICAgIGZsYWdzLFxuICAgICAgICB0b2tlbkV4cHIsXG4gICAgICAgIHF1ZXJ5TWF0Y2hFeHByczogW10sXG4gICAgICAgIHNvdXJjZVNwYW46IGNvbXBvbmVudERpck1ldGEuc291cmNlU3BhblxuICAgICAgfSk7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBfYWRkUHJvdmlkZXJOb2RlKGRhdGE6IHtcbiAgICBmbGFnczogTm9kZUZsYWdzLFxuICAgIHF1ZXJ5TWF0Y2hFeHByczogby5FeHByZXNzaW9uW10sXG4gICAgcHJvdmlkZXJFeHByOiBvLkV4cHJlc3Npb24sXG4gICAgZGVwc0V4cHI6IG8uRXhwcmVzc2lvbixcbiAgICB0b2tlbkV4cHI6IG8uRXhwcmVzc2lvbixcbiAgICBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW5cbiAgfSkge1xuICAgIC8vIHByb3ZpZGVyRGVmKFxuICAgIC8vICAgZmxhZ3M6IE5vZGVGbGFncywgbWF0Y2hlZFF1ZXJpZXM6IFtzdHJpbmcsIFF1ZXJ5VmFsdWVUeXBlXVtdLCB0b2tlbjphbnksXG4gICAgLy8gICB2YWx1ZTogYW55LCBkZXBzOiAoW0RlcEZsYWdzLCBhbnldIHwgYW55KVtdKTogTm9kZURlZjtcbiAgICB0aGlzLm5vZGVzLnB1c2goXG4gICAgICAgICgpID0+ICh7XG4gICAgICAgICAgc291cmNlU3BhbjogZGF0YS5zb3VyY2VTcGFuLFxuICAgICAgICAgIG5vZGVGbGFnczogZGF0YS5mbGFncyxcbiAgICAgICAgICBub2RlRGVmOiBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMucHJvdmlkZXJEZWYpLmNhbGxGbihbXG4gICAgICAgICAgICBvLmxpdGVyYWwoZGF0YS5mbGFncyksXG4gICAgICAgICAgICBkYXRhLnF1ZXJ5TWF0Y2hFeHBycy5sZW5ndGggPyBvLmxpdGVyYWxBcnIoZGF0YS5xdWVyeU1hdGNoRXhwcnMpIDogby5OVUxMX0VYUFIsXG4gICAgICAgICAgICBkYXRhLnRva2VuRXhwciwgZGF0YS5wcm92aWRlckV4cHIsIGRhdGEuZGVwc0V4cHJcbiAgICAgICAgICBdKVxuICAgICAgICB9KSk7XG4gIH1cblxuICBwcml2YXRlIF92aXNpdFByb3ZpZGVyT3JEaXJlY3RpdmUocHJvdmlkZXJBc3Q6IFByb3ZpZGVyQXN0LCBxdWVyeU1hdGNoZXM6IFF1ZXJ5TWF0Y2hbXSk6IHtcbiAgICBmbGFnczogTm9kZUZsYWdzLFxuICAgIHRva2VuRXhwcjogby5FeHByZXNzaW9uLFxuICAgIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbixcbiAgICBxdWVyeU1hdGNoRXhwcnM6IG8uRXhwcmVzc2lvbltdLFxuICAgIHByb3ZpZGVyRXhwcjogby5FeHByZXNzaW9uLFxuICAgIGRlcHNFeHByOiBvLkV4cHJlc3Npb25cbiAgfSB7XG4gICAgbGV0IGZsYWdzID0gTm9kZUZsYWdzLk5vbmU7XG4gICAgbGV0IHF1ZXJ5TWF0Y2hFeHByczogby5FeHByZXNzaW9uW10gPSBbXTtcblxuICAgIHF1ZXJ5TWF0Y2hlcy5mb3JFYWNoKChtYXRjaCkgPT4ge1xuICAgICAgaWYgKHRva2VuUmVmZXJlbmNlKG1hdGNoLnZhbHVlKSA9PT0gdG9rZW5SZWZlcmVuY2UocHJvdmlkZXJBc3QudG9rZW4pKSB7XG4gICAgICAgIHF1ZXJ5TWF0Y2hFeHBycy5wdXNoKFxuICAgICAgICAgICAgby5saXRlcmFsQXJyKFtvLmxpdGVyYWwobWF0Y2gucXVlcnlJZCksIG8ubGl0ZXJhbChRdWVyeVZhbHVlVHlwZS5Qcm92aWRlcildKSk7XG4gICAgICB9XG4gICAgfSk7XG4gICAgY29uc3Qge3Byb3ZpZGVyRXhwciwgZGVwc0V4cHIsIGZsYWdzOiBwcm92aWRlckZsYWdzLCB0b2tlbkV4cHJ9ID1cbiAgICAgICAgcHJvdmlkZXJEZWYodGhpcy5vdXRwdXRDdHgsIHByb3ZpZGVyQXN0KTtcbiAgICByZXR1cm4ge1xuICAgICAgZmxhZ3M6IGZsYWdzIHwgcHJvdmlkZXJGbGFncyxcbiAgICAgIHF1ZXJ5TWF0Y2hFeHBycyxcbiAgICAgIHByb3ZpZGVyRXhwcixcbiAgICAgIGRlcHNFeHByLFxuICAgICAgdG9rZW5FeHByLFxuICAgICAgc291cmNlU3BhbjogcHJvdmlkZXJBc3Quc291cmNlU3BhblxuICAgIH07XG4gIH1cblxuICBnZXRMb2NhbChuYW1lOiBzdHJpbmcpOiBvLkV4cHJlc3Npb258bnVsbCB7XG4gICAgaWYgKG5hbWUgPT0gRXZlbnRIYW5kbGVyVmFycy5ldmVudC5uYW1lKSB7XG4gICAgICByZXR1cm4gRXZlbnRIYW5kbGVyVmFycy5ldmVudDtcbiAgICB9XG4gICAgbGV0IGN1cnJWaWV3RXhwcjogby5FeHByZXNzaW9uID0gVklFV19WQVI7XG4gICAgZm9yIChsZXQgY3VyckJ1aWxkZXI6IFZpZXdCdWlsZGVyfG51bGwgPSB0aGlzOyBjdXJyQnVpbGRlcjsgY3VyckJ1aWxkZXIgPSBjdXJyQnVpbGRlci5wYXJlbnQsXG4gICAgICAgICAgICAgICAgICAgICAgICAgIGN1cnJWaWV3RXhwciA9IGN1cnJWaWV3RXhwci5wcm9wKCdwYXJlbnQnKS5jYXN0KG8uRFlOQU1JQ19UWVBFKSkge1xuICAgICAgLy8gY2hlY2sgcmVmZXJlbmNlc1xuICAgICAgY29uc3QgcmVmTm9kZUluZGV4ID0gY3VyckJ1aWxkZXIucmVmTm9kZUluZGljZXNbbmFtZV07XG4gICAgICBpZiAocmVmTm9kZUluZGV4ICE9IG51bGwpIHtcbiAgICAgICAgcmV0dXJuIG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5ub2RlVmFsdWUpLmNhbGxGbihbY3VyclZpZXdFeHByLCBvLmxpdGVyYWwocmVmTm9kZUluZGV4KV0pO1xuICAgICAgfVxuXG4gICAgICAvLyBjaGVjayB2YXJpYWJsZXNcbiAgICAgIGNvbnN0IHZhckFzdCA9IGN1cnJCdWlsZGVyLnZhcmlhYmxlcy5maW5kKCh2YXJBc3QpID0+IHZhckFzdC5uYW1lID09PSBuYW1lKTtcbiAgICAgIGlmICh2YXJBc3QpIHtcbiAgICAgICAgY29uc3QgdmFyVmFsdWUgPSB2YXJBc3QudmFsdWUgfHwgSU1QTElDSVRfVEVNUExBVEVfVkFSO1xuICAgICAgICByZXR1cm4gY3VyclZpZXdFeHByLnByb3AoJ2NvbnRleHQnKS5wcm9wKHZhclZhbHVlKTtcbiAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBub3RpZnlJbXBsaWNpdFJlY2VpdmVyVXNlKCk6IHZvaWQge1xuICAgIC8vIE5vdCBuZWVkZWQgaW4gVmlldyBFbmdpbmUgYXMgVmlldyBFbmdpbmUgd2Fsa3MgdGhyb3VnaCB0aGUgZ2VuZXJhdGVkXG4gICAgLy8gZXhwcmVzc2lvbnMgdG8gZmlndXJlIG91dCBpZiB0aGUgaW1wbGljaXQgcmVjZWl2ZXIgaXMgdXNlZCBhbmQgbmVlZHNcbiAgICAvLyB0byBiZSBnZW5lcmF0ZWQgYXMgcGFydCBvZiB0aGUgcHJlLXVwZGF0ZSBzdGF0ZW1lbnRzLlxuICB9XG5cbiAgcHJpdmF0ZSBfY3JlYXRlTGl0ZXJhbEFycmF5Q29udmVydGVyKHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiwgYXJnQ291bnQ6IG51bWJlcik6XG4gICAgICBCdWlsdGluQ29udmVydGVyIHtcbiAgICBpZiAoYXJnQ291bnQgPT09IDApIHtcbiAgICAgIGNvbnN0IHZhbHVlRXhwciA9IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5FTVBUWV9BUlJBWSk7XG4gICAgICByZXR1cm4gKCkgPT4gdmFsdWVFeHByO1xuICAgIH1cblxuICAgIGNvbnN0IGNoZWNrSW5kZXggPSB0aGlzLm5vZGVzLmxlbmd0aDtcblxuICAgIHRoaXMubm9kZXMucHVzaCgoKSA9PiAoe1xuICAgICAgICAgICAgICAgICAgICAgIHNvdXJjZVNwYW4sXG4gICAgICAgICAgICAgICAgICAgICAgbm9kZUZsYWdzOiBOb2RlRmxhZ3MuVHlwZVB1cmVBcnJheSxcbiAgICAgICAgICAgICAgICAgICAgICBub2RlRGVmOiBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMucHVyZUFycmF5RGVmKS5jYWxsRm4oW1xuICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsKGNoZWNrSW5kZXgpLFxuICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsKGFyZ0NvdW50KSxcbiAgICAgICAgICAgICAgICAgICAgICBdKVxuICAgICAgICAgICAgICAgICAgICB9KSk7XG5cbiAgICByZXR1cm4gKGFyZ3M6IG8uRXhwcmVzc2lvbltdKSA9PiBjYWxsQ2hlY2tTdG10KGNoZWNrSW5kZXgsIGFyZ3MpO1xuICB9XG5cbiAgcHJpdmF0ZSBfY3JlYXRlTGl0ZXJhbE1hcENvbnZlcnRlcihcbiAgICAgIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3Bhbiwga2V5czoge2tleTogc3RyaW5nLCBxdW90ZWQ6IGJvb2xlYW59W10pOiBCdWlsdGluQ29udmVydGVyIHtcbiAgICBpZiAoa2V5cy5sZW5ndGggPT09IDApIHtcbiAgICAgIGNvbnN0IHZhbHVlRXhwciA9IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5FTVBUWV9NQVApO1xuICAgICAgcmV0dXJuICgpID0+IHZhbHVlRXhwcjtcbiAgICB9XG5cbiAgICBjb25zdCBtYXAgPSBvLmxpdGVyYWxNYXAoa2V5cy5tYXAoKGUsIGkpID0+ICh7Li4uZSwgdmFsdWU6IG8ubGl0ZXJhbChpKX0pKSk7XG4gICAgY29uc3QgY2hlY2tJbmRleCA9IHRoaXMubm9kZXMubGVuZ3RoO1xuICAgIHRoaXMubm9kZXMucHVzaCgoKSA9PiAoe1xuICAgICAgICAgICAgICAgICAgICAgIHNvdXJjZVNwYW4sXG4gICAgICAgICAgICAgICAgICAgICAgbm9kZUZsYWdzOiBOb2RlRmxhZ3MuVHlwZVB1cmVPYmplY3QsXG4gICAgICAgICAgICAgICAgICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLnB1cmVPYmplY3REZWYpLmNhbGxGbihbXG4gICAgICAgICAgICAgICAgICAgICAgICBvLmxpdGVyYWwoY2hlY2tJbmRleCksXG4gICAgICAgICAgICAgICAgICAgICAgICBtYXAsXG4gICAgICAgICAgICAgICAgICAgICAgXSlcbiAgICAgICAgICAgICAgICAgICAgfSkpO1xuXG4gICAgcmV0dXJuIChhcmdzOiBvLkV4cHJlc3Npb25bXSkgPT4gY2FsbENoZWNrU3RtdChjaGVja0luZGV4LCBhcmdzKTtcbiAgfVxuXG4gIHByaXZhdGUgX2NyZWF0ZVBpcGVDb252ZXJ0ZXIoZXhwcmVzc2lvbjogVXBkYXRlRXhwcmVzc2lvbiwgbmFtZTogc3RyaW5nLCBhcmdDb3VudDogbnVtYmVyKTpcbiAgICAgIEJ1aWx0aW5Db252ZXJ0ZXIge1xuICAgIGNvbnN0IHBpcGUgPSB0aGlzLnVzZWRQaXBlcy5maW5kKChwaXBlU3VtbWFyeSkgPT4gcGlwZVN1bW1hcnkubmFtZSA9PT0gbmFtZSkgITtcbiAgICBpZiAocGlwZS5wdXJlKSB7XG4gICAgICBjb25zdCBjaGVja0luZGV4ID0gdGhpcy5ub2Rlcy5sZW5ndGg7XG4gICAgICB0aGlzLm5vZGVzLnB1c2goKCkgPT4gKHtcbiAgICAgICAgICAgICAgICAgICAgICAgIHNvdXJjZVNwYW46IGV4cHJlc3Npb24uc291cmNlU3BhbixcbiAgICAgICAgICAgICAgICAgICAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVQdXJlUGlwZSxcbiAgICAgICAgICAgICAgICAgICAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5wdXJlUGlwZURlZikuY2FsbEZuKFtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsKGNoZWNrSW5kZXgpLFxuICAgICAgICAgICAgICAgICAgICAgICAgICBvLmxpdGVyYWwoYXJnQ291bnQpLFxuICAgICAgICAgICAgICAgICAgICAgICAgXSlcbiAgICAgICAgICAgICAgICAgICAgICB9KSk7XG5cbiAgICAgIC8vIGZpbmQgdW5kZXJseWluZyBwaXBlIGluIHRoZSBjb21wb25lbnQgdmlld1xuICAgICAgbGV0IGNvbXBWaWV3RXhwcjogby5FeHByZXNzaW9uID0gVklFV19WQVI7XG4gICAgICBsZXQgY29tcEJ1aWxkZXI6IFZpZXdCdWlsZGVyID0gdGhpcztcbiAgICAgIHdoaWxlIChjb21wQnVpbGRlci5wYXJlbnQpIHtcbiAgICAgICAgY29tcEJ1aWxkZXIgPSBjb21wQnVpbGRlci5wYXJlbnQ7XG4gICAgICAgIGNvbXBWaWV3RXhwciA9IGNvbXBWaWV3RXhwci5wcm9wKCdwYXJlbnQnKS5jYXN0KG8uRFlOQU1JQ19UWVBFKTtcbiAgICAgIH1cbiAgICAgIGNvbnN0IHBpcGVOb2RlSW5kZXggPSBjb21wQnVpbGRlci5wdXJlUGlwZU5vZGVJbmRpY2VzW25hbWVdO1xuICAgICAgY29uc3QgcGlwZVZhbHVlRXhwcjogby5FeHByZXNzaW9uID1cbiAgICAgICAgICBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMubm9kZVZhbHVlKS5jYWxsRm4oW2NvbXBWaWV3RXhwciwgby5saXRlcmFsKHBpcGVOb2RlSW5kZXgpXSk7XG5cbiAgICAgIHJldHVybiAoYXJnczogby5FeHByZXNzaW9uW10pID0+IGNhbGxVbndyYXBWYWx1ZShcbiAgICAgICAgICAgICAgICAgZXhwcmVzc2lvbi5ub2RlSW5kZXgsIGV4cHJlc3Npb24uYmluZGluZ0luZGV4LFxuICAgICAgICAgICAgICAgICBjYWxsQ2hlY2tTdG10KGNoZWNrSW5kZXgsIFtwaXBlVmFsdWVFeHByXS5jb25jYXQoYXJncykpKTtcbiAgICB9IGVsc2Uge1xuICAgICAgY29uc3Qgbm9kZUluZGV4ID0gdGhpcy5fY3JlYXRlUGlwZShleHByZXNzaW9uLnNvdXJjZVNwYW4sIHBpcGUpO1xuICAgICAgY29uc3Qgbm9kZVZhbHVlRXhwciA9XG4gICAgICAgICAgby5pbXBvcnRFeHByKElkZW50aWZpZXJzLm5vZGVWYWx1ZSkuY2FsbEZuKFtWSUVXX1ZBUiwgby5saXRlcmFsKG5vZGVJbmRleCldKTtcblxuICAgICAgcmV0dXJuIChhcmdzOiBvLkV4cHJlc3Npb25bXSkgPT4gY2FsbFVud3JhcFZhbHVlKFxuICAgICAgICAgICAgICAgICBleHByZXNzaW9uLm5vZGVJbmRleCwgZXhwcmVzc2lvbi5iaW5kaW5nSW5kZXgsXG4gICAgICAgICAgICAgICAgIG5vZGVWYWx1ZUV4cHIuY2FsbE1ldGhvZCgndHJhbnNmb3JtJywgYXJncykpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX2NyZWF0ZVBpcGUoc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFufG51bGwsIHBpcGU6IENvbXBpbGVQaXBlU3VtbWFyeSk6IG51bWJlciB7XG4gICAgY29uc3Qgbm9kZUluZGV4ID0gdGhpcy5ub2Rlcy5sZW5ndGg7XG4gICAgbGV0IGZsYWdzID0gTm9kZUZsYWdzLk5vbmU7XG4gICAgcGlwZS50eXBlLmxpZmVjeWNsZUhvb2tzLmZvckVhY2goKGxpZmVjeWNsZUhvb2spID0+IHtcbiAgICAgIC8vIGZvciBwaXBlcywgd2Ugb25seSBzdXBwb3J0IG5nT25EZXN0cm95XG4gICAgICBpZiAobGlmZWN5Y2xlSG9vayA9PT0gTGlmZWN5Y2xlSG9va3MuT25EZXN0cm95KSB7XG4gICAgICAgIGZsYWdzIHw9IGxpZmVjeWNsZUhvb2tUb05vZGVGbGFnKGxpZmVjeWNsZUhvb2spO1xuICAgICAgfVxuICAgIH0pO1xuXG4gICAgY29uc3QgZGVwRXhwcnMgPSBwaXBlLnR5cGUuZGlEZXBzLm1hcCgoZGlEZXApID0+IGRlcERlZih0aGlzLm91dHB1dEN0eCwgZGlEZXApKTtcbiAgICAvLyBmdW5jdGlvbiBwaXBlRGVmKFxuICAgIC8vICAgZmxhZ3M6IE5vZGVGbGFncywgY3RvcjogYW55LCBkZXBzOiAoW0RlcEZsYWdzLCBhbnldIHwgYW55KVtdKTogTm9kZURlZlxuICAgIHRoaXMubm9kZXMucHVzaChcbiAgICAgICAgKCkgPT4gKHtcbiAgICAgICAgICBzb3VyY2VTcGFuLFxuICAgICAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVQaXBlLFxuICAgICAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5waXBlRGVmKS5jYWxsRm4oW1xuICAgICAgICAgICAgby5saXRlcmFsKGZsYWdzKSwgdGhpcy5vdXRwdXRDdHguaW1wb3J0RXhwcihwaXBlLnR5cGUucmVmZXJlbmNlKSwgby5saXRlcmFsQXJyKGRlcEV4cHJzKVxuICAgICAgICAgIF0pXG4gICAgICAgIH0pKTtcbiAgICByZXR1cm4gbm9kZUluZGV4O1xuICB9XG5cbiAgLyoqXG4gICAqIEZvciB0aGUgQVNUIGluIGBVcGRhdGVFeHByZXNzaW9uLnZhbHVlYDpcbiAgICogLSBjcmVhdGUgbm9kZXMgZm9yIHBpcGVzLCBsaXRlcmFsIGFycmF5cyBhbmQsIGxpdGVyYWwgbWFwcyxcbiAgICogLSB1cGRhdGUgdGhlIEFTVCB0byByZXBsYWNlIHBpcGVzLCBsaXRlcmFsIGFycmF5cyBhbmQsIGxpdGVyYWwgbWFwcyB3aXRoIGNhbGxzIHRvIGNoZWNrIGZuLlxuICAgKlxuICAgKiBXQVJOSU5HOiBUaGlzIG1pZ2h0IGNyZWF0ZSBuZXcgbm9kZURlZnMgKGZvciBwaXBlcyBhbmQgbGl0ZXJhbCBhcnJheXMgYW5kIGxpdGVyYWwgbWFwcykhXG4gICAqL1xuICBwcml2YXRlIF9wcmVwcm9jZXNzVXBkYXRlRXhwcmVzc2lvbihleHByZXNzaW9uOiBVcGRhdGVFeHByZXNzaW9uKTogVXBkYXRlRXhwcmVzc2lvbiB7XG4gICAgcmV0dXJuIHtcbiAgICAgIG5vZGVJbmRleDogZXhwcmVzc2lvbi5ub2RlSW5kZXgsXG4gICAgICBiaW5kaW5nSW5kZXg6IGV4cHJlc3Npb24uYmluZGluZ0luZGV4LFxuICAgICAgc291cmNlU3BhbjogZXhwcmVzc2lvbi5zb3VyY2VTcGFuLFxuICAgICAgY29udGV4dDogZXhwcmVzc2lvbi5jb250ZXh0LFxuICAgICAgdmFsdWU6IGNvbnZlcnRQcm9wZXJ0eUJpbmRpbmdCdWlsdGlucyhcbiAgICAgICAgICB7XG4gICAgICAgICAgICBjcmVhdGVMaXRlcmFsQXJyYXlDb252ZXJ0ZXI6IChhcmdDb3VudDogbnVtYmVyKSA9PiB0aGlzLl9jcmVhdGVMaXRlcmFsQXJyYXlDb252ZXJ0ZXIoXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBleHByZXNzaW9uLnNvdXJjZVNwYW4sIGFyZ0NvdW50KSxcbiAgICAgICAgICAgIGNyZWF0ZUxpdGVyYWxNYXBDb252ZXJ0ZXI6XG4gICAgICAgICAgICAgICAgKGtleXM6IHtrZXk6IHN0cmluZywgcXVvdGVkOiBib29sZWFufVtdKSA9PlxuICAgICAgICAgICAgICAgICAgICB0aGlzLl9jcmVhdGVMaXRlcmFsTWFwQ29udmVydGVyKGV4cHJlc3Npb24uc291cmNlU3Bhbiwga2V5cyksXG4gICAgICAgICAgICBjcmVhdGVQaXBlQ29udmVydGVyOiAobmFtZTogc3RyaW5nLCBhcmdDb3VudDogbnVtYmVyKSA9PlxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRoaXMuX2NyZWF0ZVBpcGVDb252ZXJ0ZXIoZXhwcmVzc2lvbiwgbmFtZSwgYXJnQ291bnQpXG4gICAgICAgICAgfSxcbiAgICAgICAgICBleHByZXNzaW9uLnZhbHVlKVxuICAgIH07XG4gIH1cblxuICBwcml2YXRlIF9jcmVhdGVOb2RlRXhwcmVzc2lvbnMoKToge1xuICAgIHVwZGF0ZVJlbmRlcmVyU3RtdHM6IG8uU3RhdGVtZW50W10sXG4gICAgdXBkYXRlRGlyZWN0aXZlc1N0bXRzOiBvLlN0YXRlbWVudFtdLFxuICAgIG5vZGVEZWZFeHByczogby5FeHByZXNzaW9uW11cbiAgfSB7XG4gICAgY29uc3Qgc2VsZiA9IHRoaXM7XG4gICAgbGV0IHVwZGF0ZUJpbmRpbmdDb3VudCA9IDA7XG4gICAgY29uc3QgdXBkYXRlUmVuZGVyZXJTdG10czogby5TdGF0ZW1lbnRbXSA9IFtdO1xuICAgIGNvbnN0IHVwZGF0ZURpcmVjdGl2ZXNTdG10czogby5TdGF0ZW1lbnRbXSA9IFtdO1xuICAgIGNvbnN0IG5vZGVEZWZFeHBycyA9IHRoaXMubm9kZXMubWFwKChmYWN0b3J5LCBub2RlSW5kZXgpID0+IHtcbiAgICAgIGNvbnN0IHtub2RlRGVmLCBub2RlRmxhZ3MsIHVwZGF0ZURpcmVjdGl2ZXMsIHVwZGF0ZVJlbmRlcmVyLCBzb3VyY2VTcGFufSA9IGZhY3RvcnkoKTtcbiAgICAgIGlmICh1cGRhdGVSZW5kZXJlcikge1xuICAgICAgICB1cGRhdGVSZW5kZXJlclN0bXRzLnB1c2goXG4gICAgICAgICAgICAuLi5jcmVhdGVVcGRhdGVTdGF0ZW1lbnRzKG5vZGVJbmRleCwgc291cmNlU3BhbiwgdXBkYXRlUmVuZGVyZXIsIGZhbHNlKSk7XG4gICAgICB9XG4gICAgICBpZiAodXBkYXRlRGlyZWN0aXZlcykge1xuICAgICAgICB1cGRhdGVEaXJlY3RpdmVzU3RtdHMucHVzaCguLi5jcmVhdGVVcGRhdGVTdGF0ZW1lbnRzKFxuICAgICAgICAgICAgbm9kZUluZGV4LCBzb3VyY2VTcGFuLCB1cGRhdGVEaXJlY3RpdmVzLFxuICAgICAgICAgICAgKG5vZGVGbGFncyAmIChOb2RlRmxhZ3MuRG9DaGVjayB8IE5vZGVGbGFncy5PbkluaXQpKSA+IDApKTtcbiAgICAgIH1cbiAgICAgIC8vIFdlIHVzZSBhIGNvbW1hIGV4cHJlc3Npb24gdG8gY2FsbCB0aGUgbG9nIGZ1bmN0aW9uIGJlZm9yZVxuICAgICAgLy8gdGhlIG5vZGVEZWYgZnVuY3Rpb24sIGJ1dCBzdGlsbCB1c2UgdGhlIHJlc3VsdCBvZiB0aGUgbm9kZURlZiBmdW5jdGlvblxuICAgICAgLy8gYXMgdGhlIHZhbHVlLlxuICAgICAgLy8gTm90ZTogV2Ugb25seSBhZGQgdGhlIGxvZ2dlciB0byBlbGVtZW50cyAvIHRleHQgbm9kZXMsXG4gICAgICAvLyBzbyB3ZSBkb24ndCBnZW5lcmF0ZSB0b28gbXVjaCBjb2RlLlxuICAgICAgY29uc3QgbG9nV2l0aE5vZGVEZWYgPSBub2RlRmxhZ3MgJiBOb2RlRmxhZ3MuQ2F0UmVuZGVyTm9kZSA/XG4gICAgICAgICAgbmV3IG8uQ29tbWFFeHByKFtMT0dfVkFSLmNhbGxGbihbXSkuY2FsbEZuKFtdKSwgbm9kZURlZl0pIDpcbiAgICAgICAgICBub2RlRGVmO1xuICAgICAgcmV0dXJuIG8uYXBwbHlTb3VyY2VTcGFuVG9FeHByZXNzaW9uSWZOZWVkZWQobG9nV2l0aE5vZGVEZWYsIHNvdXJjZVNwYW4pO1xuICAgIH0pO1xuICAgIHJldHVybiB7dXBkYXRlUmVuZGVyZXJTdG10cywgdXBkYXRlRGlyZWN0aXZlc1N0bXRzLCBub2RlRGVmRXhwcnN9O1xuXG4gICAgZnVuY3Rpb24gY3JlYXRlVXBkYXRlU3RhdGVtZW50cyhcbiAgICAgICAgbm9kZUluZGV4OiBudW1iZXIsIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiB8IG51bGwsIGV4cHJlc3Npb25zOiBVcGRhdGVFeHByZXNzaW9uW10sXG4gICAgICAgIGFsbG93RW1wdHlFeHByczogYm9vbGVhbik6IG8uU3RhdGVtZW50W10ge1xuICAgICAgY29uc3QgdXBkYXRlU3RtdHM6IG8uU3RhdGVtZW50W10gPSBbXTtcbiAgICAgIGNvbnN0IGV4cHJzID0gZXhwcmVzc2lvbnMubWFwKCh7c291cmNlU3BhbiwgY29udGV4dCwgdmFsdWV9KSA9PiB7XG4gICAgICAgIGNvbnN0IGJpbmRpbmdJZCA9IGAke3VwZGF0ZUJpbmRpbmdDb3VudCsrfWA7XG4gICAgICAgIGNvbnN0IG5hbWVSZXNvbHZlciA9IGNvbnRleHQgPT09IENPTVBfVkFSID8gc2VsZiA6IG51bGw7XG4gICAgICAgIGNvbnN0IHtzdG10cywgY3VyclZhbEV4cHJ9ID1cbiAgICAgICAgICAgIGNvbnZlcnRQcm9wZXJ0eUJpbmRpbmcobmFtZVJlc29sdmVyLCBjb250ZXh0LCB2YWx1ZSwgYmluZGluZ0lkLCBCaW5kaW5nRm9ybS5HZW5lcmFsKTtcbiAgICAgICAgdXBkYXRlU3RtdHMucHVzaCguLi5zdG10cy5tYXAoXG4gICAgICAgICAgICAoc3RtdDogby5TdGF0ZW1lbnQpID0+IG8uYXBwbHlTb3VyY2VTcGFuVG9TdGF0ZW1lbnRJZk5lZWRlZChzdG10LCBzb3VyY2VTcGFuKSkpO1xuICAgICAgICByZXR1cm4gby5hcHBseVNvdXJjZVNwYW5Ub0V4cHJlc3Npb25JZk5lZWRlZChjdXJyVmFsRXhwciwgc291cmNlU3Bhbik7XG4gICAgICB9KTtcbiAgICAgIGlmIChleHByZXNzaW9ucy5sZW5ndGggfHwgYWxsb3dFbXB0eUV4cHJzKSB7XG4gICAgICAgIHVwZGF0ZVN0bXRzLnB1c2goby5hcHBseVNvdXJjZVNwYW5Ub1N0YXRlbWVudElmTmVlZGVkKFxuICAgICAgICAgICAgY2FsbENoZWNrU3RtdChub2RlSW5kZXgsIGV4cHJzKS50b1N0bXQoKSwgc291cmNlU3BhbikpO1xuICAgICAgfVxuICAgICAgcmV0dXJuIHVwZGF0ZVN0bXRzO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX2NyZWF0ZUVsZW1lbnRIYW5kbGVFdmVudEZuKFxuICAgICAgbm9kZUluZGV4OiBudW1iZXIsXG4gICAgICBoYW5kbGVyczoge2NvbnRleHQ6IG8uRXhwcmVzc2lvbiwgZXZlbnRBc3Q6IEJvdW5kRXZlbnRBc3QsIGRpckFzdDogRGlyZWN0aXZlQXN0fVtdKSB7XG4gICAgY29uc3QgaGFuZGxlRXZlbnRTdG10czogby5TdGF0ZW1lbnRbXSA9IFtdO1xuICAgIGxldCBoYW5kbGVFdmVudEJpbmRpbmdDb3VudCA9IDA7XG4gICAgaGFuZGxlcnMuZm9yRWFjaCgoe2NvbnRleHQsIGV2ZW50QXN0LCBkaXJBc3R9KSA9PiB7XG4gICAgICBjb25zdCBiaW5kaW5nSWQgPSBgJHtoYW5kbGVFdmVudEJpbmRpbmdDb3VudCsrfWA7XG4gICAgICBjb25zdCBuYW1lUmVzb2x2ZXIgPSBjb250ZXh0ID09PSBDT01QX1ZBUiA/IHRoaXMgOiBudWxsO1xuICAgICAgY29uc3Qge3N0bXRzLCBhbGxvd0RlZmF1bHR9ID1cbiAgICAgICAgICBjb252ZXJ0QWN0aW9uQmluZGluZyhuYW1lUmVzb2x2ZXIsIGNvbnRleHQsIGV2ZW50QXN0LmhhbmRsZXIsIGJpbmRpbmdJZCk7XG4gICAgICBjb25zdCB0cnVlU3RtdHMgPSBzdG10cztcbiAgICAgIGlmIChhbGxvd0RlZmF1bHQpIHtcbiAgICAgICAgdHJ1ZVN0bXRzLnB1c2goQUxMT1dfREVGQVVMVF9WQVIuc2V0KGFsbG93RGVmYXVsdC5hbmQoQUxMT1dfREVGQVVMVF9WQVIpKS50b1N0bXQoKSk7XG4gICAgICB9XG4gICAgICBjb25zdCB7dGFyZ2V0OiBldmVudFRhcmdldCwgbmFtZTogZXZlbnROYW1lfSA9IGVsZW1lbnRFdmVudE5hbWVBbmRUYXJnZXQoZXZlbnRBc3QsIGRpckFzdCk7XG4gICAgICBjb25zdCBmdWxsRXZlbnROYW1lID0gZWxlbWVudEV2ZW50RnVsbE5hbWUoZXZlbnRUYXJnZXQsIGV2ZW50TmFtZSk7XG4gICAgICBoYW5kbGVFdmVudFN0bXRzLnB1c2goby5hcHBseVNvdXJjZVNwYW5Ub1N0YXRlbWVudElmTmVlZGVkKFxuICAgICAgICAgIG5ldyBvLklmU3RtdChvLmxpdGVyYWwoZnVsbEV2ZW50TmFtZSkuaWRlbnRpY2FsKEVWRU5UX05BTUVfVkFSKSwgdHJ1ZVN0bXRzKSxcbiAgICAgICAgICBldmVudEFzdC5zb3VyY2VTcGFuKSk7XG4gICAgfSk7XG4gICAgbGV0IGhhbmRsZUV2ZW50Rm46IG8uRXhwcmVzc2lvbjtcbiAgICBpZiAoaGFuZGxlRXZlbnRTdG10cy5sZW5ndGggPiAwKSB7XG4gICAgICBjb25zdCBwcmVTdG10czogby5TdGF0ZW1lbnRbXSA9XG4gICAgICAgICAgW0FMTE9XX0RFRkFVTFRfVkFSLnNldChvLmxpdGVyYWwodHJ1ZSkpLnRvRGVjbFN0bXQoby5CT09MX1RZUEUpXTtcbiAgICAgIGlmICghdGhpcy5jb21wb25lbnQuaXNIb3N0ICYmIG8uZmluZFJlYWRWYXJOYW1lcyhoYW5kbGVFdmVudFN0bXRzKS5oYXMoQ09NUF9WQVIubmFtZSAhKSkge1xuICAgICAgICBwcmVTdG10cy5wdXNoKENPTVBfVkFSLnNldChWSUVXX1ZBUi5wcm9wKCdjb21wb25lbnQnKSkudG9EZWNsU3RtdCh0aGlzLmNvbXBUeXBlKSk7XG4gICAgICB9XG4gICAgICBoYW5kbGVFdmVudEZuID0gby5mbihcbiAgICAgICAgICBbXG4gICAgICAgICAgICBuZXcgby5GblBhcmFtKFZJRVdfVkFSLm5hbWUgISwgby5JTkZFUlJFRF9UWVBFKSxcbiAgICAgICAgICAgIG5ldyBvLkZuUGFyYW0oRVZFTlRfTkFNRV9WQVIubmFtZSAhLCBvLklORkVSUkVEX1RZUEUpLFxuICAgICAgICAgICAgbmV3IG8uRm5QYXJhbShFdmVudEhhbmRsZXJWYXJzLmV2ZW50Lm5hbWUgISwgby5JTkZFUlJFRF9UWVBFKVxuICAgICAgICAgIF0sXG4gICAgICAgICAgWy4uLnByZVN0bXRzLCAuLi5oYW5kbGVFdmVudFN0bXRzLCBuZXcgby5SZXR1cm5TdGF0ZW1lbnQoQUxMT1dfREVGQVVMVF9WQVIpXSxcbiAgICAgICAgICBvLklORkVSUkVEX1RZUEUpO1xuICAgIH0gZWxzZSB7XG4gICAgICBoYW5kbGVFdmVudEZuID0gby5OVUxMX0VYUFI7XG4gICAgfVxuICAgIHJldHVybiBoYW5kbGVFdmVudEZuO1xuICB9XG5cbiAgdmlzaXREaXJlY3RpdmUoYXN0OiBEaXJlY3RpdmVBc3QsIGNvbnRleHQ6IHt1c2VkRXZlbnRzOiBTZXQ8c3RyaW5nPn0pOiBhbnkge31cbiAgdmlzaXREaXJlY3RpdmVQcm9wZXJ0eShhc3Q6IEJvdW5kRGlyZWN0aXZlUHJvcGVydHlBc3QsIGNvbnRleHQ6IGFueSk6IGFueSB7fVxuICB2aXNpdFJlZmVyZW5jZShhc3Q6IFJlZmVyZW5jZUFzdCwgY29udGV4dDogYW55KTogYW55IHt9XG4gIHZpc2l0VmFyaWFibGUoYXN0OiBWYXJpYWJsZUFzdCwgY29udGV4dDogYW55KTogYW55IHt9XG4gIHZpc2l0RXZlbnQoYXN0OiBCb3VuZEV2ZW50QXN0LCBjb250ZXh0OiBhbnkpOiBhbnkge31cbiAgdmlzaXRFbGVtZW50UHJvcGVydHkoYXN0OiBCb3VuZEVsZW1lbnRQcm9wZXJ0eUFzdCwgY29udGV4dDogYW55KTogYW55IHt9XG4gIHZpc2l0QXR0cihhc3Q6IEF0dHJBc3QsIGNvbnRleHQ6IGFueSk6IGFueSB7fVxufVxuXG5mdW5jdGlvbiBuZWVkc0FkZGl0aW9uYWxSb290Tm9kZShhc3ROb2RlczogVGVtcGxhdGVBc3RbXSk6IGJvb2xlYW4ge1xuICBjb25zdCBsYXN0QXN0Tm9kZSA9IGFzdE5vZGVzW2FzdE5vZGVzLmxlbmd0aCAtIDFdO1xuICBpZiAobGFzdEFzdE5vZGUgaW5zdGFuY2VvZiBFbWJlZGRlZFRlbXBsYXRlQXN0KSB7XG4gICAgcmV0dXJuIGxhc3RBc3ROb2RlLmhhc1ZpZXdDb250YWluZXI7XG4gIH1cblxuICBpZiAobGFzdEFzdE5vZGUgaW5zdGFuY2VvZiBFbGVtZW50QXN0KSB7XG4gICAgaWYgKGlzTmdDb250YWluZXIobGFzdEFzdE5vZGUubmFtZSkgJiYgbGFzdEFzdE5vZGUuY2hpbGRyZW4ubGVuZ3RoKSB7XG4gICAgICByZXR1cm4gbmVlZHNBZGRpdGlvbmFsUm9vdE5vZGUobGFzdEFzdE5vZGUuY2hpbGRyZW4pO1xuICAgIH1cbiAgICByZXR1cm4gbGFzdEFzdE5vZGUuaGFzVmlld0NvbnRhaW5lcjtcbiAgfVxuXG4gIHJldHVybiBsYXN0QXN0Tm9kZSBpbnN0YW5jZW9mIE5nQ29udGVudEFzdDtcbn1cblxuXG5mdW5jdGlvbiBlbGVtZW50QmluZGluZ0RlZihpbnB1dEFzdDogQm91bmRFbGVtZW50UHJvcGVydHlBc3QsIGRpckFzdDogRGlyZWN0aXZlQXN0KTogby5FeHByZXNzaW9uIHtcbiAgY29uc3QgaW5wdXRUeXBlID0gaW5wdXRBc3QudHlwZTtcbiAgc3dpdGNoIChpbnB1dFR5cGUpIHtcbiAgICBjYXNlIFByb3BlcnR5QmluZGluZ1R5cGUuQXR0cmlidXRlOlxuICAgICAgcmV0dXJuIG8ubGl0ZXJhbEFycihbXG4gICAgICAgIG8ubGl0ZXJhbChCaW5kaW5nRmxhZ3MuVHlwZUVsZW1lbnRBdHRyaWJ1dGUpLCBvLmxpdGVyYWwoaW5wdXRBc3QubmFtZSksXG4gICAgICAgIG8ubGl0ZXJhbChpbnB1dEFzdC5zZWN1cml0eUNvbnRleHQpXG4gICAgICBdKTtcbiAgICBjYXNlIFByb3BlcnR5QmluZGluZ1R5cGUuUHJvcGVydHk6XG4gICAgICByZXR1cm4gby5saXRlcmFsQXJyKFtcbiAgICAgICAgby5saXRlcmFsKEJpbmRpbmdGbGFncy5UeXBlUHJvcGVydHkpLCBvLmxpdGVyYWwoaW5wdXRBc3QubmFtZSksXG4gICAgICAgIG8ubGl0ZXJhbChpbnB1dEFzdC5zZWN1cml0eUNvbnRleHQpXG4gICAgICBdKTtcbiAgICBjYXNlIFByb3BlcnR5QmluZGluZ1R5cGUuQW5pbWF0aW9uOlxuICAgICAgY29uc3QgYmluZGluZ1R5cGUgPSBCaW5kaW5nRmxhZ3MuVHlwZVByb3BlcnR5IHxcbiAgICAgICAgICAoZGlyQXN0ICYmIGRpckFzdC5kaXJlY3RpdmUuaXNDb21wb25lbnQgPyBCaW5kaW5nRmxhZ3MuU3ludGhldGljSG9zdFByb3BlcnR5IDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBCaW5kaW5nRmxhZ3MuU3ludGhldGljUHJvcGVydHkpO1xuICAgICAgcmV0dXJuIG8ubGl0ZXJhbEFycihbXG4gICAgICAgIG8ubGl0ZXJhbChiaW5kaW5nVHlwZSksIG8ubGl0ZXJhbCgnQCcgKyBpbnB1dEFzdC5uYW1lKSwgby5saXRlcmFsKGlucHV0QXN0LnNlY3VyaXR5Q29udGV4dClcbiAgICAgIF0pO1xuICAgIGNhc2UgUHJvcGVydHlCaW5kaW5nVHlwZS5DbGFzczpcbiAgICAgIHJldHVybiBvLmxpdGVyYWxBcnIoXG4gICAgICAgICAgW28ubGl0ZXJhbChCaW5kaW5nRmxhZ3MuVHlwZUVsZW1lbnRDbGFzcyksIG8ubGl0ZXJhbChpbnB1dEFzdC5uYW1lKSwgby5OVUxMX0VYUFJdKTtcbiAgICBjYXNlIFByb3BlcnR5QmluZGluZ1R5cGUuU3R5bGU6XG4gICAgICByZXR1cm4gby5saXRlcmFsQXJyKFtcbiAgICAgICAgby5saXRlcmFsKEJpbmRpbmdGbGFncy5UeXBlRWxlbWVudFN0eWxlKSwgby5saXRlcmFsKGlucHV0QXN0Lm5hbWUpLCBvLmxpdGVyYWwoaW5wdXRBc3QudW5pdClcbiAgICAgIF0pO1xuICAgIGRlZmF1bHQ6XG4gICAgICAvLyBUaGlzIGRlZmF1bHQgY2FzZSBpcyBub3QgbmVlZGVkIGJ5IFR5cGVTY3JpcHQgY29tcGlsZXIsIGFzIHRoZSBzd2l0Y2ggaXMgZXhoYXVzdGl2ZS5cbiAgICAgIC8vIEhvd2V2ZXIgQ2xvc3VyZSBDb21waWxlciBkb2VzIG5vdCB1bmRlcnN0YW5kIHRoYXQgYW5kIHJlcG9ydHMgYW4gZXJyb3IgaW4gdHlwZWQgbW9kZS5cbiAgICAgIC8vIFRoZSBgdGhyb3cgbmV3IEVycm9yYCBiZWxvdyB3b3JrcyBhcm91bmQgdGhlIHByb2JsZW0sIGFuZCB0aGUgdW5leHBlY3RlZDogbmV2ZXIgdmFyaWFibGVcbiAgICAgIC8vIG1ha2VzIHN1cmUgdHNjIHN0aWxsIGNoZWNrcyB0aGlzIGNvZGUgaXMgdW5yZWFjaGFibGUuXG4gICAgICBjb25zdCB1bmV4cGVjdGVkOiBuZXZlciA9IGlucHV0VHlwZTtcbiAgICAgIHRocm93IG5ldyBFcnJvcihgdW5leHBlY3RlZCAke3VuZXhwZWN0ZWR9YCk7XG4gIH1cbn1cblxuXG5mdW5jdGlvbiBmaXhlZEF0dHJzRGVmKGVsZW1lbnRBc3Q6IEVsZW1lbnRBc3QpOiBvLkV4cHJlc3Npb24ge1xuICBjb25zdCBtYXBSZXN1bHQ6IHtba2V5OiBzdHJpbmddOiBzdHJpbmd9ID0gT2JqZWN0LmNyZWF0ZShudWxsKTtcbiAgZWxlbWVudEFzdC5hdHRycy5mb3JFYWNoKGF0dHJBc3QgPT4geyBtYXBSZXN1bHRbYXR0ckFzdC5uYW1lXSA9IGF0dHJBc3QudmFsdWU7IH0pO1xuICBlbGVtZW50QXN0LmRpcmVjdGl2ZXMuZm9yRWFjaChkaXJBc3QgPT4ge1xuICAgIE9iamVjdC5rZXlzKGRpckFzdC5kaXJlY3RpdmUuaG9zdEF0dHJpYnV0ZXMpLmZvckVhY2gobmFtZSA9PiB7XG4gICAgICBjb25zdCB2YWx1ZSA9IGRpckFzdC5kaXJlY3RpdmUuaG9zdEF0dHJpYnV0ZXNbbmFtZV07XG4gICAgICBjb25zdCBwcmV2VmFsdWUgPSBtYXBSZXN1bHRbbmFtZV07XG4gICAgICBtYXBSZXN1bHRbbmFtZV0gPSBwcmV2VmFsdWUgIT0gbnVsbCA/IG1lcmdlQXR0cmlidXRlVmFsdWUobmFtZSwgcHJldlZhbHVlLCB2YWx1ZSkgOiB2YWx1ZTtcbiAgICB9KTtcbiAgfSk7XG4gIC8vIE5vdGU6IFdlIG5lZWQgdG8gc29ydCB0byBnZXQgYSBkZWZpbmVkIG91dHB1dCBvcmRlclxuICAvLyBmb3IgdGVzdHMgYW5kIGZvciBjYWNoaW5nIGdlbmVyYXRlZCBhcnRpZmFjdHMuLi5cbiAgcmV0dXJuIG8ubGl0ZXJhbEFycihPYmplY3Qua2V5cyhtYXBSZXN1bHQpLnNvcnQoKS5tYXAoXG4gICAgICAoYXR0ck5hbWUpID0+IG8ubGl0ZXJhbEFycihbby5saXRlcmFsKGF0dHJOYW1lKSwgby5saXRlcmFsKG1hcFJlc3VsdFthdHRyTmFtZV0pXSkpKTtcbn1cblxuZnVuY3Rpb24gbWVyZ2VBdHRyaWJ1dGVWYWx1ZShhdHRyTmFtZTogc3RyaW5nLCBhdHRyVmFsdWUxOiBzdHJpbmcsIGF0dHJWYWx1ZTI6IHN0cmluZyk6IHN0cmluZyB7XG4gIGlmIChhdHRyTmFtZSA9PSBDTEFTU19BVFRSIHx8IGF0dHJOYW1lID09IFNUWUxFX0FUVFIpIHtcbiAgICByZXR1cm4gYCR7YXR0clZhbHVlMX0gJHthdHRyVmFsdWUyfWA7XG4gIH0gZWxzZSB7XG4gICAgcmV0dXJuIGF0dHJWYWx1ZTI7XG4gIH1cbn1cblxuZnVuY3Rpb24gY2FsbENoZWNrU3RtdChub2RlSW5kZXg6IG51bWJlciwgZXhwcnM6IG8uRXhwcmVzc2lvbltdKTogby5FeHByZXNzaW9uIHtcbiAgaWYgKGV4cHJzLmxlbmd0aCA+IDEwKSB7XG4gICAgcmV0dXJuIENIRUNLX1ZBUi5jYWxsRm4oXG4gICAgICAgIFtWSUVXX1ZBUiwgby5saXRlcmFsKG5vZGVJbmRleCksIG8ubGl0ZXJhbChBcmd1bWVudFR5cGUuRHluYW1pYyksIG8ubGl0ZXJhbEFycihleHBycyldKTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gQ0hFQ0tfVkFSLmNhbGxGbihcbiAgICAgICAgW1ZJRVdfVkFSLCBvLmxpdGVyYWwobm9kZUluZGV4KSwgby5saXRlcmFsKEFyZ3VtZW50VHlwZS5JbmxpbmUpLCAuLi5leHByc10pO1xuICB9XG59XG5cbmZ1bmN0aW9uIGNhbGxVbndyYXBWYWx1ZShub2RlSW5kZXg6IG51bWJlciwgYmluZGluZ0lkeDogbnVtYmVyLCBleHByOiBvLkV4cHJlc3Npb24pOiBvLkV4cHJlc3Npb24ge1xuICByZXR1cm4gby5pbXBvcnRFeHByKElkZW50aWZpZXJzLnVud3JhcFZhbHVlKS5jYWxsRm4oW1xuICAgIFZJRVdfVkFSLCBvLmxpdGVyYWwobm9kZUluZGV4KSwgby5saXRlcmFsKGJpbmRpbmdJZHgpLCBleHByXG4gIF0pO1xufVxuXG5mdW5jdGlvbiBlbGVtZW50RXZlbnROYW1lQW5kVGFyZ2V0KFxuICAgIGV2ZW50QXN0OiBCb3VuZEV2ZW50QXN0LCBkaXJBc3Q6IERpcmVjdGl2ZUFzdCB8IG51bGwpOiB7bmFtZTogc3RyaW5nLCB0YXJnZXQ6IHN0cmluZyB8IG51bGx9IHtcbiAgaWYgKGV2ZW50QXN0LmlzQW5pbWF0aW9uKSB7XG4gICAgcmV0dXJuIHtcbiAgICAgIG5hbWU6IGBAJHtldmVudEFzdC5uYW1lfS4ke2V2ZW50QXN0LnBoYXNlfWAsXG4gICAgICB0YXJnZXQ6IGRpckFzdCAmJiBkaXJBc3QuZGlyZWN0aXZlLmlzQ29tcG9uZW50ID8gJ2NvbXBvbmVudCcgOiBudWxsXG4gICAgfTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gZXZlbnRBc3Q7XG4gIH1cbn1cblxuZnVuY3Rpb24gY2FsY1N0YXRpY0R5bmFtaWNRdWVyeUZsYWdzKHF1ZXJ5OiBDb21waWxlUXVlcnlNZXRhZGF0YSkge1xuICBsZXQgZmxhZ3MgPSBOb2RlRmxhZ3MuTm9uZTtcbiAgLy8gTm90ZTogV2Ugb25seSBtYWtlIHF1ZXJpZXMgc3RhdGljIHRoYXQgcXVlcnkgZm9yIGEgc2luZ2xlIGl0ZW0gYW5kIHRoZSB1c2VyIHNwZWNpZmljYWxseVxuICAvLyBzZXQgdGhlIHRvIGJlIHN0YXRpYy4gVGhpcyBpcyBiZWNhdXNlIG9mIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5IHdpdGggdGhlIG9sZCB2aWV3IGNvbXBpbGVyLi4uXG4gIGlmIChxdWVyeS5maXJzdCAmJiBxdWVyeS5zdGF0aWMpIHtcbiAgICBmbGFncyB8PSBOb2RlRmxhZ3MuU3RhdGljUXVlcnk7XG4gIH0gZWxzZSB7XG4gICAgZmxhZ3MgfD0gTm9kZUZsYWdzLkR5bmFtaWNRdWVyeTtcbiAgfVxuICByZXR1cm4gZmxhZ3M7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBlbGVtZW50RXZlbnRGdWxsTmFtZSh0YXJnZXQ6IHN0cmluZyB8IG51bGwsIG5hbWU6IHN0cmluZyk6IHN0cmluZyB7XG4gIHJldHVybiB0YXJnZXQgPyBgJHt0YXJnZXR9OiR7bmFtZX1gIDogbmFtZTtcbn1cbiJdfQ==