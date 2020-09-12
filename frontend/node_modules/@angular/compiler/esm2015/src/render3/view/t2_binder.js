/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { AST, ImplicitReceiver, RecursiveAstVisitor } from '../../expression_parser/ast';
import { Template } from '../r3_ast';
import { createCssSelector } from './template';
import { getAttrsForDirectiveMatching } from './util';
/**
 * Processes `Target`s with a given set of directives and performs a binding operation, which
 * returns an object similar to TypeScript's `ts.TypeChecker` that contains knowledge about the
 * target.
 */
export class R3TargetBinder {
    constructor(directiveMatcher) {
        this.directiveMatcher = directiveMatcher;
    }
    /**
     * Perform a binding operation on the given `Target` and return a `BoundTarget` which contains
     * metadata about the types referenced in the template.
     */
    bind(target) {
        if (!target.template) {
            // TODO(alxhub): handle targets which contain things like HostBindings, etc.
            throw new Error('Binding without a template not yet supported');
        }
        // First, parse the template into a `Scope` structure. This operation captures the syntactic
        // scopes in the template and makes them available for later use.
        const scope = Scope.apply(target.template);
        // Next, perform directive matching on the template using the `DirectiveBinder`. This returns:
        //   - directives: Map of nodes (elements & ng-templates) to the directives on them.
        //   - bindings: Map of inputs, outputs, and attributes to the directive/element that claims
        //     them. TODO(alxhub): handle multiple directives claiming an input/output/etc.
        //   - references: Map of #references to their targets.
        const { directives, bindings, references } = DirectiveBinder.apply(target.template, this.directiveMatcher);
        // Finally, run the TemplateBinder to bind references, variables, and other entities within the
        // template. This extracts all the metadata that doesn't depend on directive matching.
        const { expressions, symbols, nestingLevel, usedPipes } = TemplateBinder.apply(target.template, scope);
        return new R3BoundTarget(target, directives, bindings, references, expressions, symbols, nestingLevel, usedPipes);
    }
}
/**
 * Represents a binding scope within a template.
 *
 * Any variables, references, or other named entities declared within the template will
 * be captured and available by name in `namedEntities`. Additionally, child templates will
 * be analyzed and have their child `Scope`s available in `childScopes`.
 */
class Scope {
    constructor(parentScope) {
        this.parentScope = parentScope;
        /**
         * Named members of the `Scope`, such as `Reference`s or `Variable`s.
         */
        this.namedEntities = new Map();
        /**
         * Child `Scope`s for immediately nested `Template`s.
         */
        this.childScopes = new Map();
    }
    /**
     * Process a template (either as a `Template` sub-template with variables, or a plain array of
     * template `Node`s) and construct its `Scope`.
     */
    static apply(template) {
        const scope = new Scope();
        scope.ingest(template);
        return scope;
    }
    /**
     * Internal method to process the template and populate the `Scope`.
     */
    ingest(template) {
        if (template instanceof Template) {
            // Variables on an <ng-template> are defined in the inner scope.
            template.variables.forEach(node => this.visitVariable(node));
            // Process the nodes of the template.
            template.children.forEach(node => node.visit(this));
        }
        else {
            // No overarching `Template` instance, so process the nodes directly.
            template.forEach(node => node.visit(this));
        }
    }
    visitElement(element) {
        // `Element`s in the template may have `Reference`s which are captured in the scope.
        element.references.forEach(node => this.visitReference(node));
        // Recurse into the `Element`'s children.
        element.children.forEach(node => node.visit(this));
    }
    visitTemplate(template) {
        // References on a <ng-template> are defined in the outer scope, so capture them before
        // processing the template's child scope.
        template.references.forEach(node => this.visitReference(node));
        // Next, create an inner scope and process the template within it.
        const scope = new Scope(this);
        scope.ingest(template);
        this.childScopes.set(template, scope);
    }
    visitVariable(variable) {
        // Declare the variable if it's not already.
        this.maybeDeclare(variable);
    }
    visitReference(reference) {
        // Declare the variable if it's not already.
        this.maybeDeclare(reference);
    }
    // Unused visitors.
    visitContent(content) { }
    visitBoundAttribute(attr) { }
    visitBoundEvent(event) { }
    visitBoundText(text) { }
    visitText(text) { }
    visitTextAttribute(attr) { }
    visitIcu(icu) { }
    maybeDeclare(thing) {
        // Declare something with a name, as long as that name isn't taken.
        if (!this.namedEntities.has(thing.name)) {
            this.namedEntities.set(thing.name, thing);
        }
    }
    /**
     * Look up a variable within this `Scope`.
     *
     * This can recurse into a parent `Scope` if it's available.
     */
    lookup(name) {
        if (this.namedEntities.has(name)) {
            // Found in the local scope.
            return this.namedEntities.get(name);
        }
        else if (this.parentScope !== undefined) {
            // Not in the local scope, but there's a parent scope so check there.
            return this.parentScope.lookup(name);
        }
        else {
            // At the top level and it wasn't found.
            return null;
        }
    }
    /**
     * Get the child scope for a `Template`.
     *
     * This should always be defined.
     */
    getChildScope(template) {
        const res = this.childScopes.get(template);
        if (res === undefined) {
            throw new Error(`Assertion error: child scope for ${template} not found`);
        }
        return res;
    }
}
/**
 * Processes a template and matches directives on nodes (elements and templates).
 *
 * Usually used via the static `apply()` method.
 */
class DirectiveBinder {
    constructor(matcher, directives, bindings, references) {
        this.matcher = matcher;
        this.directives = directives;
        this.bindings = bindings;
        this.references = references;
    }
    /**
     * Process a template (list of `Node`s) and perform directive matching against each node.
     *
     * @param template the list of template `Node`s to match (recursively).
     * @param selectorMatcher a `SelectorMatcher` containing the directives that are in scope for
     * this template.
     * @returns three maps which contain information about directives in the template: the
     * `directives` map which lists directives matched on each node, the `bindings` map which
     * indicates which directives claimed which bindings (inputs, outputs, etc), and the `references`
     * map which resolves #references (`Reference`s) within the template to the named directive or
     * template node.
     */
    static apply(template, selectorMatcher) {
        const directives = new Map();
        const bindings = new Map();
        const references = new Map();
        const matcher = new DirectiveBinder(selectorMatcher, directives, bindings, references);
        matcher.ingest(template);
        return { directives, bindings, references };
    }
    ingest(template) {
        template.forEach(node => node.visit(this));
    }
    visitElement(element) {
        this.visitElementOrTemplate(element.name, element);
    }
    visitTemplate(template) {
        this.visitElementOrTemplate('ng-template', template);
    }
    visitElementOrTemplate(elementName, node) {
        // First, determine the HTML shape of the node for the purpose of directive matching.
        // Do this by building up a `CssSelector` for the node.
        const cssSelector = createCssSelector(elementName, getAttrsForDirectiveMatching(node));
        // Next, use the `SelectorMatcher` to get the list of directives on the node.
        const directives = [];
        this.matcher.match(cssSelector, (_, directive) => directives.push(directive));
        if (directives.length > 0) {
            this.directives.set(node, directives);
        }
        // Resolve any references that are created on this node.
        node.references.forEach(ref => {
            let dirTarget = null;
            // If the reference expression is empty, then it matches the "primary" directive on the node
            // (if there is one). Otherwise it matches the host node itself (either an element or
            // <ng-template> node).
            if (ref.value.trim() === '') {
                // This could be a reference to a component if there is one.
                dirTarget = directives.find(dir => dir.isComponent) || null;
            }
            else {
                // This should be a reference to a directive exported via exportAs.
                dirTarget =
                    directives.find(dir => dir.exportAs !== null && dir.exportAs.some(value => value === ref.value)) ||
                        null;
                // Check if a matching directive was found.
                if (dirTarget === null) {
                    // No matching directive was found - this reference points to an unknown target. Leave it
                    // unmapped.
                    return;
                }
            }
            if (dirTarget !== null) {
                // This reference points to a directive.
                this.references.set(ref, { directive: dirTarget, node });
            }
            else {
                // This reference points to the node itself.
                this.references.set(ref, node);
            }
        });
        const setAttributeBinding = (attribute, ioType) => {
            const dir = directives.find(dir => dir[ioType].hasOwnProperty(attribute.name));
            const binding = dir !== undefined ? dir : node;
            this.bindings.set(attribute, binding);
        };
        // Node inputs (bound attributes) and text attributes can be bound to an
        // input on a directive.
        node.inputs.forEach(input => setAttributeBinding(input, 'inputs'));
        node.attributes.forEach(attr => setAttributeBinding(attr, 'inputs'));
        if (node instanceof Template) {
            node.templateAttrs.forEach(attr => setAttributeBinding(attr, 'inputs'));
        }
        // Node outputs (bound events) can be bound to an output on a directive.
        node.outputs.forEach(output => setAttributeBinding(output, 'outputs'));
        // Recurse into the node's children.
        node.children.forEach(child => child.visit(this));
    }
    // Unused visitors.
    visitContent(content) { }
    visitVariable(variable) { }
    visitReference(reference) { }
    visitTextAttribute(attribute) { }
    visitBoundAttribute(attribute) { }
    visitBoundEvent(attribute) { }
    visitBoundAttributeOrEvent(node) { }
    visitText(text) { }
    visitBoundText(text) { }
    visitIcu(icu) { }
}
/**
 * Processes a template and extract metadata about expressions and symbols within.
 *
 * This is a companion to the `DirectiveBinder` that doesn't require knowledge of directives matched
 * within the template in order to operate.
 *
 * Expressions are visited by the superclass `RecursiveAstVisitor`, with custom logic provided
 * by overridden methods from that visitor.
 */
class TemplateBinder extends RecursiveAstVisitor {
    constructor(bindings, symbols, usedPipes, nestingLevel, scope, template, level) {
        super();
        this.bindings = bindings;
        this.symbols = symbols;
        this.usedPipes = usedPipes;
        this.nestingLevel = nestingLevel;
        this.scope = scope;
        this.template = template;
        this.level = level;
        this.pipesUsed = [];
        // Save a bit of processing time by constructing this closure in advance.
        this.visitNode = (node) => node.visit(this);
    }
    // This method is defined to reconcile the type of TemplateBinder since both
    // RecursiveAstVisitor and Visitor define the visit() method in their
    // interfaces.
    visit(node, context) {
        if (node instanceof AST) {
            node.visit(this, context);
        }
        else {
            node.visit(this);
        }
    }
    /**
     * Process a template and extract metadata about expressions and symbols within.
     *
     * @param template the nodes of the template to process
     * @param scope the `Scope` of the template being processed.
     * @returns three maps which contain metadata about the template: `expressions` which interprets
     * special `AST` nodes in expressions as pointing to references or variables declared within the
     * template, `symbols` which maps those variables and references to the nested `Template` which
     * declares them, if any, and `nestingLevel` which associates each `Template` with a integer
     * nesting level (how many levels deep within the template structure the `Template` is), starting
     * at 1.
     */
    static apply(template, scope) {
        const expressions = new Map();
        const symbols = new Map();
        const nestingLevel = new Map();
        const usedPipes = new Set();
        // The top-level template has nesting level 0.
        const binder = new TemplateBinder(expressions, symbols, usedPipes, nestingLevel, scope, template instanceof Template ? template : null, 0);
        binder.ingest(template);
        return { expressions, symbols, nestingLevel, usedPipes };
    }
    ingest(template) {
        if (template instanceof Template) {
            // For <ng-template>s, process only variables and child nodes. Inputs, outputs, templateAttrs,
            // and references were all processed in the scope of the containing template.
            template.variables.forEach(this.visitNode);
            template.children.forEach(this.visitNode);
            // Set the nesting level.
            this.nestingLevel.set(template, this.level);
        }
        else {
            // Visit each node from the top-level template.
            template.forEach(this.visitNode);
        }
    }
    visitElement(element) {
        // Visit the inputs, outputs, and children of the element.
        element.inputs.forEach(this.visitNode);
        element.outputs.forEach(this.visitNode);
        element.children.forEach(this.visitNode);
    }
    visitTemplate(template) {
        // First, visit inputs, outputs and template attributes of the template node.
        template.inputs.forEach(this.visitNode);
        template.outputs.forEach(this.visitNode);
        template.templateAttrs.forEach(this.visitNode);
        // References are also evaluated in the outer context.
        template.references.forEach(this.visitNode);
        // Next, recurse into the template using its scope, and bumping the nesting level up by one.
        const childScope = this.scope.getChildScope(template);
        const binder = new TemplateBinder(this.bindings, this.symbols, this.usedPipes, this.nestingLevel, childScope, template, this.level + 1);
        binder.ingest(template);
    }
    visitVariable(variable) {
        // Register the `Variable` as a symbol in the current `Template`.
        if (this.template !== null) {
            this.symbols.set(variable, this.template);
        }
    }
    visitReference(reference) {
        // Register the `Reference` as a symbol in the current `Template`.
        if (this.template !== null) {
            this.symbols.set(reference, this.template);
        }
    }
    // Unused template visitors
    visitText(text) { }
    visitContent(content) { }
    visitTextAttribute(attribute) { }
    visitIcu(icu) { }
    // The remaining visitors are concerned with processing AST expressions within template bindings
    visitBoundAttribute(attribute) {
        attribute.value.visit(this);
    }
    visitBoundEvent(event) {
        event.handler.visit(this);
    }
    visitBoundText(text) {
        text.value.visit(this);
    }
    visitPipe(ast, context) {
        this.usedPipes.add(ast.name);
        return super.visitPipe(ast, context);
    }
    // These five types of AST expressions can refer to expression roots, which could be variables
    // or references in the current scope.
    visitPropertyRead(ast, context) {
        this.maybeMap(context, ast, ast.name);
        return super.visitPropertyRead(ast, context);
    }
    visitSafePropertyRead(ast, context) {
        this.maybeMap(context, ast, ast.name);
        return super.visitSafePropertyRead(ast, context);
    }
    visitPropertyWrite(ast, context) {
        this.maybeMap(context, ast, ast.name);
        return super.visitPropertyWrite(ast, context);
    }
    visitMethodCall(ast, context) {
        this.maybeMap(context, ast, ast.name);
        return super.visitMethodCall(ast, context);
    }
    visitSafeMethodCall(ast, context) {
        this.maybeMap(context, ast, ast.name);
        return super.visitSafeMethodCall(ast, context);
    }
    maybeMap(scope, ast, name) {
        // If the receiver of the expression isn't the `ImplicitReceiver`, this isn't the root of an
        // `AST` expression that maps to a `Variable` or `Reference`.
        if (!(ast.receiver instanceof ImplicitReceiver)) {
            return;
        }
        // Check whether the name exists in the current scope. If so, map it. Otherwise, the name is
        // probably a property on the top-level component context.
        let target = this.scope.lookup(name);
        if (target !== null) {
            this.bindings.set(ast, target);
        }
    }
}
/**
 * Metadata container for a `Target` that allows queries for specific bits of metadata.
 *
 * See `BoundTarget` for documentation on the individual methods.
 */
export class R3BoundTarget {
    constructor(target, directives, bindings, references, exprTargets, symbols, nestingLevel, usedPipes) {
        this.target = target;
        this.directives = directives;
        this.bindings = bindings;
        this.references = references;
        this.exprTargets = exprTargets;
        this.symbols = symbols;
        this.nestingLevel = nestingLevel;
        this.usedPipes = usedPipes;
    }
    getDirectivesOfNode(node) {
        return this.directives.get(node) || null;
    }
    getReferenceTarget(ref) {
        return this.references.get(ref) || null;
    }
    getConsumerOfBinding(binding) {
        return this.bindings.get(binding) || null;
    }
    getExpressionTarget(expr) {
        return this.exprTargets.get(expr) || null;
    }
    getTemplateOfSymbol(symbol) {
        return this.symbols.get(symbol) || null;
    }
    getNestingLevel(template) {
        return this.nestingLevel.get(template) || 0;
    }
    getUsedDirectives() {
        const set = new Set();
        this.directives.forEach(dirs => dirs.forEach(dir => set.add(dir)));
        return Array.from(set.values());
    }
    getUsedPipes() {
        return Array.from(this.usedPipes);
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidDJfYmluZGVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvc3JjL3JlbmRlcjMvdmlldy90Ml9iaW5kZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFDLEdBQUcsRUFBZSxnQkFBZ0IsRUFBMkMsbUJBQW1CLEVBQW1DLE1BQU0sNkJBQTZCLENBQUM7QUFFL0ssT0FBTyxFQUFnRixRQUFRLEVBQXlDLE1BQU0sV0FBVyxDQUFDO0FBRzFKLE9BQU8sRUFBQyxpQkFBaUIsRUFBQyxNQUFNLFlBQVksQ0FBQztBQUM3QyxPQUFPLEVBQUMsNEJBQTRCLEVBQUMsTUFBTSxRQUFRLENBQUM7QUFHcEQ7Ozs7R0FJRztBQUNILE1BQU0sT0FBTyxjQUFjO0lBQ3pCLFlBQW9CLGdCQUE2QztRQUE3QyxxQkFBZ0IsR0FBaEIsZ0JBQWdCLENBQTZCO0lBQUcsQ0FBQztJQUVyRTs7O09BR0c7SUFDSCxJQUFJLENBQUMsTUFBYztRQUNqQixJQUFJLENBQUMsTUFBTSxDQUFDLFFBQVEsRUFBRTtZQUNwQiw0RUFBNEU7WUFDNUUsTUFBTSxJQUFJLEtBQUssQ0FBQyw4Q0FBOEMsQ0FBQyxDQUFDO1NBQ2pFO1FBRUQsNEZBQTRGO1FBQzVGLGlFQUFpRTtRQUNqRSxNQUFNLEtBQUssR0FBRyxLQUFLLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxRQUFRLENBQUMsQ0FBQztRQUUzQyw4RkFBOEY7UUFDOUYsb0ZBQW9GO1FBQ3BGLDRGQUE0RjtRQUM1RixtRkFBbUY7UUFDbkYsdURBQXVEO1FBQ3ZELE1BQU0sRUFBQyxVQUFVLEVBQUUsUUFBUSxFQUFFLFVBQVUsRUFBQyxHQUNwQyxlQUFlLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxRQUFRLEVBQUUsSUFBSSxDQUFDLGdCQUFnQixDQUFDLENBQUM7UUFDbEUsK0ZBQStGO1FBQy9GLHNGQUFzRjtRQUN0RixNQUFNLEVBQUMsV0FBVyxFQUFFLE9BQU8sRUFBRSxZQUFZLEVBQUUsU0FBUyxFQUFDLEdBQ2pELGNBQWMsQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDLFFBQVEsRUFBRSxLQUFLLENBQUMsQ0FBQztRQUNqRCxPQUFPLElBQUksYUFBYSxDQUNwQixNQUFNLEVBQUUsVUFBVSxFQUFFLFFBQVEsRUFBRSxVQUFVLEVBQUUsV0FBVyxFQUFFLE9BQU8sRUFBRSxZQUFZLEVBQUUsU0FBUyxDQUFDLENBQUM7SUFDL0YsQ0FBQztDQUNGO0FBRUQ7Ozs7OztHQU1HO0FBQ0gsTUFBTSxLQUFLO0lBV1QsWUFBNkIsV0FBbUI7UUFBbkIsZ0JBQVcsR0FBWCxXQUFXLENBQVE7UUFWaEQ7O1dBRUc7UUFDTSxrQkFBYSxHQUFHLElBQUksR0FBRyxFQUE4QixDQUFDO1FBRS9EOztXQUVHO1FBQ00sZ0JBQVcsR0FBRyxJQUFJLEdBQUcsRUFBbUIsQ0FBQztJQUVDLENBQUM7SUFFcEQ7OztPQUdHO0lBQ0gsTUFBTSxDQUFDLEtBQUssQ0FBQyxRQUF5QjtRQUNwQyxNQUFNLEtBQUssR0FBRyxJQUFJLEtBQUssRUFBRSxDQUFDO1FBQzFCLEtBQUssQ0FBQyxNQUFNLENBQUMsUUFBUSxDQUFDLENBQUM7UUFDdkIsT0FBTyxLQUFLLENBQUM7SUFDZixDQUFDO0lBRUQ7O09BRUc7SUFDSyxNQUFNLENBQUMsUUFBeUI7UUFDdEMsSUFBSSxRQUFRLFlBQVksUUFBUSxFQUFFO1lBQ2hDLGdFQUFnRTtZQUNoRSxRQUFRLENBQUMsU0FBUyxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxhQUFhLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQztZQUU3RCxxQ0FBcUM7WUFDckMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7U0FDckQ7YUFBTTtZQUNMLHFFQUFxRTtZQUNyRSxRQUFRLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDO1NBQzVDO0lBQ0gsQ0FBQztJQUVELFlBQVksQ0FBQyxPQUFnQjtRQUMzQixvRkFBb0Y7UUFDcEYsT0FBTyxDQUFDLFVBQVUsQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsY0FBYyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7UUFFOUQseUNBQXlDO1FBQ3pDLE9BQU8sQ0FBQyxRQUFRLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDO0lBQ3JELENBQUM7SUFFRCxhQUFhLENBQUMsUUFBa0I7UUFDOUIsdUZBQXVGO1FBQ3ZGLHlDQUF5QztRQUN6QyxRQUFRLENBQUMsVUFBVSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxjQUFjLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQztRQUUvRCxrRUFBa0U7UUFDbEUsTUFBTSxLQUFLLEdBQUcsSUFBSSxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDOUIsS0FBSyxDQUFDLE1BQU0sQ0FBQyxRQUFRLENBQUMsQ0FBQztRQUN2QixJQUFJLENBQUMsV0FBVyxDQUFDLEdBQUcsQ0FBQyxRQUFRLEVBQUUsS0FBSyxDQUFDLENBQUM7SUFDeEMsQ0FBQztJQUVELGFBQWEsQ0FBQyxRQUFrQjtRQUM5Qiw0Q0FBNEM7UUFDNUMsSUFBSSxDQUFDLFlBQVksQ0FBQyxRQUFRLENBQUMsQ0FBQztJQUM5QixDQUFDO0lBRUQsY0FBYyxDQUFDLFNBQW9CO1FBQ2pDLDRDQUE0QztRQUM1QyxJQUFJLENBQUMsWUFBWSxDQUFDLFNBQVMsQ0FBQyxDQUFDO0lBQy9CLENBQUM7SUFFRCxtQkFBbUI7SUFDbkIsWUFBWSxDQUFDLE9BQWdCLElBQUcsQ0FBQztJQUNqQyxtQkFBbUIsQ0FBQyxJQUFvQixJQUFHLENBQUM7SUFDNUMsZUFBZSxDQUFDLEtBQWlCLElBQUcsQ0FBQztJQUNyQyxjQUFjLENBQUMsSUFBZSxJQUFHLENBQUM7SUFDbEMsU0FBUyxDQUFDLElBQVUsSUFBRyxDQUFDO0lBQ3hCLGtCQUFrQixDQUFDLElBQW1CLElBQUcsQ0FBQztJQUMxQyxRQUFRLENBQUMsR0FBUSxJQUFHLENBQUM7SUFFYixZQUFZLENBQUMsS0FBeUI7UUFDNUMsbUVBQW1FO1FBQ25FLElBQUksQ0FBQyxJQUFJLENBQUMsYUFBYSxDQUFDLEdBQUcsQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLEVBQUU7WUFDdkMsSUFBSSxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsS0FBSyxDQUFDLElBQUksRUFBRSxLQUFLLENBQUMsQ0FBQztTQUMzQztJQUNILENBQUM7SUFFRDs7OztPQUlHO0lBQ0gsTUFBTSxDQUFDLElBQVk7UUFDakIsSUFBSSxJQUFJLENBQUMsYUFBYSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsRUFBRTtZQUNoQyw0QkFBNEI7WUFDNUIsT0FBTyxJQUFJLENBQUMsYUFBYSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUUsQ0FBQztTQUN0QzthQUFNLElBQUksSUFBSSxDQUFDLFdBQVcsS0FBSyxTQUFTLEVBQUU7WUFDekMscUVBQXFFO1lBQ3JFLE9BQU8sSUFBSSxDQUFDLFdBQVcsQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLENBQUM7U0FDdEM7YUFBTTtZQUNMLHdDQUF3QztZQUN4QyxPQUFPLElBQUksQ0FBQztTQUNiO0lBQ0gsQ0FBQztJQUVEOzs7O09BSUc7SUFDSCxhQUFhLENBQUMsUUFBa0I7UUFDOUIsTUFBTSxHQUFHLEdBQUcsSUFBSSxDQUFDLFdBQVcsQ0FBQyxHQUFHLENBQUMsUUFBUSxDQUFDLENBQUM7UUFDM0MsSUFBSSxHQUFHLEtBQUssU0FBUyxFQUFFO1lBQ3JCLE1BQU0sSUFBSSxLQUFLLENBQUMsb0NBQW9DLFFBQVEsWUFBWSxDQUFDLENBQUM7U0FDM0U7UUFDRCxPQUFPLEdBQUcsQ0FBQztJQUNiLENBQUM7Q0FDRjtBQUVEOzs7O0dBSUc7QUFDSCxNQUFNLGVBQWU7SUFDbkIsWUFDWSxPQUFvQyxFQUNwQyxVQUErQyxFQUMvQyxRQUFtRixFQUNuRixVQUM0RTtRQUo1RSxZQUFPLEdBQVAsT0FBTyxDQUE2QjtRQUNwQyxlQUFVLEdBQVYsVUFBVSxDQUFxQztRQUMvQyxhQUFRLEdBQVIsUUFBUSxDQUEyRTtRQUNuRixlQUFVLEdBQVYsVUFBVSxDQUNrRTtJQUFHLENBQUM7SUFFNUY7Ozs7Ozs7Ozs7O09BV0c7SUFDSCxNQUFNLENBQUMsS0FBSyxDQUNSLFFBQWdCLEVBQUUsZUFBNEM7UUFLaEUsTUFBTSxVQUFVLEdBQUcsSUFBSSxHQUFHLEVBQWtDLENBQUM7UUFDN0QsTUFBTSxRQUFRLEdBQ1YsSUFBSSxHQUFHLEVBQXdFLENBQUM7UUFDcEYsTUFBTSxVQUFVLEdBQ1osSUFBSSxHQUFHLEVBQWlGLENBQUM7UUFDN0YsTUFBTSxPQUFPLEdBQUcsSUFBSSxlQUFlLENBQUMsZUFBZSxFQUFFLFVBQVUsRUFBRSxRQUFRLEVBQUUsVUFBVSxDQUFDLENBQUM7UUFDdkYsT0FBTyxDQUFDLE1BQU0sQ0FBQyxRQUFRLENBQUMsQ0FBQztRQUN6QixPQUFPLEVBQUMsVUFBVSxFQUFFLFFBQVEsRUFBRSxVQUFVLEVBQUMsQ0FBQztJQUM1QyxDQUFDO0lBRU8sTUFBTSxDQUFDLFFBQWdCO1FBQzdCLFFBQVEsQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7SUFDN0MsQ0FBQztJQUVELFlBQVksQ0FBQyxPQUFnQjtRQUMzQixJQUFJLENBQUMsc0JBQXNCLENBQUMsT0FBTyxDQUFDLElBQUksRUFBRSxPQUFPLENBQUMsQ0FBQztJQUNyRCxDQUFDO0lBRUQsYUFBYSxDQUFDLFFBQWtCO1FBQzlCLElBQUksQ0FBQyxzQkFBc0IsQ0FBQyxhQUFhLEVBQUUsUUFBUSxDQUFDLENBQUM7SUFDdkQsQ0FBQztJQUVELHNCQUFzQixDQUFDLFdBQW1CLEVBQUUsSUFBc0I7UUFDaEUscUZBQXFGO1FBQ3JGLHVEQUF1RDtRQUN2RCxNQUFNLFdBQVcsR0FBRyxpQkFBaUIsQ0FBQyxXQUFXLEVBQUUsNEJBQTRCLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQztRQUV2Riw2RUFBNkU7UUFDN0UsTUFBTSxVQUFVLEdBQWlCLEVBQUUsQ0FBQztRQUNwQyxJQUFJLENBQUMsT0FBTyxDQUFDLEtBQUssQ0FBQyxXQUFXLEVBQUUsQ0FBQyxDQUFDLEVBQUUsU0FBUyxFQUFFLEVBQUUsQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUM7UUFDOUUsSUFBSSxVQUFVLENBQUMsTUFBTSxHQUFHLENBQUMsRUFBRTtZQUN6QixJQUFJLENBQUMsVUFBVSxDQUFDLEdBQUcsQ0FBQyxJQUFJLEVBQUUsVUFBVSxDQUFDLENBQUM7U0FDdkM7UUFFRCx3REFBd0Q7UUFDeEQsSUFBSSxDQUFDLFVBQVUsQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLEVBQUU7WUFDNUIsSUFBSSxTQUFTLEdBQW9CLElBQUksQ0FBQztZQUV0Qyw0RkFBNEY7WUFDNUYscUZBQXFGO1lBQ3JGLHVCQUF1QjtZQUN2QixJQUFJLEdBQUcsQ0FBQyxLQUFLLENBQUMsSUFBSSxFQUFFLEtBQUssRUFBRSxFQUFFO2dCQUMzQiw0REFBNEQ7Z0JBQzVELFNBQVMsR0FBRyxVQUFVLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxDQUFDLFdBQVcsQ0FBQyxJQUFJLElBQUksQ0FBQzthQUM3RDtpQkFBTTtnQkFDTCxtRUFBbUU7Z0JBQ25FLFNBQVM7b0JBQ0wsVUFBVSxDQUFDLElBQUksQ0FDWCxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsQ0FBQyxRQUFRLEtBQUssSUFBSSxJQUFJLEdBQUcsQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxFQUFFLENBQUMsS0FBSyxLQUFLLEdBQUcsQ0FBQyxLQUFLLENBQUMsQ0FBQzt3QkFDcEYsSUFBSSxDQUFDO2dCQUNULDJDQUEyQztnQkFDM0MsSUFBSSxTQUFTLEtBQUssSUFBSSxFQUFFO29CQUN0Qix5RkFBeUY7b0JBQ3pGLFlBQVk7b0JBQ1osT0FBTztpQkFDUjthQUNGO1lBRUQsSUFBSSxTQUFTLEtBQUssSUFBSSxFQUFFO2dCQUN0Qix3Q0FBd0M7Z0JBQ3hDLElBQUksQ0FBQyxVQUFVLENBQUMsR0FBRyxDQUFDLEdBQUcsRUFBRSxFQUFDLFNBQVMsRUFBRSxTQUFTLEVBQUUsSUFBSSxFQUFDLENBQUMsQ0FBQzthQUN4RDtpQkFBTTtnQkFDTCw0Q0FBNEM7Z0JBQzVDLElBQUksQ0FBQyxVQUFVLENBQUMsR0FBRyxDQUFDLEdBQUcsRUFBRSxJQUFJLENBQUMsQ0FBQzthQUNoQztRQUNILENBQUMsQ0FBQyxDQUFDO1FBSUgsTUFBTSxtQkFBbUIsR0FDckIsQ0FBQyxTQUFvQixFQUFFLE1BQXFELEVBQUUsRUFBRTtZQUM5RSxNQUFNLEdBQUcsR0FBRyxVQUFVLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxDQUFDLE1BQU0sQ0FBQyxDQUFDLGNBQWMsQ0FBQyxTQUFTLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQztZQUMvRSxNQUFNLE9BQU8sR0FBRyxHQUFHLEtBQUssU0FBUyxDQUFDLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQztZQUMvQyxJQUFJLENBQUMsUUFBUSxDQUFDLEdBQUcsQ0FBQyxTQUFTLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFDeEMsQ0FBQyxDQUFDO1FBRU4sd0VBQXdFO1FBQ3hFLHdCQUF3QjtRQUN4QixJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxLQUFLLENBQUMsRUFBRSxDQUFDLG1CQUFtQixDQUFDLEtBQUssRUFBRSxRQUFRLENBQUMsQ0FBQyxDQUFDO1FBQ25FLElBQUksQ0FBQyxVQUFVLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsbUJBQW1CLENBQUMsSUFBSSxFQUFFLFFBQVEsQ0FBQyxDQUFDLENBQUM7UUFDckUsSUFBSSxJQUFJLFlBQVksUUFBUSxFQUFFO1lBQzVCLElBQUksQ0FBQyxhQUFhLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsbUJBQW1CLENBQUMsSUFBSSxFQUFFLFFBQVEsQ0FBQyxDQUFDLENBQUM7U0FDekU7UUFDRCx3RUFBd0U7UUFDeEUsSUFBSSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUFDLEVBQUUsQ0FBQyxtQkFBbUIsQ0FBQyxNQUFNLEVBQUUsU0FBUyxDQUFDLENBQUMsQ0FBQztRQUV2RSxvQ0FBb0M7UUFDcEMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxPQUFPLENBQUMsS0FBSyxDQUFDLEVBQUUsQ0FBQyxLQUFLLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7SUFDcEQsQ0FBQztJQUVELG1CQUFtQjtJQUNuQixZQUFZLENBQUMsT0FBZ0IsSUFBUyxDQUFDO0lBQ3ZDLGFBQWEsQ0FBQyxRQUFrQixJQUFTLENBQUM7SUFDMUMsY0FBYyxDQUFDLFNBQW9CLElBQVMsQ0FBQztJQUM3QyxrQkFBa0IsQ0FBQyxTQUF3QixJQUFTLENBQUM7SUFDckQsbUJBQW1CLENBQUMsU0FBeUIsSUFBUyxDQUFDO0lBQ3ZELGVBQWUsQ0FBQyxTQUFxQixJQUFTLENBQUM7SUFDL0MsMEJBQTBCLENBQUMsSUFBK0IsSUFBRyxDQUFDO0lBQzlELFNBQVMsQ0FBQyxJQUFVLElBQVMsQ0FBQztJQUM5QixjQUFjLENBQUMsSUFBZSxJQUFTLENBQUM7SUFDeEMsUUFBUSxDQUFDLEdBQVEsSUFBUyxDQUFDO0NBQzVCO0FBRUQ7Ozs7Ozs7O0dBUUc7QUFDSCxNQUFNLGNBQWUsU0FBUSxtQkFBbUI7SUFLOUMsWUFDWSxRQUFzQyxFQUN0QyxPQUEwQyxFQUFVLFNBQXNCLEVBQzFFLFlBQW1DLEVBQVUsS0FBWSxFQUN6RCxRQUF1QixFQUFVLEtBQWE7UUFDeEQsS0FBSyxFQUFFLENBQUM7UUFKRSxhQUFRLEdBQVIsUUFBUSxDQUE4QjtRQUN0QyxZQUFPLEdBQVAsT0FBTyxDQUFtQztRQUFVLGNBQVMsR0FBVCxTQUFTLENBQWE7UUFDMUUsaUJBQVksR0FBWixZQUFZLENBQXVCO1FBQVUsVUFBSyxHQUFMLEtBQUssQ0FBTztRQUN6RCxhQUFRLEdBQVIsUUFBUSxDQUFlO1FBQVUsVUFBSyxHQUFMLEtBQUssQ0FBUTtRQU5sRCxjQUFTLEdBQWEsRUFBRSxDQUFDO1FBUy9CLHlFQUF5RTtRQUN6RSxJQUFJLENBQUMsU0FBUyxHQUFHLENBQUMsSUFBVSxFQUFFLEVBQUUsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO0lBQ3BELENBQUM7SUFFRCw0RUFBNEU7SUFDNUUscUVBQXFFO0lBQ3JFLGNBQWM7SUFDZCxLQUFLLENBQUMsSUFBYyxFQUFFLE9BQWE7UUFDakMsSUFBSSxJQUFJLFlBQVksR0FBRyxFQUFFO1lBQ3ZCLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxFQUFFLE9BQU8sQ0FBQyxDQUFDO1NBQzNCO2FBQU07WUFDTCxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO1NBQ2xCO0lBQ0gsQ0FBQztJQUVEOzs7Ozs7Ozs7OztPQVdHO0lBQ0gsTUFBTSxDQUFDLEtBQUssQ0FBQyxRQUFnQixFQUFFLEtBQVk7UUFNekMsTUFBTSxXQUFXLEdBQUcsSUFBSSxHQUFHLEVBQTJCLENBQUM7UUFDdkQsTUFBTSxPQUFPLEdBQUcsSUFBSSxHQUFHLEVBQWdDLENBQUM7UUFDeEQsTUFBTSxZQUFZLEdBQUcsSUFBSSxHQUFHLEVBQW9CLENBQUM7UUFDakQsTUFBTSxTQUFTLEdBQUcsSUFBSSxHQUFHLEVBQVUsQ0FBQztRQUNwQyw4Q0FBOEM7UUFDOUMsTUFBTSxNQUFNLEdBQUcsSUFBSSxjQUFjLENBQzdCLFdBQVcsRUFBRSxPQUFPLEVBQUUsU0FBUyxFQUFFLFlBQVksRUFBRSxLQUFLLEVBQ3BELFFBQVEsWUFBWSxRQUFRLENBQUMsQ0FBQyxDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUMsSUFBSSxFQUFFLENBQUMsQ0FBQyxDQUFDO1FBQ3ZELE1BQU0sQ0FBQyxNQUFNLENBQUMsUUFBUSxDQUFDLENBQUM7UUFDeEIsT0FBTyxFQUFDLFdBQVcsRUFBRSxPQUFPLEVBQUUsWUFBWSxFQUFFLFNBQVMsRUFBQyxDQUFDO0lBQ3pELENBQUM7SUFFTyxNQUFNLENBQUMsUUFBeUI7UUFDdEMsSUFBSSxRQUFRLFlBQVksUUFBUSxFQUFFO1lBQ2hDLDhGQUE4RjtZQUM5Riw2RUFBNkU7WUFDN0UsUUFBUSxDQUFDLFNBQVMsQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDO1lBQzNDLFFBQVEsQ0FBQyxRQUFRLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztZQUUxQyx5QkFBeUI7WUFDekIsSUFBSSxDQUFDLFlBQVksQ0FBQyxHQUFHLENBQUMsUUFBUSxFQUFFLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQztTQUM3QzthQUFNO1lBQ0wsK0NBQStDO1lBQy9DLFFBQVEsQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDO1NBQ2xDO0lBQ0gsQ0FBQztJQUVELFlBQVksQ0FBQyxPQUFnQjtRQUMzQiwwREFBMEQ7UUFDMUQsT0FBTyxDQUFDLE1BQU0sQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDO1FBQ3ZDLE9BQU8sQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztRQUN4QyxPQUFPLENBQUMsUUFBUSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLENBQUM7SUFDM0MsQ0FBQztJQUVELGFBQWEsQ0FBQyxRQUFrQjtRQUM5Qiw2RUFBNkU7UUFDN0UsUUFBUSxDQUFDLE1BQU0sQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDO1FBQ3hDLFFBQVEsQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztRQUN6QyxRQUFRLENBQUMsYUFBYSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLENBQUM7UUFFL0Msc0RBQXNEO1FBQ3RELFFBQVEsQ0FBQyxVQUFVLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztRQUU1Qyw0RkFBNEY7UUFDNUYsTUFBTSxVQUFVLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxhQUFhLENBQUMsUUFBUSxDQUFDLENBQUM7UUFDdEQsTUFBTSxNQUFNLEdBQUcsSUFBSSxjQUFjLENBQzdCLElBQUksQ0FBQyxRQUFRLEVBQUUsSUFBSSxDQUFDLE9BQU8sRUFBRSxJQUFJLENBQUMsU0FBUyxFQUFFLElBQUksQ0FBQyxZQUFZLEVBQUUsVUFBVSxFQUFFLFFBQVEsRUFDcEYsSUFBSSxDQUFDLEtBQUssR0FBRyxDQUFDLENBQUMsQ0FBQztRQUNwQixNQUFNLENBQUMsTUFBTSxDQUFDLFFBQVEsQ0FBQyxDQUFDO0lBQzFCLENBQUM7SUFFRCxhQUFhLENBQUMsUUFBa0I7UUFDOUIsaUVBQWlFO1FBQ2pFLElBQUksSUFBSSxDQUFDLFFBQVEsS0FBSyxJQUFJLEVBQUU7WUFDMUIsSUFBSSxDQUFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsUUFBUSxFQUFFLElBQUksQ0FBQyxRQUFRLENBQUMsQ0FBQztTQUMzQztJQUNILENBQUM7SUFFRCxjQUFjLENBQUMsU0FBb0I7UUFDakMsa0VBQWtFO1FBQ2xFLElBQUksSUFBSSxDQUFDLFFBQVEsS0FBSyxJQUFJLEVBQUU7WUFDMUIsSUFBSSxDQUFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsU0FBUyxFQUFFLElBQUksQ0FBQyxRQUFRLENBQUMsQ0FBQztTQUM1QztJQUNILENBQUM7SUFFRCwyQkFBMkI7SUFFM0IsU0FBUyxDQUFDLElBQVUsSUFBRyxDQUFDO0lBQ3hCLFlBQVksQ0FBQyxPQUFnQixJQUFHLENBQUM7SUFDakMsa0JBQWtCLENBQUMsU0FBd0IsSUFBRyxDQUFDO0lBQy9DLFFBQVEsQ0FBQyxHQUFRLElBQVMsQ0FBQztJQUUzQixnR0FBZ0c7SUFFaEcsbUJBQW1CLENBQUMsU0FBeUI7UUFDM0MsU0FBUyxDQUFDLEtBQUssQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDOUIsQ0FBQztJQUVELGVBQWUsQ0FBQyxLQUFpQjtRQUMvQixLQUFLLENBQUMsT0FBTyxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQztJQUM1QixDQUFDO0lBRUQsY0FBYyxDQUFDLElBQWU7UUFDNUIsSUFBSSxDQUFDLEtBQUssQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDekIsQ0FBQztJQUNELFNBQVMsQ0FBQyxHQUFnQixFQUFFLE9BQVk7UUFDdEMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxHQUFHLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQzdCLE9BQU8sS0FBSyxDQUFDLFNBQVMsQ0FBQyxHQUFHLEVBQUUsT0FBTyxDQUFDLENBQUM7SUFDdkMsQ0FBQztJQUVELDhGQUE4RjtJQUM5RixzQ0FBc0M7SUFFdEMsaUJBQWlCLENBQUMsR0FBaUIsRUFBRSxPQUFZO1FBQy9DLElBQUksQ0FBQyxRQUFRLENBQUMsT0FBTyxFQUFFLEdBQUcsRUFBRSxHQUFHLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDdEMsT0FBTyxLQUFLLENBQUMsaUJBQWlCLENBQUMsR0FBRyxFQUFFLE9BQU8sQ0FBQyxDQUFDO0lBQy9DLENBQUM7SUFFRCxxQkFBcUIsQ0FBQyxHQUFxQixFQUFFLE9BQVk7UUFDdkQsSUFBSSxDQUFDLFFBQVEsQ0FBQyxPQUFPLEVBQUUsR0FBRyxFQUFFLEdBQUcsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUN0QyxPQUFPLEtBQUssQ0FBQyxxQkFBcUIsQ0FBQyxHQUFHLEVBQUUsT0FBTyxDQUFDLENBQUM7SUFDbkQsQ0FBQztJQUVELGtCQUFrQixDQUFDLEdBQWtCLEVBQUUsT0FBWTtRQUNqRCxJQUFJLENBQUMsUUFBUSxDQUFDLE9BQU8sRUFBRSxHQUFHLEVBQUUsR0FBRyxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ3RDLE9BQU8sS0FBSyxDQUFDLGtCQUFrQixDQUFDLEdBQUcsRUFBRSxPQUFPLENBQUMsQ0FBQztJQUNoRCxDQUFDO0lBRUQsZUFBZSxDQUFDLEdBQWUsRUFBRSxPQUFZO1FBQzNDLElBQUksQ0FBQyxRQUFRLENBQUMsT0FBTyxFQUFFLEdBQUcsRUFBRSxHQUFHLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDdEMsT0FBTyxLQUFLLENBQUMsZUFBZSxDQUFDLEdBQUcsRUFBRSxPQUFPLENBQUMsQ0FBQztJQUM3QyxDQUFDO0lBRUQsbUJBQW1CLENBQUMsR0FBbUIsRUFBRSxPQUFZO1FBQ25ELElBQUksQ0FBQyxRQUFRLENBQUMsT0FBTyxFQUFFLEdBQUcsRUFBRSxHQUFHLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDdEMsT0FBTyxLQUFLLENBQUMsbUJBQW1CLENBQUMsR0FBRyxFQUFFLE9BQU8sQ0FBQyxDQUFDO0lBQ2pELENBQUM7SUFFTyxRQUFRLENBQ1osS0FBWSxFQUFFLEdBQTBFLEVBQ3hGLElBQVk7UUFDZCw0RkFBNEY7UUFDNUYsNkRBQTZEO1FBQzdELElBQUksQ0FBQyxDQUFDLEdBQUcsQ0FBQyxRQUFRLFlBQVksZ0JBQWdCLENBQUMsRUFBRTtZQUMvQyxPQUFPO1NBQ1I7UUFFRCw0RkFBNEY7UUFDNUYsMERBQTBEO1FBQzFELElBQUksTUFBTSxHQUFHLElBQUksQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ3JDLElBQUksTUFBTSxLQUFLLElBQUksRUFBRTtZQUNuQixJQUFJLENBQUMsUUFBUSxDQUFDLEdBQUcsQ0FBQyxHQUFHLEVBQUUsTUFBTSxDQUFDLENBQUM7U0FDaEM7SUFDSCxDQUFDO0NBQ0Y7QUFFRDs7OztHQUlHO0FBQ0gsTUFBTSxPQUFPLGFBQWE7SUFDeEIsWUFDYSxNQUFjLEVBQVUsVUFBK0MsRUFDeEUsUUFBbUYsRUFDbkYsVUFFaUUsRUFDakUsV0FBeUMsRUFDekMsT0FBMEMsRUFDMUMsWUFBbUMsRUFBVSxTQUFzQjtRQVBsRSxXQUFNLEdBQU4sTUFBTSxDQUFRO1FBQVUsZUFBVSxHQUFWLFVBQVUsQ0FBcUM7UUFDeEUsYUFBUSxHQUFSLFFBQVEsQ0FBMkU7UUFDbkYsZUFBVSxHQUFWLFVBQVUsQ0FFdUQ7UUFDakUsZ0JBQVcsR0FBWCxXQUFXLENBQThCO1FBQ3pDLFlBQU8sR0FBUCxPQUFPLENBQW1DO1FBQzFDLGlCQUFZLEdBQVosWUFBWSxDQUF1QjtRQUFVLGNBQVMsR0FBVCxTQUFTLENBQWE7SUFBRyxDQUFDO0lBRW5GLG1CQUFtQixDQUFDLElBQXNCO1FBQ3hDLE9BQU8sSUFBSSxDQUFDLFVBQVUsQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLElBQUksSUFBSSxDQUFDO0lBQzNDLENBQUM7SUFFRCxrQkFBa0IsQ0FBQyxHQUFjO1FBRS9CLE9BQU8sSUFBSSxDQUFDLFVBQVUsQ0FBQyxHQUFHLENBQUMsR0FBRyxDQUFDLElBQUksSUFBSSxDQUFDO0lBQzFDLENBQUM7SUFFRCxvQkFBb0IsQ0FBQyxPQUFnRDtRQUVuRSxPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMsR0FBRyxDQUFDLE9BQU8sQ0FBQyxJQUFJLElBQUksQ0FBQztJQUM1QyxDQUFDO0lBRUQsbUJBQW1CLENBQUMsSUFBUztRQUMzQixPQUFPLElBQUksQ0FBQyxXQUFXLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxJQUFJLElBQUksQ0FBQztJQUM1QyxDQUFDO0lBRUQsbUJBQW1CLENBQUMsTUFBMEI7UUFDNUMsT0FBTyxJQUFJLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxNQUFNLENBQUMsSUFBSSxJQUFJLENBQUM7SUFDMUMsQ0FBQztJQUVELGVBQWUsQ0FBQyxRQUFrQjtRQUNoQyxPQUFPLElBQUksQ0FBQyxZQUFZLENBQUMsR0FBRyxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsQ0FBQztJQUM5QyxDQUFDO0lBRUQsaUJBQWlCO1FBQ2YsTUFBTSxHQUFHLEdBQUcsSUFBSSxHQUFHLEVBQWMsQ0FBQztRQUNsQyxJQUFJLENBQUMsVUFBVSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLENBQUMsR0FBRyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNuRSxPQUFPLEtBQUssQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLE1BQU0sRUFBRSxDQUFDLENBQUM7SUFDbEMsQ0FBQztJQUVELFlBQVk7UUFDVixPQUFPLEtBQUssQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDO0lBQ3BDLENBQUM7Q0FDRiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0FTVCwgQmluZGluZ1BpcGUsIEltcGxpY2l0UmVjZWl2ZXIsIE1ldGhvZENhbGwsIFByb3BlcnR5UmVhZCwgUHJvcGVydHlXcml0ZSwgUmVjdXJzaXZlQXN0VmlzaXRvciwgU2FmZU1ldGhvZENhbGwsIFNhZmVQcm9wZXJ0eVJlYWR9IGZyb20gJy4uLy4uL2V4cHJlc3Npb25fcGFyc2VyL2FzdCc7XG5pbXBvcnQge1NlbGVjdG9yTWF0Y2hlcn0gZnJvbSAnLi4vLi4vc2VsZWN0b3InO1xuaW1wb3J0IHtCb3VuZEF0dHJpYnV0ZSwgQm91bmRFdmVudCwgQm91bmRUZXh0LCBDb250ZW50LCBFbGVtZW50LCBJY3UsIE5vZGUsIFJlZmVyZW5jZSwgVGVtcGxhdGUsIFRleHQsIFRleHRBdHRyaWJ1dGUsIFZhcmlhYmxlLCBWaXNpdG9yfSBmcm9tICcuLi9yM19hc3QnO1xuXG5pbXBvcnQge0JvdW5kVGFyZ2V0LCBEaXJlY3RpdmVNZXRhLCBUYXJnZXQsIFRhcmdldEJpbmRlcn0gZnJvbSAnLi90Ml9hcGknO1xuaW1wb3J0IHtjcmVhdGVDc3NTZWxlY3Rvcn0gZnJvbSAnLi90ZW1wbGF0ZSc7XG5pbXBvcnQge2dldEF0dHJzRm9yRGlyZWN0aXZlTWF0Y2hpbmd9IGZyb20gJy4vdXRpbCc7XG5cblxuLyoqXG4gKiBQcm9jZXNzZXMgYFRhcmdldGBzIHdpdGggYSBnaXZlbiBzZXQgb2YgZGlyZWN0aXZlcyBhbmQgcGVyZm9ybXMgYSBiaW5kaW5nIG9wZXJhdGlvbiwgd2hpY2hcbiAqIHJldHVybnMgYW4gb2JqZWN0IHNpbWlsYXIgdG8gVHlwZVNjcmlwdCdzIGB0cy5UeXBlQ2hlY2tlcmAgdGhhdCBjb250YWlucyBrbm93bGVkZ2UgYWJvdXQgdGhlXG4gKiB0YXJnZXQuXG4gKi9cbmV4cG9ydCBjbGFzcyBSM1RhcmdldEJpbmRlcjxEaXJlY3RpdmVUIGV4dGVuZHMgRGlyZWN0aXZlTWV0YT4gaW1wbGVtZW50cyBUYXJnZXRCaW5kZXI8RGlyZWN0aXZlVD4ge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGRpcmVjdGl2ZU1hdGNoZXI6IFNlbGVjdG9yTWF0Y2hlcjxEaXJlY3RpdmVUPikge31cblxuICAvKipcbiAgICogUGVyZm9ybSBhIGJpbmRpbmcgb3BlcmF0aW9uIG9uIHRoZSBnaXZlbiBgVGFyZ2V0YCBhbmQgcmV0dXJuIGEgYEJvdW5kVGFyZ2V0YCB3aGljaCBjb250YWluc1xuICAgKiBtZXRhZGF0YSBhYm91dCB0aGUgdHlwZXMgcmVmZXJlbmNlZCBpbiB0aGUgdGVtcGxhdGUuXG4gICAqL1xuICBiaW5kKHRhcmdldDogVGFyZ2V0KTogQm91bmRUYXJnZXQ8RGlyZWN0aXZlVD4ge1xuICAgIGlmICghdGFyZ2V0LnRlbXBsYXRlKSB7XG4gICAgICAvLyBUT0RPKGFseGh1Yik6IGhhbmRsZSB0YXJnZXRzIHdoaWNoIGNvbnRhaW4gdGhpbmdzIGxpa2UgSG9zdEJpbmRpbmdzLCBldGMuXG4gICAgICB0aHJvdyBuZXcgRXJyb3IoJ0JpbmRpbmcgd2l0aG91dCBhIHRlbXBsYXRlIG5vdCB5ZXQgc3VwcG9ydGVkJyk7XG4gICAgfVxuXG4gICAgLy8gRmlyc3QsIHBhcnNlIHRoZSB0ZW1wbGF0ZSBpbnRvIGEgYFNjb3BlYCBzdHJ1Y3R1cmUuIFRoaXMgb3BlcmF0aW9uIGNhcHR1cmVzIHRoZSBzeW50YWN0aWNcbiAgICAvLyBzY29wZXMgaW4gdGhlIHRlbXBsYXRlIGFuZCBtYWtlcyB0aGVtIGF2YWlsYWJsZSBmb3IgbGF0ZXIgdXNlLlxuICAgIGNvbnN0IHNjb3BlID0gU2NvcGUuYXBwbHkodGFyZ2V0LnRlbXBsYXRlKTtcblxuICAgIC8vIE5leHQsIHBlcmZvcm0gZGlyZWN0aXZlIG1hdGNoaW5nIG9uIHRoZSB0ZW1wbGF0ZSB1c2luZyB0aGUgYERpcmVjdGl2ZUJpbmRlcmAuIFRoaXMgcmV0dXJuczpcbiAgICAvLyAgIC0gZGlyZWN0aXZlczogTWFwIG9mIG5vZGVzIChlbGVtZW50cyAmIG5nLXRlbXBsYXRlcykgdG8gdGhlIGRpcmVjdGl2ZXMgb24gdGhlbS5cbiAgICAvLyAgIC0gYmluZGluZ3M6IE1hcCBvZiBpbnB1dHMsIG91dHB1dHMsIGFuZCBhdHRyaWJ1dGVzIHRvIHRoZSBkaXJlY3RpdmUvZWxlbWVudCB0aGF0IGNsYWltc1xuICAgIC8vICAgICB0aGVtLiBUT0RPKGFseGh1Yik6IGhhbmRsZSBtdWx0aXBsZSBkaXJlY3RpdmVzIGNsYWltaW5nIGFuIGlucHV0L291dHB1dC9ldGMuXG4gICAgLy8gICAtIHJlZmVyZW5jZXM6IE1hcCBvZiAjcmVmZXJlbmNlcyB0byB0aGVpciB0YXJnZXRzLlxuICAgIGNvbnN0IHtkaXJlY3RpdmVzLCBiaW5kaW5ncywgcmVmZXJlbmNlc30gPVxuICAgICAgICBEaXJlY3RpdmVCaW5kZXIuYXBwbHkodGFyZ2V0LnRlbXBsYXRlLCB0aGlzLmRpcmVjdGl2ZU1hdGNoZXIpO1xuICAgIC8vIEZpbmFsbHksIHJ1biB0aGUgVGVtcGxhdGVCaW5kZXIgdG8gYmluZCByZWZlcmVuY2VzLCB2YXJpYWJsZXMsIGFuZCBvdGhlciBlbnRpdGllcyB3aXRoaW4gdGhlXG4gICAgLy8gdGVtcGxhdGUuIFRoaXMgZXh0cmFjdHMgYWxsIHRoZSBtZXRhZGF0YSB0aGF0IGRvZXNuJ3QgZGVwZW5kIG9uIGRpcmVjdGl2ZSBtYXRjaGluZy5cbiAgICBjb25zdCB7ZXhwcmVzc2lvbnMsIHN5bWJvbHMsIG5lc3RpbmdMZXZlbCwgdXNlZFBpcGVzfSA9XG4gICAgICAgIFRlbXBsYXRlQmluZGVyLmFwcGx5KHRhcmdldC50ZW1wbGF0ZSwgc2NvcGUpO1xuICAgIHJldHVybiBuZXcgUjNCb3VuZFRhcmdldChcbiAgICAgICAgdGFyZ2V0LCBkaXJlY3RpdmVzLCBiaW5kaW5ncywgcmVmZXJlbmNlcywgZXhwcmVzc2lvbnMsIHN5bWJvbHMsIG5lc3RpbmdMZXZlbCwgdXNlZFBpcGVzKTtcbiAgfVxufVxuXG4vKipcbiAqIFJlcHJlc2VudHMgYSBiaW5kaW5nIHNjb3BlIHdpdGhpbiBhIHRlbXBsYXRlLlxuICpcbiAqIEFueSB2YXJpYWJsZXMsIHJlZmVyZW5jZXMsIG9yIG90aGVyIG5hbWVkIGVudGl0aWVzIGRlY2xhcmVkIHdpdGhpbiB0aGUgdGVtcGxhdGUgd2lsbFxuICogYmUgY2FwdHVyZWQgYW5kIGF2YWlsYWJsZSBieSBuYW1lIGluIGBuYW1lZEVudGl0aWVzYC4gQWRkaXRpb25hbGx5LCBjaGlsZCB0ZW1wbGF0ZXMgd2lsbFxuICogYmUgYW5hbHl6ZWQgYW5kIGhhdmUgdGhlaXIgY2hpbGQgYFNjb3BlYHMgYXZhaWxhYmxlIGluIGBjaGlsZFNjb3Blc2AuXG4gKi9cbmNsYXNzIFNjb3BlIGltcGxlbWVudHMgVmlzaXRvciB7XG4gIC8qKlxuICAgKiBOYW1lZCBtZW1iZXJzIG9mIHRoZSBgU2NvcGVgLCBzdWNoIGFzIGBSZWZlcmVuY2VgcyBvciBgVmFyaWFibGVgcy5cbiAgICovXG4gIHJlYWRvbmx5IG5hbWVkRW50aXRpZXMgPSBuZXcgTWFwPHN0cmluZywgUmVmZXJlbmNlfFZhcmlhYmxlPigpO1xuXG4gIC8qKlxuICAgKiBDaGlsZCBgU2NvcGVgcyBmb3IgaW1tZWRpYXRlbHkgbmVzdGVkIGBUZW1wbGF0ZWBzLlxuICAgKi9cbiAgcmVhZG9ubHkgY2hpbGRTY29wZXMgPSBuZXcgTWFwPFRlbXBsYXRlLCBTY29wZT4oKTtcblxuICBwcml2YXRlIGNvbnN0cnVjdG9yKHJlYWRvbmx5IHBhcmVudFNjb3BlPzogU2NvcGUpIHt9XG5cbiAgLyoqXG4gICAqIFByb2Nlc3MgYSB0ZW1wbGF0ZSAoZWl0aGVyIGFzIGEgYFRlbXBsYXRlYCBzdWItdGVtcGxhdGUgd2l0aCB2YXJpYWJsZXMsIG9yIGEgcGxhaW4gYXJyYXkgb2ZcbiAgICogdGVtcGxhdGUgYE5vZGVgcykgYW5kIGNvbnN0cnVjdCBpdHMgYFNjb3BlYC5cbiAgICovXG4gIHN0YXRpYyBhcHBseSh0ZW1wbGF0ZTogVGVtcGxhdGV8Tm9kZVtdKTogU2NvcGUge1xuICAgIGNvbnN0IHNjb3BlID0gbmV3IFNjb3BlKCk7XG4gICAgc2NvcGUuaW5nZXN0KHRlbXBsYXRlKTtcbiAgICByZXR1cm4gc2NvcGU7XG4gIH1cblxuICAvKipcbiAgICogSW50ZXJuYWwgbWV0aG9kIHRvIHByb2Nlc3MgdGhlIHRlbXBsYXRlIGFuZCBwb3B1bGF0ZSB0aGUgYFNjb3BlYC5cbiAgICovXG4gIHByaXZhdGUgaW5nZXN0KHRlbXBsYXRlOiBUZW1wbGF0ZXxOb2RlW10pOiB2b2lkIHtcbiAgICBpZiAodGVtcGxhdGUgaW5zdGFuY2VvZiBUZW1wbGF0ZSkge1xuICAgICAgLy8gVmFyaWFibGVzIG9uIGFuIDxuZy10ZW1wbGF0ZT4gYXJlIGRlZmluZWQgaW4gdGhlIGlubmVyIHNjb3BlLlxuICAgICAgdGVtcGxhdGUudmFyaWFibGVzLmZvckVhY2gobm9kZSA9PiB0aGlzLnZpc2l0VmFyaWFibGUobm9kZSkpO1xuXG4gICAgICAvLyBQcm9jZXNzIHRoZSBub2RlcyBvZiB0aGUgdGVtcGxhdGUuXG4gICAgICB0ZW1wbGF0ZS5jaGlsZHJlbi5mb3JFYWNoKG5vZGUgPT4gbm9kZS52aXNpdCh0aGlzKSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIE5vIG92ZXJhcmNoaW5nIGBUZW1wbGF0ZWAgaW5zdGFuY2UsIHNvIHByb2Nlc3MgdGhlIG5vZGVzIGRpcmVjdGx5LlxuICAgICAgdGVtcGxhdGUuZm9yRWFjaChub2RlID0+IG5vZGUudmlzaXQodGhpcykpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0RWxlbWVudChlbGVtZW50OiBFbGVtZW50KSB7XG4gICAgLy8gYEVsZW1lbnRgcyBpbiB0aGUgdGVtcGxhdGUgbWF5IGhhdmUgYFJlZmVyZW5jZWBzIHdoaWNoIGFyZSBjYXB0dXJlZCBpbiB0aGUgc2NvcGUuXG4gICAgZWxlbWVudC5yZWZlcmVuY2VzLmZvckVhY2gobm9kZSA9PiB0aGlzLnZpc2l0UmVmZXJlbmNlKG5vZGUpKTtcblxuICAgIC8vIFJlY3Vyc2UgaW50byB0aGUgYEVsZW1lbnRgJ3MgY2hpbGRyZW4uXG4gICAgZWxlbWVudC5jaGlsZHJlbi5mb3JFYWNoKG5vZGUgPT4gbm9kZS52aXNpdCh0aGlzKSk7XG4gIH1cblxuICB2aXNpdFRlbXBsYXRlKHRlbXBsYXRlOiBUZW1wbGF0ZSkge1xuICAgIC8vIFJlZmVyZW5jZXMgb24gYSA8bmctdGVtcGxhdGU+IGFyZSBkZWZpbmVkIGluIHRoZSBvdXRlciBzY29wZSwgc28gY2FwdHVyZSB0aGVtIGJlZm9yZVxuICAgIC8vIHByb2Nlc3NpbmcgdGhlIHRlbXBsYXRlJ3MgY2hpbGQgc2NvcGUuXG4gICAgdGVtcGxhdGUucmVmZXJlbmNlcy5mb3JFYWNoKG5vZGUgPT4gdGhpcy52aXNpdFJlZmVyZW5jZShub2RlKSk7XG5cbiAgICAvLyBOZXh0LCBjcmVhdGUgYW4gaW5uZXIgc2NvcGUgYW5kIHByb2Nlc3MgdGhlIHRlbXBsYXRlIHdpdGhpbiBpdC5cbiAgICBjb25zdCBzY29wZSA9IG5ldyBTY29wZSh0aGlzKTtcbiAgICBzY29wZS5pbmdlc3QodGVtcGxhdGUpO1xuICAgIHRoaXMuY2hpbGRTY29wZXMuc2V0KHRlbXBsYXRlLCBzY29wZSk7XG4gIH1cblxuICB2aXNpdFZhcmlhYmxlKHZhcmlhYmxlOiBWYXJpYWJsZSkge1xuICAgIC8vIERlY2xhcmUgdGhlIHZhcmlhYmxlIGlmIGl0J3Mgbm90IGFscmVhZHkuXG4gICAgdGhpcy5tYXliZURlY2xhcmUodmFyaWFibGUpO1xuICB9XG5cbiAgdmlzaXRSZWZlcmVuY2UocmVmZXJlbmNlOiBSZWZlcmVuY2UpIHtcbiAgICAvLyBEZWNsYXJlIHRoZSB2YXJpYWJsZSBpZiBpdCdzIG5vdCBhbHJlYWR5LlxuICAgIHRoaXMubWF5YmVEZWNsYXJlKHJlZmVyZW5jZSk7XG4gIH1cblxuICAvLyBVbnVzZWQgdmlzaXRvcnMuXG4gIHZpc2l0Q29udGVudChjb250ZW50OiBDb250ZW50KSB7fVxuICB2aXNpdEJvdW5kQXR0cmlidXRlKGF0dHI6IEJvdW5kQXR0cmlidXRlKSB7fVxuICB2aXNpdEJvdW5kRXZlbnQoZXZlbnQ6IEJvdW5kRXZlbnQpIHt9XG4gIHZpc2l0Qm91bmRUZXh0KHRleHQ6IEJvdW5kVGV4dCkge31cbiAgdmlzaXRUZXh0KHRleHQ6IFRleHQpIHt9XG4gIHZpc2l0VGV4dEF0dHJpYnV0ZShhdHRyOiBUZXh0QXR0cmlidXRlKSB7fVxuICB2aXNpdEljdShpY3U6IEljdSkge31cblxuICBwcml2YXRlIG1heWJlRGVjbGFyZSh0aGluZzogUmVmZXJlbmNlfFZhcmlhYmxlKSB7XG4gICAgLy8gRGVjbGFyZSBzb21ldGhpbmcgd2l0aCBhIG5hbWUsIGFzIGxvbmcgYXMgdGhhdCBuYW1lIGlzbid0IHRha2VuLlxuICAgIGlmICghdGhpcy5uYW1lZEVudGl0aWVzLmhhcyh0aGluZy5uYW1lKSkge1xuICAgICAgdGhpcy5uYW1lZEVudGl0aWVzLnNldCh0aGluZy5uYW1lLCB0aGluZyk7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIExvb2sgdXAgYSB2YXJpYWJsZSB3aXRoaW4gdGhpcyBgU2NvcGVgLlxuICAgKlxuICAgKiBUaGlzIGNhbiByZWN1cnNlIGludG8gYSBwYXJlbnQgYFNjb3BlYCBpZiBpdCdzIGF2YWlsYWJsZS5cbiAgICovXG4gIGxvb2t1cChuYW1lOiBzdHJpbmcpOiBSZWZlcmVuY2V8VmFyaWFibGV8bnVsbCB7XG4gICAgaWYgKHRoaXMubmFtZWRFbnRpdGllcy5oYXMobmFtZSkpIHtcbiAgICAgIC8vIEZvdW5kIGluIHRoZSBsb2NhbCBzY29wZS5cbiAgICAgIHJldHVybiB0aGlzLm5hbWVkRW50aXRpZXMuZ2V0KG5hbWUpITtcbiAgICB9IGVsc2UgaWYgKHRoaXMucGFyZW50U2NvcGUgIT09IHVuZGVmaW5lZCkge1xuICAgICAgLy8gTm90IGluIHRoZSBsb2NhbCBzY29wZSwgYnV0IHRoZXJlJ3MgYSBwYXJlbnQgc2NvcGUgc28gY2hlY2sgdGhlcmUuXG4gICAgICByZXR1cm4gdGhpcy5wYXJlbnRTY29wZS5sb29rdXAobmFtZSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIEF0IHRoZSB0b3AgbGV2ZWwgYW5kIGl0IHdhc24ndCBmb3VuZC5cbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBHZXQgdGhlIGNoaWxkIHNjb3BlIGZvciBhIGBUZW1wbGF0ZWAuXG4gICAqXG4gICAqIFRoaXMgc2hvdWxkIGFsd2F5cyBiZSBkZWZpbmVkLlxuICAgKi9cbiAgZ2V0Q2hpbGRTY29wZSh0ZW1wbGF0ZTogVGVtcGxhdGUpOiBTY29wZSB7XG4gICAgY29uc3QgcmVzID0gdGhpcy5jaGlsZFNjb3Blcy5nZXQodGVtcGxhdGUpO1xuICAgIGlmIChyZXMgPT09IHVuZGVmaW5lZCkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGBBc3NlcnRpb24gZXJyb3I6IGNoaWxkIHNjb3BlIGZvciAke3RlbXBsYXRlfSBub3QgZm91bmRgKTtcbiAgICB9XG4gICAgcmV0dXJuIHJlcztcbiAgfVxufVxuXG4vKipcbiAqIFByb2Nlc3NlcyBhIHRlbXBsYXRlIGFuZCBtYXRjaGVzIGRpcmVjdGl2ZXMgb24gbm9kZXMgKGVsZW1lbnRzIGFuZCB0ZW1wbGF0ZXMpLlxuICpcbiAqIFVzdWFsbHkgdXNlZCB2aWEgdGhlIHN0YXRpYyBgYXBwbHkoKWAgbWV0aG9kLlxuICovXG5jbGFzcyBEaXJlY3RpdmVCaW5kZXI8RGlyZWN0aXZlVCBleHRlbmRzIERpcmVjdGl2ZU1ldGE+IGltcGxlbWVudHMgVmlzaXRvciB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSBtYXRjaGVyOiBTZWxlY3Rvck1hdGNoZXI8RGlyZWN0aXZlVD4sXG4gICAgICBwcml2YXRlIGRpcmVjdGl2ZXM6IE1hcDxFbGVtZW50fFRlbXBsYXRlLCBEaXJlY3RpdmVUW10+LFxuICAgICAgcHJpdmF0ZSBiaW5kaW5nczogTWFwPEJvdW5kQXR0cmlidXRlfEJvdW5kRXZlbnR8VGV4dEF0dHJpYnV0ZSwgRGlyZWN0aXZlVHxFbGVtZW50fFRlbXBsYXRlPixcbiAgICAgIHByaXZhdGUgcmVmZXJlbmNlczpcbiAgICAgICAgICBNYXA8UmVmZXJlbmNlLCB7ZGlyZWN0aXZlOiBEaXJlY3RpdmVULCBub2RlOiBFbGVtZW50fFRlbXBsYXRlfXxFbGVtZW50fFRlbXBsYXRlPikge31cblxuICAvKipcbiAgICogUHJvY2VzcyBhIHRlbXBsYXRlIChsaXN0IG9mIGBOb2RlYHMpIGFuZCBwZXJmb3JtIGRpcmVjdGl2ZSBtYXRjaGluZyBhZ2FpbnN0IGVhY2ggbm9kZS5cbiAgICpcbiAgICogQHBhcmFtIHRlbXBsYXRlIHRoZSBsaXN0IG9mIHRlbXBsYXRlIGBOb2RlYHMgdG8gbWF0Y2ggKHJlY3Vyc2l2ZWx5KS5cbiAgICogQHBhcmFtIHNlbGVjdG9yTWF0Y2hlciBhIGBTZWxlY3Rvck1hdGNoZXJgIGNvbnRhaW5pbmcgdGhlIGRpcmVjdGl2ZXMgdGhhdCBhcmUgaW4gc2NvcGUgZm9yXG4gICAqIHRoaXMgdGVtcGxhdGUuXG4gICAqIEByZXR1cm5zIHRocmVlIG1hcHMgd2hpY2ggY29udGFpbiBpbmZvcm1hdGlvbiBhYm91dCBkaXJlY3RpdmVzIGluIHRoZSB0ZW1wbGF0ZTogdGhlXG4gICAqIGBkaXJlY3RpdmVzYCBtYXAgd2hpY2ggbGlzdHMgZGlyZWN0aXZlcyBtYXRjaGVkIG9uIGVhY2ggbm9kZSwgdGhlIGBiaW5kaW5nc2AgbWFwIHdoaWNoXG4gICAqIGluZGljYXRlcyB3aGljaCBkaXJlY3RpdmVzIGNsYWltZWQgd2hpY2ggYmluZGluZ3MgKGlucHV0cywgb3V0cHV0cywgZXRjKSwgYW5kIHRoZSBgcmVmZXJlbmNlc2BcbiAgICogbWFwIHdoaWNoIHJlc29sdmVzICNyZWZlcmVuY2VzIChgUmVmZXJlbmNlYHMpIHdpdGhpbiB0aGUgdGVtcGxhdGUgdG8gdGhlIG5hbWVkIGRpcmVjdGl2ZSBvclxuICAgKiB0ZW1wbGF0ZSBub2RlLlxuICAgKi9cbiAgc3RhdGljIGFwcGx5PERpcmVjdGl2ZVQgZXh0ZW5kcyBEaXJlY3RpdmVNZXRhPihcbiAgICAgIHRlbXBsYXRlOiBOb2RlW10sIHNlbGVjdG9yTWF0Y2hlcjogU2VsZWN0b3JNYXRjaGVyPERpcmVjdGl2ZVQ+KToge1xuICAgIGRpcmVjdGl2ZXM6IE1hcDxFbGVtZW50fFRlbXBsYXRlLCBEaXJlY3RpdmVUW10+LFxuICAgIGJpbmRpbmdzOiBNYXA8Qm91bmRBdHRyaWJ1dGV8Qm91bmRFdmVudHxUZXh0QXR0cmlidXRlLCBEaXJlY3RpdmVUfEVsZW1lbnR8VGVtcGxhdGU+LFxuICAgIHJlZmVyZW5jZXM6IE1hcDxSZWZlcmVuY2UsIHtkaXJlY3RpdmU6IERpcmVjdGl2ZVQsIG5vZGU6IEVsZW1lbnR8VGVtcGxhdGV9fEVsZW1lbnR8VGVtcGxhdGU+LFxuICB9IHtcbiAgICBjb25zdCBkaXJlY3RpdmVzID0gbmV3IE1hcDxFbGVtZW50fFRlbXBsYXRlLCBEaXJlY3RpdmVUW10+KCk7XG4gICAgY29uc3QgYmluZGluZ3MgPVxuICAgICAgICBuZXcgTWFwPEJvdW5kQXR0cmlidXRlfEJvdW5kRXZlbnR8VGV4dEF0dHJpYnV0ZSwgRGlyZWN0aXZlVHxFbGVtZW50fFRlbXBsYXRlPigpO1xuICAgIGNvbnN0IHJlZmVyZW5jZXMgPVxuICAgICAgICBuZXcgTWFwPFJlZmVyZW5jZSwge2RpcmVjdGl2ZTogRGlyZWN0aXZlVCwgbm9kZTogRWxlbWVudCB8IFRlbXBsYXRlfXxFbGVtZW50fFRlbXBsYXRlPigpO1xuICAgIGNvbnN0IG1hdGNoZXIgPSBuZXcgRGlyZWN0aXZlQmluZGVyKHNlbGVjdG9yTWF0Y2hlciwgZGlyZWN0aXZlcywgYmluZGluZ3MsIHJlZmVyZW5jZXMpO1xuICAgIG1hdGNoZXIuaW5nZXN0KHRlbXBsYXRlKTtcbiAgICByZXR1cm4ge2RpcmVjdGl2ZXMsIGJpbmRpbmdzLCByZWZlcmVuY2VzfTtcbiAgfVxuXG4gIHByaXZhdGUgaW5nZXN0KHRlbXBsYXRlOiBOb2RlW10pOiB2b2lkIHtcbiAgICB0ZW1wbGF0ZS5mb3JFYWNoKG5vZGUgPT4gbm9kZS52aXNpdCh0aGlzKSk7XG4gIH1cblxuICB2aXNpdEVsZW1lbnQoZWxlbWVudDogRWxlbWVudCk6IHZvaWQge1xuICAgIHRoaXMudmlzaXRFbGVtZW50T3JUZW1wbGF0ZShlbGVtZW50Lm5hbWUsIGVsZW1lbnQpO1xuICB9XG5cbiAgdmlzaXRUZW1wbGF0ZSh0ZW1wbGF0ZTogVGVtcGxhdGUpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0RWxlbWVudE9yVGVtcGxhdGUoJ25nLXRlbXBsYXRlJywgdGVtcGxhdGUpO1xuICB9XG5cbiAgdmlzaXRFbGVtZW50T3JUZW1wbGF0ZShlbGVtZW50TmFtZTogc3RyaW5nLCBub2RlOiBFbGVtZW50fFRlbXBsYXRlKTogdm9pZCB7XG4gICAgLy8gRmlyc3QsIGRldGVybWluZSB0aGUgSFRNTCBzaGFwZSBvZiB0aGUgbm9kZSBmb3IgdGhlIHB1cnBvc2Ugb2YgZGlyZWN0aXZlIG1hdGNoaW5nLlxuICAgIC8vIERvIHRoaXMgYnkgYnVpbGRpbmcgdXAgYSBgQ3NzU2VsZWN0b3JgIGZvciB0aGUgbm9kZS5cbiAgICBjb25zdCBjc3NTZWxlY3RvciA9IGNyZWF0ZUNzc1NlbGVjdG9yKGVsZW1lbnROYW1lLCBnZXRBdHRyc0ZvckRpcmVjdGl2ZU1hdGNoaW5nKG5vZGUpKTtcblxuICAgIC8vIE5leHQsIHVzZSB0aGUgYFNlbGVjdG9yTWF0Y2hlcmAgdG8gZ2V0IHRoZSBsaXN0IG9mIGRpcmVjdGl2ZXMgb24gdGhlIG5vZGUuXG4gICAgY29uc3QgZGlyZWN0aXZlczogRGlyZWN0aXZlVFtdID0gW107XG4gICAgdGhpcy5tYXRjaGVyLm1hdGNoKGNzc1NlbGVjdG9yLCAoXywgZGlyZWN0aXZlKSA9PiBkaXJlY3RpdmVzLnB1c2goZGlyZWN0aXZlKSk7XG4gICAgaWYgKGRpcmVjdGl2ZXMubGVuZ3RoID4gMCkge1xuICAgICAgdGhpcy5kaXJlY3RpdmVzLnNldChub2RlLCBkaXJlY3RpdmVzKTtcbiAgICB9XG5cbiAgICAvLyBSZXNvbHZlIGFueSByZWZlcmVuY2VzIHRoYXQgYXJlIGNyZWF0ZWQgb24gdGhpcyBub2RlLlxuICAgIG5vZGUucmVmZXJlbmNlcy5mb3JFYWNoKHJlZiA9PiB7XG4gICAgICBsZXQgZGlyVGFyZ2V0OiBEaXJlY3RpdmVUfG51bGwgPSBudWxsO1xuXG4gICAgICAvLyBJZiB0aGUgcmVmZXJlbmNlIGV4cHJlc3Npb24gaXMgZW1wdHksIHRoZW4gaXQgbWF0Y2hlcyB0aGUgXCJwcmltYXJ5XCIgZGlyZWN0aXZlIG9uIHRoZSBub2RlXG4gICAgICAvLyAoaWYgdGhlcmUgaXMgb25lKS4gT3RoZXJ3aXNlIGl0IG1hdGNoZXMgdGhlIGhvc3Qgbm9kZSBpdHNlbGYgKGVpdGhlciBhbiBlbGVtZW50IG9yXG4gICAgICAvLyA8bmctdGVtcGxhdGU+IG5vZGUpLlxuICAgICAgaWYgKHJlZi52YWx1ZS50cmltKCkgPT09ICcnKSB7XG4gICAgICAgIC8vIFRoaXMgY291bGQgYmUgYSByZWZlcmVuY2UgdG8gYSBjb21wb25lbnQgaWYgdGhlcmUgaXMgb25lLlxuICAgICAgICBkaXJUYXJnZXQgPSBkaXJlY3RpdmVzLmZpbmQoZGlyID0+IGRpci5pc0NvbXBvbmVudCkgfHwgbnVsbDtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIC8vIFRoaXMgc2hvdWxkIGJlIGEgcmVmZXJlbmNlIHRvIGEgZGlyZWN0aXZlIGV4cG9ydGVkIHZpYSBleHBvcnRBcy5cbiAgICAgICAgZGlyVGFyZ2V0ID1cbiAgICAgICAgICAgIGRpcmVjdGl2ZXMuZmluZChcbiAgICAgICAgICAgICAgICBkaXIgPT4gZGlyLmV4cG9ydEFzICE9PSBudWxsICYmIGRpci5leHBvcnRBcy5zb21lKHZhbHVlID0+IHZhbHVlID09PSByZWYudmFsdWUpKSB8fFxuICAgICAgICAgICAgbnVsbDtcbiAgICAgICAgLy8gQ2hlY2sgaWYgYSBtYXRjaGluZyBkaXJlY3RpdmUgd2FzIGZvdW5kLlxuICAgICAgICBpZiAoZGlyVGFyZ2V0ID09PSBudWxsKSB7XG4gICAgICAgICAgLy8gTm8gbWF0Y2hpbmcgZGlyZWN0aXZlIHdhcyBmb3VuZCAtIHRoaXMgcmVmZXJlbmNlIHBvaW50cyB0byBhbiB1bmtub3duIHRhcmdldC4gTGVhdmUgaXRcbiAgICAgICAgICAvLyB1bm1hcHBlZC5cbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgaWYgKGRpclRhcmdldCAhPT0gbnVsbCkge1xuICAgICAgICAvLyBUaGlzIHJlZmVyZW5jZSBwb2ludHMgdG8gYSBkaXJlY3RpdmUuXG4gICAgICAgIHRoaXMucmVmZXJlbmNlcy5zZXQocmVmLCB7ZGlyZWN0aXZlOiBkaXJUYXJnZXQsIG5vZGV9KTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIC8vIFRoaXMgcmVmZXJlbmNlIHBvaW50cyB0byB0aGUgbm9kZSBpdHNlbGYuXG4gICAgICAgIHRoaXMucmVmZXJlbmNlcy5zZXQocmVmLCBub2RlKTtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIC8vIEFzc29jaWF0ZSBhdHRyaWJ1dGVzL2JpbmRpbmdzIG9uIHRoZSBub2RlIHdpdGggZGlyZWN0aXZlcyBvciB3aXRoIHRoZSBub2RlIGl0c2VsZi5cbiAgICB0eXBlIEJvdW5kTm9kZSA9IEJvdW5kQXR0cmlidXRlfEJvdW5kRXZlbnR8VGV4dEF0dHJpYnV0ZTtcbiAgICBjb25zdCBzZXRBdHRyaWJ1dGVCaW5kaW5nID1cbiAgICAgICAgKGF0dHJpYnV0ZTogQm91bmROb2RlLCBpb1R5cGU6IGtleW9mIFBpY2s8RGlyZWN0aXZlTWV0YSwgJ2lucHV0cyd8J291dHB1dHMnPikgPT4ge1xuICAgICAgICAgIGNvbnN0IGRpciA9IGRpcmVjdGl2ZXMuZmluZChkaXIgPT4gZGlyW2lvVHlwZV0uaGFzT3duUHJvcGVydHkoYXR0cmlidXRlLm5hbWUpKTtcbiAgICAgICAgICBjb25zdCBiaW5kaW5nID0gZGlyICE9PSB1bmRlZmluZWQgPyBkaXIgOiBub2RlO1xuICAgICAgICAgIHRoaXMuYmluZGluZ3Muc2V0KGF0dHJpYnV0ZSwgYmluZGluZyk7XG4gICAgICAgIH07XG5cbiAgICAvLyBOb2RlIGlucHV0cyAoYm91bmQgYXR0cmlidXRlcykgYW5kIHRleHQgYXR0cmlidXRlcyBjYW4gYmUgYm91bmQgdG8gYW5cbiAgICAvLyBpbnB1dCBvbiBhIGRpcmVjdGl2ZS5cbiAgICBub2RlLmlucHV0cy5mb3JFYWNoKGlucHV0ID0+IHNldEF0dHJpYnV0ZUJpbmRpbmcoaW5wdXQsICdpbnB1dHMnKSk7XG4gICAgbm9kZS5hdHRyaWJ1dGVzLmZvckVhY2goYXR0ciA9PiBzZXRBdHRyaWJ1dGVCaW5kaW5nKGF0dHIsICdpbnB1dHMnKSk7XG4gICAgaWYgKG5vZGUgaW5zdGFuY2VvZiBUZW1wbGF0ZSkge1xuICAgICAgbm9kZS50ZW1wbGF0ZUF0dHJzLmZvckVhY2goYXR0ciA9PiBzZXRBdHRyaWJ1dGVCaW5kaW5nKGF0dHIsICdpbnB1dHMnKSk7XG4gICAgfVxuICAgIC8vIE5vZGUgb3V0cHV0cyAoYm91bmQgZXZlbnRzKSBjYW4gYmUgYm91bmQgdG8gYW4gb3V0cHV0IG9uIGEgZGlyZWN0aXZlLlxuICAgIG5vZGUub3V0cHV0cy5mb3JFYWNoKG91dHB1dCA9PiBzZXRBdHRyaWJ1dGVCaW5kaW5nKG91dHB1dCwgJ291dHB1dHMnKSk7XG5cbiAgICAvLyBSZWN1cnNlIGludG8gdGhlIG5vZGUncyBjaGlsZHJlbi5cbiAgICBub2RlLmNoaWxkcmVuLmZvckVhY2goY2hpbGQgPT4gY2hpbGQudmlzaXQodGhpcykpO1xuICB9XG5cbiAgLy8gVW51c2VkIHZpc2l0b3JzLlxuICB2aXNpdENvbnRlbnQoY29udGVudDogQ29udGVudCk6IHZvaWQge31cbiAgdmlzaXRWYXJpYWJsZSh2YXJpYWJsZTogVmFyaWFibGUpOiB2b2lkIHt9XG4gIHZpc2l0UmVmZXJlbmNlKHJlZmVyZW5jZTogUmVmZXJlbmNlKTogdm9pZCB7fVxuICB2aXNpdFRleHRBdHRyaWJ1dGUoYXR0cmlidXRlOiBUZXh0QXR0cmlidXRlKTogdm9pZCB7fVxuICB2aXNpdEJvdW5kQXR0cmlidXRlKGF0dHJpYnV0ZTogQm91bmRBdHRyaWJ1dGUpOiB2b2lkIHt9XG4gIHZpc2l0Qm91bmRFdmVudChhdHRyaWJ1dGU6IEJvdW5kRXZlbnQpOiB2b2lkIHt9XG4gIHZpc2l0Qm91bmRBdHRyaWJ1dGVPckV2ZW50KG5vZGU6IEJvdW5kQXR0cmlidXRlfEJvdW5kRXZlbnQpIHt9XG4gIHZpc2l0VGV4dCh0ZXh0OiBUZXh0KTogdm9pZCB7fVxuICB2aXNpdEJvdW5kVGV4dCh0ZXh0OiBCb3VuZFRleHQpOiB2b2lkIHt9XG4gIHZpc2l0SWN1KGljdTogSWN1KTogdm9pZCB7fVxufVxuXG4vKipcbiAqIFByb2Nlc3NlcyBhIHRlbXBsYXRlIGFuZCBleHRyYWN0IG1ldGFkYXRhIGFib3V0IGV4cHJlc3Npb25zIGFuZCBzeW1ib2xzIHdpdGhpbi5cbiAqXG4gKiBUaGlzIGlzIGEgY29tcGFuaW9uIHRvIHRoZSBgRGlyZWN0aXZlQmluZGVyYCB0aGF0IGRvZXNuJ3QgcmVxdWlyZSBrbm93bGVkZ2Ugb2YgZGlyZWN0aXZlcyBtYXRjaGVkXG4gKiB3aXRoaW4gdGhlIHRlbXBsYXRlIGluIG9yZGVyIHRvIG9wZXJhdGUuXG4gKlxuICogRXhwcmVzc2lvbnMgYXJlIHZpc2l0ZWQgYnkgdGhlIHN1cGVyY2xhc3MgYFJlY3Vyc2l2ZUFzdFZpc2l0b3JgLCB3aXRoIGN1c3RvbSBsb2dpYyBwcm92aWRlZFxuICogYnkgb3ZlcnJpZGRlbiBtZXRob2RzIGZyb20gdGhhdCB2aXNpdG9yLlxuICovXG5jbGFzcyBUZW1wbGF0ZUJpbmRlciBleHRlbmRzIFJlY3Vyc2l2ZUFzdFZpc2l0b3IgaW1wbGVtZW50cyBWaXNpdG9yIHtcbiAgcHJpdmF0ZSB2aXNpdE5vZGU6IChub2RlOiBOb2RlKSA9PiB2b2lkO1xuXG4gIHByaXZhdGUgcGlwZXNVc2VkOiBzdHJpbmdbXSA9IFtdO1xuXG4gIHByaXZhdGUgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIGJpbmRpbmdzOiBNYXA8QVNULCBSZWZlcmVuY2V8VmFyaWFibGU+LFxuICAgICAgcHJpdmF0ZSBzeW1ib2xzOiBNYXA8UmVmZXJlbmNlfFZhcmlhYmxlLCBUZW1wbGF0ZT4sIHByaXZhdGUgdXNlZFBpcGVzOiBTZXQ8c3RyaW5nPixcbiAgICAgIHByaXZhdGUgbmVzdGluZ0xldmVsOiBNYXA8VGVtcGxhdGUsIG51bWJlcj4sIHByaXZhdGUgc2NvcGU6IFNjb3BlLFxuICAgICAgcHJpdmF0ZSB0ZW1wbGF0ZTogVGVtcGxhdGV8bnVsbCwgcHJpdmF0ZSBsZXZlbDogbnVtYmVyKSB7XG4gICAgc3VwZXIoKTtcblxuICAgIC8vIFNhdmUgYSBiaXQgb2YgcHJvY2Vzc2luZyB0aW1lIGJ5IGNvbnN0cnVjdGluZyB0aGlzIGNsb3N1cmUgaW4gYWR2YW5jZS5cbiAgICB0aGlzLnZpc2l0Tm9kZSA9IChub2RlOiBOb2RlKSA9PiBub2RlLnZpc2l0KHRoaXMpO1xuICB9XG5cbiAgLy8gVGhpcyBtZXRob2QgaXMgZGVmaW5lZCB0byByZWNvbmNpbGUgdGhlIHR5cGUgb2YgVGVtcGxhdGVCaW5kZXIgc2luY2UgYm90aFxuICAvLyBSZWN1cnNpdmVBc3RWaXNpdG9yIGFuZCBWaXNpdG9yIGRlZmluZSB0aGUgdmlzaXQoKSBtZXRob2QgaW4gdGhlaXJcbiAgLy8gaW50ZXJmYWNlcy5cbiAgdmlzaXQobm9kZTogQVNUfE5vZGUsIGNvbnRleHQ/OiBhbnkpIHtcbiAgICBpZiAobm9kZSBpbnN0YW5jZW9mIEFTVCkge1xuICAgICAgbm9kZS52aXNpdCh0aGlzLCBjb250ZXh0KTtcbiAgICB9IGVsc2Uge1xuICAgICAgbm9kZS52aXNpdCh0aGlzKTtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogUHJvY2VzcyBhIHRlbXBsYXRlIGFuZCBleHRyYWN0IG1ldGFkYXRhIGFib3V0IGV4cHJlc3Npb25zIGFuZCBzeW1ib2xzIHdpdGhpbi5cbiAgICpcbiAgICogQHBhcmFtIHRlbXBsYXRlIHRoZSBub2RlcyBvZiB0aGUgdGVtcGxhdGUgdG8gcHJvY2Vzc1xuICAgKiBAcGFyYW0gc2NvcGUgdGhlIGBTY29wZWAgb2YgdGhlIHRlbXBsYXRlIGJlaW5nIHByb2Nlc3NlZC5cbiAgICogQHJldHVybnMgdGhyZWUgbWFwcyB3aGljaCBjb250YWluIG1ldGFkYXRhIGFib3V0IHRoZSB0ZW1wbGF0ZTogYGV4cHJlc3Npb25zYCB3aGljaCBpbnRlcnByZXRzXG4gICAqIHNwZWNpYWwgYEFTVGAgbm9kZXMgaW4gZXhwcmVzc2lvbnMgYXMgcG9pbnRpbmcgdG8gcmVmZXJlbmNlcyBvciB2YXJpYWJsZXMgZGVjbGFyZWQgd2l0aGluIHRoZVxuICAgKiB0ZW1wbGF0ZSwgYHN5bWJvbHNgIHdoaWNoIG1hcHMgdGhvc2UgdmFyaWFibGVzIGFuZCByZWZlcmVuY2VzIHRvIHRoZSBuZXN0ZWQgYFRlbXBsYXRlYCB3aGljaFxuICAgKiBkZWNsYXJlcyB0aGVtLCBpZiBhbnksIGFuZCBgbmVzdGluZ0xldmVsYCB3aGljaCBhc3NvY2lhdGVzIGVhY2ggYFRlbXBsYXRlYCB3aXRoIGEgaW50ZWdlclxuICAgKiBuZXN0aW5nIGxldmVsIChob3cgbWFueSBsZXZlbHMgZGVlcCB3aXRoaW4gdGhlIHRlbXBsYXRlIHN0cnVjdHVyZSB0aGUgYFRlbXBsYXRlYCBpcyksIHN0YXJ0aW5nXG4gICAqIGF0IDEuXG4gICAqL1xuICBzdGF0aWMgYXBwbHkodGVtcGxhdGU6IE5vZGVbXSwgc2NvcGU6IFNjb3BlKToge1xuICAgIGV4cHJlc3Npb25zOiBNYXA8QVNULCBSZWZlcmVuY2V8VmFyaWFibGU+LFxuICAgIHN5bWJvbHM6IE1hcDxWYXJpYWJsZXxSZWZlcmVuY2UsIFRlbXBsYXRlPixcbiAgICBuZXN0aW5nTGV2ZWw6IE1hcDxUZW1wbGF0ZSwgbnVtYmVyPixcbiAgICB1c2VkUGlwZXM6IFNldDxzdHJpbmc+LFxuICB9IHtcbiAgICBjb25zdCBleHByZXNzaW9ucyA9IG5ldyBNYXA8QVNULCBSZWZlcmVuY2V8VmFyaWFibGU+KCk7XG4gICAgY29uc3Qgc3ltYm9scyA9IG5ldyBNYXA8VmFyaWFibGV8UmVmZXJlbmNlLCBUZW1wbGF0ZT4oKTtcbiAgICBjb25zdCBuZXN0aW5nTGV2ZWwgPSBuZXcgTWFwPFRlbXBsYXRlLCBudW1iZXI+KCk7XG4gICAgY29uc3QgdXNlZFBpcGVzID0gbmV3IFNldDxzdHJpbmc+KCk7XG4gICAgLy8gVGhlIHRvcC1sZXZlbCB0ZW1wbGF0ZSBoYXMgbmVzdGluZyBsZXZlbCAwLlxuICAgIGNvbnN0IGJpbmRlciA9IG5ldyBUZW1wbGF0ZUJpbmRlcihcbiAgICAgICAgZXhwcmVzc2lvbnMsIHN5bWJvbHMsIHVzZWRQaXBlcywgbmVzdGluZ0xldmVsLCBzY29wZSxcbiAgICAgICAgdGVtcGxhdGUgaW5zdGFuY2VvZiBUZW1wbGF0ZSA/IHRlbXBsYXRlIDogbnVsbCwgMCk7XG4gICAgYmluZGVyLmluZ2VzdCh0ZW1wbGF0ZSk7XG4gICAgcmV0dXJuIHtleHByZXNzaW9ucywgc3ltYm9scywgbmVzdGluZ0xldmVsLCB1c2VkUGlwZXN9O1xuICB9XG5cbiAgcHJpdmF0ZSBpbmdlc3QodGVtcGxhdGU6IFRlbXBsYXRlfE5vZGVbXSk6IHZvaWQge1xuICAgIGlmICh0ZW1wbGF0ZSBpbnN0YW5jZW9mIFRlbXBsYXRlKSB7XG4gICAgICAvLyBGb3IgPG5nLXRlbXBsYXRlPnMsIHByb2Nlc3Mgb25seSB2YXJpYWJsZXMgYW5kIGNoaWxkIG5vZGVzLiBJbnB1dHMsIG91dHB1dHMsIHRlbXBsYXRlQXR0cnMsXG4gICAgICAvLyBhbmQgcmVmZXJlbmNlcyB3ZXJlIGFsbCBwcm9jZXNzZWQgaW4gdGhlIHNjb3BlIG9mIHRoZSBjb250YWluaW5nIHRlbXBsYXRlLlxuICAgICAgdGVtcGxhdGUudmFyaWFibGVzLmZvckVhY2godGhpcy52aXNpdE5vZGUpO1xuICAgICAgdGVtcGxhdGUuY2hpbGRyZW4uZm9yRWFjaCh0aGlzLnZpc2l0Tm9kZSk7XG5cbiAgICAgIC8vIFNldCB0aGUgbmVzdGluZyBsZXZlbC5cbiAgICAgIHRoaXMubmVzdGluZ0xldmVsLnNldCh0ZW1wbGF0ZSwgdGhpcy5sZXZlbCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIFZpc2l0IGVhY2ggbm9kZSBmcm9tIHRoZSB0b3AtbGV2ZWwgdGVtcGxhdGUuXG4gICAgICB0ZW1wbGF0ZS5mb3JFYWNoKHRoaXMudmlzaXROb2RlKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdEVsZW1lbnQoZWxlbWVudDogRWxlbWVudCkge1xuICAgIC8vIFZpc2l0IHRoZSBpbnB1dHMsIG91dHB1dHMsIGFuZCBjaGlsZHJlbiBvZiB0aGUgZWxlbWVudC5cbiAgICBlbGVtZW50LmlucHV0cy5mb3JFYWNoKHRoaXMudmlzaXROb2RlKTtcbiAgICBlbGVtZW50Lm91dHB1dHMuZm9yRWFjaCh0aGlzLnZpc2l0Tm9kZSk7XG4gICAgZWxlbWVudC5jaGlsZHJlbi5mb3JFYWNoKHRoaXMudmlzaXROb2RlKTtcbiAgfVxuXG4gIHZpc2l0VGVtcGxhdGUodGVtcGxhdGU6IFRlbXBsYXRlKSB7XG4gICAgLy8gRmlyc3QsIHZpc2l0IGlucHV0cywgb3V0cHV0cyBhbmQgdGVtcGxhdGUgYXR0cmlidXRlcyBvZiB0aGUgdGVtcGxhdGUgbm9kZS5cbiAgICB0ZW1wbGF0ZS5pbnB1dHMuZm9yRWFjaCh0aGlzLnZpc2l0Tm9kZSk7XG4gICAgdGVtcGxhdGUub3V0cHV0cy5mb3JFYWNoKHRoaXMudmlzaXROb2RlKTtcbiAgICB0ZW1wbGF0ZS50ZW1wbGF0ZUF0dHJzLmZvckVhY2godGhpcy52aXNpdE5vZGUpO1xuXG4gICAgLy8gUmVmZXJlbmNlcyBhcmUgYWxzbyBldmFsdWF0ZWQgaW4gdGhlIG91dGVyIGNvbnRleHQuXG4gICAgdGVtcGxhdGUucmVmZXJlbmNlcy5mb3JFYWNoKHRoaXMudmlzaXROb2RlKTtcblxuICAgIC8vIE5leHQsIHJlY3Vyc2UgaW50byB0aGUgdGVtcGxhdGUgdXNpbmcgaXRzIHNjb3BlLCBhbmQgYnVtcGluZyB0aGUgbmVzdGluZyBsZXZlbCB1cCBieSBvbmUuXG4gICAgY29uc3QgY2hpbGRTY29wZSA9IHRoaXMuc2NvcGUuZ2V0Q2hpbGRTY29wZSh0ZW1wbGF0ZSk7XG4gICAgY29uc3QgYmluZGVyID0gbmV3IFRlbXBsYXRlQmluZGVyKFxuICAgICAgICB0aGlzLmJpbmRpbmdzLCB0aGlzLnN5bWJvbHMsIHRoaXMudXNlZFBpcGVzLCB0aGlzLm5lc3RpbmdMZXZlbCwgY2hpbGRTY29wZSwgdGVtcGxhdGUsXG4gICAgICAgIHRoaXMubGV2ZWwgKyAxKTtcbiAgICBiaW5kZXIuaW5nZXN0KHRlbXBsYXRlKTtcbiAgfVxuXG4gIHZpc2l0VmFyaWFibGUodmFyaWFibGU6IFZhcmlhYmxlKSB7XG4gICAgLy8gUmVnaXN0ZXIgdGhlIGBWYXJpYWJsZWAgYXMgYSBzeW1ib2wgaW4gdGhlIGN1cnJlbnQgYFRlbXBsYXRlYC5cbiAgICBpZiAodGhpcy50ZW1wbGF0ZSAhPT0gbnVsbCkge1xuICAgICAgdGhpcy5zeW1ib2xzLnNldCh2YXJpYWJsZSwgdGhpcy50ZW1wbGF0ZSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRSZWZlcmVuY2UocmVmZXJlbmNlOiBSZWZlcmVuY2UpIHtcbiAgICAvLyBSZWdpc3RlciB0aGUgYFJlZmVyZW5jZWAgYXMgYSBzeW1ib2wgaW4gdGhlIGN1cnJlbnQgYFRlbXBsYXRlYC5cbiAgICBpZiAodGhpcy50ZW1wbGF0ZSAhPT0gbnVsbCkge1xuICAgICAgdGhpcy5zeW1ib2xzLnNldChyZWZlcmVuY2UsIHRoaXMudGVtcGxhdGUpO1xuICAgIH1cbiAgfVxuXG4gIC8vIFVudXNlZCB0ZW1wbGF0ZSB2aXNpdG9yc1xuXG4gIHZpc2l0VGV4dCh0ZXh0OiBUZXh0KSB7fVxuICB2aXNpdENvbnRlbnQoY29udGVudDogQ29udGVudCkge31cbiAgdmlzaXRUZXh0QXR0cmlidXRlKGF0dHJpYnV0ZTogVGV4dEF0dHJpYnV0ZSkge31cbiAgdmlzaXRJY3UoaWN1OiBJY3UpOiB2b2lkIHt9XG5cbiAgLy8gVGhlIHJlbWFpbmluZyB2aXNpdG9ycyBhcmUgY29uY2VybmVkIHdpdGggcHJvY2Vzc2luZyBBU1QgZXhwcmVzc2lvbnMgd2l0aGluIHRlbXBsYXRlIGJpbmRpbmdzXG5cbiAgdmlzaXRCb3VuZEF0dHJpYnV0ZShhdHRyaWJ1dGU6IEJvdW5kQXR0cmlidXRlKSB7XG4gICAgYXR0cmlidXRlLnZhbHVlLnZpc2l0KHRoaXMpO1xuICB9XG5cbiAgdmlzaXRCb3VuZEV2ZW50KGV2ZW50OiBCb3VuZEV2ZW50KSB7XG4gICAgZXZlbnQuaGFuZGxlci52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0Qm91bmRUZXh0KHRleHQ6IEJvdW5kVGV4dCkge1xuICAgIHRleHQudmFsdWUudmlzaXQodGhpcyk7XG4gIH1cbiAgdmlzaXRQaXBlKGFzdDogQmluZGluZ1BpcGUsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgdGhpcy51c2VkUGlwZXMuYWRkKGFzdC5uYW1lKTtcbiAgICByZXR1cm4gc3VwZXIudmlzaXRQaXBlKGFzdCwgY29udGV4dCk7XG4gIH1cblxuICAvLyBUaGVzZSBmaXZlIHR5cGVzIG9mIEFTVCBleHByZXNzaW9ucyBjYW4gcmVmZXIgdG8gZXhwcmVzc2lvbiByb290cywgd2hpY2ggY291bGQgYmUgdmFyaWFibGVzXG4gIC8vIG9yIHJlZmVyZW5jZXMgaW4gdGhlIGN1cnJlbnQgc2NvcGUuXG5cbiAgdmlzaXRQcm9wZXJ0eVJlYWQoYXN0OiBQcm9wZXJ0eVJlYWQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgdGhpcy5tYXliZU1hcChjb250ZXh0LCBhc3QsIGFzdC5uYW1lKTtcbiAgICByZXR1cm4gc3VwZXIudmlzaXRQcm9wZXJ0eVJlYWQoYXN0LCBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0U2FmZVByb3BlcnR5UmVhZChhc3Q6IFNhZmVQcm9wZXJ0eVJlYWQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgdGhpcy5tYXliZU1hcChjb250ZXh0LCBhc3QsIGFzdC5uYW1lKTtcbiAgICByZXR1cm4gc3VwZXIudmlzaXRTYWZlUHJvcGVydHlSZWFkKGFzdCwgY29udGV4dCk7XG4gIH1cblxuICB2aXNpdFByb3BlcnR5V3JpdGUoYXN0OiBQcm9wZXJ0eVdyaXRlLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHRoaXMubWF5YmVNYXAoY29udGV4dCwgYXN0LCBhc3QubmFtZSk7XG4gICAgcmV0dXJuIHN1cGVyLnZpc2l0UHJvcGVydHlXcml0ZShhc3QsIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRNZXRob2RDYWxsKGFzdDogTWV0aG9kQ2FsbCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICB0aGlzLm1heWJlTWFwKGNvbnRleHQsIGFzdCwgYXN0Lm5hbWUpO1xuICAgIHJldHVybiBzdXBlci52aXNpdE1ldGhvZENhbGwoYXN0LCBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0U2FmZU1ldGhvZENhbGwoYXN0OiBTYWZlTWV0aG9kQ2FsbCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICB0aGlzLm1heWJlTWFwKGNvbnRleHQsIGFzdCwgYXN0Lm5hbWUpO1xuICAgIHJldHVybiBzdXBlci52aXNpdFNhZmVNZXRob2RDYWxsKGFzdCwgY29udGV4dCk7XG4gIH1cblxuICBwcml2YXRlIG1heWJlTWFwKFxuICAgICAgc2NvcGU6IFNjb3BlLCBhc3Q6IFByb3BlcnR5UmVhZHxTYWZlUHJvcGVydHlSZWFkfFByb3BlcnR5V3JpdGV8TWV0aG9kQ2FsbHxTYWZlTWV0aG9kQ2FsbCxcbiAgICAgIG5hbWU6IHN0cmluZyk6IHZvaWQge1xuICAgIC8vIElmIHRoZSByZWNlaXZlciBvZiB0aGUgZXhwcmVzc2lvbiBpc24ndCB0aGUgYEltcGxpY2l0UmVjZWl2ZXJgLCB0aGlzIGlzbid0IHRoZSByb290IG9mIGFuXG4gICAgLy8gYEFTVGAgZXhwcmVzc2lvbiB0aGF0IG1hcHMgdG8gYSBgVmFyaWFibGVgIG9yIGBSZWZlcmVuY2VgLlxuICAgIGlmICghKGFzdC5yZWNlaXZlciBpbnN0YW5jZW9mIEltcGxpY2l0UmVjZWl2ZXIpKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgLy8gQ2hlY2sgd2hldGhlciB0aGUgbmFtZSBleGlzdHMgaW4gdGhlIGN1cnJlbnQgc2NvcGUuIElmIHNvLCBtYXAgaXQuIE90aGVyd2lzZSwgdGhlIG5hbWUgaXNcbiAgICAvLyBwcm9iYWJseSBhIHByb3BlcnR5IG9uIHRoZSB0b3AtbGV2ZWwgY29tcG9uZW50IGNvbnRleHQuXG4gICAgbGV0IHRhcmdldCA9IHRoaXMuc2NvcGUubG9va3VwKG5hbWUpO1xuICAgIGlmICh0YXJnZXQgIT09IG51bGwpIHtcbiAgICAgIHRoaXMuYmluZGluZ3Muc2V0KGFzdCwgdGFyZ2V0KTtcbiAgICB9XG4gIH1cbn1cblxuLyoqXG4gKiBNZXRhZGF0YSBjb250YWluZXIgZm9yIGEgYFRhcmdldGAgdGhhdCBhbGxvd3MgcXVlcmllcyBmb3Igc3BlY2lmaWMgYml0cyBvZiBtZXRhZGF0YS5cbiAqXG4gKiBTZWUgYEJvdW5kVGFyZ2V0YCBmb3IgZG9jdW1lbnRhdGlvbiBvbiB0aGUgaW5kaXZpZHVhbCBtZXRob2RzLlxuICovXG5leHBvcnQgY2xhc3MgUjNCb3VuZFRhcmdldDxEaXJlY3RpdmVUIGV4dGVuZHMgRGlyZWN0aXZlTWV0YT4gaW1wbGVtZW50cyBCb3VuZFRhcmdldDxEaXJlY3RpdmVUPiB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcmVhZG9ubHkgdGFyZ2V0OiBUYXJnZXQsIHByaXZhdGUgZGlyZWN0aXZlczogTWFwPEVsZW1lbnR8VGVtcGxhdGUsIERpcmVjdGl2ZVRbXT4sXG4gICAgICBwcml2YXRlIGJpbmRpbmdzOiBNYXA8Qm91bmRBdHRyaWJ1dGV8Qm91bmRFdmVudHxUZXh0QXR0cmlidXRlLCBEaXJlY3RpdmVUfEVsZW1lbnR8VGVtcGxhdGU+LFxuICAgICAgcHJpdmF0ZSByZWZlcmVuY2VzOlxuICAgICAgICAgIE1hcDxCb3VuZEF0dHJpYnV0ZXxCb3VuZEV2ZW50fFJlZmVyZW5jZXxUZXh0QXR0cmlidXRlLFxuICAgICAgICAgICAgICB7ZGlyZWN0aXZlOiBEaXJlY3RpdmVULCBub2RlOiBFbGVtZW50fFRlbXBsYXRlfXxFbGVtZW50fFRlbXBsYXRlPixcbiAgICAgIHByaXZhdGUgZXhwclRhcmdldHM6IE1hcDxBU1QsIFJlZmVyZW5jZXxWYXJpYWJsZT4sXG4gICAgICBwcml2YXRlIHN5bWJvbHM6IE1hcDxSZWZlcmVuY2V8VmFyaWFibGUsIFRlbXBsYXRlPixcbiAgICAgIHByaXZhdGUgbmVzdGluZ0xldmVsOiBNYXA8VGVtcGxhdGUsIG51bWJlcj4sIHByaXZhdGUgdXNlZFBpcGVzOiBTZXQ8c3RyaW5nPikge31cblxuICBnZXREaXJlY3RpdmVzT2ZOb2RlKG5vZGU6IEVsZW1lbnR8VGVtcGxhdGUpOiBEaXJlY3RpdmVUW118bnVsbCB7XG4gICAgcmV0dXJuIHRoaXMuZGlyZWN0aXZlcy5nZXQobm9kZSkgfHwgbnVsbDtcbiAgfVxuXG4gIGdldFJlZmVyZW5jZVRhcmdldChyZWY6IFJlZmVyZW5jZSk6IHtkaXJlY3RpdmU6IERpcmVjdGl2ZVQsIG5vZGU6IEVsZW1lbnR8VGVtcGxhdGV9fEVsZW1lbnRcbiAgICAgIHxUZW1wbGF0ZXxudWxsIHtcbiAgICByZXR1cm4gdGhpcy5yZWZlcmVuY2VzLmdldChyZWYpIHx8IG51bGw7XG4gIH1cblxuICBnZXRDb25zdW1lck9mQmluZGluZyhiaW5kaW5nOiBCb3VuZEF0dHJpYnV0ZXxCb3VuZEV2ZW50fFRleHRBdHRyaWJ1dGUpOiBEaXJlY3RpdmVUfEVsZW1lbnRcbiAgICAgIHxUZW1wbGF0ZXxudWxsIHtcbiAgICByZXR1cm4gdGhpcy5iaW5kaW5ncy5nZXQoYmluZGluZykgfHwgbnVsbDtcbiAgfVxuXG4gIGdldEV4cHJlc3Npb25UYXJnZXQoZXhwcjogQVNUKTogUmVmZXJlbmNlfFZhcmlhYmxlfG51bGwge1xuICAgIHJldHVybiB0aGlzLmV4cHJUYXJnZXRzLmdldChleHByKSB8fCBudWxsO1xuICB9XG5cbiAgZ2V0VGVtcGxhdGVPZlN5bWJvbChzeW1ib2w6IFJlZmVyZW5jZXxWYXJpYWJsZSk6IFRlbXBsYXRlfG51bGwge1xuICAgIHJldHVybiB0aGlzLnN5bWJvbHMuZ2V0KHN5bWJvbCkgfHwgbnVsbDtcbiAgfVxuXG4gIGdldE5lc3RpbmdMZXZlbCh0ZW1wbGF0ZTogVGVtcGxhdGUpOiBudW1iZXIge1xuICAgIHJldHVybiB0aGlzLm5lc3RpbmdMZXZlbC5nZXQodGVtcGxhdGUpIHx8IDA7XG4gIH1cblxuICBnZXRVc2VkRGlyZWN0aXZlcygpOiBEaXJlY3RpdmVUW10ge1xuICAgIGNvbnN0IHNldCA9IG5ldyBTZXQ8RGlyZWN0aXZlVD4oKTtcbiAgICB0aGlzLmRpcmVjdGl2ZXMuZm9yRWFjaChkaXJzID0+IGRpcnMuZm9yRWFjaChkaXIgPT4gc2V0LmFkZChkaXIpKSk7XG4gICAgcmV0dXJuIEFycmF5LmZyb20oc2V0LnZhbHVlcygpKTtcbiAgfVxuXG4gIGdldFVzZWRQaXBlcygpOiBzdHJpbmdbXSB7XG4gICAgcmV0dXJuIEFycmF5LmZyb20odGhpcy51c2VkUGlwZXMpO1xuICB9XG59XG4iXX0=