/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { rendererTypeName, tokenReference, viewClassName } from '../compile_metadata';
import { BindingForm, convertActionBinding, convertPropertyBinding, convertPropertyBindingBuiltins, EventHandlerVars } from '../compiler_util/expression_converter';
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
            nodeDef: o.importExpr(Identifiers.ngContentDef)
                .callFn([o.literal(ast.ngContentIndex), o.literal(ast.index)])
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
            eventAst: hostEventAst,
            dirAst,
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
    elementAst.attrs.forEach(attrAst => {
        mapResult[attrAst.name] = attrAst.value;
    });
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlld19jb21waWxlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy92aWV3X2NvbXBpbGVyL3ZpZXdfY29tcGlsZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFxRSxnQkFBZ0IsRUFBRSxjQUFjLEVBQUUsYUFBYSxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFFeEosT0FBTyxFQUFDLFdBQVcsRUFBb0Isb0JBQW9CLEVBQUUsc0JBQXNCLEVBQUUsOEJBQThCLEVBQUUsZ0JBQWdCLEVBQWdCLE1BQU0sdUNBQXVDLENBQUM7QUFDbk0sT0FBTyxFQUE2Qix1QkFBdUIsRUFBeUQsTUFBTSxTQUFTLENBQUM7QUFFcEksT0FBTyxFQUFDLFdBQVcsRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBQzNDLE9BQU8sRUFBQyxjQUFjLEVBQUMsTUFBTSx3QkFBd0IsQ0FBQztBQUN0RCxPQUFPLEVBQUMsYUFBYSxFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFDaEQsT0FBTyxLQUFLLENBQUMsTUFBTSxzQkFBc0IsQ0FBQztBQUMxQyxPQUFPLEVBQUMsdUJBQXVCLEVBQUMsTUFBTSxzQkFBc0IsQ0FBQztBQUU3RCxPQUFPLEVBQXlHLFVBQVUsRUFBRSxtQkFBbUIsRUFBRSxZQUFZLEVBQStGLGdCQUFnQixFQUF1QixNQUFNLGlDQUFpQyxDQUFDO0FBRzNVLE9BQU8sRUFBQyxtQ0FBbUMsRUFBRSxNQUFNLEVBQUUsdUJBQXVCLEVBQUUsV0FBVyxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFFdEgsTUFBTSxVQUFVLEdBQUcsT0FBTyxDQUFDO0FBQzNCLE1BQU0sVUFBVSxHQUFHLE9BQU8sQ0FBQztBQUMzQixNQUFNLHFCQUFxQixHQUFHLFlBQVksQ0FBQztBQUUzQyxNQUFNLE9BQU8saUJBQWlCO0lBQzVCLFlBQW1CLFlBQW9CLEVBQVMsZUFBdUI7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LElBQUksS0FBSyxlQUFpQixDQUFDO0lBQzNCLDJGQUEyRjtJQUMzRixpR0FBaUc7SUFDakcsSUFBSSxLQUFLLENBQUMsS0FBSyxJQUFJLEtBQUssQ0FBQyxNQUFNLEVBQUU7UUFDL0IsS0FBSywrQkFBeUIsQ0FBQztLQUNoQztTQUFNO1FBQ0wsS0FBSyxnQ0FBMEIsQ0FBQztLQUNqQztJQUNELE9BQU8sS0FBSyxDQUFDO0FBQ2YsQ0FBQztBQUVELE1BQU0sVUFBVSxvQkFBb0IsQ0FBQyxNQUFtQixFQUFFLElBQVk7SUFDcEUsT0FBTyxNQUFNLENBQUMsQ0FBQyxDQUFDLEdBQUcsTUFBTSxJQUFJLElBQUksRUFBRSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUM7QUFDN0MsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0NvbXBpbGVEaXJlY3RpdmVNZXRhZGF0YSwgQ29tcGlsZVBpcGVTdW1tYXJ5LCBDb21waWxlUXVlcnlNZXRhZGF0YSwgcmVuZGVyZXJUeXBlTmFtZSwgdG9rZW5SZWZlcmVuY2UsIHZpZXdDbGFzc05hbWV9IGZyb20gJy4uL2NvbXBpbGVfbWV0YWRhdGEnO1xuaW1wb3J0IHtDb21waWxlUmVmbGVjdG9yfSBmcm9tICcuLi9jb21waWxlX3JlZmxlY3Rvcic7XG5pbXBvcnQge0JpbmRpbmdGb3JtLCBCdWlsdGluQ29udmVydGVyLCBjb252ZXJ0QWN0aW9uQmluZGluZywgY29udmVydFByb3BlcnR5QmluZGluZywgY29udmVydFByb3BlcnR5QmluZGluZ0J1aWx0aW5zLCBFdmVudEhhbmRsZXJWYXJzLCBMb2NhbFJlc29sdmVyfSBmcm9tICcuLi9jb21waWxlcl91dGlsL2V4cHJlc3Npb25fY29udmVydGVyJztcbmltcG9ydCB7QXJndW1lbnRUeXBlLCBCaW5kaW5nRmxhZ3MsIENoYW5nZURldGVjdGlvblN0cmF0ZWd5LCBOb2RlRmxhZ3MsIFF1ZXJ5QmluZGluZ1R5cGUsIFF1ZXJ5VmFsdWVUeXBlLCBWaWV3RmxhZ3N9IGZyb20gJy4uL2NvcmUnO1xuaW1wb3J0IHtBU1QsIEFTVFdpdGhTb3VyY2UsIEludGVycG9sYXRpb259IGZyb20gJy4uL2V4cHJlc3Npb25fcGFyc2VyL2FzdCc7XG5pbXBvcnQge0lkZW50aWZpZXJzfSBmcm9tICcuLi9pZGVudGlmaWVycyc7XG5pbXBvcnQge0xpZmVjeWNsZUhvb2tzfSBmcm9tICcuLi9saWZlY3ljbGVfcmVmbGVjdG9yJztcbmltcG9ydCB7aXNOZ0NvbnRhaW5lcn0gZnJvbSAnLi4vbWxfcGFyc2VyL3RhZ3MnO1xuaW1wb3J0ICogYXMgbyBmcm9tICcuLi9vdXRwdXQvb3V0cHV0X2FzdCc7XG5pbXBvcnQge2NvbnZlcnRWYWx1ZVRvT3V0cHV0QXN0fSBmcm9tICcuLi9vdXRwdXQvdmFsdWVfdXRpbCc7XG5pbXBvcnQge1BhcnNlU291cmNlU3Bhbn0gZnJvbSAnLi4vcGFyc2VfdXRpbCc7XG5pbXBvcnQge0F0dHJBc3QsIEJvdW5kRGlyZWN0aXZlUHJvcGVydHlBc3QsIEJvdW5kRWxlbWVudFByb3BlcnR5QXN0LCBCb3VuZEV2ZW50QXN0LCBCb3VuZFRleHRBc3QsIERpcmVjdGl2ZUFzdCwgRWxlbWVudEFzdCwgRW1iZWRkZWRUZW1wbGF0ZUFzdCwgTmdDb250ZW50QXN0LCBQcm9wZXJ0eUJpbmRpbmdUeXBlLCBQcm92aWRlckFzdCwgUXVlcnlNYXRjaCwgUmVmZXJlbmNlQXN0LCBUZW1wbGF0ZUFzdCwgVGVtcGxhdGVBc3RWaXNpdG9yLCB0ZW1wbGF0ZVZpc2l0QWxsLCBUZXh0QXN0LCBWYXJpYWJsZUFzdH0gZnJvbSAnLi4vdGVtcGxhdGVfcGFyc2VyL3RlbXBsYXRlX2FzdCc7XG5pbXBvcnQge091dHB1dENvbnRleHR9IGZyb20gJy4uL3V0aWwnO1xuXG5pbXBvcnQge2NvbXBvbmVudEZhY3RvcnlSZXNvbHZlclByb3ZpZGVyRGVmLCBkZXBEZWYsIGxpZmVjeWNsZUhvb2tUb05vZGVGbGFnLCBwcm92aWRlckRlZn0gZnJvbSAnLi9wcm92aWRlcl9jb21waWxlcic7XG5cbmNvbnN0IENMQVNTX0FUVFIgPSAnY2xhc3MnO1xuY29uc3QgU1RZTEVfQVRUUiA9ICdzdHlsZSc7XG5jb25zdCBJTVBMSUNJVF9URU1QTEFURV9WQVIgPSAnXFwkaW1wbGljaXQnO1xuXG5leHBvcnQgY2xhc3MgVmlld0NvbXBpbGVSZXN1bHQge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgdmlld0NsYXNzVmFyOiBzdHJpbmcsIHB1YmxpYyByZW5kZXJlclR5cGVWYXI6IHN0cmluZykge31cbn1cblxuZXhwb3J0IGNsYXNzIFZpZXdDb21waWxlciB7XG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgX3JlZmxlY3RvcjogQ29tcGlsZVJlZmxlY3Rvcikge31cblxuICBjb21waWxlQ29tcG9uZW50KFxuICAgICAgb3V0cHV0Q3R4OiBPdXRwdXRDb250ZXh0LCBjb21wb25lbnQ6IENvbXBpbGVEaXJlY3RpdmVNZXRhZGF0YSwgdGVtcGxhdGU6IFRlbXBsYXRlQXN0W10sXG4gICAgICBzdHlsZXM6IG8uRXhwcmVzc2lvbiwgdXNlZFBpcGVzOiBDb21waWxlUGlwZVN1bW1hcnlbXSk6IFZpZXdDb21waWxlUmVzdWx0IHtcbiAgICBsZXQgZW1iZWRkZWRWaWV3Q291bnQgPSAwO1xuXG4gICAgbGV0IHJlbmRlckNvbXBvbmVudFZhck5hbWU6IHN0cmluZyA9IHVuZGVmaW5lZCE7XG4gICAgaWYgKCFjb21wb25lbnQuaXNIb3N0KSB7XG4gICAgICBjb25zdCB0ZW1wbGF0ZSA9IGNvbXBvbmVudC50ZW1wbGF0ZSAhO1xuICAgICAgY29uc3QgY3VzdG9tUmVuZGVyRGF0YTogby5MaXRlcmFsTWFwRW50cnlbXSA9IFtdO1xuICAgICAgaWYgKHRlbXBsYXRlLmFuaW1hdGlvbnMgJiYgdGVtcGxhdGUuYW5pbWF0aW9ucy5sZW5ndGgpIHtcbiAgICAgICAgY3VzdG9tUmVuZGVyRGF0YS5wdXNoKG5ldyBvLkxpdGVyYWxNYXBFbnRyeShcbiAgICAgICAgICAgICdhbmltYXRpb24nLCBjb252ZXJ0VmFsdWVUb091dHB1dEFzdChvdXRwdXRDdHgsIHRlbXBsYXRlLmFuaW1hdGlvbnMpLCB0cnVlKSk7XG4gICAgICB9XG5cbiAgICAgIGNvbnN0IHJlbmRlckNvbXBvbmVudFZhciA9IG8udmFyaWFibGUocmVuZGVyZXJUeXBlTmFtZShjb21wb25lbnQudHlwZS5yZWZlcmVuY2UpKTtcbiAgICAgIHJlbmRlckNvbXBvbmVudFZhck5hbWUgPSByZW5kZXJDb21wb25lbnRWYXIubmFtZSE7XG4gICAgICBvdXRwdXRDdHguc3RhdGVtZW50cy5wdXNoKFxuICAgICAgICAgIHJlbmRlckNvbXBvbmVudFZhclxuICAgICAgICAgICAgICAuc2V0KG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5jcmVhdGVSZW5kZXJlclR5cGUyKS5jYWxsRm4oW25ldyBvLkxpdGVyYWxNYXBFeHByKFtcbiAgICAgICAgICAgICAgICBuZXcgby5MaXRlcmFsTWFwRW50cnkoJ2VuY2Fwc3VsYXRpb24nLCBvLmxpdGVyYWwodGVtcGxhdGUuZW5jYXBzdWxhdGlvbiksIGZhbHNlKSxcbiAgICAgICAgICAgICAgICBuZXcgby5MaXRlcmFsTWFwRW50cnkoJ3N0eWxlcycsIHN0eWxlcywgZmFsc2UpLFxuICAgICAgICAgICAgICAgIG5ldyBvLkxpdGVyYWxNYXBFbnRyeSgnZGF0YScsIG5ldyBvLkxpdGVyYWxNYXBFeHByKGN1c3RvbVJlbmRlckRhdGEpLCBmYWxzZSlcbiAgICAgICAgICAgICAgXSldKSlcbiAgICAgICAgICAgICAgLnRvRGVjbFN0bXQoXG4gICAgICAgICAgICAgICAgICBvLmltcG9ydFR5cGUoSWRlbnRpZmllcnMuUmVuZGVyZXJUeXBlMiksXG4gICAgICAgICAgICAgICAgICBbby5TdG10TW9kaWZpZXIuRmluYWwsIG8uU3RtdE1vZGlmaWVyLkV4cG9ydGVkXSkpO1xuICAgIH1cblxuICAgIGNvbnN0IHZpZXdCdWlsZGVyRmFjdG9yeSA9IChwYXJlbnQ6IFZpZXdCdWlsZGVyfG51bGwpOiBWaWV3QnVpbGRlciA9PiB7XG4gICAgICBjb25zdCBlbWJlZGRlZFZpZXdJbmRleCA9IGVtYmVkZGVkVmlld0NvdW50Kys7XG4gICAgICByZXR1cm4gbmV3IFZpZXdCdWlsZGVyKFxuICAgICAgICAgIHRoaXMuX3JlZmxlY3Rvciwgb3V0cHV0Q3R4LCBwYXJlbnQsIGNvbXBvbmVudCwgZW1iZWRkZWRWaWV3SW5kZXgsIHVzZWRQaXBlcyxcbiAgICAgICAgICB2aWV3QnVpbGRlckZhY3RvcnkpO1xuICAgIH07XG5cbiAgICBjb25zdCB2aXNpdG9yID0gdmlld0J1aWxkZXJGYWN0b3J5KG51bGwpO1xuICAgIHZpc2l0b3IudmlzaXRBbGwoW10sIHRlbXBsYXRlKTtcblxuICAgIG91dHB1dEN0eC5zdGF0ZW1lbnRzLnB1c2goLi4udmlzaXRvci5idWlsZCgpKTtcblxuICAgIHJldHVybiBuZXcgVmlld0NvbXBpbGVSZXN1bHQodmlzaXRvci52aWV3TmFtZSwgcmVuZGVyQ29tcG9uZW50VmFyTmFtZSk7XG4gIH1cbn1cblxuaW50ZXJmYWNlIFZpZXdCdWlsZGVyRmFjdG9yeSB7XG4gIChwYXJlbnQ6IFZpZXdCdWlsZGVyKTogVmlld0J1aWxkZXI7XG59XG5cbmludGVyZmFjZSBVcGRhdGVFeHByZXNzaW9uIHtcbiAgY29udGV4dDogby5FeHByZXNzaW9uO1xuICBub2RlSW5kZXg6IG51bWJlcjtcbiAgYmluZGluZ0luZGV4OiBudW1iZXI7XG4gIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbjtcbiAgdmFsdWU6IEFTVDtcbn1cblxuY29uc3QgTE9HX1ZBUiA9IG8udmFyaWFibGUoJ19sJyk7XG5jb25zdCBWSUVXX1ZBUiA9IG8udmFyaWFibGUoJ192Jyk7XG5jb25zdCBDSEVDS19WQVIgPSBvLnZhcmlhYmxlKCdfY2snKTtcbmNvbnN0IENPTVBfVkFSID0gby52YXJpYWJsZSgnX2NvJyk7XG5jb25zdCBFVkVOVF9OQU1FX1ZBUiA9IG8udmFyaWFibGUoJ2VuJyk7XG5jb25zdCBBTExPV19ERUZBVUxUX1ZBUiA9IG8udmFyaWFibGUoYGFkYCk7XG5cbmNsYXNzIFZpZXdCdWlsZGVyIGltcGxlbWVudHMgVGVtcGxhdGVBc3RWaXNpdG9yLCBMb2NhbFJlc29sdmVyIHtcbiAgcHJpdmF0ZSBjb21wVHlwZTogby5UeXBlO1xuICBwcml2YXRlIG5vZGVzOiAoKCkgPT4ge1xuICAgIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiB8IG51bGwsXG4gICAgbm9kZURlZjogby5FeHByZXNzaW9uLFxuICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLFxuICAgIHVwZGF0ZURpcmVjdGl2ZXM/OiBVcGRhdGVFeHByZXNzaW9uW10sXG4gICAgdXBkYXRlUmVuZGVyZXI/OiBVcGRhdGVFeHByZXNzaW9uW11cbiAgfSlbXSA9IFtdO1xuICBwcml2YXRlIHB1cmVQaXBlTm9kZUluZGljZXM6IHtbcGlwZU5hbWU6IHN0cmluZ106IG51bWJlcn0gPSBPYmplY3QuY3JlYXRlKG51bGwpO1xuICAvLyBOZWVkIE9iamVjdC5jcmVhdGUgc28gdGhhdCB3ZSBkb24ndCBoYXZlIGJ1aWx0aW4gdmFsdWVzLi4uXG4gIHByaXZhdGUgcmVmTm9kZUluZGljZXM6IHtbcmVmTmFtZTogc3RyaW5nXTogbnVtYmVyfSA9IE9iamVjdC5jcmVhdGUobnVsbCk7XG4gIHByaXZhdGUgdmFyaWFibGVzOiBWYXJpYWJsZUFzdFtdID0gW107XG4gIHByaXZhdGUgY2hpbGRyZW46IFZpZXdCdWlsZGVyW10gPSBbXTtcblxuICBwdWJsaWMgcmVhZG9ubHkgdmlld05hbWU6IHN0cmluZztcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgcmVmbGVjdG9yOiBDb21waWxlUmVmbGVjdG9yLCBwcml2YXRlIG91dHB1dEN0eDogT3V0cHV0Q29udGV4dCxcbiAgICAgIHByaXZhdGUgcGFyZW50OiBWaWV3QnVpbGRlcnxudWxsLCBwcml2YXRlIGNvbXBvbmVudDogQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhLFxuICAgICAgcHJpdmF0ZSBlbWJlZGRlZFZpZXdJbmRleDogbnVtYmVyLCBwcml2YXRlIHVzZWRQaXBlczogQ29tcGlsZVBpcGVTdW1tYXJ5W10sXG4gICAgICBwcml2YXRlIHZpZXdCdWlsZGVyRmFjdG9yeTogVmlld0J1aWxkZXJGYWN0b3J5KSB7XG4gICAgLy8gVE9ETyh0Ym9zY2gpOiBUaGUgb2xkIHZpZXcgY29tcGlsZXIgdXNlZCB0byB1c2UgYW4gYGFueWAgdHlwZVxuICAgIC8vIGZvciB0aGUgY29udGV4dCBpbiBhbnkgZW1iZWRkZWQgdmlldy4gV2Uga2VlcCB0aGlzIGJlaGFpdm9yIGZvciBub3dcbiAgICAvLyB0byBiZSBhYmxlIHRvIGludHJvZHVjZSB0aGUgbmV3IHZpZXcgY29tcGlsZXIgd2l0aG91dCB0b28gbWFueSBlcnJvcnMuXG4gICAgdGhpcy5jb21wVHlwZSA9IHRoaXMuZW1iZWRkZWRWaWV3SW5kZXggPiAwID9cbiAgICAgICAgby5EWU5BTUlDX1RZUEUgOlxuICAgICAgICBvLmV4cHJlc3Npb25UeXBlKG91dHB1dEN0eC5pbXBvcnRFeHByKHRoaXMuY29tcG9uZW50LnR5cGUucmVmZXJlbmNlKSkhO1xuICAgIHRoaXMudmlld05hbWUgPSB2aWV3Q2xhc3NOYW1lKHRoaXMuY29tcG9uZW50LnR5cGUucmVmZXJlbmNlLCB0aGlzLmVtYmVkZGVkVmlld0luZGV4KTtcbiAgfVxuXG4gIHZpc2l0QWxsKHZhcmlhYmxlczogVmFyaWFibGVBc3RbXSwgYXN0Tm9kZXM6IFRlbXBsYXRlQXN0W10pIHtcbiAgICB0aGlzLnZhcmlhYmxlcyA9IHZhcmlhYmxlcztcbiAgICAvLyBjcmVhdGUgdGhlIHBpcGVzIGZvciB0aGUgcHVyZSBwaXBlcyBpbW1lZGlhdGVseSwgc28gdGhhdCB3ZSBrbm93IHRoZWlyIGluZGljZXMuXG4gICAgaWYgKCF0aGlzLnBhcmVudCkge1xuICAgICAgdGhpcy51c2VkUGlwZXMuZm9yRWFjaCgocGlwZSkgPT4ge1xuICAgICAgICBpZiAocGlwZS5wdXJlKSB7XG4gICAgICAgICAgdGhpcy5wdXJlUGlwZU5vZGVJbmRpY2VzW3BpcGUubmFtZV0gPSB0aGlzLl9jcmVhdGVQaXBlKG51bGwsIHBpcGUpO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICB9XG5cbiAgICBpZiAoIXRoaXMucGFyZW50KSB7XG4gICAgICB0aGlzLmNvbXBvbmVudC52aWV3UXVlcmllcy5mb3JFYWNoKChxdWVyeSwgcXVlcnlJbmRleCkgPT4ge1xuICAgICAgICAvLyBOb3RlOiBxdWVyaWVzIHN0YXJ0IHdpdGggaWQgMSBzbyB3ZSBjYW4gdXNlIHRoZSBudW1iZXIgaW4gYSBCbG9vbSBmaWx0ZXIhXG4gICAgICAgIGNvbnN0IHF1ZXJ5SWQgPSBxdWVyeUluZGV4ICsgMTtcbiAgICAgICAgY29uc3QgYmluZGluZ1R5cGUgPSBxdWVyeS5maXJzdCA/IFF1ZXJ5QmluZGluZ1R5cGUuRmlyc3QgOiBRdWVyeUJpbmRpbmdUeXBlLkFsbDtcbiAgICAgICAgY29uc3QgZmxhZ3MgPSBOb2RlRmxhZ3MuVHlwZVZpZXdRdWVyeSB8IGNhbGNTdGF0aWNEeW5hbWljUXVlcnlGbGFncyhxdWVyeSk7XG4gICAgICAgIHRoaXMubm9kZXMucHVzaCgoKSA9PiAoe1xuICAgICAgICAgICAgICAgICAgICAgICAgICBzb3VyY2VTcGFuOiBudWxsLFxuICAgICAgICAgICAgICAgICAgICAgICAgICBub2RlRmxhZ3M6IGZsYWdzLFxuICAgICAgICAgICAgICAgICAgICAgICAgICBub2RlRGVmOiBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMucXVlcnlEZWYpLmNhbGxGbihbXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsKGZsYWdzKSwgby5saXRlcmFsKHF1ZXJ5SWQpLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgIG5ldyBvLkxpdGVyYWxNYXBFeHByKFtuZXcgby5MaXRlcmFsTWFwRW50cnkoXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHF1ZXJ5LnByb3BlcnR5TmFtZSwgby5saXRlcmFsKGJpbmRpbmdUeXBlKSwgZmFsc2UpXSlcbiAgICAgICAgICAgICAgICAgICAgICAgICAgXSlcbiAgICAgICAgICAgICAgICAgICAgICAgIH0pKTtcbiAgICAgIH0pO1xuICAgIH1cbiAgICB0ZW1wbGF0ZVZpc2l0QWxsKHRoaXMsIGFzdE5vZGVzKTtcbiAgICBpZiAodGhpcy5wYXJlbnQgJiYgKGFzdE5vZGVzLmxlbmd0aCA9PT0gMCB8fCBuZWVkc0FkZGl0aW9uYWxSb290Tm9kZShhc3ROb2RlcykpKSB7XG4gICAgICAvLyBpZiB0aGUgdmlldyBpcyBhbiBlbWJlZGRlZCB2aWV3LCB0aGVuIHdlIG5lZWQgdG8gYWRkIGFuIGFkZGl0aW9uYWwgcm9vdCBub2RlIGluIHNvbWUgY2FzZXNcbiAgICAgIHRoaXMubm9kZXMucHVzaCgoKSA9PiAoe1xuICAgICAgICAgICAgICAgICAgICAgICAgc291cmNlU3BhbjogbnVsbCxcbiAgICAgICAgICAgICAgICAgICAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVFbGVtZW50LFxuICAgICAgICAgICAgICAgICAgICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLmFuY2hvckRlZikuY2FsbEZuKFtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsKE5vZGVGbGFncy5Ob25lKSwgby5OVUxMX0VYUFIsIG8uTlVMTF9FWFBSLCBvLmxpdGVyYWwoMClcbiAgICAgICAgICAgICAgICAgICAgICAgIF0pXG4gICAgICAgICAgICAgICAgICAgICAgfSkpO1xuICAgIH1cbiAgfVxuXG4gIGJ1aWxkKHRhcmdldFN0YXRlbWVudHM6IG8uU3RhdGVtZW50W10gPSBbXSk6IG8uU3RhdGVtZW50W10ge1xuICAgIHRoaXMuY2hpbGRyZW4uZm9yRWFjaCgoY2hpbGQpID0+IGNoaWxkLmJ1aWxkKHRhcmdldFN0YXRlbWVudHMpKTtcblxuICAgIGNvbnN0IHt1cGRhdGVSZW5kZXJlclN0bXRzLCB1cGRhdGVEaXJlY3RpdmVzU3RtdHMsIG5vZGVEZWZFeHByc30gPVxuICAgICAgICB0aGlzLl9jcmVhdGVOb2RlRXhwcmVzc2lvbnMoKTtcblxuICAgIGNvbnN0IHVwZGF0ZVJlbmRlcmVyRm4gPSB0aGlzLl9jcmVhdGVVcGRhdGVGbih1cGRhdGVSZW5kZXJlclN0bXRzKTtcbiAgICBjb25zdCB1cGRhdGVEaXJlY3RpdmVzRm4gPSB0aGlzLl9jcmVhdGVVcGRhdGVGbih1cGRhdGVEaXJlY3RpdmVzU3RtdHMpO1xuXG5cbiAgICBsZXQgdmlld0ZsYWdzID0gVmlld0ZsYWdzLk5vbmU7XG4gICAgaWYgKCF0aGlzLnBhcmVudCAmJiB0aGlzLmNvbXBvbmVudC5jaGFuZ2VEZXRlY3Rpb24gPT09IENoYW5nZURldGVjdGlvblN0cmF0ZWd5Lk9uUHVzaCkge1xuICAgICAgdmlld0ZsYWdzIHw9IFZpZXdGbGFncy5PblB1c2g7XG4gICAgfVxuICAgIGNvbnN0IHZpZXdGYWN0b3J5ID0gbmV3IG8uRGVjbGFyZUZ1bmN0aW9uU3RtdChcbiAgICAgICAgdGhpcy52aWV3TmFtZSwgW25ldyBvLkZuUGFyYW0oTE9HX1ZBUi5uYW1lISldLFxuICAgICAgICBbbmV3IG8uUmV0dXJuU3RhdGVtZW50KG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy52aWV3RGVmKS5jYWxsRm4oW1xuICAgICAgICAgIG8ubGl0ZXJhbCh2aWV3RmxhZ3MpLFxuICAgICAgICAgIG8ubGl0ZXJhbEFycihub2RlRGVmRXhwcnMpLFxuICAgICAgICAgIHVwZGF0ZURpcmVjdGl2ZXNGbixcbiAgICAgICAgICB1cGRhdGVSZW5kZXJlckZuLFxuICAgICAgICBdKSldLFxuICAgICAgICBvLmltcG9ydFR5cGUoSWRlbnRpZmllcnMuVmlld0RlZmluaXRpb24pLFxuICAgICAgICB0aGlzLmVtYmVkZGVkVmlld0luZGV4ID09PSAwID8gW28uU3RtdE1vZGlmaWVyLkV4cG9ydGVkXSA6IFtdKTtcblxuICAgIHRhcmdldFN0YXRlbWVudHMucHVzaCh2aWV3RmFjdG9yeSk7XG4gICAgcmV0dXJuIHRhcmdldFN0YXRlbWVudHM7XG4gIH1cblxuICBwcml2YXRlIF9jcmVhdGVVcGRhdGVGbih1cGRhdGVTdG10czogby5TdGF0ZW1lbnRbXSk6IG8uRXhwcmVzc2lvbiB7XG4gICAgbGV0IHVwZGF0ZUZuOiBvLkV4cHJlc3Npb247XG4gICAgaWYgKHVwZGF0ZVN0bXRzLmxlbmd0aCA+IDApIHtcbiAgICAgIGNvbnN0IHByZVN0bXRzOiBvLlN0YXRlbWVudFtdID0gW107XG4gICAgICBpZiAoIXRoaXMuY29tcG9uZW50LmlzSG9zdCAmJiBvLmZpbmRSZWFkVmFyTmFtZXModXBkYXRlU3RtdHMpLmhhcyhDT01QX1ZBUi5uYW1lISkpIHtcbiAgICAgICAgcHJlU3RtdHMucHVzaChDT01QX1ZBUi5zZXQoVklFV19WQVIucHJvcCgnY29tcG9uZW50JykpLnRvRGVjbFN0bXQodGhpcy5jb21wVHlwZSkpO1xuICAgICAgfVxuICAgICAgdXBkYXRlRm4gPSBvLmZuKFxuICAgICAgICAgIFtcbiAgICAgICAgICAgIG5ldyBvLkZuUGFyYW0oQ0hFQ0tfVkFSLm5hbWUhLCBvLklORkVSUkVEX1RZUEUpLFxuICAgICAgICAgICAgbmV3IG8uRm5QYXJhbShWSUVXX1ZBUi5uYW1lISwgby5JTkZFUlJFRF9UWVBFKVxuICAgICAgICAgIF0sXG4gICAgICAgICAgWy4uLnByZVN0bXRzLCAuLi51cGRhdGVTdG10c10sIG8uSU5GRVJSRURfVFlQRSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHVwZGF0ZUZuID0gby5OVUxMX0VYUFI7XG4gICAgfVxuICAgIHJldHVybiB1cGRhdGVGbjtcbiAgfVxuXG4gIHZpc2l0TmdDb250ZW50KGFzdDogTmdDb250ZW50QXN0LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIC8vIG5nQ29udGVudERlZihuZ0NvbnRlbnRJbmRleDogbnVtYmVyLCBpbmRleDogbnVtYmVyKTogTm9kZURlZjtcbiAgICB0aGlzLm5vZGVzLnB1c2goKCkgPT4gKHtcbiAgICAgICAgICAgICAgICAgICAgICBzb3VyY2VTcGFuOiBhc3Quc291cmNlU3BhbixcbiAgICAgICAgICAgICAgICAgICAgICBub2RlRmxhZ3M6IE5vZGVGbGFncy5UeXBlTmdDb250ZW50LFxuICAgICAgICAgICAgICAgICAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5uZ0NvbnRlbnREZWYpXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5jYWxsRm4oW28ubGl0ZXJhbChhc3QubmdDb250ZW50SW5kZXgpLCBvLmxpdGVyYWwoYXN0LmluZGV4KV0pXG4gICAgICAgICAgICAgICAgICAgIH0pKTtcbiAgfVxuXG4gIHZpc2l0VGV4dChhc3Q6IFRleHRBc3QsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgLy8gU3RhdGljIHRleHQgbm9kZXMgaGF2ZSBubyBjaGVjayBmdW5jdGlvblxuICAgIGNvbnN0IGNoZWNrSW5kZXggPSAtMTtcbiAgICB0aGlzLm5vZGVzLnB1c2goKCkgPT4gKHtcbiAgICAgICAgICAgICAgICAgICAgICBzb3VyY2VTcGFuOiBhc3Quc291cmNlU3BhbixcbiAgICAgICAgICAgICAgICAgICAgICBub2RlRmxhZ3M6IE5vZGVGbGFncy5UeXBlVGV4dCxcbiAgICAgICAgICAgICAgICAgICAgICBub2RlRGVmOiBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMudGV4dERlZikuY2FsbEZuKFtcbiAgICAgICAgICAgICAgICAgICAgICAgIG8ubGl0ZXJhbChjaGVja0luZGV4KSxcbiAgICAgICAgICAgICAgICAgICAgICAgIG8ubGl0ZXJhbChhc3QubmdDb250ZW50SW5kZXgpLFxuICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsQXJyKFtvLmxpdGVyYWwoYXN0LnZhbHVlKV0pLFxuICAgICAgICAgICAgICAgICAgICAgIF0pXG4gICAgICAgICAgICAgICAgICAgIH0pKTtcbiAgfVxuXG4gIHZpc2l0Qm91bmRUZXh0KGFzdDogQm91bmRUZXh0QXN0LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGNvbnN0IG5vZGVJbmRleCA9IHRoaXMubm9kZXMubGVuZ3RoO1xuICAgIC8vIHJlc2VydmUgdGhlIHNwYWNlIGluIHRoZSBub2RlRGVmcyBhcnJheVxuICAgIHRoaXMubm9kZXMucHVzaChudWxsISk7XG5cbiAgICBjb25zdCBhc3RXaXRoU291cmNlID0gPEFTVFdpdGhTb3VyY2U+YXN0LnZhbHVlO1xuICAgIGNvbnN0IGludGVyID0gPEludGVycG9sYXRpb24+YXN0V2l0aFNvdXJjZS5hc3Q7XG5cbiAgICBjb25zdCB1cGRhdGVSZW5kZXJlckV4cHJlc3Npb25zID0gaW50ZXIuZXhwcmVzc2lvbnMubWFwKFxuICAgICAgICAoZXhwciwgYmluZGluZ0luZGV4KSA9PiB0aGlzLl9wcmVwcm9jZXNzVXBkYXRlRXhwcmVzc2lvbihcbiAgICAgICAgICAgIHtub2RlSW5kZXgsIGJpbmRpbmdJbmRleCwgc291cmNlU3BhbjogYXN0LnNvdXJjZVNwYW4sIGNvbnRleHQ6IENPTVBfVkFSLCB2YWx1ZTogZXhwcn0pKTtcblxuICAgIC8vIENoZWNrIGluZGV4IGlzIHRoZSBzYW1lIGFzIHRoZSBub2RlIGluZGV4IGR1cmluZyBjb21waWxhdGlvblxuICAgIC8vIFRoZXkgbWlnaHQgb25seSBkaWZmZXIgYXQgcnVudGltZVxuICAgIGNvbnN0IGNoZWNrSW5kZXggPSBub2RlSW5kZXg7XG5cbiAgICB0aGlzLm5vZGVzW25vZGVJbmRleF0gPSAoKSA9PiAoe1xuICAgICAgc291cmNlU3BhbjogYXN0LnNvdXJjZVNwYW4sXG4gICAgICBub2RlRmxhZ3M6IE5vZGVGbGFncy5UeXBlVGV4dCxcbiAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy50ZXh0RGVmKS5jYWxsRm4oW1xuICAgICAgICBvLmxpdGVyYWwoY2hlY2tJbmRleCksXG4gICAgICAgIG8ubGl0ZXJhbChhc3QubmdDb250ZW50SW5kZXgpLFxuICAgICAgICBvLmxpdGVyYWxBcnIoaW50ZXIuc3RyaW5ncy5tYXAocyA9PiBvLmxpdGVyYWwocykpKSxcbiAgICAgIF0pLFxuICAgICAgdXBkYXRlUmVuZGVyZXI6IHVwZGF0ZVJlbmRlcmVyRXhwcmVzc2lvbnNcbiAgICB9KTtcbiAgfVxuXG4gIHZpc2l0RW1iZWRkZWRUZW1wbGF0ZShhc3Q6IEVtYmVkZGVkVGVtcGxhdGVBc3QsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgY29uc3Qgbm9kZUluZGV4ID0gdGhpcy5ub2Rlcy5sZW5ndGg7XG4gICAgLy8gcmVzZXJ2ZSB0aGUgc3BhY2UgaW4gdGhlIG5vZGVEZWZzIGFycmF5XG4gICAgdGhpcy5ub2Rlcy5wdXNoKG51bGwhKTtcblxuICAgIGNvbnN0IHtmbGFncywgcXVlcnlNYXRjaGVzRXhwciwgaG9zdEV2ZW50c30gPSB0aGlzLl92aXNpdEVsZW1lbnRPclRlbXBsYXRlKG5vZGVJbmRleCwgYXN0KTtcblxuICAgIGNvbnN0IGNoaWxkVmlzaXRvciA9IHRoaXMudmlld0J1aWxkZXJGYWN0b3J5KHRoaXMpO1xuICAgIHRoaXMuY2hpbGRyZW4ucHVzaChjaGlsZFZpc2l0b3IpO1xuICAgIGNoaWxkVmlzaXRvci52aXNpdEFsbChhc3QudmFyaWFibGVzLCBhc3QuY2hpbGRyZW4pO1xuXG4gICAgY29uc3QgY2hpbGRDb3VudCA9IHRoaXMubm9kZXMubGVuZ3RoIC0gbm9kZUluZGV4IC0gMTtcblxuICAgIC8vIGFuY2hvckRlZihcbiAgICAvLyAgIGZsYWdzOiBOb2RlRmxhZ3MsIG1hdGNoZWRRdWVyaWVzOiBbc3RyaW5nLCBRdWVyeVZhbHVlVHlwZV1bXSwgbmdDb250ZW50SW5kZXg6IG51bWJlcixcbiAgICAvLyAgIGNoaWxkQ291bnQ6IG51bWJlciwgaGFuZGxlRXZlbnRGbj86IEVsZW1lbnRIYW5kbGVFdmVudEZuLCB0ZW1wbGF0ZUZhY3Rvcnk/OlxuICAgIC8vICAgVmlld0RlZmluaXRpb25GYWN0b3J5KTogTm9kZURlZjtcbiAgICB0aGlzLm5vZGVzW25vZGVJbmRleF0gPSAoKSA9PiAoe1xuICAgICAgc291cmNlU3BhbjogYXN0LnNvdXJjZVNwYW4sXG4gICAgICBub2RlRmxhZ3M6IE5vZGVGbGFncy5UeXBlRWxlbWVudCB8IGZsYWdzLFxuICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLmFuY2hvckRlZikuY2FsbEZuKFtcbiAgICAgICAgby5saXRlcmFsKGZsYWdzKSxcbiAgICAgICAgcXVlcnlNYXRjaGVzRXhwcixcbiAgICAgICAgby5saXRlcmFsKGFzdC5uZ0NvbnRlbnRJbmRleCksXG4gICAgICAgIG8ubGl0ZXJhbChjaGlsZENvdW50KSxcbiAgICAgICAgdGhpcy5fY3JlYXRlRWxlbWVudEhhbmRsZUV2ZW50Rm4obm9kZUluZGV4LCBob3N0RXZlbnRzKSxcbiAgICAgICAgby52YXJpYWJsZShjaGlsZFZpc2l0b3Iudmlld05hbWUpLFxuICAgICAgXSlcbiAgICB9KTtcbiAgfVxuXG4gIHZpc2l0RWxlbWVudChhc3Q6IEVsZW1lbnRBc3QsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgY29uc3Qgbm9kZUluZGV4ID0gdGhpcy5ub2Rlcy5sZW5ndGg7XG4gICAgLy8gcmVzZXJ2ZSB0aGUgc3BhY2UgaW4gdGhlIG5vZGVEZWZzIGFycmF5IHNvIHdlIGNhbiBhZGQgY2hpbGRyZW5cbiAgICB0aGlzLm5vZGVzLnB1c2gobnVsbCEpO1xuXG4gICAgLy8gVXNpbmcgYSBudWxsIGVsZW1lbnQgbmFtZSBjcmVhdGVzIGFuIGFuY2hvci5cbiAgICBjb25zdCBlbE5hbWU6IHN0cmluZ3xudWxsID0gaXNOZ0NvbnRhaW5lcihhc3QubmFtZSkgPyBudWxsIDogYXN0Lm5hbWU7XG5cbiAgICBjb25zdCB7ZmxhZ3MsIHVzZWRFdmVudHMsIHF1ZXJ5TWF0Y2hlc0V4cHIsIGhvc3RCaW5kaW5nczogZGlySG9zdEJpbmRpbmdzLCBob3N0RXZlbnRzfSA9XG4gICAgICAgIHRoaXMuX3Zpc2l0RWxlbWVudE9yVGVtcGxhdGUobm9kZUluZGV4LCBhc3QpO1xuXG4gICAgbGV0IGlucHV0RGVmczogby5FeHByZXNzaW9uW10gPSBbXTtcbiAgICBsZXQgdXBkYXRlUmVuZGVyZXJFeHByZXNzaW9uczogVXBkYXRlRXhwcmVzc2lvbltdID0gW107XG4gICAgbGV0IG91dHB1dERlZnM6IG8uRXhwcmVzc2lvbltdID0gW107XG4gICAgaWYgKGVsTmFtZSkge1xuICAgICAgY29uc3QgaG9zdEJpbmRpbmdzOiBhbnlbXSA9IGFzdC5pbnB1dHNcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLm1hcCgoaW5wdXRBc3QpID0+ICh7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250ZXh0OiBDT01QX1ZBUiBhcyBvLkV4cHJlc3Npb24sXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnB1dEFzdCxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRpckFzdDogbnVsbCBhcyBhbnksXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfSkpXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5jb25jYXQoZGlySG9zdEJpbmRpbmdzKTtcbiAgICAgIGlmIChob3N0QmluZGluZ3MubGVuZ3RoKSB7XG4gICAgICAgIHVwZGF0ZVJlbmRlcmVyRXhwcmVzc2lvbnMgPVxuICAgICAgICAgICAgaG9zdEJpbmRpbmdzLm1hcCgoaG9zdEJpbmRpbmcsIGJpbmRpbmdJbmRleCkgPT4gdGhpcy5fcHJlcHJvY2Vzc1VwZGF0ZUV4cHJlc3Npb24oe1xuICAgICAgICAgICAgICBjb250ZXh0OiBob3N0QmluZGluZy5jb250ZXh0LFxuICAgICAgICAgICAgICBub2RlSW5kZXgsXG4gICAgICAgICAgICAgIGJpbmRpbmdJbmRleCxcbiAgICAgICAgICAgICAgc291cmNlU3BhbjogaG9zdEJpbmRpbmcuaW5wdXRBc3Quc291cmNlU3BhbixcbiAgICAgICAgICAgICAgdmFsdWU6IGhvc3RCaW5kaW5nLmlucHV0QXN0LnZhbHVlXG4gICAgICAgICAgICB9KSk7XG4gICAgICAgIGlucHV0RGVmcyA9IGhvc3RCaW5kaW5ncy5tYXAoXG4gICAgICAgICAgICBob3N0QmluZGluZyA9PiBlbGVtZW50QmluZGluZ0RlZihob3N0QmluZGluZy5pbnB1dEFzdCwgaG9zdEJpbmRpbmcuZGlyQXN0KSk7XG4gICAgICB9XG4gICAgICBvdXRwdXREZWZzID0gdXNlZEV2ZW50cy5tYXAoXG4gICAgICAgICAgKFt0YXJnZXQsIGV2ZW50TmFtZV0pID0+IG8ubGl0ZXJhbEFycihbby5saXRlcmFsKHRhcmdldCksIG8ubGl0ZXJhbChldmVudE5hbWUpXSkpO1xuICAgIH1cblxuICAgIHRlbXBsYXRlVmlzaXRBbGwodGhpcywgYXN0LmNoaWxkcmVuKTtcblxuICAgIGNvbnN0IGNoaWxkQ291bnQgPSB0aGlzLm5vZGVzLmxlbmd0aCAtIG5vZGVJbmRleCAtIDE7XG5cbiAgICBjb25zdCBjb21wQXN0ID0gYXN0LmRpcmVjdGl2ZXMuZmluZChkaXJBc3QgPT4gZGlyQXN0LmRpcmVjdGl2ZS5pc0NvbXBvbmVudCk7XG4gICAgbGV0IGNvbXBSZW5kZXJlclR5cGUgPSBvLk5VTExfRVhQUiBhcyBvLkV4cHJlc3Npb247XG4gICAgbGV0IGNvbXBWaWV3ID0gby5OVUxMX0VYUFIgYXMgby5FeHByZXNzaW9uO1xuICAgIGlmIChjb21wQXN0KSB7XG4gICAgICBjb21wVmlldyA9IHRoaXMub3V0cHV0Q3R4LmltcG9ydEV4cHIoY29tcEFzdC5kaXJlY3RpdmUuY29tcG9uZW50Vmlld1R5cGUpO1xuICAgICAgY29tcFJlbmRlcmVyVHlwZSA9IHRoaXMub3V0cHV0Q3R4LmltcG9ydEV4cHIoY29tcEFzdC5kaXJlY3RpdmUucmVuZGVyZXJUeXBlKTtcbiAgICB9XG5cbiAgICAvLyBDaGVjayBpbmRleCBpcyB0aGUgc2FtZSBhcyB0aGUgbm9kZSBpbmRleCBkdXJpbmcgY29tcGlsYXRpb25cbiAgICAvLyBUaGV5IG1pZ2h0IG9ubHkgZGlmZmVyIGF0IHJ1bnRpbWVcbiAgICBjb25zdCBjaGVja0luZGV4ID0gbm9kZUluZGV4O1xuXG4gICAgdGhpcy5ub2Rlc1tub2RlSW5kZXhdID0gKCkgPT4gKHtcbiAgICAgIHNvdXJjZVNwYW46IGFzdC5zb3VyY2VTcGFuLFxuICAgICAgbm9kZUZsYWdzOiBOb2RlRmxhZ3MuVHlwZUVsZW1lbnQgfCBmbGFncyxcbiAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5lbGVtZW50RGVmKS5jYWxsRm4oW1xuICAgICAgICBvLmxpdGVyYWwoY2hlY2tJbmRleCksXG4gICAgICAgIG8ubGl0ZXJhbChmbGFncyksXG4gICAgICAgIHF1ZXJ5TWF0Y2hlc0V4cHIsXG4gICAgICAgIG8ubGl0ZXJhbChhc3QubmdDb250ZW50SW5kZXgpLFxuICAgICAgICBvLmxpdGVyYWwoY2hpbGRDb3VudCksXG4gICAgICAgIG8ubGl0ZXJhbChlbE5hbWUpLFxuICAgICAgICBlbE5hbWUgPyBmaXhlZEF0dHJzRGVmKGFzdCkgOiBvLk5VTExfRVhQUixcbiAgICAgICAgaW5wdXREZWZzLmxlbmd0aCA/IG8ubGl0ZXJhbEFycihpbnB1dERlZnMpIDogby5OVUxMX0VYUFIsXG4gICAgICAgIG91dHB1dERlZnMubGVuZ3RoID8gby5saXRlcmFsQXJyKG91dHB1dERlZnMpIDogby5OVUxMX0VYUFIsXG4gICAgICAgIHRoaXMuX2NyZWF0ZUVsZW1lbnRIYW5kbGVFdmVudEZuKG5vZGVJbmRleCwgaG9zdEV2ZW50cyksXG4gICAgICAgIGNvbXBWaWV3LFxuICAgICAgICBjb21wUmVuZGVyZXJUeXBlLFxuICAgICAgXSksXG4gICAgICB1cGRhdGVSZW5kZXJlcjogdXBkYXRlUmVuZGVyZXJFeHByZXNzaW9uc1xuICAgIH0pO1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXRFbGVtZW50T3JUZW1wbGF0ZShub2RlSW5kZXg6IG51bWJlciwgYXN0OiB7XG4gICAgaGFzVmlld0NvbnRhaW5lcjogYm9vbGVhbixcbiAgICBvdXRwdXRzOiBCb3VuZEV2ZW50QXN0W10sXG4gICAgZGlyZWN0aXZlczogRGlyZWN0aXZlQXN0W10sXG4gICAgcHJvdmlkZXJzOiBQcm92aWRlckFzdFtdLFxuICAgIHJlZmVyZW5jZXM6IFJlZmVyZW5jZUFzdFtdLFxuICAgIHF1ZXJ5TWF0Y2hlczogUXVlcnlNYXRjaFtdXG4gIH0pOiB7XG4gICAgZmxhZ3M6IE5vZGVGbGFncyxcbiAgICB1c2VkRXZlbnRzOiBbc3RyaW5nfG51bGwsIHN0cmluZ11bXSxcbiAgICBxdWVyeU1hdGNoZXNFeHByOiBvLkV4cHJlc3Npb24sXG4gICAgaG9zdEJpbmRpbmdzOlxuICAgICAgICB7Y29udGV4dDogby5FeHByZXNzaW9uLCBpbnB1dEFzdDogQm91bmRFbGVtZW50UHJvcGVydHlBc3QsIGRpckFzdDogRGlyZWN0aXZlQXN0fVtdLFxuICAgIGhvc3RFdmVudHM6IHtjb250ZXh0OiBvLkV4cHJlc3Npb24sIGV2ZW50QXN0OiBCb3VuZEV2ZW50QXN0LCBkaXJBc3Q6IERpcmVjdGl2ZUFzdH1bXSxcbiAgfSB7XG4gICAgbGV0IGZsYWdzID0gTm9kZUZsYWdzLk5vbmU7XG4gICAgaWYgKGFzdC5oYXNWaWV3Q29udGFpbmVyKSB7XG4gICAgICBmbGFncyB8PSBOb2RlRmxhZ3MuRW1iZWRkZWRWaWV3cztcbiAgICB9XG4gICAgY29uc3QgdXNlZEV2ZW50cyA9IG5ldyBNYXA8c3RyaW5nLCBbc3RyaW5nIHwgbnVsbCwgc3RyaW5nXT4oKTtcbiAgICBhc3Qub3V0cHV0cy5mb3JFYWNoKChldmVudCkgPT4ge1xuICAgICAgY29uc3Qge25hbWUsIHRhcmdldH0gPSBlbGVtZW50RXZlbnROYW1lQW5kVGFyZ2V0KGV2ZW50LCBudWxsKTtcbiAgICAgIHVzZWRFdmVudHMuc2V0KGVsZW1lbnRFdmVudEZ1bGxOYW1lKHRhcmdldCwgbmFtZSksIFt0YXJnZXQsIG5hbWVdKTtcbiAgICB9KTtcbiAgICBhc3QuZGlyZWN0aXZlcy5mb3JFYWNoKChkaXJBc3QpID0+IHtcbiAgICAgIGRpckFzdC5ob3N0RXZlbnRzLmZvckVhY2goKGV2ZW50KSA9PiB7XG4gICAgICAgIGNvbnN0IHtuYW1lLCB0YXJnZXR9ID0gZWxlbWVudEV2ZW50TmFtZUFuZFRhcmdldChldmVudCwgZGlyQXN0KTtcbiAgICAgICAgdXNlZEV2ZW50cy5zZXQoZWxlbWVudEV2ZW50RnVsbE5hbWUodGFyZ2V0LCBuYW1lKSwgW3RhcmdldCwgbmFtZV0pO1xuICAgICAgfSk7XG4gICAgfSk7XG4gICAgY29uc3QgaG9zdEJpbmRpbmdzOlxuICAgICAgICB7Y29udGV4dDogby5FeHByZXNzaW9uLCBpbnB1dEFzdDogQm91bmRFbGVtZW50UHJvcGVydHlBc3QsIGRpckFzdDogRGlyZWN0aXZlQXN0fVtdID0gW107XG4gICAgY29uc3QgaG9zdEV2ZW50czoge2NvbnRleHQ6IG8uRXhwcmVzc2lvbiwgZXZlbnRBc3Q6IEJvdW5kRXZlbnRBc3QsIGRpckFzdDogRGlyZWN0aXZlQXN0fVtdID0gW107XG4gICAgdGhpcy5fdmlzaXRDb21wb25lbnRGYWN0b3J5UmVzb2x2ZXJQcm92aWRlcihhc3QuZGlyZWN0aXZlcyk7XG5cbiAgICBhc3QucHJvdmlkZXJzLmZvckVhY2gocHJvdmlkZXJBc3QgPT4ge1xuICAgICAgbGV0IGRpckFzdDogRGlyZWN0aXZlQXN0ID0gdW5kZWZpbmVkITtcbiAgICAgIGFzdC5kaXJlY3RpdmVzLmZvckVhY2gobG9jYWxEaXJBc3QgPT4ge1xuICAgICAgICBpZiAobG9jYWxEaXJBc3QuZGlyZWN0aXZlLnR5cGUucmVmZXJlbmNlID09PSB0b2tlblJlZmVyZW5jZShwcm92aWRlckFzdC50b2tlbikpIHtcbiAgICAgICAgICBkaXJBc3QgPSBsb2NhbERpckFzdDtcbiAgICAgICAgfVxuICAgICAgfSk7XG4gICAgICBpZiAoZGlyQXN0KSB7XG4gICAgICAgIGNvbnN0IHtob3N0QmluZGluZ3M6IGRpckhvc3RCaW5kaW5ncywgaG9zdEV2ZW50czogZGlySG9zdEV2ZW50c30gPVxuICAgICAgICAgICAgdGhpcy5fdmlzaXREaXJlY3RpdmUocHJvdmlkZXJBc3QsIGRpckFzdCwgYXN0LnJlZmVyZW5jZXMsIGFzdC5xdWVyeU1hdGNoZXMsIHVzZWRFdmVudHMpO1xuICAgICAgICBob3N0QmluZGluZ3MucHVzaCguLi5kaXJIb3N0QmluZGluZ3MpO1xuICAgICAgICBob3N0RXZlbnRzLnB1c2goLi4uZGlySG9zdEV2ZW50cyk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICB0aGlzLl92aXNpdFByb3ZpZGVyKHByb3ZpZGVyQXN0LCBhc3QucXVlcnlNYXRjaGVzKTtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIGxldCBxdWVyeU1hdGNoRXhwcnM6IG8uRXhwcmVzc2lvbltdID0gW107XG4gICAgYXN0LnF1ZXJ5TWF0Y2hlcy5mb3JFYWNoKChtYXRjaCkgPT4ge1xuICAgICAgbGV0IHZhbHVlVHlwZTogUXVlcnlWYWx1ZVR5cGUgPSB1bmRlZmluZWQhO1xuICAgICAgaWYgKHRva2VuUmVmZXJlbmNlKG1hdGNoLnZhbHVlKSA9PT1cbiAgICAgICAgICB0aGlzLnJlZmxlY3Rvci5yZXNvbHZlRXh0ZXJuYWxSZWZlcmVuY2UoSWRlbnRpZmllcnMuRWxlbWVudFJlZikpIHtcbiAgICAgICAgdmFsdWVUeXBlID0gUXVlcnlWYWx1ZVR5cGUuRWxlbWVudFJlZjtcbiAgICAgIH0gZWxzZSBpZiAoXG4gICAgICAgICAgdG9rZW5SZWZlcmVuY2UobWF0Y2gudmFsdWUpID09PVxuICAgICAgICAgIHRoaXMucmVmbGVjdG9yLnJlc29sdmVFeHRlcm5hbFJlZmVyZW5jZShJZGVudGlmaWVycy5WaWV3Q29udGFpbmVyUmVmKSkge1xuICAgICAgICB2YWx1ZVR5cGUgPSBRdWVyeVZhbHVlVHlwZS5WaWV3Q29udGFpbmVyUmVmO1xuICAgICAgfSBlbHNlIGlmIChcbiAgICAgICAgICB0b2tlblJlZmVyZW5jZShtYXRjaC52YWx1ZSkgPT09XG4gICAgICAgICAgdGhpcy5yZWZsZWN0b3IucmVzb2x2ZUV4dGVybmFsUmVmZXJlbmNlKElkZW50aWZpZXJzLlRlbXBsYXRlUmVmKSkge1xuICAgICAgICB2YWx1ZVR5cGUgPSBRdWVyeVZhbHVlVHlwZS5UZW1wbGF0ZVJlZjtcbiAgICAgIH1cbiAgICAgIGlmICh2YWx1ZVR5cGUgIT0gbnVsbCkge1xuICAgICAgICBxdWVyeU1hdGNoRXhwcnMucHVzaChvLmxpdGVyYWxBcnIoW28ubGl0ZXJhbChtYXRjaC5xdWVyeUlkKSwgby5saXRlcmFsKHZhbHVlVHlwZSldKSk7XG4gICAgICB9XG4gICAgfSk7XG4gICAgYXN0LnJlZmVyZW5jZXMuZm9yRWFjaCgocmVmKSA9PiB7XG4gICAgICBsZXQgdmFsdWVUeXBlOiBRdWVyeVZhbHVlVHlwZSA9IHVuZGVmaW5lZCE7XG4gICAgICBpZiAoIXJlZi52YWx1ZSkge1xuICAgICAgICB2YWx1ZVR5cGUgPSBRdWVyeVZhbHVlVHlwZS5SZW5kZXJFbGVtZW50O1xuICAgICAgfSBlbHNlIGlmIChcbiAgICAgICAgICB0b2tlblJlZmVyZW5jZShyZWYudmFsdWUpID09PVxuICAgICAgICAgIHRoaXMucmVmbGVjdG9yLnJlc29sdmVFeHRlcm5hbFJlZmVyZW5jZShJZGVudGlmaWVycy5UZW1wbGF0ZVJlZikpIHtcbiAgICAgICAgdmFsdWVUeXBlID0gUXVlcnlWYWx1ZVR5cGUuVGVtcGxhdGVSZWY7XG4gICAgICB9XG4gICAgICBpZiAodmFsdWVUeXBlICE9IG51bGwpIHtcbiAgICAgICAgdGhpcy5yZWZOb2RlSW5kaWNlc1tyZWYubmFtZV0gPSBub2RlSW5kZXg7XG4gICAgICAgIHF1ZXJ5TWF0Y2hFeHBycy5wdXNoKG8ubGl0ZXJhbEFycihbby5saXRlcmFsKHJlZi5uYW1lKSwgby5saXRlcmFsKHZhbHVlVHlwZSldKSk7XG4gICAgICB9XG4gICAgfSk7XG4gICAgYXN0Lm91dHB1dHMuZm9yRWFjaCgob3V0cHV0QXN0KSA9PiB7XG4gICAgICBob3N0RXZlbnRzLnB1c2goe2NvbnRleHQ6IENPTVBfVkFSLCBldmVudEFzdDogb3V0cHV0QXN0LCBkaXJBc3Q6IG51bGwhfSk7XG4gICAgfSk7XG5cbiAgICByZXR1cm4ge1xuICAgICAgZmxhZ3MsXG4gICAgICB1c2VkRXZlbnRzOiBBcnJheS5mcm9tKHVzZWRFdmVudHMudmFsdWVzKCkpLFxuICAgICAgcXVlcnlNYXRjaGVzRXhwcjogcXVlcnlNYXRjaEV4cHJzLmxlbmd0aCA/IG8ubGl0ZXJhbEFycihxdWVyeU1hdGNoRXhwcnMpIDogby5OVUxMX0VYUFIsXG4gICAgICBob3N0QmluZGluZ3MsXG4gICAgICBob3N0RXZlbnRzOiBob3N0RXZlbnRzXG4gICAgfTtcbiAgfVxuXG4gIHByaXZhdGUgX3Zpc2l0RGlyZWN0aXZlKFxuICAgICAgcHJvdmlkZXJBc3Q6IFByb3ZpZGVyQXN0LCBkaXJBc3Q6IERpcmVjdGl2ZUFzdCwgcmVmczogUmVmZXJlbmNlQXN0W10sXG4gICAgICBxdWVyeU1hdGNoZXM6IFF1ZXJ5TWF0Y2hbXSwgdXNlZEV2ZW50czogTWFwPHN0cmluZywgYW55Pik6IHtcbiAgICBob3N0QmluZGluZ3M6XG4gICAgICAgIHtjb250ZXh0OiBvLkV4cHJlc3Npb24sIGlucHV0QXN0OiBCb3VuZEVsZW1lbnRQcm9wZXJ0eUFzdCwgZGlyQXN0OiBEaXJlY3RpdmVBc3R9W10sXG4gICAgaG9zdEV2ZW50czoge2NvbnRleHQ6IG8uRXhwcmVzc2lvbiwgZXZlbnRBc3Q6IEJvdW5kRXZlbnRBc3QsIGRpckFzdDogRGlyZWN0aXZlQXN0fVtdXG4gIH0ge1xuICAgIGNvbnN0IG5vZGVJbmRleCA9IHRoaXMubm9kZXMubGVuZ3RoO1xuICAgIC8vIHJlc2VydmUgdGhlIHNwYWNlIGluIHRoZSBub2RlRGVmcyBhcnJheSBzbyB3ZSBjYW4gYWRkIGNoaWxkcmVuXG4gICAgdGhpcy5ub2Rlcy5wdXNoKG51bGwhKTtcblxuICAgIGRpckFzdC5kaXJlY3RpdmUucXVlcmllcy5mb3JFYWNoKChxdWVyeSwgcXVlcnlJbmRleCkgPT4ge1xuICAgICAgY29uc3QgcXVlcnlJZCA9IGRpckFzdC5jb250ZW50UXVlcnlTdGFydElkICsgcXVlcnlJbmRleDtcbiAgICAgIGNvbnN0IGZsYWdzID0gTm9kZUZsYWdzLlR5cGVDb250ZW50UXVlcnkgfCBjYWxjU3RhdGljRHluYW1pY1F1ZXJ5RmxhZ3MocXVlcnkpO1xuICAgICAgY29uc3QgYmluZGluZ1R5cGUgPSBxdWVyeS5maXJzdCA/IFF1ZXJ5QmluZGluZ1R5cGUuRmlyc3QgOiBRdWVyeUJpbmRpbmdUeXBlLkFsbDtcbiAgICAgIHRoaXMubm9kZXMucHVzaCgoKSA9PiAoe1xuICAgICAgICAgICAgICAgICAgICAgICAgc291cmNlU3BhbjogZGlyQXN0LnNvdXJjZVNwYW4sXG4gICAgICAgICAgICAgICAgICAgICAgICBub2RlRmxhZ3M6IGZsYWdzLFxuICAgICAgICAgICAgICAgICAgICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLnF1ZXJ5RGVmKS5jYWxsRm4oW1xuICAgICAgICAgICAgICAgICAgICAgICAgICBvLmxpdGVyYWwoZmxhZ3MpLCBvLmxpdGVyYWwocXVlcnlJZCksXG4gICAgICAgICAgICAgICAgICAgICAgICAgIG5ldyBvLkxpdGVyYWxNYXBFeHByKFtuZXcgby5MaXRlcmFsTWFwRW50cnkoXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBxdWVyeS5wcm9wZXJ0eU5hbWUsIG8ubGl0ZXJhbChiaW5kaW5nVHlwZSksIGZhbHNlKV0pXG4gICAgICAgICAgICAgICAgICAgICAgICBdKSxcbiAgICAgICAgICAgICAgICAgICAgICB9KSk7XG4gICAgfSk7XG5cbiAgICAvLyBOb3RlOiB0aGUgb3BlcmF0aW9uIGJlbG93IG1pZ2h0IGFsc28gY3JlYXRlIG5ldyBub2RlRGVmcyxcbiAgICAvLyBidXQgd2UgZG9uJ3Qgd2FudCB0aGVtIHRvIGJlIGEgY2hpbGQgb2YgYSBkaXJlY3RpdmUsXG4gICAgLy8gYXMgdGhleSBtaWdodCBiZSBhIHByb3ZpZGVyL3BpcGUgb24gdGhlaXIgb3duLlxuICAgIC8vIEkuZS4gd2Ugb25seSBhbGxvdyBxdWVyaWVzIGFzIGNoaWxkcmVuIG9mIGRpcmVjdGl2ZXMgbm9kZXMuXG4gICAgY29uc3QgY2hpbGRDb3VudCA9IHRoaXMubm9kZXMubGVuZ3RoIC0gbm9kZUluZGV4IC0gMTtcblxuICAgIGxldCB7ZmxhZ3MsIHF1ZXJ5TWF0Y2hFeHBycywgcHJvdmlkZXJFeHByLCBkZXBzRXhwcn0gPVxuICAgICAgICB0aGlzLl92aXNpdFByb3ZpZGVyT3JEaXJlY3RpdmUocHJvdmlkZXJBc3QsIHF1ZXJ5TWF0Y2hlcyk7XG5cbiAgICByZWZzLmZvckVhY2goKHJlZikgPT4ge1xuICAgICAgaWYgKHJlZi52YWx1ZSAmJiB0b2tlblJlZmVyZW5jZShyZWYudmFsdWUpID09PSB0b2tlblJlZmVyZW5jZShwcm92aWRlckFzdC50b2tlbikpIHtcbiAgICAgICAgdGhpcy5yZWZOb2RlSW5kaWNlc1tyZWYubmFtZV0gPSBub2RlSW5kZXg7XG4gICAgICAgIHF1ZXJ5TWF0Y2hFeHBycy5wdXNoKFxuICAgICAgICAgICAgby5saXRlcmFsQXJyKFtvLmxpdGVyYWwocmVmLm5hbWUpLCBvLmxpdGVyYWwoUXVlcnlWYWx1ZVR5cGUuUHJvdmlkZXIpXSkpO1xuICAgICAgfVxuICAgIH0pO1xuXG4gICAgaWYgKGRpckFzdC5kaXJlY3RpdmUuaXNDb21wb25lbnQpIHtcbiAgICAgIGZsYWdzIHw9IE5vZGVGbGFncy5Db21wb25lbnQ7XG4gICAgfVxuXG4gICAgY29uc3QgaW5wdXREZWZzID0gZGlyQXN0LmlucHV0cy5tYXAoKGlucHV0QXN0LCBpbnB1dEluZGV4KSA9PiB7XG4gICAgICBjb25zdCBtYXBWYWx1ZSA9IG8ubGl0ZXJhbEFycihbby5saXRlcmFsKGlucHV0SW5kZXgpLCBvLmxpdGVyYWwoaW5wdXRBc3QuZGlyZWN0aXZlTmFtZSldKTtcbiAgICAgIC8vIE5vdGU6IGl0J3MgaW1wb3J0YW50IHRvIG5vdCBxdW90ZSB0aGUga2V5IHNvIHRoYXQgd2UgY2FuIGNhcHR1cmUgcmVuYW1lcyBieSBtaW5pZmllcnMhXG4gICAgICByZXR1cm4gbmV3IG8uTGl0ZXJhbE1hcEVudHJ5KGlucHV0QXN0LmRpcmVjdGl2ZU5hbWUsIG1hcFZhbHVlLCBmYWxzZSk7XG4gICAgfSk7XG5cbiAgICBjb25zdCBvdXRwdXREZWZzOiBvLkxpdGVyYWxNYXBFbnRyeVtdID0gW107XG4gICAgY29uc3QgZGlyTWV0YSA9IGRpckFzdC5kaXJlY3RpdmU7XG4gICAgT2JqZWN0LmtleXMoZGlyTWV0YS5vdXRwdXRzKS5mb3JFYWNoKChwcm9wTmFtZSkgPT4ge1xuICAgICAgY29uc3QgZXZlbnROYW1lID0gZGlyTWV0YS5vdXRwdXRzW3Byb3BOYW1lXTtcbiAgICAgIGlmICh1c2VkRXZlbnRzLmhhcyhldmVudE5hbWUpKSB7XG4gICAgICAgIC8vIE5vdGU6IGl0J3MgaW1wb3J0YW50IHRvIG5vdCBxdW90ZSB0aGUga2V5IHNvIHRoYXQgd2UgY2FuIGNhcHR1cmUgcmVuYW1lcyBieSBtaW5pZmllcnMhXG4gICAgICAgIG91dHB1dERlZnMucHVzaChuZXcgby5MaXRlcmFsTWFwRW50cnkocHJvcE5hbWUsIG8ubGl0ZXJhbChldmVudE5hbWUpLCBmYWxzZSkpO1xuICAgICAgfVxuICAgIH0pO1xuICAgIGxldCB1cGRhdGVEaXJlY3RpdmVFeHByZXNzaW9uczogVXBkYXRlRXhwcmVzc2lvbltdID0gW107XG4gICAgaWYgKGRpckFzdC5pbnB1dHMubGVuZ3RoIHx8IChmbGFncyAmIChOb2RlRmxhZ3MuRG9DaGVjayB8IE5vZGVGbGFncy5PbkluaXQpKSA+IDApIHtcbiAgICAgIHVwZGF0ZURpcmVjdGl2ZUV4cHJlc3Npb25zID1cbiAgICAgICAgICBkaXJBc3QuaW5wdXRzLm1hcCgoaW5wdXQsIGJpbmRpbmdJbmRleCkgPT4gdGhpcy5fcHJlcHJvY2Vzc1VwZGF0ZUV4cHJlc3Npb24oe1xuICAgICAgICAgICAgbm9kZUluZGV4LFxuICAgICAgICAgICAgYmluZGluZ0luZGV4LFxuICAgICAgICAgICAgc291cmNlU3BhbjogaW5wdXQuc291cmNlU3BhbixcbiAgICAgICAgICAgIGNvbnRleHQ6IENPTVBfVkFSLFxuICAgICAgICAgICAgdmFsdWU6IGlucHV0LnZhbHVlXG4gICAgICAgICAgfSkpO1xuICAgIH1cblxuICAgIGNvbnN0IGRpckNvbnRleHRFeHByID1cbiAgICAgICAgby5pbXBvcnRFeHByKElkZW50aWZpZXJzLm5vZGVWYWx1ZSkuY2FsbEZuKFtWSUVXX1ZBUiwgby5saXRlcmFsKG5vZGVJbmRleCldKTtcbiAgICBjb25zdCBob3N0QmluZGluZ3MgPSBkaXJBc3QuaG9zdFByb3BlcnRpZXMubWFwKChpbnB1dEFzdCkgPT4gKHtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29udGV4dDogZGlyQ29udGV4dEV4cHIsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRpckFzdCxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW5wdXRBc3QsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9KSk7XG4gICAgY29uc3QgaG9zdEV2ZW50cyA9IGRpckFzdC5ob3N0RXZlbnRzLm1hcCgoaG9zdEV2ZW50QXN0KSA9PiAoe1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250ZXh0OiBkaXJDb250ZXh0RXhwcixcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXZlbnRBc3Q6IGhvc3RFdmVudEFzdCxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGlyQXN0LFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfSkpO1xuXG4gICAgLy8gQ2hlY2sgaW5kZXggaXMgdGhlIHNhbWUgYXMgdGhlIG5vZGUgaW5kZXggZHVyaW5nIGNvbXBpbGF0aW9uXG4gICAgLy8gVGhleSBtaWdodCBvbmx5IGRpZmZlciBhdCBydW50aW1lXG4gICAgY29uc3QgY2hlY2tJbmRleCA9IG5vZGVJbmRleDtcblxuICAgIHRoaXMubm9kZXNbbm9kZUluZGV4XSA9ICgpID0+ICh7XG4gICAgICBzb3VyY2VTcGFuOiBkaXJBc3Quc291cmNlU3BhbixcbiAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVEaXJlY3RpdmUgfCBmbGFncyxcbiAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5kaXJlY3RpdmVEZWYpLmNhbGxGbihbXG4gICAgICAgIG8ubGl0ZXJhbChjaGVja0luZGV4KSxcbiAgICAgICAgby5saXRlcmFsKGZsYWdzKSxcbiAgICAgICAgcXVlcnlNYXRjaEV4cHJzLmxlbmd0aCA/IG8ubGl0ZXJhbEFycihxdWVyeU1hdGNoRXhwcnMpIDogby5OVUxMX0VYUFIsXG4gICAgICAgIG8ubGl0ZXJhbChjaGlsZENvdW50KSxcbiAgICAgICAgcHJvdmlkZXJFeHByLFxuICAgICAgICBkZXBzRXhwcixcbiAgICAgICAgaW5wdXREZWZzLmxlbmd0aCA/IG5ldyBvLkxpdGVyYWxNYXBFeHByKGlucHV0RGVmcykgOiBvLk5VTExfRVhQUixcbiAgICAgICAgb3V0cHV0RGVmcy5sZW5ndGggPyBuZXcgby5MaXRlcmFsTWFwRXhwcihvdXRwdXREZWZzKSA6IG8uTlVMTF9FWFBSLFxuICAgICAgXSksXG4gICAgICB1cGRhdGVEaXJlY3RpdmVzOiB1cGRhdGVEaXJlY3RpdmVFeHByZXNzaW9ucyxcbiAgICAgIGRpcmVjdGl2ZTogZGlyQXN0LmRpcmVjdGl2ZS50eXBlLFxuICAgIH0pO1xuXG4gICAgcmV0dXJuIHtob3N0QmluZGluZ3MsIGhvc3RFdmVudHN9O1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXRQcm92aWRlcihwcm92aWRlckFzdDogUHJvdmlkZXJBc3QsIHF1ZXJ5TWF0Y2hlczogUXVlcnlNYXRjaFtdKTogdm9pZCB7XG4gICAgdGhpcy5fYWRkUHJvdmlkZXJOb2RlKHRoaXMuX3Zpc2l0UHJvdmlkZXJPckRpcmVjdGl2ZShwcm92aWRlckFzdCwgcXVlcnlNYXRjaGVzKSk7XG4gIH1cblxuICBwcml2YXRlIF92aXNpdENvbXBvbmVudEZhY3RvcnlSZXNvbHZlclByb3ZpZGVyKGRpcmVjdGl2ZXM6IERpcmVjdGl2ZUFzdFtdKSB7XG4gICAgY29uc3QgY29tcG9uZW50RGlyTWV0YSA9IGRpcmVjdGl2ZXMuZmluZChkaXJBc3QgPT4gZGlyQXN0LmRpcmVjdGl2ZS5pc0NvbXBvbmVudCk7XG4gICAgaWYgKGNvbXBvbmVudERpck1ldGEgJiYgY29tcG9uZW50RGlyTWV0YS5kaXJlY3RpdmUuZW50cnlDb21wb25lbnRzLmxlbmd0aCkge1xuICAgICAgY29uc3Qge3Byb3ZpZGVyRXhwciwgZGVwc0V4cHIsIGZsYWdzLCB0b2tlbkV4cHJ9ID0gY29tcG9uZW50RmFjdG9yeVJlc29sdmVyUHJvdmlkZXJEZWYoXG4gICAgICAgICAgdGhpcy5yZWZsZWN0b3IsIHRoaXMub3V0cHV0Q3R4LCBOb2RlRmxhZ3MuUHJpdmF0ZVByb3ZpZGVyLFxuICAgICAgICAgIGNvbXBvbmVudERpck1ldGEuZGlyZWN0aXZlLmVudHJ5Q29tcG9uZW50cyk7XG4gICAgICB0aGlzLl9hZGRQcm92aWRlck5vZGUoe1xuICAgICAgICBwcm92aWRlckV4cHIsXG4gICAgICAgIGRlcHNFeHByLFxuICAgICAgICBmbGFncyxcbiAgICAgICAgdG9rZW5FeHByLFxuICAgICAgICBxdWVyeU1hdGNoRXhwcnM6IFtdLFxuICAgICAgICBzb3VyY2VTcGFuOiBjb21wb25lbnREaXJNZXRhLnNvdXJjZVNwYW5cbiAgICAgIH0pO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX2FkZFByb3ZpZGVyTm9kZShkYXRhOiB7XG4gICAgZmxhZ3M6IE5vZGVGbGFncyxcbiAgICBxdWVyeU1hdGNoRXhwcnM6IG8uRXhwcmVzc2lvbltdLFxuICAgIHByb3ZpZGVyRXhwcjogby5FeHByZXNzaW9uLFxuICAgIGRlcHNFeHByOiBvLkV4cHJlc3Npb24sXG4gICAgdG9rZW5FeHByOiBvLkV4cHJlc3Npb24sXG4gICAgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuXG4gIH0pIHtcbiAgICAvLyBwcm92aWRlckRlZihcbiAgICAvLyAgIGZsYWdzOiBOb2RlRmxhZ3MsIG1hdGNoZWRRdWVyaWVzOiBbc3RyaW5nLCBRdWVyeVZhbHVlVHlwZV1bXSwgdG9rZW46YW55LFxuICAgIC8vICAgdmFsdWU6IGFueSwgZGVwczogKFtEZXBGbGFncywgYW55XSB8IGFueSlbXSk6IE5vZGVEZWY7XG4gICAgdGhpcy5ub2Rlcy5wdXNoKFxuICAgICAgICAoKSA9PiAoe1xuICAgICAgICAgIHNvdXJjZVNwYW46IGRhdGEuc291cmNlU3BhbixcbiAgICAgICAgICBub2RlRmxhZ3M6IGRhdGEuZmxhZ3MsXG4gICAgICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLnByb3ZpZGVyRGVmKS5jYWxsRm4oW1xuICAgICAgICAgICAgby5saXRlcmFsKGRhdGEuZmxhZ3MpLFxuICAgICAgICAgICAgZGF0YS5xdWVyeU1hdGNoRXhwcnMubGVuZ3RoID8gby5saXRlcmFsQXJyKGRhdGEucXVlcnlNYXRjaEV4cHJzKSA6IG8uTlVMTF9FWFBSLFxuICAgICAgICAgICAgZGF0YS50b2tlbkV4cHIsIGRhdGEucHJvdmlkZXJFeHByLCBkYXRhLmRlcHNFeHByXG4gICAgICAgICAgXSlcbiAgICAgICAgfSkpO1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXRQcm92aWRlck9yRGlyZWN0aXZlKHByb3ZpZGVyQXN0OiBQcm92aWRlckFzdCwgcXVlcnlNYXRjaGVzOiBRdWVyeU1hdGNoW10pOiB7XG4gICAgZmxhZ3M6IE5vZGVGbGFncyxcbiAgICB0b2tlbkV4cHI6IG8uRXhwcmVzc2lvbixcbiAgICBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sXG4gICAgcXVlcnlNYXRjaEV4cHJzOiBvLkV4cHJlc3Npb25bXSxcbiAgICBwcm92aWRlckV4cHI6IG8uRXhwcmVzc2lvbixcbiAgICBkZXBzRXhwcjogby5FeHByZXNzaW9uXG4gIH0ge1xuICAgIGxldCBmbGFncyA9IE5vZGVGbGFncy5Ob25lO1xuICAgIGxldCBxdWVyeU1hdGNoRXhwcnM6IG8uRXhwcmVzc2lvbltdID0gW107XG5cbiAgICBxdWVyeU1hdGNoZXMuZm9yRWFjaCgobWF0Y2gpID0+IHtcbiAgICAgIGlmICh0b2tlblJlZmVyZW5jZShtYXRjaC52YWx1ZSkgPT09IHRva2VuUmVmZXJlbmNlKHByb3ZpZGVyQXN0LnRva2VuKSkge1xuICAgICAgICBxdWVyeU1hdGNoRXhwcnMucHVzaChcbiAgICAgICAgICAgIG8ubGl0ZXJhbEFycihbby5saXRlcmFsKG1hdGNoLnF1ZXJ5SWQpLCBvLmxpdGVyYWwoUXVlcnlWYWx1ZVR5cGUuUHJvdmlkZXIpXSkpO1xuICAgICAgfVxuICAgIH0pO1xuICAgIGNvbnN0IHtwcm92aWRlckV4cHIsIGRlcHNFeHByLCBmbGFnczogcHJvdmlkZXJGbGFncywgdG9rZW5FeHByfSA9XG4gICAgICAgIHByb3ZpZGVyRGVmKHRoaXMub3V0cHV0Q3R4LCBwcm92aWRlckFzdCk7XG4gICAgcmV0dXJuIHtcbiAgICAgIGZsYWdzOiBmbGFncyB8IHByb3ZpZGVyRmxhZ3MsXG4gICAgICBxdWVyeU1hdGNoRXhwcnMsXG4gICAgICBwcm92aWRlckV4cHIsXG4gICAgICBkZXBzRXhwcixcbiAgICAgIHRva2VuRXhwcixcbiAgICAgIHNvdXJjZVNwYW46IHByb3ZpZGVyQXN0LnNvdXJjZVNwYW5cbiAgICB9O1xuICB9XG5cbiAgZ2V0TG9jYWwobmFtZTogc3RyaW5nKTogby5FeHByZXNzaW9ufG51bGwge1xuICAgIGlmIChuYW1lID09IEV2ZW50SGFuZGxlclZhcnMuZXZlbnQubmFtZSkge1xuICAgICAgcmV0dXJuIEV2ZW50SGFuZGxlclZhcnMuZXZlbnQ7XG4gICAgfVxuICAgIGxldCBjdXJyVmlld0V4cHI6IG8uRXhwcmVzc2lvbiA9IFZJRVdfVkFSO1xuICAgIGZvciAobGV0IGN1cnJCdWlsZGVyOiBWaWV3QnVpbGRlcnxudWxsID0gdGhpczsgY3VyckJ1aWxkZXI7IGN1cnJCdWlsZGVyID0gY3VyckJ1aWxkZXIucGFyZW50LFxuICAgICAgICAgICAgICAgICAgICAgICAgICBjdXJyVmlld0V4cHIgPSBjdXJyVmlld0V4cHIucHJvcCgncGFyZW50JykuY2FzdChvLkRZTkFNSUNfVFlQRSkpIHtcbiAgICAgIC8vIGNoZWNrIHJlZmVyZW5jZXNcbiAgICAgIGNvbnN0IHJlZk5vZGVJbmRleCA9IGN1cnJCdWlsZGVyLnJlZk5vZGVJbmRpY2VzW25hbWVdO1xuICAgICAgaWYgKHJlZk5vZGVJbmRleCAhPSBudWxsKSB7XG4gICAgICAgIHJldHVybiBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMubm9kZVZhbHVlKS5jYWxsRm4oW2N1cnJWaWV3RXhwciwgby5saXRlcmFsKHJlZk5vZGVJbmRleCldKTtcbiAgICAgIH1cblxuICAgICAgLy8gY2hlY2sgdmFyaWFibGVzXG4gICAgICBjb25zdCB2YXJBc3QgPSBjdXJyQnVpbGRlci52YXJpYWJsZXMuZmluZCgodmFyQXN0KSA9PiB2YXJBc3QubmFtZSA9PT0gbmFtZSk7XG4gICAgICBpZiAodmFyQXN0KSB7XG4gICAgICAgIGNvbnN0IHZhclZhbHVlID0gdmFyQXN0LnZhbHVlIHx8IElNUExJQ0lUX1RFTVBMQVRFX1ZBUjtcbiAgICAgICAgcmV0dXJuIGN1cnJWaWV3RXhwci5wcm9wKCdjb250ZXh0JykucHJvcCh2YXJWYWx1ZSk7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgbm90aWZ5SW1wbGljaXRSZWNlaXZlclVzZSgpOiB2b2lkIHtcbiAgICAvLyBOb3QgbmVlZGVkIGluIFZpZXcgRW5naW5lIGFzIFZpZXcgRW5naW5lIHdhbGtzIHRocm91Z2ggdGhlIGdlbmVyYXRlZFxuICAgIC8vIGV4cHJlc3Npb25zIHRvIGZpZ3VyZSBvdXQgaWYgdGhlIGltcGxpY2l0IHJlY2VpdmVyIGlzIHVzZWQgYW5kIG5lZWRzXG4gICAgLy8gdG8gYmUgZ2VuZXJhdGVkIGFzIHBhcnQgb2YgdGhlIHByZS11cGRhdGUgc3RhdGVtZW50cy5cbiAgfVxuXG4gIHByaXZhdGUgX2NyZWF0ZUxpdGVyYWxBcnJheUNvbnZlcnRlcihzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIGFyZ0NvdW50OiBudW1iZXIpOlxuICAgICAgQnVpbHRpbkNvbnZlcnRlciB7XG4gICAgaWYgKGFyZ0NvdW50ID09PSAwKSB7XG4gICAgICBjb25zdCB2YWx1ZUV4cHIgPSBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMuRU1QVFlfQVJSQVkpO1xuICAgICAgcmV0dXJuICgpID0+IHZhbHVlRXhwcjtcbiAgICB9XG5cbiAgICBjb25zdCBjaGVja0luZGV4ID0gdGhpcy5ub2Rlcy5sZW5ndGg7XG5cbiAgICB0aGlzLm5vZGVzLnB1c2goKCkgPT4gKHtcbiAgICAgICAgICAgICAgICAgICAgICBzb3VyY2VTcGFuLFxuICAgICAgICAgICAgICAgICAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVQdXJlQXJyYXksXG4gICAgICAgICAgICAgICAgICAgICAgbm9kZURlZjogby5pbXBvcnRFeHByKElkZW50aWZpZXJzLnB1cmVBcnJheURlZikuY2FsbEZuKFtcbiAgICAgICAgICAgICAgICAgICAgICAgIG8ubGl0ZXJhbChjaGVja0luZGV4KSxcbiAgICAgICAgICAgICAgICAgICAgICAgIG8ubGl0ZXJhbChhcmdDb3VudCksXG4gICAgICAgICAgICAgICAgICAgICAgXSlcbiAgICAgICAgICAgICAgICAgICAgfSkpO1xuXG4gICAgcmV0dXJuIChhcmdzOiBvLkV4cHJlc3Npb25bXSkgPT4gY2FsbENoZWNrU3RtdChjaGVja0luZGV4LCBhcmdzKTtcbiAgfVxuXG4gIHByaXZhdGUgX2NyZWF0ZUxpdGVyYWxNYXBDb252ZXJ0ZXIoXG4gICAgICBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIGtleXM6IHtrZXk6IHN0cmluZywgcXVvdGVkOiBib29sZWFufVtdKTogQnVpbHRpbkNvbnZlcnRlciB7XG4gICAgaWYgKGtleXMubGVuZ3RoID09PSAwKSB7XG4gICAgICBjb25zdCB2YWx1ZUV4cHIgPSBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMuRU1QVFlfTUFQKTtcbiAgICAgIHJldHVybiAoKSA9PiB2YWx1ZUV4cHI7XG4gICAgfVxuXG4gICAgY29uc3QgbWFwID0gby5saXRlcmFsTWFwKGtleXMubWFwKChlLCBpKSA9PiAoey4uLmUsIHZhbHVlOiBvLmxpdGVyYWwoaSl9KSkpO1xuICAgIGNvbnN0IGNoZWNrSW5kZXggPSB0aGlzLm5vZGVzLmxlbmd0aDtcbiAgICB0aGlzLm5vZGVzLnB1c2goKCkgPT4gKHtcbiAgICAgICAgICAgICAgICAgICAgICBzb3VyY2VTcGFuLFxuICAgICAgICAgICAgICAgICAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVQdXJlT2JqZWN0LFxuICAgICAgICAgICAgICAgICAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5wdXJlT2JqZWN0RGVmKS5jYWxsRm4oW1xuICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsKGNoZWNrSW5kZXgpLFxuICAgICAgICAgICAgICAgICAgICAgICAgbWFwLFxuICAgICAgICAgICAgICAgICAgICAgIF0pXG4gICAgICAgICAgICAgICAgICAgIH0pKTtcblxuICAgIHJldHVybiAoYXJnczogby5FeHByZXNzaW9uW10pID0+IGNhbGxDaGVja1N0bXQoY2hlY2tJbmRleCwgYXJncyk7XG4gIH1cblxuICBwcml2YXRlIF9jcmVhdGVQaXBlQ29udmVydGVyKGV4cHJlc3Npb246IFVwZGF0ZUV4cHJlc3Npb24sIG5hbWU6IHN0cmluZywgYXJnQ291bnQ6IG51bWJlcik6XG4gICAgICBCdWlsdGluQ29udmVydGVyIHtcbiAgICBjb25zdCBwaXBlID0gdGhpcy51c2VkUGlwZXMuZmluZCgocGlwZVN1bW1hcnkpID0+IHBpcGVTdW1tYXJ5Lm5hbWUgPT09IG5hbWUpITtcbiAgICBpZiAocGlwZS5wdXJlKSB7XG4gICAgICBjb25zdCBjaGVja0luZGV4ID0gdGhpcy5ub2Rlcy5sZW5ndGg7XG4gICAgICB0aGlzLm5vZGVzLnB1c2goKCkgPT4gKHtcbiAgICAgICAgICAgICAgICAgICAgICAgIHNvdXJjZVNwYW46IGV4cHJlc3Npb24uc291cmNlU3BhbixcbiAgICAgICAgICAgICAgICAgICAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVQdXJlUGlwZSxcbiAgICAgICAgICAgICAgICAgICAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5wdXJlUGlwZURlZikuY2FsbEZuKFtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgby5saXRlcmFsKGNoZWNrSW5kZXgpLFxuICAgICAgICAgICAgICAgICAgICAgICAgICBvLmxpdGVyYWwoYXJnQ291bnQpLFxuICAgICAgICAgICAgICAgICAgICAgICAgXSlcbiAgICAgICAgICAgICAgICAgICAgICB9KSk7XG5cbiAgICAgIC8vIGZpbmQgdW5kZXJseWluZyBwaXBlIGluIHRoZSBjb21wb25lbnQgdmlld1xuICAgICAgbGV0IGNvbXBWaWV3RXhwcjogby5FeHByZXNzaW9uID0gVklFV19WQVI7XG4gICAgICBsZXQgY29tcEJ1aWxkZXI6IFZpZXdCdWlsZGVyID0gdGhpcztcbiAgICAgIHdoaWxlIChjb21wQnVpbGRlci5wYXJlbnQpIHtcbiAgICAgICAgY29tcEJ1aWxkZXIgPSBjb21wQnVpbGRlci5wYXJlbnQ7XG4gICAgICAgIGNvbXBWaWV3RXhwciA9IGNvbXBWaWV3RXhwci5wcm9wKCdwYXJlbnQnKS5jYXN0KG8uRFlOQU1JQ19UWVBFKTtcbiAgICAgIH1cbiAgICAgIGNvbnN0IHBpcGVOb2RlSW5kZXggPSBjb21wQnVpbGRlci5wdXJlUGlwZU5vZGVJbmRpY2VzW25hbWVdO1xuICAgICAgY29uc3QgcGlwZVZhbHVlRXhwcjogby5FeHByZXNzaW9uID1cbiAgICAgICAgICBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMubm9kZVZhbHVlKS5jYWxsRm4oW2NvbXBWaWV3RXhwciwgby5saXRlcmFsKHBpcGVOb2RlSW5kZXgpXSk7XG5cbiAgICAgIHJldHVybiAoYXJnczogby5FeHByZXNzaW9uW10pID0+IGNhbGxVbndyYXBWYWx1ZShcbiAgICAgICAgICAgICAgICAgZXhwcmVzc2lvbi5ub2RlSW5kZXgsIGV4cHJlc3Npb24uYmluZGluZ0luZGV4LFxuICAgICAgICAgICAgICAgICBjYWxsQ2hlY2tTdG10KGNoZWNrSW5kZXgsIFtwaXBlVmFsdWVFeHByXS5jb25jYXQoYXJncykpKTtcbiAgICB9IGVsc2Uge1xuICAgICAgY29uc3Qgbm9kZUluZGV4ID0gdGhpcy5fY3JlYXRlUGlwZShleHByZXNzaW9uLnNvdXJjZVNwYW4sIHBpcGUpO1xuICAgICAgY29uc3Qgbm9kZVZhbHVlRXhwciA9XG4gICAgICAgICAgby5pbXBvcnRFeHByKElkZW50aWZpZXJzLm5vZGVWYWx1ZSkuY2FsbEZuKFtWSUVXX1ZBUiwgby5saXRlcmFsKG5vZGVJbmRleCldKTtcblxuICAgICAgcmV0dXJuIChhcmdzOiBvLkV4cHJlc3Npb25bXSkgPT4gY2FsbFVud3JhcFZhbHVlKFxuICAgICAgICAgICAgICAgICBleHByZXNzaW9uLm5vZGVJbmRleCwgZXhwcmVzc2lvbi5iaW5kaW5nSW5kZXgsXG4gICAgICAgICAgICAgICAgIG5vZGVWYWx1ZUV4cHIuY2FsbE1ldGhvZCgndHJhbnNmb3JtJywgYXJncykpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX2NyZWF0ZVBpcGUoc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFufG51bGwsIHBpcGU6IENvbXBpbGVQaXBlU3VtbWFyeSk6IG51bWJlciB7XG4gICAgY29uc3Qgbm9kZUluZGV4ID0gdGhpcy5ub2Rlcy5sZW5ndGg7XG4gICAgbGV0IGZsYWdzID0gTm9kZUZsYWdzLk5vbmU7XG4gICAgcGlwZS50eXBlLmxpZmVjeWNsZUhvb2tzLmZvckVhY2goKGxpZmVjeWNsZUhvb2spID0+IHtcbiAgICAgIC8vIGZvciBwaXBlcywgd2Ugb25seSBzdXBwb3J0IG5nT25EZXN0cm95XG4gICAgICBpZiAobGlmZWN5Y2xlSG9vayA9PT0gTGlmZWN5Y2xlSG9va3MuT25EZXN0cm95KSB7XG4gICAgICAgIGZsYWdzIHw9IGxpZmVjeWNsZUhvb2tUb05vZGVGbGFnKGxpZmVjeWNsZUhvb2spO1xuICAgICAgfVxuICAgIH0pO1xuXG4gICAgY29uc3QgZGVwRXhwcnMgPSBwaXBlLnR5cGUuZGlEZXBzLm1hcCgoZGlEZXApID0+IGRlcERlZih0aGlzLm91dHB1dEN0eCwgZGlEZXApKTtcbiAgICAvLyBmdW5jdGlvbiBwaXBlRGVmKFxuICAgIC8vICAgZmxhZ3M6IE5vZGVGbGFncywgY3RvcjogYW55LCBkZXBzOiAoW0RlcEZsYWdzLCBhbnldIHwgYW55KVtdKTogTm9kZURlZlxuICAgIHRoaXMubm9kZXMucHVzaChcbiAgICAgICAgKCkgPT4gKHtcbiAgICAgICAgICBzb3VyY2VTcGFuLFxuICAgICAgICAgIG5vZGVGbGFnczogTm9kZUZsYWdzLlR5cGVQaXBlLFxuICAgICAgICAgIG5vZGVEZWY6IG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5waXBlRGVmKS5jYWxsRm4oW1xuICAgICAgICAgICAgby5saXRlcmFsKGZsYWdzKSwgdGhpcy5vdXRwdXRDdHguaW1wb3J0RXhwcihwaXBlLnR5cGUucmVmZXJlbmNlKSwgby5saXRlcmFsQXJyKGRlcEV4cHJzKVxuICAgICAgICAgIF0pXG4gICAgICAgIH0pKTtcbiAgICByZXR1cm4gbm9kZUluZGV4O1xuICB9XG5cbiAgLyoqXG4gICAqIEZvciB0aGUgQVNUIGluIGBVcGRhdGVFeHByZXNzaW9uLnZhbHVlYDpcbiAgICogLSBjcmVhdGUgbm9kZXMgZm9yIHBpcGVzLCBsaXRlcmFsIGFycmF5cyBhbmQsIGxpdGVyYWwgbWFwcyxcbiAgICogLSB1cGRhdGUgdGhlIEFTVCB0byByZXBsYWNlIHBpcGVzLCBsaXRlcmFsIGFycmF5cyBhbmQsIGxpdGVyYWwgbWFwcyB3aXRoIGNhbGxzIHRvIGNoZWNrIGZuLlxuICAgKlxuICAgKiBXQVJOSU5HOiBUaGlzIG1pZ2h0IGNyZWF0ZSBuZXcgbm9kZURlZnMgKGZvciBwaXBlcyBhbmQgbGl0ZXJhbCBhcnJheXMgYW5kIGxpdGVyYWwgbWFwcykhXG4gICAqL1xuICBwcml2YXRlIF9wcmVwcm9jZXNzVXBkYXRlRXhwcmVzc2lvbihleHByZXNzaW9uOiBVcGRhdGVFeHByZXNzaW9uKTogVXBkYXRlRXhwcmVzc2lvbiB7XG4gICAgcmV0dXJuIHtcbiAgICAgIG5vZGVJbmRleDogZXhwcmVzc2lvbi5ub2RlSW5kZXgsXG4gICAgICBiaW5kaW5nSW5kZXg6IGV4cHJlc3Npb24uYmluZGluZ0luZGV4LFxuICAgICAgc291cmNlU3BhbjogZXhwcmVzc2lvbi5zb3VyY2VTcGFuLFxuICAgICAgY29udGV4dDogZXhwcmVzc2lvbi5jb250ZXh0LFxuICAgICAgdmFsdWU6IGNvbnZlcnRQcm9wZXJ0eUJpbmRpbmdCdWlsdGlucyhcbiAgICAgICAgICB7XG4gICAgICAgICAgICBjcmVhdGVMaXRlcmFsQXJyYXlDb252ZXJ0ZXI6IChhcmdDb3VudDogbnVtYmVyKSA9PlxuICAgICAgICAgICAgICAgIHRoaXMuX2NyZWF0ZUxpdGVyYWxBcnJheUNvbnZlcnRlcihleHByZXNzaW9uLnNvdXJjZVNwYW4sIGFyZ0NvdW50KSxcbiAgICAgICAgICAgIGNyZWF0ZUxpdGVyYWxNYXBDb252ZXJ0ZXI6IChrZXlzOiB7a2V5OiBzdHJpbmcsIHF1b3RlZDogYm9vbGVhbn1bXSkgPT5cbiAgICAgICAgICAgICAgICB0aGlzLl9jcmVhdGVMaXRlcmFsTWFwQ29udmVydGVyKGV4cHJlc3Npb24uc291cmNlU3Bhbiwga2V5cyksXG4gICAgICAgICAgICBjcmVhdGVQaXBlQ29udmVydGVyOiAobmFtZTogc3RyaW5nLCBhcmdDb3VudDogbnVtYmVyKSA9PlxuICAgICAgICAgICAgICAgIHRoaXMuX2NyZWF0ZVBpcGVDb252ZXJ0ZXIoZXhwcmVzc2lvbiwgbmFtZSwgYXJnQ291bnQpXG4gICAgICAgICAgfSxcbiAgICAgICAgICBleHByZXNzaW9uLnZhbHVlKVxuICAgIH07XG4gIH1cblxuICBwcml2YXRlIF9jcmVhdGVOb2RlRXhwcmVzc2lvbnMoKToge1xuICAgIHVwZGF0ZVJlbmRlcmVyU3RtdHM6IG8uU3RhdGVtZW50W10sXG4gICAgdXBkYXRlRGlyZWN0aXZlc1N0bXRzOiBvLlN0YXRlbWVudFtdLFxuICAgIG5vZGVEZWZFeHByczogby5FeHByZXNzaW9uW11cbiAgfSB7XG4gICAgY29uc3Qgc2VsZiA9IHRoaXM7XG4gICAgbGV0IHVwZGF0ZUJpbmRpbmdDb3VudCA9IDA7XG4gICAgY29uc3QgdXBkYXRlUmVuZGVyZXJTdG10czogby5TdGF0ZW1lbnRbXSA9IFtdO1xuICAgIGNvbnN0IHVwZGF0ZURpcmVjdGl2ZXNTdG10czogby5TdGF0ZW1lbnRbXSA9IFtdO1xuICAgIGNvbnN0IG5vZGVEZWZFeHBycyA9IHRoaXMubm9kZXMubWFwKChmYWN0b3J5LCBub2RlSW5kZXgpID0+IHtcbiAgICAgIGNvbnN0IHtub2RlRGVmLCBub2RlRmxhZ3MsIHVwZGF0ZURpcmVjdGl2ZXMsIHVwZGF0ZVJlbmRlcmVyLCBzb3VyY2VTcGFufSA9IGZhY3RvcnkoKTtcbiAgICAgIGlmICh1cGRhdGVSZW5kZXJlcikge1xuICAgICAgICB1cGRhdGVSZW5kZXJlclN0bXRzLnB1c2goXG4gICAgICAgICAgICAuLi5jcmVhdGVVcGRhdGVTdGF0ZW1lbnRzKG5vZGVJbmRleCwgc291cmNlU3BhbiwgdXBkYXRlUmVuZGVyZXIsIGZhbHNlKSk7XG4gICAgICB9XG4gICAgICBpZiAodXBkYXRlRGlyZWN0aXZlcykge1xuICAgICAgICB1cGRhdGVEaXJlY3RpdmVzU3RtdHMucHVzaCguLi5jcmVhdGVVcGRhdGVTdGF0ZW1lbnRzKFxuICAgICAgICAgICAgbm9kZUluZGV4LCBzb3VyY2VTcGFuLCB1cGRhdGVEaXJlY3RpdmVzLFxuICAgICAgICAgICAgKG5vZGVGbGFncyAmIChOb2RlRmxhZ3MuRG9DaGVjayB8IE5vZGVGbGFncy5PbkluaXQpKSA+IDApKTtcbiAgICAgIH1cbiAgICAgIC8vIFdlIHVzZSBhIGNvbW1hIGV4cHJlc3Npb24gdG8gY2FsbCB0aGUgbG9nIGZ1bmN0aW9uIGJlZm9yZVxuICAgICAgLy8gdGhlIG5vZGVEZWYgZnVuY3Rpb24sIGJ1dCBzdGlsbCB1c2UgdGhlIHJlc3VsdCBvZiB0aGUgbm9kZURlZiBmdW5jdGlvblxuICAgICAgLy8gYXMgdGhlIHZhbHVlLlxuICAgICAgLy8gTm90ZTogV2Ugb25seSBhZGQgdGhlIGxvZ2dlciB0byBlbGVtZW50cyAvIHRleHQgbm9kZXMsXG4gICAgICAvLyBzbyB3ZSBkb24ndCBnZW5lcmF0ZSB0b28gbXVjaCBjb2RlLlxuICAgICAgY29uc3QgbG9nV2l0aE5vZGVEZWYgPSBub2RlRmxhZ3MgJiBOb2RlRmxhZ3MuQ2F0UmVuZGVyTm9kZSA/XG4gICAgICAgICAgbmV3IG8uQ29tbWFFeHByKFtMT0dfVkFSLmNhbGxGbihbXSkuY2FsbEZuKFtdKSwgbm9kZURlZl0pIDpcbiAgICAgICAgICBub2RlRGVmO1xuICAgICAgcmV0dXJuIG8uYXBwbHlTb3VyY2VTcGFuVG9FeHByZXNzaW9uSWZOZWVkZWQobG9nV2l0aE5vZGVEZWYsIHNvdXJjZVNwYW4pO1xuICAgIH0pO1xuICAgIHJldHVybiB7dXBkYXRlUmVuZGVyZXJTdG10cywgdXBkYXRlRGlyZWN0aXZlc1N0bXRzLCBub2RlRGVmRXhwcnN9O1xuXG4gICAgZnVuY3Rpb24gY3JlYXRlVXBkYXRlU3RhdGVtZW50cyhcbiAgICAgICAgbm9kZUluZGV4OiBudW1iZXIsIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbnxudWxsLCBleHByZXNzaW9uczogVXBkYXRlRXhwcmVzc2lvbltdLFxuICAgICAgICBhbGxvd0VtcHR5RXhwcnM6IGJvb2xlYW4pOiBvLlN0YXRlbWVudFtdIHtcbiAgICAgIGNvbnN0IHVwZGF0ZVN0bXRzOiBvLlN0YXRlbWVudFtdID0gW107XG4gICAgICBjb25zdCBleHBycyA9IGV4cHJlc3Npb25zLm1hcCgoe3NvdXJjZVNwYW4sIGNvbnRleHQsIHZhbHVlfSkgPT4ge1xuICAgICAgICBjb25zdCBiaW5kaW5nSWQgPSBgJHt1cGRhdGVCaW5kaW5nQ291bnQrK31gO1xuICAgICAgICBjb25zdCBuYW1lUmVzb2x2ZXIgPSBjb250ZXh0ID09PSBDT01QX1ZBUiA/IHNlbGYgOiBudWxsO1xuICAgICAgICBjb25zdCB7c3RtdHMsIGN1cnJWYWxFeHByfSA9XG4gICAgICAgICAgICBjb252ZXJ0UHJvcGVydHlCaW5kaW5nKG5hbWVSZXNvbHZlciwgY29udGV4dCwgdmFsdWUsIGJpbmRpbmdJZCwgQmluZGluZ0Zvcm0uR2VuZXJhbCk7XG4gICAgICAgIHVwZGF0ZVN0bXRzLnB1c2goLi4uc3RtdHMubWFwKFxuICAgICAgICAgICAgKHN0bXQ6IG8uU3RhdGVtZW50KSA9PiBvLmFwcGx5U291cmNlU3BhblRvU3RhdGVtZW50SWZOZWVkZWQoc3RtdCwgc291cmNlU3BhbikpKTtcbiAgICAgICAgcmV0dXJuIG8uYXBwbHlTb3VyY2VTcGFuVG9FeHByZXNzaW9uSWZOZWVkZWQoY3VyclZhbEV4cHIsIHNvdXJjZVNwYW4pO1xuICAgICAgfSk7XG4gICAgICBpZiAoZXhwcmVzc2lvbnMubGVuZ3RoIHx8IGFsbG93RW1wdHlFeHBycykge1xuICAgICAgICB1cGRhdGVTdG10cy5wdXNoKG8uYXBwbHlTb3VyY2VTcGFuVG9TdGF0ZW1lbnRJZk5lZWRlZChcbiAgICAgICAgICAgIGNhbGxDaGVja1N0bXQobm9kZUluZGV4LCBleHBycykudG9TdG10KCksIHNvdXJjZVNwYW4pKTtcbiAgICAgIH1cbiAgICAgIHJldHVybiB1cGRhdGVTdG10cztcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIF9jcmVhdGVFbGVtZW50SGFuZGxlRXZlbnRGbihcbiAgICAgIG5vZGVJbmRleDogbnVtYmVyLFxuICAgICAgaGFuZGxlcnM6IHtjb250ZXh0OiBvLkV4cHJlc3Npb24sIGV2ZW50QXN0OiBCb3VuZEV2ZW50QXN0LCBkaXJBc3Q6IERpcmVjdGl2ZUFzdH1bXSkge1xuICAgIGNvbnN0IGhhbmRsZUV2ZW50U3RtdHM6IG8uU3RhdGVtZW50W10gPSBbXTtcbiAgICBsZXQgaGFuZGxlRXZlbnRCaW5kaW5nQ291bnQgPSAwO1xuICAgIGhhbmRsZXJzLmZvckVhY2goKHtjb250ZXh0LCBldmVudEFzdCwgZGlyQXN0fSkgPT4ge1xuICAgICAgY29uc3QgYmluZGluZ0lkID0gYCR7aGFuZGxlRXZlbnRCaW5kaW5nQ291bnQrK31gO1xuICAgICAgY29uc3QgbmFtZVJlc29sdmVyID0gY29udGV4dCA9PT0gQ09NUF9WQVIgPyB0aGlzIDogbnVsbDtcbiAgICAgIGNvbnN0IHtzdG10cywgYWxsb3dEZWZhdWx0fSA9XG4gICAgICAgICAgY29udmVydEFjdGlvbkJpbmRpbmcobmFtZVJlc29sdmVyLCBjb250ZXh0LCBldmVudEFzdC5oYW5kbGVyLCBiaW5kaW5nSWQpO1xuICAgICAgY29uc3QgdHJ1ZVN0bXRzID0gc3RtdHM7XG4gICAgICBpZiAoYWxsb3dEZWZhdWx0KSB7XG4gICAgICAgIHRydWVTdG10cy5wdXNoKEFMTE9XX0RFRkFVTFRfVkFSLnNldChhbGxvd0RlZmF1bHQuYW5kKEFMTE9XX0RFRkFVTFRfVkFSKSkudG9TdG10KCkpO1xuICAgICAgfVxuICAgICAgY29uc3Qge3RhcmdldDogZXZlbnRUYXJnZXQsIG5hbWU6IGV2ZW50TmFtZX0gPSBlbGVtZW50RXZlbnROYW1lQW5kVGFyZ2V0KGV2ZW50QXN0LCBkaXJBc3QpO1xuICAgICAgY29uc3QgZnVsbEV2ZW50TmFtZSA9IGVsZW1lbnRFdmVudEZ1bGxOYW1lKGV2ZW50VGFyZ2V0LCBldmVudE5hbWUpO1xuICAgICAgaGFuZGxlRXZlbnRTdG10cy5wdXNoKG8uYXBwbHlTb3VyY2VTcGFuVG9TdGF0ZW1lbnRJZk5lZWRlZChcbiAgICAgICAgICBuZXcgby5JZlN0bXQoby5saXRlcmFsKGZ1bGxFdmVudE5hbWUpLmlkZW50aWNhbChFVkVOVF9OQU1FX1ZBUiksIHRydWVTdG10cyksXG4gICAgICAgICAgZXZlbnRBc3Quc291cmNlU3BhbikpO1xuICAgIH0pO1xuICAgIGxldCBoYW5kbGVFdmVudEZuOiBvLkV4cHJlc3Npb247XG4gICAgaWYgKGhhbmRsZUV2ZW50U3RtdHMubGVuZ3RoID4gMCkge1xuICAgICAgY29uc3QgcHJlU3RtdHM6IG8uU3RhdGVtZW50W10gPVxuICAgICAgICAgIFtBTExPV19ERUZBVUxUX1ZBUi5zZXQoby5saXRlcmFsKHRydWUpKS50b0RlY2xTdG10KG8uQk9PTF9UWVBFKV07XG4gICAgICBpZiAoIXRoaXMuY29tcG9uZW50LmlzSG9zdCAmJiBvLmZpbmRSZWFkVmFyTmFtZXMoaGFuZGxlRXZlbnRTdG10cykuaGFzKENPTVBfVkFSLm5hbWUhKSkge1xuICAgICAgICBwcmVTdG10cy5wdXNoKENPTVBfVkFSLnNldChWSUVXX1ZBUi5wcm9wKCdjb21wb25lbnQnKSkudG9EZWNsU3RtdCh0aGlzLmNvbXBUeXBlKSk7XG4gICAgICB9XG4gICAgICBoYW5kbGVFdmVudEZuID0gby5mbihcbiAgICAgICAgICBbXG4gICAgICAgICAgICBuZXcgby5GblBhcmFtKFZJRVdfVkFSLm5hbWUhLCBvLklORkVSUkVEX1RZUEUpLFxuICAgICAgICAgICAgbmV3IG8uRm5QYXJhbShFVkVOVF9OQU1FX1ZBUi5uYW1lISwgby5JTkZFUlJFRF9UWVBFKSxcbiAgICAgICAgICAgIG5ldyBvLkZuUGFyYW0oRXZlbnRIYW5kbGVyVmFycy5ldmVudC5uYW1lISwgby5JTkZFUlJFRF9UWVBFKVxuICAgICAgICAgIF0sXG4gICAgICAgICAgWy4uLnByZVN0bXRzLCAuLi5oYW5kbGVFdmVudFN0bXRzLCBuZXcgby5SZXR1cm5TdGF0ZW1lbnQoQUxMT1dfREVGQVVMVF9WQVIpXSxcbiAgICAgICAgICBvLklORkVSUkVEX1RZUEUpO1xuICAgIH0gZWxzZSB7XG4gICAgICBoYW5kbGVFdmVudEZuID0gby5OVUxMX0VYUFI7XG4gICAgfVxuICAgIHJldHVybiBoYW5kbGVFdmVudEZuO1xuICB9XG5cbiAgdmlzaXREaXJlY3RpdmUoYXN0OiBEaXJlY3RpdmVBc3QsIGNvbnRleHQ6IHt1c2VkRXZlbnRzOiBTZXQ8c3RyaW5nPn0pOiBhbnkge31cbiAgdmlzaXREaXJlY3RpdmVQcm9wZXJ0eShhc3Q6IEJvdW5kRGlyZWN0aXZlUHJvcGVydHlBc3QsIGNvbnRleHQ6IGFueSk6IGFueSB7fVxuICB2aXNpdFJlZmVyZW5jZShhc3Q6IFJlZmVyZW5jZUFzdCwgY29udGV4dDogYW55KTogYW55IHt9XG4gIHZpc2l0VmFyaWFibGUoYXN0OiBWYXJpYWJsZUFzdCwgY29udGV4dDogYW55KTogYW55IHt9XG4gIHZpc2l0RXZlbnQoYXN0OiBCb3VuZEV2ZW50QXN0LCBjb250ZXh0OiBhbnkpOiBhbnkge31cbiAgdmlzaXRFbGVtZW50UHJvcGVydHkoYXN0OiBCb3VuZEVsZW1lbnRQcm9wZXJ0eUFzdCwgY29udGV4dDogYW55KTogYW55IHt9XG4gIHZpc2l0QXR0cihhc3Q6IEF0dHJBc3QsIGNvbnRleHQ6IGFueSk6IGFueSB7fVxufVxuXG5mdW5jdGlvbiBuZWVkc0FkZGl0aW9uYWxSb290Tm9kZShhc3ROb2RlczogVGVtcGxhdGVBc3RbXSk6IGJvb2xlYW4ge1xuICBjb25zdCBsYXN0QXN0Tm9kZSA9IGFzdE5vZGVzW2FzdE5vZGVzLmxlbmd0aCAtIDFdO1xuICBpZiAobGFzdEFzdE5vZGUgaW5zdGFuY2VvZiBFbWJlZGRlZFRlbXBsYXRlQXN0KSB7XG4gICAgcmV0dXJuIGxhc3RBc3ROb2RlLmhhc1ZpZXdDb250YWluZXI7XG4gIH1cblxuICBpZiAobGFzdEFzdE5vZGUgaW5zdGFuY2VvZiBFbGVtZW50QXN0KSB7XG4gICAgaWYgKGlzTmdDb250YWluZXIobGFzdEFzdE5vZGUubmFtZSkgJiYgbGFzdEFzdE5vZGUuY2hpbGRyZW4ubGVuZ3RoKSB7XG4gICAgICByZXR1cm4gbmVlZHNBZGRpdGlvbmFsUm9vdE5vZGUobGFzdEFzdE5vZGUuY2hpbGRyZW4pO1xuICAgIH1cbiAgICByZXR1cm4gbGFzdEFzdE5vZGUuaGFzVmlld0NvbnRhaW5lcjtcbiAgfVxuXG4gIHJldHVybiBsYXN0QXN0Tm9kZSBpbnN0YW5jZW9mIE5nQ29udGVudEFzdDtcbn1cblxuXG5mdW5jdGlvbiBlbGVtZW50QmluZGluZ0RlZihpbnB1dEFzdDogQm91bmRFbGVtZW50UHJvcGVydHlBc3QsIGRpckFzdDogRGlyZWN0aXZlQXN0KTogby5FeHByZXNzaW9uIHtcbiAgY29uc3QgaW5wdXRUeXBlID0gaW5wdXRBc3QudHlwZTtcbiAgc3dpdGNoIChpbnB1dFR5cGUpIHtcbiAgICBjYXNlIFByb3BlcnR5QmluZGluZ1R5cGUuQXR0cmlidXRlOlxuICAgICAgcmV0dXJuIG8ubGl0ZXJhbEFycihbXG4gICAgICAgIG8ubGl0ZXJhbChCaW5kaW5nRmxhZ3MuVHlwZUVsZW1lbnRBdHRyaWJ1dGUpLCBvLmxpdGVyYWwoaW5wdXRBc3QubmFtZSksXG4gICAgICAgIG8ubGl0ZXJhbChpbnB1dEFzdC5zZWN1cml0eUNvbnRleHQpXG4gICAgICBdKTtcbiAgICBjYXNlIFByb3BlcnR5QmluZGluZ1R5cGUuUHJvcGVydHk6XG4gICAgICByZXR1cm4gby5saXRlcmFsQXJyKFtcbiAgICAgICAgby5saXRlcmFsKEJpbmRpbmdGbGFncy5UeXBlUHJvcGVydHkpLCBvLmxpdGVyYWwoaW5wdXRBc3QubmFtZSksXG4gICAgICAgIG8ubGl0ZXJhbChpbnB1dEFzdC5zZWN1cml0eUNvbnRleHQpXG4gICAgICBdKTtcbiAgICBjYXNlIFByb3BlcnR5QmluZGluZ1R5cGUuQW5pbWF0aW9uOlxuICAgICAgY29uc3QgYmluZGluZ1R5cGUgPSBCaW5kaW5nRmxhZ3MuVHlwZVByb3BlcnR5IHxcbiAgICAgICAgICAoZGlyQXN0ICYmIGRpckFzdC5kaXJlY3RpdmUuaXNDb21wb25lbnQgPyBCaW5kaW5nRmxhZ3MuU3ludGhldGljSG9zdFByb3BlcnR5IDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBCaW5kaW5nRmxhZ3MuU3ludGhldGljUHJvcGVydHkpO1xuICAgICAgcmV0dXJuIG8ubGl0ZXJhbEFycihbXG4gICAgICAgIG8ubGl0ZXJhbChiaW5kaW5nVHlwZSksIG8ubGl0ZXJhbCgnQCcgKyBpbnB1dEFzdC5uYW1lKSwgby5saXRlcmFsKGlucHV0QXN0LnNlY3VyaXR5Q29udGV4dClcbiAgICAgIF0pO1xuICAgIGNhc2UgUHJvcGVydHlCaW5kaW5nVHlwZS5DbGFzczpcbiAgICAgIHJldHVybiBvLmxpdGVyYWxBcnIoXG4gICAgICAgICAgW28ubGl0ZXJhbChCaW5kaW5nRmxhZ3MuVHlwZUVsZW1lbnRDbGFzcyksIG8ubGl0ZXJhbChpbnB1dEFzdC5uYW1lKSwgby5OVUxMX0VYUFJdKTtcbiAgICBjYXNlIFByb3BlcnR5QmluZGluZ1R5cGUuU3R5bGU6XG4gICAgICByZXR1cm4gby5saXRlcmFsQXJyKFtcbiAgICAgICAgby5saXRlcmFsKEJpbmRpbmdGbGFncy5UeXBlRWxlbWVudFN0eWxlKSwgby5saXRlcmFsKGlucHV0QXN0Lm5hbWUpLCBvLmxpdGVyYWwoaW5wdXRBc3QudW5pdClcbiAgICAgIF0pO1xuICAgIGRlZmF1bHQ6XG4gICAgICAvLyBUaGlzIGRlZmF1bHQgY2FzZSBpcyBub3QgbmVlZGVkIGJ5IFR5cGVTY3JpcHQgY29tcGlsZXIsIGFzIHRoZSBzd2l0Y2ggaXMgZXhoYXVzdGl2ZS5cbiAgICAgIC8vIEhvd2V2ZXIgQ2xvc3VyZSBDb21waWxlciBkb2VzIG5vdCB1bmRlcnN0YW5kIHRoYXQgYW5kIHJlcG9ydHMgYW4gZXJyb3IgaW4gdHlwZWQgbW9kZS5cbiAgICAgIC8vIFRoZSBgdGhyb3cgbmV3IEVycm9yYCBiZWxvdyB3b3JrcyBhcm91bmQgdGhlIHByb2JsZW0sIGFuZCB0aGUgdW5leHBlY3RlZDogbmV2ZXIgdmFyaWFibGVcbiAgICAgIC8vIG1ha2VzIHN1cmUgdHNjIHN0aWxsIGNoZWNrcyB0aGlzIGNvZGUgaXMgdW5yZWFjaGFibGUuXG4gICAgICBjb25zdCB1bmV4cGVjdGVkOiBuZXZlciA9IGlucHV0VHlwZTtcbiAgICAgIHRocm93IG5ldyBFcnJvcihgdW5leHBlY3RlZCAke3VuZXhwZWN0ZWR9YCk7XG4gIH1cbn1cblxuXG5mdW5jdGlvbiBmaXhlZEF0dHJzRGVmKGVsZW1lbnRBc3Q6IEVsZW1lbnRBc3QpOiBvLkV4cHJlc3Npb24ge1xuICBjb25zdCBtYXBSZXN1bHQ6IHtba2V5OiBzdHJpbmddOiBzdHJpbmd9ID0gT2JqZWN0LmNyZWF0ZShudWxsKTtcbiAgZWxlbWVudEFzdC5hdHRycy5mb3JFYWNoKGF0dHJBc3QgPT4ge1xuICAgIG1hcFJlc3VsdFthdHRyQXN0Lm5hbWVdID0gYXR0ckFzdC52YWx1ZTtcbiAgfSk7XG4gIGVsZW1lbnRBc3QuZGlyZWN0aXZlcy5mb3JFYWNoKGRpckFzdCA9PiB7XG4gICAgT2JqZWN0LmtleXMoZGlyQXN0LmRpcmVjdGl2ZS5ob3N0QXR0cmlidXRlcykuZm9yRWFjaChuYW1lID0+IHtcbiAgICAgIGNvbnN0IHZhbHVlID0gZGlyQXN0LmRpcmVjdGl2ZS5ob3N0QXR0cmlidXRlc1tuYW1lXTtcbiAgICAgIGNvbnN0IHByZXZWYWx1ZSA9IG1hcFJlc3VsdFtuYW1lXTtcbiAgICAgIG1hcFJlc3VsdFtuYW1lXSA9IHByZXZWYWx1ZSAhPSBudWxsID8gbWVyZ2VBdHRyaWJ1dGVWYWx1ZShuYW1lLCBwcmV2VmFsdWUsIHZhbHVlKSA6IHZhbHVlO1xuICAgIH0pO1xuICB9KTtcbiAgLy8gTm90ZTogV2UgbmVlZCB0byBzb3J0IHRvIGdldCBhIGRlZmluZWQgb3V0cHV0IG9yZGVyXG4gIC8vIGZvciB0ZXN0cyBhbmQgZm9yIGNhY2hpbmcgZ2VuZXJhdGVkIGFydGlmYWN0cy4uLlxuICByZXR1cm4gby5saXRlcmFsQXJyKE9iamVjdC5rZXlzKG1hcFJlc3VsdCkuc29ydCgpLm1hcChcbiAgICAgIChhdHRyTmFtZSkgPT4gby5saXRlcmFsQXJyKFtvLmxpdGVyYWwoYXR0ck5hbWUpLCBvLmxpdGVyYWwobWFwUmVzdWx0W2F0dHJOYW1lXSldKSkpO1xufVxuXG5mdW5jdGlvbiBtZXJnZUF0dHJpYnV0ZVZhbHVlKGF0dHJOYW1lOiBzdHJpbmcsIGF0dHJWYWx1ZTE6IHN0cmluZywgYXR0clZhbHVlMjogc3RyaW5nKTogc3RyaW5nIHtcbiAgaWYgKGF0dHJOYW1lID09IENMQVNTX0FUVFIgfHwgYXR0ck5hbWUgPT0gU1RZTEVfQVRUUikge1xuICAgIHJldHVybiBgJHthdHRyVmFsdWUxfSAke2F0dHJWYWx1ZTJ9YDtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gYXR0clZhbHVlMjtcbiAgfVxufVxuXG5mdW5jdGlvbiBjYWxsQ2hlY2tTdG10KG5vZGVJbmRleDogbnVtYmVyLCBleHByczogby5FeHByZXNzaW9uW10pOiBvLkV4cHJlc3Npb24ge1xuICBpZiAoZXhwcnMubGVuZ3RoID4gMTApIHtcbiAgICByZXR1cm4gQ0hFQ0tfVkFSLmNhbGxGbihcbiAgICAgICAgW1ZJRVdfVkFSLCBvLmxpdGVyYWwobm9kZUluZGV4KSwgby5saXRlcmFsKEFyZ3VtZW50VHlwZS5EeW5hbWljKSwgby5saXRlcmFsQXJyKGV4cHJzKV0pO1xuICB9IGVsc2Uge1xuICAgIHJldHVybiBDSEVDS19WQVIuY2FsbEZuKFxuICAgICAgICBbVklFV19WQVIsIG8ubGl0ZXJhbChub2RlSW5kZXgpLCBvLmxpdGVyYWwoQXJndW1lbnRUeXBlLklubGluZSksIC4uLmV4cHJzXSk7XG4gIH1cbn1cblxuZnVuY3Rpb24gY2FsbFVud3JhcFZhbHVlKG5vZGVJbmRleDogbnVtYmVyLCBiaW5kaW5nSWR4OiBudW1iZXIsIGV4cHI6IG8uRXhwcmVzc2lvbik6IG8uRXhwcmVzc2lvbiB7XG4gIHJldHVybiBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMudW53cmFwVmFsdWUpLmNhbGxGbihbXG4gICAgVklFV19WQVIsIG8ubGl0ZXJhbChub2RlSW5kZXgpLCBvLmxpdGVyYWwoYmluZGluZ0lkeCksIGV4cHJcbiAgXSk7XG59XG5cbmZ1bmN0aW9uIGVsZW1lbnRFdmVudE5hbWVBbmRUYXJnZXQoXG4gICAgZXZlbnRBc3Q6IEJvdW5kRXZlbnRBc3QsIGRpckFzdDogRGlyZWN0aXZlQXN0fG51bGwpOiB7bmFtZTogc3RyaW5nLCB0YXJnZXQ6IHN0cmluZ3xudWxsfSB7XG4gIGlmIChldmVudEFzdC5pc0FuaW1hdGlvbikge1xuICAgIHJldHVybiB7XG4gICAgICBuYW1lOiBgQCR7ZXZlbnRBc3QubmFtZX0uJHtldmVudEFzdC5waGFzZX1gLFxuICAgICAgdGFyZ2V0OiBkaXJBc3QgJiYgZGlyQXN0LmRpcmVjdGl2ZS5pc0NvbXBvbmVudCA/ICdjb21wb25lbnQnIDogbnVsbFxuICAgIH07XG4gIH0gZWxzZSB7XG4gICAgcmV0dXJuIGV2ZW50QXN0O1xuICB9XG59XG5cbmZ1bmN0aW9uIGNhbGNTdGF0aWNEeW5hbWljUXVlcnlGbGFncyhxdWVyeTogQ29tcGlsZVF1ZXJ5TWV0YWRhdGEpIHtcbiAgbGV0IGZsYWdzID0gTm9kZUZsYWdzLk5vbmU7XG4gIC8vIE5vdGU6IFdlIG9ubHkgbWFrZSBxdWVyaWVzIHN0YXRpYyB0aGF0IHF1ZXJ5IGZvciBhIHNpbmdsZSBpdGVtIGFuZCB0aGUgdXNlciBzcGVjaWZpY2FsbHlcbiAgLy8gc2V0IHRoZSB0byBiZSBzdGF0aWMuIFRoaXMgaXMgYmVjYXVzZSBvZiBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eSB3aXRoIHRoZSBvbGQgdmlldyBjb21waWxlci4uLlxuICBpZiAocXVlcnkuZmlyc3QgJiYgcXVlcnkuc3RhdGljKSB7XG4gICAgZmxhZ3MgfD0gTm9kZUZsYWdzLlN0YXRpY1F1ZXJ5O1xuICB9IGVsc2Uge1xuICAgIGZsYWdzIHw9IE5vZGVGbGFncy5EeW5hbWljUXVlcnk7XG4gIH1cbiAgcmV0dXJuIGZsYWdzO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZWxlbWVudEV2ZW50RnVsbE5hbWUodGFyZ2V0OiBzdHJpbmd8bnVsbCwgbmFtZTogc3RyaW5nKTogc3RyaW5nIHtcbiAgcmV0dXJuIHRhcmdldCA/IGAke3RhcmdldH06JHtuYW1lfWAgOiBuYW1lO1xufVxuIl19