/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/interfaces/renderer.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/**
 * The goal here is to make sure that the browser DOM API is the Renderer.
 * We do this by defining a subset of DOM API to be the renderer and then
 * use that at runtime for rendering.
 *
 * At runtime we can then use the DOM api directly, in server or web-worker
 * it will be easy to implement such API.
 */
import { getDocument } from './document';
/** @enum {number} */
const RendererStyleFlags3 = {
    Important: 1,
    DashCase: 2,
};
export { RendererStyleFlags3 };
RendererStyleFlags3[RendererStyleFlags3.Important] = 'Important';
RendererStyleFlags3[RendererStyleFlags3.DashCase] = 'DashCase';
/**
 * Object Oriented style of API needed to create elements and text nodes.
 *
 * This is the native browser API style, e.g. operations are methods on individual objects
 * like HTMLElement. With this style, no additional code is needed as a facade
 * (reducing payload size).
 *
 * @record
 */
export function ObjectOrientedRenderer3() { }
if (false) {
    /**
     * @param {?} data
     * @return {?}
     */
    ObjectOrientedRenderer3.prototype.createComment = function (data) { };
    /**
     * @param {?} tagName
     * @return {?}
     */
    ObjectOrientedRenderer3.prototype.createElement = function (tagName) { };
    /**
     * @param {?} namespace
     * @param {?} tagName
     * @return {?}
     */
    ObjectOrientedRenderer3.prototype.createElementNS = function (namespace, tagName) { };
    /**
     * @param {?} data
     * @return {?}
     */
    ObjectOrientedRenderer3.prototype.createTextNode = function (data) { };
    /**
     * @param {?} selectors
     * @return {?}
     */
    ObjectOrientedRenderer3.prototype.querySelector = function (selectors) { };
}
/**
 * Returns whether the `renderer` is a `ProceduralRenderer3`
 * @param {?} renderer
 * @return {?}
 */
export function isProceduralRenderer(renderer) {
    return !!(((/** @type {?} */ (renderer))).listen);
}
/**
 * Procedural style of API needed to create elements and text nodes.
 *
 * In non-native browser environments (e.g. platforms such as web-workers), this is the
 * facade that enables element manipulation. This also facilitates backwards compatibility
 * with Renderer2.
 * @record
 */
export function ProceduralRenderer3() { }
if (false) {
    /**
     * This property is allowed to be null / undefined,
     * in which case the view engine won't call it.
     * This is used as a performance optimization for production mode.
     * @type {?|undefined}
     */
    ProceduralRenderer3.prototype.destroyNode;
    /**
     * @return {?}
     */
    ProceduralRenderer3.prototype.destroy = function () { };
    /**
     * @param {?} value
     * @return {?}
     */
    ProceduralRenderer3.prototype.createComment = function (value) { };
    /**
     * @param {?} name
     * @param {?=} namespace
     * @return {?}
     */
    ProceduralRenderer3.prototype.createElement = function (name, namespace) { };
    /**
     * @param {?} value
     * @return {?}
     */
    ProceduralRenderer3.prototype.createText = function (value) { };
    /**
     * @param {?} parent
     * @param {?} newChild
     * @return {?}
     */
    ProceduralRenderer3.prototype.appendChild = function (parent, newChild) { };
    /**
     * @param {?} parent
     * @param {?} newChild
     * @param {?} refChild
     * @return {?}
     */
    ProceduralRenderer3.prototype.insertBefore = function (parent, newChild, refChild) { };
    /**
     * @param {?} parent
     * @param {?} oldChild
     * @param {?=} isHostElement
     * @return {?}
     */
    ProceduralRenderer3.prototype.removeChild = function (parent, oldChild, isHostElement) { };
    /**
     * @param {?} selectorOrNode
     * @param {?=} preserveContent
     * @return {?}
     */
    ProceduralRenderer3.prototype.selectRootElement = function (selectorOrNode, preserveContent) { };
    /**
     * @param {?} node
     * @return {?}
     */
    ProceduralRenderer3.prototype.parentNode = function (node) { };
    /**
     * @param {?} node
     * @return {?}
     */
    ProceduralRenderer3.prototype.nextSibling = function (node) { };
    /**
     * @param {?} el
     * @param {?} name
     * @param {?} value
     * @param {?=} namespace
     * @return {?}
     */
    ProceduralRenderer3.prototype.setAttribute = function (el, name, value, namespace) { };
    /**
     * @param {?} el
     * @param {?} name
     * @param {?=} namespace
     * @return {?}
     */
    ProceduralRenderer3.prototype.removeAttribute = function (el, name, namespace) { };
    /**
     * @param {?} el
     * @param {?} name
     * @return {?}
     */
    ProceduralRenderer3.prototype.addClass = function (el, name) { };
    /**
     * @param {?} el
     * @param {?} name
     * @return {?}
     */
    ProceduralRenderer3.prototype.removeClass = function (el, name) { };
    /**
     * @param {?} el
     * @param {?} style
     * @param {?} value
     * @param {?=} flags
     * @return {?}
     */
    ProceduralRenderer3.prototype.setStyle = function (el, style, value, flags) { };
    /**
     * @param {?} el
     * @param {?} style
     * @param {?=} flags
     * @return {?}
     */
    ProceduralRenderer3.prototype.removeStyle = function (el, style, flags) { };
    /**
     * @param {?} el
     * @param {?} name
     * @param {?} value
     * @return {?}
     */
    ProceduralRenderer3.prototype.setProperty = function (el, name, value) { };
    /**
     * @param {?} node
     * @param {?} value
     * @return {?}
     */
    ProceduralRenderer3.prototype.setValue = function (node, value) { };
    /**
     * @param {?} target
     * @param {?} eventName
     * @param {?} callback
     * @return {?}
     */
    ProceduralRenderer3.prototype.listen = function (target, eventName, callback) { };
}
/**
 * @record
 */
export function RendererFactory3() { }
if (false) {
    /**
     * @param {?} hostElement
     * @param {?} rendererType
     * @return {?}
     */
    RendererFactory3.prototype.createRenderer = function (hostElement, rendererType) { };
    /**
     * @return {?}
     */
    RendererFactory3.prototype.begin = function () { };
    /**
     * @return {?}
     */
    RendererFactory3.prototype.end = function () { };
}
const ɵ0 = /**
 * @param {?} hostElement
 * @param {?} rendererType
 * @return {?}
 */
(hostElement, rendererType) => { return getDocument(); };
/** @type {?} */
export const domRendererFactory3 = {
    createRenderer: (ɵ0)
};
/**
 * Subset of API needed for appending elements and text nodes.
 * @record
 */
export function RNode() { }
if (false) {
    /**
     * Returns the parent Element, Document, or DocumentFragment
     * @type {?}
     */
    RNode.prototype.parentNode;
    /**
     * Returns the parent Element if there is one
     * @type {?}
     */
    RNode.prototype.parentElement;
    /**
     * Gets the Node immediately following this one in the parent's childNodes
     * @type {?}
     */
    RNode.prototype.nextSibling;
    /**
     * Removes a child from the current node and returns the removed node
     * @param {?} oldChild the child node to remove
     * @return {?}
     */
    RNode.prototype.removeChild = function (oldChild) { };
    /**
     * Insert a child node.
     *
     * Used exclusively for adding View root nodes into ViewAnchor location.
     * @param {?} newChild
     * @param {?} refChild
     * @param {?} isViewRoot
     * @return {?}
     */
    RNode.prototype.insertBefore = function (newChild, refChild, isViewRoot) { };
    /**
     * Append a child node.
     *
     * Used exclusively for building up DOM which are static (ie not View roots)
     * @param {?} newChild
     * @return {?}
     */
    RNode.prototype.appendChild = function (newChild) { };
}
/**
 * Subset of API needed for writing attributes, properties, and setting up
 * listeners on Element.
 * @record
 */
export function RElement() { }
if (false) {
    /** @type {?} */
    RElement.prototype.style;
    /** @type {?} */
    RElement.prototype.classList;
    /** @type {?} */
    RElement.prototype.className;
    /** @type {?} */
    RElement.prototype.textContent;
    /**
     * @param {?} name
     * @param {?} value
     * @return {?}
     */
    RElement.prototype.setAttribute = function (name, value) { };
    /**
     * @param {?} name
     * @return {?}
     */
    RElement.prototype.removeAttribute = function (name) { };
    /**
     * @param {?} namespaceURI
     * @param {?} qualifiedName
     * @param {?} value
     * @return {?}
     */
    RElement.prototype.setAttributeNS = function (namespaceURI, qualifiedName, value) { };
    /**
     * @param {?} type
     * @param {?} listener
     * @param {?=} useCapture
     * @return {?}
     */
    RElement.prototype.addEventListener = function (type, listener, useCapture) { };
    /**
     * @param {?} type
     * @param {?=} listener
     * @param {?=} options
     * @return {?}
     */
    RElement.prototype.removeEventListener = function (type, listener, options) { };
    /**
     * @param {?} name
     * @param {?} value
     * @return {?}
     */
    RElement.prototype.setProperty = function (name, value) { };
}
/**
 * @record
 */
export function RCssStyleDeclaration() { }
if (false) {
    /**
     * @param {?} propertyName
     * @return {?}
     */
    RCssStyleDeclaration.prototype.removeProperty = function (propertyName) { };
    /**
     * @param {?} propertyName
     * @param {?} value
     * @param {?=} priority
     * @return {?}
     */
    RCssStyleDeclaration.prototype.setProperty = function (propertyName, value, priority) { };
}
/**
 * @record
 */
export function RDomTokenList() { }
if (false) {
    /**
     * @param {?} token
     * @return {?}
     */
    RDomTokenList.prototype.add = function (token) { };
    /**
     * @param {?} token
     * @return {?}
     */
    RDomTokenList.prototype.remove = function (token) { };
}
/**
 * @record
 */
export function RText() { }
if (false) {
    /** @type {?} */
    RText.prototype.textContent;
}
/**
 * @record
 */
export function RComment() { }
if (false) {
    /** @type {?} */
    RComment.prototype.textContent;
}
// Note: This hack is necessary so we don't erroneously get a circular dependency
// failure based on types.
/** @type {?} */
export const unusedValueExportToPlacateAjd = 1;
export { ɵ0 };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicmVuZGVyZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL2ludGVyZmFjZXMvcmVuZGVyZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFrQkEsT0FBTyxFQUFDLFdBQVcsRUFBQyxNQUFNLFlBQVksQ0FBQzs7QUFHdkMsTUFBWSxtQkFBbUI7SUFDN0IsU0FBUyxHQUFTO0lBQ2xCLFFBQVEsR0FBUztFQUNsQjs7Ozs7Ozs7Ozs7OztBQWlCRCw2Q0FPQzs7Ozs7O0lBTkMsc0VBQXNDOzs7OztJQUN0Qyx5RUFBeUM7Ozs7OztJQUN6QyxzRkFBOEQ7Ozs7O0lBQzlELHVFQUFvQzs7Ozs7SUFFcEMsMkVBQWdEOzs7Ozs7O0FBSWxELE1BQU0sVUFBVSxvQkFBb0IsQ0FBQyxRQUF1RDtJQUUxRixPQUFPLENBQUMsQ0FBQyxDQUFDLENBQUMsbUJBQUEsUUFBUSxFQUFPLENBQUMsQ0FBQyxNQUFNLENBQUMsQ0FBQztBQUN0QyxDQUFDOzs7Ozs7Ozs7QUFTRCx5Q0FrQ0M7Ozs7Ozs7O0lBeEJDLDBDQUEyQzs7OztJQVQzQyx3REFBZ0I7Ozs7O0lBQ2hCLG1FQUF1Qzs7Ozs7O0lBQ3ZDLDZFQUErRDs7Ozs7SUFDL0QsZ0VBQWlDOzs7Ozs7SUFPakMsNEVBQXFEOzs7Ozs7O0lBQ3JELHVGQUF5RTs7Ozs7OztJQUN6RSwyRkFBOEU7Ozs7OztJQUM5RSxpR0FBbUY7Ozs7O0lBRW5GLCtEQUF1Qzs7Ozs7SUFDdkMsZ0VBQXFDOzs7Ozs7OztJQUVyQyx1RkFBdUY7Ozs7Ozs7SUFDdkYsbUZBQTJFOzs7Ozs7SUFDM0UsaUVBQTJDOzs7Ozs7SUFDM0Msb0VBQThDOzs7Ozs7OztJQUM5QyxnRkFFMkQ7Ozs7Ozs7SUFDM0QsNEVBQWdHOzs7Ozs7O0lBQ2hHLDJFQUEwRDs7Ozs7O0lBQzFELG9FQUFvRDs7Ozs7OztJQUdwRCxrRkFFMEQ7Ozs7O0FBRzVELHNDQUlDOzs7Ozs7O0lBSEMscUZBQXdGOzs7O0lBQ3hGLG1EQUFlOzs7O0lBQ2YsaURBQWE7Ozs7Ozs7QUFJRyxDQUFDLFdBQTRCLEVBQUUsWUFBa0MsRUFDbkQsRUFBRSxHQUFHLE9BQU8sV0FBVyxFQUFFLENBQUMsQ0FBQSxDQUFDOztBQUYzRCxNQUFNLE9BQU8sbUJBQW1CLEdBQXFCO0lBQ25ELGNBQWMsTUFDMkM7Q0FDMUQ7Ozs7O0FBR0QsMkJBb0NDOzs7Ozs7SUFoQ0MsMkJBQXVCOzs7OztJQU12Qiw4QkFBNkI7Ozs7O0lBSzdCLDRCQUF3Qjs7Ozs7O0lBTXhCLHNEQUFvQzs7Ozs7Ozs7OztJQU9wQyw2RUFBK0U7Ozs7Ozs7O0lBTy9FLHNEQUFvQzs7Ozs7OztBQU90Qyw4QkFZQzs7O0lBWEMseUJBQTRCOztJQUM1Qiw2QkFBeUI7O0lBQ3pCLDZCQUFrQjs7SUFDbEIsK0JBQXlCOzs7Ozs7SUFDekIsNkRBQWdEOzs7OztJQUNoRCx5REFBb0M7Ozs7Ozs7SUFDcEMsc0ZBQWlGOzs7Ozs7O0lBQ2pGLGdGQUFvRjs7Ozs7OztJQUNwRixnRkFBcUY7Ozs7OztJQUVyRiw0REFBNkM7Ozs7O0FBRy9DLDBDQUdDOzs7Ozs7SUFGQyw0RUFBNkM7Ozs7Ozs7SUFDN0MsMEZBQStFOzs7OztBQUdqRixtQ0FHQzs7Ozs7O0lBRkMsbURBQXlCOzs7OztJQUN6QixzREFBNEI7Ozs7O0FBRzlCLDJCQUFrRTs7O0lBQTNCLDRCQUF5Qjs7Ozs7QUFFaEUsOEJBQXFFOzs7SUFBM0IsK0JBQXlCOzs7OztBQUluRSxNQUFNLE9BQU8sNkJBQTZCLEdBQUcsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuLyoqXG4gKiBUaGUgZ29hbCBoZXJlIGlzIHRvIG1ha2Ugc3VyZSB0aGF0IHRoZSBicm93c2VyIERPTSBBUEkgaXMgdGhlIFJlbmRlcmVyLlxuICogV2UgZG8gdGhpcyBieSBkZWZpbmluZyBhIHN1YnNldCBvZiBET00gQVBJIHRvIGJlIHRoZSByZW5kZXJlciBhbmQgdGhlblxuICogdXNlIHRoYXQgYXQgcnVudGltZSBmb3IgcmVuZGVyaW5nLlxuICpcbiAqIEF0IHJ1bnRpbWUgd2UgY2FuIHRoZW4gdXNlIHRoZSBET00gYXBpIGRpcmVjdGx5LCBpbiBzZXJ2ZXIgb3Igd2ViLXdvcmtlclxuICogaXQgd2lsbCBiZSBlYXN5IHRvIGltcGxlbWVudCBzdWNoIEFQSS5cbiAqL1xuXG5pbXBvcnQge1JlbmRlcmVyU3R5bGVGbGFnczIsIFJlbmRlcmVyVHlwZTJ9IGZyb20gJy4uLy4uL3JlbmRlci9hcGknO1xuaW1wb3J0IHtnZXREb2N1bWVudH0gZnJvbSAnLi9kb2N1bWVudCc7XG5cbi8vIFRPRE86IGNsZWFudXAgb25jZSB0aGUgY29kZSBpcyBtZXJnZWQgaW4gYW5ndWxhci9hbmd1bGFyXG5leHBvcnQgZW51bSBSZW5kZXJlclN0eWxlRmxhZ3MzIHtcbiAgSW1wb3J0YW50ID0gMSA8PCAwLFxuICBEYXNoQ2FzZSA9IDEgPDwgMVxufVxuXG5leHBvcnQgdHlwZSBSZW5kZXJlcjMgPSBPYmplY3RPcmllbnRlZFJlbmRlcmVyMyB8IFByb2NlZHVyYWxSZW5kZXJlcjM7XG5cbmV4cG9ydCB0eXBlIEdsb2JhbFRhcmdldE5hbWUgPSAnZG9jdW1lbnQnIHwgJ3dpbmRvdycgfCAnYm9keSc7XG5cbmV4cG9ydCB0eXBlIEdsb2JhbFRhcmdldFJlc29sdmVyID0gKGVsZW1lbnQ6IGFueSkgPT4ge1xuICBuYW1lOiBHbG9iYWxUYXJnZXROYW1lLCB0YXJnZXQ6IEV2ZW50VGFyZ2V0XG59O1xuXG4vKipcbiAqIE9iamVjdCBPcmllbnRlZCBzdHlsZSBvZiBBUEkgbmVlZGVkIHRvIGNyZWF0ZSBlbGVtZW50cyBhbmQgdGV4dCBub2Rlcy5cbiAqXG4gKiBUaGlzIGlzIHRoZSBuYXRpdmUgYnJvd3NlciBBUEkgc3R5bGUsIGUuZy4gb3BlcmF0aW9ucyBhcmUgbWV0aG9kcyBvbiBpbmRpdmlkdWFsIG9iamVjdHNcbiAqIGxpa2UgSFRNTEVsZW1lbnQuIFdpdGggdGhpcyBzdHlsZSwgbm8gYWRkaXRpb25hbCBjb2RlIGlzIG5lZWRlZCBhcyBhIGZhY2FkZVxuICogKHJlZHVjaW5nIHBheWxvYWQgc2l6ZSkuXG4gKiAqL1xuZXhwb3J0IGludGVyZmFjZSBPYmplY3RPcmllbnRlZFJlbmRlcmVyMyB7XG4gIGNyZWF0ZUNvbW1lbnQoZGF0YTogc3RyaW5nKTogUkNvbW1lbnQ7XG4gIGNyZWF0ZUVsZW1lbnQodGFnTmFtZTogc3RyaW5nKTogUkVsZW1lbnQ7XG4gIGNyZWF0ZUVsZW1lbnROUyhuYW1lc3BhY2U6IHN0cmluZywgdGFnTmFtZTogc3RyaW5nKTogUkVsZW1lbnQ7XG4gIGNyZWF0ZVRleHROb2RlKGRhdGE6IHN0cmluZyk6IFJUZXh0O1xuXG4gIHF1ZXJ5U2VsZWN0b3Ioc2VsZWN0b3JzOiBzdHJpbmcpOiBSRWxlbWVudHxudWxsO1xufVxuXG4vKiogUmV0dXJucyB3aGV0aGVyIHRoZSBgcmVuZGVyZXJgIGlzIGEgYFByb2NlZHVyYWxSZW5kZXJlcjNgICovXG5leHBvcnQgZnVuY3Rpb24gaXNQcm9jZWR1cmFsUmVuZGVyZXIocmVuZGVyZXI6IFByb2NlZHVyYWxSZW5kZXJlcjMgfCBPYmplY3RPcmllbnRlZFJlbmRlcmVyMyk6XG4gICAgcmVuZGVyZXIgaXMgUHJvY2VkdXJhbFJlbmRlcmVyMyB7XG4gIHJldHVybiAhISgocmVuZGVyZXIgYXMgYW55KS5saXN0ZW4pO1xufVxuXG4vKipcbiAqIFByb2NlZHVyYWwgc3R5bGUgb2YgQVBJIG5lZWRlZCB0byBjcmVhdGUgZWxlbWVudHMgYW5kIHRleHQgbm9kZXMuXG4gKlxuICogSW4gbm9uLW5hdGl2ZSBicm93c2VyIGVudmlyb25tZW50cyAoZS5nLiBwbGF0Zm9ybXMgc3VjaCBhcyB3ZWItd29ya2VycyksIHRoaXMgaXMgdGhlXG4gKiBmYWNhZGUgdGhhdCBlbmFibGVzIGVsZW1lbnQgbWFuaXB1bGF0aW9uLiBUaGlzIGFsc28gZmFjaWxpdGF0ZXMgYmFja3dhcmRzIGNvbXBhdGliaWxpdHlcbiAqIHdpdGggUmVuZGVyZXIyLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIFByb2NlZHVyYWxSZW5kZXJlcjMge1xuICBkZXN0cm95KCk6IHZvaWQ7XG4gIGNyZWF0ZUNvbW1lbnQodmFsdWU6IHN0cmluZyk6IFJDb21tZW50O1xuICBjcmVhdGVFbGVtZW50KG5hbWU6IHN0cmluZywgbmFtZXNwYWNlPzogc3RyaW5nfG51bGwpOiBSRWxlbWVudDtcbiAgY3JlYXRlVGV4dCh2YWx1ZTogc3RyaW5nKTogUlRleHQ7XG4gIC8qKlxuICAgKiBUaGlzIHByb3BlcnR5IGlzIGFsbG93ZWQgdG8gYmUgbnVsbCAvIHVuZGVmaW5lZCxcbiAgICogaW4gd2hpY2ggY2FzZSB0aGUgdmlldyBlbmdpbmUgd29uJ3QgY2FsbCBpdC5cbiAgICogVGhpcyBpcyB1c2VkIGFzIGEgcGVyZm9ybWFuY2Ugb3B0aW1pemF0aW9uIGZvciBwcm9kdWN0aW9uIG1vZGUuXG4gICAqL1xuICBkZXN0cm95Tm9kZT86ICgobm9kZTogUk5vZGUpID0+IHZvaWQpfG51bGw7XG4gIGFwcGVuZENoaWxkKHBhcmVudDogUkVsZW1lbnQsIG5ld0NoaWxkOiBSTm9kZSk6IHZvaWQ7XG4gIGluc2VydEJlZm9yZShwYXJlbnQ6IFJOb2RlLCBuZXdDaGlsZDogUk5vZGUsIHJlZkNoaWxkOiBSTm9kZXxudWxsKTogdm9pZDtcbiAgcmVtb3ZlQ2hpbGQocGFyZW50OiBSRWxlbWVudCwgb2xkQ2hpbGQ6IFJOb2RlLCBpc0hvc3RFbGVtZW50PzogYm9vbGVhbik6IHZvaWQ7XG4gIHNlbGVjdFJvb3RFbGVtZW50KHNlbGVjdG9yT3JOb2RlOiBzdHJpbmd8YW55LCBwcmVzZXJ2ZUNvbnRlbnQ/OiBib29sZWFuKTogUkVsZW1lbnQ7XG5cbiAgcGFyZW50Tm9kZShub2RlOiBSTm9kZSk6IFJFbGVtZW50fG51bGw7XG4gIG5leHRTaWJsaW5nKG5vZGU6IFJOb2RlKTogUk5vZGV8bnVsbDtcblxuICBzZXRBdHRyaWJ1dGUoZWw6IFJFbGVtZW50LCBuYW1lOiBzdHJpbmcsIHZhbHVlOiBzdHJpbmcsIG5hbWVzcGFjZT86IHN0cmluZ3xudWxsKTogdm9pZDtcbiAgcmVtb3ZlQXR0cmlidXRlKGVsOiBSRWxlbWVudCwgbmFtZTogc3RyaW5nLCBuYW1lc3BhY2U/OiBzdHJpbmd8bnVsbCk6IHZvaWQ7XG4gIGFkZENsYXNzKGVsOiBSRWxlbWVudCwgbmFtZTogc3RyaW5nKTogdm9pZDtcbiAgcmVtb3ZlQ2xhc3MoZWw6IFJFbGVtZW50LCBuYW1lOiBzdHJpbmcpOiB2b2lkO1xuICBzZXRTdHlsZShcbiAgICAgIGVsOiBSRWxlbWVudCwgc3R5bGU6IHN0cmluZywgdmFsdWU6IGFueSxcbiAgICAgIGZsYWdzPzogUmVuZGVyZXJTdHlsZUZsYWdzMnxSZW5kZXJlclN0eWxlRmxhZ3MzKTogdm9pZDtcbiAgcmVtb3ZlU3R5bGUoZWw6IFJFbGVtZW50LCBzdHlsZTogc3RyaW5nLCBmbGFncz86IFJlbmRlcmVyU3R5bGVGbGFnczJ8UmVuZGVyZXJTdHlsZUZsYWdzMyk6IHZvaWQ7XG4gIHNldFByb3BlcnR5KGVsOiBSRWxlbWVudCwgbmFtZTogc3RyaW5nLCB2YWx1ZTogYW55KTogdm9pZDtcbiAgc2V0VmFsdWUobm9kZTogUlRleHR8UkNvbW1lbnQsIHZhbHVlOiBzdHJpbmcpOiB2b2lkO1xuXG4gIC8vIFRPRE8obWlza28pOiBEZXByZWNhdGUgaW4gZmF2b3Igb2YgYWRkRXZlbnRMaXN0ZW5lci9yZW1vdmVFdmVudExpc3RlbmVyXG4gIGxpc3RlbihcbiAgICAgIHRhcmdldDogR2xvYmFsVGFyZ2V0TmFtZXxSTm9kZSwgZXZlbnROYW1lOiBzdHJpbmcsXG4gICAgICBjYWxsYmFjazogKGV2ZW50OiBhbnkpID0+IGJvb2xlYW4gfCB2b2lkKTogKCkgPT4gdm9pZDtcbn1cblxuZXhwb3J0IGludGVyZmFjZSBSZW5kZXJlckZhY3RvcnkzIHtcbiAgY3JlYXRlUmVuZGVyZXIoaG9zdEVsZW1lbnQ6IFJFbGVtZW50fG51bGwsIHJlbmRlcmVyVHlwZTogUmVuZGVyZXJUeXBlMnxudWxsKTogUmVuZGVyZXIzO1xuICBiZWdpbj8oKTogdm9pZDtcbiAgZW5kPygpOiB2b2lkO1xufVxuXG5leHBvcnQgY29uc3QgZG9tUmVuZGVyZXJGYWN0b3J5MzogUmVuZGVyZXJGYWN0b3J5MyA9IHtcbiAgY3JlYXRlUmVuZGVyZXI6IChob3N0RWxlbWVudDogUkVsZW1lbnQgfCBudWxsLCByZW5kZXJlclR5cGU6IFJlbmRlcmVyVHlwZTIgfCBudWxsKTpcbiAgICAgICAgICAgICAgICAgICAgICBSZW5kZXJlcjMgPT4geyByZXR1cm4gZ2V0RG9jdW1lbnQoKTt9XG59O1xuXG4vKiogU3Vic2V0IG9mIEFQSSBuZWVkZWQgZm9yIGFwcGVuZGluZyBlbGVtZW50cyBhbmQgdGV4dCBub2Rlcy4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgUk5vZGUge1xuICAvKipcbiAgICogUmV0dXJucyB0aGUgcGFyZW50IEVsZW1lbnQsIERvY3VtZW50LCBvciBEb2N1bWVudEZyYWdtZW50XG4gICAqL1xuICBwYXJlbnROb2RlOiBSTm9kZXxudWxsO1xuXG5cbiAgLyoqXG4gICAqIFJldHVybnMgdGhlIHBhcmVudCBFbGVtZW50IGlmIHRoZXJlIGlzIG9uZVxuICAgKi9cbiAgcGFyZW50RWxlbWVudDogUkVsZW1lbnR8bnVsbDtcblxuICAvKipcbiAgICogR2V0cyB0aGUgTm9kZSBpbW1lZGlhdGVseSBmb2xsb3dpbmcgdGhpcyBvbmUgaW4gdGhlIHBhcmVudCdzIGNoaWxkTm9kZXNcbiAgICovXG4gIG5leHRTaWJsaW5nOiBSTm9kZXxudWxsO1xuXG4gIC8qKlxuICAgKiBSZW1vdmVzIGEgY2hpbGQgZnJvbSB0aGUgY3VycmVudCBub2RlIGFuZCByZXR1cm5zIHRoZSByZW1vdmVkIG5vZGVcbiAgICogQHBhcmFtIG9sZENoaWxkIHRoZSBjaGlsZCBub2RlIHRvIHJlbW92ZVxuICAgKi9cbiAgcmVtb3ZlQ2hpbGQob2xkQ2hpbGQ6IFJOb2RlKTogUk5vZGU7XG5cbiAgLyoqXG4gICAqIEluc2VydCBhIGNoaWxkIG5vZGUuXG4gICAqXG4gICAqIFVzZWQgZXhjbHVzaXZlbHkgZm9yIGFkZGluZyBWaWV3IHJvb3Qgbm9kZXMgaW50byBWaWV3QW5jaG9yIGxvY2F0aW9uLlxuICAgKi9cbiAgaW5zZXJ0QmVmb3JlKG5ld0NoaWxkOiBSTm9kZSwgcmVmQ2hpbGQ6IFJOb2RlfG51bGwsIGlzVmlld1Jvb3Q6IGJvb2xlYW4pOiB2b2lkO1xuXG4gIC8qKlxuICAgKiBBcHBlbmQgYSBjaGlsZCBub2RlLlxuICAgKlxuICAgKiBVc2VkIGV4Y2x1c2l2ZWx5IGZvciBidWlsZGluZyB1cCBET00gd2hpY2ggYXJlIHN0YXRpYyAoaWUgbm90IFZpZXcgcm9vdHMpXG4gICAqL1xuICBhcHBlbmRDaGlsZChuZXdDaGlsZDogUk5vZGUpOiBSTm9kZTtcbn1cblxuLyoqXG4gKiBTdWJzZXQgb2YgQVBJIG5lZWRlZCBmb3Igd3JpdGluZyBhdHRyaWJ1dGVzLCBwcm9wZXJ0aWVzLCBhbmQgc2V0dGluZyB1cFxuICogbGlzdGVuZXJzIG9uIEVsZW1lbnQuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgUkVsZW1lbnQgZXh0ZW5kcyBSTm9kZSB7XG4gIHN0eWxlOiBSQ3NzU3R5bGVEZWNsYXJhdGlvbjtcbiAgY2xhc3NMaXN0OiBSRG9tVG9rZW5MaXN0O1xuICBjbGFzc05hbWU6IHN0cmluZztcbiAgdGV4dENvbnRlbnQ6IHN0cmluZ3xudWxsO1xuICBzZXRBdHRyaWJ1dGUobmFtZTogc3RyaW5nLCB2YWx1ZTogc3RyaW5nKTogdm9pZDtcbiAgcmVtb3ZlQXR0cmlidXRlKG5hbWU6IHN0cmluZyk6IHZvaWQ7XG4gIHNldEF0dHJpYnV0ZU5TKG5hbWVzcGFjZVVSSTogc3RyaW5nLCBxdWFsaWZpZWROYW1lOiBzdHJpbmcsIHZhbHVlOiBzdHJpbmcpOiB2b2lkO1xuICBhZGRFdmVudExpc3RlbmVyKHR5cGU6IHN0cmluZywgbGlzdGVuZXI6IEV2ZW50TGlzdGVuZXIsIHVzZUNhcHR1cmU/OiBib29sZWFuKTogdm9pZDtcbiAgcmVtb3ZlRXZlbnRMaXN0ZW5lcih0eXBlOiBzdHJpbmcsIGxpc3RlbmVyPzogRXZlbnRMaXN0ZW5lciwgb3B0aW9ucz86IGJvb2xlYW4pOiB2b2lkO1xuXG4gIHNldFByb3BlcnR5PyhuYW1lOiBzdHJpbmcsIHZhbHVlOiBhbnkpOiB2b2lkO1xufVxuXG5leHBvcnQgaW50ZXJmYWNlIFJDc3NTdHlsZURlY2xhcmF0aW9uIHtcbiAgcmVtb3ZlUHJvcGVydHkocHJvcGVydHlOYW1lOiBzdHJpbmcpOiBzdHJpbmc7XG4gIHNldFByb3BlcnR5KHByb3BlcnR5TmFtZTogc3RyaW5nLCB2YWx1ZTogc3RyaW5nfG51bGwsIHByaW9yaXR5Pzogc3RyaW5nKTogdm9pZDtcbn1cblxuZXhwb3J0IGludGVyZmFjZSBSRG9tVG9rZW5MaXN0IHtcbiAgYWRkKHRva2VuOiBzdHJpbmcpOiB2b2lkO1xuICByZW1vdmUodG9rZW46IHN0cmluZyk6IHZvaWQ7XG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgUlRleHQgZXh0ZW5kcyBSTm9kZSB7IHRleHRDb250ZW50OiBzdHJpbmd8bnVsbDsgfVxuXG5leHBvcnQgaW50ZXJmYWNlIFJDb21tZW50IGV4dGVuZHMgUk5vZGUgeyB0ZXh0Q29udGVudDogc3RyaW5nfG51bGw7IH1cblxuLy8gTm90ZTogVGhpcyBoYWNrIGlzIG5lY2Vzc2FyeSBzbyB3ZSBkb24ndCBlcnJvbmVvdXNseSBnZXQgYSBjaXJjdWxhciBkZXBlbmRlbmN5XG4vLyBmYWlsdXJlIGJhc2VkIG9uIHR5cGVzLlxuZXhwb3J0IGNvbnN0IHVudXNlZFZhbHVlRXhwb3J0VG9QbGFjYXRlQWpkID0gMTtcbiJdfQ==