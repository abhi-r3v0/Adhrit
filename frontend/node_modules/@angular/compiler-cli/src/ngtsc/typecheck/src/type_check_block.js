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
        define("@angular/compiler-cli/src/ngtsc/typecheck/src/type_check_block", ["require", "exports", "tslib", "@angular/compiler", "typescript", "@angular/compiler-cli/src/ngtsc/typecheck/src/diagnostics", "@angular/compiler-cli/src/ngtsc/typecheck/src/expression", "@angular/compiler-cli/src/ngtsc/typecheck/src/template_semantics", "@angular/compiler-cli/src/ngtsc/typecheck/src/ts_util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.requiresInlineTypeCheckBlock = exports.Context = exports.generateTypeCheckBlock = void 0;
    var tslib_1 = require("tslib");
    var compiler_1 = require("@angular/compiler");
    var ts = require("typescript");
    var diagnostics_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/diagnostics");
    var expression_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/expression");
    var template_semantics_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/template_semantics");
    var ts_util_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/ts_util");
    /**
     * Given a `ts.ClassDeclaration` for a component, and metadata regarding that component, compose a
     * "type check block" function.
     *
     * When passed through TypeScript's TypeChecker, type errors that arise within the type check block
     * function indicate issues in the template itself.
     *
     * As a side effect of generating a TCB for the component, `ts.Diagnostic`s may also be produced
     * directly for issues within the template which are identified during generation. These issues are
     * recorded in either the `domSchemaChecker` (which checks usage of DOM elements and bindings) as
     * well as the `oobRecorder` (which records errors when the type-checking code generator is unable
     * to sufficiently understand a template).
     *
     * @param env an `Environment` into which type-checking code will be generated.
     * @param ref a `Reference` to the component class which should be type-checked.
     * @param name a `ts.Identifier` to use for the generated `ts.FunctionDeclaration`.
     * @param meta metadata about the component's template and the function being generated.
     * @param domSchemaChecker used to check and record errors regarding improper usage of DOM elements
     * and bindings.
     * @param oobRecorder used to record errors regarding template elements which could not be correctly
     * translated into types during TCB generation.
     */
    function generateTypeCheckBlock(env, ref, name, meta, domSchemaChecker, oobRecorder) {
        var tcb = new Context(env, domSchemaChecker, oobRecorder, meta.id, meta.boundTarget, meta.pipes, meta.schemas);
        var scope = Scope.forNodes(tcb, null, tcb.boundTarget.target.template, /* guard */ null);
        var ctxRawType = env.referenceType(ref);
        if (!ts.isTypeReferenceNode(ctxRawType)) {
            throw new Error("Expected TypeReferenceNode when referencing the ctx param for " + ref.debugName);
        }
        var paramList = [tcbCtxParam(ref.node, ctxRawType.typeName, env.config.useContextGenericType)];
        var scopeStatements = scope.render();
        var innerBody = ts.createBlock(tslib_1.__spread(env.getPreludeStatements(), scopeStatements));
        // Wrap the body in an "if (true)" expression. This is unnecessary but has the effect of causing
        // the `ts.Printer` to format the type-check block nicely.
        var body = ts.createBlock([ts.createIf(ts.createTrue(), innerBody, undefined)]);
        var fnDecl = ts.createFunctionDeclaration(
        /* decorators */ undefined, 
        /* modifiers */ undefined, 
        /* asteriskToken */ undefined, 
        /* name */ name, 
        /* typeParameters */ env.config.useContextGenericType ? ref.node.typeParameters : undefined, 
        /* parameters */ paramList, 
        /* type */ undefined, 
        /* body */ body);
        diagnostics_1.addTemplateId(fnDecl, meta.id);
        return fnDecl;
    }
    exports.generateTypeCheckBlock = generateTypeCheckBlock;
    /**
     * A code generation operation that's involved in the construction of a Type Check Block.
     *
     * The generation of a TCB is non-linear. Bindings within a template may result in the need to
     * construct certain types earlier than they otherwise would be constructed. That is, if the
     * generation of a TCB for a template is broken down into specific operations (constructing a
     * directive, extracting a variable from a let- operation, etc), then it's possible for operations
     * earlier in the sequence to depend on operations which occur later in the sequence.
     *
     * `TcbOp` abstracts the different types of operations which are required to convert a template into
     * a TCB. This allows for two phases of processing for the template, where 1) a linear sequence of
     * `TcbOp`s is generated, and then 2) these operations are executed, not necessarily in linear
     * order.
     *
     * Each `TcbOp` may insert statements into the body of the TCB, and also optionally return a
     * `ts.Expression` which can be used to reference the operation's result.
     */
    var TcbOp = /** @class */ (function () {
        function TcbOp() {
        }
        /**
         * Replacement value or operation used while this `TcbOp` is executing (i.e. to resolve circular
         * references during its execution).
         *
         * This is usually a `null!` expression (which asks TS to infer an appropriate type), but another
         * `TcbOp` can be returned in cases where additional code generation is necessary to deal with
         * circular references.
         */
        TcbOp.prototype.circularFallback = function () {
            return INFER_TYPE_FOR_CIRCULAR_OP_EXPR;
        };
        return TcbOp;
    }());
    /**
     * A `TcbOp` which creates an expression for a native DOM element (or web component) from a
     * `TmplAstElement`.
     *
     * Executing this operation returns a reference to the element variable.
     */
    var TcbElementOp = /** @class */ (function (_super) {
        tslib_1.__extends(TcbElementOp, _super);
        function TcbElementOp(tcb, scope, element) {
            var _this = _super.call(this) || this;
            _this.tcb = tcb;
            _this.scope = scope;
            _this.element = element;
            return _this;
        }
        TcbElementOp.prototype.execute = function () {
            var id = this.tcb.allocateId();
            // Add the declaration of the element using document.createElement.
            var initializer = ts_util_1.tsCreateElement(this.element.name);
            diagnostics_1.addParseSpanInfo(initializer, this.element.startSourceSpan || this.element.sourceSpan);
            this.scope.addStatement(ts_util_1.tsCreateVariable(id, initializer));
            return id;
        };
        return TcbElementOp;
    }(TcbOp));
    /**
     * A `TcbOp` which creates an expression for particular let- `TmplAstVariable` on a
     * `TmplAstTemplate`'s context.
     *
     * Executing this operation returns a reference to the variable variable (lol).
     */
    var TcbVariableOp = /** @class */ (function (_super) {
        tslib_1.__extends(TcbVariableOp, _super);
        function TcbVariableOp(tcb, scope, template, variable) {
            var _this = _super.call(this) || this;
            _this.tcb = tcb;
            _this.scope = scope;
            _this.template = template;
            _this.variable = variable;
            return _this;
        }
        TcbVariableOp.prototype.execute = function () {
            // Look for a context variable for the template.
            var ctx = this.scope.resolve(this.template);
            // Allocate an identifier for the TmplAstVariable, and initialize it to a read of the variable
            // on the template context.
            var id = this.tcb.allocateId();
            var initializer = ts.createPropertyAccess(
            /* expression */ ctx, 
            /* name */ this.variable.value || '$implicit');
            diagnostics_1.addParseSpanInfo(initializer, this.variable.sourceSpan);
            // Declare the variable, and return its identifier.
            this.scope.addStatement(ts_util_1.tsCreateVariable(id, initializer));
            return id;
        };
        return TcbVariableOp;
    }(TcbOp));
    /**
     * A `TcbOp` which generates a variable for a `TmplAstTemplate`'s context.
     *
     * Executing this operation returns a reference to the template's context variable.
     */
    var TcbTemplateContextOp = /** @class */ (function (_super) {
        tslib_1.__extends(TcbTemplateContextOp, _super);
        function TcbTemplateContextOp(tcb, scope) {
            var _this = _super.call(this) || this;
            _this.tcb = tcb;
            _this.scope = scope;
            return _this;
        }
        TcbTemplateContextOp.prototype.execute = function () {
            // Allocate a template ctx variable and declare it with an 'any' type. The type of this variable
            // may be narrowed as a result of template guard conditions.
            var ctx = this.tcb.allocateId();
            var type = ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword);
            this.scope.addStatement(ts_util_1.tsDeclareVariable(ctx, type));
            return ctx;
        };
        return TcbTemplateContextOp;
    }(TcbOp));
    /**
     * A `TcbOp` which descends into a `TmplAstTemplate`'s children and generates type-checking code for
     * them.
     *
     * This operation wraps the children's type-checking code in an `if` block, which may include one
     * or more type guard conditions that narrow types within the template body.
     */
    var TcbTemplateBodyOp = /** @class */ (function (_super) {
        tslib_1.__extends(TcbTemplateBodyOp, _super);
        function TcbTemplateBodyOp(tcb, scope, template) {
            var _this = _super.call(this) || this;
            _this.tcb = tcb;
            _this.scope = scope;
            _this.template = template;
            return _this;
        }
        TcbTemplateBodyOp.prototype.execute = function () {
            var e_1, _a;
            var _this = this;
            // An `if` will be constructed, within which the template's children will be type checked. The
            // `if` is used for two reasons: it creates a new syntactic scope, isolating variables declared
            // in the template's TCB from the outer context, and it allows any directives on the templates
            // to perform type narrowing of either expressions or the template's context.
            //
            // The guard is the `if` block's condition. It's usually set to `true` but directives that exist
            // on the template can trigger extra guard expressions that serve to narrow types within the
            // `if`. `guard` is calculated by starting with `true` and adding other conditions as needed.
            // Collect these into `guards` by processing the directives.
            var directiveGuards = [];
            var directives = this.tcb.boundTarget.getDirectivesOfNode(this.template);
            if (directives !== null) {
                var _loop_1 = function (dir) {
                    var dirInstId = this_1.scope.resolve(this_1.template, dir);
                    var dirId = this_1.tcb.env.reference(dir.ref);
                    // There are two kinds of guards. Template guards (ngTemplateGuards) allow type narrowing of
                    // the expression passed to an @Input of the directive. Scan the directive to see if it has
                    // any template guards, and generate them if needed.
                    dir.ngTemplateGuards.forEach(function (guard) {
                        // For each template guard function on the directive, look for a binding to that input.
                        var boundInput = _this.template.inputs.find(function (i) { return i.name === guard.inputName; }) ||
                            _this.template.templateAttrs.find(function (i) {
                                return i instanceof compiler_1.TmplAstBoundAttribute && i.name === guard.inputName;
                            });
                        if (boundInput !== undefined) {
                            // If there is such a binding, generate an expression for it.
                            var expr = tcbExpression(boundInput.value, _this.tcb, _this.scope);
                            // The expression has already been checked in the type constructor invocation, so
                            // it should be ignored when used within a template guard.
                            diagnostics_1.ignoreDiagnostics(expr);
                            if (guard.type === 'binding') {
                                // Use the binding expression itself as guard.
                                directiveGuards.push(expr);
                            }
                            else {
                                // Call the guard function on the directive with the directive instance and that
                                // expression.
                                var guardInvoke = ts_util_1.tsCallMethod(dirId, "ngTemplateGuard_" + guard.inputName, [
                                    dirInstId,
                                    expr,
                                ]);
                                diagnostics_1.addParseSpanInfo(guardInvoke, boundInput.value.sourceSpan);
                                directiveGuards.push(guardInvoke);
                            }
                        }
                    });
                    // The second kind of guard is a template context guard. This guard narrows the template
                    // rendering context variable `ctx`.
                    if (dir.hasNgTemplateContextGuard && this_1.tcb.env.config.applyTemplateContextGuards) {
                        var ctx = this_1.scope.resolve(this_1.template);
                        var guardInvoke = ts_util_1.tsCallMethod(dirId, 'ngTemplateContextGuard', [dirInstId, ctx]);
                        diagnostics_1.addParseSpanInfo(guardInvoke, this_1.template.sourceSpan);
                        directiveGuards.push(guardInvoke);
                    }
                };
                var this_1 = this;
                try {
                    for (var directives_1 = tslib_1.__values(directives), directives_1_1 = directives_1.next(); !directives_1_1.done; directives_1_1 = directives_1.next()) {
                        var dir = directives_1_1.value;
                        _loop_1(dir);
                    }
                }
                catch (e_1_1) { e_1 = { error: e_1_1 }; }
                finally {
                    try {
                        if (directives_1_1 && !directives_1_1.done && (_a = directives_1.return)) _a.call(directives_1);
                    }
                    finally { if (e_1) throw e_1.error; }
                }
            }
            // By default the guard is simply `true`.
            var guard = null;
            // If there are any guards from directives, use them instead.
            if (directiveGuards.length > 0) {
                // Pop the first value and use it as the initializer to reduce(). This way, a single guard
                // will be used on its own, but two or more will be combined into binary AND expressions.
                guard = directiveGuards.reduce(function (expr, dirGuard) {
                    return ts.createBinary(expr, ts.SyntaxKind.AmpersandAmpersandToken, dirGuard);
                }, directiveGuards.pop());
            }
            // Create a new Scope for the template. This constructs the list of operations for the template
            // children, as well as tracks bindings within the template.
            var tmplScope = Scope.forNodes(this.tcb, this.scope, this.template, guard);
            // Render the template's `Scope` into a block.
            var tmplBlock = ts.createBlock(tmplScope.render());
            if (guard !== null) {
                // The scope has a guard that needs to be applied, so wrap the template block into an `if`
                // statement containing the guard expression.
                tmplBlock = ts.createIf(/* expression */ guard, /* thenStatement */ tmplBlock);
            }
            this.scope.addStatement(tmplBlock);
            return null;
        };
        return TcbTemplateBodyOp;
    }(TcbOp));
    /**
     * A `TcbOp` which renders a text binding (interpolation) into the TCB.
     *
     * Executing this operation returns nothing.
     */
    var TcbTextInterpolationOp = /** @class */ (function (_super) {
        tslib_1.__extends(TcbTextInterpolationOp, _super);
        function TcbTextInterpolationOp(tcb, scope, binding) {
            var _this = _super.call(this) || this;
            _this.tcb = tcb;
            _this.scope = scope;
            _this.binding = binding;
            return _this;
        }
        TcbTextInterpolationOp.prototype.execute = function () {
            var expr = tcbExpression(this.binding.value, this.tcb, this.scope);
            this.scope.addStatement(ts.createExpressionStatement(expr));
            return null;
        };
        return TcbTextInterpolationOp;
    }(TcbOp));
    /**
     * A `TcbOp` which constructs an instance of a directive with types inferred from its inputs, which
     * also checks the bindings to the directive in the process.
     *
     * Executing this operation returns a reference to the directive instance variable with its inferred
     * type.
     */
    var TcbDirectiveOp = /** @class */ (function (_super) {
        tslib_1.__extends(TcbDirectiveOp, _super);
        function TcbDirectiveOp(tcb, scope, node, dir) {
            var _this = _super.call(this) || this;
            _this.tcb = tcb;
            _this.scope = scope;
            _this.node = node;
            _this.dir = dir;
            return _this;
        }
        TcbDirectiveOp.prototype.execute = function () {
            var id = this.tcb.allocateId();
            // Process the directive and construct expressions for each of its bindings.
            var inputs = tcbGetDirectiveInputs(this.node, this.dir, this.tcb, this.scope);
            // Call the type constructor of the directive to infer a type, and assign the directive
            // instance.
            var typeCtor = tcbCallTypeCtor(this.dir, this.tcb, inputs);
            diagnostics_1.addParseSpanInfo(typeCtor, this.node.sourceSpan);
            this.scope.addStatement(ts_util_1.tsCreateVariable(id, typeCtor));
            return id;
        };
        TcbDirectiveOp.prototype.circularFallback = function () {
            return new TcbDirectiveCircularFallbackOp(this.tcb, this.scope, this.node, this.dir);
        };
        return TcbDirectiveOp;
    }(TcbOp));
    /**
     * A `TcbOp` which is used to generate a fallback expression if the inference of a directive type
     * via `TcbDirectiveOp` requires a reference to its own type. This can happen using a template
     * reference:
     *
     * ```html
     * <some-cmp #ref [prop]="ref.foo"></some-cmp>
     * ```
     *
     * In this case, `TcbDirectiveCircularFallbackOp` will add a second inference of the directive type
     * to the type-check block, this time calling the directive's type constructor without any input
     * expressions. This infers the widest possible supertype for the directive, which is used to
     * resolve any recursive references required to infer the real type.
     */
    var TcbDirectiveCircularFallbackOp = /** @class */ (function (_super) {
        tslib_1.__extends(TcbDirectiveCircularFallbackOp, _super);
        function TcbDirectiveCircularFallbackOp(tcb, scope, node, dir) {
            var _this = _super.call(this) || this;
            _this.tcb = tcb;
            _this.scope = scope;
            _this.node = node;
            _this.dir = dir;
            return _this;
        }
        TcbDirectiveCircularFallbackOp.prototype.execute = function () {
            var id = this.tcb.allocateId();
            var typeCtor = this.tcb.env.typeCtorFor(this.dir);
            var circularPlaceholder = ts.createCall(typeCtor, /* typeArguments */ undefined, [ts.createNonNullExpression(ts.createNull())]);
            this.scope.addStatement(ts_util_1.tsCreateVariable(id, circularPlaceholder));
            return id;
        };
        return TcbDirectiveCircularFallbackOp;
    }(TcbOp));
    /**
     * A `TcbOp` which feeds elements and unclaimed properties to the `DomSchemaChecker`.
     *
     * The DOM schema is not checked via TCB code generation. Instead, the `DomSchemaChecker` ingests
     * elements and property bindings and accumulates synthetic `ts.Diagnostic`s out-of-band. These are
     * later merged with the diagnostics generated from the TCB.
     *
     * For convenience, the TCB iteration of the template is used to drive the `DomSchemaChecker` via
     * the `TcbDomSchemaCheckerOp`.
     */
    var TcbDomSchemaCheckerOp = /** @class */ (function (_super) {
        tslib_1.__extends(TcbDomSchemaCheckerOp, _super);
        function TcbDomSchemaCheckerOp(tcb, element, checkElement, claimedInputs) {
            var _this = _super.call(this) || this;
            _this.tcb = tcb;
            _this.element = element;
            _this.checkElement = checkElement;
            _this.claimedInputs = claimedInputs;
            return _this;
        }
        TcbDomSchemaCheckerOp.prototype.execute = function () {
            var e_2, _a;
            if (this.checkElement) {
                this.tcb.domSchemaChecker.checkElement(this.tcb.id, this.element, this.tcb.schemas);
            }
            try {
                // TODO(alxhub): this could be more efficient.
                for (var _b = tslib_1.__values(this.element.inputs), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var binding = _c.value;
                    if (binding.type === 0 /* Property */ && this.claimedInputs.has(binding.name)) {
                        // Skip this binding as it was claimed by a directive.
                        continue;
                    }
                    if (binding.type === 0 /* Property */) {
                        if (binding.name !== 'style' && binding.name !== 'class') {
                            // A direct binding to a property.
                            var propertyName = ATTR_TO_PROP[binding.name] || binding.name;
                            this.tcb.domSchemaChecker.checkProperty(this.tcb.id, this.element, propertyName, binding.sourceSpan, this.tcb.schemas);
                        }
                    }
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_2) throw e_2.error; }
            }
            return null;
        };
        return TcbDomSchemaCheckerOp;
    }(TcbOp));
    /**
     * Mapping between attributes names that don't correspond to their element property names.
     * Note: this mapping has to be kept in sync with the equally named mapping in the runtime.
     */
    var ATTR_TO_PROP = {
        'class': 'className',
        'for': 'htmlFor',
        'formaction': 'formAction',
        'innerHtml': 'innerHTML',
        'readonly': 'readOnly',
        'tabindex': 'tabIndex',
    };
    /**
     * A `TcbOp` which generates code to check "unclaimed inputs" - bindings on an element which were
     * not attributed to any directive or component, and are instead processed against the HTML element
     * itself.
     *
     * Currently, only the expressions of these bindings are checked. The targets of the bindings are
     * checked against the DOM schema via a `TcbDomSchemaCheckerOp`.
     *
     * Executing this operation returns nothing.
     */
    var TcbUnclaimedInputsOp = /** @class */ (function (_super) {
        tslib_1.__extends(TcbUnclaimedInputsOp, _super);
        function TcbUnclaimedInputsOp(tcb, scope, element, claimedInputs) {
            var _this = _super.call(this) || this;
            _this.tcb = tcb;
            _this.scope = scope;
            _this.element = element;
            _this.claimedInputs = claimedInputs;
            return _this;
        }
        TcbUnclaimedInputsOp.prototype.execute = function () {
            var e_3, _a;
            // `this.inputs` contains only those bindings not matched by any directive. These bindings go to
            // the element itself.
            var elId = this.scope.resolve(this.element);
            try {
                // TODO(alxhub): this could be more efficient.
                for (var _b = tslib_1.__values(this.element.inputs), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var binding = _c.value;
                    if (binding.type === 0 /* Property */ && this.claimedInputs.has(binding.name)) {
                        // Skip this binding as it was claimed by a directive.
                        continue;
                    }
                    var expr = tcbExpression(binding.value, this.tcb, this.scope);
                    if (!this.tcb.env.config.checkTypeOfInputBindings) {
                        // If checking the type of bindings is disabled, cast the resulting expression to 'any'
                        // before the assignment.
                        expr = ts_util_1.tsCastToAny(expr);
                    }
                    else if (!this.tcb.env.config.strictNullInputBindings) {
                        // If strict null checks are disabled, erase `null` and `undefined` from the type by
                        // wrapping the expression in a non-null assertion.
                        expr = ts.createNonNullExpression(expr);
                    }
                    if (this.tcb.env.config.checkTypeOfDomBindings && binding.type === 0 /* Property */) {
                        if (binding.name !== 'style' && binding.name !== 'class') {
                            // A direct binding to a property.
                            var propertyName = ATTR_TO_PROP[binding.name] || binding.name;
                            var prop = ts.createElementAccess(elId, ts.createStringLiteral(propertyName));
                            var stmt = ts.createBinary(prop, ts.SyntaxKind.EqualsToken, diagnostics_1.wrapForDiagnostics(expr));
                            diagnostics_1.addParseSpanInfo(stmt, binding.sourceSpan);
                            this.scope.addStatement(ts.createExpressionStatement(stmt));
                        }
                        else {
                            this.scope.addStatement(ts.createExpressionStatement(expr));
                        }
                    }
                    else {
                        // A binding to an animation, attribute, class or style. For now, only validate the right-
                        // hand side of the expression.
                        // TODO: properly check class and style bindings.
                        this.scope.addStatement(ts.createExpressionStatement(expr));
                    }
                }
            }
            catch (e_3_1) { e_3 = { error: e_3_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_3) throw e_3.error; }
            }
            return null;
        };
        return TcbUnclaimedInputsOp;
    }(TcbOp));
    /**
     * A `TcbOp` which generates code to check event bindings on an element that correspond with the
     * outputs of a directive.
     *
     * Executing this operation returns nothing.
     */
    var TcbDirectiveOutputsOp = /** @class */ (function (_super) {
        tslib_1.__extends(TcbDirectiveOutputsOp, _super);
        function TcbDirectiveOutputsOp(tcb, scope, node, dir) {
            var _this = _super.call(this) || this;
            _this.tcb = tcb;
            _this.scope = scope;
            _this.node = node;
            _this.dir = dir;
            return _this;
        }
        TcbDirectiveOutputsOp.prototype.execute = function () {
            var e_4, _a, e_5, _b;
            var dirId = this.scope.resolve(this.node, this.dir);
            // `dir.outputs` is an object map of field names on the directive class to event names.
            // This is backwards from what's needed to match event handlers - a map of event names to field
            // names is desired. Invert `dir.outputs` into `fieldByEventName` to create this map.
            var fieldByEventName = new Map();
            var outputs = this.dir.outputs;
            try {
                for (var _c = tslib_1.__values(Object.keys(outputs)), _d = _c.next(); !_d.done; _d = _c.next()) {
                    var key = _d.value;
                    fieldByEventName.set(outputs[key], key);
                }
            }
            catch (e_4_1) { e_4 = { error: e_4_1 }; }
            finally {
                try {
                    if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
                }
                finally { if (e_4) throw e_4.error; }
            }
            try {
                for (var _e = tslib_1.__values(this.node.outputs), _f = _e.next(); !_f.done; _f = _e.next()) {
                    var output = _f.value;
                    if (output.type !== 0 /* Regular */ || !fieldByEventName.has(output.name)) {
                        continue;
                    }
                    var field = fieldByEventName.get(output.name);
                    if (this.tcb.env.config.checkTypeOfOutputEvents) {
                        // For strict checking of directive events, generate a call to the `subscribe` method
                        // on the directive's output field to let type information flow into the handler function's
                        // `$event` parameter.
                        //
                        // Note that the `EventEmitter<T>` type from '@angular/core' that is typically used for
                        // outputs has a typings deficiency in its `subscribe` method. The generic type `T` is not
                        // carried into the handler function, which is vital for inference of the type of `$event`.
                        // As a workaround, the directive's field is passed into a helper function that has a
                        // specially crafted set of signatures, to effectively cast `EventEmitter<T>` to something
                        // that has a `subscribe` method that properly carries the `T` into the handler function.
                        var handler = tcbCreateEventHandler(output, this.tcb, this.scope, 0 /* Infer */);
                        var outputField = ts.createElementAccess(dirId, ts.createStringLiteral(field));
                        var outputHelper = ts.createCall(this.tcb.env.declareOutputHelper(), undefined, [outputField]);
                        var subscribeFn = ts.createPropertyAccess(outputHelper, 'subscribe');
                        var call = ts.createCall(subscribeFn, /* typeArguments */ undefined, [handler]);
                        diagnostics_1.addParseSpanInfo(call, output.sourceSpan);
                        this.scope.addStatement(ts.createExpressionStatement(call));
                    }
                    else {
                        // If strict checking of directive events is disabled, emit a handler function where the
                        // `$event` parameter has an explicit `any` type.
                        var handler = tcbCreateEventHandler(output, this.tcb, this.scope, 1 /* Any */);
                        this.scope.addStatement(ts.createExpressionStatement(handler));
                    }
                    template_semantics_1.ExpressionSemanticVisitor.visit(output.handler, this.tcb.id, this.tcb.boundTarget, this.tcb.oobRecorder);
                }
            }
            catch (e_5_1) { e_5 = { error: e_5_1 }; }
            finally {
                try {
                    if (_f && !_f.done && (_b = _e.return)) _b.call(_e);
                }
                finally { if (e_5) throw e_5.error; }
            }
            return null;
        };
        return TcbDirectiveOutputsOp;
    }(TcbOp));
    /**
     * A `TcbOp` which generates code to check "unclaimed outputs" - event bindings on an element which
     * were not attributed to any directive or component, and are instead processed against the HTML
     * element itself.
     *
     * Executing this operation returns nothing.
     */
    var TcbUnclaimedOutputsOp = /** @class */ (function (_super) {
        tslib_1.__extends(TcbUnclaimedOutputsOp, _super);
        function TcbUnclaimedOutputsOp(tcb, scope, element, claimedOutputs) {
            var _this = _super.call(this) || this;
            _this.tcb = tcb;
            _this.scope = scope;
            _this.element = element;
            _this.claimedOutputs = claimedOutputs;
            return _this;
        }
        TcbUnclaimedOutputsOp.prototype.execute = function () {
            var e_6, _a;
            var elId = this.scope.resolve(this.element);
            try {
                // TODO(alxhub): this could be more efficient.
                for (var _b = tslib_1.__values(this.element.outputs), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var output = _c.value;
                    if (this.claimedOutputs.has(output.name)) {
                        // Skip this event handler as it was claimed by a directive.
                        continue;
                    }
                    if (output.type === 1 /* Animation */) {
                        // Animation output bindings always have an `$event` parameter of type `AnimationEvent`.
                        var eventType = this.tcb.env.config.checkTypeOfAnimationEvents ?
                            this.tcb.env.referenceExternalType('@angular/animations', 'AnimationEvent') :
                            1 /* Any */;
                        var handler = tcbCreateEventHandler(output, this.tcb, this.scope, eventType);
                        this.scope.addStatement(ts.createExpressionStatement(handler));
                    }
                    else if (this.tcb.env.config.checkTypeOfDomEvents) {
                        // If strict checking of DOM events is enabled, generate a call to `addEventListener` on
                        // the element instance so that TypeScript's type inference for
                        // `HTMLElement.addEventListener` using `HTMLElementEventMap` to infer an accurate type for
                        // `$event` depending on the event name. For unknown event names, TypeScript resorts to the
                        // base `Event` type.
                        var handler = tcbCreateEventHandler(output, this.tcb, this.scope, 0 /* Infer */);
                        var call = ts.createCall(
                        /* expression */ ts.createPropertyAccess(elId, 'addEventListener'), 
                        /* typeArguments */ undefined, 
                        /* arguments */ [ts.createStringLiteral(output.name), handler]);
                        diagnostics_1.addParseSpanInfo(call, output.sourceSpan);
                        this.scope.addStatement(ts.createExpressionStatement(call));
                    }
                    else {
                        // If strict checking of DOM inputs is disabled, emit a handler function where the `$event`
                        // parameter has an explicit `any` type.
                        var handler = tcbCreateEventHandler(output, this.tcb, this.scope, 1 /* Any */);
                        this.scope.addStatement(ts.createExpressionStatement(handler));
                    }
                    template_semantics_1.ExpressionSemanticVisitor.visit(output.handler, this.tcb.id, this.tcb.boundTarget, this.tcb.oobRecorder);
                }
            }
            catch (e_6_1) { e_6 = { error: e_6_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_6) throw e_6.error; }
            }
            return null;
        };
        return TcbUnclaimedOutputsOp;
    }(TcbOp));
    /**
     * Value used to break a circular reference between `TcbOp`s.
     *
     * This value is returned whenever `TcbOp`s have a circular dependency. The expression is a non-null
     * assertion of the null value (in TypeScript, the expression `null!`). This construction will infer
     * the least narrow type for whatever it's assigned to.
     */
    var INFER_TYPE_FOR_CIRCULAR_OP_EXPR = ts.createNonNullExpression(ts.createNull());
    /**
     * Overall generation context for the type check block.
     *
     * `Context` handles operations during code generation which are global with respect to the whole
     * block. It's responsible for variable name allocation and management of any imports needed. It
     * also contains the template metadata itself.
     */
    var Context = /** @class */ (function () {
        function Context(env, domSchemaChecker, oobRecorder, id, boundTarget, pipes, schemas) {
            this.env = env;
            this.domSchemaChecker = domSchemaChecker;
            this.oobRecorder = oobRecorder;
            this.id = id;
            this.boundTarget = boundTarget;
            this.pipes = pipes;
            this.schemas = schemas;
            this.nextId = 1;
        }
        /**
         * Allocate a new variable name for use within the `Context`.
         *
         * Currently this uses a monotonically increasing counter, but in the future the variable name
         * might change depending on the type of data being stored.
         */
        Context.prototype.allocateId = function () {
            return ts.createIdentifier("_t" + this.nextId++);
        };
        Context.prototype.getPipeByName = function (name) {
            if (!this.pipes.has(name)) {
                return null;
            }
            return this.env.pipeInst(this.pipes.get(name));
        };
        return Context;
    }());
    exports.Context = Context;
    /**
     * Local scope within the type check block for a particular template.
     *
     * The top-level template and each nested `<ng-template>` have their own `Scope`, which exist in a
     * hierarchy. The structure of this hierarchy mirrors the syntactic scopes in the generated type
     * check block, where each nested template is encased in an `if` structure.
     *
     * As a template's `TcbOp`s are executed in a given `Scope`, statements are added via
     * `addStatement()`. When this processing is complete, the `Scope` can be turned into a `ts.Block`
     * via `renderToBlock()`.
     *
     * If a `TcbOp` requires the output of another, it can call `resolve()`.
     */
    var Scope = /** @class */ (function () {
        function Scope(tcb, parent, guard) {
            if (parent === void 0) { parent = null; }
            if (guard === void 0) { guard = null; }
            this.tcb = tcb;
            this.parent = parent;
            this.guard = guard;
            /**
             * A queue of operations which need to be performed to generate the TCB code for this scope.
             *
             * This array can contain either a `TcbOp` which has yet to be executed, or a `ts.Expression|null`
             * representing the memoized result of executing the operation. As operations are executed, their
             * results are written into the `opQueue`, overwriting the original operation.
             *
             * If an operation is in the process of being executed, it is temporarily overwritten here with
             * `INFER_TYPE_FOR_CIRCULAR_OP_EXPR`. This way, if a cycle is encountered where an operation
             * depends transitively on its own result, the inner operation will infer the least narrow type
             * that fits instead. This has the same semantics as TypeScript itself when types are referenced
             * circularly.
             */
            this.opQueue = [];
            /**
             * A map of `TmplAstElement`s to the index of their `TcbElementOp` in the `opQueue`
             */
            this.elementOpMap = new Map();
            /**
             * A map of maps which tracks the index of `TcbDirectiveOp`s in the `opQueue` for each directive
             * on a `TmplAstElement` or `TmplAstTemplate` node.
             */
            this.directiveOpMap = new Map();
            /**
             * Map of immediately nested <ng-template>s (within this `Scope`) represented by `TmplAstTemplate`
             * nodes to the index of their `TcbTemplateContextOp`s in the `opQueue`.
             */
            this.templateCtxOpMap = new Map();
            /**
             * Map of variables declared on the template that created this `Scope` (represented by
             * `TmplAstVariable` nodes) to the index of their `TcbVariableOp`s in the `opQueue`.
             */
            this.varMap = new Map();
            /**
             * Statements for this template.
             *
             * Executing the `TcbOp`s in the `opQueue` populates this array.
             */
            this.statements = [];
        }
        /**
         * Constructs a `Scope` given either a `TmplAstTemplate` or a list of `TmplAstNode`s.
         *
         * @param tcb the overall context of TCB generation.
         * @param parent the `Scope` of the parent template (if any) or `null` if this is the root
         * `Scope`.
         * @param templateOrNodes either a `TmplAstTemplate` representing the template for which to
         * calculate the `Scope`, or a list of nodes if no outer template object is available.
         * @param guard an expression that is applied to this scope for type narrowing purposes.
         */
        Scope.forNodes = function (tcb, parent, templateOrNodes, guard) {
            var e_7, _a, e_8, _b;
            var scope = new Scope(tcb, parent, guard);
            var children;
            // If given an actual `TmplAstTemplate` instance, then process any additional information it
            // has.
            if (templateOrNodes instanceof compiler_1.TmplAstTemplate) {
                // The template's variable declarations need to be added as `TcbVariableOp`s.
                var varMap = new Map();
                try {
                    for (var _c = tslib_1.__values(templateOrNodes.variables), _d = _c.next(); !_d.done; _d = _c.next()) {
                        var v = _d.value;
                        // Validate that variables on the `TmplAstTemplate` are only declared once.
                        if (!varMap.has(v.name)) {
                            varMap.set(v.name, v);
                        }
                        else {
                            var firstDecl = varMap.get(v.name);
                            tcb.oobRecorder.duplicateTemplateVar(tcb.id, v, firstDecl);
                        }
                        var opIndex = scope.opQueue.push(new TcbVariableOp(tcb, scope, templateOrNodes, v)) - 1;
                        scope.varMap.set(v, opIndex);
                    }
                }
                catch (e_7_1) { e_7 = { error: e_7_1 }; }
                finally {
                    try {
                        if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
                    }
                    finally { if (e_7) throw e_7.error; }
                }
                children = templateOrNodes.children;
            }
            else {
                children = templateOrNodes;
            }
            try {
                for (var children_1 = tslib_1.__values(children), children_1_1 = children_1.next(); !children_1_1.done; children_1_1 = children_1.next()) {
                    var node = children_1_1.value;
                    scope.appendNode(node);
                }
            }
            catch (e_8_1) { e_8 = { error: e_8_1 }; }
            finally {
                try {
                    if (children_1_1 && !children_1_1.done && (_b = children_1.return)) _b.call(children_1);
                }
                finally { if (e_8) throw e_8.error; }
            }
            return scope;
        };
        /**
         * Look up a `ts.Expression` representing the value of some operation in the current `Scope`,
         * including any parent scope(s).
         *
         * @param node a `TmplAstNode` of the operation in question. The lookup performed will depend on
         * the type of this node:
         *
         * Assuming `directive` is not present, then `resolve` will return:
         *
         * * `TmplAstElement` - retrieve the expression for the element DOM node
         * * `TmplAstTemplate` - retrieve the template context variable
         * * `TmplAstVariable` - retrieve a template let- variable
         *
         * @param directive if present, a directive type on a `TmplAstElement` or `TmplAstTemplate` to
         * look up instead of the default for an element or template node.
         */
        Scope.prototype.resolve = function (node, directive) {
            // Attempt to resolve the operation locally.
            var res = this.resolveLocal(node, directive);
            if (res !== null) {
                return res;
            }
            else if (this.parent !== null) {
                // Check with the parent.
                return this.parent.resolve(node, directive);
            }
            else {
                throw new Error("Could not resolve " + node + " / " + directive);
            }
        };
        /**
         * Add a statement to this scope.
         */
        Scope.prototype.addStatement = function (stmt) {
            this.statements.push(stmt);
        };
        /**
         * Get the statements.
         */
        Scope.prototype.render = function () {
            for (var i = 0; i < this.opQueue.length; i++) {
                this.executeOp(i);
            }
            return this.statements;
        };
        /**
         * Returns an expression of all template guards that apply to this scope, including those of
         * parent scopes. If no guards have been applied, null is returned.
         */
        Scope.prototype.guards = function () {
            var parentGuards = null;
            if (this.parent !== null) {
                // Start with the guards from the parent scope, if present.
                parentGuards = this.parent.guards();
            }
            if (this.guard === null) {
                // This scope does not have a guard, so return the parent's guards as is.
                return parentGuards;
            }
            else if (parentGuards === null) {
                // There's no guards from the parent scope, so this scope's guard represents all available
                // guards.
                return this.guard;
            }
            else {
                // Both the parent scope and this scope provide a guard, so create a combination of the two.
                // It is important that the parent guard is used as left operand, given that it may provide
                // narrowing that is required for this scope's guard to be valid.
                return ts.createBinary(parentGuards, ts.SyntaxKind.AmpersandAmpersandToken, this.guard);
            }
        };
        Scope.prototype.resolveLocal = function (ref, directive) {
            if (ref instanceof compiler_1.TmplAstVariable && this.varMap.has(ref)) {
                // Resolving a context variable for this template.
                // Execute the `TcbVariableOp` associated with the `TmplAstVariable`.
                return this.resolveOp(this.varMap.get(ref));
            }
            else if (ref instanceof compiler_1.TmplAstTemplate && directive === undefined &&
                this.templateCtxOpMap.has(ref)) {
                // Resolving the context of the given sub-template.
                // Execute the `TcbTemplateContextOp` for the template.
                return this.resolveOp(this.templateCtxOpMap.get(ref));
            }
            else if ((ref instanceof compiler_1.TmplAstElement || ref instanceof compiler_1.TmplAstTemplate) &&
                directive !== undefined && this.directiveOpMap.has(ref)) {
                // Resolving a directive on an element or sub-template.
                var dirMap = this.directiveOpMap.get(ref);
                if (dirMap.has(directive)) {
                    return this.resolveOp(dirMap.get(directive));
                }
                else {
                    return null;
                }
            }
            else if (ref instanceof compiler_1.TmplAstElement && this.elementOpMap.has(ref)) {
                // Resolving the DOM node of an element in this template.
                return this.resolveOp(this.elementOpMap.get(ref));
            }
            else {
                return null;
            }
        };
        /**
         * Like `executeOp`, but assert that the operation actually returned `ts.Expression`.
         */
        Scope.prototype.resolveOp = function (opIndex) {
            var res = this.executeOp(opIndex);
            if (res === null) {
                throw new Error("Error resolving operation, got null");
            }
            return res;
        };
        /**
         * Execute a particular `TcbOp` in the `opQueue`.
         *
         * This method replaces the operation in the `opQueue` with the result of execution (once done)
         * and also protects against a circular dependency from the operation to itself by temporarily
         * setting the operation's result to a special expression.
         */
        Scope.prototype.executeOp = function (opIndex) {
            var op = this.opQueue[opIndex];
            if (!(op instanceof TcbOp)) {
                return op;
            }
            // Set the result of the operation in the queue to its circular fallback. If executing this
            // operation results in a circular dependency, this will prevent an infinite loop and allow for
            // the resolution of such cycles.
            this.opQueue[opIndex] = op.circularFallback();
            var res = op.execute();
            // Once the operation has finished executing, it's safe to cache the real result.
            this.opQueue[opIndex] = res;
            return res;
        };
        Scope.prototype.appendNode = function (node) {
            var e_9, _a;
            if (node instanceof compiler_1.TmplAstElement) {
                var opIndex = this.opQueue.push(new TcbElementOp(this.tcb, this, node)) - 1;
                this.elementOpMap.set(node, opIndex);
                this.appendDirectivesAndInputsOfNode(node);
                this.appendOutputsOfNode(node);
                try {
                    for (var _b = tslib_1.__values(node.children), _c = _b.next(); !_c.done; _c = _b.next()) {
                        var child = _c.value;
                        this.appendNode(child);
                    }
                }
                catch (e_9_1) { e_9 = { error: e_9_1 }; }
                finally {
                    try {
                        if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                    }
                    finally { if (e_9) throw e_9.error; }
                }
                this.checkReferencesOfNode(node);
            }
            else if (node instanceof compiler_1.TmplAstTemplate) {
                // Template children are rendered in a child scope.
                this.appendDirectivesAndInputsOfNode(node);
                this.appendOutputsOfNode(node);
                if (this.tcb.env.config.checkTemplateBodies) {
                    var ctxIndex = this.opQueue.push(new TcbTemplateContextOp(this.tcb, this)) - 1;
                    this.templateCtxOpMap.set(node, ctxIndex);
                    this.opQueue.push(new TcbTemplateBodyOp(this.tcb, this, node));
                }
                this.checkReferencesOfNode(node);
            }
            else if (node instanceof compiler_1.TmplAstBoundText) {
                this.opQueue.push(new TcbTextInterpolationOp(this.tcb, this, node));
            }
        };
        Scope.prototype.checkReferencesOfNode = function (node) {
            var e_10, _a;
            try {
                for (var _b = tslib_1.__values(node.references), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var ref = _c.value;
                    if (this.tcb.boundTarget.getReferenceTarget(ref) === null) {
                        this.tcb.oobRecorder.missingReferenceTarget(this.tcb.id, ref);
                    }
                }
            }
            catch (e_10_1) { e_10 = { error: e_10_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_10) throw e_10.error; }
            }
        };
        Scope.prototype.appendDirectivesAndInputsOfNode = function (node) {
            var e_11, _a, e_12, _b, e_13, _c;
            // Collect all the inputs on the element.
            var claimedInputs = new Set();
            var directives = this.tcb.boundTarget.getDirectivesOfNode(node);
            if (directives === null || directives.length === 0) {
                // If there are no directives, then all inputs are unclaimed inputs, so queue an operation
                // to add them if needed.
                if (node instanceof compiler_1.TmplAstElement) {
                    this.opQueue.push(new TcbUnclaimedInputsOp(this.tcb, this, node, claimedInputs));
                    this.opQueue.push(new TcbDomSchemaCheckerOp(this.tcb, node, /* checkElement */ true, claimedInputs));
                }
                return;
            }
            var dirMap = new Map();
            try {
                for (var directives_2 = tslib_1.__values(directives), directives_2_1 = directives_2.next(); !directives_2_1.done; directives_2_1 = directives_2.next()) {
                    var dir = directives_2_1.value;
                    var dirIndex = this.opQueue.push(new TcbDirectiveOp(this.tcb, this, node, dir)) - 1;
                    dirMap.set(dir, dirIndex);
                }
            }
            catch (e_11_1) { e_11 = { error: e_11_1 }; }
            finally {
                try {
                    if (directives_2_1 && !directives_2_1.done && (_a = directives_2.return)) _a.call(directives_2);
                }
                finally { if (e_11) throw e_11.error; }
            }
            this.directiveOpMap.set(node, dirMap);
            // After expanding the directives, we might need to queue an operation to check any unclaimed
            // inputs.
            if (node instanceof compiler_1.TmplAstElement) {
                try {
                    // Go through the directives and remove any inputs that it claims from `elementInputs`.
                    for (var directives_3 = tslib_1.__values(directives), directives_3_1 = directives_3.next(); !directives_3_1.done; directives_3_1 = directives_3.next()) {
                        var dir = directives_3_1.value;
                        try {
                            for (var _d = (e_13 = void 0, tslib_1.__values(Object.keys(dir.inputs))), _e = _d.next(); !_e.done; _e = _d.next()) {
                                var fieldName = _e.value;
                                var value = dir.inputs[fieldName];
                                claimedInputs.add(Array.isArray(value) ? value[0] : value);
                            }
                        }
                        catch (e_13_1) { e_13 = { error: e_13_1 }; }
                        finally {
                            try {
                                if (_e && !_e.done && (_c = _d.return)) _c.call(_d);
                            }
                            finally { if (e_13) throw e_13.error; }
                        }
                    }
                }
                catch (e_12_1) { e_12 = { error: e_12_1 }; }
                finally {
                    try {
                        if (directives_3_1 && !directives_3_1.done && (_b = directives_3.return)) _b.call(directives_3);
                    }
                    finally { if (e_12) throw e_12.error; }
                }
                this.opQueue.push(new TcbUnclaimedInputsOp(this.tcb, this, node, claimedInputs));
                // If there are no directives which match this element, then it's a "plain" DOM element (or a
                // web component), and should be checked against the DOM schema. If any directives match,
                // we must assume that the element could be custom (either a component, or a directive like
                // <router-outlet>) and shouldn't validate the element name itself.
                var checkElement = directives.length === 0;
                this.opQueue.push(new TcbDomSchemaCheckerOp(this.tcb, node, checkElement, claimedInputs));
            }
        };
        Scope.prototype.appendOutputsOfNode = function (node) {
            var e_14, _a, e_15, _b, e_16, _c;
            // Collect all the outputs on the element.
            var claimedOutputs = new Set();
            var directives = this.tcb.boundTarget.getDirectivesOfNode(node);
            if (directives === null || directives.length === 0) {
                // If there are no directives, then all outputs are unclaimed outputs, so queue an operation
                // to add them if needed.
                if (node instanceof compiler_1.TmplAstElement) {
                    this.opQueue.push(new TcbUnclaimedOutputsOp(this.tcb, this, node, claimedOutputs));
                }
                return;
            }
            try {
                // Queue operations for all directives to check the relevant outputs for a directive.
                for (var directives_4 = tslib_1.__values(directives), directives_4_1 = directives_4.next(); !directives_4_1.done; directives_4_1 = directives_4.next()) {
                    var dir = directives_4_1.value;
                    this.opQueue.push(new TcbDirectiveOutputsOp(this.tcb, this, node, dir));
                }
            }
            catch (e_14_1) { e_14 = { error: e_14_1 }; }
            finally {
                try {
                    if (directives_4_1 && !directives_4_1.done && (_a = directives_4.return)) _a.call(directives_4);
                }
                finally { if (e_14) throw e_14.error; }
            }
            // After expanding the directives, we might need to queue an operation to check any unclaimed
            // outputs.
            if (node instanceof compiler_1.TmplAstElement) {
                try {
                    // Go through the directives and register any outputs that it claims in `claimedOutputs`.
                    for (var directives_5 = tslib_1.__values(directives), directives_5_1 = directives_5.next(); !directives_5_1.done; directives_5_1 = directives_5.next()) {
                        var dir = directives_5_1.value;
                        try {
                            for (var _d = (e_16 = void 0, tslib_1.__values(Object.keys(dir.outputs))), _e = _d.next(); !_e.done; _e = _d.next()) {
                                var outputField = _e.value;
                                claimedOutputs.add(dir.outputs[outputField]);
                            }
                        }
                        catch (e_16_1) { e_16 = { error: e_16_1 }; }
                        finally {
                            try {
                                if (_e && !_e.done && (_c = _d.return)) _c.call(_d);
                            }
                            finally { if (e_16) throw e_16.error; }
                        }
                    }
                }
                catch (e_15_1) { e_15 = { error: e_15_1 }; }
                finally {
                    try {
                        if (directives_5_1 && !directives_5_1.done && (_b = directives_5.return)) _b.call(directives_5);
                    }
                    finally { if (e_15) throw e_15.error; }
                }
                this.opQueue.push(new TcbUnclaimedOutputsOp(this.tcb, this, node, claimedOutputs));
            }
        };
        return Scope;
    }());
    /**
     * Create the `ctx` parameter to the top-level TCB function.
     *
     * This is a parameter with a type equivalent to the component type, with all generic type
     * parameters listed (without their generic bounds).
     */
    function tcbCtxParam(node, name, useGenericType) {
        var typeArguments = undefined;
        // Check if the component is generic, and pass generic type parameters if so.
        if (node.typeParameters !== undefined) {
            if (useGenericType) {
                typeArguments =
                    node.typeParameters.map(function (param) { return ts.createTypeReferenceNode(param.name, undefined); });
            }
            else {
                typeArguments =
                    node.typeParameters.map(function () { return ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword); });
            }
        }
        var type = ts.createTypeReferenceNode(name, typeArguments);
        return ts.createParameter(
        /* decorators */ undefined, 
        /* modifiers */ undefined, 
        /* dotDotDotToken */ undefined, 
        /* name */ 'ctx', 
        /* questionToken */ undefined, 
        /* type */ type, 
        /* initializer */ undefined);
    }
    /**
     * Process an `AST` expression and convert it into a `ts.Expression`, generating references to the
     * correct identifiers in the current scope.
     */
    function tcbExpression(ast, tcb, scope) {
        var translator = new TcbExpressionTranslator(tcb, scope);
        return translator.translate(ast);
    }
    var TcbExpressionTranslator = /** @class */ (function () {
        function TcbExpressionTranslator(tcb, scope) {
            this.tcb = tcb;
            this.scope = scope;
        }
        TcbExpressionTranslator.prototype.translate = function (ast) {
            var _this = this;
            // `astToTypescript` actually does the conversion. A special resolver `tcbResolve` is passed
            // which interprets specific expression nodes that interact with the `ImplicitReceiver`. These
            // nodes actually refer to identifiers within the current scope.
            return expression_1.astToTypescript(ast, function (ast) { return _this.resolve(ast); }, this.tcb.env.config);
        };
        /**
         * Resolve an `AST` expression within the given scope.
         *
         * Some `AST` expressions refer to top-level concepts (references, variables, the component
         * context). This method assists in resolving those.
         */
        TcbExpressionTranslator.prototype.resolve = function (ast) {
            var _this = this;
            if (ast instanceof compiler_1.PropertyRead && ast.receiver instanceof compiler_1.ImplicitReceiver) {
                // Try to resolve a bound target for this expression. If no such target is available, then
                // the expression is referencing the top-level component context. In that case, `null` is
                // returned here to let it fall through resolution so it will be caught when the
                // `ImplicitReceiver` is resolved in the branch below.
                return this.resolveTarget(ast);
            }
            else if (ast instanceof compiler_1.PropertyWrite && ast.receiver instanceof compiler_1.ImplicitReceiver) {
                var target = this.resolveTarget(ast);
                if (target === null) {
                    return null;
                }
                var expr = this.translate(ast.value);
                var result = ts.createParen(ts.createBinary(target, ts.SyntaxKind.EqualsToken, expr));
                diagnostics_1.addParseSpanInfo(result, ast.sourceSpan);
                return result;
            }
            else if (ast instanceof compiler_1.ImplicitReceiver) {
                // AST instances representing variables and references look very similar to property reads
                // or method calls from the component context: both have the shape
                // PropertyRead(ImplicitReceiver, 'propName') or MethodCall(ImplicitReceiver, 'methodName').
                //
                // `translate` will first try to `resolve` the outer PropertyRead/MethodCall. If this works,
                // it's because the `BoundTarget` found an expression target for the whole expression, and
                // therefore `translate` will never attempt to `resolve` the ImplicitReceiver of that
                // PropertyRead/MethodCall.
                //
                // Therefore if `resolve` is called on an `ImplicitReceiver`, it's because no outer
                // PropertyRead/MethodCall resolved to a variable or reference, and therefore this is a
                // property read or method call on the component context itself.
                return ts.createIdentifier('ctx');
            }
            else if (ast instanceof compiler_1.BindingPipe) {
                var expr = this.translate(ast.exp);
                var pipe = void 0;
                if (this.tcb.env.config.checkTypeOfPipes) {
                    pipe = this.tcb.getPipeByName(ast.name);
                    if (pipe === null) {
                        // No pipe by that name exists in scope. Record this as an error.
                        this.tcb.oobRecorder.missingPipe(this.tcb.id, ast);
                        // Return an 'any' value to at least allow the rest of the expression to be checked.
                        pipe = expression_1.NULL_AS_ANY;
                    }
                }
                else {
                    pipe = ts.createParen(ts.createAsExpression(ts.createNull(), ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword)));
                }
                var args = ast.args.map(function (arg) { return _this.translate(arg); });
                var result = ts_util_1.tsCallMethod(pipe, 'transform', tslib_1.__spread([expr], args));
                diagnostics_1.addParseSpanInfo(result, ast.sourceSpan);
                return result;
            }
            else if (ast instanceof compiler_1.MethodCall && ast.receiver instanceof compiler_1.ImplicitReceiver) {
                // Resolve the special `$any(expr)` syntax to insert a cast of the argument to type `any`.
                // `$any(expr)` -> `expr as any`
                if (ast.name === '$any' && ast.args.length === 1) {
                    var expr = this.translate(ast.args[0]);
                    var exprAsAny = ts.createAsExpression(expr, ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword));
                    var result = ts.createParen(exprAsAny);
                    diagnostics_1.addParseSpanInfo(result, ast.sourceSpan);
                    return result;
                }
                // Attempt to resolve a bound target for the method, and generate the method call if a target
                // could be resolved. If no target is available, then the method is referencing the top-level
                // component context, in which case `null` is returned to let the `ImplicitReceiver` being
                // resolved to the component context.
                var receiver = this.resolveTarget(ast);
                if (receiver === null) {
                    return null;
                }
                var method = ts.createPropertyAccess(diagnostics_1.wrapForDiagnostics(receiver), ast.name);
                diagnostics_1.addParseSpanInfo(method, ast.nameSpan);
                var args = ast.args.map(function (arg) { return _this.translate(arg); });
                var node = ts.createCall(method, undefined, args);
                diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
                return node;
            }
            else {
                // This AST isn't special after all.
                return null;
            }
        };
        /**
         * Attempts to resolve a bound target for a given expression, and translates it into the
         * appropriate `ts.Expression` that represents the bound target. If no target is available,
         * `null` is returned.
         */
        TcbExpressionTranslator.prototype.resolveTarget = function (ast) {
            var binding = this.tcb.boundTarget.getExpressionTarget(ast);
            if (binding === null) {
                return null;
            }
            // This expression has a binding to some variable or reference in the template. Resolve it.
            if (binding instanceof compiler_1.TmplAstVariable) {
                var expr = ts.getMutableClone(this.scope.resolve(binding));
                diagnostics_1.addParseSpanInfo(expr, ast.sourceSpan);
                return expr;
            }
            else if (binding instanceof compiler_1.TmplAstReference) {
                var target = this.tcb.boundTarget.getReferenceTarget(binding);
                if (target === null) {
                    // This reference is unbound. Traversal of the `TmplAstReference` itself should have
                    // recorded the error in the `OutOfBandDiagnosticRecorder`.
                    // Still check the rest of the expression if possible by using an `any` value.
                    return expression_1.NULL_AS_ANY;
                }
                // The reference is either to an element, an <ng-template> node, or to a directive on an
                // element or template.
                if (target instanceof compiler_1.TmplAstElement) {
                    if (!this.tcb.env.config.checkTypeOfDomReferences) {
                        // References to DOM nodes are pinned to 'any'.
                        return expression_1.NULL_AS_ANY;
                    }
                    var expr = ts.getMutableClone(this.scope.resolve(target));
                    diagnostics_1.addParseSpanInfo(expr, ast.sourceSpan);
                    return expr;
                }
                else if (target instanceof compiler_1.TmplAstTemplate) {
                    if (!this.tcb.env.config.checkTypeOfNonDomReferences) {
                        // References to `TemplateRef`s pinned to 'any'.
                        return expression_1.NULL_AS_ANY;
                    }
                    // Direct references to an <ng-template> node simply require a value of type
                    // `TemplateRef<any>`. To get this, an expression of the form
                    // `(null as any as TemplateRef<any>)` is constructed.
                    var value = ts.createNull();
                    value = ts.createAsExpression(value, ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword));
                    value = ts.createAsExpression(value, this.tcb.env.referenceExternalType('@angular/core', 'TemplateRef', [compiler_1.DYNAMIC_TYPE]));
                    value = ts.createParen(value);
                    diagnostics_1.addParseSpanInfo(value, ast.sourceSpan);
                    return value;
                }
                else {
                    if (!this.tcb.env.config.checkTypeOfNonDomReferences) {
                        // References to directives are pinned to 'any'.
                        return expression_1.NULL_AS_ANY;
                    }
                    var expr = ts.getMutableClone(this.scope.resolve(target.node, target.directive));
                    diagnostics_1.addParseSpanInfo(expr, ast.sourceSpan);
                    return expr;
                }
            }
            else {
                throw new Error("Unreachable: " + binding);
            }
        };
        return TcbExpressionTranslator;
    }());
    /**
     * Call the type constructor of a directive instance on a given template node, inferring a type for
     * the directive instance from any bound inputs.
     */
    function tcbCallTypeCtor(dir, tcb, inputs) {
        var typeCtor = tcb.env.typeCtorFor(dir);
        // Construct an array of `ts.PropertyAssignment`s for each of the directive's inputs.
        var members = inputs.map(function (input) {
            var propertyName = ts.createStringLiteral(input.field);
            if (input.type === 'binding') {
                // For bound inputs, the property is assigned the binding expression.
                var expr = input.expression;
                if (!tcb.env.config.checkTypeOfInputBindings) {
                    // If checking the type of bindings is disabled, cast the resulting expression to 'any'
                    // before the assignment.
                    expr = ts_util_1.tsCastToAny(expr);
                }
                else if (!tcb.env.config.strictNullInputBindings) {
                    // If strict null checks are disabled, erase `null` and `undefined` from the type by
                    // wrapping the expression in a non-null assertion.
                    expr = ts.createNonNullExpression(expr);
                }
                var assignment = ts.createPropertyAssignment(propertyName, diagnostics_1.wrapForDiagnostics(expr));
                diagnostics_1.addParseSpanInfo(assignment, input.sourceSpan);
                return assignment;
            }
            else {
                // A type constructor is required to be called with all input properties, so any unset
                // inputs are simply assigned a value of type `any` to ignore them.
                return ts.createPropertyAssignment(propertyName, expression_1.NULL_AS_ANY);
            }
        });
        // Call the `ngTypeCtor` method on the directive class, with an object literal argument created
        // from the matched inputs.
        return ts.createCall(
        /* expression */ typeCtor, 
        /* typeArguments */ undefined, 
        /* argumentsArray */ [ts.createObjectLiteral(members)]);
    }
    function tcbGetDirectiveInputs(el, dir, tcb, scope) {
        var e_17, _a;
        // Only the first binding to a property is written.
        // TODO(alxhub): produce an error for duplicate bindings to the same property, independently of
        // this logic.
        var directiveInputs = new Map();
        // `dir.inputs` is an object map of field names on the directive class to property names.
        // This is backwards from what's needed to match bindings - a map of properties to field names
        // is desired. Invert `dir.inputs` into `propMatch` to create this map.
        var propMatch = new Map();
        var inputs = dir.inputs;
        Object.keys(inputs).forEach(function (key) {
            Array.isArray(inputs[key]) ? propMatch.set(inputs[key][0], key) :
                propMatch.set(inputs[key], key);
        });
        el.inputs.forEach(processAttribute);
        el.attributes.forEach(processAttribute);
        if (el instanceof compiler_1.TmplAstTemplate) {
            el.templateAttrs.forEach(processAttribute);
        }
        try {
            // Add unset directive inputs for each of the remaining unset fields.
            // Note: it's actually important here that `propMatch.values()` isn't used, as there can be
            // multiple fields which share the same property name and only one of them will be listed as a
            // value in `propMatch`.
            for (var _b = tslib_1.__values(Object.keys(inputs)), _c = _b.next(); !_c.done; _c = _b.next()) {
                var field = _c.value;
                if (!directiveInputs.has(field)) {
                    directiveInputs.set(field, { type: 'unset', field: field });
                }
            }
        }
        catch (e_17_1) { e_17 = { error: e_17_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_17) throw e_17.error; }
        }
        return Array.from(directiveInputs.values());
        /**
         * Add a binding expression to the map for each input/template attribute of the directive that has
         * a matching binding.
         */
        function processAttribute(attr) {
            // Skip non-property bindings.
            if (attr instanceof compiler_1.TmplAstBoundAttribute && attr.type !== 0 /* Property */) {
                return;
            }
            // Skip text attributes if configured to do so.
            if (!tcb.env.config.checkTypeOfAttributes && attr instanceof compiler_1.TmplAstTextAttribute) {
                return;
            }
            // Skip the attribute if the directive does not have an input for it.
            if (!propMatch.has(attr.name)) {
                return;
            }
            var field = propMatch.get(attr.name);
            // Skip the attribute if a previous binding also wrote to it.
            if (directiveInputs.has(field)) {
                return;
            }
            var expr;
            if (attr instanceof compiler_1.TmplAstBoundAttribute) {
                // Produce an expression representing the value of the binding.
                expr = tcbExpression(attr.value, tcb, scope);
            }
            else {
                // For regular attributes with a static string value, use the represented string literal.
                expr = ts.createStringLiteral(attr.value);
            }
            directiveInputs.set(field, {
                type: 'binding',
                field: field,
                expression: expr,
                sourceSpan: attr.sourceSpan,
            });
        }
    }
    var EVENT_PARAMETER = '$event';
    /**
     * Creates an arrow function to be used as handler function for event bindings. The handler
     * function has a single parameter `$event` and the bound event's handler `AST` represented as a
     * TypeScript expression as its body.
     *
     * When `eventType` is set to `Infer`, the `$event` parameter will not have an explicit type. This
     * allows for the created handler function to have its `$event` parameter's type inferred based on
     * how it's used, to enable strict type checking of event bindings. When set to `Any`, the `$event`
     * parameter will have an explicit `any` type, effectively disabling strict type checking of event
     * bindings. Alternatively, an explicit type can be passed for the `$event` parameter.
     */
    function tcbCreateEventHandler(event, tcb, scope, eventType) {
        var handler = tcbEventHandlerExpression(event.handler, tcb, scope);
        var eventParamType;
        if (eventType === 0 /* Infer */) {
            eventParamType = undefined;
        }
        else if (eventType === 1 /* Any */) {
            eventParamType = ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword);
        }
        else {
            eventParamType = eventType;
        }
        // Obtain all guards that have been applied to the scope and its parents, as they have to be
        // repeated within the handler function for their narrowing to be in effect within the handler.
        var guards = scope.guards();
        var body = ts.createExpressionStatement(handler);
        if (guards !== null) {
            // Wrap the body in an `if` statement containing all guards that have to be applied.
            body = ts.createIf(guards, body);
        }
        var eventParam = ts.createParameter(
        /* decorators */ undefined, 
        /* modifiers */ undefined, 
        /* dotDotDotToken */ undefined, 
        /* name */ EVENT_PARAMETER, 
        /* questionToken */ undefined, 
        /* type */ eventParamType);
        return ts.createFunctionExpression(
        /* modifier */ undefined, 
        /* asteriskToken */ undefined, 
        /* name */ undefined, 
        /* typeParameters */ undefined, 
        /* parameters */ [eventParam], 
        /* type */ ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword), 
        /* body */ ts.createBlock([body]));
    }
    /**
     * Similar to `tcbExpression`, this function converts the provided `AST` expression into a
     * `ts.Expression`, with special handling of the `$event` variable that can be used within event
     * bindings.
     */
    function tcbEventHandlerExpression(ast, tcb, scope) {
        var translator = new TcbEventHandlerTranslator(tcb, scope);
        return translator.translate(ast);
    }
    var TcbEventHandlerTranslator = /** @class */ (function (_super) {
        tslib_1.__extends(TcbEventHandlerTranslator, _super);
        function TcbEventHandlerTranslator() {
            return _super !== null && _super.apply(this, arguments) || this;
        }
        TcbEventHandlerTranslator.prototype.resolve = function (ast) {
            // Recognize a property read on the implicit receiver corresponding with the event parameter
            // that is available in event bindings. Since this variable is a parameter of the handler
            // function that the converted expression becomes a child of, just create a reference to the
            // parameter by its name.
            if (ast instanceof compiler_1.PropertyRead && ast.receiver instanceof compiler_1.ImplicitReceiver &&
                ast.name === EVENT_PARAMETER) {
                var event_1 = ts.createIdentifier(EVENT_PARAMETER);
                diagnostics_1.addParseSpanInfo(event_1, ast.nameSpan);
                return event_1;
            }
            return _super.prototype.resolve.call(this, ast);
        };
        return TcbEventHandlerTranslator;
    }(TcbExpressionTranslator));
    function requiresInlineTypeCheckBlock(node) {
        // In order to qualify for a declared TCB (not inline) two conditions must be met:
        // 1) the class must be exported
        // 2) it must not have constrained generic types
        if (!ts_util_1.checkIfClassIsExported(node)) {
            // Condition 1 is false, the class is not exported.
            return true;
        }
        else if (!ts_util_1.checkIfGenericTypesAreUnbound(node)) {
            // Condition 2 is false, the class has constrained generic types
            return true;
        }
        else {
            return false;
        }
    }
    exports.requiresInlineTypeCheckBlock = requiresInlineTypeCheckBlock;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHlwZV9jaGVja19ibG9jay5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvdHlwZWNoZWNrL3NyYy90eXBlX2NoZWNrX2Jsb2NrLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFFSCw4Q0FBMlc7SUFDM1csK0JBQWlDO0lBTWpDLHlGQUFxRztJQUdyRyx1RkFBMEQ7SUFFMUQsdUdBQStEO0lBQy9ELGlGQUFpSztJQUlqSzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O09BcUJHO0lBQ0gsU0FBZ0Isc0JBQXNCLENBQ2xDLEdBQWdCLEVBQUUsR0FBcUQsRUFBRSxJQUFtQixFQUM1RixJQUE0QixFQUFFLGdCQUFrQyxFQUNoRSxXQUF3QztRQUMxQyxJQUFNLEdBQUcsR0FBRyxJQUFJLE9BQU8sQ0FDbkIsR0FBRyxFQUFFLGdCQUFnQixFQUFFLFdBQVcsRUFBRSxJQUFJLENBQUMsRUFBRSxFQUFFLElBQUksQ0FBQyxXQUFXLEVBQUUsSUFBSSxDQUFDLEtBQUssRUFBRSxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDN0YsSUFBTSxLQUFLLEdBQUcsS0FBSyxDQUFDLFFBQVEsQ0FBQyxHQUFHLEVBQUUsSUFBSSxFQUFFLEdBQUcsQ0FBQyxXQUFXLENBQUMsTUFBTSxDQUFDLFFBQVUsRUFBRSxXQUFXLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDN0YsSUFBTSxVQUFVLEdBQUcsR0FBRyxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsQ0FBQztRQUMxQyxJQUFJLENBQUMsRUFBRSxDQUFDLG1CQUFtQixDQUFDLFVBQVUsQ0FBQyxFQUFFO1lBQ3ZDLE1BQU0sSUFBSSxLQUFLLENBQ1gsbUVBQWlFLEdBQUcsQ0FBQyxTQUFXLENBQUMsQ0FBQztTQUN2RjtRQUNELElBQU0sU0FBUyxHQUFHLENBQUMsV0FBVyxDQUFD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aEUsT0FBTyxJQUFJLENBQUM7U0FDYjthQUFNO1lBQ0wsT0FBTyxLQUFLLENBQUM7U0FDZDtJQUNILENBQUM7SUFiRCxvRUFhQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0FTVCwgQmluZGluZ1BpcGUsIEJpbmRpbmdUeXBlLCBCb3VuZFRhcmdldCwgRFlOQU1JQ19UWVBFLCBJbXBsaWNpdFJlY2VpdmVyLCBNZXRob2RDYWxsLCBQYXJzZWRFdmVudFR5cGUsIFBhcnNlU291cmNlU3BhbiwgUHJvcGVydHlSZWFkLCBQcm9wZXJ0eVdyaXRlLCBTY2hlbWFNZXRhZGF0YSwgVG1wbEFzdEJvdW5kQXR0cmlidXRlLCBUbXBsQXN0Qm91bmRFdmVudCwgVG1wbEFzdEJvdW5kVGV4dCwgVG1wbEFzdEVsZW1lbnQsIFRtcGxBc3ROb2RlLCBUbXBsQXN0UmVmZXJlbmNlLCBUbXBsQXN0VGVtcGxhdGUsIFRtcGxBc3RUZXh0QXR0cmlidXRlLCBUbXBsQXN0VmFyaWFibGV9IGZyb20gJ0Bhbmd1bGFyL2NvbXBpbGVyJztcbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge1JlZmVyZW5jZX0gZnJvbSAnLi4vLi4vaW1wb3J0cyc7XG5pbXBvcnQge0NsYXNzRGVjbGFyYXRpb259IGZyb20gJy4uLy4uL3JlZmxlY3Rpb24nO1xuaW1wb3J0IHtUZW1wbGF0ZUlkLCBUeXBlQ2hlY2thYmxlRGlyZWN0aXZlTWV0YSwgVHlwZUNoZWNrQmxvY2tNZXRhZGF0YX0gZnJvbSAnLi4vYXBpJztcblxuaW1wb3J0IHthZGRQYXJzZVNwYW5JbmZvLCBhZGRUZW1wbGF0ZUlkLCBpZ25vcmVEaWFnbm9zdGljcywgd3JhcEZvckRpYWdub3N0aWNzfSBmcm9tICcuL2RpYWdub3N0aWNzJztcbmltcG9ydCB7RG9tU2NoZW1hQ2hlY2tlcn0gZnJvbSAnLi9kb20nO1xuaW1wb3J0IHtFbnZpcm9ubWVudH0gZnJvbSAnLi9lbnZpcm9ubWVudCc7XG5pbXBvcnQge2FzdFRvVHlwZXNjcmlwdCwgTlVMTF9BU19BTll9IGZyb20gJy4vZXhwcmVzc2lvbic7XG5pbXBvcnQge091dE9mQmFuZERpYWdub3N0aWNSZWNvcmRlcn0gZnJvbSAnLi9vb2InO1xuaW1wb3J0IHtFeHByZXNzaW9uU2VtYW50aWNWaXNpdG9yfSBmcm9tICcuL3RlbXBsYXRlX3NlbWFudGljcyc7XG5pbXBvcnQge2NoZWNrSWZDbGFzc0lzRXhwb3J0ZWQsIGNoZWNrSWZHZW5lcmljVHlwZXNBcmVVbmJvdW5kLCB0c0NhbGxNZXRob2QsIHRzQ2FzdFRvQW55LCB0c0NyZWF0ZUVsZW1lbnQsIHRzQ3JlYXRlVmFyaWFibGUsIHRzRGVjbGFyZVZhcmlhYmxlfSBmcm9tICcuL3RzX3V0aWwnO1xuXG5cblxuLyoqXG4gKiBHaXZlbiBhIGB0cy5DbGFzc0RlY2xhcmF0aW9uYCBmb3IgYSBjb21wb25lbnQsIGFuZCBtZXRhZGF0YSByZWdhcmRpbmcgdGhhdCBjb21wb25lbnQsIGNvbXBvc2UgYVxuICogXCJ0eXBlIGNoZWNrIGJsb2NrXCIgZnVuY3Rpb24uXG4gKlxuICogV2hlbiBwYXNzZWQgdGhyb3VnaCBUeXBlU2NyaXB0J3MgVHlwZUNoZWNrZXIsIHR5cGUgZXJyb3JzIHRoYXQgYXJpc2Ugd2l0aGluIHRoZSB0eXBlIGNoZWNrIGJsb2NrXG4gKiBmdW5jdGlvbiBpbmRpY2F0ZSBpc3N1ZXMgaW4gdGhlIHRlbXBsYXRlIGl0c2VsZi5cbiAqXG4gKiBBcyBhIHNpZGUgZWZmZWN0IG9mIGdlbmVyYXRpbmcgYSBUQ0IgZm9yIHRoZSBjb21wb25lbnQsIGB0cy5EaWFnbm9zdGljYHMgbWF5IGFsc28gYmUgcHJvZHVjZWRcbiAqIGRpcmVjdGx5IGZvciBpc3N1ZXMgd2l0aGluIHRoZSB0ZW1wbGF0ZSB3aGljaCBhcmUgaWRlbnRpZmllZCBkdXJpbmcgZ2VuZXJhdGlvbi4gVGhlc2UgaXNzdWVzIGFyZVxuICogcmVjb3JkZWQgaW4gZWl0aGVyIHRoZSBgZG9tU2NoZW1hQ2hlY2tlcmAgKHdoaWNoIGNoZWNrcyB1c2FnZSBvZiBET00gZWxlbWVudHMgYW5kIGJpbmRpbmdzKSBhc1xuICogd2VsbCBhcyB0aGUgYG9vYlJlY29yZGVyYCAod2hpY2ggcmVjb3JkcyBlcnJvcnMgd2hlbiB0aGUgdHlwZS1jaGVja2luZyBjb2RlIGdlbmVyYXRvciBpcyB1bmFibGVcbiAqIHRvIHN1ZmZpY2llbnRseSB1bmRlcnN0YW5kIGEgdGVtcGxhdGUpLlxuICpcbiAqIEBwYXJhbSBlbnYgYW4gYEVudmlyb25tZW50YCBpbnRvIHdoaWNoIHR5cGUtY2hlY2tpbmcgY29kZSB3aWxsIGJlIGdlbmVyYXRlZC5cbiAqIEBwYXJhbSByZWYgYSBgUmVmZXJlbmNlYCB0byB0aGUgY29tcG9uZW50IGNsYXNzIHdoaWNoIHNob3VsZCBiZSB0eXBlLWNoZWNrZWQuXG4gKiBAcGFyYW0gbmFtZSBhIGB0cy5JZGVudGlmaWVyYCB0byB1c2UgZm9yIHRoZSBnZW5lcmF0ZWQgYHRzLkZ1bmN0aW9uRGVjbGFyYXRpb25gLlxuICogQHBhcmFtIG1ldGEgbWV0YWRhdGEgYWJvdXQgdGhlIGNvbXBvbmVudCdzIHRlbXBsYXRlIGFuZCB0aGUgZnVuY3Rpb24gYmVpbmcgZ2VuZXJhdGVkLlxuICogQHBhcmFtIGRvbVNjaGVtYUNoZWNrZXIgdXNlZCB0byBjaGVjayBhbmQgcmVjb3JkIGVycm9ycyByZWdhcmRpbmcgaW1wcm9wZXIgdXNhZ2Ugb2YgRE9NIGVsZW1lbnRzXG4gKiBhbmQgYmluZGluZ3MuXG4gKiBAcGFyYW0gb29iUmVjb3JkZXIgdXNlZCB0byByZWNvcmQgZXJyb3JzIHJlZ2FyZGluZyB0ZW1wbGF0ZSBlbGVtZW50cyB3aGljaCBjb3VsZCBub3QgYmUgY29ycmVjdGx5XG4gKiB0cmFuc2xhdGVkIGludG8gdHlwZXMgZHVyaW5nIFRDQiBnZW5lcmF0aW9uLlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2VuZXJhdGVUeXBlQ2hlY2tCbG9jayhcbiAgICBlbnY6IEVudmlyb25tZW50LCByZWY6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPHRzLkNsYXNzRGVjbGFyYXRpb24+PiwgbmFtZTogdHMuSWRlbnRpZmllcixcbiAgICBtZXRhOiBUeXBlQ2hlY2tCbG9ja01ldGFkYXRhLCBkb21TY2hlbWFDaGVja2VyOiBEb21TY2hlbWFDaGVja2VyLFxuICAgIG9vYlJlY29yZGVyOiBPdXRPZkJhbmREaWFnbm9zdGljUmVjb3JkZXIpOiB0cy5GdW5jdGlvbkRlY2xhcmF0aW9uIHtcbiAgY29uc3QgdGNiID0gbmV3IENvbnRleHQoXG4gICAgICBlbnYsIGRvbVNjaGVtYUNoZWNrZXIsIG9vYlJlY29yZGVyLCBtZXRhLmlkLCBtZXRhLmJvdW5kVGFyZ2V0LCBtZXRhLnBpcGVzLCBtZXRhLnNjaGVtYXMpO1xuICBjb25zdCBzY29wZSA9IFNjb3BlLmZvck5vZGVzKHRjYiwgbnVsbCwgdGNiLmJvdW5kVGFyZ2V0LnRhcmdldC50ZW1wbGF0ZSAhLCAvKiBndWFyZCAqLyBudWxsKTtcbiAgY29uc3QgY3R4UmF3VHlwZSA9IGVudi5yZWZlcmVuY2VUeXBlKHJlZik7XG4gIGlmICghdHMuaXNUeXBlUmVmZXJlbmNlTm9kZShjdHhSYXdUeXBlKSkge1xuICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgYEV4cGVjdGVkIFR5cGVSZWZlcmVuY2VOb2RlIHdoZW4gcmVmZXJlbmNpbmcgdGhlIGN0eCBwYXJhbSBmb3IgJHtyZWYuZGVidWdOYW1lfWApO1xuICB9XG4gIGNvbnN0IHBhcmFtTGlzdCA9IFt0Y2JDdHhQYXJhbShyZWYubm9kZSwgY3R4UmF3VHlwZS50eXBlTmFtZSwgZW52LmNvbmZpZy51c2VDb250ZXh0R2VuZXJpY1R5cGUpXTtcblxuICBjb25zdCBzY29wZVN0YXRlbWVudHMgPSBzY29wZS5yZW5kZXIoKTtcbiAgY29uc3QgaW5uZXJCb2R5ID0gdHMuY3JlYXRlQmxvY2soW1xuICAgIC4uLmVudi5nZXRQcmVsdWRlU3RhdGVtZW50cygpLFxuICAgIC4uLnNjb3BlU3RhdGVtZW50cyxcbiAgXSk7XG5cbiAgLy8gV3JhcCB0aGUgYm9keSBpbiBhbiBcImlmICh0cnVlKVwiIGV4cHJlc3Npb24uIFRoaXMgaXMgdW5uZWNlc3NhcnkgYnV0IGhhcyB0aGUgZWZmZWN0IG9mIGNhdXNpbmdcbiAgLy8gdGhlIGB0cy5QcmludGVyYCB0byBmb3JtYXQgdGhlIHR5cGUtY2hlY2sgYmxvY2sgbmljZWx5LlxuICBjb25zdCBib2R5ID0gdHMuY3JlYXRlQmxvY2soW3RzLmNyZWF0ZUlmKHRzLmNyZWF0ZVRydWUoKSwgaW5uZXJCb2R5LCB1bmRlZmluZWQpXSk7XG4gIGNvbnN0IGZuRGVjbCA9IHRzLmNyZWF0ZUZ1bmN0aW9uRGVjbGFyYXRpb24oXG4gICAgICAvKiBkZWNvcmF0b3JzICovIHVuZGVmaW5lZCxcbiAgICAgIC8qIG1vZGlmaWVycyAqLyB1bmRlZmluZWQsXG4gICAgICAvKiBhc3Rlcmlza1Rva2VuICovIHVuZGVmaW5lZCxcbiAgICAgIC8qIG5hbWUgKi8gbmFtZSxcbiAgICAgIC8qIHR5cGVQYXJhbWV0ZXJzICovIGVudi5jb25maWcudXNlQ29udGV4dEdlbmVyaWNUeXBlID8gcmVmLm5vZGUudHlwZVBhcmFtZXRlcnMgOiB1bmRlZmluZWQsXG4gICAgICAvKiBwYXJhbWV0ZXJzICovIHBhcmFtTGlzdCxcbiAgICAgIC8qIHR5cGUgKi8gdW5kZWZpbmVkLFxuICAgICAgLyogYm9keSAqLyBib2R5KTtcbiAgYWRkVGVtcGxhdGVJZChmbkRlY2wsIG1ldGEuaWQpO1xuICByZXR1cm4gZm5EZWNsO1xufVxuXG4vKipcbiAqIEEgY29kZSBnZW5lcmF0aW9uIG9wZXJhdGlvbiB0aGF0J3MgaW52b2x2ZWQgaW4gdGhlIGNvbnN0cnVjdGlvbiBvZiBhIFR5cGUgQ2hlY2sgQmxvY2suXG4gKlxuICogVGhlIGdlbmVyYXRpb24gb2YgYSBUQ0IgaXMgbm9uLWxpbmVhci4gQmluZGluZ3Mgd2l0aGluIGEgdGVtcGxhdGUgbWF5IHJlc3VsdCBpbiB0aGUgbmVlZCB0b1xuICogY29uc3RydWN0IGNlcnRhaW4gdHlwZXMgZWFybGllciB0aGFuIHRoZXkgb3RoZXJ3aXNlIHdvdWxkIGJlIGNvbnN0cnVjdGVkLiBUaGF0IGlzLCBpZiB0aGVcbiAqIGdlbmVyYXRpb24gb2YgYSBUQ0IgZm9yIGEgdGVtcGxhdGUgaXMgYnJva2VuIGRvd24gaW50byBzcGVjaWZpYyBvcGVyYXRpb25zIChjb25zdHJ1Y3RpbmcgYVxuICogZGlyZWN0aXZlLCBleHRyYWN0aW5nIGEgdmFyaWFibGUgZnJvbSBhIGxldC0gb3BlcmF0aW9uLCBldGMpLCB0aGVuIGl0J3MgcG9zc2libGUgZm9yIG9wZXJhdGlvbnNcbiAqIGVhcmxpZXIgaW4gdGhlIHNlcXVlbmNlIHRvIGRlcGVuZCBvbiBvcGVyYXRpb25zIHdoaWNoIG9jY3VyIGxhdGVyIGluIHRoZSBzZXF1ZW5jZS5cbiAqXG4gKiBgVGNiT3BgIGFic3RyYWN0cyB0aGUgZGlmZmVyZW50IHR5cGVzIG9mIG9wZXJhdGlvbnMgd2hpY2ggYXJlIHJlcXVpcmVkIHRvIGNvbnZlcnQgYSB0ZW1wbGF0ZSBpbnRvXG4gKiBhIFRDQi4gVGhpcyBhbGxvd3MgZm9yIHR3byBwaGFzZXMgb2YgcHJvY2Vzc2luZyBmb3IgdGhlIHRlbXBsYXRlLCB3aGVyZSAxKSBhIGxpbmVhciBzZXF1ZW5jZSBvZlxuICogYFRjYk9wYHMgaXMgZ2VuZXJhdGVkLCBhbmQgdGhlbiAyKSB0aGVzZSBvcGVyYXRpb25zIGFyZSBleGVjdXRlZCwgbm90IG5lY2Vzc2FyaWx5IGluIGxpbmVhclxuICogb3JkZXIuXG4gKlxuICogRWFjaCBgVGNiT3BgIG1heSBpbnNlcnQgc3RhdGVtZW50cyBpbnRvIHRoZSBib2R5IG9mIHRoZSBUQ0IsIGFuZCBhbHNvIG9wdGlvbmFsbHkgcmV0dXJuIGFcbiAqIGB0cy5FeHByZXNzaW9uYCB3aGljaCBjYW4gYmUgdXNlZCB0byByZWZlcmVuY2UgdGhlIG9wZXJhdGlvbidzIHJlc3VsdC5cbiAqL1xuYWJzdHJhY3QgY2xhc3MgVGNiT3Age1xuICBhYnN0cmFjdCBleGVjdXRlKCk6IHRzLkV4cHJlc3Npb258bnVsbDtcblxuICAvKipcbiAgICogUmVwbGFjZW1lbnQgdmFsdWUgb3Igb3BlcmF0aW9uIHVzZWQgd2hpbGUgdGhpcyBgVGNiT3BgIGlzIGV4ZWN1dGluZyAoaS5lLiB0byByZXNvbHZlIGNpcmN1bGFyXG4gICAqIHJlZmVyZW5jZXMgZHVyaW5nIGl0cyBleGVjdXRpb24pLlxuICAgKlxuICAgKiBUaGlzIGlzIHVzdWFsbHkgYSBgbnVsbCFgIGV4cHJlc3Npb24gKHdoaWNoIGFza3MgVFMgdG8gaW5mZXIgYW4gYXBwcm9wcmlhdGUgdHlwZSksIGJ1dCBhbm90aGVyXG4gICAqIGBUY2JPcGAgY2FuIGJlIHJldHVybmVkIGluIGNhc2VzIHdoZXJlIGFkZGl0aW9uYWwgY29kZSBnZW5lcmF0aW9uIGlzIG5lY2Vzc2FyeSB0byBkZWFsIHdpdGhcbiAgICogY2lyY3VsYXIgcmVmZXJlbmNlcy5cbiAgICovXG4gIGNpcmN1bGFyRmFsbGJhY2soKTogVGNiT3B8dHMuRXhwcmVzc2lvbiB7XG4gICAgcmV0dXJuIElORkVSX1RZUEVfRk9SX0NJUkNVTEFSX09QX0VYUFI7XG4gIH1cbn1cblxuLyoqXG4gKiBBIGBUY2JPcGAgd2hpY2ggY3JlYXRlcyBhbiBleHByZXNzaW9uIGZvciBhIG5hdGl2ZSBET00gZWxlbWVudCAob3Igd2ViIGNvbXBvbmVudCkgZnJvbSBhXG4gKiBgVG1wbEFzdEVsZW1lbnRgLlxuICpcbiAqIEV4ZWN1dGluZyB0aGlzIG9wZXJhdGlvbiByZXR1cm5zIGEgcmVmZXJlbmNlIHRvIHRoZSBlbGVtZW50IHZhcmlhYmxlLlxuICovXG5jbGFzcyBUY2JFbGVtZW50T3AgZXh0ZW5kcyBUY2JPcCB7XG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgdGNiOiBDb250ZXh0LCBwcml2YXRlIHNjb3BlOiBTY29wZSwgcHJpdmF0ZSBlbGVtZW50OiBUbXBsQXN0RWxlbWVudCkge1xuICAgIHN1cGVyKCk7XG4gIH1cblxuICBleGVjdXRlKCk6IHRzLklkZW50aWZpZXIge1xuICAgIGNvbnN0IGlkID0gdGhpcy50Y2IuYWxsb2NhdGVJZCgpO1xuICAgIC8vIEFkZCB0aGUgZGVjbGFyYXRpb24gb2YgdGhlIGVsZW1lbnQgdXNpbmcgZG9jdW1lbnQuY3JlYXRlRWxlbWVudC5cbiAgICBjb25zdCBpbml0aWFsaXplciA9IHRzQ3JlYXRlRWxlbWVudCh0aGlzLmVsZW1lbnQubmFtZSk7XG4gICAgYWRkUGFyc2VTcGFuSW5mbyhpbml0aWFsaXplciwgdGhpcy5lbGVtZW50LnN0YXJ0U291cmNlU3BhbiB8fCB0aGlzLmVsZW1lbnQuc291cmNlU3Bhbik7XG4gICAgdGhpcy5zY29wZS5hZGRTdGF0ZW1lbnQodHNDcmVhdGVWYXJpYWJsZShpZCwgaW5pdGlhbGl6ZXIpKTtcbiAgICByZXR1cm4gaWQ7XG4gIH1cbn1cblxuLyoqXG4gKiBBIGBUY2JPcGAgd2hpY2ggY3JlYXRlcyBhbiBleHByZXNzaW9uIGZvciBwYXJ0aWN1bGFyIGxldC0gYFRtcGxBc3RWYXJpYWJsZWAgb24gYVxuICogYFRtcGxBc3RUZW1wbGF0ZWAncyBjb250ZXh0LlxuICpcbiAqIEV4ZWN1dGluZyB0aGlzIG9wZXJhdGlvbiByZXR1cm5zIGEgcmVmZXJlbmNlIHRvIHRoZSB2YXJpYWJsZSB2YXJpYWJsZSAobG9sKS5cbiAqL1xuY2xhc3MgVGNiVmFyaWFibGVPcCBleHRlbmRzIFRjYk9wIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHRjYjogQ29udGV4dCwgcHJpdmF0ZSBzY29wZTogU2NvcGUsIHByaXZhdGUgdGVtcGxhdGU6IFRtcGxBc3RUZW1wbGF0ZSxcbiAgICAgIHByaXZhdGUgdmFyaWFibGU6IFRtcGxBc3RWYXJpYWJsZSkge1xuICAgIHN1cGVyKCk7XG4gIH1cblxuICBleGVjdXRlKCk6IHRzLklkZW50aWZpZXIge1xuICAgIC8vIExvb2sgZm9yIGEgY29udGV4dCB2YXJpYWJsZSBmb3IgdGhlIHRlbXBsYXRlLlxuICAgIGNvbnN0IGN0eCA9IHRoaXMuc2NvcGUucmVzb2x2ZSh0aGlzLnRlbXBsYXRlKTtcblxuICAgIC8vIEFsbG9jYXRlIGFuIGlkZW50aWZpZXIgZm9yIHRoZSBUbXBsQXN0VmFyaWFibGUsIGFuZCBpbml0aWFsaXplIGl0IHRvIGEgcmVhZCBvZiB0aGUgdmFyaWFibGVcbiAgICAvLyBvbiB0aGUgdGVtcGxhdGUgY29udGV4dC5cbiAgICBjb25zdCBpZCA9IHRoaXMudGNiLmFsbG9jYXRlSWQoKTtcbiAgICBjb25zdCBpbml0aWFsaXplciA9IHRzLmNyZWF0ZVByb3BlcnR5QWNjZXNzKFxuICAgICAgICAvKiBleHByZXNzaW9uICovIGN0eCxcbiAgICAgICAgLyogbmFtZSAqLyB0aGlzLnZhcmlhYmxlLnZhbHVlIHx8ICckaW1wbGljaXQnKTtcbiAgICBhZGRQYXJzZVNwYW5JbmZvKGluaXRpYWxpemVyLCB0aGlzLnZhcmlhYmxlLnNvdXJjZVNwYW4pO1xuXG4gICAgLy8gRGVjbGFyZSB0aGUgdmFyaWFibGUsIGFuZCByZXR1cm4gaXRzIGlkZW50aWZpZXIuXG4gICAgdGhpcy5zY29wZS5hZGRTdGF0ZW1lbnQodHNDcmVhdGVWYXJpYWJsZShpZCwgaW5pdGlhbGl6ZXIpKTtcbiAgICByZXR1cm4gaWQ7XG4gIH1cbn1cblxuLyoqXG4gKiBBIGBUY2JPcGAgd2hpY2ggZ2VuZXJhdGVzIGEgdmFyaWFibGUgZm9yIGEgYFRtcGxBc3RUZW1wbGF0ZWAncyBjb250ZXh0LlxuICpcbiAqIEV4ZWN1dGluZyB0aGlzIG9wZXJhdGlvbiByZXR1cm5zIGEgcmVmZXJlbmNlIHRvIHRoZSB0ZW1wbGF0ZSdzIGNvbnRleHQgdmFyaWFibGUuXG4gKi9cbmNsYXNzIFRjYlRlbXBsYXRlQ29udGV4dE9wIGV4dGVuZHMgVGNiT3Age1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIHRjYjogQ29udGV4dCwgcHJpdmF0ZSBzY29wZTogU2NvcGUpIHtcbiAgICBzdXBlcigpO1xuICB9XG5cbiAgZXhlY3V0ZSgpOiB0cy5JZGVudGlmaWVyIHtcbiAgICAvLyBBbGxvY2F0ZSBhIHRlbXBsYXRlIGN0eCB2YXJpYWJsZSBhbmQgZGVjbGFyZSBpdCB3aXRoIGFuICdhbnknIHR5cGUuIFRoZSB0eXBlIG9mIHRoaXMgdmFyaWFibGVcbiAgICAvLyBtYXkgYmUgbmFycm93ZWQgYXMgYSByZXN1bHQgb2YgdGVtcGxhdGUgZ3VhcmQgY29uZGl0aW9ucy5cbiAgICBjb25zdCBjdHggPSB0aGlzLnRjYi5hbGxvY2F0ZUlkKCk7XG4gICAgY29uc3QgdHlwZSA9IHRzLmNyZWF0ZUtleXdvcmRUeXBlTm9kZSh0cy5TeW50YXhLaW5kLkFueUtleXdvcmQpO1xuICAgIHRoaXMuc2NvcGUuYWRkU3RhdGVtZW50KHRzRGVjbGFyZVZhcmlhYmxlKGN0eCwgdHlwZSkpO1xuICAgIHJldHVybiBjdHg7XG4gIH1cbn1cblxuLyoqXG4gKiBBIGBUY2JPcGAgd2hpY2ggZGVzY2VuZHMgaW50byBhIGBUbXBsQXN0VGVtcGxhdGVgJ3MgY2hpbGRyZW4gYW5kIGdlbmVyYXRlcyB0eXBlLWNoZWNraW5nIGNvZGUgZm9yXG4gKiB0aGVtLlxuICpcbiAqIFRoaXMgb3BlcmF0aW9uIHdyYXBzIHRoZSBjaGlsZHJlbidzIHR5cGUtY2hlY2tpbmcgY29kZSBpbiBhbiBgaWZgIGJsb2NrLCB3aGljaCBtYXkgaW5jbHVkZSBvbmVcbiAqIG9yIG1vcmUgdHlwZSBndWFyZCBjb25kaXRpb25zIHRoYXQgbmFycm93IHR5cGVzIHdpdGhpbiB0aGUgdGVtcGxhdGUgYm9keS5cbiAqL1xuY2xhc3MgVGNiVGVtcGxhdGVCb2R5T3AgZXh0ZW5kcyBUY2JPcCB7XG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgdGNiOiBDb250ZXh0LCBwcml2YXRlIHNjb3BlOiBTY29wZSwgcHJpdmF0ZSB0ZW1wbGF0ZTogVG1wbEFzdFRlbXBsYXRlKSB7XG4gICAgc3VwZXIoKTtcbiAgfVxuICBleGVjdXRlKCk6IG51bGwge1xuICAgIC8vIEFuIGBpZmAgd2lsbCBiZSBjb25zdHJ1Y3RlZCwgd2l0aGluIHdoaWNoIHRoZSB0ZW1wbGF0ZSdzIGNoaWxkcmVuIHdpbGwgYmUgdHlwZSBjaGVja2VkLiBUaGVcbiAgICAvLyBgaWZgIGlzIHVzZWQgZm9yIHR3byByZWFzb25zOiBpdCBjcmVhdGVzIGEgbmV3IHN5bnRhY3RpYyBzY29wZSwgaXNvbGF0aW5nIHZhcmlhYmxlcyBkZWNsYXJlZFxuICAgIC8vIGluIHRoZSB0ZW1wbGF0ZSdzIFRDQiBmcm9tIHRoZSBvdXRlciBjb250ZXh0LCBhbmQgaXQgYWxsb3dzIGFueSBkaXJlY3RpdmVzIG9uIHRoZSB0ZW1wbGF0ZXNcbiAgICAvLyB0byBwZXJmb3JtIHR5cGUgbmFycm93aW5nIG9mIGVpdGhlciBleHByZXNzaW9ucyBvciB0aGUgdGVtcGxhdGUncyBjb250ZXh0LlxuICAgIC8vXG4gICAgLy8gVGhlIGd1YXJkIGlzIHRoZSBgaWZgIGJsb2NrJ3MgY29uZGl0aW9uLiBJdCdzIHVzdWFsbHkgc2V0IHRvIGB0cnVlYCBidXQgZGlyZWN0aXZlcyB0aGF0IGV4aXN0XG4gICAgLy8gb24gdGhlIHRlbXBsYXRlIGNhbiB0cmlnZ2VyIGV4dHJhIGd1YXJkIGV4cHJlc3Npb25zIHRoYXQgc2VydmUgdG8gbmFycm93IHR5cGVzIHdpdGhpbiB0aGVcbiAgICAvLyBgaWZgLiBgZ3VhcmRgIGlzIGNhbGN1bGF0ZWQgYnkgc3RhcnRpbmcgd2l0aCBgdHJ1ZWAgYW5kIGFkZGluZyBvdGhlciBjb25kaXRpb25zIGFzIG5lZWRlZC5cbiAgICAvLyBDb2xsZWN0IHRoZXNlIGludG8gYGd1YXJkc2AgYnkgcHJvY2Vzc2luZyB0aGUgZGlyZWN0aXZlcy5cbiAgICBjb25zdCBkaXJlY3RpdmVHdWFyZHM6IHRzLkV4cHJlc3Npb25bXSA9IFtdO1xuXG4gICAgY29uc3QgZGlyZWN0aXZlcyA9IHRoaXMudGNiLmJvdW5kVGFyZ2V0LmdldERpcmVjdGl2ZXNPZk5vZGUodGhpcy50ZW1wbGF0ZSk7XG4gICAgaWYgKGRpcmVjdGl2ZXMgIT09IG51bGwpIHtcbiAgICAgIGZvciAoY29uc3QgZGlyIG9mIGRpcmVjdGl2ZXMpIHtcbiAgICAgICAgY29uc3QgZGlySW5zdElkID0gdGhpcy5zY29wZS5yZXNvbHZlKHRoaXMudGVtcGxhdGUsIGRpcik7XG4gICAgICAgIGNvbnN0IGRpcklkID1cbiAgICAgICAgICAgIHRoaXMudGNiLmVudi5yZWZlcmVuY2UoZGlyLnJlZiBhcyBSZWZlcmVuY2U8Q2xhc3NEZWNsYXJhdGlvbjx0cy5DbGFzc0RlY2xhcmF0aW9uPj4pO1xuXG4gICAgICAgIC8vIFRoZXJlIGFyZSB0d28ga2luZHMgb2YgZ3VhcmRzLiBUZW1wbGF0ZSBndWFyZHMgKG5nVGVtcGxhdGVHdWFyZHMpIGFsbG93IHR5cGUgbmFycm93aW5nIG9mXG4gICAgICAgIC8vIHRoZSBleHByZXNzaW9uIHBhc3NlZCB0byBhbiBASW5wdXQgb2YgdGhlIGRpcmVjdGl2ZS4gU2NhbiB0aGUgZGlyZWN0aXZlIHRvIHNlZSBpZiBpdCBoYXNcbiAgICAgICAgLy8gYW55IHRlbXBsYXRlIGd1YXJkcywgYW5kIGdlbmVyYXRlIHRoZW0gaWYgbmVlZGVkLlxuICAgICAgICBkaXIubmdUZW1wbGF0ZUd1YXJkcy5mb3JFYWNoKGd1YXJkID0+IHtcbiAgICAgICAgICAvLyBGb3IgZWFjaCB0ZW1wbGF0ZSBndWFyZCBmdW5jdGlvbiBvbiB0aGUgZGlyZWN0aXZlLCBsb29rIGZvciBhIGJpbmRpbmcgdG8gdGhhdCBpbnB1dC5cbiAgICAgICAgICBjb25zdCBib3VuZElucHV0ID0gdGhpcy50ZW1wbGF0ZS5pbnB1dHMuZmluZChpID0+IGkubmFtZSA9PT0gZ3VhcmQuaW5wdXROYW1lKSB8fFxuICAgICAgICAgICAgICB0aGlzLnRlbXBsYXRlLnRlbXBsYXRlQXR0cnMuZmluZChcbiAgICAgICAgICAgICAgICAgIChpOiBUbXBsQXN0VGV4dEF0dHJpYnV0ZXxUbXBsQXN0Qm91bmRBdHRyaWJ1dGUpOiBpIGlzIFRtcGxBc3RCb3VuZEF0dHJpYnV0ZSA9PlxuICAgICAgICAgICAgICAgICAgICAgIGkgaW5zdGFuY2VvZiBUbXBsQXN0Qm91bmRBdHRyaWJ1dGUgJiYgaS5uYW1lID09PSBndWFyZC5pbnB1dE5hbWUpO1xuICAgICAgICAgIGlmIChib3VuZElucHV0ICE9PSB1bmRlZmluZWQpIHtcbiAgICAgICAgICAgIC8vIElmIHRoZXJlIGlzIHN1Y2ggYSBiaW5kaW5nLCBnZW5lcmF0ZSBhbiBleHByZXNzaW9uIGZvciBpdC5cbiAgICAgICAgICAgIGNvbnN0IGV4cHIgPSB0Y2JFeHByZXNzaW9uKGJvdW5kSW5wdXQudmFsdWUsIHRoaXMudGNiLCB0aGlzLnNjb3BlKTtcblxuICAgICAgICAgICAgLy8gVGhlIGV4cHJlc3Npb24gaGFzIGFscmVhZHkgYmVlbiBjaGVja2VkIGluIHRoZSB0eXBlIGNvbnN0cnVjdG9yIGludm9jYXRpb24sIHNvXG4gICAgICAgICAgICAvLyBpdCBzaG91bGQgYmUgaWdub3JlZCB3aGVuIHVzZWQgd2l0aGluIGEgdGVtcGxhdGUgZ3VhcmQuXG4gICAgICAgICAgICBpZ25vcmVEaWFnbm9zdGljcyhleHByKTtcblxuICAgICAgICAgICAgaWYgKGd1YXJkLnR5cGUgPT09ICdiaW5kaW5nJykge1xuICAgICAgICAgICAgICAvLyBVc2UgdGhlIGJpbmRpbmcgZXhwcmVzc2lvbiBpdHNlbGYgYXMgZ3VhcmQuXG4gICAgICAgICAgICAgIGRpcmVjdGl2ZUd1YXJkcy5wdXNoKGV4cHIpO1xuICAgICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICAgLy8gQ2FsbCB0aGUgZ3VhcmQgZnVuY3Rpb24gb24gdGhlIGRpcmVjdGl2ZSB3aXRoIHRoZSBkaXJlY3RpdmUgaW5zdGFuY2UgYW5kIHRoYXRcbiAgICAgICAgICAgICAgLy8gZXhwcmVzc2lvbi5cbiAgICAgICAgICAgICAgY29uc3QgZ3VhcmRJbnZva2UgPSB0c0NhbGxNZXRob2QoZGlySWQsIGBuZ1RlbXBsYXRlR3VhcmRfJHtndWFyZC5pbnB1dE5hbWV9YCwgW1xuICAgICAgICAgICAgICAgIGRpckluc3RJZCxcbiAgICAgICAgICAgICAgICBleHByLFxuICAgICAgICAgICAgICBdKTtcbiAgICAgICAgICAgICAgYWRkUGFyc2VTcGFuSW5mbyhndWFyZEludm9rZSwgYm91bmRJbnB1dC52YWx1ZS5zb3VyY2VTcGFuKTtcbiAgICAgICAgICAgICAgZGlyZWN0aXZlR3VhcmRzLnB1c2goZ3VhcmRJbnZva2UpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfSk7XG5cbiAgICAgICAgLy8gVGhlIHNlY29uZCBraW5kIG9mIGd1YXJkIGlzIGEgdGVtcGxhdGUgY29udGV4dCBndWFyZC4gVGhpcyBndWFyZCBuYXJyb3dzIHRoZSB0ZW1wbGF0ZVxuICAgICAgICAvLyByZW5kZXJpbmcgY29udGV4dCB2YXJpYWJsZSBgY3R4YC5cbiAgICAgICAgaWYgKGRpci5oYXNOZ1RlbXBsYXRlQ29udGV4dEd1YXJkICYmIHRoaXMudGNiLmVudi5jb25maWcuYXBwbHlUZW1wbGF0ZUNvbnRleHRHdWFyZHMpIHtcbiAgICAgICAgICBjb25zdCBjdHggPSB0aGlzLnNjb3BlLnJlc29sdmUodGhpcy50ZW1wbGF0ZSk7XG4gICAgICAgICAgY29uc3QgZ3VhcmRJbnZva2UgPSB0c0NhbGxNZXRob2QoZGlySWQsICduZ1RlbXBsYXRlQ29udGV4dEd1YXJkJywgW2Rpckluc3RJZCwgY3R4XSk7XG4gICAgICAgICAgYWRkUGFyc2VTcGFuSW5mbyhndWFyZEludm9rZSwgdGhpcy50ZW1wbGF0ZS5zb3VyY2VTcGFuKTtcbiAgICAgICAgICBkaXJlY3RpdmVHdWFyZHMucHVzaChndWFyZEludm9rZSk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyBCeSBkZWZhdWx0IHRoZSBndWFyZCBpcyBzaW1wbHkgYHRydWVgLlxuICAgIGxldCBndWFyZDogdHMuRXhwcmVzc2lvbnxudWxsID0gbnVsbDtcblxuICAgIC8vIElmIHRoZXJlIGFyZSBhbnkgZ3VhcmRzIGZyb20gZGlyZWN0aXZlcywgdXNlIHRoZW0gaW5zdGVhZC5cbiAgICBpZiAoZGlyZWN0aXZlR3VhcmRzLmxlbmd0aCA+IDApIHtcbiAgICAgIC8vIFBvcCB0aGUgZmlyc3QgdmFsdWUgYW5kIHVzZSBpdCBhcyB0aGUgaW5pdGlhbGl6ZXIgdG8gcmVkdWNlKCkuIFRoaXMgd2F5LCBhIHNpbmdsZSBndWFyZFxuICAgICAgLy8gd2lsbCBiZSB1c2VkIG9uIGl0cyBvd24sIGJ1dCB0d28gb3IgbW9yZSB3aWxsIGJlIGNvbWJpbmVkIGludG8gYmluYXJ5IEFORCBleHByZXNzaW9ucy5cbiAgICAgIGd1YXJkID0gZGlyZWN0aXZlR3VhcmRzLnJlZHVjZShcbiAgICAgICAgICAoZXhwciwgZGlyR3VhcmQpID0+XG4gICAgICAgICAgICAgIHRzLmNyZWF0ZUJpbmFyeShleHByLCB0cy5TeW50YXhLaW5kLkFtcGVyc2FuZEFtcGVyc2FuZFRva2VuLCBkaXJHdWFyZCksXG4gICAgICAgICAgZGlyZWN0aXZlR3VhcmRzLnBvcCgpISk7XG4gICAgfVxuXG4gICAgLy8gQ3JlYXRlIGEgbmV3IFNjb3BlIGZvciB0aGUgdGVtcGxhdGUuIFRoaXMgY29uc3RydWN0cyB0aGUgbGlzdCBvZiBvcGVyYXRpb25zIGZvciB0aGUgdGVtcGxhdGVcbiAgICAvLyBjaGlsZHJlbiwgYXMgd2VsbCBhcyB0cmFja3MgYmluZGluZ3Mgd2l0aGluIHRoZSB0ZW1wbGF0ZS5cbiAgICBjb25zdCB0bXBsU2NvcGUgPSBTY29wZS5mb3JOb2Rlcyh0aGlzLnRjYiwgdGhpcy5zY29wZSwgdGhpcy50ZW1wbGF0ZSwgZ3VhcmQpO1xuXG4gICAgLy8gUmVuZGVyIHRoZSB0ZW1wbGF0ZSdzIGBTY29wZWAgaW50byBhIGJsb2NrLlxuICAgIGxldCB0bXBsQmxvY2s6IHRzLlN0YXRlbWVudCA9IHRzLmNyZWF0ZUJsb2NrKHRtcGxTY29wZS5yZW5kZXIoKSk7XG4gICAgaWYgKGd1YXJkICE9PSBudWxsKSB7XG4gICAgICAvLyBUaGUgc2NvcGUgaGFzIGEgZ3VhcmQgdGhhdCBuZWVkcyB0byBiZSBhcHBsaWVkLCBzbyB3cmFwIHRoZSB0ZW1wbGF0ZSBibG9jayBpbnRvIGFuIGBpZmBcbiAgICAgIC8vIHN0YXRlbWVudCBjb250YWluaW5nIHRoZSBndWFyZCBleHByZXNzaW9uLlxuICAgICAgdG1wbEJsb2NrID0gdHMuY3JlYXRlSWYoLyogZXhwcmVzc2lvbiAqLyBndWFyZCwgLyogdGhlblN0YXRlbWVudCAqLyB0bXBsQmxvY2spO1xuICAgIH1cbiAgICB0aGlzLnNjb3BlLmFkZFN0YXRlbWVudCh0bXBsQmxvY2spO1xuXG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbn1cblxuLyoqXG4gKiBBIGBUY2JPcGAgd2hpY2ggcmVuZGVycyBhIHRleHQgYmluZGluZyAoaW50ZXJwb2xhdGlvbikgaW50byB0aGUgVENCLlxuICpcbiAqIEV4ZWN1dGluZyB0aGlzIG9wZXJhdGlvbiByZXR1cm5zIG5vdGhpbmcuXG4gKi9cbmNsYXNzIFRjYlRleHRJbnRlcnBvbGF0aW9uT3AgZXh0ZW5kcyBUY2JPcCB7XG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgdGNiOiBDb250ZXh0LCBwcml2YXRlIHNjb3BlOiBTY29wZSwgcHJpdmF0ZSBiaW5kaW5nOiBUbXBsQXN0Qm91bmRUZXh0KSB7XG4gICAgc3VwZXIoKTtcbiAgfVxuXG4gIGV4ZWN1dGUoKTogbnVsbCB7XG4gICAgY29uc3QgZXhwciA9IHRjYkV4cHJlc3Npb24odGhpcy5iaW5kaW5nLnZhbHVlLCB0aGlzLnRjYiwgdGhpcy5zY29wZSk7XG4gICAgdGhpcy5zY29wZS5hZGRTdGF0ZW1lbnQodHMuY3JlYXRlRXhwcmVzc2lvblN0YXRlbWVudChleHByKSk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbn1cblxuLyoqXG4gKiBBIGBUY2JPcGAgd2hpY2ggY29uc3RydWN0cyBhbiBpbnN0YW5jZSBvZiBhIGRpcmVjdGl2ZSB3aXRoIHR5cGVzIGluZmVycmVkIGZyb20gaXRzIGlucHV0cywgd2hpY2hcbiAqIGFsc28gY2hlY2tzIHRoZSBiaW5kaW5ncyB0byB0aGUgZGlyZWN0aXZlIGluIHRoZSBwcm9jZXNzLlxuICpcbiAqIEV4ZWN1dGluZyB0aGlzIG9wZXJhdGlvbiByZXR1cm5zIGEgcmVmZXJlbmNlIHRvIHRoZSBkaXJlY3RpdmUgaW5zdGFuY2UgdmFyaWFibGUgd2l0aCBpdHMgaW5mZXJyZWRcbiAqIHR5cGUuXG4gKi9cbmNsYXNzIFRjYkRpcmVjdGl2ZU9wIGV4dGVuZHMgVGNiT3Age1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgdGNiOiBDb250ZXh0LCBwcml2YXRlIHNjb3BlOiBTY29wZSwgcHJpdmF0ZSBub2RlOiBUbXBsQXN0VGVtcGxhdGV8VG1wbEFzdEVsZW1lbnQsXG4gICAgICBwcml2YXRlIGRpcjogVHlwZUNoZWNrYWJsZURpcmVjdGl2ZU1ldGEpIHtcbiAgICBzdXBlcigpO1xuICB9XG5cbiAgZXhlY3V0ZSgpOiB0cy5JZGVudGlmaWVyIHtcbiAgICBjb25zdCBpZCA9IHRoaXMudGNiLmFsbG9jYXRlSWQoKTtcbiAgICAvLyBQcm9jZXNzIHRoZSBkaXJlY3RpdmUgYW5kIGNvbnN0cnVjdCBleHByZXNzaW9ucyBmb3IgZWFjaCBvZiBpdHMgYmluZGluZ3MuXG4gICAgY29uc3QgaW5wdXRzID0gdGNiR2V0RGlyZWN0aXZlSW5wdXRzKHRoaXMubm9kZSwgdGhpcy5kaXIsIHRoaXMudGNiLCB0aGlzLnNjb3BlKTtcblxuICAgIC8vIENhbGwgdGhlIHR5cGUgY29uc3RydWN0b3Igb2YgdGhlIGRpcmVjdGl2ZSB0byBpbmZlciBhIHR5cGUsIGFuZCBhc3NpZ24gdGhlIGRpcmVjdGl2ZVxuICAgIC8vIGluc3RhbmNlLlxuICAgIGNvbnN0IHR5cGVDdG9yID0gdGNiQ2FsbFR5cGVDdG9yKHRoaXMuZGlyLCB0aGlzLnRjYiwgaW5wdXRzKTtcbiAgICBhZGRQYXJzZVNwYW5JbmZvKHR5cGVDdG9yLCB0aGlzLm5vZGUuc291cmNlU3Bhbik7XG4gICAgdGhpcy5zY29wZS5hZGRTdGF0ZW1lbnQodHNDcmVhdGVWYXJpYWJsZShpZCwgdHlwZUN0b3IpKTtcbiAgICByZXR1cm4gaWQ7XG4gIH1cblxuICBjaXJjdWxhckZhbGxiYWNrKCk6IFRjYk9wIHtcbiAgICByZXR1cm4gbmV3IFRjYkRpcmVjdGl2ZUNpcmN1bGFyRmFsbGJhY2tPcCh0aGlzLnRjYiwgdGhpcy5zY29wZSwgdGhpcy5ub2RlLCB0aGlzLmRpcik7XG4gIH1cbn1cblxuLyoqXG4gKiBBIGBUY2JPcGAgd2hpY2ggaXMgdXNlZCB0byBnZW5lcmF0ZSBhIGZhbGxiYWNrIGV4cHJlc3Npb24gaWYgdGhlIGluZmVyZW5jZSBvZiBhIGRpcmVjdGl2ZSB0eXBlXG4gKiB2aWEgYFRjYkRpcmVjdGl2ZU9wYCByZXF1aXJlcyBhIHJlZmVyZW5jZSB0byBpdHMgb3duIHR5cGUuIFRoaXMgY2FuIGhhcHBlbiB1c2luZyBhIHRlbXBsYXRlXG4gKiByZWZlcmVuY2U6XG4gKlxuICogYGBgaHRtbFxuICogPHNvbWUtY21wICNyZWYgW3Byb3BdPVwicmVmLmZvb1wiPjwvc29tZS1jbXA+XG4gKiBgYGBcbiAqXG4gKiBJbiB0aGlzIGNhc2UsIGBUY2JEaXJlY3RpdmVDaXJjdWxhckZhbGxiYWNrT3BgIHdpbGwgYWRkIGEgc2Vjb25kIGluZmVyZW5jZSBvZiB0aGUgZGlyZWN0aXZlIHR5cGVcbiAqIHRvIHRoZSB0eXBlLWNoZWNrIGJsb2NrLCB0aGlzIHRpbWUgY2FsbGluZyB0aGUgZGlyZWN0aXZlJ3MgdHlwZSBjb25zdHJ1Y3RvciB3aXRob3V0IGFueSBpbnB1dFxuICogZXhwcmVzc2lvbnMuIFRoaXMgaW5mZXJzIHRoZSB3aWRlc3QgcG9zc2libGUgc3VwZXJ0eXBlIGZvciB0aGUgZGlyZWN0aXZlLCB3aGljaCBpcyB1c2VkIHRvXG4gKiByZXNvbHZlIGFueSByZWN1cnNpdmUgcmVmZXJlbmNlcyByZXF1aXJlZCB0byBpbmZlciB0aGUgcmVhbCB0eXBlLlxuICovXG5jbGFzcyBUY2JEaXJlY3RpdmVDaXJjdWxhckZhbGxiYWNrT3AgZXh0ZW5kcyBUY2JPcCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSB0Y2I6IENvbnRleHQsIHByaXZhdGUgc2NvcGU6IFNjb3BlLCBwcml2YXRlIG5vZGU6IFRtcGxBc3RUZW1wbGF0ZXxUbXBsQXN0RWxlbWVudCxcbiAgICAgIHByaXZhdGUgZGlyOiBUeXBlQ2hlY2thYmxlRGlyZWN0aXZlTWV0YSkge1xuICAgIHN1cGVyKCk7XG4gIH1cblxuICBleGVjdXRlKCk6IHRzLklkZW50aWZpZXIge1xuICAgIGNvbnN0IGlkID0gdGhpcy50Y2IuYWxsb2NhdGVJZCgpO1xuICAgIGNvbnN0IHR5cGVDdG9yID0gdGhpcy50Y2IuZW52LnR5cGVDdG9yRm9yKHRoaXMuZGlyKTtcbiAgICBjb25zdCBjaXJjdWxhclBsYWNlaG9sZGVyID0gdHMuY3JlYXRlQ2FsbChcbiAgICAgICAgdHlwZUN0b3IsIC8qIHR5cGVBcmd1bWVudHMgKi8gdW5kZWZpbmVkLCBbdHMuY3JlYXRlTm9uTnVsbEV4cHJlc3Npb24odHMuY3JlYXRlTnVsbCgpKV0pO1xuICAgIHRoaXMuc2NvcGUuYWRkU3RhdGVtZW50KHRzQ3JlYXRlVmFyaWFibGUoaWQsIGNpcmN1bGFyUGxhY2Vob2xkZXIpKTtcbiAgICByZXR1cm4gaWQ7XG4gIH1cbn1cblxuLyoqXG4gKiBBIGBUY2JPcGAgd2hpY2ggZmVlZHMgZWxlbWVudHMgYW5kIHVuY2xhaW1lZCBwcm9wZXJ0aWVzIHRvIHRoZSBgRG9tU2NoZW1hQ2hlY2tlcmAuXG4gKlxuICogVGhlIERPTSBzY2hlbWEgaXMgbm90IGNoZWNrZWQgdmlhIFRDQiBjb2RlIGdlbmVyYXRpb24uIEluc3RlYWQsIHRoZSBgRG9tU2NoZW1hQ2hlY2tlcmAgaW5nZXN0c1xuICogZWxlbWVudHMgYW5kIHByb3BlcnR5IGJpbmRpbmdzIGFuZCBhY2N1bXVsYXRlcyBzeW50aGV0aWMgYHRzLkRpYWdub3N0aWNgcyBvdXQtb2YtYmFuZC4gVGhlc2UgYXJlXG4gKiBsYXRlciBtZXJnZWQgd2l0aCB0aGUgZGlhZ25vc3RpY3MgZ2VuZXJhdGVkIGZyb20gdGhlIFRDQi5cbiAqXG4gKiBGb3IgY29udmVuaWVuY2UsIHRoZSBUQ0IgaXRlcmF0aW9uIG9mIHRoZSB0ZW1wbGF0ZSBpcyB1c2VkIHRvIGRyaXZlIHRoZSBgRG9tU2NoZW1hQ2hlY2tlcmAgdmlhXG4gKiB0aGUgYFRjYkRvbVNjaGVtYUNoZWNrZXJPcGAuXG4gKi9cbmNsYXNzIFRjYkRvbVNjaGVtYUNoZWNrZXJPcCBleHRlbmRzIFRjYk9wIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHRjYjogQ29udGV4dCwgcHJpdmF0ZSBlbGVtZW50OiBUbXBsQXN0RWxlbWVudCwgcHJpdmF0ZSBjaGVja0VsZW1lbnQ6IGJvb2xlYW4sXG4gICAgICBwcml2YXRlIGNsYWltZWRJbnB1dHM6IFNldDxzdHJpbmc+KSB7XG4gICAgc3VwZXIoKTtcbiAgfVxuXG4gIGV4ZWN1dGUoKTogdHMuRXhwcmVzc2lvbnxudWxsIHtcbiAgICBpZiAodGhpcy5jaGVja0VsZW1lbnQpIHtcbiAgICAgIHRoaXMudGNiLmRvbVNjaGVtYUNoZWNrZXIuY2hlY2tFbGVtZW50KHRoaXMudGNiLmlkLCB0aGlzLmVsZW1lbnQsIHRoaXMudGNiLnNjaGVtYXMpO1xuICAgIH1cblxuICAgIC8vIFRPRE8oYWx4aHViKTogdGhpcyBjb3VsZCBiZSBtb3JlIGVmZmljaWVudC5cbiAgICBmb3IgKGNvbnN0IGJpbmRpbmcgb2YgdGhpcy5lbGVtZW50LmlucHV0cykge1xuICAgICAgaWYgKGJpbmRpbmcudHlwZSA9PT0gQmluZGluZ1R5cGUuUHJvcGVydHkgJiYgdGhpcy5jbGFpbWVkSW5wdXRzLmhhcyhiaW5kaW5nLm5hbWUpKSB7XG4gICAgICAgIC8vIFNraXAgdGhpcyBiaW5kaW5nIGFzIGl0IHdhcyBjbGFpbWVkIGJ5IGEgZGlyZWN0aXZlLlxuICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cblxuICAgICAgaWYgKGJpbmRpbmcudHlwZSA9PT0gQmluZGluZ1R5cGUuUHJvcGVydHkpIHtcbiAgICAgICAgaWYgKGJpbmRpbmcubmFtZSAhPT0gJ3N0eWxlJyAmJiBiaW5kaW5nLm5hbWUgIT09ICdjbGFzcycpIHtcbiAgICAgICAgICAvLyBBIGRpcmVjdCBiaW5kaW5nIHRvIGEgcHJvcGVydHkuXG4gICAgICAgICAgY29uc3QgcHJvcGVydHlOYW1lID0gQVRUUl9UT19QUk9QW2JpbmRpbmcubmFtZV0gfHwgYmluZGluZy5uYW1lO1xuICAgICAgICAgIHRoaXMudGNiLmRvbVNjaGVtYUNoZWNrZXIuY2hlY2tQcm9wZXJ0eShcbiAgICAgICAgICAgICAgdGhpcy50Y2IuaWQsIHRoaXMuZWxlbWVudCwgcHJvcGVydHlOYW1lLCBiaW5kaW5nLnNvdXJjZVNwYW4sIHRoaXMudGNiLnNjaGVtYXMpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG59XG5cblxuLyoqXG4gKiBNYXBwaW5nIGJldHdlZW4gYXR0cmlidXRlcyBuYW1lcyB0aGF0IGRvbid0IGNvcnJlc3BvbmQgdG8gdGhlaXIgZWxlbWVudCBwcm9wZXJ0eSBuYW1lcy5cbiAqIE5vdGU6IHRoaXMgbWFwcGluZyBoYXMgdG8gYmUga2VwdCBpbiBzeW5jIHdpdGggdGhlIGVxdWFsbHkgbmFtZWQgbWFwcGluZyBpbiB0aGUgcnVudGltZS5cbiAqL1xuY29uc3QgQVRUUl9UT19QUk9QOiB7W25hbWU6IHN0cmluZ106IHN0cmluZ30gPSB7XG4gICdjbGFzcyc6ICdjbGFzc05hbWUnLFxuICAnZm9yJzogJ2h0bWxGb3InLFxuICAnZm9ybWFjdGlvbic6ICdmb3JtQWN0aW9uJyxcbiAgJ2lubmVySHRtbCc6ICdpbm5lckhUTUwnLFxuICAncmVhZG9ubHknOiAncmVhZE9ubHknLFxuICAndGFiaW5kZXgnOiAndGFiSW5kZXgnLFxufTtcblxuLyoqXG4gKiBBIGBUY2JPcGAgd2hpY2ggZ2VuZXJhdGVzIGNvZGUgdG8gY2hlY2sgXCJ1bmNsYWltZWQgaW5wdXRzXCIgLSBiaW5kaW5ncyBvbiBhbiBlbGVtZW50IHdoaWNoIHdlcmVcbiAqIG5vdCBhdHRyaWJ1dGVkIHRvIGFueSBkaXJlY3RpdmUgb3IgY29tcG9uZW50LCBhbmQgYXJlIGluc3RlYWQgcHJvY2Vzc2VkIGFnYWluc3QgdGhlIEhUTUwgZWxlbWVudFxuICogaXRzZWxmLlxuICpcbiAqIEN1cnJlbnRseSwgb25seSB0aGUgZXhwcmVzc2lvbnMgb2YgdGhlc2UgYmluZGluZ3MgYXJlIGNoZWNrZWQuIFRoZSB0YXJnZXRzIG9mIHRoZSBiaW5kaW5ncyBhcmVcbiAqIGNoZWNrZWQgYWdhaW5zdCB0aGUgRE9NIHNjaGVtYSB2aWEgYSBgVGNiRG9tU2NoZW1hQ2hlY2tlck9wYC5cbiAqXG4gKiBFeGVjdXRpbmcgdGhpcyBvcGVyYXRpb24gcmV0dXJucyBub3RoaW5nLlxuICovXG5jbGFzcyBUY2JVbmNsYWltZWRJbnB1dHNPcCBleHRlbmRzIFRjYk9wIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHRjYjogQ29udGV4dCwgcHJpdmF0ZSBzY29wZTogU2NvcGUsIHByaXZhdGUgZWxlbWVudDogVG1wbEFzdEVsZW1lbnQsXG4gICAgICBwcml2YXRlIGNsYWltZWRJbnB1dHM6IFNldDxzdHJpbmc+KSB7XG4gICAgc3VwZXIoKTtcbiAgfVxuXG4gIGV4ZWN1dGUoKTogbnVsbCB7XG4gICAgLy8gYHRoaXMuaW5wdXRzYCBjb250YWlucyBvbmx5IHRob3NlIGJpbmRpbmdzIG5vdCBtYXRjaGVkIGJ5IGFueSBkaXJlY3RpdmUuIFRoZXNlIGJpbmRpbmdzIGdvIHRvXG4gICAgLy8gdGhlIGVsZW1lbnQgaXRzZWxmLlxuICAgIGNvbnN0IGVsSWQgPSB0aGlzLnNjb3BlLnJlc29sdmUodGhpcy5lbGVtZW50KTtcblxuICAgIC8vIFRPRE8oYWx4aHViKTogdGhpcyBjb3VsZCBiZSBtb3JlIGVmZmljaWVudC5cbiAgICBmb3IgKGNvbnN0IGJpbmRpbmcgb2YgdGhpcy5lbGVtZW50LmlucHV0cykge1xuICAgICAgaWYgKGJpbmRpbmcudHlwZSA9PT0gQmluZGluZ1R5cGUuUHJvcGVydHkgJiYgdGhpcy5jbGFpbWVkSW5wdXRzLmhhcyhiaW5kaW5nLm5hbWUpKSB7XG4gICAgICAgIC8vIFNraXAgdGhpcyBiaW5kaW5nIGFzIGl0IHdhcyBjbGFpbWVkIGJ5IGEgZGlyZWN0aXZlLlxuICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cblxuICAgICAgbGV0IGV4cHIgPSB0Y2JFeHByZXNzaW9uKGJpbmRpbmcudmFsdWUsIHRoaXMudGNiLCB0aGlzLnNjb3BlKTtcbiAgICAgIGlmICghdGhpcy50Y2IuZW52LmNvbmZpZy5jaGVja1R5cGVPZklucHV0QmluZGluZ3MpIHtcbiAgICAgICAgLy8gSWYgY2hlY2tpbmcgdGhlIHR5cGUgb2YgYmluZGluZ3MgaXMgZGlzYWJsZWQsIGNhc3QgdGhlIHJlc3VsdGluZyBleHByZXNzaW9uIHRvICdhbnknXG4gICAgICAgIC8vIGJlZm9yZSB0aGUgYXNzaWdubWVudC5cbiAgICAgICAgZXhwciA9IHRzQ2FzdFRvQW55KGV4cHIpO1xuICAgICAgfSBlbHNlIGlmICghdGhpcy50Y2IuZW52LmNvbmZpZy5zdHJpY3ROdWxsSW5wdXRCaW5kaW5ncykge1xuICAgICAgICAvLyBJZiBzdHJpY3QgbnVsbCBjaGVja3MgYXJlIGRpc2FibGVkLCBlcmFzZSBgbnVsbGAgYW5kIGB1bmRlZmluZWRgIGZyb20gdGhlIHR5cGUgYnlcbiAgICAgICAgLy8gd3JhcHBpbmcgdGhlIGV4cHJlc3Npb24gaW4gYSBub24tbnVsbCBhc3NlcnRpb24uXG4gICAgICAgIGV4cHIgPSB0cy5jcmVhdGVOb25OdWxsRXhwcmVzc2lvbihleHByKTtcbiAgICAgIH1cblxuICAgICAgaWYgKHRoaXMudGNiLmVudi5jb25maWcuY2hlY2tUeXBlT2ZEb21CaW5kaW5ncyAmJiBiaW5kaW5nLnR5cGUgPT09IEJpbmRpbmdUeXBlLlByb3BlcnR5KSB7XG4gICAgICAgIGlmIChiaW5kaW5nLm5hbWUgIT09ICdzdHlsZScgJiYgYmluZGluZy5uYW1lICE9PSAnY2xhc3MnKSB7XG4gICAgICAgICAgLy8gQSBkaXJlY3QgYmluZGluZyB0byBhIHByb3BlcnR5LlxuICAgICAgICAgIGNvbnN0IHByb3BlcnR5TmFtZSA9IEFUVFJfVE9fUFJPUFtiaW5kaW5nLm5hbWVdIHx8IGJpbmRpbmcubmFtZTtcbiAgICAgICAgICBjb25zdCBwcm9wID0gdHMuY3JlYXRlRWxlbWVudEFjY2VzcyhlbElkLCB0cy5jcmVhdGVTdHJpbmdMaXRlcmFsKHByb3BlcnR5TmFtZSkpO1xuICAgICAgICAgIGNvbnN0IHN0bXQgPSB0cy5jcmVhdGVCaW5hcnkocHJvcCwgdHMuU3ludGF4S2luZC5FcXVhbHNUb2tlbiwgd3JhcEZvckRpYWdub3N0aWNzKGV4cHIpKTtcbiAgICAgICAgICBhZGRQYXJzZVNwYW5JbmZvKHN0bXQsIGJpbmRpbmcuc291cmNlU3Bhbik7XG4gICAgICAgICAgdGhpcy5zY29wZS5hZGRTdGF0ZW1lbnQodHMuY3JlYXRlRXhwcmVzc2lvblN0YXRlbWVudChzdG10KSk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdGhpcy5zY29wZS5hZGRTdGF0ZW1lbnQodHMuY3JlYXRlRXhwcmVzc2lvblN0YXRlbWVudChleHByKSk7XG4gICAgICAgIH1cbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIC8vIEEgYmluZGluZyB0byBhbiBhbmltYXRpb24sIGF0dHJpYnV0ZSwgY2xhc3Mgb3Igc3R5bGUuIEZvciBub3csIG9ubHkgdmFsaWRhdGUgdGhlIHJpZ2h0LVxuICAgICAgICAvLyBoYW5kIHNpZGUgb2YgdGhlIGV4cHJlc3Npb24uXG4gICAgICAgIC8vIFRPRE86IHByb3Blcmx5IGNoZWNrIGNsYXNzIGFuZCBzdHlsZSBiaW5kaW5ncy5cbiAgICAgICAgdGhpcy5zY29wZS5hZGRTdGF0ZW1lbnQodHMuY3JlYXRlRXhwcmVzc2lvblN0YXRlbWVudChleHByKSk7XG4gICAgICB9XG4gICAgfVxuXG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbn1cblxuLyoqXG4gKiBBIGBUY2JPcGAgd2hpY2ggZ2VuZXJhdGVzIGNvZGUgdG8gY2hlY2sgZXZlbnQgYmluZGluZ3Mgb24gYW4gZWxlbWVudCB0aGF0IGNvcnJlc3BvbmQgd2l0aCB0aGVcbiAqIG91dHB1dHMgb2YgYSBkaXJlY3RpdmUuXG4gKlxuICogRXhlY3V0aW5nIHRoaXMgb3BlcmF0aW9uIHJldHVybnMgbm90aGluZy5cbiAqL1xuY2xhc3MgVGNiRGlyZWN0aXZlT3V0cHV0c09wIGV4dGVuZHMgVGNiT3Age1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgdGNiOiBDb250ZXh0LCBwcml2YXRlIHNjb3BlOiBTY29wZSwgcHJpdmF0ZSBub2RlOiBUbXBsQXN0VGVtcGxhdGV8VG1wbEFzdEVsZW1lbnQsXG4gICAgICBwcml2YXRlIGRpcjogVHlwZUNoZWNrYWJsZURpcmVjdGl2ZU1ldGEpIHtcbiAgICBzdXBlcigpO1xuICB9XG5cbiAgZXhlY3V0ZSgpOiBudWxsIHtcbiAgICBjb25zdCBkaXJJZCA9IHRoaXMuc2NvcGUucmVzb2x2ZSh0aGlzLm5vZGUsIHRoaXMuZGlyKTtcblxuICAgIC8vIGBkaXIub3V0cHV0c2AgaXMgYW4gb2JqZWN0IG1hcCBvZiBmaWVsZCBuYW1lcyBvbiB0aGUgZGlyZWN0aXZlIGNsYXNzIHRvIGV2ZW50IG5hbWVzLlxuICAgIC8vIFRoaXMgaXMgYmFja3dhcmRzIGZyb20gd2hhdCdzIG5lZWRlZCB0byBtYXRjaCBldmVudCBoYW5kbGVycyAtIGEgbWFwIG9mIGV2ZW50IG5hbWVzIHRvIGZpZWxkXG4gICAgLy8gbmFtZXMgaXMgZGVzaXJlZC4gSW52ZXJ0IGBkaXIub3V0cHV0c2AgaW50byBgZmllbGRCeUV2ZW50TmFtZWAgdG8gY3JlYXRlIHRoaXMgbWFwLlxuICAgIGNvbnN0IGZpZWxkQnlFdmVudE5hbWUgPSBuZXcgTWFwPHN0cmluZywgc3RyaW5nPigpO1xuICAgIGNvbnN0IG91dHB1dHMgPSB0aGlzLmRpci5vdXRwdXRzO1xuICAgIGZvciAoY29uc3Qga2V5IG9mIE9iamVjdC5rZXlzKG91dHB1dHMpKSB7XG4gICAgICBmaWVsZEJ5RXZlbnROYW1lLnNldChvdXRwdXRzW2tleV0sIGtleSk7XG4gICAgfVxuXG4gICAgZm9yIChjb25zdCBvdXRwdXQgb2YgdGhpcy5ub2RlLm91dHB1dHMpIHtcbiAgICAgIGlmIChvdXRwdXQudHlwZSAhPT0gUGFyc2VkRXZlbnRUeXBlLlJlZ3VsYXIgfHwgIWZpZWxkQnlFdmVudE5hbWUuaGFzKG91dHB1dC5uYW1lKSkge1xuICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cbiAgICAgIGNvbnN0IGZpZWxkID0gZmllbGRCeUV2ZW50TmFtZS5nZXQob3V0cHV0Lm5hbWUpITtcblxuICAgICAgaWYgKHRoaXMudGNiLmVudi5jb25maWcuY2hlY2tUeXBlT2ZPdXRwdXRFdmVudHMpIHtcbiAgICAgICAgLy8gRm9yIHN0cmljdCBjaGVja2luZyBvZiBkaXJlY3RpdmUgZXZlbnRzLCBnZW5lcmF0ZSBhIGNhbGwgdG8gdGhlIGBzdWJzY3JpYmVgIG1ldGhvZFxuICAgICAgICAvLyBvbiB0aGUgZGlyZWN0aXZlJ3Mgb3V0cHV0IGZpZWxkIHRvIGxldCB0eXBlIGluZm9ybWF0aW9uIGZsb3cgaW50byB0aGUgaGFuZGxlciBmdW5jdGlvbidzXG4gICAgICAgIC8vIGAkZXZlbnRgIHBhcmFtZXRlci5cbiAgICAgICAgLy9cbiAgICAgICAgLy8gTm90ZSB0aGF0IHRoZSBgRXZlbnRFbWl0dGVyPFQ+YCB0eXBlIGZyb20gJ0Bhbmd1bGFyL2NvcmUnIHRoYXQgaXMgdHlwaWNhbGx5IHVzZWQgZm9yXG4gICAgICAgIC8vIG91dHB1dHMgaGFzIGEgdHlwaW5ncyBkZWZpY2llbmN5IGluIGl0cyBgc3Vic2NyaWJlYCBtZXRob2QuIFRoZSBnZW5lcmljIHR5cGUgYFRgIGlzIG5vdFxuICAgICAgICAvLyBjYXJyaWVkIGludG8gdGhlIGhhbmRsZXIgZnVuY3Rpb24sIHdoaWNoIGlzIHZpdGFsIGZvciBpbmZlcmVuY2Ugb2YgdGhlIHR5cGUgb2YgYCRldmVudGAuXG4gICAgICAgIC8vIEFzIGEgd29ya2Fyb3VuZCwgdGhlIGRpcmVjdGl2ZSdzIGZpZWxkIGlzIHBhc3NlZCBpbnRvIGEgaGVscGVyIGZ1bmN0aW9uIHRoYXQgaGFzIGFcbiAgICAgICAgLy8gc3BlY2lhbGx5IGNyYWZ0ZWQgc2V0IG9mIHNpZ25hdHVyZXMsIHRvIGVmZmVjdGl2ZWx5IGNhc3QgYEV2ZW50RW1pdHRlcjxUPmAgdG8gc29tZXRoaW5nXG4gICAgICAgIC8vIHRoYXQgaGFzIGEgYHN1YnNjcmliZWAgbWV0aG9kIHRoYXQgcHJvcGVybHkgY2FycmllcyB0aGUgYFRgIGludG8gdGhlIGhhbmRsZXIgZnVuY3Rpb24uXG4gICAgICAgIGNvbnN0IGhhbmRsZXIgPSB0Y2JDcmVhdGVFdmVudEhhbmRsZXIob3V0cHV0LCB0aGlzLnRjYiwgdGhpcy5zY29wZSwgRXZlbnRQYXJhbVR5cGUuSW5mZXIpO1xuXG4gICAgICAgIGNvbnN0IG91dHB1dEZpZWxkID0gdHMuY3JlYXRlRWxlbWVudEFjY2VzcyhkaXJJZCwgdHMuY3JlYXRlU3RyaW5nTGl0ZXJhbChmaWVsZCkpO1xuICAgICAgICBjb25zdCBvdXRwdXRIZWxwZXIgPVxuICAgICAgICAgICAgdHMuY3JlYXRlQ2FsbCh0aGlzLnRjYi5lbnYuZGVjbGFyZU91dHB1dEhlbHBlcigpLCB1bmRlZmluZWQsIFtvdXRwdXRGaWVsZF0pO1xuICAgICAgICBjb25zdCBzdWJzY3JpYmVGbiA9IHRzLmNyZWF0ZVByb3BlcnR5QWNjZXNzKG91dHB1dEhlbHBlciwgJ3N1YnNjcmliZScpO1xuICAgICAgICBjb25zdCBjYWxsID0gdHMuY3JlYXRlQ2FsbChzdWJzY3JpYmVGbiwgLyogdHlwZUFyZ3VtZW50cyAqLyB1bmRlZmluZWQsIFtoYW5kbGVyXSk7XG4gICAgICAgIGFkZFBhcnNlU3BhbkluZm8oY2FsbCwgb3V0cHV0LnNvdXJjZVNwYW4pO1xuICAgICAgICB0aGlzLnNjb3BlLmFkZFN0YXRlbWVudCh0cy5jcmVhdGVFeHByZXNzaW9uU3RhdGVtZW50KGNhbGwpKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIC8vIElmIHN0cmljdCBjaGVja2luZyBvZiBkaXJlY3RpdmUgZXZlbnRzIGlzIGRpc2FibGVkLCBlbWl0IGEgaGFuZGxlciBmdW5jdGlvbiB3aGVyZSB0aGVcbiAgICAgICAgLy8gYCRldmVudGAgcGFyYW1ldGVyIGhhcyBhbiBleHBsaWNpdCBgYW55YCB0eXBlLlxuICAgICAgICBjb25zdCBoYW5kbGVyID0gdGNiQ3JlYXRlRXZlbnRIYW5kbGVyKG91dHB1dCwgdGhpcy50Y2IsIHRoaXMuc2NvcGUsIEV2ZW50UGFyYW1UeXBlLkFueSk7XG4gICAgICAgIHRoaXMuc2NvcGUuYWRkU3RhdGVtZW50KHRzLmNyZWF0ZUV4cHJlc3Npb25TdGF0ZW1lbnQoaGFuZGxlcikpO1xuICAgICAgfVxuXG4gICAgICBFeHByZXNzaW9uU2VtYW50aWNWaXNpdG9yLnZpc2l0KFxuICAgICAgICAgIG91dHB1dC5oYW5kbGVyLCB0aGlzLnRjYi5pZCwgdGhpcy50Y2IuYm91bmRUYXJnZXQsIHRoaXMudGNiLm9vYlJlY29yZGVyKTtcbiAgICB9XG5cbiAgICByZXR1cm4gbnVsbDtcbiAgfVxufVxuXG4vKipcbiAqIEEgYFRjYk9wYCB3aGljaCBnZW5lcmF0ZXMgY29kZSB0byBjaGVjayBcInVuY2xhaW1lZCBvdXRwdXRzXCIgLSBldmVudCBiaW5kaW5ncyBvbiBhbiBlbGVtZW50IHdoaWNoXG4gKiB3ZXJlIG5vdCBhdHRyaWJ1dGVkIHRvIGFueSBkaXJlY3RpdmUgb3IgY29tcG9uZW50LCBhbmQgYXJlIGluc3RlYWQgcHJvY2Vzc2VkIGFnYWluc3QgdGhlIEhUTUxcbiAqIGVsZW1lbnQgaXRzZWxmLlxuICpcbiAqIEV4ZWN1dGluZyB0aGlzIG9wZXJhdGlvbiByZXR1cm5zIG5vdGhpbmcuXG4gKi9cbmNsYXNzIFRjYlVuY2xhaW1lZE91dHB1dHNPcCBleHRlbmRzIFRjYk9wIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHRjYjogQ29udGV4dCwgcHJpdmF0ZSBzY29wZTogU2NvcGUsIHByaXZhdGUgZWxlbWVudDogVG1wbEFzdEVsZW1lbnQsXG4gICAgICBwcml2YXRlIGNsYWltZWRPdXRwdXRzOiBTZXQ8c3RyaW5nPikge1xuICAgIHN1cGVyKCk7XG4gIH1cblxuICBleGVjdXRlKCk6IG51bGwge1xuICAgIGNvbnN0IGVsSWQgPSB0aGlzLnNjb3BlLnJlc29sdmUodGhpcy5lbGVtZW50KTtcblxuICAgIC8vIFRPRE8oYWx4aHViKTogdGhpcyBjb3VsZCBiZSBtb3JlIGVmZmljaWVudC5cbiAgICBmb3IgKGNvbnN0IG91dHB1dCBvZiB0aGlzLmVsZW1lbnQub3V0cHV0cykge1xuICAgICAgaWYgKHRoaXMuY2xhaW1lZE91dHB1dHMuaGFzKG91dHB1dC5uYW1lKSkge1xuICAgICAgICAvLyBTa2lwIHRoaXMgZXZlbnQgaGFuZGxlciBhcyBpdCB3YXMgY2xhaW1lZCBieSBhIGRpcmVjdGl2ZS5cbiAgICAgICAgY29udGludWU7XG4gICAgICB9XG5cbiAgICAgIGlmIChvdXRwdXQudHlwZSA9PT0gUGFyc2VkRXZlbnRUeXBlLkFuaW1hdGlvbikge1xuICAgICAgICAvLyBBbmltYXRpb24gb3V0cHV0IGJpbmRpbmdzIGFsd2F5cyBoYXZlIGFuIGAkZXZlbnRgIHBhcmFtZXRlciBvZiB0eXBlIGBBbmltYXRpb25FdmVudGAuXG4gICAgICAgIGNvbnN0IGV2ZW50VHlwZSA9IHRoaXMudGNiLmVudi5jb25maWcuY2hlY2tUeXBlT2ZBbmltYXRpb25FdmVudHMgP1xuICAgICAgICAgICAgdGhpcy50Y2IuZW52LnJlZmVyZW5jZUV4dGVybmFsVHlwZSgnQGFuZ3VsYXIvYW5pbWF0aW9ucycsICdBbmltYXRpb25FdmVudCcpIDpcbiAgICAgICAgICAgIEV2ZW50UGFyYW1UeXBlLkFueTtcblxuICAgICAgICBjb25zdCBoYW5kbGVyID0gdGNiQ3JlYXRlRXZlbnRIYW5kbGVyKG91dHB1dCwgdGhpcy50Y2IsIHRoaXMuc2NvcGUsIGV2ZW50VHlwZSk7XG4gICAgICAgIHRoaXMuc2NvcGUuYWRkU3RhdGVtZW50KHRzLmNyZWF0ZUV4cHJlc3Npb25TdGF0ZW1lbnQoaGFuZGxlcikpO1xuICAgICAgfSBlbHNlIGlmICh0aGlzLnRjYi5lbnYuY29uZmlnLmNoZWNrVHlwZU9mRG9tRXZlbnRzKSB7XG4gICAgICAgIC8vIElmIHN0cmljdCBjaGVja2luZyBvZiBET00gZXZlbnRzIGlzIGVuYWJsZWQsIGdlbmVyYXRlIGEgY2FsbCB0byBgYWRkRXZlbnRMaXN0ZW5lcmAgb25cbiAgICAgICAgLy8gdGhlIGVsZW1lbnQgaW5zdGFuY2Ugc28gdGhhdCBUeXBlU2NyaXB0J3MgdHlwZSBpbmZlcmVuY2UgZm9yXG4gICAgICAgIC8vIGBIVE1MRWxlbWVudC5hZGRFdmVudExpc3RlbmVyYCB1c2luZyBgSFRNTEVsZW1lbnRFdmVudE1hcGAgdG8gaW5mZXIgYW4gYWNjdXJhdGUgdHlwZSBmb3JcbiAgICAgICAgLy8gYCRldmVudGAgZGVwZW5kaW5nIG9uIHRoZSBldmVudCBuYW1lLiBGb3IgdW5rbm93biBldmVudCBuYW1lcywgVHlwZVNjcmlwdCByZXNvcnRzIHRvIHRoZVxuICAgICAgICAvLyBiYXNlIGBFdmVudGAgdHlwZS5cbiAgICAgICAgY29uc3QgaGFuZGxlciA9IHRjYkNyZWF0ZUV2ZW50SGFuZGxlcihvdXRwdXQsIHRoaXMudGNiLCB0aGlzLnNjb3BlLCBFdmVudFBhcmFtVHlwZS5JbmZlcik7XG5cbiAgICAgICAgY29uc3QgY2FsbCA9IHRzLmNyZWF0ZUNhbGwoXG4gICAgICAgICAgICAvKiBleHByZXNzaW9uICovIHRzLmNyZWF0ZVByb3BlcnR5QWNjZXNzKGVsSWQsICdhZGRFdmVudExpc3RlbmVyJyksXG4gICAgICAgICAgICAvKiB0eXBlQXJndW1lbnRzICovIHVuZGVmaW5lZCxcbiAgICAgICAgICAgIC8qIGFyZ3VtZW50cyAqL1t0cy5jcmVhdGVTdHJpbmdMaXRlcmFsKG91dHB1dC5uYW1lKSwgaGFuZGxlcl0pO1xuICAgICAgICBhZGRQYXJzZVNwYW5JbmZvKGNhbGwsIG91dHB1dC5zb3VyY2VTcGFuKTtcbiAgICAgICAgdGhpcy5zY29wZS5hZGRTdGF0ZW1lbnQodHMuY3JlYXRlRXhwcmVzc2lvblN0YXRlbWVudChjYWxsKSk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICAvLyBJZiBzdHJpY3QgY2hlY2tpbmcgb2YgRE9NIGlucHV0cyBpcyBkaXNhYmxlZCwgZW1pdCBhIGhhbmRsZXIgZnVuY3Rpb24gd2hlcmUgdGhlIGAkZXZlbnRgXG4gICAgICAgIC8vIHBhcmFtZXRlciBoYXMgYW4gZXhwbGljaXQgYGFueWAgdHlwZS5cbiAgICAgICAgY29uc3QgaGFuZGxlciA9IHRjYkNyZWF0ZUV2ZW50SGFuZGxlcihvdXRwdXQsIHRoaXMudGNiLCB0aGlzLnNjb3BlLCBFdmVudFBhcmFtVHlwZS5BbnkpO1xuICAgICAgICB0aGlzLnNjb3BlLmFkZFN0YXRlbWVudCh0cy5jcmVhdGVFeHByZXNzaW9uU3RhdGVtZW50KGhhbmRsZXIpKTtcbiAgICAgIH1cblxuICAgICAgRXhwcmVzc2lvblNlbWFudGljVmlzaXRvci52aXNpdChcbiAgICAgICAgICBvdXRwdXQuaGFuZGxlciwgdGhpcy50Y2IuaWQsIHRoaXMudGNiLmJvdW5kVGFyZ2V0LCB0aGlzLnRjYi5vb2JSZWNvcmRlcik7XG4gICAgfVxuXG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbn1cblxuLyoqXG4gKiBWYWx1ZSB1c2VkIHRvIGJyZWFrIGEgY2lyY3VsYXIgcmVmZXJlbmNlIGJldHdlZW4gYFRjYk9wYHMuXG4gKlxuICogVGhpcyB2YWx1ZSBpcyByZXR1cm5lZCB3aGVuZXZlciBgVGNiT3BgcyBoYXZlIGEgY2lyY3VsYXIgZGVwZW5kZW5jeS4gVGhlIGV4cHJlc3Npb24gaXMgYSBub24tbnVsbFxuICogYXNzZXJ0aW9uIG9mIHRoZSBudWxsIHZhbHVlIChpbiBUeXBlU2NyaXB0LCB0aGUgZXhwcmVzc2lvbiBgbnVsbCFgKS4gVGhpcyBjb25zdHJ1Y3Rpb24gd2lsbCBpbmZlclxuICogdGhlIGxlYXN0IG5hcnJvdyB0eXBlIGZvciB3aGF0ZXZlciBpdCdzIGFzc2lnbmVkIHRvLlxuICovXG5jb25zdCBJTkZFUl9UWVBFX0ZPUl9DSVJDVUxBUl9PUF9FWFBSID0gdHMuY3JlYXRlTm9uTnVsbEV4cHJlc3Npb24odHMuY3JlYXRlTnVsbCgpKTtcblxuLyoqXG4gKiBPdmVyYWxsIGdlbmVyYXRpb24gY29udGV4dCBmb3IgdGhlIHR5cGUgY2hlY2sgYmxvY2suXG4gKlxuICogYENvbnRleHRgIGhhbmRsZXMgb3BlcmF0aW9ucyBkdXJpbmcgY29kZSBnZW5lcmF0aW9uIHdoaWNoIGFyZSBnbG9iYWwgd2l0aCByZXNwZWN0IHRvIHRoZSB3aG9sZVxuICogYmxvY2suIEl0J3MgcmVzcG9uc2libGUgZm9yIHZhcmlhYmxlIG5hbWUgYWxsb2NhdGlvbiBhbmQgbWFuYWdlbWVudCBvZiBhbnkgaW1wb3J0cyBuZWVkZWQuIEl0XG4gKiBhbHNvIGNvbnRhaW5zIHRoZSB0ZW1wbGF0ZSBtZXRhZGF0YSBpdHNlbGYuXG4gKi9cbmV4cG9ydCBjbGFzcyBDb250ZXh0IHtcbiAgcHJpdmF0ZSBuZXh0SWQgPSAxO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcmVhZG9ubHkgZW52OiBFbnZpcm9ubWVudCwgcmVhZG9ubHkgZG9tU2NoZW1hQ2hlY2tlcjogRG9tU2NoZW1hQ2hlY2tlcixcbiAgICAgIHJlYWRvbmx5IG9vYlJlY29yZGVyOiBPdXRPZkJhbmREaWFnbm9zdGljUmVjb3JkZXIsIHJlYWRvbmx5IGlkOiBUZW1wbGF0ZUlkLFxuICAgICAgcmVhZG9ubHkgYm91bmRUYXJnZXQ6IEJvdW5kVGFyZ2V0PFR5cGVDaGVja2FibGVEaXJlY3RpdmVNZXRhPixcbiAgICAgIHByaXZhdGUgcGlwZXM6IE1hcDxzdHJpbmcsIFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPHRzLkNsYXNzRGVjbGFyYXRpb24+Pj4sXG4gICAgICByZWFkb25seSBzY2hlbWFzOiBTY2hlbWFNZXRhZGF0YVtdKSB7fVxuXG4gIC8qKlxuICAgKiBBbGxvY2F0ZSBhIG5ldyB2YXJpYWJsZSBuYW1lIGZvciB1c2Ugd2l0aGluIHRoZSBgQ29udGV4dGAuXG4gICAqXG4gICAqIEN1cnJlbnRseSB0aGlzIHVzZXMgYSBtb25vdG9uaWNhbGx5IGluY3JlYXNpbmcgY291bnRlciwgYnV0IGluIHRoZSBmdXR1cmUgdGhlIHZhcmlhYmxlIG5hbWVcbiAgICogbWlnaHQgY2hhbmdlIGRlcGVuZGluZyBvbiB0aGUgdHlwZSBvZiBkYXRhIGJlaW5nIHN0b3JlZC5cbiAgICovXG4gIGFsbG9jYXRlSWQoKTogdHMuSWRlbnRpZmllciB7XG4gICAgcmV0dXJuIHRzLmNyZWF0ZUlkZW50aWZpZXIoYF90JHt0aGlzLm5leHRJZCsrfWApO1xuICB9XG5cbiAgZ2V0UGlwZUJ5TmFtZShuYW1lOiBzdHJpbmcpOiB0cy5FeHByZXNzaW9ufG51bGwge1xuICAgIGlmICghdGhpcy5waXBlcy5oYXMobmFtZSkpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5lbnYucGlwZUluc3QodGhpcy5waXBlcy5nZXQobmFtZSkhKTtcbiAgfVxufVxuXG4vKipcbiAqIExvY2FsIHNjb3BlIHdpdGhpbiB0aGUgdHlwZSBjaGVjayBibG9jayBmb3IgYSBwYXJ0aWN1bGFyIHRlbXBsYXRlLlxuICpcbiAqIFRoZSB0b3AtbGV2ZWwgdGVtcGxhdGUgYW5kIGVhY2ggbmVzdGVkIGA8bmctdGVtcGxhdGU+YCBoYXZlIHRoZWlyIG93biBgU2NvcGVgLCB3aGljaCBleGlzdCBpbiBhXG4gKiBoaWVyYXJjaHkuIFRoZSBzdHJ1Y3R1cmUgb2YgdGhpcyBoaWVyYXJjaHkgbWlycm9ycyB0aGUgc3ludGFjdGljIHNjb3BlcyBpbiB0aGUgZ2VuZXJhdGVkIHR5cGVcbiAqIGNoZWNrIGJsb2NrLCB3aGVyZSBlYWNoIG5lc3RlZCB0ZW1wbGF0ZSBpcyBlbmNhc2VkIGluIGFuIGBpZmAgc3RydWN0dXJlLlxuICpcbiAqIEFzIGEgdGVtcGxhdGUncyBgVGNiT3BgcyBhcmUgZXhlY3V0ZWQgaW4gYSBnaXZlbiBgU2NvcGVgLCBzdGF0ZW1lbnRzIGFyZSBhZGRlZCB2aWFcbiAqIGBhZGRTdGF0ZW1lbnQoKWAuIFdoZW4gdGhpcyBwcm9jZXNzaW5nIGlzIGNvbXBsZXRlLCB0aGUgYFNjb3BlYCBjYW4gYmUgdHVybmVkIGludG8gYSBgdHMuQmxvY2tgXG4gKiB2aWEgYHJlbmRlclRvQmxvY2soKWAuXG4gKlxuICogSWYgYSBgVGNiT3BgIHJlcXVpcmVzIHRoZSBvdXRwdXQgb2YgYW5vdGhlciwgaXQgY2FuIGNhbGwgYHJlc29sdmUoKWAuXG4gKi9cbmNsYXNzIFNjb3BlIHtcbiAgLyoqXG4gICAqIEEgcXVldWUgb2Ygb3BlcmF0aW9ucyB3aGljaCBuZWVkIHRvIGJlIHBlcmZvcm1lZCB0byBnZW5lcmF0ZSB0aGUgVENCIGNvZGUgZm9yIHRoaXMgc2NvcGUuXG4gICAqXG4gICAqIFRoaXMgYXJyYXkgY2FuIGNvbnRhaW4gZWl0aGVyIGEgYFRjYk9wYCB3aGljaCBoYXMgeWV0IHRvIGJlIGV4ZWN1dGVkLCBvciBhIGB0cy5FeHByZXNzaW9ufG51bGxgXG4gICAqIHJlcHJlc2VudGluZyB0aGUgbWVtb2l6ZWQgcmVzdWx0IG9mIGV4ZWN1dGluZyB0aGUgb3BlcmF0aW9uLiBBcyBvcGVyYXRpb25zIGFyZSBleGVjdXRlZCwgdGhlaXJcbiAgICogcmVzdWx0cyBhcmUgd3JpdHRlbiBpbnRvIHRoZSBgb3BRdWV1ZWAsIG92ZXJ3cml0aW5nIHRoZSBvcmlnaW5hbCBvcGVyYXRpb24uXG4gICAqXG4gICAqIElmIGFuIG9wZXJhdGlvbiBpcyBpbiB0aGUgcHJvY2VzcyBvZiBiZWluZyBleGVjdXRlZCwgaXQgaXMgdGVtcG9yYXJpbHkgb3ZlcndyaXR0ZW4gaGVyZSB3aXRoXG4gICAqIGBJTkZFUl9UWVBFX0ZPUl9DSVJDVUxBUl9PUF9FWFBSYC4gVGhpcyB3YXksIGlmIGEgY3ljbGUgaXMgZW5jb3VudGVyZWQgd2hlcmUgYW4gb3BlcmF0aW9uXG4gICAqIGRlcGVuZHMgdHJhbnNpdGl2ZWx5IG9uIGl0cyBvd24gcmVzdWx0LCB0aGUgaW5uZXIgb3BlcmF0aW9uIHdpbGwgaW5mZXIgdGhlIGxlYXN0IG5hcnJvdyB0eXBlXG4gICAqIHRoYXQgZml0cyBpbnN0ZWFkLiBUaGlzIGhhcyB0aGUgc2FtZSBzZW1hbnRpY3MgYXMgVHlwZVNjcmlwdCBpdHNlbGYgd2hlbiB0eXBlcyBhcmUgcmVmZXJlbmNlZFxuICAgKiBjaXJjdWxhcmx5LlxuICAgKi9cbiAgcHJpdmF0ZSBvcFF1ZXVlOiAoVGNiT3B8dHMuRXhwcmVzc2lvbnxudWxsKVtdID0gW107XG5cbiAgLyoqXG4gICAqIEEgbWFwIG9mIGBUbXBsQXN0RWxlbWVudGBzIHRvIHRoZSBpbmRleCBvZiB0aGVpciBgVGNiRWxlbWVudE9wYCBpbiB0aGUgYG9wUXVldWVgXG4gICAqL1xuICBwcml2YXRlIGVsZW1lbnRPcE1hcCA9IG5ldyBNYXA8VG1wbEFzdEVsZW1lbnQsIG51bWJlcj4oKTtcbiAgLyoqXG4gICAqIEEgbWFwIG9mIG1hcHMgd2hpY2ggdHJhY2tzIHRoZSBpbmRleCBvZiBgVGNiRGlyZWN0aXZlT3BgcyBpbiB0aGUgYG9wUXVldWVgIGZvciBlYWNoIGRpcmVjdGl2ZVxuICAgKiBvbiBhIGBUbXBsQXN0RWxlbWVudGAgb3IgYFRtcGxBc3RUZW1wbGF0ZWAgbm9kZS5cbiAgICovXG4gIHByaXZhdGUgZGlyZWN0aXZlT3BNYXAgPVxuICAgICAgbmV3IE1hcDxUbXBsQXN0RWxlbWVudHxUbXBsQXN0VGVtcGxhdGUsIE1hcDxUeXBlQ2hlY2thYmxlRGlyZWN0aXZlTWV0YSwgbnVtYmVyPj4oKTtcblxuICAvKipcbiAgICogTWFwIG9mIGltbWVkaWF0ZWx5IG5lc3RlZCA8bmctdGVtcGxhdGU+cyAod2l0aGluIHRoaXMgYFNjb3BlYCkgcmVwcmVzZW50ZWQgYnkgYFRtcGxBc3RUZW1wbGF0ZWBcbiAgICogbm9kZXMgdG8gdGhlIGluZGV4IG9mIHRoZWlyIGBUY2JUZW1wbGF0ZUNvbnRleHRPcGBzIGluIHRoZSBgb3BRdWV1ZWAuXG4gICAqL1xuICBwcml2YXRlIHRlbXBsYXRlQ3R4T3BNYXAgPSBuZXcgTWFwPFRtcGxBc3RUZW1wbGF0ZSwgbnVtYmVyPigpO1xuXG4gIC8qKlxuICAgKiBNYXAgb2YgdmFyaWFibGVzIGRlY2xhcmVkIG9uIHRoZSB0ZW1wbGF0ZSB0aGF0IGNyZWF0ZWQgdGhpcyBgU2NvcGVgIChyZXByZXNlbnRlZCBieVxuICAgKiBgVG1wbEFzdFZhcmlhYmxlYCBub2RlcykgdG8gdGhlIGluZGV4IG9mIHRoZWlyIGBUY2JWYXJpYWJsZU9wYHMgaW4gdGhlIGBvcFF1ZXVlYC5cbiAgICovXG4gIHByaXZhdGUgdmFyTWFwID0gbmV3IE1hcDxUbXBsQXN0VmFyaWFibGUsIG51bWJlcj4oKTtcblxuICAvKipcbiAgICogU3RhdGVtZW50cyBmb3IgdGhpcyB0ZW1wbGF0ZS5cbiAgICpcbiAgICogRXhlY3V0aW5nIHRoZSBgVGNiT3BgcyBpbiB0aGUgYG9wUXVldWVgIHBvcHVsYXRlcyB0aGlzIGFycmF5LlxuICAgKi9cbiAgcHJpdmF0ZSBzdGF0ZW1lbnRzOiB0cy5TdGF0ZW1lbnRbXSA9IFtdO1xuXG4gIHByaXZhdGUgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHRjYjogQ29udGV4dCwgcHJpdmF0ZSBwYXJlbnQ6IFNjb3BlfG51bGwgPSBudWxsLFxuICAgICAgcHJpdmF0ZSBndWFyZDogdHMuRXhwcmVzc2lvbnxudWxsID0gbnVsbCkge31cblxuICAvKipcbiAgICogQ29uc3RydWN0cyBhIGBTY29wZWAgZ2l2ZW4gZWl0aGVyIGEgYFRtcGxBc3RUZW1wbGF0ZWAgb3IgYSBsaXN0IG9mIGBUbXBsQXN0Tm9kZWBzLlxuICAgKlxuICAgKiBAcGFyYW0gdGNiIHRoZSBvdmVyYWxsIGNvbnRleHQgb2YgVENCIGdlbmVyYXRpb24uXG4gICAqIEBwYXJhbSBwYXJlbnQgdGhlIGBTY29wZWAgb2YgdGhlIHBhcmVudCB0ZW1wbGF0ZSAoaWYgYW55KSBvciBgbnVsbGAgaWYgdGhpcyBpcyB0aGUgcm9vdFxuICAgKiBgU2NvcGVgLlxuICAgKiBAcGFyYW0gdGVtcGxhdGVPck5vZGVzIGVpdGhlciBhIGBUbXBsQXN0VGVtcGxhdGVgIHJlcHJlc2VudGluZyB0aGUgdGVtcGxhdGUgZm9yIHdoaWNoIHRvXG4gICAqIGNhbGN1bGF0ZSB0aGUgYFNjb3BlYCwgb3IgYSBsaXN0IG9mIG5vZGVzIGlmIG5vIG91dGVyIHRlbXBsYXRlIG9iamVjdCBpcyBhdmFpbGFibGUuXG4gICAqIEBwYXJhbSBndWFyZCBhbiBleHByZXNzaW9uIHRoYXQgaXMgYXBwbGllZCB0byB0aGlzIHNjb3BlIGZvciB0eXBlIG5hcnJvd2luZyBwdXJwb3Nlcy5cbiAgICovXG4gIHN0YXRpYyBmb3JOb2RlcyhcbiAgICAgIHRjYjogQ29udGV4dCwgcGFyZW50OiBTY29wZXxudWxsLCB0ZW1wbGF0ZU9yTm9kZXM6IFRtcGxBc3RUZW1wbGF0ZXwoVG1wbEFzdE5vZGVbXSksXG4gICAgICBndWFyZDogdHMuRXhwcmVzc2lvbnxudWxsKTogU2NvcGUge1xuICAgIGNvbnN0IHNjb3BlID0gbmV3IFNjb3BlKHRjYiwgcGFyZW50LCBndWFyZCk7XG5cbiAgICBsZXQgY2hpbGRyZW46IFRtcGxBc3ROb2RlW107XG5cbiAgICAvLyBJZiBnaXZlbiBhbiBhY3R1YWwgYFRtcGxBc3RUZW1wbGF0ZWAgaW5zdGFuY2UsIHRoZW4gcHJvY2VzcyBhbnkgYWRkaXRpb25hbCBpbmZvcm1hdGlvbiBpdFxuICAgIC8vIGhhcy5cbiAgICBpZiAodGVtcGxhdGVPck5vZGVzIGluc3RhbmNlb2YgVG1wbEFzdFRlbXBsYXRlKSB7XG4gICAgICAvLyBUaGUgdGVtcGxhdGUncyB2YXJpYWJsZSBkZWNsYXJhdGlvbnMgbmVlZCB0byBiZSBhZGRlZCBhcyBgVGNiVmFyaWFibGVPcGBzLlxuICAgICAgY29uc3QgdmFyTWFwID0gbmV3IE1hcDxzdHJpbmcsIFRtcGxBc3RWYXJpYWJsZT4oKTtcblxuICAgICAgZm9yIChjb25zdCB2IG9mIHRlbXBsYXRlT3JOb2Rlcy52YXJpYWJsZXMpIHtcbiAgICAgICAgLy8gVmFsaWRhdGUgdGhhdCB2YXJpYWJsZXMgb24gdGhlIGBUbXBsQXN0VGVtcGxhdGVgIGFyZSBvbmx5IGRlY2xhcmVkIG9uY2UuXG4gICAgICAgIGlmICghdmFyTWFwLmhhcyh2Lm5hbWUpKSB7XG4gICAgICAgICAgdmFyTWFwLnNldCh2Lm5hbWUsIHYpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIGNvbnN0IGZpcnN0RGVjbCA9IHZhck1hcC5nZXQodi5uYW1lKSE7XG4gICAgICAgICAgdGNiLm9vYlJlY29yZGVyLmR1cGxpY2F0ZVRlbXBsYXRlVmFyKHRjYi5pZCwgdiwgZmlyc3REZWNsKTtcbiAgICAgICAgfVxuXG4gICAgICAgIGNvbnN0IG9wSW5kZXggPSBzY29wZS5vcFF1ZXVlLnB1c2gobmV3IFRjYlZhcmlhYmxlT3AodGNiLCBzY29wZSwgdGVtcGxhdGVPck5vZGVzLCB2KSkgLSAxO1xuICAgICAgICBzY29wZS52YXJNYXAuc2V0KHYsIG9wSW5kZXgpO1xuICAgICAgfVxuICAgICAgY2hpbGRyZW4gPSB0ZW1wbGF0ZU9yTm9kZXMuY2hpbGRyZW47XG4gICAgfSBlbHNlIHtcbiAgICAgIGNoaWxkcmVuID0gdGVtcGxhdGVPck5vZGVzO1xuICAgIH1cbiAgICBmb3IgKGNvbnN0IG5vZGUgb2YgY2hpbGRyZW4pIHtcbiAgICAgIHNjb3BlLmFwcGVuZE5vZGUobm9kZSk7XG4gICAgfVxuICAgIHJldHVybiBzY29wZTtcbiAgfVxuXG4gIC8qKlxuICAgKiBMb29rIHVwIGEgYHRzLkV4cHJlc3Npb25gIHJlcHJlc2VudGluZyB0aGUgdmFsdWUgb2Ygc29tZSBvcGVyYXRpb24gaW4gdGhlIGN1cnJlbnQgYFNjb3BlYCxcbiAgICogaW5jbHVkaW5nIGFueSBwYXJlbnQgc2NvcGUocykuXG4gICAqXG4gICAqIEBwYXJhbSBub2RlIGEgYFRtcGxBc3ROb2RlYCBvZiB0aGUgb3BlcmF0aW9uIGluIHF1ZXN0aW9uLiBUaGUgbG9va3VwIHBlcmZvcm1lZCB3aWxsIGRlcGVuZCBvblxuICAgKiB0aGUgdHlwZSBvZiB0aGlzIG5vZGU6XG4gICAqXG4gICAqIEFzc3VtaW5nIGBkaXJlY3RpdmVgIGlzIG5vdCBwcmVzZW50LCB0aGVuIGByZXNvbHZlYCB3aWxsIHJldHVybjpcbiAgICpcbiAgICogKiBgVG1wbEFzdEVsZW1lbnRgIC0gcmV0cmlldmUgdGhlIGV4cHJlc3Npb24gZm9yIHRoZSBlbGVtZW50IERPTSBub2RlXG4gICAqICogYFRtcGxBc3RUZW1wbGF0ZWAgLSByZXRyaWV2ZSB0aGUgdGVtcGxhdGUgY29udGV4dCB2YXJpYWJsZVxuICAgKiAqIGBUbXBsQXN0VmFyaWFibGVgIC0gcmV0cmlldmUgYSB0ZW1wbGF0ZSBsZXQtIHZhcmlhYmxlXG4gICAqXG4gICAqIEBwYXJhbSBkaXJlY3RpdmUgaWYgcHJlc2VudCwgYSBkaXJlY3RpdmUgdHlwZSBvbiBhIGBUbXBsQXN0RWxlbWVudGAgb3IgYFRtcGxBc3RUZW1wbGF0ZWAgdG9cbiAgICogbG9vayB1cCBpbnN0ZWFkIG9mIHRoZSBkZWZhdWx0IGZvciBhbiBlbGVtZW50IG9yIHRlbXBsYXRlIG5vZGUuXG4gICAqL1xuICByZXNvbHZlKFxuICAgICAgbm9kZTogVG1wbEFzdEVsZW1lbnR8VG1wbEFzdFRlbXBsYXRlfFRtcGxBc3RWYXJpYWJsZSxcbiAgICAgIGRpcmVjdGl2ZT86IFR5cGVDaGVja2FibGVEaXJlY3RpdmVNZXRhKTogdHMuRXhwcmVzc2lvbiB7XG4gICAgLy8gQXR0ZW1wdCB0byByZXNvbHZlIHRoZSBvcGVyYXRpb24gbG9jYWxseS5cbiAgICBjb25zdCByZXMgPSB0aGlzLnJlc29sdmVMb2NhbChub2RlLCBkaXJlY3RpdmUpO1xuICAgIGlmIChyZXMgIT09IG51bGwpIHtcbiAgICAgIHJldHVybiByZXM7XG4gICAgfSBlbHNlIGlmICh0aGlzLnBhcmVudCAhPT0gbnVsbCkge1xuICAgICAgLy8gQ2hlY2sgd2l0aCB0aGUgcGFyZW50LlxuICAgICAgcmV0dXJuIHRoaXMucGFyZW50LnJlc29sdmUobm9kZSwgZGlyZWN0aXZlKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGBDb3VsZCBub3QgcmVzb2x2ZSAke25vZGV9IC8gJHtkaXJlY3RpdmV9YCk7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIEFkZCBhIHN0YXRlbWVudCB0byB0aGlzIHNjb3BlLlxuICAgKi9cbiAgYWRkU3RhdGVtZW50KHN0bXQ6IHRzLlN0YXRlbWVudCk6IHZvaWQge1xuICAgIHRoaXMuc3RhdGVtZW50cy5wdXNoKHN0bXQpO1xuICB9XG5cbiAgLyoqXG4gICAqIEdldCB0aGUgc3RhdGVtZW50cy5cbiAgICovXG4gIHJlbmRlcigpOiB0cy5TdGF0ZW1lbnRbXSB7XG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCB0aGlzLm9wUXVldWUubGVuZ3RoOyBpKyspIHtcbiAgICAgIHRoaXMuZXhlY3V0ZU9wKGkpO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5zdGF0ZW1lbnRzO1xuICB9XG5cbiAgLyoqXG4gICAqIFJldHVybnMgYW4gZXhwcmVzc2lvbiBvZiBhbGwgdGVtcGxhdGUgZ3VhcmRzIHRoYXQgYXBwbHkgdG8gdGhpcyBzY29wZSwgaW5jbHVkaW5nIHRob3NlIG9mXG4gICAqIHBhcmVudCBzY29wZXMuIElmIG5vIGd1YXJkcyBoYXZlIGJlZW4gYXBwbGllZCwgbnVsbCBpcyByZXR1cm5lZC5cbiAgICovXG4gIGd1YXJkcygpOiB0cy5FeHByZXNzaW9ufG51bGwge1xuICAgIGxldCBwYXJlbnRHdWFyZHM6IHRzLkV4cHJlc3Npb258bnVsbCA9IG51bGw7XG4gICAgaWYgKHRoaXMucGFyZW50ICE9PSBudWxsKSB7XG4gICAgICAvLyBTdGFydCB3aXRoIHRoZSBndWFyZHMgZnJvbSB0aGUgcGFyZW50IHNjb3BlLCBpZiBwcmVzZW50LlxuICAgICAgcGFyZW50R3VhcmRzID0gdGhpcy5wYXJlbnQuZ3VhcmRzKCk7XG4gICAgfVxuXG4gICAgaWYgKHRoaXMuZ3VhcmQgPT09IG51bGwpIHtcbiAgICAgIC8vIFRoaXMgc2NvcGUgZG9lcyBub3QgaGF2ZSBhIGd1YXJkLCBzbyByZXR1cm4gdGhlIHBhcmVudCdzIGd1YXJkcyBhcyBpcy5cbiAgICAgIHJldHVybiBwYXJlbnRHdWFyZHM7XG4gICAgfSBlbHNlIGlmIChwYXJlbnRHdWFyZHMgPT09IG51bGwpIHtcbiAgICAgIC8vIFRoZXJlJ3Mgbm8gZ3VhcmRzIGZyb20gdGhlIHBhcmVudCBzY29wZSwgc28gdGhpcyBzY29wZSdzIGd1YXJkIHJlcHJlc2VudHMgYWxsIGF2YWlsYWJsZVxuICAgICAgLy8gZ3VhcmRzLlxuICAgICAgcmV0dXJuIHRoaXMuZ3VhcmQ7XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIEJvdGggdGhlIHBhcmVudCBzY29wZSBhbmQgdGhpcyBzY29wZSBwcm92aWRlIGEgZ3VhcmQsIHNvIGNyZWF0ZSBhIGNvbWJpbmF0aW9uIG9mIHRoZSB0d28uXG4gICAgICAvLyBJdCBpcyBpbXBvcnRhbnQgdGhhdCB0aGUgcGFyZW50IGd1YXJkIGlzIHVzZWQgYXMgbGVmdCBvcGVyYW5kLCBnaXZlbiB0aGF0IGl0IG1heSBwcm92aWRlXG4gICAgICAvLyBuYXJyb3dpbmcgdGhhdCBpcyByZXF1aXJlZCBmb3IgdGhpcyBzY29wZSdzIGd1YXJkIHRvIGJlIHZhbGlkLlxuICAgICAgcmV0dXJuIHRzLmNyZWF0ZUJpbmFyeShwYXJlbnRHdWFyZHMsIHRzLlN5bnRheEtpbmQuQW1wZXJzYW5kQW1wZXJzYW5kVG9rZW4sIHRoaXMuZ3VhcmQpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgcmVzb2x2ZUxvY2FsKFxuICAgICAgcmVmOiBUbXBsQXN0RWxlbWVudHxUbXBsQXN0VGVtcGxhdGV8VG1wbEFzdFZhcmlhYmxlLFxuICAgICAgZGlyZWN0aXZlPzogVHlwZUNoZWNrYWJsZURpcmVjdGl2ZU1ldGEpOiB0cy5FeHByZXNzaW9ufG51bGwge1xuICAgIGlmIChyZWYgaW5zdGFuY2VvZiBUbXBsQXN0VmFyaWFibGUgJiYgdGhpcy52YXJNYXAuaGFzKHJlZikpIHtcbiAgICAgIC8vIFJlc29sdmluZyBhIGNvbnRleHQgdmFyaWFibGUgZm9yIHRoaXMgdGVtcGxhdGUuXG4gICAgICAvLyBFeGVjdXRlIHRoZSBgVGNiVmFyaWFibGVPcGAgYXNzb2NpYXRlZCB3aXRoIHRoZSBgVG1wbEFzdFZhcmlhYmxlYC5cbiAgICAgIHJldHVybiB0aGlzLnJlc29sdmVPcCh0aGlzLnZhck1hcC5nZXQocmVmKSEpO1xuICAgIH0gZWxzZSBpZiAoXG4gICAgICAgIHJlZiBpbnN0YW5jZW9mIFRtcGxBc3RUZW1wbGF0ZSAmJiBkaXJlY3RpdmUgPT09IHVuZGVmaW5lZCAmJlxuICAgICAgICB0aGlzLnRlbXBsYXRlQ3R4T3BNYXAuaGFzKHJlZikpIHtcbiAgICAgIC8vIFJlc29sdmluZyB0aGUgY29udGV4dCBvZiB0aGUgZ2l2ZW4gc3ViLXRlbXBsYXRlLlxuICAgICAgLy8gRXhlY3V0ZSB0aGUgYFRjYlRlbXBsYXRlQ29udGV4dE9wYCBmb3IgdGhlIHRlbXBsYXRlLlxuICAgICAgcmV0dXJuIHRoaXMucmVzb2x2ZU9wKHRoaXMudGVtcGxhdGVDdHhPcE1hcC5nZXQocmVmKSEpO1xuICAgIH0gZWxzZSBpZiAoXG4gICAgICAgIChyZWYgaW5zdGFuY2VvZiBUbXBsQXN0RWxlbWVudCB8fCByZWYgaW5zdGFuY2VvZiBUbXBsQXN0VGVtcGxhdGUpICYmXG4gICAgICAgIGRpcmVjdGl2ZSAhPT0gdW5kZWZpbmVkICYmIHRoaXMuZGlyZWN0aXZlT3BNYXAuaGFzKHJlZikpIHtcbiAgICAgIC8vIFJlc29sdmluZyBhIGRpcmVjdGl2ZSBvbiBhbiBlbGVtZW50IG9yIHN1Yi10ZW1wbGF0ZS5cbiAgICAgIGNvbnN0IGRpck1hcCA9IHRoaXMuZGlyZWN0aXZlT3BNYXAuZ2V0KHJlZikhO1xuICAgICAgaWYgKGRpck1hcC5oYXMoZGlyZWN0aXZlKSkge1xuICAgICAgICByZXR1cm4gdGhpcy5yZXNvbHZlT3AoZGlyTWFwLmdldChkaXJlY3RpdmUpISk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICByZXR1cm4gbnVsbDtcbiAgICAgIH1cbiAgICB9IGVsc2UgaWYgKHJlZiBpbnN0YW5jZW9mIFRtcGxBc3RFbGVtZW50ICYmIHRoaXMuZWxlbWVudE9wTWFwLmhhcyhyZWYpKSB7XG4gICAgICAvLyBSZXNvbHZpbmcgdGhlIERPTSBub2RlIG9mIGFuIGVsZW1lbnQgaW4gdGhpcyB0ZW1wbGF0ZS5cbiAgICAgIHJldHVybiB0aGlzLnJlc29sdmVPcCh0aGlzLmVsZW1lbnRPcE1hcC5nZXQocmVmKSEpO1xuICAgIH0gZWxzZSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogTGlrZSBgZXhlY3V0ZU9wYCwgYnV0IGFzc2VydCB0aGF0IHRoZSBvcGVyYXRpb24gYWN0dWFsbHkgcmV0dXJuZWQgYHRzLkV4cHJlc3Npb25gLlxuICAgKi9cbiAgcHJpdmF0ZSByZXNvbHZlT3Aob3BJbmRleDogbnVtYmVyKTogdHMuRXhwcmVzc2lvbiB7XG4gICAgY29uc3QgcmVzID0gdGhpcy5leGVjdXRlT3Aob3BJbmRleCk7XG4gICAgaWYgKHJlcyA9PT0gbnVsbCkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGBFcnJvciByZXNvbHZpbmcgb3BlcmF0aW9uLCBnb3QgbnVsbGApO1xuICAgIH1cbiAgICByZXR1cm4gcmVzO1xuICB9XG5cbiAgLyoqXG4gICAqIEV4ZWN1dGUgYSBwYXJ0aWN1bGFyIGBUY2JPcGAgaW4gdGhlIGBvcFF1ZXVlYC5cbiAgICpcbiAgICogVGhpcyBtZXRob2QgcmVwbGFjZXMgdGhlIG9wZXJhdGlvbiBpbiB0aGUgYG9wUXVldWVgIHdpdGggdGhlIHJlc3VsdCBvZiBleGVjdXRpb24gKG9uY2UgZG9uZSlcbiAgICogYW5kIGFsc28gcHJvdGVjdHMgYWdhaW5zdCBhIGNpcmN1bGFyIGRlcGVuZGVuY3kgZnJvbSB0aGUgb3BlcmF0aW9uIHRvIGl0c2VsZiBieSB0ZW1wb3JhcmlseVxuICAgKiBzZXR0aW5nIHRoZSBvcGVyYXRpb24ncyByZXN1bHQgdG8gYSBzcGVjaWFsIGV4cHJlc3Npb24uXG4gICAqL1xuICBwcml2YXRlIGV4ZWN1dGVPcChvcEluZGV4OiBudW1iZXIpOiB0cy5FeHByZXNzaW9ufG51bGwge1xuICAgIGNvbnN0IG9wID0gdGhpcy5vcFF1ZXVlW29wSW5kZXhdO1xuICAgIGlmICghKG9wIGluc3RhbmNlb2YgVGNiT3ApKSB7XG4gICAgICByZXR1cm4gb3A7XG4gICAgfVxuXG4gICAgLy8gU2V0IHRoZSByZXN1bHQgb2YgdGhlIG9wZXJhdGlvbiBpbiB0aGUgcXVldWUgdG8gaXRzIGNpcmN1bGFyIGZhbGxiYWNrLiBJZiBleGVjdXRpbmcgdGhpc1xuICAgIC8vIG9wZXJhdGlvbiByZXN1bHRzIGluIGEgY2lyY3VsYXIgZGVwZW5kZW5jeSwgdGhpcyB3aWxsIHByZXZlbnQgYW4gaW5maW5pdGUgbG9vcCBhbmQgYWxsb3cgZm9yXG4gICAgLy8gdGhlIHJlc29sdXRpb24gb2Ygc3VjaCBjeWNsZXMuXG4gICAgdGhpcy5vcFF1ZXVlW29wSW5kZXhdID0gb3AuY2lyY3VsYXJGYWxsYmFjaygpO1xuICAgIGNvbnN0IHJlcyA9IG9wLmV4ZWN1dGUoKTtcbiAgICAvLyBPbmNlIHRoZSBvcGVyYXRpb24gaGFzIGZpbmlzaGVkIGV4ZWN1dGluZywgaXQncyBzYWZlIHRvIGNhY2hlIHRoZSByZWFsIHJlc3VsdC5cbiAgICB0aGlzLm9wUXVldWVbb3BJbmRleF0gPSByZXM7XG4gICAgcmV0dXJuIHJlcztcbiAgfVxuXG4gIHByaXZhdGUgYXBwZW5kTm9kZShub2RlOiBUbXBsQXN0Tm9kZSk6IHZvaWQge1xuICAgIGlmIChub2RlIGluc3RhbmNlb2YgVG1wbEFzdEVsZW1lbnQpIHtcbiAgICAgIGNvbnN0IG9wSW5kZXggPSB0aGlzLm9wUXVldWUucHVzaChuZXcgVGNiRWxlbWVudE9wKHRoaXMudGNiLCB0aGlzLCBub2RlKSkgLSAxO1xuICAgICAgdGhpcy5lbGVtZW50T3BNYXAuc2V0KG5vZGUsIG9wSW5kZXgpO1xuICAgICAgdGhpcy5hcHBlbmREaXJlY3RpdmVzQW5kSW5wdXRzT2ZOb2RlKG5vZGUpO1xuICAgICAgdGhpcy5hcHBlbmRPdXRwdXRzT2ZOb2RlKG5vZGUpO1xuICAgICAgZm9yIChjb25zdCBjaGlsZCBvZiBub2RlLmNoaWxkcmVuKSB7XG4gICAgICAgIHRoaXMuYXBwZW5kTm9kZShjaGlsZCk7XG4gICAgICB9XG4gICAgICB0aGlzLmNoZWNrUmVmZXJlbmNlc09mTm9kZShub2RlKTtcbiAgICB9IGVsc2UgaWYgKG5vZGUgaW5zdGFuY2VvZiBUbXBsQXN0VGVtcGxhdGUpIHtcbiAgICAgIC8vIFRlbXBsYXRlIGNoaWxkcmVuIGFyZSByZW5kZXJlZCBpbiBhIGNoaWxkIHNjb3BlLlxuICAgICAgdGhpcy5hcHBlbmREaXJlY3RpdmVzQW5kSW5wdXRzT2ZOb2RlKG5vZGUpO1xuICAgICAgdGhpcy5hcHBlbmRPdXRwdXRzT2ZOb2RlKG5vZGUpO1xuICAgICAgaWYgKHRoaXMudGNiLmVudi5jb25maWcuY2hlY2tUZW1wbGF0ZUJvZGllcykge1xuICAgICAgICBjb25zdCBjdHhJbmRleCA9IHRoaXMub3BRdWV1ZS5wdXNoKG5ldyBUY2JUZW1wbGF0ZUNvbnRleHRPcCh0aGlzLnRjYiwgdGhpcykpIC0gMTtcbiAgICAgICAgdGhpcy50ZW1wbGF0ZUN0eE9wTWFwLnNldChub2RlLCBjdHhJbmRleCk7XG4gICAgICAgIHRoaXMub3BRdWV1ZS5wdXNoKG5ldyBUY2JUZW1wbGF0ZUJvZHlPcCh0aGlzLnRjYiwgdGhpcywgbm9kZSkpO1xuICAgICAgfVxuICAgICAgdGhpcy5jaGVja1JlZmVyZW5jZXNPZk5vZGUobm9kZSk7XG4gICAgfSBlbHNlIGlmIChub2RlIGluc3RhbmNlb2YgVG1wbEFzdEJvdW5kVGV4dCkge1xuICAgICAgdGhpcy5vcFF1ZXVlLnB1c2gobmV3IFRjYlRleHRJbnRlcnBvbGF0aW9uT3AodGhpcy50Y2IsIHRoaXMsIG5vZGUpKTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIGNoZWNrUmVmZXJlbmNlc09mTm9kZShub2RlOiBUbXBsQXN0RWxlbWVudHxUbXBsQXN0VGVtcGxhdGUpOiB2b2lkIHtcbiAgICBmb3IgKGNvbnN0IHJlZiBvZiBub2RlLnJlZmVyZW5jZXMpIHtcbiAgICAgIGlmICh0aGlzLnRjYi5ib3VuZFRhcmdldC5nZXRSZWZlcmVuY2VUYXJnZXQocmVmKSA9PT0gbnVsbCkge1xuICAgICAgICB0aGlzLnRjYi5vb2JSZWNvcmRlci5taXNzaW5nUmVmZXJlbmNlVGFyZ2V0KHRoaXMudGNiLmlkLCByZWYpO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgYXBwZW5kRGlyZWN0aXZlc0FuZElucHV0c09mTm9kZShub2RlOiBUbXBsQXN0RWxlbWVudHxUbXBsQXN0VGVtcGxhdGUpOiB2b2lkIHtcbiAgICAvLyBDb2xsZWN0IGFsbCB0aGUgaW5wdXRzIG9uIHRoZSBlbGVtZW50LlxuICAgIGNvbnN0IGNsYWltZWRJbnB1dHMgPSBuZXcgU2V0PHN0cmluZz4oKTtcbiAgICBjb25zdCBkaXJlY3RpdmVzID0gdGhpcy50Y2IuYm91bmRUYXJnZXQuZ2V0RGlyZWN0aXZlc09mTm9kZShub2RlKTtcbiAgICBpZiAoZGlyZWN0aXZlcyA9PT0gbnVsbCB8fCBkaXJlY3RpdmVzLmxlbmd0aCA9PT0gMCkge1xuICAgICAgLy8gSWYgdGhlcmUgYXJlIG5vIGRpcmVjdGl2ZXMsIHRoZW4gYWxsIGlucHV0cyBhcmUgdW5jbGFpbWVkIGlucHV0cywgc28gcXVldWUgYW4gb3BlcmF0aW9uXG4gICAgICAvLyB0byBhZGQgdGhlbSBpZiBuZWVkZWQuXG4gICAgICBpZiAobm9kZSBpbnN0YW5jZW9mIFRtcGxBc3RFbGVtZW50KSB7XG4gICAgICAgIHRoaXMub3BRdWV1ZS5wdXNoKG5ldyBUY2JVbmNsYWltZWRJbnB1dHNPcCh0aGlzLnRjYiwgdGhpcywgbm9kZSwgY2xhaW1lZElucHV0cykpO1xuICAgICAgICB0aGlzLm9wUXVldWUucHVzaChcbiAgICAgICAgICAgIG5ldyBUY2JEb21TY2hlbWFDaGVja2VyT3AodGhpcy50Y2IsIG5vZGUsIC8qIGNoZWNrRWxlbWVudCAqLyB0cnVlLCBjbGFpbWVkSW5wdXRzKSk7XG4gICAgICB9XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3QgZGlyTWFwID0gbmV3IE1hcDxUeXBlQ2hlY2thYmxlRGlyZWN0aXZlTWV0YSwgbnVtYmVyPigpO1xuICAgIGZvciAoY29uc3QgZGlyIG9mIGRpcmVjdGl2ZXMpIHtcbiAgICAgIGNvbnN0IGRpckluZGV4ID0gdGhpcy5vcFF1ZXVlLnB1c2gobmV3IFRjYkRpcmVjdGl2ZU9wKHRoaXMudGNiLCB0aGlzLCBub2RlLCBkaXIpKSAtIDE7XG4gICAgICBkaXJNYXAuc2V0KGRpciwgZGlySW5kZXgpO1xuICAgIH1cbiAgICB0aGlzLmRpcmVjdGl2ZU9wTWFwLnNldChub2RlLCBkaXJNYXApO1xuXG4gICAgLy8gQWZ0ZXIgZXhwYW5kaW5nIHRoZSBkaXJlY3RpdmVzLCB3ZSBtaWdodCBuZWVkIHRvIHF1ZXVlIGFuIG9wZXJhdGlvbiB0byBjaGVjayBhbnkgdW5jbGFpbWVkXG4gICAgLy8gaW5wdXRzLlxuICAgIGlmIChub2RlIGluc3RhbmNlb2YgVG1wbEFzdEVsZW1lbnQpIHtcbiAgICAgIC8vIEdvIHRocm91Z2ggdGhlIGRpcmVjdGl2ZXMgYW5kIHJlbW92ZSBhbnkgaW5wdXRzIHRoYXQgaXQgY2xhaW1zIGZyb20gYGVsZW1lbnRJbnB1dHNgLlxuICAgICAgZm9yIChjb25zdCBkaXIgb2YgZGlyZWN0aXZlcykge1xuICAgICAgICBmb3IgKGNvbnN0IGZpZWxkTmFtZSBvZiBPYmplY3Qua2V5cyhkaXIuaW5wdXRzKSkge1xuICAgICAgICAgIGNvbnN0IHZhbHVlID0gZGlyLmlucHV0c1tmaWVsZE5hbWVdO1xuICAgICAgICAgIGNsYWltZWRJbnB1dHMuYWRkKEFycmF5LmlzQXJyYXkodmFsdWUpID8gdmFsdWVbMF0gOiB2YWx1ZSk7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgdGhpcy5vcFF1ZXVlLnB1c2gobmV3IFRjYlVuY2xhaW1lZElucHV0c09wKHRoaXMudGNiLCB0aGlzLCBub2RlLCBjbGFpbWVkSW5wdXRzKSk7XG4gICAgICAvLyBJZiB0aGVyZSBhcmUgbm8gZGlyZWN0aXZlcyB3aGljaCBtYXRjaCB0aGlzIGVsZW1lbnQsIHRoZW4gaXQncyBhIFwicGxhaW5cIiBET00gZWxlbWVudCAob3IgYVxuICAgICAgLy8gd2ViIGNvbXBvbmVudCksIGFuZCBzaG91bGQgYmUgY2hlY2tlZCBhZ2FpbnN0IHRoZSBET00gc2NoZW1hLiBJZiBhbnkgZGlyZWN0aXZlcyBtYXRjaCxcbiAgICAgIC8vIHdlIG11c3QgYXNzdW1lIHRoYXQgdGhlIGVsZW1lbnQgY291bGQgYmUgY3VzdG9tIChlaXRoZXIgYSBjb21wb25lbnQsIG9yIGEgZGlyZWN0aXZlIGxpa2VcbiAgICAgIC8vIDxyb3V0ZXItb3V0bGV0PikgYW5kIHNob3VsZG4ndCB2YWxpZGF0ZSB0aGUgZWxlbWVudCBuYW1lIGl0c2VsZi5cbiAgICAgIGNvbnN0IGNoZWNrRWxlbWVudCA9IGRpcmVjdGl2ZXMubGVuZ3RoID09PSAwO1xuICAgICAgdGhpcy5vcFF1ZXVlLnB1c2gobmV3IFRjYkRvbVNjaGVtYUNoZWNrZXJPcCh0aGlzLnRjYiwgbm9kZSwgY2hlY2tFbGVtZW50LCBjbGFpbWVkSW5wdXRzKSk7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBhcHBlbmRPdXRwdXRzT2ZOb2RlKG5vZGU6IFRtcGxBc3RFbGVtZW50fFRtcGxBc3RUZW1wbGF0ZSk6IHZvaWQge1xuICAgIC8vIENvbGxlY3QgYWxsIHRoZSBvdXRwdXRzIG9uIHRoZSBlbGVtZW50LlxuICAgIGNvbnN0IGNsYWltZWRPdXRwdXRzID0gbmV3IFNldDxzdHJpbmc+KCk7XG4gICAgY29uc3QgZGlyZWN0aXZlcyA9IHRoaXMudGNiLmJvdW5kVGFyZ2V0LmdldERpcmVjdGl2ZXNPZk5vZGUobm9kZSk7XG4gICAgaWYgKGRpcmVjdGl2ZXMgPT09IG51bGwgfHwgZGlyZWN0aXZlcy5sZW5ndGggPT09IDApIHtcbiAgICAgIC8vIElmIHRoZXJlIGFyZSBubyBkaXJlY3RpdmVzLCB0aGVuIGFsbCBvdXRwdXRzIGFyZSB1bmNsYWltZWQgb3V0cHV0cywgc28gcXVldWUgYW4gb3BlcmF0aW9uXG4gICAgICAvLyB0byBhZGQgdGhlbSBpZiBuZWVkZWQuXG4gICAgICBpZiAobm9kZSBpbnN0YW5jZW9mIFRtcGxBc3RFbGVtZW50KSB7XG4gICAgICAgIHRoaXMub3BRdWV1ZS5wdXNoKG5ldyBUY2JVbmNsYWltZWRPdXRwdXRzT3AodGhpcy50Y2IsIHRoaXMsIG5vZGUsIGNsYWltZWRPdXRwdXRzKSk7XG4gICAgICB9XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgLy8gUXVldWUgb3BlcmF0aW9ucyBmb3IgYWxsIGRpcmVjdGl2ZXMgdG8gY2hlY2sgdGhlIHJlbGV2YW50IG91dHB1dHMgZm9yIGEgZGlyZWN0aXZlLlxuICAgIGZvciAoY29uc3QgZGlyIG9mIGRpcmVjdGl2ZXMpIHtcbiAgICAgIHRoaXMub3BRdWV1ZS5wdXNoKG5ldyBUY2JEaXJlY3RpdmVPdXRwdXRzT3AodGhpcy50Y2IsIHRoaXMsIG5vZGUsIGRpcikpO1xuICAgIH1cblxuICAgIC8vIEFmdGVyIGV4cGFuZGluZyB0aGUgZGlyZWN0aXZlcywgd2UgbWlnaHQgbmVlZCB0byBxdWV1ZSBhbiBvcGVyYXRpb24gdG8gY2hlY2sgYW55IHVuY2xhaW1lZFxuICAgIC8vIG91dHB1dHMuXG4gICAgaWYgKG5vZGUgaW5zdGFuY2VvZiBUbXBsQXN0RWxlbWVudCkge1xuICAgICAgLy8gR28gdGhyb3VnaCB0aGUgZGlyZWN0aXZlcyBhbmQgcmVnaXN0ZXIgYW55IG91dHB1dHMgdGhhdCBpdCBjbGFpbXMgaW4gYGNsYWltZWRPdXRwdXRzYC5cbiAgICAgIGZvciAoY29uc3QgZGlyIG9mIGRpcmVjdGl2ZXMpIHtcbiAgICAgICAgZm9yIChjb25zdCBvdXRwdXRGaWVsZCBvZiBPYmplY3Qua2V5cyhkaXIub3V0cHV0cykpIHtcbiAgICAgICAgICBjbGFpbWVkT3V0cHV0cy5hZGQoZGlyLm91dHB1dHNbb3V0cHV0RmllbGRdKTtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICB0aGlzLm9wUXVldWUucHVzaChuZXcgVGNiVW5jbGFpbWVkT3V0cHV0c09wKHRoaXMudGNiLCB0aGlzLCBub2RlLCBjbGFpbWVkT3V0cHV0cykpO1xuICAgIH1cbiAgfVxufVxuXG4vKipcbiAqIENyZWF0ZSB0aGUgYGN0eGAgcGFyYW1ldGVyIHRvIHRoZSB0b3AtbGV2ZWwgVENCIGZ1bmN0aW9uLlxuICpcbiAqIFRoaXMgaXMgYSBwYXJhbWV0ZXIgd2l0aCBhIHR5cGUgZXF1aXZhbGVudCB0byB0aGUgY29tcG9uZW50IHR5cGUsIHdpdGggYWxsIGdlbmVyaWMgdHlwZVxuICogcGFyYW1ldGVycyBsaXN0ZWQgKHdpdGhvdXQgdGhlaXIgZ2VuZXJpYyBib3VuZHMpLlxuICovXG5mdW5jdGlvbiB0Y2JDdHhQYXJhbShcbiAgICBub2RlOiBDbGFzc0RlY2xhcmF0aW9uPHRzLkNsYXNzRGVjbGFyYXRpb24+LCBuYW1lOiB0cy5FbnRpdHlOYW1lLFxuICAgIHVzZUdlbmVyaWNUeXBlOiBib29sZWFuKTogdHMuUGFyYW1ldGVyRGVjbGFyYXRpb24ge1xuICBsZXQgdHlwZUFyZ3VtZW50czogdHMuVHlwZU5vZGVbXXx1bmRlZmluZWQgPSB1bmRlZmluZWQ7XG4gIC8vIENoZWNrIGlmIHRoZSBjb21wb25lbnQgaXMgZ2VuZXJpYywgYW5kIHBhc3MgZ2VuZXJpYyB0eXBlIHBhcmFtZXRlcnMgaWYgc28uXG4gIGlmIChub2RlLnR5cGVQYXJhbWV0ZXJzICE9PSB1bmRlZmluZWQpIHtcbiAgICBpZiAodXNlR2VuZXJpY1R5cGUpIHtcbiAgICAgIHR5cGVBcmd1bWVudHMgPVxuICAgICAgICAgIG5vZGUudHlwZVBhcmFtZXRlcnMubWFwKHBhcmFtID0+IHRzLmNyZWF0ZVR5cGVSZWZlcmVuY2VOb2RlKHBhcmFtLm5hbWUsIHVuZGVmaW5lZCkpO1xuICAgIH0gZWxzZSB7XG4gICAgICB0eXBlQXJndW1lbnRzID1cbiAgICAgICAgICBub2RlLnR5cGVQYXJhbWV0ZXJzLm1hcCgoKSA9PiB0cy5jcmVhdGVLZXl3b3JkVHlwZU5vZGUodHMuU3ludGF4S2luZC5BbnlLZXl3b3JkKSk7XG4gICAgfVxuICB9XG4gIGNvbnN0IHR5cGUgPSB0cy5jcmVhdGVUeXBlUmVmZXJlbmNlTm9kZShuYW1lLCB0eXBlQXJndW1lbnRzKTtcbiAgcmV0dXJuIHRzLmNyZWF0ZVBhcmFtZXRlcihcbiAgICAgIC8qIGRlY29yYXRvcnMgKi8gdW5kZWZpbmVkLFxuICAgICAgLyogbW9kaWZpZXJzICovIHVuZGVmaW5lZCxcbiAgICAgIC8qIGRvdERvdERvdFRva2VuICovIHVuZGVmaW5lZCxcbiAgICAgIC8qIG5hbWUgKi8gJ2N0eCcsXG4gICAgICAvKiBxdWVzdGlvblRva2VuICovIHVuZGVmaW5lZCxcbiAgICAgIC8qIHR5cGUgKi8gdHlwZSxcbiAgICAgIC8qIGluaXRpYWxpemVyICovIHVuZGVmaW5lZCk7XG59XG5cbi8qKlxuICogUHJvY2VzcyBhbiBgQVNUYCBleHByZXNzaW9uIGFuZCBjb252ZXJ0IGl0IGludG8gYSBgdHMuRXhwcmVzc2lvbmAsIGdlbmVyYXRpbmcgcmVmZXJlbmNlcyB0byB0aGVcbiAqIGNvcnJlY3QgaWRlbnRpZmllcnMgaW4gdGhlIGN1cnJlbnQgc2NvcGUuXG4gKi9cbmZ1bmN0aW9uIHRjYkV4cHJlc3Npb24oYXN0OiBBU1QsIHRjYjogQ29udGV4dCwgc2NvcGU6IFNjb3BlKTogdHMuRXhwcmVzc2lvbiB7XG4gIGNvbnN0IHRyYW5zbGF0b3IgPSBuZXcgVGNiRXhwcmVzc2lvblRyYW5zbGF0b3IodGNiLCBzY29wZSk7XG4gIHJldHVybiB0cmFuc2xhdG9yLnRyYW5zbGF0ZShhc3QpO1xufVxuXG5jbGFzcyBUY2JFeHByZXNzaW9uVHJhbnNsYXRvciB7XG4gIGNvbnN0cnVjdG9yKHByb3RlY3RlZCB0Y2I6IENvbnRleHQsIHByb3RlY3RlZCBzY29wZTogU2NvcGUpIHt9XG5cbiAgdHJhbnNsYXRlKGFzdDogQVNUKTogdHMuRXhwcmVzc2lvbiB7XG4gICAgLy8gYGFzdFRvVHlwZXNjcmlwdGAgYWN0dWFsbHkgZG9lcyB0aGUgY29udmVyc2lvbi4gQSBzcGVjaWFsIHJlc29sdmVyIGB0Y2JSZXNvbHZlYCBpcyBwYXNzZWRcbiAgICAvLyB3aGljaCBpbnRlcnByZXRzIHNwZWNpZmljIGV4cHJlc3Npb24gbm9kZXMgdGhhdCBpbnRlcmFjdCB3aXRoIHRoZSBgSW1wbGljaXRSZWNlaXZlcmAuIFRoZXNlXG4gICAgLy8gbm9kZXMgYWN0dWFsbHkgcmVmZXIgdG8gaWRlbnRpZmllcnMgd2l0aGluIHRoZSBjdXJyZW50IHNjb3BlLlxuICAgIHJldHVybiBhc3RUb1R5cGVzY3JpcHQoYXN0LCBhc3QgPT4gdGhpcy5yZXNvbHZlKGFzdCksIHRoaXMudGNiLmVudi5jb25maWcpO1xuICB9XG5cbiAgLyoqXG4gICAqIFJlc29sdmUgYW4gYEFTVGAgZXhwcmVzc2lvbiB3aXRoaW4gdGhlIGdpdmVuIHNjb3BlLlxuICAgKlxuICAgKiBTb21lIGBBU1RgIGV4cHJlc3Npb25zIHJlZmVyIHRvIHRvcC1sZXZlbCBjb25jZXB0cyAocmVmZXJlbmNlcywgdmFyaWFibGVzLCB0aGUgY29tcG9uZW50XG4gICAqIGNvbnRleHQpLiBUaGlzIG1ldGhvZCBhc3Npc3RzIGluIHJlc29sdmluZyB0aG9zZS5cbiAgICovXG4gIHByb3RlY3RlZCByZXNvbHZlKGFzdDogQVNUKTogdHMuRXhwcmVzc2lvbnxudWxsIHtcbiAgICBpZiAoYXN0IGluc3RhbmNlb2YgUHJvcGVydHlSZWFkICYmIGFzdC5yZWNlaXZlciBpbnN0YW5jZW9mIEltcGxpY2l0UmVjZWl2ZXIpIHtcbiAgICAgIC8vIFRyeSB0byByZXNvbHZlIGEgYm91bmQgdGFyZ2V0IGZvciB0aGlzIGV4cHJlc3Npb24uIElmIG5vIHN1Y2ggdGFyZ2V0IGlzIGF2YWlsYWJsZSwgdGhlblxuICAgICAgLy8gdGhlIGV4cHJlc3Npb24gaXMgcmVmZXJlbmNpbmcgdGhlIHRvcC1sZXZlbCBjb21wb25lbnQgY29udGV4dC4gSW4gdGhhdCBjYXNlLCBgbnVsbGAgaXNcbiAgICAgIC8vIHJldHVybmVkIGhlcmUgdG8gbGV0IGl0IGZhbGwgdGhyb3VnaCByZXNvbHV0aW9uIHNvIGl0IHdpbGwgYmUgY2F1Z2h0IHdoZW4gdGhlXG4gICAgICAvLyBgSW1wbGljaXRSZWNlaXZlcmAgaXMgcmVzb2x2ZWQgaW4gdGhlIGJyYW5jaCBiZWxvdy5cbiAgICAgIHJldHVybiB0aGlzLnJlc29sdmVUYXJnZXQoYXN0KTtcbiAgICB9IGVsc2UgaWYgKGFzdCBpbnN0YW5jZW9mIFByb3BlcnR5V3JpdGUgJiYgYXN0LnJlY2VpdmVyIGluc3RhbmNlb2YgSW1wbGljaXRSZWNlaXZlcikge1xuICAgICAgY29uc3QgdGFyZ2V0ID0gdGhpcy5yZXNvbHZlVGFyZ2V0KGFzdCk7XG4gICAgICBpZiAodGFyZ2V0ID09PSBudWxsKSB7XG4gICAgICAgIHJldHVybiBudWxsO1xuICAgICAgfVxuXG4gICAgICBjb25zdCBleHByID0gdGhpcy50cmFuc2xhdGUoYXN0LnZhbHVlKTtcbiAgICAgIGNvbnN0IHJlc3VsdCA9IHRzLmNyZWF0ZVBhcmVuKHRzLmNyZWF0ZUJpbmFyeSh0YXJnZXQsIHRzLlN5bnRheEtpbmQuRXF1YWxzVG9rZW4sIGV4cHIpKTtcbiAgICAgIGFkZFBhcnNlU3BhbkluZm8ocmVzdWx0LCBhc3Quc291cmNlU3Bhbik7XG4gICAgICByZXR1cm4gcmVzdWx0O1xuICAgIH0gZWxzZSBpZiAoYXN0IGluc3RhbmNlb2YgSW1wbGljaXRSZWNlaXZlcikge1xuICAgICAgLy8gQVNUIGluc3RhbmNlcyByZXByZXNlbnRpbmcgdmFyaWFibGVzIGFuZCByZWZlcmVuY2VzIGxvb2sgdmVyeSBzaW1pbGFyIHRvIHByb3BlcnR5IHJlYWRzXG4gICAgICAvLyBvciBtZXRob2QgY2FsbHMgZnJvbSB0aGUgY29tcG9uZW50IGNvbnRleHQ6IGJvdGggaGF2ZSB0aGUgc2hhcGVcbiAgICAgIC8vIFByb3BlcnR5UmVhZChJbXBsaWNpdFJlY2VpdmVyLCAncHJvcE5hbWUnKSBvciBNZXRob2RDYWxsKEltcGxpY2l0UmVjZWl2ZXIsICdtZXRob2ROYW1lJykuXG4gICAgICAvL1xuICAgICAgLy8gYHRyYW5zbGF0ZWAgd2lsbCBmaXJzdCB0cnkgdG8gYHJlc29sdmVgIHRoZSBvdXRlciBQcm9wZXJ0eVJlYWQvTWV0aG9kQ2FsbC4gSWYgdGhpcyB3b3JrcyxcbiAgICAgIC8vIGl0J3MgYmVjYXVzZSB0aGUgYEJvdW5kVGFyZ2V0YCBmb3VuZCBhbiBleHByZXNzaW9uIHRhcmdldCBmb3IgdGhlIHdob2xlIGV4cHJlc3Npb24sIGFuZFxuICAgICAgLy8gdGhlcmVmb3JlIGB0cmFuc2xhdGVgIHdpbGwgbmV2ZXIgYXR0ZW1wdCB0byBgcmVzb2x2ZWAgdGhlIEltcGxpY2l0UmVjZWl2ZXIgb2YgdGhhdFxuICAgICAgLy8gUHJvcGVydHlSZWFkL01ldGhvZENhbGwuXG4gICAgICAvL1xuICAgICAgLy8gVGhlcmVmb3JlIGlmIGByZXNvbHZlYCBpcyBjYWxsZWQgb24gYW4gYEltcGxpY2l0UmVjZWl2ZXJgLCBpdCdzIGJlY2F1c2Ugbm8gb3V0ZXJcbiAgICAgIC8vIFByb3BlcnR5UmVhZC9NZXRob2RDYWxsIHJlc29sdmVkIHRvIGEgdmFyaWFibGUgb3IgcmVmZXJlbmNlLCBhbmQgdGhlcmVmb3JlIHRoaXMgaXMgYVxuICAgICAgLy8gcHJvcGVydHkgcmVhZCBvciBtZXRob2QgY2FsbCBvbiB0aGUgY29tcG9uZW50IGNvbnRleHQgaXRzZWxmLlxuICAgICAgcmV0dXJuIHRzLmNyZWF0ZUlkZW50aWZpZXIoJ2N0eCcpO1xuICAgIH0gZWxzZSBpZiAoYXN0IGluc3RhbmNlb2YgQmluZGluZ1BpcGUpIHtcbiAgICAgIGNvbnN0IGV4cHIgPSB0aGlzLnRyYW5zbGF0ZShhc3QuZXhwKTtcbiAgICAgIGxldCBwaXBlOiB0cy5FeHByZXNzaW9ufG51bGw7XG4gICAgICBpZiAodGhpcy50Y2IuZW52LmNvbmZpZy5jaGVja1R5cGVPZlBpcGVzKSB7XG4gICAgICAgIHBpcGUgPSB0aGlzLnRjYi5nZXRQaXBlQnlOYW1lKGFzdC5uYW1lKTtcbiAgICAgICAgaWYgKHBpcGUgPT09IG51bGwpIHtcbiAgICAgICAgICAvLyBObyBwaXBlIGJ5IHRoYXQgbmFtZSBleGlzdHMgaW4gc2NvcGUuIFJlY29yZCB0aGlzIGFzIGFuIGVycm9yLlxuICAgICAgICAgIHRoaXMudGNiLm9vYlJlY29yZGVyLm1pc3NpbmdQaXBlKHRoaXMudGNiLmlkLCBhc3QpO1xuXG4gICAgICAgICAgLy8gUmV0dXJuIGFuICdhbnknIHZhbHVlIHRvIGF0IGxlYXN0IGFsbG93IHRoZSByZXN0IG9mIHRoZSBleHByZXNzaW9uIHRvIGJlIGNoZWNrZWQuXG4gICAgICAgICAgcGlwZSA9IE5VTExfQVNfQU5ZO1xuICAgICAgICB9XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBwaXBlID0gdHMuY3JlYXRlUGFyZW4odHMuY3JlYXRlQXNFeHByZXNzaW9uKFxuICAgICAgICAgICAgdHMuY3JlYXRlTnVsbCgpLCB0cy5jcmVhdGVLZXl3b3JkVHlwZU5vZGUodHMuU3ludGF4S2luZC5BbnlLZXl3b3JkKSkpO1xuICAgICAgfVxuICAgICAgY29uc3QgYXJncyA9IGFzdC5hcmdzLm1hcChhcmcgPT4gdGhpcy50cmFuc2xhdGUoYXJnKSk7XG4gICAgICBjb25zdCByZXN1bHQgPSB0c0NhbGxNZXRob2QocGlwZSwgJ3RyYW5zZm9ybScsIFtleHByLCAuLi5hcmdzXSk7XG4gICAgICBhZGRQYXJzZVNwYW5JbmZvKHJlc3VsdCwgYXN0LnNvdXJjZVNwYW4pO1xuICAgICAgcmV0dXJuIHJlc3VsdDtcbiAgICB9IGVsc2UgaWYgKGFzdCBpbnN0YW5jZW9mIE1ldGhvZENhbGwgJiYgYXN0LnJlY2VpdmVyIGluc3RhbmNlb2YgSW1wbGljaXRSZWNlaXZlcikge1xuICAgICAgLy8gUmVzb2x2ZSB0aGUgc3BlY2lhbCBgJGFueShleHByKWAgc3ludGF4IHRvIGluc2VydCBhIGNhc3Qgb2YgdGhlIGFyZ3VtZW50IHRvIHR5cGUgYGFueWAuXG4gICAgICAvLyBgJGFueShleHByKWAgLT4gYGV4cHIgYXMgYW55YFxuICAgICAgaWYgKGFzdC5uYW1lID09PSAnJGFueScgJiYgYXN0LmFyZ3MubGVuZ3RoID09PSAxKSB7XG4gICAgICAgIGNvbnN0IGV4cHIgPSB0aGlzLnRyYW5zbGF0ZShhc3QuYXJnc1swXSk7XG4gICAgICAgIGNvbnN0IGV4cHJBc0FueSA9XG4gICAgICAgICAgICB0cy5jcmVhdGVBc0V4cHJlc3Npb24oZXhwciwgdHMuY3JlYXRlS2V5d29yZFR5cGVOb2RlKHRzLlN5bnRheEtpbmQuQW55S2V5d29yZCkpO1xuICAgICAgICBjb25zdCByZXN1bHQgPSB0cy5jcmVhdGVQYXJlbihleHByQXNBbnkpO1xuICAgICAgICBhZGRQYXJzZVNwYW5JbmZvKHJlc3VsdCwgYXN0LnNvdXJjZVNwYW4pO1xuICAgICAgICByZXR1cm4gcmVzdWx0O1xuICAgICAgfVxuXG4gICAgICAvLyBBdHRlbXB0IHRvIHJlc29sdmUgYSBib3VuZCB0YXJnZXQgZm9yIHRoZSBtZXRob2QsIGFuZCBnZW5lcmF0ZSB0aGUgbWV0aG9kIGNhbGwgaWYgYSB0YXJnZXRcbiAgICAgIC8vIGNvdWxkIGJlIHJlc29sdmVkLiBJZiBubyB0YXJnZXQgaXMgYXZhaWxhYmxlLCB0aGVuIHRoZSBtZXRob2QgaXMgcmVmZXJlbmNpbmcgdGhlIHRvcC1sZXZlbFxuICAgICAgLy8gY29tcG9uZW50IGNvbnRleHQsIGluIHdoaWNoIGNhc2UgYG51bGxgIGlzIHJldHVybmVkIHRvIGxldCB0aGUgYEltcGxpY2l0UmVjZWl2ZXJgIGJlaW5nXG4gICAgICAvLyByZXNvbHZlZCB0byB0aGUgY29tcG9uZW50IGNvbnRleHQuXG4gICAgICBjb25zdCByZWNlaXZlciA9IHRoaXMucmVzb2x2ZVRhcmdldChhc3QpO1xuICAgICAgaWYgKHJlY2VpdmVyID09PSBudWxsKSB7XG4gICAgICAgIHJldHVybiBudWxsO1xuICAgICAgfVxuXG4gICAgICBjb25zdCBtZXRob2QgPSB0cy5jcmVhdGVQcm9wZXJ0eUFjY2Vzcyh3cmFwRm9yRGlhZ25vc3RpY3MocmVjZWl2ZXIpLCBhc3QubmFtZSk7XG4gICAgICBhZGRQYXJzZVNwYW5JbmZvKG1ldGhvZCwgYXN0Lm5hbWVTcGFuKTtcbiAgICAgIGNvbnN0IGFyZ3MgPSBhc3QuYXJncy5tYXAoYXJnID0+IHRoaXMudHJhbnNsYXRlKGFyZykpO1xuICAgICAgY29uc3Qgbm9kZSA9IHRzLmNyZWF0ZUNhbGwobWV0aG9kLCB1bmRlZmluZWQsIGFyZ3MpO1xuICAgICAgYWRkUGFyc2VTcGFuSW5mbyhub2RlLCBhc3Quc291cmNlU3Bhbik7XG4gICAgICByZXR1cm4gbm9kZTtcbiAgICB9IGVsc2Uge1xuICAgICAgLy8gVGhpcyBBU1QgaXNuJ3Qgc3BlY2lhbCBhZnRlciBhbGwuXG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogQXR0ZW1wdHMgdG8gcmVzb2x2ZSBhIGJvdW5kIHRhcmdldCBmb3IgYSBnaXZlbiBleHByZXNzaW9uLCBhbmQgdHJhbnNsYXRlcyBpdCBpbnRvIHRoZVxuICAgKiBhcHByb3ByaWF0ZSBgdHMuRXhwcmVzc2lvbmAgdGhhdCByZXByZXNlbnRzIHRoZSBib3VuZCB0YXJnZXQuIElmIG5vIHRhcmdldCBpcyBhdmFpbGFibGUsXG4gICAqIGBudWxsYCBpcyByZXR1cm5lZC5cbiAgICovXG4gIHByb3RlY3RlZCByZXNvbHZlVGFyZ2V0KGFzdDogQVNUKTogdHMuRXhwcmVzc2lvbnxudWxsIHtcbiAgICBjb25zdCBiaW5kaW5nID0gdGhpcy50Y2IuYm91bmRUYXJnZXQuZ2V0RXhwcmVzc2lvblRhcmdldChhc3QpO1xuICAgIGlmIChiaW5kaW5nID09PSBudWxsKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICAvLyBUaGlzIGV4cHJlc3Npb24gaGFzIGEgYmluZGluZyB0byBzb21lIHZhcmlhYmxlIG9yIHJlZmVyZW5jZSBpbiB0aGUgdGVtcGxhdGUuIFJlc29sdmUgaXQuXG4gICAgaWYgKGJpbmRpbmcgaW5zdGFuY2VvZiBUbXBsQXN0VmFyaWFibGUpIHtcbiAgICAgIGNvbnN0IGV4cHIgPSB0cy5nZXRNdXRhYmxlQ2xvbmUodGhpcy5zY29wZS5yZXNvbHZlKGJpbmRpbmcpKTtcbiAgICAgIGFkZFBhcnNlU3BhbkluZm8oZXhwciwgYXN0LnNvdXJjZVNwYW4pO1xuICAgICAgcmV0dXJuIGV4cHI7XG4gICAgfSBlbHNlIGlmIChiaW5kaW5nIGluc3RhbmNlb2YgVG1wbEFzdFJlZmVyZW5jZSkge1xuICAgICAgY29uc3QgdGFyZ2V0ID0gdGhpcy50Y2IuYm91bmRUYXJnZXQuZ2V0UmVmZXJlbmNlVGFyZ2V0KGJpbmRpbmcpO1xuICAgICAgaWYgKHRhcmdldCA9PT0gbnVsbCkge1xuICAgICAgICAvLyBUaGlzIHJlZmVyZW5jZSBpcyB1bmJvdW5kLiBUcmF2ZXJzYWwgb2YgdGhlIGBUbXBsQXN0UmVmZXJlbmNlYCBpdHNlbGYgc2hvdWxkIGhhdmVcbiAgICAgICAgLy8gcmVjb3JkZWQgdGhlIGVycm9yIGluIHRoZSBgT3V0T2ZCYW5kRGlhZ25vc3RpY1JlY29yZGVyYC5cbiAgICAgICAgLy8gU3RpbGwgY2hlY2sgdGhlIHJlc3Qgb2YgdGhlIGV4cHJlc3Npb24gaWYgcG9zc2libGUgYnkgdXNpbmcgYW4gYGFueWAgdmFsdWUuXG4gICAgICAgIHJldHVybiBOVUxMX0FTX0FOWTtcbiAgICAgIH1cblxuICAgICAgLy8gVGhlIHJlZmVyZW5jZSBpcyBlaXRoZXIgdG8gYW4gZWxlbWVudCwgYW4gPG5nLXRlbXBsYXRlPiBub2RlLCBvciB0byBhIGRpcmVjdGl2ZSBvbiBhblxuICAgICAgLy8gZWxlbWVudCBvciB0ZW1wbGF0ZS5cblxuICAgICAgaWYgKHRhcmdldCBpbnN0YW5jZW9mIFRtcGxBc3RFbGVtZW50KSB7XG4gICAgICAgIGlmICghdGhpcy50Y2IuZW52LmNvbmZpZy5jaGVja1R5cGVPZkRvbVJlZmVyZW5jZXMpIHtcbiAgICAgICAgICAvLyBSZWZlcmVuY2VzIHRvIERPTSBub2RlcyBhcmUgcGlubmVkIHRvICdhbnknLlxuICAgICAgICAgIHJldHVybiBOVUxMX0FTX0FOWTtcbiAgICAgICAgfVxuXG4gICAgICAgIGNvbnN0IGV4cHIgPSB0cy5nZXRNdXRhYmxlQ2xvbmUodGhpcy5zY29wZS5yZXNvbHZlKHRhcmdldCkpO1xuICAgICAgICBhZGRQYXJzZVNwYW5JbmZvKGV4cHIsIGFzdC5zb3VyY2VTcGFuKTtcbiAgICAgICAgcmV0dXJuIGV4cHI7XG4gICAgICB9IGVsc2UgaWYgKHRhcmdldCBpbnN0YW5jZW9mIFRtcGxBc3RUZW1wbGF0ZSkge1xuICAgICAgICBpZiAoIXRoaXMudGNiLmVudi5jb25maWcuY2hlY2tUeXBlT2ZOb25Eb21SZWZlcmVuY2VzKSB7XG4gICAgICAgICAgLy8gUmVmZXJlbmNlcyB0byBgVGVtcGxhdGVSZWZgcyBwaW5uZWQgdG8gJ2FueScuXG4gICAgICAgICAgcmV0dXJuIE5VTExfQVNfQU5ZO1xuICAgICAgICB9XG5cbiAgICAgICAgLy8gRGlyZWN0IHJlZmVyZW5jZXMgdG8gYW4gPG5nLXRlbXBsYXRlPiBub2RlIHNpbXBseSByZXF1aXJlIGEgdmFsdWUgb2YgdHlwZVxuICAgICAgICAvLyBgVGVtcGxhdGVSZWY8YW55PmAuIFRvIGdldCB0aGlzLCBhbiBleHByZXNzaW9uIG9mIHRoZSBmb3JtXG4gICAgICAgIC8vIGAobnVsbCBhcyBhbnkgYXMgVGVtcGxhdGVSZWY8YW55PilgIGlzIGNvbnN0cnVjdGVkLlxuICAgICAgICBsZXQgdmFsdWU6IHRzLkV4cHJlc3Npb24gPSB0cy5jcmVhdGVOdWxsKCk7XG4gICAgICAgIHZhbHVlID0gdHMuY3JlYXRlQXNFeHByZXNzaW9uKHZhbHVlLCB0cy5jcmVhdGVLZXl3b3JkVHlwZU5vZGUodHMuU3ludGF4S2luZC5BbnlLZXl3b3JkKSk7XG4gICAgICAgIHZhbHVlID0gdHMuY3JlYXRlQXNFeHByZXNzaW9uKFxuICAgICAgICAgICAgdmFsdWUsXG4gICAgICAgICAgICB0aGlzLnRjYi5lbnYucmVmZXJlbmNlRXh0ZXJuYWxUeXBlKCdAYW5ndWxhci9jb3JlJywgJ1RlbXBsYXRlUmVmJywgW0RZTkFNSUNfVFlQRV0pKTtcbiAgICAgICAgdmFsdWUgPSB0cy5jcmVhdGVQYXJlbih2YWx1ZSk7XG4gICAgICAgIGFkZFBhcnNlU3BhbkluZm8odmFsdWUsIGFzdC5zb3VyY2VTcGFuKTtcbiAgICAgICAgcmV0dXJuIHZhbHVlO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgaWYgKCF0aGlzLnRjYi5lbnYuY29uZmlnLmNoZWNrVHlwZU9mTm9uRG9tUmVmZXJlbmNlcykge1xuICAgICAgICAgIC8vIFJlZmVyZW5jZXMgdG8gZGlyZWN0aXZlcyBhcmUgcGlubmVkIHRvICdhbnknLlxuICAgICAgICAgIHJldHVybiBOVUxMX0FTX0FOWTtcbiAgICAgICAgfVxuXG4gICAgICAgIGNvbnN0IGV4cHIgPSB0cy5nZXRNdXRhYmxlQ2xvbmUodGhpcy5zY29wZS5yZXNvbHZlKHRhcmdldC5ub2RlLCB0YXJnZXQuZGlyZWN0aXZlKSk7XG4gICAgICAgIGFkZFBhcnNlU3BhbkluZm8oZXhwciwgYXN0LnNvdXJjZVNwYW4pO1xuICAgICAgICByZXR1cm4gZXhwcjtcbiAgICAgIH1cbiAgICB9IGVsc2Uge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGBVbnJlYWNoYWJsZTogJHtiaW5kaW5nfWApO1xuICAgIH1cbiAgfVxufVxuXG4vKipcbiAqIENhbGwgdGhlIHR5cGUgY29uc3RydWN0b3Igb2YgYSBkaXJlY3RpdmUgaW5zdGFuY2Ugb24gYSBnaXZlbiB0ZW1wbGF0ZSBub2RlLCBpbmZlcnJpbmcgYSB0eXBlIGZvclxuICogdGhlIGRpcmVjdGl2ZSBpbnN0YW5jZSBmcm9tIGFueSBib3VuZCBpbnB1dHMuXG4gKi9cbmZ1bmN0aW9uIHRjYkNhbGxUeXBlQ3RvcihcbiAgICBkaXI6IFR5cGVDaGVja2FibGVEaXJlY3RpdmVNZXRhLCB0Y2I6IENvbnRleHQsIGlucHV0czogVGNiRGlyZWN0aXZlSW5wdXRbXSk6IHRzLkV4cHJlc3Npb24ge1xuICBjb25zdCB0eXBlQ3RvciA9IHRjYi5lbnYudHlwZUN0b3JGb3IoZGlyKTtcblxuICAvLyBDb25zdHJ1Y3QgYW4gYXJyYXkgb2YgYHRzLlByb3BlcnR5QXNzaWdubWVudGBzIGZvciBlYWNoIG9mIHRoZSBkaXJlY3RpdmUncyBpbnB1dHMuXG4gIGNvbnN0IG1lbWJlcnMgPSBpbnB1dHMubWFwKGlucHV0ID0+IHtcbiAgICBjb25zdCBwcm9wZXJ0eU5hbWUgPSB0cy5jcmVhdGVTdHJpbmdMaXRlcmFsKGlucHV0LmZpZWxkKTtcblxuICAgIGlmIChpbnB1dC50eXBlID09PSAnYmluZGluZycpIHtcbiAgICAgIC8vIEZvciBib3VuZCBpbnB1dHMsIHRoZSBwcm9wZXJ0eSBpcyBhc3NpZ25lZCB0aGUgYmluZGluZyBleHByZXNzaW9uLlxuICAgICAgbGV0IGV4cHIgPSBpbnB1dC5leHByZXNzaW9uO1xuICAgICAgaWYgKCF0Y2IuZW52LmNvbmZpZy5jaGVja1R5cGVPZklucHV0QmluZGluZ3MpIHtcbiAgICAgICAgLy8gSWYgY2hlY2tpbmcgdGhlIHR5cGUgb2YgYmluZGluZ3MgaXMgZGlzYWJsZWQsIGNhc3QgdGhlIHJlc3VsdGluZyBleHByZXNzaW9uIHRvICdhbnknXG4gICAgICAgIC8vIGJlZm9yZSB0aGUgYXNzaWdubWVudC5cbiAgICAgICAgZXhwciA9IHRzQ2FzdFRvQW55KGV4cHIpO1xuICAgICAgfSBlbHNlIGlmICghdGNiLmVudi5jb25maWcuc3RyaWN0TnVsbElucHV0QmluZGluZ3MpIHtcbiAgICAgICAgLy8gSWYgc3RyaWN0IG51bGwgY2hlY2tzIGFyZSBkaXNhYmxlZCwgZXJhc2UgYG51bGxgIGFuZCBgdW5kZWZpbmVkYCBmcm9tIHRoZSB0eXBlIGJ5XG4gICAgICAgIC8vIHdyYXBwaW5nIHRoZSBleHByZXNzaW9uIGluIGEgbm9uLW51bGwgYXNzZXJ0aW9uLlxuICAgICAgICBleHByID0gdHMuY3JlYXRlTm9uTnVsbEV4cHJlc3Npb24oZXhwcik7XG4gICAgICB9XG5cbiAgICAgIGNvbnN0IGFzc2lnbm1lbnQgPSB0cy5jcmVhdGVQcm9wZXJ0eUFzc2lnbm1lbnQocHJvcGVydHlOYW1lLCB3cmFwRm9yRGlhZ25vc3RpY3MoZXhwcikpO1xuICAgICAgYWRkUGFyc2VTcGFuSW5mbyhhc3NpZ25tZW50LCBpbnB1dC5zb3VyY2VTcGFuKTtcbiAgICAgIHJldHVybiBhc3NpZ25tZW50O1xuICAgIH0gZWxzZSB7XG4gICAgICAvLyBBIHR5cGUgY29uc3RydWN0b3IgaXMgcmVxdWlyZWQgdG8gYmUgY2FsbGVkIHdpdGggYWxsIGlucHV0IHByb3BlcnRpZXMsIHNvIGFueSB1bnNldFxuICAgICAgLy8gaW5wdXRzIGFyZSBzaW1wbHkgYXNzaWduZWQgYSB2YWx1ZSBvZiB0eXBlIGBhbnlgIHRvIGlnbm9yZSB0aGVtLlxuICAgICAgcmV0dXJuIHRzLmNyZWF0ZVByb3BlcnR5QXNzaWdubWVudChwcm9wZXJ0eU5hbWUsIE5VTExfQVNfQU5ZKTtcbiAgICB9XG4gIH0pO1xuXG4gIC8vIENhbGwgdGhlIGBuZ1R5cGVDdG9yYCBtZXRob2Qgb24gdGhlIGRpcmVjdGl2ZSBjbGFzcywgd2l0aCBhbiBvYmplY3QgbGl0ZXJhbCBhcmd1bWVudCBjcmVhdGVkXG4gIC8vIGZyb20gdGhlIG1hdGNoZWQgaW5wdXRzLlxuICByZXR1cm4gdHMuY3JlYXRlQ2FsbChcbiAgICAgIC8qIGV4cHJlc3Npb24gKi8gdHlwZUN0b3IsXG4gICAgICAvKiB0eXBlQXJndW1lbnRzICovIHVuZGVmaW5lZCxcbiAgICAgIC8qIGFyZ3VtZW50c0FycmF5ICovW3RzLmNyZWF0ZU9iamVjdExpdGVyYWwobWVtYmVycyldKTtcbn1cblxudHlwZSBUY2JEaXJlY3RpdmVJbnB1dCA9IHtcbiAgdHlwZTogJ2JpbmRpbmcnOyBmaWVsZDogc3RyaW5nOyBleHByZXNzaW9uOiB0cy5FeHByZXNzaW9uOyBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW47XG59fHtcbiAgdHlwZTogJ3Vuc2V0JztcbiAgZmllbGQ6IHN0cmluZztcbn07XG5cbmZ1bmN0aW9uIHRjYkdldERpcmVjdGl2ZUlucHV0cyhcbiAgICBlbDogVG1wbEFzdEVsZW1lbnR8VG1wbEFzdFRlbXBsYXRlLCBkaXI6IFR5cGVDaGVja2FibGVEaXJlY3RpdmVNZXRhLCB0Y2I6IENvbnRleHQsXG4gICAgc2NvcGU6IFNjb3BlKTogVGNiRGlyZWN0aXZlSW5wdXRbXSB7XG4gIC8vIE9ubHkgdGhlIGZpcnN0IGJpbmRpbmcgdG8gYSBwcm9wZXJ0eSBpcyB3cml0dGVuLlxuICAvLyBUT0RPKGFseGh1Yik6IHByb2R1Y2UgYW4gZXJyb3IgZm9yIGR1cGxpY2F0ZSBiaW5kaW5ncyB0byB0aGUgc2FtZSBwcm9wZXJ0eSwgaW5kZXBlbmRlbnRseSBvZlxuICAvLyB0aGlzIGxvZ2ljLlxuICBjb25zdCBkaXJlY3RpdmVJbnB1dHMgPSBuZXcgTWFwPHN0cmluZywgVGNiRGlyZWN0aXZlSW5wdXQ+KCk7XG4gIC8vIGBkaXIuaW5wdXRzYCBpcyBhbiBvYmplY3QgbWFwIG9mIGZpZWxkIG5hbWVzIG9uIHRoZSBkaXJlY3RpdmUgY2xhc3MgdG8gcHJvcGVydHkgbmFtZXMuXG4gIC8vIFRoaXMgaXMgYmFja3dhcmRzIGZyb20gd2hhdCdzIG5lZWRlZCB0byBtYXRjaCBiaW5kaW5ncyAtIGEgbWFwIG9mIHByb3BlcnRpZXMgdG8gZmllbGQgbmFtZXNcbiAgLy8gaXMgZGVzaXJlZC4gSW52ZXJ0IGBkaXIuaW5wdXRzYCBpbnRvIGBwcm9wTWF0Y2hgIHRvIGNyZWF0ZSB0aGlzIG1hcC5cbiAgY29uc3QgcHJvcE1hdGNoID0gbmV3IE1hcDxzdHJpbmcsIHN0cmluZz4oKTtcbiAgY29uc3QgaW5wdXRzID0gZGlyLmlucHV0cztcbiAgT2JqZWN0LmtleXMoaW5wdXRzKS5mb3JFYWNoKGtleSA9PiB7XG4gICAgQXJyYXkuaXNBcnJheShpbnB1dHNba2V5XSkgPyBwcm9wTWF0Y2guc2V0KGlucHV0c1trZXldWzBdLCBrZXkpIDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHByb3BNYXRjaC5zZXQoaW5wdXRzW2tleV0gYXMgc3RyaW5nLCBrZXkpO1xuICB9KTtcblxuICBlbC5pbnB1dHMuZm9yRWFjaChwcm9jZXNzQXR0cmlidXRlKTtcbiAgZWwuYXR0cmlidXRlcy5mb3JFYWNoKHByb2Nlc3NBdHRyaWJ1dGUpO1xuICBpZiAoZWwgaW5zdGFuY2VvZiBUbXBsQXN0VGVtcGxhdGUpIHtcbiAgICBlbC50ZW1wbGF0ZUF0dHJzLmZvckVhY2gocHJvY2Vzc0F0dHJpYnV0ZSk7XG4gIH1cblxuICAvLyBBZGQgdW5zZXQgZGlyZWN0aXZlIGlucHV0cyBmb3IgZWFjaCBvZiB0aGUgcmVtYWluaW5nIHVuc2V0IGZpZWxkcy5cbiAgLy8gTm90ZTogaXQncyBhY3R1YWxseSBpbXBvcnRhbnQgaGVyZSB0aGF0IGBwcm9wTWF0Y2gudmFsdWVzKClgIGlzbid0IHVzZWQsIGFzIHRoZXJlIGNhbiBiZVxuICAvLyBtdWx0aXBsZSBmaWVsZHMgd2hpY2ggc2hhcmUgdGhlIHNhbWUgcHJvcGVydHkgbmFtZSBhbmQgb25seSBvbmUgb2YgdGhlbSB3aWxsIGJlIGxpc3RlZCBhcyBhXG4gIC8vIHZhbHVlIGluIGBwcm9wTWF0Y2hgLlxuICBmb3IgKGNvbnN0IGZpZWxkIG9mIE9iamVjdC5rZXlzKGlucHV0cykpIHtcbiAgICBpZiAoIWRpcmVjdGl2ZUlucHV0cy5oYXMoZmllbGQpKSB7XG4gICAgICBkaXJlY3RpdmVJbnB1dHMuc2V0KGZpZWxkLCB7dHlwZTogJ3Vuc2V0JywgZmllbGR9KTtcbiAgICB9XG4gIH1cblxuICByZXR1cm4gQXJyYXkuZnJvbShkaXJlY3RpdmVJbnB1dHMudmFsdWVzKCkpO1xuXG4gIC8qKlxuICAgKiBBZGQgYSBiaW5kaW5nIGV4cHJlc3Npb24gdG8gdGhlIG1hcCBmb3IgZWFjaCBpbnB1dC90ZW1wbGF0ZSBhdHRyaWJ1dGUgb2YgdGhlIGRpcmVjdGl2ZSB0aGF0IGhhc1xuICAgKiBhIG1hdGNoaW5nIGJpbmRpbmcuXG4gICAqL1xuICBmdW5jdGlvbiBwcm9jZXNzQXR0cmlidXRlKGF0dHI6IFRtcGxBc3RCb3VuZEF0dHJpYnV0ZXxUbXBsQXN0VGV4dEF0dHJpYnV0ZSk6IHZvaWQge1xuICAgIC8vIFNraXAgbm9uLXByb3BlcnR5IGJpbmRpbmdzLlxuICAgIGlmIChhdHRyIGluc3RhbmNlb2YgVG1wbEFzdEJvdW5kQXR0cmlidXRlICYmIGF0dHIudHlwZSAhPT0gQmluZGluZ1R5cGUuUHJvcGVydHkpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG5cbiAgICAvLyBTa2lwIHRleHQgYXR0cmlidXRlcyBpZiBjb25maWd1cmVkIHRvIGRvIHNvLlxuICAgIGlmICghdGNiLmVudi5jb25maWcuY2hlY2tUeXBlT2ZBdHRyaWJ1dGVzICYmIGF0dHIgaW5zdGFuY2VvZiBUbXBsQXN0VGV4dEF0dHJpYnV0ZSkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIC8vIFNraXAgdGhlIGF0dHJpYnV0ZSBpZiB0aGUgZGlyZWN0aXZlIGRvZXMgbm90IGhhdmUgYW4gaW5wdXQgZm9yIGl0LlxuICAgIGlmICghcHJvcE1hdGNoLmhhcyhhdHRyLm5hbWUpKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuICAgIGNvbnN0IGZpZWxkID0gcHJvcE1hdGNoLmdldChhdHRyLm5hbWUpITtcblxuICAgIC8vIFNraXAgdGhlIGF0dHJpYnV0ZSBpZiBhIHByZXZpb3VzIGJpbmRpbmcgYWxzbyB3cm90ZSB0byBpdC5cbiAgICBpZiAoZGlyZWN0aXZlSW5wdXRzLmhhcyhmaWVsZCkpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG5cbiAgICBsZXQgZXhwcjogdHMuRXhwcmVzc2lvbjtcbiAgICBpZiAoYXR0ciBpbnN0YW5jZW9mIFRtcGxBc3RCb3VuZEF0dHJpYnV0ZSkge1xuICAgICAgLy8gUHJvZHVjZSBhbiBleHByZXNzaW9uIHJlcHJlc2VudGluZyB0aGUgdmFsdWUgb2YgdGhlIGJpbmRpbmcuXG4gICAgICBleHByID0gdGNiRXhwcmVzc2lvbihhdHRyLnZhbHVlLCB0Y2IsIHNjb3BlKTtcbiAgICB9IGVsc2Uge1xuICAgICAgLy8gRm9yIHJlZ3VsYXIgYXR0cmlidXRlcyB3aXRoIGEgc3RhdGljIHN0cmluZyB2YWx1ZSwgdXNlIHRoZSByZXByZXNlbnRlZCBzdHJpbmcgbGl0ZXJhbC5cbiAgICAgIGV4cHIgPSB0cy5jcmVhdGVTdHJpbmdMaXRlcmFsKGF0dHIudmFsdWUpO1xuICAgIH1cblxuICAgIGRpcmVjdGl2ZUlucHV0cy5zZXQoZmllbGQsIHtcbiAgICAgIHR5cGU6ICdiaW5kaW5nJyxcbiAgICAgIGZpZWxkOiBmaWVsZCxcbiAgICAgIGV4cHJlc3Npb246IGV4cHIsXG4gICAgICBzb3VyY2VTcGFuOiBhdHRyLnNvdXJjZVNwYW4sXG4gICAgfSk7XG4gIH1cbn1cblxuY29uc3QgRVZFTlRfUEFSQU1FVEVSID0gJyRldmVudCc7XG5cbmNvbnN0IGVudW0gRXZlbnRQYXJhbVR5cGUge1xuICAvKiBHZW5lcmF0ZXMgY29kZSB0byBpbmZlciB0aGUgdHlwZSBvZiBgJGV2ZW50YCBiYXNlZCBvbiBob3cgdGhlIGxpc3RlbmVyIGlzIHJlZ2lzdGVyZWQuICovXG4gIEluZmVyLFxuXG4gIC8qIERlY2xhcmVzIHRoZSB0eXBlIG9mIHRoZSBgJGV2ZW50YCBwYXJhbWV0ZXIgYXMgYGFueWAuICovXG4gIEFueSxcbn1cblxuLyoqXG4gKiBDcmVhdGVzIGFuIGFycm93IGZ1bmN0aW9uIHRvIGJlIHVzZWQgYXMgaGFuZGxlciBmdW5jdGlvbiBmb3IgZXZlbnQgYmluZGluZ3MuIFRoZSBoYW5kbGVyXG4gKiBmdW5jdGlvbiBoYXMgYSBzaW5nbGUgcGFyYW1ldGVyIGAkZXZlbnRgIGFuZCB0aGUgYm91bmQgZXZlbnQncyBoYW5kbGVyIGBBU1RgIHJlcHJlc2VudGVkIGFzIGFcbiAqIFR5cGVTY3JpcHQgZXhwcmVzc2lvbiBhcyBpdHMgYm9keS5cbiAqXG4gKiBXaGVuIGBldmVudFR5cGVgIGlzIHNldCB0byBgSW5mZXJgLCB0aGUgYCRldmVudGAgcGFyYW1ldGVyIHdpbGwgbm90IGhhdmUgYW4gZXhwbGljaXQgdHlwZS4gVGhpc1xuICogYWxsb3dzIGZvciB0aGUgY3JlYXRlZCBoYW5kbGVyIGZ1bmN0aW9uIHRvIGhhdmUgaXRzIGAkZXZlbnRgIHBhcmFtZXRlcidzIHR5cGUgaW5mZXJyZWQgYmFzZWQgb25cbiAqIGhvdyBpdCdzIHVzZWQsIHRvIGVuYWJsZSBzdHJpY3QgdHlwZSBjaGVja2luZyBvZiBldmVudCBiaW5kaW5ncy4gV2hlbiBzZXQgdG8gYEFueWAsIHRoZSBgJGV2ZW50YFxuICogcGFyYW1ldGVyIHdpbGwgaGF2ZSBhbiBleHBsaWNpdCBgYW55YCB0eXBlLCBlZmZlY3RpdmVseSBkaXNhYmxpbmcgc3RyaWN0IHR5cGUgY2hlY2tpbmcgb2YgZXZlbnRcbiAqIGJpbmRpbmdzLiBBbHRlcm5hdGl2ZWx5LCBhbiBleHBsaWNpdCB0eXBlIGNhbiBiZSBwYXNzZWQgZm9yIHRoZSBgJGV2ZW50YCBwYXJhbWV0ZXIuXG4gKi9cbmZ1bmN0aW9uIHRjYkNyZWF0ZUV2ZW50SGFuZGxlcihcbiAgICBldmVudDogVG1wbEFzdEJvdW5kRXZlbnQsIHRjYjogQ29udGV4dCwgc2NvcGU6IFNjb3BlLFxuICAgIGV2ZW50VHlwZTogRXZlbnRQYXJhbVR5cGV8dHMuVHlwZU5vZGUpOiB0cy5FeHByZXNzaW9uIHtcbiAgY29uc3QgaGFuZGxlciA9IHRjYkV2ZW50SGFuZGxlckV4cHJlc3Npb24oZXZlbnQuaGFuZGxlciwgdGNiLCBzY29wZSk7XG5cbiAgbGV0IGV2ZW50UGFyYW1UeXBlOiB0cy5UeXBlTm9kZXx1bmRlZmluZWQ7XG4gIGlmIChldmVudFR5cGUgPT09IEV2ZW50UGFyYW1UeXBlLkluZmVyKSB7XG4gICAgZXZlbnRQYXJhbVR5cGUgPSB1bmRlZmluZWQ7XG4gIH0gZWxzZSBpZiAoZXZlbnRUeXBlID09PSBFdmVudFBhcmFtVHlwZS5BbnkpIHtcbiAgICBldmVudFBhcmFtVHlwZSA9IHRzLmNyZWF0ZUtleXdvcmRUeXBlTm9kZSh0cy5TeW50YXhLaW5kLkFueUtleXdvcmQpO1xuICB9IGVsc2Uge1xuICAgIGV2ZW50UGFyYW1UeXBlID0gZXZlbnRUeXBlO1xuICB9XG5cbiAgLy8gT2J0YWluIGFsbCBndWFyZHMgdGhhdCBoYXZlIGJlZW4gYXBwbGllZCB0byB0aGUgc2NvcGUgYW5kIGl0cyBwYXJlbnRzLCBhcyB0aGV5IGhhdmUgdG8gYmVcbiAgLy8gcmVwZWF0ZWQgd2l0aGluIHRoZSBoYW5kbGVyIGZ1bmN0aW9uIGZvciB0aGVpciBuYXJyb3dpbmcgdG8gYmUgaW4gZWZmZWN0IHdpdGhpbiB0aGUgaGFuZGxlci5cbiAgY29uc3QgZ3VhcmRzID0gc2NvcGUuZ3VhcmRzKCk7XG5cbiAgbGV0IGJvZHk6IHRzLlN0YXRlbWVudCA9IHRzLmNyZWF0ZUV4cHJlc3Npb25TdGF0ZW1lbnQoaGFuZGxlcik7XG4gIGlmIChndWFyZHMgIT09IG51bGwpIHtcbiAgICAvLyBXcmFwIHRoZSBib2R5IGluIGFuIGBpZmAgc3RhdGVtZW50IGNvbnRhaW5pbmcgYWxsIGd1YXJkcyB0aGF0IGhhdmUgdG8gYmUgYXBwbGllZC5cbiAgICBib2R5ID0gdHMuY3JlYXRlSWYoZ3VhcmRzLCBib2R5KTtcbiAgfVxuXG4gIGNvbnN0IGV2ZW50UGFyYW0gPSB0cy5jcmVhdGVQYXJhbWV0ZXIoXG4gICAgICAvKiBkZWNvcmF0b3JzICovIHVuZGVmaW5lZCxcbiAgICAgIC8qIG1vZGlmaWVycyAqLyB1bmRlZmluZWQsXG4gICAgICAvKiBkb3REb3REb3RUb2tlbiAqLyB1bmRlZmluZWQsXG4gICAgICAvKiBuYW1lICovIEVWRU5UX1BBUkFNRVRFUixcbiAgICAgIC8qIHF1ZXN0aW9uVG9rZW4gKi8gdW5kZWZpbmVkLFxuICAgICAgLyogdHlwZSAqLyBldmVudFBhcmFtVHlwZSk7XG5cbiAgcmV0dXJuIHRzLmNyZWF0ZUZ1bmN0aW9uRXhwcmVzc2lvbihcbiAgICAgIC8qIG1vZGlmaWVyICovIHVuZGVmaW5lZCxcbiAgICAgIC8qIGFzdGVyaXNrVG9rZW4gKi8gdW5kZWZpbmVkLFxuICAgICAgLyogbmFtZSAqLyB1bmRlZmluZWQsXG4gICAgICAvKiB0eXBlUGFyYW1ldGVycyAqLyB1bmRlZmluZWQsXG4gICAgICAvKiBwYXJhbWV0ZXJzICovW2V2ZW50UGFyYW1dLFxuICAgICAgLyogdHlwZSAqLyB0cy5jcmVhdGVLZXl3b3JkVHlwZU5vZGUodHMuU3ludGF4S2luZC5BbnlLZXl3b3JkKSxcbiAgICAgIC8qIGJvZHkgKi8gdHMuY3JlYXRlQmxvY2soW2JvZHldKSk7XG59XG5cbi8qKlxuICogU2ltaWxhciB0byBgdGNiRXhwcmVzc2lvbmAsIHRoaXMgZnVuY3Rpb24gY29udmVydHMgdGhlIHByb3ZpZGVkIGBBU1RgIGV4cHJlc3Npb24gaW50byBhXG4gKiBgdHMuRXhwcmVzc2lvbmAsIHdpdGggc3BlY2lhbCBoYW5kbGluZyBvZiB0aGUgYCRldmVudGAgdmFyaWFibGUgdGhhdCBjYW4gYmUgdXNlZCB3aXRoaW4gZXZlbnRcbiAqIGJpbmRpbmdzLlxuICovXG5mdW5jdGlvbiB0Y2JFdmVudEhhbmRsZXJFeHByZXNzaW9uKGFzdDogQVNULCB0Y2I6IENvbnRleHQsIHNjb3BlOiBTY29wZSk6IHRzLkV4cHJlc3Npb24ge1xuICBjb25zdCB0cmFuc2xhdG9yID0gbmV3IFRjYkV2ZW50SGFuZGxlclRyYW5zbGF0b3IodGNiLCBzY29wZSk7XG4gIHJldHVybiB0cmFuc2xhdG9yLnRyYW5zbGF0ZShhc3QpO1xufVxuXG5jbGFzcyBUY2JFdmVudEhhbmRsZXJUcmFuc2xhdG9yIGV4dGVuZHMgVGNiRXhwcmVzc2lvblRyYW5zbGF0b3Ige1xuICBwcm90ZWN0ZWQgcmVzb2x2ZShhc3Q6IEFTVCk6IHRzLkV4cHJlc3Npb258bnVsbCB7XG4gICAgLy8gUmVjb2duaXplIGEgcHJvcGVydHkgcmVhZCBvbiB0aGUgaW1wbGljaXQgcmVjZWl2ZXIgY29ycmVzcG9uZGluZyB3aXRoIHRoZSBldmVudCBwYXJhbWV0ZXJcbiAgICAvLyB0aGF0IGlzIGF2YWlsYWJsZSBpbiBldmVudCBiaW5kaW5ncy4gU2luY2UgdGhpcyB2YXJpYWJsZSBpcyBhIHBhcmFtZXRlciBvZiB0aGUgaGFuZGxlclxuICAgIC8vIGZ1bmN0aW9uIHRoYXQgdGhlIGNvbnZlcnRlZCBleHByZXNzaW9uIGJlY29tZXMgYSBjaGlsZCBvZiwganVzdCBjcmVhdGUgYSByZWZlcmVuY2UgdG8gdGhlXG4gICAgLy8gcGFyYW1ldGVyIGJ5IGl0cyBuYW1lLlxuICAgIGlmIChhc3QgaW5zdGFuY2VvZiBQcm9wZXJ0eVJlYWQgJiYgYXN0LnJlY2VpdmVyIGluc3RhbmNlb2YgSW1wbGljaXRSZWNlaXZlciAmJlxuICAgICAgICBhc3QubmFtZSA9PT0gRVZFTlRfUEFSQU1FVEVSKSB7XG4gICAgICBjb25zdCBldmVudCA9IHRzLmNyZWF0ZUlkZW50aWZpZXIoRVZFTlRfUEFSQU1FVEVSKTtcbiAgICAgIGFkZFBhcnNlU3BhbkluZm8oZXZlbnQsIGFzdC5uYW1lU3Bhbik7XG4gICAgICByZXR1cm4gZXZlbnQ7XG4gICAgfVxuXG4gICAgcmV0dXJuIHN1cGVyLnJlc29sdmUoYXN0KTtcbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gcmVxdWlyZXNJbmxpbmVUeXBlQ2hlY2tCbG9jayhub2RlOiBDbGFzc0RlY2xhcmF0aW9uPHRzLkNsYXNzRGVjbGFyYXRpb24+KTogYm9vbGVhbiB7XG4gIC8vIEluIG9yZGVyIHRvIHF1YWxpZnkgZm9yIGEgZGVjbGFyZWQgVENCIChub3QgaW5saW5lKSB0d28gY29uZGl0aW9ucyBtdXN0IGJlIG1ldDpcbiAgLy8gMSkgdGhlIGNsYXNzIG11c3QgYmUgZXhwb3J0ZWRcbiAgLy8gMikgaXQgbXVzdCBub3QgaGF2ZSBjb25zdHJhaW5lZCBnZW5lcmljIHR5cGVzXG4gIGlmICghY2hlY2tJZkNsYXNzSXNFeHBvcnRlZChub2RlKSkge1xuICAgIC8vIENvbmRpdGlvbiAxIGlzIGZhbHNlLCB0aGUgY2xhc3MgaXMgbm90IGV4cG9ydGVkLlxuICAgIHJldHVybiB0cnVlO1xuICB9IGVsc2UgaWYgKCFjaGVja0lmR2VuZXJpY1R5cGVzQXJlVW5ib3VuZChub2RlKSkge1xuICAgIC8vIENvbmRpdGlvbiAyIGlzIGZhbHNlLCB0aGUgY2xhc3MgaGFzIGNvbnN0cmFpbmVkIGdlbmVyaWMgdHlwZXNcbiAgICByZXR1cm4gdHJ1ZTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cbn1cbiJdfQ==