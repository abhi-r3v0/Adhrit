/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { rendererTypeName, tokenReference, viewClassName } from '../compile_metadata';
import { BindingForm, EventHandlerVars, convertActionBinding, convertPropertyBinding, convertPropertyBindingBuiltins } from '../compiler_util/expression_converter';
import { ChangeDetectionStrategy } from '../core';
import { Identifiers } from '../identifiers';
import { LifecycleHooks } from '../lifecycle_reflector';
import { isNgContainer } from '../ml_parser/tags';
import * as o from '../output/output_ast';
import { convertValueToOutputAst } from '../output/value_util';
import { ElementAst, EmbeddedTemplateAst, NgContentAst, templateVisitAll } from '../template_parser/template_ast';
import { componentFactoryResolverProviderDef, depDef, lifecycleHookToNodeFlag, providerDef } from './provider_compiler';
const CLASS_ATTR = 'class';
const STYLE_ATTR = 'style';
const IMPLICIT_TEMPLATE_VAR = '\$implicit';
export class ViewCompileResult {
    constructor(viewClassVar, rendererTypeVar) {
        this.viewClassVar = viewClassVar;
        this.rendererTypeVar = rendererTypeVar;
    }
}
export class ViewCompiler {
    constructor(_reflector) {
        this._reflector = _reflector;
    }
    compileComponent(outputCtx, component, template, styles, usedPipes) {
        let embeddedViewCount = 0;
        let renderComponentVarName = undefined;
        if (!component.isHost) {
            const template = component.template;
            const customRenderData = [];
            if (template.animations && template.animations.length) {
                customRenderData.push(new o.LiteralMapEntry('animation', convertValueToOutputAst(outputCtx, template.animations), true));
            }
            const renderComponentVar = o.variable(rendererTypeName(component.type.reference));
            renderComponentVarName = renderComponentVar.name;
            outputCtx.statements.push(renderComponentVar
                .set(o.importExpr(Identifiers.createRendererType2).callFn([new o.LiteralMapExpr([
                    new o.LiteralMapEntry('encapsulation', o.literal(template.encapsulation), false),
                    new o.LiteralMapEntry('styles', styles, false),
                    new o.LiteralMapEntry('data', new o.LiteralMapExpr(customRenderData), false)
                ])]))
                .toDeclStmt(o.importType(Identifiers.RendererType2), [o.StmtModifier.Final, o.StmtModifier.Exported]));
        }
        const viewBuilderFactory = (parent) => {
            const embeddedViewIndex = embeddedViewCount++;
            return new ViewBuilder(this._reflector, outputCtx, parent, component, embeddedViewIndex, usedPipes, viewBuilderFactory);
        };
        const visitor = viewBuilderFactory(null);
        visitor.visitAll([], template);
        outputCtx.statements.push(...visitor.build());
        return new ViewCompileResult(visitor.viewName, renderComponentVarName);
    }
}
const LOG_VAR = o.variable('_l');
const VIEW_VAR = o.variable('_v');
const CHECK_VAR = o.variable('_ck');
const COMP_VAR = o.variable('_co');
const EVENT_NAME_VAR = o.variable('en');
const ALLOW_DEFAULT_VAR = o.variable(`ad`);
class ViewBuilder {
    constructor(reflector, outputCtx, parent, component, embeddedViewIndex, usedPipes, viewBuilderFactory) {
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
        this.viewName = viewClassName(this.component.type.reference, this.embeddedViewIndex);
    }
    visitAll(variables, astNodes) {
        this.variables = variables;
        // create the pipes for the pure pipes immediately, so that we know their indices.
        if (!this.parent) {
            this.usedPipes.forEach((pipe) => {
                if (pipe.pure) {
                    this.purePipeNodeIndices[pipe.name] = this._createPipe(null, pipe);
                }
            });
        }
        if (!this.parent) {
            this.component.viewQueries.forEach((query, queryIndex) => {
                // Note: queries start with id 1 so we can use the number in a Bloom filter!
                const queryId = queryIndex + 1;
                const bindingType = query.first ? 0 /* First */ : 1 /* All */;
                const flags = 134217728 /* TypeViewQuery */ | calcStaticDynamicQueryFlags(query);
                this.nodes.push(() => ({
                    sourceSpan: null,
                    nodeFlags: flags,
                    nodeDef: o.importExpr(Identifiers.queryDef).callFn([
                        o.literal(flags), o.literal(queryId),
                        new o.LiteralMapExpr([new o.LiteralMapEntry(query.propertyName, o.literal(bindingType), false)])
                    ])
                }));
            });
        }
        templateVisitAll(this, astNodes);
        if (this.parent && (astNodes.length === 0 || needsAdditionalRootNode(astNodes))) {
            // if the view is an embedded view, then we need to add an additional root node in some cases
            this.nodes.push(() => ({
                sourceSpan: null,
                nodeFlags: 1 /* TypeElement */,
                nodeDef: o.importExpr(Identifiers.anchorDef).callFn([
                    o.literal(0 /* None */), o.NULL_EXPR, o.NULL_EXPR, o.literal(0)
                ])
            }));
        }
    }
    build(targetStatements = []) {
        this.children.forEach((child) => child.build(targetStatements));
        const { updateRendererStmts, updateDirectivesStmts, nodeDefExprs } = this._createNodeExpressions();
        const updateRendererFn = this._createUpdateFn(updateRendererStmts);
        const updateDirectivesFn = this._createUpdateFn(updateDirectivesStmts);
        let viewFlags = 0 /* None */;
        if (!this.parent && this.component.changeDetection === ChangeDetectionStrategy.OnPush) {
            viewFlags |= 2 /* OnPush */;
        }
        const viewFactory = new o.DeclareFunctionStmt(this.viewName, [new o.FnParam(LOG_VAR.name)], [new o.ReturnStatement(o.importExpr(Identifiers.viewDef).callFn([
                o.literal(viewFlags),
                o.literalArr(nodeDefExprs),
                updateDirectivesFn,
                updateRendererFn,
            ]))], o.importType(Identifiers.ViewDefinition), this.embeddedViewIndex === 0 ? [o.StmtModifier.Exported] : []);
        targetStatements.push(viewFactory);
        return targetStatements;
    }
    _createUpdateFn(updateStmts) {
        let updateFn;
        if (updateStmts.length > 0) {
            const preStmts = [];
            if (!this.component.isHost && o.findReadVarNames(updateStmts).has(COMP_VAR.name)) {
                preStmts.push(COMP_VAR.set(VIEW_VAR.prop('component')).toDeclStmt(this.compType));
            }
            updateFn = o.fn([
                new o.FnParam(CHECK_VAR.name, o.INFERRED_TYPE),
                new o.FnParam(VIEW_VAR.name, o.INFERRED_TYPE)
            ], [...preStmts, ...updateStmts], o.INFERRED_TYPE);
        }
        else {
            updateFn = o.NULL_EXPR;
        }
        return updateFn;
    }
    visitNgContent(ast, context) {
        // ngContentDef(ngContentIndex: number, index: number): NodeDef;
        this.nodes.push(() => ({
            sourceSpan: ast.sourceSpan,
            nodeFlags: 8 /* TypeNgContent */,
            nodeDef: o.importExpr(Identifiers.ngContentDef).callFn([
                o.literal(ast.ngContentIndex), o.literal(ast.index)
            ])
        }));
    }
    visitText(ast, context) {
        // Static text nodes have no check function
        const checkIndex = -1;
        this.nodes.push(() => ({
            sourceSpan: ast.sourceSpan,
            nodeFlags: 2 /* TypeText */,
            nodeDef: o.importExpr(Identifiers.textDef).callFn([
                o.literal(checkIndex),
                o.literal(ast.ngContentIndex),
                o.literalArr([o.literal(ast.value)]),
            ])
        }));
    }
    visitBoundText(ast, context) {
        const nodeIndex = this.nodes.length;
        // reserve the space in the nodeDefs array
        this.nodes.push(null);
        const astWithSource = ast.value;
        const inter = astWithSource.ast;
        const updateRendererExpressions = inter.expressions.map((expr, bindingIndex) => this._preprocessUpdateExpression({ nodeIndex, bindingIndex, sourceSpan: ast.sourceSpan, context: COMP_VAR, value: expr }));
        // Check index is the same as the node index during compilation
        // They might only differ at runtime
        const checkIndex = nodeIndex;
        this.nodes[nodeIndex] = () => ({
            sourceSpan: ast.sourceSpan,
            nodeFlags: 2 /* TypeText */,
            nodeDef: o.importExpr(Identifiers.textDef).callFn([
                o.literal(checkIndex),
                o.literal(ast.ngContentIndex),
                o.literalArr(inter.strings.map(s => o.literal(s))),
            ]),
            updateRenderer: updateRendererExpressions
        });
    }
    visitEmbeddedTemplate(ast, context) {
        const nodeIndex = this.nodes.length;
        // reserve the space in the nodeDefs array
        this.nodes.push(null);
        const { flags, queryMatchesExpr, hostEvents } = this._visitElementOrTemplate(nodeIndex, ast);
        const childVisitor = this.viewBuilderFactory(this);
        this.children.push(childVisitor);
        childVisitor.visitAll(ast.variables, ast.children);
        const childCount = this.nodes.length - nodeIndex - 1;
        // anchorDef(
        //   flags: NodeFlags, matchedQueries: [string, QueryValueType][], ngContentIndex: number,
        //   childCount: number, handleEventFn?: ElementHandleEventFn, templateFactory?:
        //   ViewDefinitionFactory): NodeDef;
        this.nodes[nodeIndex] = () => ({
            sourceSpan: ast.sourceSpan,
            nodeFlags: 1 /* TypeElement */ | flags,
            nodeDef: o.importExpr(Identifiers.anchorDef).callFn([
                o.literal(flags),
                queryMatchesExpr,
                o.literal(ast.ngContentIndex),
                o.literal(childCount),
                this._createElementHandleEventFn(nodeIndex, hostEvents),
                o.variable(childVisitor.viewName),
            ])
        });
    }
    visitElement(ast, context) {
        const nodeIndex = this.nodes.length;
        // reserve the space in the nodeDefs array so we can add children
        this.nodes.push(null);
        // Using a null element name creates an anchor.
        const elName = isNgContainer(ast.name) ? null : ast.name;
        const { flags, usedEvents, queryMatchesExpr, hostBindings: dirHostBindings, hostEvents } = this._visitElementOrTemplate(nodeIndex, ast);
        let inputDefs = [];
        let updateRendererExpressions = [];
        let outputDefs = [];
        if (elName) {
            const hostBindings = ast.inputs
                .map((inputAst) => ({
                context: COMP_VAR,
                inputAst,
                dirAst: null,
            }))
                .concat(dirHostBindings);
            if (hostBindings.length) {
                updateRendererExpressions =
                    hostBindings.map((hostBinding, bindingIndex) => this._preprocessUpdateExpression({
                        context: hostBinding.context,
                        nodeIndex,
                        bindingIndex,
                        sourceSpan: hostBinding.inputAst.sourceSpan,
                        value: hostBinding.inputAst.value
                    }));
                inputDefs = hostBindings.map(hostBinding => elementBindingDef(hostBinding.inputAst, hostBinding.dirAst));
            }
            outputDefs = usedEvents.map(([target, eventName]) => o.literalArr([o.literal(target), o.literal(eventName)]));
        }
        templateVisitAll(this, ast.children);
        const childCount = this.nodes.length - nodeIndex - 1;
        const compAst = ast.directives.find(dirAst => dirAst.directive.isComponent);
        let compRendererType = o.NULL_EXPR;
        let compView = o.NULL_EXPR;
        if (compAst) {
            compView = this.outputCtx.importExpr(compAst.directive.componentViewType);
            compRendererType = this.outputCtx.importExpr(compAst.directive.rendererType);
        }
        // Check index is the same as the node index during compilation
        // They might only differ at runtime
        const checkIndex = nodeIndex;
        this.nodes[nodeIndex] = () => ({
            sourceSpan: ast.sourceSpan,
            nodeFlags: 1 /* TypeElement */ | flags,
            nodeDef: o.importExpr(Identifiers.elementDef).callFn([
                o.literal(checkIndex),
                o.literal(flags),
                queryMatchesExpr,
                o.literal(ast.ngContentIndex),
                o.literal(childCount),
                o.literal(elName),
                elName ? fixedAttrsDef(ast) : o.NULL_EXPR,
                inputDefs.length ? o.literalArr(inputDefs) : o.NULL_EXPR,
                outputDefs.length ? o.literalArr(outputDefs) : o.NULL_EXPR,
                this._createElementHandleEventFn(nodeIndex, hostEvents),
                compView,
                compRendererType,
            ]),
            updateRenderer: updateRendererExpressions
        });
    }
    _visitElementOrTemplate(nodeIndex, ast) {
        let flags = 0 /* None */;
        if (ast.hasViewContainer) {
            flags |= 16777216 /* EmbeddedViews */;
        }
        const usedEvents = new Map();
        ast.outputs.forEach((event) => {
            const { name, target } = elementEventNameAndTarget(event, null);
            usedEvents.set(elementEventFullName(target, name), [target, name]);
        });
        ast.directives.forEach((dirAst) => {
            dirAst.hostEvents.forEach((event) => {
                const { name, target } = elementEventNameAndTarget(event, dirAst);
                usedEvents.set(elementEventFullName(target, name), [target, name]);
            });
        });
        const hostBindings = [];
        const hostEvents = [];
        this._visitComponentFactoryResolverProvider(ast.directives);
        ast.providers.forEach(providerAst => {
            let dirAst = undefined;
            ast.directives.forEach(localDirAst => {
                if (localDirAst.directive.type.reference === tokenReference(providerAst.token)) {
                    dirAst = localDirAst;
                }
            });
            if (dirAst) {
                const { hostBindings: dirHostBindings, hostEvents: dirHostEvents } = this._visitDirective(providerAst, dirAst, ast.references, ast.queryMatches, usedEvents);
                hostBindings.push(...dirHostBindings);
                hostEvents.push(...dirHostEvents);
            }
            else {
                this._visitProvider(providerAst, ast.queryMatches);
            }
        });
        let queryMatchExprs = [];
        ast.queryMatches.forEach((match) => {
            let valueType = undefined;
            if (tokenReference(match.value) ===
                this.reflector.resolveExternalReference(Identifiers.ElementRef)) {
                valueType = 0 /* ElementRef */;
            }
            else if (tokenReference(match.value) ===
                this.reflector.resolveExternalReference(Identifiers.ViewContainerRef)) {
                valueType = 3 /* ViewContainerRef */;
            }
            else if (tokenReference(match.value) ===
                this.reflector.resolveExternalReference(Identifiers.TemplateRef)) {
                valueType = 2 /* TemplateRef */;
            }
            if (valueType != null) {
                queryMatchExprs.push(o.literalArr([o.literal(match.queryId), o.literal(valueType)]));
            }
        });
        ast.references.forEach((ref) => {
            let valueType = undefined;
            if (!ref.value) {
                valueType = 1 /* RenderElement */;
            }
            else if (tokenReference(ref.value) ===
                this.reflector.resolveExternalReference(Identifiers.TemplateRef)) {
                valueType = 2 /* TemplateRef */;
            }
            if (valueType != null) {
                this.refNodeIndices[ref.name] = nodeIndex;
                queryMatchExprs.push(o.literalArr([o.literal(ref.name), o.literal(valueType)]));
            }
        });
        ast.outputs.forEach((outputAst) => {
            hostEvents.push({ context: COMP_VAR, eventAst: outputAst, dirAst: null });
        });
        return {
            flags,
            usedEvents: Array.from(usedEvents.values()),
            queryMatchesExpr: queryMatchExprs.length ? o.literalArr(queryMatchExprs) : o.NULL_EXPR,
            hostBindings,
            hostEvents: hostEvents
        };
    }
    _visitDirective(providerAst, dirAst, refs, queryMatches, usedEvents) {
        const nodeIndex = this.nodes.length;
        // reserve the space in the nodeDefs array so we can add children
        this.nodes.push(null);
        dirAst.directive.queries.forEach((query, queryIndex) => {
            const queryId = dirAst.contentQueryStartId + queryIndex;
            const flags = 67108864 /* TypeContentQuery */ | calcStaticDynamicQueryFlags(query);
            const bindingType = query.first ? 0 /* First */ : 1 /* All */;
            this.nodes.push(() => ({
                sourceSpan: dirAst.sourceSpan,
                nodeFlags: flags,
                nodeDef: o.importExpr(Identifiers.queryDef).callFn([
                    o.literal(flags), o.literal(queryId),
                    new o.LiteralMapExpr([new o.LiteralMapEntry(query.propertyName, o.literal(bindingType), false)])
                ]),
            }));
        });
        // Note: the operation below might also create new nodeDefs,
        // but we don't want them to be a child of a directive,
        // as they might be a provider/pipe on their own.
        // I.e. we only allow queries as children of directives nodes.
        const childCount = this.nodes.length - nodeIndex - 1;
        let { flags, queryMatchExprs, providerExpr, depsExpr } = this._visitProviderOrDirective(providerAst, queryMatches);
        refs.forEach((ref) => {
            if (ref.value && tokenReference(ref.value) === tokenReference(providerAst.token)) {
                this.refNodeIndices[ref.name] = nodeIndex;
                queryMatchExprs.push(o.literalArr([o.literal(ref.name), o.literal(4 /* Provider */)]));
            }
        });
        if (dirAst.directive.isComponent) {
            flags |= 32768 /* Component */;
        }
        const inputDefs = dirAst.inputs.map((inputAst, inputIndex) => {
            const mapValue = o.literalArr([o.literal(inputIndex), o.literal(inputAst.directiveName)]);
            // Note: it's important to not quote the key so that we can capture renames by minifiers!
            return new o.LiteralMapEntry(inputAst.directiveName, mapValue, false);
        });
        const outputDefs = [];
        const dirMeta = dirAst.directive;
        Object.keys(dirMeta.outputs).forEach((propName) => {
            const eventName = dirMeta.outputs[propName];
            if (usedEvents.has(eventName)) {
                // Note: it's important to not quote the key so that we can capture renames by minifiers!
                outputDefs.push(new o.LiteralMapEntry(propName, o.literal(eventName), false));
            }
        });
        let updateDirectiveExpressions = [];
        if (dirAst.inputs.length || (flags & (262144 /* DoCheck */ | 65536 /* OnInit */)) > 0) {
            updateDirectiveExpressions =
                dirAst.inputs.map((input, bindingIndex) => this._preprocessUpdateExpression({
                    nodeIndex,
                    bindingIndex,
                    sourceSpan: input.sourceSpan,
                    context: COMP_VAR,
                    value: input.value
                }));
        }
        const dirContextExpr = o.importExpr(Identifiers.nodeValue).callFn([VIEW_VAR, o.literal(nodeIndex)]);
        const hostBindings = dirAst.hostProperties.map((inputAst) => ({
            context: dirContextExpr,
            dirAst,
            inputAst,
        }));
        const hostEvents = dirAst.hostEvents.map((hostEventAst) => ({
            context: dirContextExpr,
            eventAst: hostEventAst, dirAst,
        }));
        // Check index is the same as the node index during compilation
        // They might only differ at runtime
        const checkIndex = nodeIndex;
        this.nodes[nodeIndex] = () => ({
            sourceSpan: dirAst.sourceSpan,
            nodeFlags: 16384 /* TypeDirective */ | flags,
            nodeDef: o.importExpr(Identifiers.directiveDef).callFn([
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
        });
        return { hostBindings, hostEvents };
    }
    _visitProvider(providerAst, queryMatches) {
        this._addProviderNode(this._visitProviderOrDirective(providerAst, queryMatches));
    }
    _visitComponentFactoryResolverProvider(directives) {
        const componentDirMeta = directives.find(dirAst => dirAst.directive.isComponent);
        if (componentDirMeta && componentDirMeta.directive.entryComponents.length) {
            const { providerExpr, depsExpr, flags, tokenExpr } = componentFactoryResolverProviderDef(this.reflector, this.outputCtx, 8192 /* PrivateProvider */, componentDirMeta.directive.entryComponents);
            this._addProviderNode({
                providerExpr,
                depsExpr,
                flags,
                tokenExpr,
                queryMatchExprs: [],
                sourceSpan: componentDirMeta.sourceSpan
            });
        }
    }
    _addProviderNode(data) {
        // providerDef(
        //   flags: NodeFlags, matchedQueries: [string, QueryValueType][], token:any,
        //   value: any, deps: ([DepFlags, any] | any)[]): NodeDef;
        this.nodes.push(() => ({
            sourceSpan: data.sourceSpan,
            nodeFlags: data.flags,
            nodeDef: o.importExpr(Identifiers.providerDef).callFn([
                o.literal(data.flags),
                data.queryMatchExprs.length ? o.literalArr(data.queryMatchExprs) : o.NULL_EXPR,
                data.tokenExpr, data.providerExpr, data.depsExpr
            ])
        }));
    }
    _visitProviderOrDirective(providerAst, queryMatches) {
        let flags = 0 /* None */;
        let queryMatchExprs = [];
        queryMatches.forEach((match) => {
            if (tokenReference(match.value) === tokenReference(providerAst.token)) {
                queryMatchExprs.push(o.literalArr([o.literal(match.queryId), o.literal(4 /* Provider */)]));
            }
        });
        const { providerExpr, depsExpr, flags: providerFlags, tokenExpr } = providerDef(this.outputCtx, providerAst);
        return {
            flags: flags | providerFlags,
            queryMatchExprs,
            providerExpr,
            depsExpr,
            tokenExpr,
            sourceSpan: providerAst.sourceSpan
        };
    }
    getLocal(name) {
        if (name == EventHandlerVars.event.name) {
            return EventHandlerVars.event;
        }
        let currViewExpr = VIEW_VAR;
        for (let currBuilder = this; currBuilder; currBuilder = currBuilder.parent,
            currViewExpr = currViewExpr.prop('parent').cast(o.DYNAMIC_TYPE)) {
            // check references
            const refNodeIndex = currBuilder.refNodeIndices[name];
            if (refNodeIndex != null) {
                return o.importExpr(Identifiers.nodeValue).callFn([currViewExpr, o.literal(refNodeIndex)]);
            }
            // check variables
            const varAst = currBuilder.variables.find((varAst) => varAst.name === name);
            if (varAst) {
                const varValue = varAst.value || IMPLICIT_TEMPLATE_VAR;
                return currViewExpr.prop('context').prop(varValue);
            }
        }
        return null;
    }
    notifyImplicitReceiverUse() {
        // Not needed in View Engine as View Engine walks through the generated
        // expressions to figure out if the implicit receiver is used and needs
        // to be generated as part of the pre-update statements.
    }
    _createLiteralArrayConverter(sourceSpan, argCount) {
        if (argCount === 0) {
            const valueExpr = o.importExpr(Identifiers.EMPTY_ARRAY);
            return () => valueExpr;
        }
        const checkIndex = this.nodes.length;
        this.nodes.push(() => ({
            sourceSpan,
            nodeFlags: 32 /* TypePureArray */,
            nodeDef: o.importExpr(Identifiers.pureArrayDef).callFn([
                o.literal(checkIndex),
                o.literal(argCount),
            ])
        }));
        return (args) => callCheckStmt(checkIndex, args);
    }
    _createLiteralMapConverter(sourceSpan, keys) {
        if (keys.length === 0) {
            const valueExpr = o.importExpr(Identifiers.EMPTY_MAP);
            return () => valueExpr;
        }
        const map = o.literalMap(keys.map((e, i) => (Object.assign(Object.assign({}, e), { value: o.literal(i) }))));
        const checkIndex = this.nodes.length;
        this.nodes.push(() => ({
            sourceSpan,
            nodeFlags: 64 /* TypePureObject */,
            nodeDef: o.importExpr(Identifiers.pureObjectDef).callFn([
                o.literal(checkIndex),
                map,
            ])
        }));
        return (args) => callCheckStmt(checkIndex, args);
    }
    _createPipeConverter(expression, name, argCount) {
        const pipe = this.usedPipes.find((pipeSummary) => pipeSummary.name === name);
        if (pipe.pure) {
            const checkIndex = this.nodes.length;
            this.nodes.push(() => ({
                sourceSpan: expression.sourceSpan,
                nodeFlags: 128 /* TypePurePipe */,
                nodeDef: o.importExpr(Identifiers.purePipeDef).callFn([
                    o.literal(checkIndex),
                    o.literal(argCount),
                ])
            }));
            // find underlying pipe in the component view
            let compViewExpr = VIEW_VAR;
            let compBuilder = this;
            while (compBuilder.parent) {
                compBuilder = compBuilder.parent;
                compViewExpr = compViewExpr.prop('parent').cast(o.DYNAMIC_TYPE);
            }
            const pipeNodeIndex = compBuilder.purePipeNodeIndices[name];
            const pipeValueExpr = o.importExpr(Identifiers.nodeValue).callFn([compViewExpr, o.literal(pipeNodeIndex)]);
            return (args) => callUnwrapValue(expression.nodeIndex, expression.bindingIndex, callCheckStmt(checkIndex, [pipeValueExpr].concat(args)));
        }
        else {
            const nodeIndex = this._createPipe(expression.sourceSpan, pipe);
            const nodeValueExpr = o.importExpr(Identifiers.nodeValue).callFn([VIEW_VAR, o.literal(nodeIndex)]);
            return (args) => callUnwrapValue(expression.nodeIndex, expression.bindingIndex, nodeValueExpr.callMethod('transform', args));
        }
    }
    _createPipe(sourceSpan, pipe) {
        const nodeIndex = this.nodes.length;
        let flags = 0 /* None */;
        pipe.type.lifecycleHooks.forEach((lifecycleHook) => {
            // for pipes, we only support ngOnDestroy
            if (lifecycleHook === LifecycleHooks.OnDestroy) {
                flags |= lifecycleHookToNodeFlag(lifecycleHook);
            }
        });
        const depExprs = pipe.type.diDeps.map((diDep) => depDef(this.outputCtx, diDep));
        // function pipeDef(
        //   flags: NodeFlags, ctor: any, deps: ([DepFlags, any] | any)[]): NodeDef
        this.nodes.push(() => ({
            sourceSpan,
            nodeFlags: 16 /* TypePipe */,
            nodeDef: o.importExpr(Identifiers.pipeDef).callFn([
                o.literal(flags), this.outputCtx.importExpr(pipe.type.reference), o.literalArr(depExprs)
            ])
        }));
        return nodeIndex;
    }
    /**
     * For the AST in `UpdateExpression.value`:
     * - create nodes for pipes, literal arrays and, literal maps,
     * - update the AST to replace pipes, literal arrays and, literal maps with calls to check fn.
     *
     * WARNING: This might create new nodeDefs (for pipes and literal arrays and literal maps)!
     */
    _preprocessUpdateExpression(expression) {
        return {
            nodeIndex: expression.nodeIndex,
            bindingIndex: expression.bindingIndex,
            sourceSpan: expression.sourceSpan,
            context: expression.context,
            value: convertPropertyBindingBuiltins({
                createLiteralArrayConverter: (argCount) => this._createLiteralArrayConverter(expression.sourceSpan, argCount),
                createLiteralMapConverter: (keys) => this._createLiteralMapConverter(expression.sourceSpan, keys),
                createPipeConverter: (name, argCount) => this._createPipeConverter(expression, name, argCount)
            }, expression.value)
        };
    }
    _createNodeExpressions() {
        const self = this;
        let updateBindingCount = 0;
        const updateRendererStmts = [];
        const updateDirectivesStmts = [];
        const nodeDefExprs = this.nodes.map((factory, nodeIndex) => {
            const { nodeDef, nodeFlags, updateDirectives, updateRenderer, sourceSpan } = factory();
            if (updateRenderer) {
                updateRendererStmts.push(...createUpdateStatements(nodeIndex, sourceSpan, updateRenderer, false));
            }
            if (updateDirectives) {
                updateDirectivesStmts.push(...createUpdateStatements(nodeIndex, sourceSpan, updateDirectives, (nodeFlags & (262144 /* DoCheck */ | 65536 /* OnInit */)) > 0));
            }
            // We use a comma expression to call the log function before
            // the nodeDef function, but still use the result of the nodeDef function
            // as the value.
            // Note: We only add the logger to elements / text nodes,
            // so we don't generate too much code.
            const logWithNodeDef = nodeFlags & 3 /* CatRenderNode */ ?
                new o.CommaExpr([LOG_VAR.callFn([]).callFn([]), nodeDef]) :
                nodeDef;
            return o.applySourceSpanToExpressionIfNeeded(logWithNodeDef, sourceSpan);
        });
        return { updateRendererStmts, updateDirectivesStmts, nodeDefExprs };
        function createUpdateStatements(nodeIndex, sourceSpan, expressions, allowEmptyExprs) {
            const updateStmts = [];
            const exprs = expressions.map(({ sourceSpan, context, value }) => {
                const bindingId = `${updateBindingCount++}`;
                const nameResolver = context === COMP_VAR ? self : null;
                const { stmts, currValExpr } = convertPropertyBinding(nameResolver, context, value, bindingId, BindingForm.General);
                updateStmts.push(...stmts.map((stmt) => o.applySourceSpanToStatementIfNeeded(stmt, sourceSpan)));
                return o.applySourceSpanToExpressionIfNeeded(currValExpr, sourceSpan);
            });
            if (expressions.length || allowEmptyExprs) {
                updateStmts.push(o.applySourceSpanToStatementIfNeeded(callCheckStmt(nodeIndex, exprs).toStmt(), sourceSpan));
            }
            return updateStmts;
        }
    }
    _createElementHandleEventFn(nodeIndex, handlers) {
        const handleEventStmts = [];
        let handleEventBindingCount = 0;
        handlers.forEach(({ context, eventAst, dirAst }) => {
            const bindingId = `${handleEventBindingCount++}`;
            const nameResolver = context === COMP_VAR ? this : null;
            const { stmts, allowDefault } = convertActionBinding(nameResolver, context, eventAst.handler, bindingId);
            const trueStmts = stmts;
            if (allowDefault) {
                trueStmts.push(ALLOW_DEFAULT_VAR.set(allowDefault.and(ALLOW_DEFAULT_VAR)).toStmt());
            }
            const { target: eventTarget, name: eventName } = elementEventNameAndTarget(eventAst, dirAst);
            const fullEventName = elementEventFullName(eventTarget, eventName);
            handleEventStmts.push(o.applySourceSpanToStatementIfNeeded(new o.IfStmt(o.literal(fullEventName).identical(EVENT_NAME_VAR), trueStmts), eventAst.sourceSpan));
        });
        let handleEventFn;
        if (handleEventStmts.length > 0) {
            const preStmts = [ALLOW_DEFAULT_VAR.set(o.literal(true)).toDeclStmt(o.BOOL_TYPE)];
            if (!this.component.isHost && o.findReadVarNames(handleEventStmts).has(COMP_VAR.name)) {
                preStmts.push(COMP_VAR.set(VIEW_VAR.prop('component')).toDeclStmt(this.compType));
            }
            handleEventFn = o.fn([
                new o.FnParam(VIEW_VAR.name, o.INFERRED_TYPE),
                new o.FnParam(EVENT_NAME_VAR.name, o.INFERRED_TYPE),
                new o.FnParam(EventHandlerVars.event.name, o.INFERRED_TYPE)
            ], [...preStmts, ...handleEventStmts, new o.ReturnStatement(ALLOW_DEFAULT_VAR)], o.INFERRED_TYPE);
        }
        else {
            handleEventFn = o.NULL_EXPR;
        }
        return handleEventFn;
    }
    visitDirective(ast, context) { }
    visitDirectiveProperty(ast, context) { }
    visitReference(ast, context) { }
    visitVariable(ast, context) { }
    visitEvent(ast, context) { }
    visitElementProperty(ast, context) { }
    visitAttr(ast, context) { }
}
function needsAdditionalRootNode(astNodes) {
    const lastAstNode = astNodes[astNodes.length - 1];
    if (lastAstNode instanceof EmbeddedTemplateAst) {
        return lastAstNode.hasViewContainer;
    }
    if (lastAstNode instanceof ElementAst) {
        if (isNgContainer(lastAstNode.name) && lastAstNode.children.length) {
            return needsAdditionalRootNode(lastAstNode.children);
        }
        return lastAstNode.hasViewContainer;
    }
    return lastAstNode instanceof NgContentAst;
}
function elementBindingDef(inputAst, dirAst) {
    const inputType = inputAst.type;
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
            const bindingType = 8 /* TypeProperty */ |
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
            const unexpected = inputType;
            throw new Error(`unexpected ${unexpected}`);
    }
}
function fixedAttrsDef(elementAst) {
    const mapResult = Object.create(null);
    elementAst.attrs.forEach(attrAst => { mapResult[attrAst.name] = attrAst.value; });
    elementAst.directives.forEach(dirAst => {
        Object.keys(dirAst.directive.hostAttributes).forEach(name => {
            const value = dirAst.directive.hostAttributes[name];
            const prevValue = mapResult[name];
            mapResult[name] = prevValue != null ? mergeAttributeValue(name, prevValue, value) : value;
        });
    });
    // Note: We need to sort to get a defined output order
    // for tests and for caching generated artifacts...
    return o.literalArr(Object.keys(mapResult).sort().map((attrName) => o.literalArr([o.literal(attrName), o.literal(mapResult[attrName])])));
}
function mergeAttributeValue(attrName, attrValue1, attrValue2) {
    if (attrName == CLASS_ATTR || attrName == STYLE_ATTR) {
        return `${attrValue1} ${attrValue2}`;
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
        return CHECK_VAR.callFn([VIEW_VAR, o.literal(nodeIndex), o.literal(0 /* Inline */), ...exprs]);
    }
}
function callUnwrapValue(nodeIndex, bindingIdx, expr) {
    return o.importExpr(Identifiers.unwrapValue).callFn([
        VIEW_VAR, o.literal(nodeIndex), o.literal(bindingIdx), expr
    ]);
}
function elementEventNameAndTarget(eventAst, dirAst) {
    if (eventAst.isAnimation) {
        return {
            name: `@${eventAst.name}.${eventAst.phase}`,
            target: dirAst && dirAst.directive.isComponent ? 'component' : null
        };
    }
    else {
        return eventAst;
    }
}
function calcStaticDynamicQueryFlags(query) {
    let flags = 0 /* None */;
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
export function elementEventFullName(target, name) {
    return target ? `${target}:${name}` : name;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlld19jb21waWxlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy92aWV3X2NvbXBpbGVyL3ZpZXdfY29tcGlsZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFxRSxnQkFBZ0IsRUFBRSxjQUFjLEVBQUUsYUFBYSxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFFeEosT0FBTyxFQUFDLFdBQVcsRUFBb0IsZ0JBQWdCLEVBQWlCLG9CQUFvQixFQUFFLHNCQUFzQixFQUFFLDhCQUE4QixFQUFDLE1BQU0sdUNBQXVDLENBQUM7QUFDbk0sT0FBTyxFQUE2Qix1QkFBdUIsRUFBeUQsTUFBTSxTQUFTLENBQUM7QUFFcEksT0FBTyxFQUFDLFdBQVcsRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBQzNDLE9BQU8sRUFBQyxjQUFjLEVBQUMsTUFBTSx3QkFBd0IsQ0FBQztBQUN0RCxPQUFPLEVBQUMsYUFBYSxFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFDaEQsT0FBTyxLQUFLLENBQUMsTUFBTSxzQkFBc0IsQ0FBQztBQUMxQyxPQUFPLEVBQUMsdUJBQXVCLEVBQUMsTUFBTSxzQkFBc0IsQ0FBQztBQUU3RCxPQUFPLEVBQXlHLFVBQVUsRUFBRSxtQkFBbUIsRUFBRSxZQUFZLEVBQXFILGdCQUFnQixFQUFDLE1BQU0saUNBQWlDLENBQUM7QUFHM1UsT0FBTyxFQUFDLG1DQUFtQyxFQUFFLE1BQU0sRUFBRSx1QkFBdUIsRUFBRSxXQUFXLEVBQUMsTUFBTSxxQkFBcUIsQ0FBQztBQUV0SCxNQUFNLFVBQVUsR0FBRyxPQUFPLENBQUM7QUFDM0IsTUFBTSxVQUFVLEdBQUcsT0FBTyxDQUFDO0FBQzNCLE1BQU0scUJBQXFCLEdBQUcsWUFBWSxDQUFDO0FBRTNDLE1BQU0sT0FBTyxpQkFBaUI7SUFDNUIsWUFBbUIsWUFBb0IsRUFBUyxlQUF1QjtR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QUFJLEtBQUssZUFBaUIsQ0FBQztJQUMzQiwyRkFBMkY7SUFDM0YsaUdBQWlHO0lBQ2pHLElBQUksS0FBSyxDQUFDLEtBQUssSUFBSSxLQUFLLENBQUMsTUFBTSxFQUFFO1FBQy9CLEtBQUssK0JBQXlCLENBQUM7S0FDaEM7U0FBTTtRQUNMLEtBQUssZ0NBQTBCLENBQUM7S0FDakM7SUFDRCxPQUFPLEtBQUssQ0FBQztBQUNmLENBQUM7QUFFRCxNQUFNLFVBQVUsb0JBQW9CLENBQUMsTUFBcUIsRUFBRSxJQUFZO0lBQ3RFLE9BQU8sTUFBTSxDQUFDLENBQUMsQ0FBQyxHQUFHLE1BQU0sSUFBSSxJQUFJLEVBQUUsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDO0FBQzdDLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Q29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhLCBDb21waWxlUGlwZVN1bW1hcnksIENvbXBpbGVRdWVyeU1ldGFkYXRhLCByZW5kZXJlclR5cGVOYW1lLCB0b2tlblJlZmVyZW5jZSwgdmlld0NsYXNzTmFtZX0gZnJvbSAnLi4vY29tcGlsZV9tZXRhZGF0YSc7XG5pbXBvcnQge0NvbXBpbGVSZWZsZWN0b3J9IGZyb20gJy4uL2NvbXBpbGVfcmVmbGVjdG9yJztcbmltcG9ydCB7QmluZGluZ0Zvcm0sIEJ1aWx0aW5Db252ZXJ0ZXIsIEV2ZW50SGFuZGxlclZhcnMsIExvY2FsUmVzb2x2ZXIsIGNvbnZlcnRBY3Rpb25CaW5kaW5nLCBjb252ZXJ0UHJvcGVydHlCaW5kaW5nLCBjb252ZXJ0UHJvcGVydHlCaW5kaW5nQnVpbHRpbnN9IGZyb20gJy4uL2NvbXBpbGVyX3V0aWwvZXhwcmVzc2lvbl9jb252ZXJ0ZXInO1xuaW1wb3J0IHtBcmd1bWVudFR5cGUsIEJpbmRpbmdGbGFncywgQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3ksIE5vZGVGbGFncywgUXVlcnlCaW5kaW5nVHlwZSwgUXVlcnlWYWx1ZVR5cGUsIFZpZXdGbGFnc30gZnJvbSAnLi4vY29yZSc7XG5pbXBvcnQge0FTVCwgQVNUV2l0aFNvdXJjZSwgSW50ZXJwb2xhdGlvbn0gZnJvbSAnLi4vZXhwcmVzc2lvbl9wYXJzZXIvYXN0JztcbmltcG9ydCB7SWRlbnRpZmllcnN9IGZyb20gJy4uL2lkZW50aWZpZXJzJztcbmltcG9ydCB7TGlmZWN5Y2xlSG9va3N9IGZyb20gJy4uL2xpZmVjeWNsZV9yZWZsZWN0b3InO1xuaW1wb3J0IHtpc05nQ29udGFpbmVyfSBmcm9tICcuLi9tbF9wYXJzZXIvdGFncyc7XG5pbXBvcnQgKiBhcyBvIGZyb20gJy4uL291dHB1dC9vdXRwdXRfYXN0JztcbmltcG9ydCB7Y29udmVydFZhbHVlVG9PdXRwdXRBc3R9IGZyb20gJy4uL291dHB1dC92YWx1ZV91dGlsJztcbmltcG9ydCB7UGFyc2VTb3VyY2VTcGFufSBmcm9tICcuLi9wYXJzZV91dGlsJztcbmltcG9ydCB7QXR0ckFzdCwgQm91bmREaXJlY3RpdmVQcm9wZXJ0eUFzdCwgQm91bmRFbGVtZW50UHJvcGVydHlBc3QsIEJvdW5kRXZlbnRBc3QsIEJvdW5kVGV4dEFzdCwgRGlyZWN0aXZlQXN0LCBFbGVtZW50QXN0LCBFbWJlZGRlZFRlbXBsYXRlQXN0LCBOZ0NvbnRlbnRBc3QsIFByb3BlcnR5QmluZGluZ1R5cGUsIFByb3ZpZGVyQXN0LCBRdWVyeU1hdGNoLCBSZWZlcmVuY2VBc3QsIFRlbXBsYXRlQXN0LCBUZW1wbGF0ZUFzdFZpc2l0b3IsIFRleHRBc3QsIFZhcmlhYmxlQXN0LCB0ZW1wbGF0ZVZpc2l0QWxsfSBmcm9tICcuLi90ZW1wbGF0ZV9wYXJzZXIvdGVtcGxhdGVfYXN0JztcbmltcG9ydCB7T3V0cHV0Q29udGV4dH0gZnJvbSAnLi4vdXRpbCc7XG5cbmltcG9ydCB7Y29tcG9uZW50RmFjdG9yeVJlc29sdmVyUHJvdmlkZXJEZWYsIGRlcERlZiwgbGlmZWN5Y2xlSG9va1RvTm9kZUZsYWcsIHByb3ZpZGVyRGVmfSBmcm9tICcuL3Byb3ZpZGVyX2NvbXBpbGVyJztcblxuY29uc3QgQ0xBU1NfQVRUUiA9ICdjbGFzcyc7XG5jb25zdCBTVFlMRV9BVFRSID0gJ3N0eWxlJztcbmNvbnN0IElNUExJQ0lUX1RFTVBMQVRFX1ZBUiA9ICdcXCRpbXBsaWNpdCc7XG5cbmV4cG9ydCBjbGFzcyBWaWV3Q29tcGlsZVJlc3VsdCB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyB2aWV3Q2xhc3NWYXI6IHN0cmluZywgcHVibGljIHJlbmRlcmVyVHlwZVZhcjogc3RyaW5nKSB7fVxufVxuXG5leHBvcnQgY2xhc3MgVmlld0NvbXBpbGVyIHtcbiAgY29uc3RydWN0b3IocHJpdmF0ZSBfcmVmbGVjdG9yOiBDb21waWxlUmVmbGVjdG9yKSB7fVxuXG4gIGNvbXBpbGVDb21wb25lbnQoXG4gICAgICBvdXRwdXRDdHg6IE91dHB1dENvbnRleHQsIGNvbXBvbmVudDogQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhLCB0ZW1wbGF0ZTogVGVtcGxhdGVBc3RbXSxcbiAgICAgIHN0eWxlczogby5FeHByZXNzaW9uLCB1c2VkUGlwZXM6IENvbXBpbGVQaXBlU3VtbWFyeVtdKTogVmlld0NvbXBpbGVSZXN1bHQge1xuICAgIGxldCBlbWJlZGRlZFZpZXdDb3VudCA9IDA7XG5cbiAgICBsZXQgcmVuZGVyQ29tcG9uZW50VmFyTmFtZTogc3RyaW5nID0gdW5kZWZpbmVkICE7XG4gICAgaWYgKCFjb21wb25lbnQuaXNIb3N0KSB7XG4gICAgICBjb25zdCB0ZW1wbGF0ZSA9IGNvbXBvbmVudC50ZW1wbGF0ZSAhO1xuICAgICAgY29uc3QgY3VzdG9tUmVuZGVyRGF0YTogby5MaXRlcmFsTWFwRW50cnlbXSA9IFtdO1xuICAgICAgaWYgKHRlbXBsYXRlLmFuaW1hdGlvbnMgJiYgdGVtcGxhdGUuYW5pbWF0aW9ucy5sZW5ndGgpIHtcbiAgICAgICAgY3VzdG9tUmVuZGVyRGF0YS5wdXNoKG5ldyBvLkxpdGVyYWxNYXBFbnRyeShcbiAgICAgICAgICAgICdhbmltYXRpb24nLCBjb252ZXJ0VmFsdWVUb091dHB1dEFzdChvdXRwdXRDdHgsIHRlbXBsYXRlLmFuaW1hdGlvbnMpLCB0cnVlKSk7XG4gICAgICB9XG5cbiAgICAgIGNvbnN0IHJlbmRlckNvbXBvbmVudFZhciA9IG8udmFyaWFibGUocmVuZGVyZXJUeXBlTmFtZShjb21wb25lbnQudHlwZS5yZWZlcmVuY2UpKTtcbiAgICAgIHJlbmRlckNvbXBvbmVudFZhck5hbWUgPSByZW5kZXJDb21wb25lbnRWYXIubmFtZSAhO1xuICAgICAgb3V0cHV0Q3R4LnN0YXRlbWVudHMucHVzaChcbiAgICAgICAgICByZW5kZXJDb21wb25lbnRWYXJcbiAgICAgICAgICAgICAgLnNldChvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMuY3JlYXRlUmVuZGVyZXJUeXBlMikuY2FsbEZuKFtuZXcgby5MaXRlcmFsTWFwRXhwcihbXG4gICAgICAgICAgICAgICAgbmV3IG8uTGl0ZXJhbE1hcEVudHJ5KCdlbmNhcHN1bGF0aW9uJywgby5saXRlcmFsKHRlbXBsYXRlLmVuY2Fwc3VsYXRpb24pLCBmYWxzZSksXG4gICAgICAgICAgICAgICAgbmV3IG8uTGl0ZXJhbE1hcEVudHJ5KCdzdHlsZXMnLCBzdHlsZXMsIGZhbHNlKSxcbiAgICAgICAgICAgICAgICBuZXcgby5MaXRlcmFsTWFwRW50cnkoJ2RhdGEnLCBuZXcgby5MaXRlcmFsTWFwRXhwcihjdXN0b21SZW5kZXJEYXRhKSwgZmFsc2UpXG4gICAgICAgICAgICAgIF0pXSkpXG4gICAgICAgICAgICAgIC50b0RlY2xTdG10KFxuICAgICAgICAgICAgICAgICAgby5pbXBvcnRUeXBlKElkZW50aWZpZXJzLlJlbmRlcmVyVHlwZTIpLFxuICAgICAgICAgICAgICAgICAgW28uU3RtdE1vZGlmaWVyLkZpbmFsLCBvLlN0bXRNb2RpZmllci5FeHBvcnRlZF0pKTtcbiAgICB9XG5cbiAgICBjb25zdCB2aWV3QnVpbGRlckZhY3RvcnkgPSAocGFyZW50OiBWaWV3QnVpbGRlciB8IG51bGwpOiBWaWV3QnVpbGRlciA9PiB7XG4gICAgICBjb25zdCBlbWJlZGRlZFZpZXdJbmRleCA9IGVtYmVkZGVkVmlld0NvdW50Kys7XG4gICAgICByZXR1cm4gbmV3IFZpZXdCdWlsZGVyKFxuICAgICAgICAgIHRoaXMuX3JlZmxlY3Rvciwgb3V0cHV0Q3R4LCBwYXJlbnQsIGNvbXBvbmVudCwgZW1iZWRkZWRWaWV3SW5kZXgsIHVzZWRQaXBlcyxcbiAgICAgICAgICB2aWV3QnVpbGRlckZhY3RvcnkpO1xuICAgIH07XG5cbiAgICBjb25zdCB2aXNpdG9yID0gdmlld0J1aWxkZXJGYWN0b3J5KG51bGwpO1xuICAgIHZpc2l0b3IudmlzaXRBbGwoW10sIHRlbXBsYXRlKTtcblxuICAgIG91dHB1dEN0eC5zdGF0ZW1lbnRzLnB1c2goLi4udmlzaXRvci5idWlsZCgpKTtcblxuICAgIHJldHVybiBuZXcgVmlld0NvbXBpbGVSZXN1bHQodmlzaXRvci52aWV3TmFtZSwgcmVuZGVyQ29tcG9uZW50VmFyTmFtZSk7XG4gIH1cbn1cblxuaW50ZXJmYWNlIFZpZXdCdWlsZGVyRmFjdG9yeSB7XG4gIChwYXJlbnQ6IFZpZXdCdWlsZGVyKTogVmlld0J1aWxkZXI7XG59XG5cbmludGVyZmFjZSBVcGRhdGVFeHByZXNzaW9uIHtcbiAgY29udGV4dDogby5FeHByZXNzaW9uO1xuICBub2RlSW5kZXg6IG51bWJlcjtcbiAgYmluZGluZ0luZGV4OiBudW1iZXI7XG4gIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbjtcbiAgdmFsdWU6IEFTVDtcbn1cblxuY29uc3QgTE9HX1ZBUiA9IG8udmFyaWFibGUoJ19sJyk7XG5jb25zdCBWSUVXX1ZBUiA9IG8udmFyaWFibGUoJ192Jyk7XG5jb25zdCBDSEVDS19WQVIgPSBvLnZhcmlhYmxlKCdfY2snKTtcbmNvbnN0IENPTVBfVkFSID0gby52YXJpYWJsZSgnX2NvJyk7XG5jb25zdCBFVkVOVF9OQU1FX1ZBUiA9IG8udmFyaWFibGUoJ2VuJyk7XG5jb25zdCBBTExPV19ERUZBVUxUX1ZBUiA9IG8udmFyaWFibGUoYGFkYCk7XG5cbmNsYXNzIFZpZXdCdWlsZGVyIGltcGxlbWVudHMgVGVtcGxhdGVBc3RWaXNpdG9yLCBMb2NhbFJlc29sdmVyIHtcbiAgcHJpdmF0ZSBjb21wVHlwZTogby5UeXBlO1xuICBwcml2YXRlIG5vZGVzOiAoKCkgPT4ge1xuICAgIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiB8IG51bGwsXG4gICAgbm9kZURlZjogby5FeHByZXNzaW9uLFxuICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLCB1cGRhdGVEaXJlY3RpdmVzPzogVXBkYXRlRXhwcmVzc2lvbltdLCB1cGRhdGVSZW5kZXJlcj86IFVwZGF0ZUV4cHJlc3Npb25bXVxuICB9KVtdID0gW107XG4gIHByaXZhdGUgcHVyZVBpcGVOb2RlSW5kaWNlczoge1twaXBlTmFtZTogc3RyaW5nXTogbnVtYmVyfSA9IE9iamVjdC5jcmVhdGUobnVsbCk7XG4gIC8vIE5lZWQgT2JqZWN0LmNyZWF0ZSBzbyB0aGF0IHdlIGRvbid0IGhhdmUgYnVpbHRpbiB2YWx1ZXMuLi5cbiAgcHJpdmF0ZSByZWZOb2RlSW5kaWNlczoge1tyZWZOYW1lOiBzdHJpbmddOiBudW1iZXJ9ID0gT2JqZWN0LmNyZWF0ZShudWxsKTtcbiAgcHJpdmF0ZSB2YXJpYWJsZXM6IFZhcmlhYmxlQXN0W10gPSBbXTtcbiAgcHJpdmF0ZSBjaGlsZHJlbjogVmlld0J1aWxkZXJbXSA9IFtdO1xuXG4gIHB1YmxpYyByZWFkb25seSB2aWV3TmFtZTogc3RyaW5nO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSByZWZsZWN0b3I6IENvbXBpbGVSZWZsZWN0b3IsIHByaXZhdGUgb3V0cHV0Q3R4OiBPdXRwdXRDb250ZXh0LFxuICAgICAgcHJpdmF0ZSBwYXJlbnQ6IFZpZXdCdWlsZGVyfG51bGwsIHByaXZhdGUgY29tcG9uZW50OiBDb21waWxlRGlyZWN0aXZlTWV0YWRhdGEsXG4gICAgICBwcml2YXRlIGVtYmVkZGVkVmlld0luZGV4OiBudW1iZXIsIHByaXZhdGUgdXNlZFBpcGVzOiBDb21waWxlUGlwZVN1bW1hcnlbXSxcbiAgICAgIHByaXZhdGUgdmlld0J1aWxkZXJGYWN0b3J5OiBWaWV3QnVpbGRlckZhY3RvcnkpIHtcbiAgICAvLyBUT0RPKHRib3NjaCk6IFRoZSBvbGQgdmlldyBjb21waWxlciB1c2VkIHRvIHVzZSBhbiBgYW55YCB0eXBlXG4gICAgLy8gZm9yIHRoZSBjb250ZXh0IGluIGFueSBlbWJlZGRlZCB2aWV3LiBXZSBrZWVwIHRoaXMgYmVoYWl2b3IgZm9yIG5vd1xuICAgIC8vIHRvIGJlIGFibGUgdG8gaW50cm9kdWNlIHRoZSBuZXcgdmlldyBjb21waWxlciB3aXRob3V0IHRvbyBtYW55IGVycm9ycy5cbiAgICB0aGlzLmNvbXBUeXBlID0gdGhpcy5lbWJlZGRlZFZpZXdJbmRleCA+IDAgP1xuICAgICAgICBvLkRZTkFNSUNfVFlQRSA6XG4gICAgICAgIG8uZXhwcmVzc2lvblR5cGUob3V0cHV0Q3R4LmltcG9ydEV4cHIodGhpcy5jb21wb25lbnQudHlwZS5yZWZlcmVuY2UpKSAhO1xuICAgIHRoaXMudmlld05hbWUgPSB2aWV3Q2xhc3NOYW1lKHRoaXMuY29tcG9uZW50LnR5cGUucmVmZXJlbmNlLCB0aGlzLmVtYmVkZGVkVmlld0luZGV4KTtcbiAgfVxuXG4gIHZpc2l0QWxsKHZhcmlhYmxlczogVmFyaWFibGVBc3RbXSwgYXN0Tm9kZXM6IFRlbXBsYXRlQXN0W10pIHtcbiAgICB0aGlzLnZhcmlhYmxlcyA9IHZhcmlhYmxlcztcbiAgICAvLyBjcmVhdGUgdGhlIHBpcGVzIGZvciB0aGUgcHVyZSBwaXBlcyBpbW1lZGlhdGVseSwgc28gdGhhdCB3ZSBrbm93IHRoZWlyIGluZGljZXMuXG4gICAgaWYgKCF0aGlzLnBhcmVudCkge1xuICAgICAgdGhpcy51c2VkUGlwZXMuZm9yRWFjaCgocGlwZSkgPT4ge1xuICAgICAgICBpZiAocGlwZS5wdXJlKSB7XG4gICAgICAgICAgdGhpcy5wdXJlUGlwZU5vZGVJbmRpY2VzW3BpcGUubmFtZV0gPSB0aGlzLl9jcmVhdGVQaXBlKG51bGwsIHBpcGUpO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICB9XG5cbiAgICBpZiAoIXRoaXMucGFyZW50KSB7XG4gICAgICB0aGlzLmNvbXBvbmVudC52aWV3UXVlcmllcy5mb3JFYWNoKChxdWVyeSwgcXVlcnlJbmRleCkgPT4ge1xuICAgICAgICAvLyBOb3RlOiBxdWVyaWVzIHN0YXJ0IHdpdGggaWQgMSBzbyB3ZSBjYW4gdXNlIHRoZSBudW1iZXIgaW4gYSBCbG9vbSBmaWx0ZXIhXG4gICAgICAgIGNvbnN0IHF1ZXJ5SWQgPSBxdWVyeUluZGV4ICsgMTtcbiAgICAgICAgY29uc3QgYmluZGluZ1R5cGUgPSBxdWVyeS5maXJzdCA/IFF1ZXJ5QmluZGluZ1R5cGUuRmlyc3QgOiBRdWVyeUJpbmRpbmdUeXBlLkFsbDtcbiAgICAgICAgY29uc3QgZmxhZ3MgPSBOb2RlRmxhZ3MuVHlwZVZpZXdRdWVyeSB8IGNhbGNTdGF0aWNEeW5hbWljUXVlcnlGbGFncyhxdWVyeSk7XG4gICAgICAgIHRoaXMubm9kZXMucHVzaCgoKSA9PiAoe1xuICAgICAgICAgICAgICAgICAgICAgICAgICBzb3VyY2VTcGFuOiBudWxsLFxuICAgICAgICAgICAgICAgICAgICAgICAgICBub2RlRmxhZ3M6IGZsYWdzLFxuICAgICAgICAgICAgICAgICAgICAgICAgICBub2RlRGVmOiBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMucXVlcnlEZWYpLmNhbGxGbihbXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsKGZsYWdzKSwgby5saXRlcmFsKHF1ZXJ5SWQpLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgIG5ldyBvLkxpdGVyYWxNYXBFeHByKFtuZXcgby5MaXRlcmFsTWFwRW50cnkoXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHF1ZXJ5LnByb3BlcnR5TmFtZSwgby5saXRlcmFsKGJpbmRpbmdUeXBlKSwgZmFsc2UpXSlcbiAgICAgICAgICAgICAgICAgICAgICAgICAgXSlcbiAgICAgICAgICAgICAgICAgICAgICAgIH0pKTtcbiAgICAgIH0pO1xuICAgIH1cbiAgICB0ZW1wbGF0ZVZpc2l0QWxsKHRoaXMsIGFzdE5vZGVzKTtcbiAgICBpZiAodGhpcy5wYXJlbnQgJiYgKGFzdE5vZGVzLmxlbmd0aCA9PT0gMCB8fCBuZWVkc0FkZGl0aW9uYWxSb290Tm9kZShhc3ROb2RlcykpKSB7XG4gICAgICAvLyBpZiB0aGUgdmlldyBpcyBhbiBlbWJlZGRlZCB2aWV3LCB0aGVuIHdlIG5lZWQgdG8gYWRkIGFuIGFkZGl0aW9uYWwgcm9vdCBub2RlIGluIHNvbWUgY2FzZXNcbiAgICAgIHRoaXMubm9kZXMucHVzaCgoKSA9PiAoe1xuICAgICAgICAgICAgICAgICAgICAgICAgc291cmNlU3BhbjogbnVsbCxcbiAgICAgICAgICAgICAgICAgICAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVFbGVtZW50LFxuICAgICAgICAgICAgICAgICAgICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLmFuY2hvckRlZikuY2FsbEZuKFtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsKE5vZGVGbGFncy5Ob25lKSwgby5OVUxMX0VYUFIsIG8uTlVMTF9FWFBSLCBvLmxpdGVyYWwoMClcbiAgICAgICAgICAgICAgICAgICAgICAgIF0pXG4gICAgICAgICAgICAgICAgICAgICAgfSkpO1xuICAgIH1cbiAgfVxuXG4gIGJ1aWxkKHRhcmdldFN0YXRlbWVudHM6IG8uU3RhdGVtZW50W10gPSBbXSk6IG8uU3RhdGVtZW50W10ge1xuICAgIHRoaXMuY2hpbGRyZW4uZm9yRWFjaCgoY2hpbGQpID0+IGNoaWxkLmJ1aWxkKHRhcmdldFN0YXRlbWVudHMpKTtcblxuICAgIGNvbnN0IHt1cGRhdGVSZW5kZXJlclN0bXRzLCB1cGRhdGVEaXJlY3RpdmVzU3RtdHMsIG5vZGVEZWZFeHByc30gPVxuICAgICAgICB0aGlzLl9jcmVhdGVOb2RlRXhwcmVzc2lvbnMoKTtcblxuICAgIGNvbnN0IHVwZGF0ZVJlbmRlcmVyRm4gPSB0aGlzLl9jcmVhdGVVcGRhdGVGbih1cGRhdGVSZW5kZXJlclN0bXRzKTtcbiAgICBjb25zdCB1cGRhdGVEaXJlY3RpdmVzRm4gPSB0aGlzLl9jcmVhdGVVcGRhdGVGbih1cGRhdGVEaXJlY3RpdmVzU3RtdHMpO1xuXG5cbiAgICBsZXQgdmlld0ZsYWdzID0gVmlld0ZsYWdzLk5vbmU7XG4gICAgaWYgKCF0aGlzLnBhcmVudCAmJiB0aGlzLmNvbXBvbmVudC5jaGFuZ2VEZXRlY3Rpb24gPT09IENoYW5nZURldGVjdGlvblN0cmF0ZWd5Lk9uUHVzaCkge1xuICAgICAgdmlld0ZsYWdzIHw9IFZpZXdGbGFncy5PblB1c2g7XG4gICAgfVxuICAgIGNvbnN0IHZpZXdGYWN0b3J5ID0gbmV3IG8uRGVjbGFyZUZ1bmN0aW9uU3RtdChcbiAgICAgICAgdGhpcy52aWV3TmFtZSwgW25ldyBvLkZuUGFyYW0oTE9HX1ZBUi5uYW1lICEpXSxcbiAgICAgICAgW25ldyBvLlJldHVyblN0YXRlbWVudChvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMudmlld0RlZikuY2FsbEZuKFtcbiAgICAgICAgICBvLmxpdGVyYWwodmlld0ZsYWdzKSxcbiAgICAgICAgICBvLmxpdGVyYWxBcnIobm9kZURlZkV4cHJzKSxcbiAgICAgICAgICB1cGRhdGVEaXJlY3RpdmVzRm4sXG4gICAgICAgICAgdXBkYXRlUmVuZGVyZXJGbixcbiAgICAgICAgXSkpXSxcbiAgICAgICAgby5pbXBvcnRUeXBlKElkZW50aWZpZXJzLlZpZXdEZWZpbml0aW9uKSxcbiAgICAgICAgdGhpcy5lbWJlZGRlZFZpZXdJbmRleCA9PT0gMCA/IFtvLlN0bXRNb2RpZmllci5FeHBvcnRlZF0gOiBbXSk7XG5cbiAgICB0YXJnZXRTdGF0ZW1lbnRzLnB1c2godmlld0ZhY3RvcnkpO1xuICAgIHJldHVybiB0YXJnZXRTdGF0ZW1lbnRzO1xuICB9XG5cbiAgcHJpdmF0ZSBfY3JlYXRlVXBkYXRlRm4odXBkYXRlU3RtdHM6IG8uU3RhdGVtZW50W10pOiBvLkV4cHJlc3Npb24ge1xuICAgIGxldCB1cGRhdGVGbjogby5FeHByZXNzaW9uO1xuICAgIGlmICh1cGRhdGVTdG10cy5sZW5ndGggPiAwKSB7XG4gICAgICBjb25zdCBwcmVTdG10czogby5TdGF0ZW1lbnRbXSA9IFtdO1xuICAgICAgaWYgKCF0aGlzLmNvbXBvbmVudC5pc0hvc3QgJiYgby5maW5kUmVhZFZhck5hbWVzKHVwZGF0ZVN0bXRzKS5oYXMoQ09NUF9WQVIubmFtZSAhKSkge1xuICAgICAgICBwcmVTdG10cy5wdXNoKENPTVBfVkFSLnNldChWSUVXX1ZBUi5wcm9wKCdjb21wb25lbnQnKSkudG9EZWNsU3RtdCh0aGlzLmNvbXBUeXBlKSk7XG4gICAgICB9XG4gICAgICB1cGRhdGVGbiA9IG8uZm4oXG4gICAgICAgICAgW1xuICAgICAgICAgICAgbmV3IG8uRm5QYXJhbShDSEVDS19WQVIubmFtZSAhLCBvLklORkVSUkVEX1RZUEUpLFxuICAgICAgICAgICAgbmV3IG8uRm5QYXJhbShWSUVXX1ZBUi5uYW1lICEsIG8uSU5GRVJSRURfVFlQRSlcbiAgICAgICAgICBdLFxuICAgICAgICAgIFsuLi5wcmVTdG10cywgLi4udXBkYXRlU3RtdHNdLCBvLklORkVSUkVEX1RZUEUpO1xuICAgIH0gZWxzZSB7XG4gICAgICB1cGRhdGVGbiA9IG8uTlVMTF9FWFBSO1xuICAgIH1cbiAgICByZXR1cm4gdXBkYXRlRm47XG4gIH1cblxuICB2aXNpdE5nQ29udGVudChhc3Q6IE5nQ29udGVudEFzdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICAvLyBuZ0NvbnRlbnREZWYobmdDb250ZW50SW5kZXg6IG51bWJlciwgaW5kZXg6IG51bWJlcik6IE5vZGVEZWY7XG4gICAgdGhpcy5ub2Rlcy5wdXNoKCgpID0+ICh7XG4gICAgICAgICAgICAgICAgICAgICAgc291cmNlU3BhbjogYXN0LnNvdXJjZVNwYW4sXG4gICAgICAgICAgICAgICAgICAgICAgbm9kZUZsYWdzOiBOb2RlRmxhZ3MuVHlwZU5nQ29udGVudCxcbiAgICAgICAgICAgICAgICAgICAgICBub2RlRGVmOiBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMubmdDb250ZW50RGVmKS5jYWxsRm4oW1xuICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsKGFzdC5uZ0NvbnRlbnRJbmRleCksIG8ubGl0ZXJhbChhc3QuaW5kZXgpXG4gICAgICAgICAgICAgICAgICAgICAgXSlcbiAgICAgICAgICAgICAgICAgICAgfSkpO1xuICB9XG5cbiAgdmlzaXRUZXh0KGFzdDogVGV4dEFzdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICAvLyBTdGF0aWMgdGV4dCBub2RlcyBoYXZlIG5vIGNoZWNrIGZ1bmN0aW9uXG4gICAgY29uc3QgY2hlY2tJbmRleCA9IC0xO1xuICAgIHRoaXMubm9kZXMucHVzaCgoKSA9PiAoe1xuICAgICAgICAgICAgICAgICAgICAgIHNvdXJjZVNwYW46IGFzdC5zb3VyY2VTcGFuLFxuICAgICAgICAgICAgICAgICAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVUZXh0LFxuICAgICAgICAgICAgICAgICAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy50ZXh0RGVmKS5jYWxsRm4oW1xuICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsKGNoZWNrSW5kZXgpLFxuICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsKGFzdC5uZ0NvbnRlbnRJbmRleCksXG4gICAgICAgICAgICAgICAgICAgICAgICBvLmxpdGVyYWxBcnIoW28ubGl0ZXJhbChhc3QudmFsdWUpXSksXG4gICAgICAgICAgICAgICAgICAgICAgXSlcbiAgICAgICAgICAgICAgICAgICAgfSkpO1xuICB9XG5cbiAgdmlzaXRCb3VuZFRleHQoYXN0OiBCb3VuZFRleHRBc3QsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgY29uc3Qgbm9kZUluZGV4ID0gdGhpcy5ub2Rlcy5sZW5ndGg7XG4gICAgLy8gcmVzZXJ2ZSB0aGUgc3BhY2UgaW4gdGhlIG5vZGVEZWZzIGFycmF5XG4gICAgdGhpcy5ub2Rlcy5wdXNoKG51bGwgISk7XG5cbiAgICBjb25zdCBhc3RXaXRoU291cmNlID0gPEFTVFdpdGhTb3VyY2U+YXN0LnZhbHVlO1xuICAgIGNvbnN0IGludGVyID0gPEludGVycG9sYXRpb24+YXN0V2l0aFNvdXJjZS5hc3Q7XG5cbiAgICBjb25zdCB1cGRhdGVSZW5kZXJlckV4cHJlc3Npb25zID0gaW50ZXIuZXhwcmVzc2lvbnMubWFwKFxuICAgICAgICAoZXhwciwgYmluZGluZ0luZGV4KSA9PiB0aGlzLl9wcmVwcm9jZXNzVXBkYXRlRXhwcmVzc2lvbihcbiAgICAgICAgICAgIHtub2RlSW5kZXgsIGJpbmRpbmdJbmRleCwgc291cmNlU3BhbjogYXN0LnNvdXJjZVNwYW4sIGNvbnRleHQ6IENPTVBfVkFSLCB2YWx1ZTogZXhwcn0pKTtcblxuICAgIC8vIENoZWNrIGluZGV4IGlzIHRoZSBzYW1lIGFzIHRoZSBub2RlIGluZGV4IGR1cmluZyBjb21waWxhdGlvblxuICAgIC8vIFRoZXkgbWlnaHQgb25seSBkaWZmZXIgYXQgcnVudGltZVxuICAgIGNvbnN0IGNoZWNrSW5kZXggPSBub2RlSW5kZXg7XG5cbiAgICB0aGlzLm5vZGVzW25vZGVJbmRleF0gPSAoKSA9PiAoe1xuICAgICAgc291cmNlU3BhbjogYXN0LnNvdXJjZVNwYW4sXG4gICAgICBub2RlRmxhZ3M6IE5vZGVGbGFncy5UeXBlVGV4dCxcbiAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy50ZXh0RGVmKS5jYWxsRm4oW1xuICAgICAgICBvLmxpdGVyYWwoY2hlY2tJbmRleCksXG4gICAgICAgIG8ubGl0ZXJhbChhc3QubmdDb250ZW50SW5kZXgpLFxuICAgICAgICBvLmxpdGVyYWxBcnIoaW50ZXIuc3RyaW5ncy5tYXAocyA9PiBvLmxpdGVyYWwocykpKSxcbiAgICAgIF0pLFxuICAgICAgdXBkYXRlUmVuZGVyZXI6IHVwZGF0ZVJlbmRlcmVyRXhwcmVzc2lvbnNcbiAgICB9KTtcbiAgfVxuXG4gIHZpc2l0RW1iZWRkZWRUZW1wbGF0ZShhc3Q6IEVtYmVkZGVkVGVtcGxhdGVBc3QsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgY29uc3Qgbm9kZUluZGV4ID0gdGhpcy5ub2Rlcy5sZW5ndGg7XG4gICAgLy8gcmVzZXJ2ZSB0aGUgc3BhY2UgaW4gdGhlIG5vZGVEZWZzIGFycmF5XG4gICAgdGhpcy5ub2Rlcy5wdXNoKG51bGwgISk7XG5cbiAgICBjb25zdCB7ZmxhZ3MsIHF1ZXJ5TWF0Y2hlc0V4cHIsIGhvc3RFdmVudHN9ID0gdGhpcy5fdmlzaXRFbGVtZW50T3JUZW1wbGF0ZShub2RlSW5kZXgsIGFzdCk7XG5cbiAgICBjb25zdCBjaGlsZFZpc2l0b3IgPSB0aGlzLnZpZXdCdWlsZGVyRmFjdG9yeSh0aGlzKTtcbiAgICB0aGlzLmNoaWxkcmVuLnB1c2goY2hpbGRWaXNpdG9yKTtcbiAgICBjaGlsZFZpc2l0b3IudmlzaXRBbGwoYXN0LnZhcmlhYmxlcywgYXN0LmNoaWxkcmVuKTtcblxuICAgIGNvbnN0IGNoaWxkQ291bnQgPSB0aGlzLm5vZGVzLmxlbmd0aCAtIG5vZGVJbmRleCAtIDE7XG5cbiAgICAvLyBhbmNob3JEZWYoXG4gICAgLy8gICBmbGFnczogTm9kZUZsYWdzLCBtYXRjaGVkUXVlcmllczogW3N0cmluZywgUXVlcnlWYWx1ZVR5cGVdW10sIG5nQ29udGVudEluZGV4OiBudW1iZXIsXG4gICAgLy8gICBjaGlsZENvdW50OiBudW1iZXIsIGhhbmRsZUV2ZW50Rm4/OiBFbGVtZW50SGFuZGxlRXZlbnRGbiwgdGVtcGxhdGVGYWN0b3J5PzpcbiAgICAvLyAgIFZpZXdEZWZpbml0aW9uRmFjdG9yeSk6IE5vZGVEZWY7XG4gICAgdGhpcy5ub2Rlc1tub2RlSW5kZXhdID0gKCkgPT4gKHtcbiAgICAgIHNvdXJjZVNwYW46IGFzdC5zb3VyY2VTcGFuLFxuICAgICAgbm9kZUZsYWdzOiBOb2RlRmxhZ3MuVHlwZUVsZW1lbnQgfCBmbGFncyxcbiAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5hbmNob3JEZWYpLmNhbGxGbihbXG4gICAgICAgIG8ubGl0ZXJhbChmbGFncyksXG4gICAgICAgIHF1ZXJ5TWF0Y2hlc0V4cHIsXG4gICAgICAgIG8ubGl0ZXJhbChhc3QubmdDb250ZW50SW5kZXgpLFxuICAgICAgICBvLmxpdGVyYWwoY2hpbGRDb3VudCksXG4gICAgICAgIHRoaXMuX2NyZWF0ZUVsZW1lbnRIYW5kbGVFdmVudEZuKG5vZGVJbmRleCwgaG9zdEV2ZW50cyksXG4gICAgICAgIG8udmFyaWFibGUoY2hpbGRWaXNpdG9yLnZpZXdOYW1lKSxcbiAgICAgIF0pXG4gICAgfSk7XG4gIH1cblxuICB2aXNpdEVsZW1lbnQoYXN0OiBFbGVtZW50QXN0LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGNvbnN0IG5vZGVJbmRleCA9IHRoaXMubm9kZXMubGVuZ3RoO1xuICAgIC8vIHJlc2VydmUgdGhlIHNwYWNlIGluIHRoZSBub2RlRGVmcyBhcnJheSBzbyB3ZSBjYW4gYWRkIGNoaWxkcmVuXG4gICAgdGhpcy5ub2Rlcy5wdXNoKG51bGwgISk7XG5cbiAgICAvLyBVc2luZyBhIG51bGwgZWxlbWVudCBuYW1lIGNyZWF0ZXMgYW4gYW5jaG9yLlxuICAgIGNvbnN0IGVsTmFtZTogc3RyaW5nfG51bGwgPSBpc05nQ29udGFpbmVyKGFzdC5uYW1lKSA/IG51bGwgOiBhc3QubmFtZTtcblxuICAgIGNvbnN0IHtmbGFncywgdXNlZEV2ZW50cywgcXVlcnlNYXRjaGVzRXhwciwgaG9zdEJpbmRpbmdzOiBkaXJIb3N0QmluZGluZ3MsIGhvc3RFdmVudHN9ID1cbiAgICAgICAgdGhpcy5fdmlzaXRFbGVtZW50T3JUZW1wbGF0ZShub2RlSW5kZXgsIGFzdCk7XG5cbiAgICBsZXQgaW5wdXREZWZzOiBvLkV4cHJlc3Npb25bXSA9IFtdO1xuICAgIGxldCB1cGRhdGVSZW5kZXJlckV4cHJlc3Npb25zOiBVcGRhdGVFeHByZXNzaW9uW10gPSBbXTtcbiAgICBsZXQgb3V0cHV0RGVmczogby5FeHByZXNzaW9uW10gPSBbXTtcbiAgICBpZiAoZWxOYW1lKSB7XG4gICAgICBjb25zdCBob3N0QmluZGluZ3M6IGFueVtdID0gYXN0LmlucHV0c1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAubWFwKChpbnB1dEFzdCkgPT4gKHtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRleHQ6IENPTVBfVkFSIGFzIG8uRXhwcmVzc2lvbixcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlucHV0QXN0LFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGlyQXN0OiBudWxsIGFzIGFueSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9KSlcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmNvbmNhdChkaXJIb3N0QmluZGluZ3MpO1xuICAgICAgaWYgKGhvc3RCaW5kaW5ncy5sZW5ndGgpIHtcbiAgICAgICAgdXBkYXRlUmVuZGVyZXJFeHByZXNzaW9ucyA9XG4gICAgICAgICAgICBob3N0QmluZGluZ3MubWFwKChob3N0QmluZGluZywgYmluZGluZ0luZGV4KSA9PiB0aGlzLl9wcmVwcm9jZXNzVXBkYXRlRXhwcmVzc2lvbih7XG4gICAgICAgICAgICAgIGNvbnRleHQ6IGhvc3RCaW5kaW5nLmNvbnRleHQsXG4gICAgICAgICAgICAgIG5vZGVJbmRleCxcbiAgICAgICAgICAgICAgYmluZGluZ0luZGV4LFxuICAgICAgICAgICAgICBzb3VyY2VTcGFuOiBob3N0QmluZGluZy5pbnB1dEFzdC5zb3VyY2VTcGFuLFxuICAgICAgICAgICAgICB2YWx1ZTogaG9zdEJpbmRpbmcuaW5wdXRBc3QudmFsdWVcbiAgICAgICAgICAgIH0pKTtcbiAgICAgICAgaW5wdXREZWZzID0gaG9zdEJpbmRpbmdzLm1hcChcbiAgICAgICAgICAgIGhvc3RCaW5kaW5nID0+IGVsZW1lbnRCaW5kaW5nRGVmKGhvc3RCaW5kaW5nLmlucHV0QXN0LCBob3N0QmluZGluZy5kaXJBc3QpKTtcbiAgICAgIH1cbiAgICAgIG91dHB1dERlZnMgPSB1c2VkRXZlbnRzLm1hcChcbiAgICAgICAgICAoW3RhcmdldCwgZXZlbnROYW1lXSkgPT4gby5saXRlcmFsQXJyKFtvLmxpdGVyYWwodGFyZ2V0KSwgby5saXRlcmFsKGV2ZW50TmFtZSldKSk7XG4gICAgfVxuXG4gICAgdGVtcGxhdGVWaXNpdEFsbCh0aGlzLCBhc3QuY2hpbGRyZW4pO1xuXG4gICAgY29uc3QgY2hpbGRDb3VudCA9IHRoaXMubm9kZXMubGVuZ3RoIC0gbm9kZUluZGV4IC0gMTtcblxuICAgIGNvbnN0IGNvbXBBc3QgPSBhc3QuZGlyZWN0aXZlcy5maW5kKGRpckFzdCA9PiBkaXJBc3QuZGlyZWN0aXZlLmlzQ29tcG9uZW50KTtcbiAgICBsZXQgY29tcFJlbmRlcmVyVHlwZSA9IG8uTlVMTF9FWFBSIGFzIG8uRXhwcmVzc2lvbjtcbiAgICBsZXQgY29tcFZpZXcgPSBvLk5VTExfRVhQUiBhcyBvLkV4cHJlc3Npb247XG4gICAgaWYgKGNvbXBBc3QpIHtcbiAgICAgIGNvbXBWaWV3ID0gdGhpcy5vdXRwdXRDdHguaW1wb3J0RXhwcihjb21wQXN0LmRpcmVjdGl2ZS5jb21wb25lbnRWaWV3VHlwZSk7XG4gICAgICBjb21wUmVuZGVyZXJUeXBlID0gdGhpcy5vdXRwdXRDdHguaW1wb3J0RXhwcihjb21wQXN0LmRpcmVjdGl2ZS5yZW5kZXJlclR5cGUpO1xuICAgIH1cblxuICAgIC8vIENoZWNrIGluZGV4IGlzIHRoZSBzYW1lIGFzIHRoZSBub2RlIGluZGV4IGR1cmluZyBjb21waWxhdGlvblxuICAgIC8vIFRoZXkgbWlnaHQgb25seSBkaWZmZXIgYXQgcnVudGltZVxuICAgIGNvbnN0IGNoZWNrSW5kZXggPSBub2RlSW5kZXg7XG5cbiAgICB0aGlzLm5vZGVzW25vZGVJbmRleF0gPSAoKSA9PiAoe1xuICAgICAgc291cmNlU3BhbjogYXN0LnNvdXJjZVNwYW4sXG4gICAgICBub2RlRmxhZ3M6IE5vZGVGbGFncy5UeXBlRWxlbWVudCB8IGZsYWdzLFxuICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLmVsZW1lbnREZWYpLmNhbGxGbihbXG4gICAgICAgIG8ubGl0ZXJhbChjaGVja0luZGV4KSxcbiAgICAgICAgby5saXRlcmFsKGZsYWdzKSxcbiAgICAgICAgcXVlcnlNYXRjaGVzRXhwcixcbiAgICAgICAgby5saXRlcmFsKGFzdC5uZ0NvbnRlbnRJbmRleCksXG4gICAgICAgIG8ubGl0ZXJhbChjaGlsZENvdW50KSxcbiAgICAgICAgby5saXRlcmFsKGVsTmFtZSksXG4gICAgICAgIGVsTmFtZSA/IGZpeGVkQXR0cnNEZWYoYXN0KSA6IG8uTlVMTF9FWFBSLFxuICAgICAgICBpbnB1dERlZnMubGVuZ3RoID8gby5saXRlcmFsQXJyKGlucHV0RGVmcykgOiBvLk5VTExfRVhQUixcbiAgICAgICAgb3V0cHV0RGVmcy5sZW5ndGggPyBvLmxpdGVyYWxBcnIob3V0cHV0RGVmcykgOiBvLk5VTExfRVhQUixcbiAgICAgICAgdGhpcy5fY3JlYXRlRWxlbWVudEhhbmRsZUV2ZW50Rm4obm9kZUluZGV4LCBob3N0RXZlbnRzKSxcbiAgICAgICAgY29tcFZpZXcsXG4gICAgICAgIGNvbXBSZW5kZXJlclR5cGUsXG4gICAgICBdKSxcbiAgICAgIHVwZGF0ZVJlbmRlcmVyOiB1cGRhdGVSZW5kZXJlckV4cHJlc3Npb25zXG4gICAgfSk7XG4gIH1cblxuICBwcml2YXRlIF92aXNpdEVsZW1lbnRPclRlbXBsYXRlKG5vZGVJbmRleDogbnVtYmVyLCBhc3Q6IHtcbiAgICBoYXNWaWV3Q29udGFpbmVyOiBib29sZWFuLFxuICAgIG91dHB1dHM6IEJvdW5kRXZlbnRBc3RbXSxcbiAgICBkaXJlY3RpdmVzOiBEaXJlY3RpdmVBc3RbXSxcbiAgICBwcm92aWRlcnM6IFByb3ZpZGVyQXN0W10sXG4gICAgcmVmZXJlbmNlczogUmVmZXJlbmNlQXN0W10sXG4gICAgcXVlcnlNYXRjaGVzOiBRdWVyeU1hdGNoW11cbiAgfSk6IHtcbiAgICBmbGFnczogTm9kZUZsYWdzLFxuICAgIHVzZWRFdmVudHM6IFtzdHJpbmcgfCBudWxsLCBzdHJpbmddW10sXG4gICAgcXVlcnlNYXRjaGVzRXhwcjogby5FeHByZXNzaW9uLFxuICAgIGhvc3RCaW5kaW5nczpcbiAgICAgICAge2NvbnRleHQ6IG8uRXhwcmVzc2lvbiwgaW5wdXRBc3Q6IEJvdW5kRWxlbWVudFByb3BlcnR5QXN0LCBkaXJBc3Q6IERpcmVjdGl2ZUFzdH1bXSxcbiAgICBob3N0RXZlbnRzOiB7Y29udGV4dDogby5FeHByZXNzaW9uLCBldmVudEFzdDogQm91bmRFdmVudEFzdCwgZGlyQXN0OiBEaXJlY3RpdmVBc3R9W10sXG4gIH0ge1xuICAgIGxldCBmbGFncyA9IE5vZGVGbGFncy5Ob25lO1xuICAgIGlmIChhc3QuaGFzVmlld0NvbnRhaW5lcikge1xuICAgICAgZmxhZ3MgfD0gTm9kZUZsYWdzLkVtYmVkZGVkVmlld3M7XG4gICAgfVxuICAgIGNvbnN0IHVzZWRFdmVudHMgPSBuZXcgTWFwPHN0cmluZywgW3N0cmluZyB8IG51bGwsIHN0cmluZ10+KCk7XG4gICAgYXN0Lm91dHB1dHMuZm9yRWFjaCgoZXZlbnQpID0+IHtcbiAgICAgIGNvbnN0IHtuYW1lLCB0YXJnZXR9ID0gZWxlbWVudEV2ZW50TmFtZUFuZFRhcmdldChldmVudCwgbnVsbCk7XG4gICAgICB1c2VkRXZlbnRzLnNldChlbGVtZW50RXZlbnRGdWxsTmFtZSh0YXJnZXQsIG5hbWUpLCBbdGFyZ2V0LCBuYW1lXSk7XG4gICAgfSk7XG4gICAgYXN0LmRpcmVjdGl2ZXMuZm9yRWFjaCgoZGlyQXN0KSA9PiB7XG4gICAgICBkaXJBc3QuaG9zdEV2ZW50cy5mb3JFYWNoKChldmVudCkgPT4ge1xuICAgICAgICBjb25zdCB7bmFtZSwgdGFyZ2V0fSA9IGVsZW1lbnRFdmVudE5hbWVBbmRUYXJnZXQoZXZlbnQsIGRpckFzdCk7XG4gICAgICAgIHVzZWRFdmVudHMuc2V0KGVsZW1lbnRFdmVudEZ1bGxOYW1lKHRhcmdldCwgbmFtZSksIFt0YXJnZXQsIG5hbWVdKTtcbiAgICAgIH0pO1xuICAgIH0pO1xuICAgIGNvbnN0IGhvc3RCaW5kaW5nczpcbiAgICAgICAge2NvbnRleHQ6IG8uRXhwcmVzc2lvbiwgaW5wdXRBc3Q6IEJvdW5kRWxlbWVudFByb3BlcnR5QXN0LCBkaXJBc3Q6IERpcmVjdGl2ZUFzdH1bXSA9IFtdO1xuICAgIGNvbnN0IGhvc3RFdmVudHM6IHtjb250ZXh0OiBvLkV4cHJlc3Npb24sIGV2ZW50QXN0OiBCb3VuZEV2ZW50QXN0LCBkaXJBc3Q6IERpcmVjdGl2ZUFzdH1bXSA9IFtdO1xuICAgIHRoaXMuX3Zpc2l0Q29tcG9uZW50RmFjdG9yeVJlc29sdmVyUHJvdmlkZXIoYXN0LmRpcmVjdGl2ZXMpO1xuXG4gICAgYXN0LnByb3ZpZGVycy5mb3JFYWNoKHByb3ZpZGVyQXN0ID0+IHtcbiAgICAgIGxldCBkaXJBc3Q6IERpcmVjdGl2ZUFzdCA9IHVuZGVmaW5lZCAhO1xuICAgICAgYXN0LmRpcmVjdGl2ZXMuZm9yRWFjaChsb2NhbERpckFzdCA9PiB7XG4gICAgICAgIGlmIChsb2NhbERpckFzdC5kaXJlY3RpdmUudHlwZS5yZWZlcmVuY2UgPT09IHRva2VuUmVmZXJlbmNlKHByb3ZpZGVyQXN0LnRva2VuKSkge1xuICAgICAgICAgIGRpckFzdCA9IGxvY2FsRGlyQXN0O1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICAgIGlmIChkaXJBc3QpIHtcbiAgICAgICAgY29uc3Qge2hvc3RCaW5kaW5nczogZGlySG9zdEJpbmRpbmdzLCBob3N0RXZlbnRzOiBkaXJIb3N0RXZlbnRzfSA9XG4gICAgICAgICAgICB0aGlzLl92aXNpdERpcmVjdGl2ZShwcm92aWRlckFzdCwgZGlyQXN0LCBhc3QucmVmZXJlbmNlcywgYXN0LnF1ZXJ5TWF0Y2hlcywgdXNlZEV2ZW50cyk7XG4gICAgICAgIGhvc3RCaW5kaW5ncy5wdXNoKC4uLmRpckhvc3RCaW5kaW5ncyk7XG4gICAgICAgIGhvc3RFdmVudHMucHVzaCguLi5kaXJIb3N0RXZlbnRzKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHRoaXMuX3Zpc2l0UHJvdmlkZXIocHJvdmlkZXJBc3QsIGFzdC5xdWVyeU1hdGNoZXMpO1xuICAgICAgfVxuICAgIH0pO1xuXG4gICAgbGV0IHF1ZXJ5TWF0Y2hFeHByczogby5FeHByZXNzaW9uW10gPSBbXTtcbiAgICBhc3QucXVlcnlNYXRjaGVzLmZvckVhY2goKG1hdGNoKSA9PiB7XG4gICAgICBsZXQgdmFsdWVUeXBlOiBRdWVyeVZhbHVlVHlwZSA9IHVuZGVmaW5lZCAhO1xuICAgICAgaWYgKHRva2VuUmVmZXJlbmNlKG1hdGNoLnZhbHVlKSA9PT1cbiAgICAgICAgICB0aGlzLnJlZmxlY3Rvci5yZXNvbHZlRXh0ZXJuYWxSZWZlcmVuY2UoSWRlbnRpZmllcnMuRWxlbWVudFJlZikpIHtcbiAgICAgICAgdmFsdWVUeXBlID0gUXVlcnlWYWx1ZVR5cGUuRWxlbWVudFJlZjtcbiAgICAgIH0gZWxzZSBpZiAoXG4gICAgICAgICAgdG9rZW5SZWZlcmVuY2UobWF0Y2gudmFsdWUpID09PVxuICAgICAgICAgIHRoaXMucmVmbGVjdG9yLnJlc29sdmVFeHRlcm5hbFJlZmVyZW5jZShJZGVudGlmaWVycy5WaWV3Q29udGFpbmVyUmVmKSkge1xuICAgICAgICB2YWx1ZVR5cGUgPSBRdWVyeVZhbHVlVHlwZS5WaWV3Q29udGFpbmVyUmVmO1xuICAgICAgfSBlbHNlIGlmIChcbiAgICAgICAgICB0b2tlblJlZmVyZW5jZShtYXRjaC52YWx1ZSkgPT09XG4gICAgICAgICAgdGhpcy5yZWZsZWN0b3IucmVzb2x2ZUV4dGVybmFsUmVmZXJlbmNlKElkZW50aWZpZXJzLlRlbXBsYXRlUmVmKSkge1xuICAgICAgICB2YWx1ZVR5cGUgPSBRdWVyeVZhbHVlVHlwZS5UZW1wbGF0ZVJlZjtcbiAgICAgIH1cbiAgICAgIGlmICh2YWx1ZVR5cGUgIT0gbnVsbCkge1xuICAgICAgICBxdWVyeU1hdGNoRXhwcnMucHVzaChvLmxpdGVyYWxBcnIoW28ubGl0ZXJhbChtYXRjaC5xdWVyeUlkKSwgby5saXRlcmFsKHZhbHVlVHlwZSldKSk7XG4gICAgICB9XG4gICAgfSk7XG4gICAgYXN0LnJlZmVyZW5jZXMuZm9yRWFjaCgocmVmKSA9PiB7XG4gICAgICBsZXQgdmFsdWVUeXBlOiBRdWVyeVZhbHVlVHlwZSA9IHVuZGVmaW5lZCAhO1xuICAgICAgaWYgKCFyZWYudmFsdWUpIHtcbiAgICAgICAgdmFsdWVUeXBlID0gUXVlcnlWYWx1ZVR5cGUuUmVuZGVyRWxlbWVudDtcbiAgICAgIH0gZWxzZSBpZiAoXG4gICAgICAgICAgdG9rZW5SZWZlcmVuY2UocmVmLnZhbHVlKSA9PT1cbiAgICAgICAgICB0aGlzLnJlZmxlY3Rvci5yZXNvbHZlRXh0ZXJuYWxSZWZlcmVuY2UoSWRlbnRpZmllcnMuVGVtcGxhdGVSZWYpKSB7XG4gICAgICAgIHZhbHVlVHlwZSA9IFF1ZXJ5VmFsdWVUeXBlLlRlbXBsYXRlUmVmO1xuICAgICAgfVxuICAgICAgaWYgKHZhbHVlVHlwZSAhPSBudWxsKSB7XG4gICAgICAgIHRoaXMucmVmTm9kZUluZGljZXNbcmVmLm5hbWVdID0gbm9kZUluZGV4O1xuICAgICAgICBxdWVyeU1hdGNoRXhwcnMucHVzaChvLmxpdGVyYWxBcnIoW28ubGl0ZXJhbChyZWYubmFtZSksIG8ubGl0ZXJhbCh2YWx1ZVR5cGUpXSkpO1xuICAgICAgfVxuICAgIH0pO1xuICAgIGFzdC5vdXRwdXRzLmZvckVhY2goKG91dHB1dEFzdCkgPT4ge1xuICAgICAgaG9zdEV2ZW50cy5wdXNoKHtjb250ZXh0OiBDT01QX1ZBUiwgZXZlbnRBc3Q6IG91dHB1dEFzdCwgZGlyQXN0OiBudWxsICF9KTtcbiAgICB9KTtcblxuICAgIHJldHVybiB7XG4gICAgICBmbGFncyxcbiAgICAgIHVzZWRFdmVudHM6IEFycmF5LmZyb20odXNlZEV2ZW50cy52YWx1ZXMoKSksXG4gICAgICBxdWVyeU1hdGNoZXNFeHByOiBxdWVyeU1hdGNoRXhwcnMubGVuZ3RoID8gby5saXRlcmFsQXJyKHF1ZXJ5TWF0Y2hFeHBycykgOiBvLk5VTExfRVhQUixcbiAgICAgIGhvc3RCaW5kaW5ncyxcbiAgICAgIGhvc3RFdmVudHM6IGhvc3RFdmVudHNcbiAgICB9O1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXREaXJlY3RpdmUoXG4gICAgICBwcm92aWRlckFzdDogUHJvdmlkZXJBc3QsIGRpckFzdDogRGlyZWN0aXZlQXN0LCByZWZzOiBSZWZlcmVuY2VBc3RbXSxcbiAgICAgIHF1ZXJ5TWF0Y2hlczogUXVlcnlNYXRjaFtdLCB1c2VkRXZlbnRzOiBNYXA8c3RyaW5nLCBhbnk+KToge1xuICAgIGhvc3RCaW5kaW5nczpcbiAgICAgICAge2NvbnRleHQ6IG8uRXhwcmVzc2lvbiwgaW5wdXRBc3Q6IEJvdW5kRWxlbWVudFByb3BlcnR5QXN0LCBkaXJBc3Q6IERpcmVjdGl2ZUFzdH1bXSxcbiAgICBob3N0RXZlbnRzOiB7Y29udGV4dDogby5FeHByZXNzaW9uLCBldmVudEFzdDogQm91bmRFdmVudEFzdCwgZGlyQXN0OiBEaXJlY3RpdmVBc3R9W11cbiAgfSB7XG4gICAgY29uc3Qgbm9kZUluZGV4ID0gdGhpcy5ub2Rlcy5sZW5ndGg7XG4gICAgLy8gcmVzZXJ2ZSB0aGUgc3BhY2UgaW4gdGhlIG5vZGVEZWZzIGFycmF5IHNvIHdlIGNhbiBhZGQgY2hpbGRyZW5cbiAgICB0aGlzLm5vZGVzLnB1c2gobnVsbCAhKTtcblxuICAgIGRpckFzdC5kaXJlY3RpdmUucXVlcmllcy5mb3JFYWNoKChxdWVyeSwgcXVlcnlJbmRleCkgPT4ge1xuICAgICAgY29uc3QgcXVlcnlJZCA9IGRpckFzdC5jb250ZW50UXVlcnlTdGFydElkICsgcXVlcnlJbmRleDtcbiAgICAgIGNvbnN0IGZsYWdzID0gTm9kZUZsYWdzLlR5cGVDb250ZW50UXVlcnkgfCBjYWxjU3RhdGljRHluYW1pY1F1ZXJ5RmxhZ3MocXVlcnkpO1xuICAgICAgY29uc3QgYmluZGluZ1R5cGUgPSBxdWVyeS5maXJzdCA/IFF1ZXJ5QmluZGluZ1R5cGUuRmlyc3QgOiBRdWVyeUJpbmRpbmdUeXBlLkFsbDtcbiAgICAgIHRoaXMubm9kZXMucHVzaCgoKSA9PiAoe1xuICAgICAgICAgICAgICAgICAgICAgICAgc291cmNlU3BhbjogZGlyQXN0LnNvdXJjZVNwYW4sXG4gICAgICAgICAgICAgICAgICAgICAgICBub2RlRmxhZ3M6IGZsYWdzLFxuICAgICAgICAgICAgICAgICAgICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLnF1ZXJ5RGVmKS5jYWxsRm4oW1xuICAgICAgICAgICAgICAgICAgICAgICAgICBvLmxpdGVyYWwoZmxhZ3MpLCBvLmxpdGVyYWwocXVlcnlJZCksXG4gICAgICAgICAgICAgICAgICAgICAgICAgIG5ldyBvLkxpdGVyYWxNYXBFeHByKFtuZXcgby5MaXRlcmFsTWFwRW50cnkoXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBxdWVyeS5wcm9wZXJ0eU5hbWUsIG8ubGl0ZXJhbChiaW5kaW5nVHlwZSksIGZhbHNlKV0pXG4gICAgICAgICAgICAgICAgICAgICAgICBdKSxcbiAgICAgICAgICAgICAgICAgICAgICB9KSk7XG4gICAgfSk7XG5cbiAgICAvLyBOb3RlOiB0aGUgb3BlcmF0aW9uIGJlbG93IG1pZ2h0IGFsc28gY3JlYXRlIG5ldyBub2RlRGVmcyxcbiAgICAvLyBidXQgd2UgZG9uJ3Qgd2FudCB0aGVtIHRvIGJlIGEgY2hpbGQgb2YgYSBkaXJlY3RpdmUsXG4gICAgLy8gYXMgdGhleSBtaWdodCBiZSBhIHByb3ZpZGVyL3BpcGUgb24gdGhlaXIgb3duLlxuICAgIC8vIEkuZS4gd2Ugb25seSBhbGxvdyBxdWVyaWVzIGFzIGNoaWxkcmVuIG9mIGRpcmVjdGl2ZXMgbm9kZXMuXG4gICAgY29uc3QgY2hpbGRDb3VudCA9IHRoaXMubm9kZXMubGVuZ3RoIC0gbm9kZUluZGV4IC0gMTtcblxuICAgIGxldCB7ZmxhZ3MsIHF1ZXJ5TWF0Y2hFeHBycywgcHJvdmlkZXJFeHByLCBkZXBzRXhwcn0gPVxuICAgICAgICB0aGlzLl92aXNpdFByb3ZpZGVyT3JEaXJlY3RpdmUocHJvdmlkZXJBc3QsIHF1ZXJ5TWF0Y2hlcyk7XG5cbiAgICByZWZzLmZvckVhY2goKHJlZikgPT4ge1xuICAgICAgaWYgKHJlZi52YWx1ZSAmJiB0b2tlblJlZmVyZW5jZShyZWYudmFsdWUpID09PSB0b2tlblJlZmVyZW5jZShwcm92aWRlckFzdC50b2tlbikpIHtcbiAgICAgICAgdGhpcy5yZWZOb2RlSW5kaWNlc1tyZWYubmFtZV0gPSBub2RlSW5kZXg7XG4gICAgICAgIHF1ZXJ5TWF0Y2hFeHBycy5wdXNoKFxuICAgICAgICAgICAgby5saXRlcmFsQXJyKFtvLmxpdGVyYWwocmVmLm5hbWUpLCBvLmxpdGVyYWwoUXVlcnlWYWx1ZVR5cGUuUHJvdmlkZXIpXSkpO1xuICAgICAgfVxuICAgIH0pO1xuXG4gICAgaWYgKGRpckFzdC5kaXJlY3RpdmUuaXNDb21wb25lbnQpIHtcbiAgICAgIGZsYWdzIHw9IE5vZGVGbGFncy5Db21wb25lbnQ7XG4gICAgfVxuXG4gICAgY29uc3QgaW5wdXREZWZzID0gZGlyQXN0LmlucHV0cy5tYXAoKGlucHV0QXN0LCBpbnB1dEluZGV4KSA9PiB7XG4gICAgICBjb25zdCBtYXBWYWx1ZSA9IG8ubGl0ZXJhbEFycihbby5saXRlcmFsKGlucHV0SW5kZXgpLCBvLmxpdGVyYWwoaW5wdXRBc3QuZGlyZWN0aXZlTmFtZSldKTtcbiAgICAgIC8vIE5vdGU6IGl0J3MgaW1wb3J0YW50IHRvIG5vdCBxdW90ZSB0aGUga2V5IHNvIHRoYXQgd2UgY2FuIGNhcHR1cmUgcmVuYW1lcyBieSBtaW5pZmllcnMhXG4gICAgICByZXR1cm4gbmV3IG8uTGl0ZXJhbE1hcEVudHJ5KGlucHV0QXN0LmRpcmVjdGl2ZU5hbWUsIG1hcFZhbHVlLCBmYWxzZSk7XG4gICAgfSk7XG5cbiAgICBjb25zdCBvdXRwdXREZWZzOiBvLkxpdGVyYWxNYXBFbnRyeVtdID0gW107XG4gICAgY29uc3QgZGlyTWV0YSA9IGRpckFzdC5kaXJlY3RpdmU7XG4gICAgT2JqZWN0LmtleXMoZGlyTWV0YS5vdXRwdXRzKS5mb3JFYWNoKChwcm9wTmFtZSkgPT4ge1xuICAgICAgY29uc3QgZXZlbnROYW1lID0gZGlyTWV0YS5vdXRwdXRzW3Byb3BOYW1lXTtcbiAgICAgIGlmICh1c2VkRXZlbnRzLmhhcyhldmVudE5hbWUpKSB7XG4gICAgICAgIC8vIE5vdGU6IGl0J3MgaW1wb3J0YW50IHRvIG5vdCBxdW90ZSB0aGUga2V5IHNvIHRoYXQgd2UgY2FuIGNhcHR1cmUgcmVuYW1lcyBieSBtaW5pZmllcnMhXG4gICAgICAgIG91dHB1dERlZnMucHVzaChuZXcgby5MaXRlcmFsTWFwRW50cnkocHJvcE5hbWUsIG8ubGl0ZXJhbChldmVudE5hbWUpLCBmYWxzZSkpO1xuICAgICAgfVxuICAgIH0pO1xuICAgIGxldCB1cGRhdGVEaXJlY3RpdmVFeHByZXNzaW9uczogVXBkYXRlRXhwcmVzc2lvbltdID0gW107XG4gICAgaWYgKGRpckFzdC5pbnB1dHMubGVuZ3RoIHx8IChmbGFncyAmIChOb2RlRmxhZ3MuRG9DaGVjayB8IE5vZGVGbGFncy5PbkluaXQpKSA+IDApIHtcbiAgICAgIHVwZGF0ZURpcmVjdGl2ZUV4cHJlc3Npb25zID1cbiAgICAgICAgICBkaXJBc3QuaW5wdXRzLm1hcCgoaW5wdXQsIGJpbmRpbmdJbmRleCkgPT4gdGhpcy5fcHJlcHJvY2Vzc1VwZGF0ZUV4cHJlc3Npb24oe1xuICAgICAgICAgICAgbm9kZUluZGV4LFxuICAgICAgICAgICAgYmluZGluZ0luZGV4LFxuICAgICAgICAgICAgc291cmNlU3BhbjogaW5wdXQuc291cmNlU3BhbixcbiAgICAgICAgICAgIGNvbnRleHQ6IENPTVBfVkFSLFxuICAgICAgICAgICAgdmFsdWU6IGlucHV0LnZhbHVlXG4gICAgICAgICAgfSkpO1xuICAgIH1cblxuICAgIGNvbnN0IGRpckNvbnRleHRFeHByID1cbiAgICAgICAgby5pbXBvcnRFeHByKElkZW50aWZpZXJzLm5vZGVWYWx1ZSkuY2FsbEZuKFtWSUVXX1ZBUiwgby5saXRlcmFsKG5vZGVJbmRleCldKTtcbiAgICBjb25zdCBob3N0QmluZGluZ3MgPSBkaXJBc3QuaG9zdFByb3BlcnRpZXMubWFwKChpbnB1dEFzdCkgPT4gKHtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGV4dDogZGlyQ29udGV4dEV4cHIsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRpckFzdCxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW5wdXRBc3QsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9KSk7XG4gICAgY29uc3QgaG9zdEV2ZW50cyA9IGRpckFzdC5ob3N0RXZlbnRzLm1hcCgoaG9zdEV2ZW50QXN0KSA9PiAoe1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250ZXh0OiBkaXJDb250ZXh0RXhwcixcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXZlbnRBc3Q6IGhvc3RFdmVudEFzdCwgZGlyQXN0LFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfSkpO1xuXG4gICAgLy8gQ2hlY2sgaW5kZXggaXMgdGhlIHNhbWUgYXMgdGhlIG5vZGUgaW5kZXggZHVyaW5nIGNvbXBpbGF0aW9uXG4gICAgLy8gVGhleSBtaWdodCBvbmx5IGRpZmZlciBhdCBydW50aW1lXG4gICAgY29uc3QgY2hlY2tJbmRleCA9IG5vZGVJbmRleDtcblxuICAgIHRoaXMubm9kZXNbbm9kZUluZGV4XSA9ICgpID0+ICh7XG4gICAgICBzb3VyY2VTcGFuOiBkaXJBc3Quc291cmNlU3BhbixcbiAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVEaXJlY3RpdmUgfCBmbGFncyxcbiAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5kaXJlY3RpdmVEZWYpLmNhbGxGbihbXG4gICAgICAgIG8ubGl0ZXJhbChjaGVja0luZGV4KSxcbiAgICAgICAgby5saXRlcmFsKGZsYWdzKSxcbiAgICAgICAgcXVlcnlNYXRjaEV4cHJzLmxlbmd0aCA/IG8ubGl0ZXJhbEFycihxdWVyeU1hdGNoRXhwcnMpIDogby5OVUxMX0VYUFIsXG4gICAgICAgIG8ubGl0ZXJhbChjaGlsZENvdW50KSxcbiAgICAgICAgcHJvdmlkZXJFeHByLFxuICAgICAgICBkZXBzRXhwcixcbiAgICAgICAgaW5wdXREZWZzLmxlbmd0aCA/IG5ldyBvLkxpdGVyYWxNYXBFeHByKGlucHV0RGVmcykgOiBvLk5VTExfRVhQUixcbiAgICAgICAgb3V0cHV0RGVmcy5sZW5ndGggPyBuZXcgby5MaXRlcmFsTWFwRXhwcihvdXRwdXREZWZzKSA6IG8uTlVMTF9FWFBSLFxuICAgICAgXSksXG4gICAgICB1cGRhdGVEaXJlY3RpdmVzOiB1cGRhdGVEaXJlY3RpdmVFeHByZXNzaW9ucyxcbiAgICAgIGRpcmVjdGl2ZTogZGlyQXN0LmRpcmVjdGl2ZS50eXBlLFxuICAgIH0pO1xuXG4gICAgcmV0dXJuIHtob3N0QmluZGluZ3MsIGhvc3RFdmVudHN9O1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXRQcm92aWRlcihwcm92aWRlckFzdDogUHJvdmlkZXJBc3QsIHF1ZXJ5TWF0Y2hlczogUXVlcnlNYXRjaFtdKTogdm9pZCB7XG4gICAgdGhpcy5fYWRkUHJvdmlkZXJOb2RlKHRoaXMuX3Zpc2l0UHJvdmlkZXJPckRpcmVjdGl2ZShwcm92aWRlckFzdCwgcXVlcnlNYXRjaGVzKSk7XG4gIH1cblxuICBwcml2YXRlIF92aXNpdENvbXBvbmVudEZhY3RvcnlSZXNvbHZlclByb3ZpZGVyKGRpcmVjdGl2ZXM6IERpcmVjdGl2ZUFzdFtdKSB7XG4gICAgY29uc3QgY29tcG9uZW50RGlyTWV0YSA9IGRpcmVjdGl2ZXMuZmluZChkaXJBc3QgPT4gZGlyQXN0LmRpcmVjdGl2ZS5pc0NvbXBvbmVudCk7XG4gICAgaWYgKGNvbXBvbmVudERpck1ldGEgJiYgY29tcG9uZW50RGlyTWV0YS5kaXJlY3RpdmUuZW50cnlDb21wb25lbnRzLmxlbmd0aCkge1xuICAgICAgY29uc3Qge3Byb3ZpZGVyRXhwciwgZGVwc0V4cHIsIGZsYWdzLCB0b2tlbkV4cHJ9ID0gY29tcG9uZW50RmFjdG9yeVJlc29sdmVyUHJvdmlkZXJEZWYoXG4gICAgICAgICAgdGhpcy5yZWZsZWN0b3IsIHRoaXMub3V0cHV0Q3R4LCBOb2RlRmxhZ3MuUHJpdmF0ZVByb3ZpZGVyLFxuICAgICAgICAgIGNvbXBvbmVudERpck1ldGEuZGlyZWN0aXZlLmVudHJ5Q29tcG9uZW50cyk7XG4gICAgICB0aGlzLl9hZGRQcm92aWRlck5vZGUoe1xuICAgICAgICBwcm92aWRlckV4cHIsXG4gICAgICAgIGRlcHNFeHByLFxuICAgICAgICBmbGFncyxcbiAgICAgICAgdG9rZW5FeHByLFxuICAgICAgICBxdWVyeU1hdGNoRXhwcnM6IFtdLFxuICAgICAgICBzb3VyY2VTcGFuOiBjb21wb25lbnREaXJNZXRhLnNvdXJjZVNwYW5cbiAgICAgIH0pO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX2FkZFByb3ZpZGVyTm9kZShkYXRhOiB7XG4gICAgZmxhZ3M6IE5vZGVGbGFncyxcbiAgICBxdWVyeU1hdGNoRXhwcnM6IG8uRXhwcmVzc2lvbltdLFxuICAgIHByb3ZpZGVyRXhwcjogby5FeHByZXNzaW9uLFxuICAgIGRlcHNFeHByOiBvLkV4cHJlc3Npb24sXG4gICAgdG9rZW5FeHByOiBvLkV4cHJlc3Npb24sXG4gICAgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuXG4gIH0pIHtcbiAgICAvLyBwcm92aWRlckRlZihcbiAgICAvLyAgIGZsYWdzOiBOb2RlRmxhZ3MsIG1hdGNoZWRRdWVyaWVzOiBbc3RyaW5nLCBRdWVyeVZhbHVlVHlwZV1bXSwgdG9rZW46YW55LFxuICAgIC8vICAgdmFsdWU6IGFueSwgZGVwczogKFtEZXBGbGFncywgYW55XSB8IGFueSlbXSk6IE5vZGVEZWY7XG4gICAgdGhpcy5ub2Rlcy5wdXNoKFxuICAgICAgICAoKSA9PiAoe1xuICAgICAgICAgIHNvdXJjZVNwYW46IGRhdGEuc291cmNlU3BhbixcbiAgICAgICAgICBub2RlRmxhZ3M6IGRhdGEuZmxhZ3MsXG4gICAgICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLnByb3ZpZGVyRGVmKS5jYWxsRm4oW1xuICAgICAgICAgICAgby5saXRlcmFsKGRhdGEuZmxhZ3MpLFxuICAgICAgICAgICAgZGF0YS5xdWVyeU1hdGNoRXhwcnMubGVuZ3RoID8gby5saXRlcmFsQXJyKGRhdGEucXVlcnlNYXRjaEV4cHJzKSA6IG8uTlVMTF9FWFBSLFxuICAgICAgICAgICAgZGF0YS50b2tlbkV4cHIsIGRhdGEucHJvdmlkZXJFeHByLCBkYXRhLmRlcHNFeHByXG4gICAgICAgICAgXSlcbiAgICAgICAgfSkpO1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXRQcm92aWRlck9yRGlyZWN0aXZlKHByb3ZpZGVyQXN0OiBQcm92aWRlckFzdCwgcXVlcnlNYXRjaGVzOiBRdWVyeU1hdGNoW10pOiB7XG4gICAgZmxhZ3M6IE5vZGVGbGFncyxcbiAgICB0b2tlbkV4cHI6IG8uRXhwcmVzc2lvbixcbiAgICBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sXG4gICAgcXVlcnlNYXRjaEV4cHJzOiBvLkV4cHJlc3Npb25bXSxcbiAgICBwcm92aWRlckV4cHI6IG8uRXhwcmVzc2lvbixcbiAgICBkZXBzRXhwcjogby5FeHByZXNzaW9uXG4gIH0ge1xuICAgIGxldCBmbGFncyA9IE5vZGVGbGFncy5Ob25lO1xuICAgIGxldCBxdWVyeU1hdGNoRXhwcnM6IG8uRXhwcmVzc2lvbltdID0gW107XG5cbiAgICBxdWVyeU1hdGNoZXMuZm9yRWFjaCgobWF0Y2gpID0+IHtcbiAgICAgIGlmICh0b2tlblJlZmVyZW5jZShtYXRjaC52YWx1ZSkgPT09IHRva2VuUmVmZXJlbmNlKHByb3ZpZGVyQXN0LnRva2VuKSkge1xuICAgICAgICBxdWVyeU1hdGNoRXhwcnMucHVzaChcbiAgICAgICAgICAgIG8ubGl0ZXJhbEFycihbby5saXRlcmFsKG1hdGNoLnF1ZXJ5SWQpLCBvLmxpdGVyYWwoUXVlcnlWYWx1ZVR5cGUuUHJvdmlkZXIpXSkpO1xuICAgICAgfVxuICAgIH0pO1xuICAgIGNvbnN0IHtwcm92aWRlckV4cHIsIGRlcHNFeHByLCBmbGFnczogcHJvdmlkZXJGbGFncywgdG9rZW5FeHByfSA9XG4gICAgICAgIHByb3ZpZGVyRGVmKHRoaXMub3V0cHV0Q3R4LCBwcm92aWRlckFzdCk7XG4gICAgcmV0dXJuIHtcbiAgICAgIGZsYWdzOiBmbGFncyB8IHByb3ZpZGVyRmxhZ3MsXG4gICAgICBxdWVyeU1hdGNoRXhwcnMsXG4gICAgICBwcm92aWRlckV4cHIsXG4gICAgICBkZXBzRXhwcixcbiAgICAgIHRva2VuRXhwcixcbiAgICAgIHNvdXJjZVNwYW46IHByb3ZpZGVyQXN0LnNvdXJjZVNwYW5cbiAgICB9O1xuICB9XG5cbiAgZ2V0TG9jYWwobmFtZTogc3RyaW5nKTogby5FeHByZXNzaW9ufG51bGwge1xuICAgIGlmIChuYW1lID09IEV2ZW50SGFuZGxlclZhcnMuZXZlbnQubmFtZSkge1xuICAgICAgcmV0dXJuIEV2ZW50SGFuZGxlclZhcnMuZXZlbnQ7XG4gICAgfVxuICAgIGxldCBjdXJyVmlld0V4cHI6IG8uRXhwcmVzc2lvbiA9IFZJRVdfVkFSO1xuICAgIGZvciAobGV0IGN1cnJCdWlsZGVyOiBWaWV3QnVpbGRlcnxudWxsID0gdGhpczsgY3VyckJ1aWxkZXI7IGN1cnJCdWlsZGVyID0gY3VyckJ1aWxkZXIucGFyZW50LFxuICAgICAgICAgICAgICAgICAgICAgICAgICBjdXJyVmlld0V4cHIgPSBjdXJyVmlld0V4cHIucHJvcCgncGFyZW50JykuY2FzdChvLkRZTkFNSUNfVFlQRSkpIHtcbiAgICAgIC8vIGNoZWNrIHJlZmVyZW5jZXNcbiAgICAgIGNvbnN0IHJlZk5vZGVJbmRleCA9IGN1cnJCdWlsZGVyLnJlZk5vZGVJbmRpY2VzW25hbWVdO1xuICAgICAgaWYgKHJlZk5vZGVJbmRleCAhPSBudWxsKSB7XG4gICAgICAgIHJldHVybiBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMubm9kZVZhbHVlKS5jYWxsRm4oW2N1cnJWaWV3RXhwciwgby5saXRlcmFsKHJlZk5vZGVJbmRleCldKTtcbiAgICAgIH1cblxuICAgICAgLy8gY2hlY2sgdmFyaWFibGVzXG4gICAgICBjb25zdCB2YXJBc3QgPSBjdXJyQnVpbGRlci52YXJpYWJsZXMuZmluZCgodmFyQXN0KSA9PiB2YXJBc3QubmFtZSA9PT0gbmFtZSk7XG4gICAgICBpZiAodmFyQXN0KSB7XG4gICAgICAgIGNvbnN0IHZhclZhbHVlID0gdmFyQXN0LnZhbHVlIHx8IElNUExJQ0lUX1RFTVBMQVRFX1ZBUjtcbiAgICAgICAgcmV0dXJuIGN1cnJWaWV3RXhwci5wcm9wKCdjb250ZXh0JykucHJvcCh2YXJWYWx1ZSk7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgbm90aWZ5SW1wbGljaXRSZWNlaXZlclVzZSgpOiB2b2lkIHtcbiAgICAvLyBOb3QgbmVlZGVkIGluIFZpZXcgRW5naW5lIGFzIFZpZXcgRW5naW5lIHdhbGtzIHRocm91Z2ggdGhlIGdlbmVyYXRlZFxuICAgIC8vIGV4cHJlc3Npb25zIHRvIGZpZ3VyZSBvdXQgaWYgdGhlIGltcGxpY2l0IHJlY2VpdmVyIGlzIHVzZWQgYW5kIG5lZWRzXG4gICAgLy8gdG8gYmUgZ2VuZXJhdGVkIGFzIHBhcnQgb2YgdGhlIHByZS11cGRhdGUgc3RhdGVtZW50cy5cbiAgfVxuXG4gIHByaXZhdGUgX2NyZWF0ZUxpdGVyYWxBcnJheUNvbnZlcnRlcihzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIGFyZ0NvdW50OiBudW1iZXIpOlxuICAgICAgQnVpbHRpbkNvbnZlcnRlciB7XG4gICAgaWYgKGFyZ0NvdW50ID09PSAwKSB7XG4gICAgICBjb25zdCB2YWx1ZUV4cHIgPSBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMuRU1QVFlfQVJSQVkpO1xuICAgICAgcmV0dXJuICgpID0+IHZhbHVlRXhwcjtcbiAgICB9XG5cbiAgICBjb25zdCBjaGVja0luZGV4ID0gdGhpcy5ub2Rlcy5sZW5ndGg7XG5cbiAgICB0aGlzLm5vZGVzLnB1c2goKCkgPT4gKHtcbiAgICAgICAgICAgICAgICAgICAgICBzb3VyY2VTcGFuLFxuICAgICAgICAgICAgICAgICAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVQdXJlQXJyYXksXG4gICAgICAgICAgICAgICAgICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLnB1cmVBcnJheURlZikuY2FsbEZuKFtcbiAgICAgICAgICAgICAgICAgICAgICAgIG8ubGl0ZXJhbChjaGVja0luZGV4KSxcbiAgICAgICAgICAgICAgICAgICAgICAgIG8ubGl0ZXJhbChhcmdDb3VudCksXG4gICAgICAgICAgICAgICAgICAgICAgXSlcbiAgICAgICAgICAgICAgICAgICAgfSkpO1xuXG4gICAgcmV0dXJuIChhcmdzOiBvLkV4cHJlc3Npb25bXSkgPT4gY2FsbENoZWNrU3RtdChjaGVja0luZGV4LCBhcmdzKTtcbiAgfVxuXG4gIHByaXZhdGUgX2NyZWF0ZUxpdGVyYWxNYXBDb252ZXJ0ZXIoXG4gICAgICBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIGtleXM6IHtrZXk6IHN0cmluZywgcXVvdGVkOiBib29sZWFufVtdKTogQnVpbHRpbkNvbnZlcnRlciB7XG4gICAgaWYgKGtleXMubGVuZ3RoID09PSAwKSB7XG4gICAgICBjb25zdCB2YWx1ZUV4cHIgPSBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMuRU1QVFlfTUFQKTtcbiAgICAgIHJldHVybiAoKSA9PiB2YWx1ZUV4cHI7XG4gICAgfVxuXG4gICAgY29uc3QgbWFwID0gby5saXRlcmFsTWFwKGtleXMubWFwKChlLCBpKSA9PiAoey4uLmUsIHZhbHVlOiBvLmxpdGVyYWwoaSl9KSkpO1xuICAgIGNvbnN0IGNoZWNrSW5kZXggPSB0aGlzLm5vZGVzLmxlbmd0aDtcbiAgICB0aGlzLm5vZGVzLnB1c2goKCkgPT4gKHtcbiAgICAgICAgICAgICAgICAgICAgICBzb3VyY2VTcGFuLFxuICAgICAgICAgICAgICAgICAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVQdXJlT2JqZWN0LFxuICAgICAgICAgICAgICAgICAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5wdXJlT2JqZWN0RGVmKS5jYWxsRm4oW1xuICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsKGNoZWNrSW5kZXgpLFxuICAgICAgICAgICAgICAgICAgICAgICAgbWFwLFxuICAgICAgICAgICAgICAgICAgICAgIF0pXG4gICAgICAgICAgICAgICAgICAgIH0pKTtcblxuICAgIHJldHVybiAoYXJnczogby5FeHByZXNzaW9uW10pID0+IGNhbGxDaGVja1N0bXQoY2hlY2tJbmRleCwgYXJncyk7XG4gIH1cblxuICBwcml2YXRlIF9jcmVhdGVQaXBlQ29udmVydGVyKGV4cHJlc3Npb246IFVwZGF0ZUV4cHJlc3Npb24sIG5hbWU6IHN0cmluZywgYXJnQ291bnQ6IG51bWJlcik6XG4gICAgICBCdWlsdGluQ29udmVydGVyIHtcbiAgICBjb25zdCBwaXBlID0gdGhpcy51c2VkUGlwZXMuZmluZCgocGlwZVN1bW1hcnkpID0+IHBpcGVTdW1tYXJ5Lm5hbWUgPT09IG5hbWUpICE7XG4gICAgaWYgKHBpcGUucHVyZSkge1xuICAgICAgY29uc3QgY2hlY2tJbmRleCA9IHRoaXMubm9kZXMubGVuZ3RoO1xuICAgICAgdGhpcy5ub2Rlcy5wdXNoKCgpID0+ICh7XG4gICAgICAgICAgICAgICAgICAgICAgICBzb3VyY2VTcGFuOiBleHByZXNzaW9uLnNvdXJjZVNwYW4sXG4gICAgICAgICAgICAgICAgICAgICAgICBub2RlRmxhZ3M6IE5vZGVGbGFncy5UeXBlUHVyZVBpcGUsXG4gICAgICAgICAgICAgICAgICAgICAgICBub2RlRGVmOiBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMucHVyZVBpcGVEZWYpLmNhbGxGbihbXG4gICAgICAgICAgICAgICAgICAgICAgICAgIG8ubGl0ZXJhbChjaGVja0luZGV4KSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsKGFyZ0NvdW50KSxcbiAgICAgICAgICAgICAgICAgICAgICAgIF0pXG4gICAgICAgICAgICAgICAgICAgICAgfSkpO1xuXG4gICAgICAvLyBmaW5kIHVuZGVybHlpbmcgcGlwZSBpbiB0aGUgY29tcG9uZW50IHZpZXdcbiAgICAgIGxldCBjb21wVmlld0V4cHI6IG8uRXhwcmVzc2lvbiA9IFZJRVdfVkFSO1xuICAgICAgbGV0IGNvbXBCdWlsZGVyOiBWaWV3QnVpbGRlciA9IHRoaXM7XG4gICAgICB3aGlsZSAoY29tcEJ1aWxkZXIucGFyZW50KSB7XG4gICAgICAgIGNvbXBCdWlsZGVyID0gY29tcEJ1aWxkZXIucGFyZW50O1xuICAgICAgICBjb21wVmlld0V4cHIgPSBjb21wVmlld0V4cHIucHJvcCgncGFyZW50JykuY2FzdChvLkRZTkFNSUNfVFlQRSk7XG4gICAgICB9XG4gICAgICBjb25zdCBwaXBlTm9kZUluZGV4ID0gY29tcEJ1aWxkZXIucHVyZVBpcGVOb2RlSW5kaWNlc1tuYW1lXTtcbiAgICAgIGNvbnN0IHBpcGVWYWx1ZUV4cHI6IG8uRXhwcmVzc2lvbiA9XG4gICAgICAgICAgby5pbXBvcnRFeHByKElkZW50aWZpZXJzLm5vZGVWYWx1ZSkuY2FsbEZuKFtjb21wVmlld0V4cHIsIG8ubGl0ZXJhbChwaXBlTm9kZUluZGV4KV0pO1xuXG4gICAgICByZXR1cm4gKGFyZ3M6IG8uRXhwcmVzc2lvbltdKSA9PiBjYWxsVW53cmFwVmFsdWUoXG4gICAgICAgICAgICAgICAgIGV4cHJlc3Npb24ubm9kZUluZGV4LCBleHByZXNzaW9uLmJpbmRpbmdJbmRleCxcbiAgICAgICAgICAgICAgICAgY2FsbENoZWNrU3RtdChjaGVja0luZGV4LCBbcGlwZVZhbHVlRXhwcl0uY29uY2F0KGFyZ3MpKSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIGNvbnN0IG5vZGVJbmRleCA9IHRoaXMuX2NyZWF0ZVBpcGUoZXhwcmVzc2lvbi5zb3VyY2VTcGFuLCBwaXBlKTtcbiAgICAgIGNvbnN0IG5vZGVWYWx1ZUV4cHIgPVxuICAgICAgICAgIG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5ub2RlVmFsdWUpLmNhbGxGbihbVklFV19WQVIsIG8ubGl0ZXJhbChub2RlSW5kZXgpXSk7XG5cbiAgICAgIHJldHVybiAoYXJnczogby5FeHByZXNzaW9uW10pID0+IGNhbGxVbndyYXBWYWx1ZShcbiAgICAgICAgICAgICAgICAgZXhwcmVzc2lvbi5ub2RlSW5kZXgsIGV4cHJlc3Npb24uYmluZGluZ0luZGV4LFxuICAgICAgICAgICAgICAgICBub2RlVmFsdWVFeHByLmNhbGxNZXRob2QoJ3RyYW5zZm9ybScsIGFyZ3MpKTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIF9jcmVhdGVQaXBlKHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbnxudWxsLCBwaXBlOiBDb21waWxlUGlwZVN1bW1hcnkpOiBudW1iZXIge1xuICAgIGNvbnN0IG5vZGVJbmRleCA9IHRoaXMubm9kZXMubGVuZ3RoO1xuICAgIGxldCBmbGFncyA9IE5vZGVGbGFncy5Ob25lO1xuICAgIHBpcGUudHlwZS5saWZlY3ljbGVIb29rcy5mb3JFYWNoKChsaWZlY3ljbGVIb29rKSA9PiB7XG4gICAgICAvLyBmb3IgcGlwZXMsIHdlIG9ubHkgc3VwcG9ydCBuZ09uRGVzdHJveVxuICAgICAgaWYgKGxpZmVjeWNsZUhvb2sgPT09IExpZmVjeWNsZUhvb2tzLk9uRGVzdHJveSkge1xuICAgICAgICBmbGFncyB8PSBsaWZlY3ljbGVIb29rVG9Ob2RlRmxhZyhsaWZlY3ljbGVIb29rKTtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIGNvbnN0IGRlcEV4cHJzID0gcGlwZS50eXBlLmRpRGVwcy5tYXAoKGRpRGVwKSA9PiBkZXBEZWYodGhpcy5vdXRwdXRDdHgsIGRpRGVwKSk7XG4gICAgLy8gZnVuY3Rpb24gcGlwZURlZihcbiAgICAvLyAgIGZsYWdzOiBOb2RlRmxhZ3MsIGN0b3I6IGFueSwgZGVwczogKFtEZXBGbGFncywgYW55XSB8IGFueSlbXSk6IE5vZGVEZWZcbiAgICB0aGlzLm5vZGVzLnB1c2goXG4gICAgICAgICgpID0+ICh7XG4gICAgICAgICAgc291cmNlU3BhbixcbiAgICAgICAgICBub2RlRmxhZ3M6IE5vZGVGbGFncy5UeXBlUGlwZSxcbiAgICAgICAgICBub2RlRGVmOiBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMucGlwZURlZikuY2FsbEZuKFtcbiAgICAgICAgICAgIG8ubGl0ZXJhbChmbGFncyksIHRoaXMub3V0cHV0Q3R4LmltcG9ydEV4cHIocGlwZS50eXBlLnJlZmVyZW5jZSksIG8ubGl0ZXJhbEFycihkZXBFeHBycylcbiAgICAgICAgICBdKVxuICAgICAgICB9KSk7XG4gICAgcmV0dXJuIG5vZGVJbmRleDtcbiAgfVxuXG4gIC8qKlxuICAgKiBGb3IgdGhlIEFTVCBpbiBgVXBkYXRlRXhwcmVzc2lvbi52YWx1ZWA6XG4gICAqIC0gY3JlYXRlIG5vZGVzIGZvciBwaXBlcywgbGl0ZXJhbCBhcnJheXMgYW5kLCBsaXRlcmFsIG1hcHMsXG4gICAqIC0gdXBkYXRlIHRoZSBBU1QgdG8gcmVwbGFjZSBwaXBlcywgbGl0ZXJhbCBhcnJheXMgYW5kLCBsaXRlcmFsIG1hcHMgd2l0aCBjYWxscyB0byBjaGVjayBmbi5cbiAgICpcbiAgICogV0FSTklORzogVGhpcyBtaWdodCBjcmVhdGUgbmV3IG5vZGVEZWZzIChmb3IgcGlwZXMgYW5kIGxpdGVyYWwgYXJyYXlzIGFuZCBsaXRlcmFsIG1hcHMpIVxuICAgKi9cbiAgcHJpdmF0ZSBfcHJlcHJvY2Vzc1VwZGF0ZUV4cHJlc3Npb24oZXhwcmVzc2lvbjogVXBkYXRlRXhwcmVzc2lvbik6IFVwZGF0ZUV4cHJlc3Npb24ge1xuICAgIHJldHVybiB7XG4gICAgICBub2RlSW5kZXg6IGV4cHJlc3Npb24ubm9kZUluZGV4LFxuICAgICAgYmluZGluZ0luZGV4OiBleHByZXNzaW9uLmJpbmRpbmdJbmRleCxcbiAgICAgIHNvdXJjZVNwYW46IGV4cHJlc3Npb24uc291cmNlU3BhbixcbiAgICAgIGNvbnRleHQ6IGV4cHJlc3Npb24uY29udGV4dCxcbiAgICAgIHZhbHVlOiBjb252ZXJ0UHJvcGVydHlCaW5kaW5nQnVpbHRpbnMoXG4gICAgICAgICAge1xuICAgICAgICAgICAgY3JlYXRlTGl0ZXJhbEFycmF5Q29udmVydGVyOiAoYXJnQ291bnQ6IG51bWJlcikgPT4gdGhpcy5fY3JlYXRlTGl0ZXJhbEFycmF5Q29udmVydGVyKFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXhwcmVzc2lvbi5zb3VyY2VTcGFuLCBhcmdDb3VudCksXG4gICAgICAgICAgICBjcmVhdGVMaXRlcmFsTWFwQ29udmVydGVyOlxuICAgICAgICAgICAgICAgIChrZXlzOiB7a2V5OiBzdHJpbmcsIHF1b3RlZDogYm9vbGVhbn1bXSkgPT5cbiAgICAgICAgICAgICAgICAgICAgdGhpcy5fY3JlYXRlTGl0ZXJhbE1hcENvbnZlcnRlcihleHByZXNzaW9uLnNvdXJjZVNwYW4sIGtleXMpLFxuICAgICAgICAgICAgY3JlYXRlUGlwZUNvbnZlcnRlcjogKG5hbWU6IHN0cmluZywgYXJnQ291bnQ6IG51bWJlcikgPT5cbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0aGlzLl9jcmVhdGVQaXBlQ29udmVydGVyKGV4cHJlc3Npb24sIG5hbWUsIGFyZ0NvdW50KVxuICAgICAgICAgIH0sXG4gICAgICAgICAgZXhwcmVzc2lvbi52YWx1ZSlcbiAgICB9O1xuICB9XG5cbiAgcHJpdmF0ZSBfY3JlYXRlTm9kZUV4cHJlc3Npb25zKCk6IHtcbiAgICB1cGRhdGVSZW5kZXJlclN0bXRzOiBvLlN0YXRlbWVudFtdLFxuICAgIHVwZGF0ZURpcmVjdGl2ZXNTdG10czogby5TdGF0ZW1lbnRbXSxcbiAgICBub2RlRGVmRXhwcnM6IG8uRXhwcmVzc2lvbltdXG4gIH0ge1xuICAgIGNvbnN0IHNlbGYgPSB0aGlzO1xuICAgIGxldCB1cGRhdGVCaW5kaW5nQ291bnQgPSAwO1xuICAgIGNvbnN0IHVwZGF0ZVJlbmRlcmVyU3RtdHM6IG8uU3RhdGVtZW50W10gPSBbXTtcbiAgICBjb25zdCB1cGRhdGVEaXJlY3RpdmVzU3RtdHM6IG8uU3RhdGVtZW50W10gPSBbXTtcbiAgICBjb25zdCBub2RlRGVmRXhwcnMgPSB0aGlzLm5vZGVzLm1hcCgoZmFjdG9yeSwgbm9kZUluZGV4KSA9PiB7XG4gICAgICBjb25zdCB7bm9kZURlZiwgbm9kZUZsYWdzLCB1cGRhdGVEaXJlY3RpdmVzLCB1cGRhdGVSZW5kZXJlciwgc291cmNlU3Bhbn0gPSBmYWN0b3J5KCk7XG4gICAgICBpZiAodXBkYXRlUmVuZGVyZXIpIHtcbiAgICAgICAgdXBkYXRlUmVuZGVyZXJTdG10cy5wdXNoKFxuICAgICAgICAgICAgLi4uY3JlYXRlVXBkYXRlU3RhdGVtZW50cyhub2RlSW5kZXgsIHNvdXJjZVNwYW4sIHVwZGF0ZVJlbmRlcmVyLCBmYWxzZSkpO1xuICAgICAgfVxuICAgICAgaWYgKHVwZGF0ZURpcmVjdGl2ZXMpIHtcbiAgICAgICAgdXBkYXRlRGlyZWN0aXZlc1N0bXRzLnB1c2goLi4uY3JlYXRlVXBkYXRlU3RhdGVtZW50cyhcbiAgICAgICAgICAgIG5vZGVJbmRleCwgc291cmNlU3BhbiwgdXBkYXRlRGlyZWN0aXZlcyxcbiAgICAgICAgICAgIChub2RlRmxhZ3MgJiAoTm9kZUZsYWdzLkRvQ2hlY2sgfCBOb2RlRmxhZ3MuT25Jbml0KSkgPiAwKSk7XG4gICAgICB9XG4gICAgICAvLyBXZSB1c2UgYSBjb21tYSBleHByZXNzaW9uIHRvIGNhbGwgdGhlIGxvZyBmdW5jdGlvbiBiZWZvcmVcbiAgICAgIC8vIHRoZSBub2RlRGVmIGZ1bmN0aW9uLCBidXQgc3RpbGwgdXNlIHRoZSByZXN1bHQgb2YgdGhlIG5vZGVEZWYgZnVuY3Rpb25cbiAgICAgIC8vIGFzIHRoZSB2YWx1ZS5cbiAgICAgIC8vIE5vdGU6IFdlIG9ubHkgYWRkIHRoZSBsb2dnZXIgdG8gZWxlbWVudHMgLyB0ZXh0IG5vZGVzLFxuICAgICAgLy8gc28gd2UgZG9uJ3QgZ2VuZXJhdGUgdG9vIG11Y2ggY29kZS5cbiAgICAgIGNvbnN0IGxvZ1dpdGhOb2RlRGVmID0gbm9kZUZsYWdzICYgTm9kZUZsYWdzLkNhdFJlbmRlck5vZGUgP1xuICAgICAgICAgIG5ldyBvLkNvbW1hRXhwcihbTE9HX1ZBUi5jYWxsRm4oW10pLmNhbGxGbihbXSksIG5vZGVEZWZdKSA6XG4gICAgICAgICAgbm9kZURlZjtcbiAgICAgIHJldHVybiBvLmFwcGx5U291cmNlU3BhblRvRXhwcmVzc2lvbklmTmVlZGVkKGxvZ1dpdGhOb2RlRGVmLCBzb3VyY2VTcGFuKTtcbiAgICB9KTtcbiAgICByZXR1cm4ge3VwZGF0ZVJlbmRlcmVyU3RtdHMsIHVwZGF0ZURpcmVjdGl2ZXNTdG10cywgbm9kZURlZkV4cHJzfTtcblxuICAgIGZ1bmN0aW9uIGNyZWF0ZVVwZGF0ZVN0YXRlbWVudHMoXG4gICAgICAgIG5vZGVJbmRleDogbnVtYmVyLCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4gfCBudWxsLCBleHByZXNzaW9uczogVXBkYXRlRXhwcmVzc2lvbltdLFxuICAgICAgICBhbGxvd0VtcHR5RXhwcnM6IGJvb2xlYW4pOiBvLlN0YXRlbWVudFtdIHtcbiAgICAgIGNvbnN0IHVwZGF0ZVN0bXRzOiBvLlN0YXRlbWVudFtdID0gW107XG4gICAgICBjb25zdCBleHBycyA9IGV4cHJlc3Npb25zLm1hcCgoe3NvdXJjZVNwYW4sIGNvbnRleHQsIHZhbHVlfSkgPT4ge1xuICAgICAgICBjb25zdCBiaW5kaW5nSWQgPSBgJHt1cGRhdGVCaW5kaW5nQ291bnQrK31gO1xuICAgICAgICBjb25zdCBuYW1lUmVzb2x2ZXIgPSBjb250ZXh0ID09PSBDT01QX1ZBUiA/IHNlbGYgOiBudWxsO1xuICAgICAgICBjb25zdCB7c3RtdHMsIGN1cnJWYWxFeHByfSA9XG4gICAgICAgICAgICBjb252ZXJ0UHJvcGVydHlCaW5kaW5nKG5hbWVSZXNvbHZlciwgY29udGV4dCwgdmFsdWUsIGJpbmRpbmdJZCwgQmluZGluZ0Zvcm0uR2VuZXJhbCk7XG4gICAgICAgIHVwZGF0ZVN0bXRzLnB1c2goLi4uc3RtdHMubWFwKFxuICAgICAgICAgICAgKHN0bXQ6IG8uU3RhdGVtZW50KSA9PiBvLmFwcGx5U291cmNlU3BhblRvU3RhdGVtZW50SWZOZWVkZWQoc3RtdCwgc291cmNlU3BhbikpKTtcbiAgICAgICAgcmV0dXJuIG8uYXBwbHlTb3VyY2VTcGFuVG9FeHByZXNzaW9uSWZOZWVkZWQoY3VyclZhbEV4cHIsIHNvdXJjZVNwYW4pO1xuICAgICAgfSk7XG4gICAgICBpZiAoZXhwcmVzc2lvbnMubGVuZ3RoIHx8IGFsbG93RW1wdHlFeHBycykge1xuICAgICAgICB1cGRhdGVTdG10cy5wdXNoKG8uYXBwbHlTb3VyY2VTcGFuVG9TdGF0ZW1lbnRJZk5lZWRlZChcbiAgICAgICAgICAgIGNhbGxDaGVja1N0bXQobm9kZUluZGV4LCBleHBycykudG9TdG10KCksIHNvdXJjZVNwYW4pKTtcbiAgICAgIH1cbiAgICAgIHJldHVybiB1cGRhdGVTdG10cztcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIF9jcmVhdGVFbGVtZW50SGFuZGxlRXZlbnRGbihcbiAgICAgIG5vZGVJbmRleDogbnVtYmVyLFxuICAgICAgaGFuZGxlcnM6IHtjb250ZXh0OiBvLkV4cHJlc3Npb24sIGV2ZW50QXN0OiBCb3VuZEV2ZW50QXN0LCBkaXJBc3Q6IERpcmVjdGl2ZUFzdH1bXSkge1xuICAgIGNvbnN0IGhhbmRsZUV2ZW50U3RtdHM6IG8uU3RhdGVtZW50W10gPSBbXTtcbiAgICBsZXQgaGFuZGxlRXZlbnRCaW5kaW5nQ291bnQgPSAwO1xuICAgIGhhbmRsZXJzLmZvckVhY2goKHtjb250ZXh0LCBldmVudEFzdCwgZGlyQXN0fSkgPT4ge1xuICAgICAgY29uc3QgYmluZGluZ0lkID0gYCR7aGFuZGxlRXZlbnRCaW5kaW5nQ291bnQrK31gO1xuICAgICAgY29uc3QgbmFtZVJlc29sdmVyID0gY29udGV4dCA9PT0gQ09NUF9WQVIgPyB0aGlzIDogbnVsbDtcbiAgICAgIGNvbnN0IHtzdG10cywgYWxsb3dEZWZhdWx0fSA9XG4gICAgICAgICAgY29udmVydEFjdGlvbkJpbmRpbmcobmFtZVJlc29sdmVyLCBjb250ZXh0LCBldmVudEFzdC5oYW5kbGVyLCBiaW5kaW5nSWQpO1xuICAgICAgY29uc3QgdHJ1ZVN0bXRzID0gc3RtdHM7XG4gICAgICBpZiAoYWxsb3dEZWZhdWx0KSB7XG4gICAgICAgIHRydWVTdG10cy5wdXNoKEFMTE9XX0RFRkFVTFRfVkFSLnNldChhbGxvd0RlZmF1bHQuYW5kKEFMTE9XX0RFRkFVTFRfVkFSKSkudG9TdG10KCkpO1xuICAgICAgfVxuICAgICAgY29uc3Qge3RhcmdldDogZXZlbnRUYXJnZXQsIG5hbWU6IGV2ZW50TmFtZX0gPSBlbGVtZW50RXZlbnROYW1lQW5kVGFyZ2V0KGV2ZW50QXN0LCBkaXJBc3QpO1xuICAgICAgY29uc3QgZnVsbEV2ZW50TmFtZSA9IGVsZW1lbnRFdmVudEZ1bGxOYW1lKGV2ZW50VGFyZ2V0LCBldmVudE5hbWUpO1xuICAgICAgaGFuZGxlRXZlbnRTdG10cy5wdXNoKG8uYXBwbHlTb3VyY2VTcGFuVG9TdGF0ZW1lbnRJZk5lZWRlZChcbiAgICAgICAgICBuZXcgby5JZlN0bXQoby5saXRlcmFsKGZ1bGxFdmVudE5hbWUpLmlkZW50aWNhbChFVkVOVF9OQU1FX1ZBUiksIHRydWVTdG10cyksXG4gICAgICAgICAgZXZlbnRBc3Quc291cmNlU3BhbikpO1xuICAgIH0pO1xuICAgIGxldCBoYW5kbGVFdmVudEZuOiBvLkV4cHJlc3Npb247XG4gICAgaWYgKGhhbmRsZUV2ZW50U3RtdHMubGVuZ3RoID4gMCkge1xuICAgICAgY29uc3QgcHJlU3RtdHM6IG8uU3RhdGVtZW50W10gPVxuICAgICAgICAgIFtBTExPV19ERUZBVUxUX1ZBUi5zZXQoby5saXRlcmFsKHRydWUpKS50b0RlY2xTdG10KG8uQk9PTF9UWVBFKV07XG4gICAgICBpZiAoIXRoaXMuY29tcG9uZW50LmlzSG9zdCAmJiBvLmZpbmRSZWFkVmFyTmFtZXMoaGFuZGxlRXZlbnRTdG10cykuaGFzKENPTVBfVkFSLm5hbWUgISkpIHtcbiAgICAgICAgcHJlU3RtdHMucHVzaChDT01QX1ZBUi5zZXQoVklFV19WQVIucHJvcCgnY29tcG9uZW50JykpLnRvRGVjbFN0bXQodGhpcy5jb21wVHlwZSkpO1xuICAgICAgfVxuICAgICAgaGFuZGxlRXZlbnRGbiA9IG8uZm4oXG4gICAgICAgICAgW1xuICAgICAgICAgICAgbmV3IG8uRm5QYXJhbShWSUVXX1ZBUi5uYW1lICEsIG8uSU5GRVJSRURfVFlQRSksXG4gICAgICAgICAgICBuZXcgby5GblBhcmFtKEVWRU5UX05BTUVfVkFSLm5hbWUgISwgby5JTkZFUlJFRF9UWVBFKSxcbiAgICAgICAgICAgIG5ldyBvLkZuUGFyYW0oRXZlbnRIYW5kbGVyVmFycy5ldmVudC5uYW1lICEsIG8uSU5GRVJSRURfVFlQRSlcbiAgICAgICAgICBdLFxuICAgICAgICAgIFsuLi5wcmVTdG10cywgLi4uaGFuZGxlRXZlbnRTdG10cywgbmV3IG8uUmV0dXJuU3RhdGVtZW50KEFMTE9XX0RFRkFVTFRfVkFSKV0sXG4gICAgICAgICAgby5JTkZFUlJFRF9UWVBFKTtcbiAgICB9IGVsc2Uge1xuICAgICAgaGFuZGxlRXZlbnRGbiA9IG8uTlVMTF9FWFBSO1xuICAgIH1cbiAgICByZXR1cm4gaGFuZGxlRXZlbnRGbjtcbiAgfVxuXG4gIHZpc2l0RGlyZWN0aXZlKGFzdDogRGlyZWN0aXZlQXN0LCBjb250ZXh0OiB7dXNlZEV2ZW50czogU2V0PHN0cmluZz59KTogYW55IHt9XG4gIHZpc2l0RGlyZWN0aXZlUHJvcGVydHkoYXN0OiBCb3VuZERpcmVjdGl2ZVByb3BlcnR5QXN0LCBjb250ZXh0OiBhbnkpOiBhbnkge31cbiAgdmlzaXRSZWZlcmVuY2UoYXN0OiBSZWZlcmVuY2VBc3QsIGNvbnRleHQ6IGFueSk6IGFueSB7fVxuICB2aXNpdFZhcmlhYmxlKGFzdDogVmFyaWFibGVBc3QsIGNvbnRleHQ6IGFueSk6IGFueSB7fVxuICB2aXNpdEV2ZW50KGFzdDogQm91bmRFdmVudEFzdCwgY29udGV4dDogYW55KTogYW55IHt9XG4gIHZpc2l0RWxlbWVudFByb3BlcnR5KGFzdDogQm91bmRFbGVtZW50UHJvcGVydHlBc3QsIGNvbnRleHQ6IGFueSk6IGFueSB7fVxuICB2aXNpdEF0dHIoYXN0OiBBdHRyQXN0LCBjb250ZXh0OiBhbnkpOiBhbnkge31cbn1cblxuZnVuY3Rpb24gbmVlZHNBZGRpdGlvbmFsUm9vdE5vZGUoYXN0Tm9kZXM6IFRlbXBsYXRlQXN0W10pOiBib29sZWFuIHtcbiAgY29uc3QgbGFzdEFzdE5vZGUgPSBhc3ROb2Rlc1thc3ROb2Rlcy5sZW5ndGggLSAxXTtcbiAgaWYgKGxhc3RBc3ROb2RlIGluc3RhbmNlb2YgRW1iZWRkZWRUZW1wbGF0ZUFzdCkge1xuICAgIHJldHVybiBsYXN0QXN0Tm9kZS5oYXNWaWV3Q29udGFpbmVyO1xuICB9XG5cbiAgaWYgKGxhc3RBc3ROb2RlIGluc3RhbmNlb2YgRWxlbWVudEFzdCkge1xuICAgIGlmIChpc05nQ29udGFpbmVyKGxhc3RBc3ROb2RlLm5hbWUpICYmIGxhc3RBc3ROb2RlLmNoaWxkcmVuLmxlbmd0aCkge1xuICAgICAgcmV0dXJuIG5lZWRzQWRkaXRpb25hbFJvb3ROb2RlKGxhc3RBc3ROb2RlLmNoaWxkcmVuKTtcbiAgICB9XG4gICAgcmV0dXJuIGxhc3RBc3ROb2RlLmhhc1ZpZXdDb250YWluZXI7XG4gIH1cblxuICByZXR1cm4gbGFzdEFzdE5vZGUgaW5zdGFuY2VvZiBOZ0NvbnRlbnRBc3Q7XG59XG5cblxuZnVuY3Rpb24gZWxlbWVudEJpbmRpbmdEZWYoaW5wdXRBc3Q6IEJvdW5kRWxlbWVudFByb3BlcnR5QXN0LCBkaXJBc3Q6IERpcmVjdGl2ZUFzdCk6IG8uRXhwcmVzc2lvbiB7XG4gIGNvbnN0IGlucHV0VHlwZSA9IGlucHV0QXN0LnR5cGU7XG4gIHN3aXRjaCAoaW5wdXRUeXBlKSB7XG4gICAgY2FzZSBQcm9wZXJ0eUJpbmRpbmdUeXBlLkF0dHJpYnV0ZTpcbiAgICAgIHJldHVybiBvLmxpdGVyYWxBcnIoW1xuICAgICAgICBvLmxpdGVyYWwoQmluZGluZ0ZsYWdzLlR5cGVFbGVtZW50QXR0cmlidXRlKSwgby5saXRlcmFsKGlucHV0QXN0Lm5hbWUpLFxuICAgICAgICBvLmxpdGVyYWwoaW5wdXRBc3Quc2VjdXJpdHlDb250ZXh0KVxuICAgICAgXSk7XG4gICAgY2FzZSBQcm9wZXJ0eUJpbmRpbmdUeXBlLlByb3BlcnR5OlxuICAgICAgcmV0dXJuIG8ubGl0ZXJhbEFycihbXG4gICAgICAgIG8ubGl0ZXJhbChCaW5kaW5nRmxhZ3MuVHlwZVByb3BlcnR5KSwgby5saXRlcmFsKGlucHV0QXN0Lm5hbWUpLFxuICAgICAgICBvLmxpdGVyYWwoaW5wdXRBc3Quc2VjdXJpdHlDb250ZXh0KVxuICAgICAgXSk7XG4gICAgY2FzZSBQcm9wZXJ0eUJpbmRpbmdUeXBlLkFuaW1hdGlvbjpcbiAgICAgIGNvbnN0IGJpbmRpbmdUeXBlID0gQmluZGluZ0ZsYWdzLlR5cGVQcm9wZXJ0eSB8XG4gICAgICAgICAgKGRpckFzdCAmJiBkaXJBc3QuZGlyZWN0aXZlLmlzQ29tcG9uZW50ID8gQmluZGluZ0ZsYWdzLlN5bnRoZXRpY0hvc3RQcm9wZXJ0eSA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgQmluZGluZ0ZsYWdzLlN5bnRoZXRpY1Byb3BlcnR5KTtcbiAgICAgIHJldHVybiBvLmxpdGVyYWxBcnIoW1xuICAgICAgICBvLmxpdGVyYWwoYmluZGluZ1R5cGUpLCBvLmxpdGVyYWwoJ0AnICsgaW5wdXRBc3QubmFtZSksIG8ubGl0ZXJhbChpbnB1dEFzdC5zZWN1cml0eUNvbnRleHQpXG4gICAgICBdKTtcbiAgICBjYXNlIFByb3BlcnR5QmluZGluZ1R5cGUuQ2xhc3M6XG4gICAgICByZXR1cm4gby5saXRlcmFsQXJyKFxuICAgICAgICAgIFtvLmxpdGVyYWwoQmluZGluZ0ZsYWdzLlR5cGVFbGVtZW50Q2xhc3MpLCBvLmxpdGVyYWwoaW5wdXRBc3QubmFtZSksIG8uTlVMTF9FWFBSXSk7XG4gICAgY2FzZSBQcm9wZXJ0eUJpbmRpbmdUeXBlLlN0eWxlOlxuICAgICAgcmV0dXJuIG8ubGl0ZXJhbEFycihbXG4gICAgICAgIG8ubGl0ZXJhbChCaW5kaW5nRmxhZ3MuVHlwZUVsZW1lbnRTdHlsZSksIG8ubGl0ZXJhbChpbnB1dEFzdC5uYW1lKSwgby5saXRlcmFsKGlucHV0QXN0LnVuaXQpXG4gICAgICBdKTtcbiAgICBkZWZhdWx0OlxuICAgICAgLy8gVGhpcyBkZWZhdWx0IGNhc2UgaXMgbm90IG5lZWRlZCBieSBUeXBlU2NyaXB0IGNvbXBpbGVyLCBhcyB0aGUgc3dpdGNoIGlzIGV4aGF1c3RpdmUuXG4gICAgICAvLyBIb3dldmVyIENsb3N1cmUgQ29tcGlsZXIgZG9lcyBub3QgdW5kZXJzdGFuZCB0aGF0IGFuZCByZXBvcnRzIGFuIGVycm9yIGluIHR5cGVkIG1vZGUuXG4gICAgICAvLyBUaGUgYHRocm93IG5ldyBFcnJvcmAgYmVsb3cgd29ya3MgYXJvdW5kIHRoZSBwcm9ibGVtLCBhbmQgdGhlIHVuZXhwZWN0ZWQ6IG5ldmVyIHZhcmlhYmxlXG4gICAgICAvLyBtYWtlcyBzdXJlIHRzYyBzdGlsbCBjaGVja3MgdGhpcyBjb2RlIGlzIHVucmVhY2hhYmxlLlxuICAgICAgY29uc3QgdW5leHBlY3RlZDogbmV2ZXIgPSBpbnB1dFR5cGU7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoYHVuZXhwZWN0ZWQgJHt1bmV4cGVjdGVkfWApO1xuICB9XG59XG5cblxuZnVuY3Rpb24gZml4ZWRBdHRyc0RlZihlbGVtZW50QXN0OiBFbGVtZW50QXN0KTogby5FeHByZXNzaW9uIHtcbiAgY29uc3QgbWFwUmVzdWx0OiB7W2tleTogc3RyaW5nXTogc3RyaW5nfSA9IE9iamVjdC5jcmVhdGUobnVsbCk7XG4gIGVsZW1lbnRBc3QuYXR0cnMuZm9yRWFjaChhdHRyQXN0ID0+IHsgbWFwUmVzdWx0W2F0dHJBc3QubmFtZV0gPSBhdHRyQXN0LnZhbHVlOyB9KTtcbiAgZWxlbWVudEFzdC5kaXJlY3RpdmVzLmZvckVhY2goZGlyQXN0ID0+IHtcbiAgICBPYmplY3Qua2V5cyhkaXJBc3QuZGlyZWN0aXZlLmhvc3RBdHRyaWJ1dGVzKS5mb3JFYWNoKG5hbWUgPT4ge1xuICAgICAgY29uc3QgdmFsdWUgPSBkaXJBc3QuZGlyZWN0aXZlLmhvc3RBdHRyaWJ1dGVzW25hbWVdO1xuICAgICAgY29uc3QgcHJldlZhbHVlID0gbWFwUmVzdWx0W25hbWVdO1xuICAgICAgbWFwUmVzdWx0W25hbWVdID0gcHJldlZhbHVlICE9IG51bGwgPyBtZXJnZUF0dHJpYnV0ZVZhbHVlKG5hbWUsIHByZXZWYWx1ZSwgdmFsdWUpIDogdmFsdWU7XG4gICAgfSk7XG4gIH0pO1xuICAvLyBOb3RlOiBXZSBuZWVkIHRvIHNvcnQgdG8gZ2V0IGEgZGVmaW5lZCBvdXRwdXQgb3JkZXJcbiAgLy8gZm9yIHRlc3RzIGFuZCBmb3IgY2FjaGluZyBnZW5lcmF0ZWQgYXJ0aWZhY3RzLi4uXG4gIHJldHVybiBvLmxpdGVyYWxBcnIoT2JqZWN0LmtleXMobWFwUmVzdWx0KS5zb3J0KCkubWFwKFxuICAgICAgKGF0dHJOYW1lKSA9PiBvLmxpdGVyYWxBcnIoW28ubGl0ZXJhbChhdHRyTmFtZSksIG8ubGl0ZXJhbChtYXBSZXN1bHRbYXR0ck5hbWVdKV0pKSk7XG59XG5cbmZ1bmN0aW9uIG1lcmdlQXR0cmlidXRlVmFsdWUoYXR0ck5hbWU6IHN0cmluZywgYXR0clZhbHVlMTogc3RyaW5nLCBhdHRyVmFsdWUyOiBzdHJpbmcpOiBzdHJpbmcge1xuICBpZiAoYXR0ck5hbWUgPT0gQ0xBU1NfQVRUUiB8fCBhdHRyTmFtZSA9PSBTVFlMRV9BVFRSKSB7XG4gICAgcmV0dXJuIGAke2F0dHJWYWx1ZTF9ICR7YXR0clZhbHVlMn1gO1xuICB9IGVsc2Uge1xuICAgIHJldHVybiBhdHRyVmFsdWUyO1xuICB9XG59XG5cbmZ1bmN0aW9uIGNhbGxDaGVja1N0bXQobm9kZUluZGV4OiBudW1iZXIsIGV4cHJzOiBvLkV4cHJlc3Npb25bXSk6IG8uRXhwcmVzc2lvbiB7XG4gIGlmIChleHBycy5sZW5ndGggPiAxMCkge1xuICAgIHJldHVybiBDSEVDS19WQVIuY2FsbEZuKFxuICAgICAgICBbVklFV19WQVIsIG8ubGl0ZXJhbChub2RlSW5kZXgpLCBvLmxpdGVyYWwoQXJndW1lbnRUeXBlLkR5bmFtaWMpLCBvLmxpdGVyYWxBcnIoZXhwcnMpXSk7XG4gIH0gZWxzZSB7XG4gICAgcmV0dXJuIENIRUNLX1ZBUi5jYWxsRm4oXG4gICAgICAgIFtWSUVXX1ZBUiwgby5saXRlcmFsKG5vZGVJbmRleCksIG8ubGl0ZXJhbChBcmd1bWVudFR5cGUuSW5saW5lKSwgLi4uZXhwcnNdKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBjYWxsVW53cmFwVmFsdWUobm9kZUluZGV4OiBudW1iZXIsIGJpbmRpbmdJZHg6IG51bWJlciwgZXhwcjogby5FeHByZXNzaW9uKTogby5FeHByZXNzaW9uIHtcbiAgcmV0dXJuIG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy51bndyYXBWYWx1ZSkuY2FsbEZuKFtcbiAgICBWSUVXX1ZBUiwgby5saXRlcmFsKG5vZGVJbmRleCksIG8ubGl0ZXJhbChiaW5kaW5nSWR4KSwgZXhwclxuICBdKTtcbn1cblxuZnVuY3Rpb24gZWxlbWVudEV2ZW50TmFtZUFuZFRhcmdldChcbiAgICBldmVudEFzdDogQm91bmRFdmVudEFzdCwgZGlyQXN0OiBEaXJlY3RpdmVBc3QgfCBudWxsKToge25hbWU6IHN0cmluZywgdGFyZ2V0OiBzdHJpbmcgfCBudWxsfSB7XG4gIGlmIChldmVudEFzdC5pc0FuaW1hdGlvbikge1xuICAgIHJldHVybiB7XG4gICAgICBuYW1lOiBgQCR7ZXZlbnRBc3QubmFtZX0uJHtldmVudEFzdC5waGFzZX1gLFxuICAgICAgdGFyZ2V0OiBkaXJBc3QgJiYgZGlyQXN0LmRpcmVjdGl2ZS5pc0NvbXBvbmVudCA/ICdjb21wb25lbnQnIDogbnVsbFxuICAgIH07XG4gIH0gZWxzZSB7XG4gICAgcmV0dXJuIGV2ZW50QXN0O1xuICB9XG59XG5cbmZ1bmN0aW9uIGNhbGNTdGF0aWNEeW5hbWljUXVlcnlGbGFncyhxdWVyeTogQ29tcGlsZVF1ZXJ5TWV0YWRhdGEpIHtcbiAgbGV0IGZsYWdzID0gTm9kZUZsYWdzLk5vbmU7XG4gIC8vIE5vdGU6IFdlIG9ubHkgbWFrZSBxdWVyaWVzIHN0YXRpYyB0aGF0IHF1ZXJ5IGZvciBhIHNpbmdsZSBpdGVtIGFuZCB0aGUgdXNlciBzcGVjaWZpY2FsbHlcbiAgLy8gc2V0IHRoZSB0byBiZSBzdGF0aWMuIFRoaXMgaXMgYmVjYXVzZSBvZiBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eSB3aXRoIHRoZSBvbGQgdmlldyBjb21waWxlci4uLlxuICBpZiAocXVlcnkuZmlyc3QgJiYgcXVlcnkuc3RhdGljKSB7XG4gICAgZmxhZ3MgfD0gTm9kZUZsYWdzLlN0YXRpY1F1ZXJ5O1xuICB9IGVsc2Uge1xuICAgIGZsYWdzIHw9IE5vZGVGbGFncy5EeW5hbWljUXVlcnk7XG4gIH1cbiAgcmV0dXJuIGZsYWdzO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZWxlbWVudEV2ZW50RnVsbE5hbWUodGFyZ2V0OiBzdHJpbmcgfCBudWxsLCBuYW1lOiBzdHJpbmcpOiBzdHJpbmcge1xuICByZXR1cm4gdGFyZ2V0ID8gYCR7dGFyZ2V0fToke25hbWV9YCA6IG5hbWU7XG59XG4iXX0=