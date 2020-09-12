/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/interfaces/query.ts
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
 * An object representing query metadata extracted from query annotations.
 * @record
 */
export function TQueryMetadata() { }
if (false) {
    /** @type {?} */
    TQueryMetadata.prototype.predicate;
    /** @type {?} */
    TQueryMetadata.prototype.descendants;
    /** @type {?} */
    TQueryMetadata.prototype.read;
    /** @type {?} */
    TQueryMetadata.prototype.isStatic;
}
/**
 * TQuery objects represent all the query-related data that remain the same from one view instance
 * to another and can be determined on the very first template pass. Most notably TQuery holds all
 * the matches for a given view.
 * @record
 */
export function TQuery() { }
if (false) {
    /**
     * Query metadata extracted from query annotations.
     * @type {?}
     */
    TQuery.prototype.metadata;
    /**
     * Index of a query in a declaration view in case of queries propagated to en embedded view, -1
     * for queries declared in a given view. We are storing this index so we can find a parent query
     * to clone for an embedded view (when an embedded view is created).
     * @type {?}
     */
    TQuery.prototype.indexInDeclarationView;
    /**
     * Matches collected on the first template pass. Each match is a pair of:
     * - TNode index;
     * - match index;
     *
     * A TNode index can be either:
     * - a positive number (the most common case) to indicate a matching TNode;
     * - a negative number to indicate that a given query is crossing a <ng-template> element and
     * results from views created based on TemplateRef should be inserted at this place.
     *
     * A match index is a number used to find an actual value (for a given node) when query results
     * are materialized. This index can have one of the following values:
     * - -2 - indicates that we need to read a special token (TemplateRef, ViewContainerRef etc.);
     * - -1 - indicates that we need to read a default value based on the node type (TemplateRef for
     * ng-template and ElementRef for other elements);
     * - a positive number - index of an injectable to be read from the element injector.
     * @type {?}
     */
    TQuery.prototype.matches;
    /**
     * A flag indicating if a given query crosses an <ng-template> element. This flag exists for
     * performance reasons: we can notice that queries not crossing any <ng-template> elements will
     * have matches from a given view only (and adapt processing accordingly).
     * @type {?}
     */
    TQuery.prototype.crossesNgTemplate;
    /**
     * A method call when a given query is crossing an element (or element container). This is where a
     * given TNode is matched against a query predicate.
     * @param {?} tView
     * @param {?} tNode
     * @return {?}
     */
    TQuery.prototype.elementStart = function (tView, tNode) { };
    /**
     * A method called when processing the elementEnd instruction - this is mostly useful to determine
     * if a given content query should match any nodes past this point.
     * @param {?} tNode
     * @return {?}
     */
    TQuery.prototype.elementEnd = function (tNode) { };
    /**
     * A method called when processing the template instruction. This is where a
     * given TContainerNode is matched against a query predicate.
     * @param {?} tView
     * @param {?} tNode
     * @return {?}
     */
    TQuery.prototype.template = function (tView, tNode) { };
    /**
     * A query-related method called when an embedded TView is created based on the content of a
     * <ng-template> element. We call this method to determine if a given query should be propagated
     * to the embedded view and if so - return a cloned TQuery for this embedded view.
     * @param {?} tNode
     * @param {?} childQueryIndex
     * @return {?}
     */
    TQuery.prototype.embeddedTView = function (tNode, childQueryIndex) { };
}
/**
 * TQueries represent a collection of individual TQuery objects tracked in a given view. Most of the
 * methods on this interface are simple proxy methods to the corresponding functionality on TQuery.
 * @record
 */
export function TQueries() { }
if (false) {
    /**
     * Returns the number of queries tracked in a given view.
     * @type {?}
     */
    TQueries.prototype.length;
    /**
     * Adds a new TQuery to a collection of queries tracked in a given view.
     * @param {?} tQuery
     * @return {?}
     */
    TQueries.prototype.track = function (tQuery) { };
    /**
     * Returns a TQuery instance for at the given index  in the queries array.
     * @param {?} index
     * @return {?}
     */
    TQueries.prototype.getByIndex = function (index) { };
    /**
     * A proxy method that iterates over all the TQueries in a given TView and calls the corresponding
     * `elementStart` on each and every TQuery.
     * @param {?} tView
     * @param {?} tNode
     * @return {?}
     */
    TQueries.prototype.elementStart = function (tView, tNode) { };
    /**
     * A proxy method that iterates over all the TQueries in a given TView and calls the corresponding
     * `elementEnd` on each and every TQuery.
     * @param {?} tNode
     * @return {?}
     */
    TQueries.prototype.elementEnd = function (tNode) { };
    /**
     * A proxy method that iterates over all the TQueries in a given TView and calls the corresponding
     * `template` on each and every TQuery.
     * @param {?} tView
     * @param {?} tNode
     * @return {?}
     */
    TQueries.prototype.template = function (tView, tNode) { };
    /**
     * A proxy method that iterates over all the TQueries in a given TView and calls the corresponding
     * `embeddedTView` on each and every TQuery.
     * @param {?} tNode
     * @return {?}
     */
    TQueries.prototype.embeddedTView = function (tNode) { };
}
/**
 * An interface that represents query-related information specific to a view instance. Most notably
 * it contains:
 * - materialized query matches;
 * - a pointer to a QueryList where materialized query results should be reported.
 * @record
 * @template T
 */
export function LQuery() { }
if (false) {
    /**
     * Materialized query matches for a given view only (!). Results are initialized lazily so the
     * array of matches is set to `null` initially.
     * @type {?}
     */
    LQuery.prototype.matches;
    /**
     * A QueryList where materialized query results should be reported.
     * @type {?}
     */
    LQuery.prototype.queryList;
    /**
     * Clones an LQuery for an embedded view. A cloned query shares the same `QueryList` but has a
     * separate collection of materialized matches.
     * @return {?}
     */
    LQuery.prototype.clone = function () { };
    /**
     * Called when an embedded view, impacting results of this query, is inserted or removed.
     * @return {?}
     */
    LQuery.prototype.setDirty = function () { };
}
/**
 * lQueries represent a collection of individual LQuery objects tracked in a given view.
 * @record
 */
export function LQueries() { }
if (false) {
    /**
     * A collection of queries tracked in a given view.
     * @type {?}
     */
    LQueries.prototype.queries;
    /**
     * A method called when a new embedded view is created. As a result a set of LQueries applicable
     * for a new embedded view is instantiated (cloned) from the declaration view.
     * @param {?} tView
     * @return {?}
     */
    LQueries.prototype.createEmbeddedView = function (tView) { };
    /**
     * A method called when an embedded view is inserted into a container. As a result all impacted
     * `LQuery` objects (and associated `QueryList`) are marked as dirty.
     * @param {?} tView
     * @return {?}
     */
    LQueries.prototype.insertView = function (tView) { };
    /**
     * A method called when an embedded view is detached from a container. As a result all impacted
     * `LQuery` objects (and associated `QueryList`) are marked as dirty.
     * @param {?} tView
     * @return {?}
     */
    LQueries.prototype.detachView = function (tView) { };
}
// Note: This hack is necessary so we don't erroneously get a circular dependency
// failure based on types.
/** @type {?} */
export const unusedValueExportToPlacateAjd = 1;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicXVlcnkuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL2ludGVyZmFjZXMvcXVlcnkudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7OztBQWlCQSxvQ0FLQzs7O0lBSkMsbUNBQThCOztJQUM5QixxQ0FBcUI7O0lBQ3JCLDhCQUFVOztJQUNWLGtDQUFrQjs7Ozs7Ozs7QUFRcEIsNEJBc0VDOzs7Ozs7SUFsRUMsMEJBQXlCOzs7Ozs7O0lBT3pCLHdDQUErQjs7Ozs7Ozs7Ozs7Ozs7Ozs7OztJQW1CL0IseUJBQXVCOzs7Ozs7O0lBT3ZCLG1DQUEyQjs7Ozs7Ozs7SUFRM0IsNERBQStDOzs7Ozs7O0lBTy9DLG1EQUErQjs7Ozs7Ozs7SUFRL0Isd0RBQTJDOzs7Ozs7Ozs7SUFTM0MsdUVBQWtFOzs7Ozs7O0FBT3BFLDhCQStDQzs7Ozs7O0lBL0JDLDBCQUFlOzs7Ozs7SUFYZixpREFBNEI7Ozs7OztJQU01QixxREFBa0M7Ozs7Ozs7O0lBYWxDLDhEQUErQzs7Ozs7OztJQU8vQyxxREFBK0I7Ozs7Ozs7O0lBUS9CLDBEQUEyQzs7Ozs7OztJQU8zQyx3REFBMkM7Ozs7Ozs7Ozs7QUFTN0MsNEJBc0JDOzs7Ozs7O0lBakJDLHlCQUF5Qjs7Ozs7SUFLekIsMkJBQXdCOzs7Ozs7SUFNeEIseUNBQW1COzs7OztJQUtuQiw0Q0FBaUI7Ozs7OztBQU1uQiw4QkEwQkM7Ozs7OztJQXRCQywyQkFBdUI7Ozs7Ozs7SUFPdkIsNkRBQWdEOzs7Ozs7O0lBT2hELHFEQUErQjs7Ozs7OztJQU8vQixxREFBK0I7Ozs7O0FBTWpDLE1BQU0sT0FBTyw2QkFBNkIsR0FBRyxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1R5cGV9IGZyb20gJy4uLy4uL2ludGVyZmFjZS90eXBlJztcbmltcG9ydCB7UXVlcnlMaXN0fSBmcm9tICcuLi8uLi9saW5rZXInO1xuXG5pbXBvcnQge1ROb2RlfSBmcm9tICcuL25vZGUnO1xuaW1wb3J0IHtUVmlld30gZnJvbSAnLi92aWV3JztcblxuLyoqXG4gKiBBbiBvYmplY3QgcmVwcmVzZW50aW5nIHF1ZXJ5IG1ldGFkYXRhIGV4dHJhY3RlZCBmcm9tIHF1ZXJ5IGFubm90YXRpb25zLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIFRRdWVyeU1ldGFkYXRhIHtcbiAgcHJlZGljYXRlOiBUeXBlPGFueT58c3RyaW5nW107XG4gIGRlc2NlbmRhbnRzOiBib29sZWFuO1xuICByZWFkOiBhbnk7XG4gIGlzU3RhdGljOiBib29sZWFuO1xufVxuXG4vKipcbiAqIFRRdWVyeSBvYmplY3RzIHJlcHJlc2VudCBhbGwgdGhlIHF1ZXJ5LXJlbGF0ZWQgZGF0YSB0aGF0IHJlbWFpbiB0aGUgc2FtZSBmcm9tIG9uZSB2aWV3IGluc3RhbmNlXG4gKiB0byBhbm90aGVyIGFuZCBjYW4gYmUgZGV0ZXJtaW5lZCBvbiB0aGUgdmVyeSBmaXJzdCB0ZW1wbGF0ZSBwYXNzLiBNb3N0IG5vdGFibHkgVFF1ZXJ5IGhvbGRzIGFsbFxuICogdGhlIG1hdGNoZXMgZm9yIGEgZ2l2ZW4gdmlldy5cbiAqL1xuZXhwb3J0IGludGVyZmFjZSBUUXVlcnkge1xuICAvKipcbiAgICogUXVlcnkgbWV0YWRhdGEgZXh0cmFjdGVkIGZyb20gcXVlcnkgYW5ub3RhdGlvbnMuXG4gICAqL1xuICBtZXRhZGF0YTogVFF1ZXJ5TWV0YWRhdGE7XG5cbiAgLyoqXG4gICAqIEluZGV4IG9mIGEgcXVlcnkgaW4gYSBkZWNsYXJhdGlvbiB2aWV3IGluIGNhc2Ugb2YgcXVlcmllcyBwcm9wYWdhdGVkIHRvIGVuIGVtYmVkZGVkIHZpZXcsIC0xXG4gICAqIGZvciBxdWVyaWVzIGRlY2xhcmVkIGluIGEgZ2l2ZW4gdmlldy4gV2UgYXJlIHN0b3JpbmcgdGhpcyBpbmRleCBzbyB3ZSBjYW4gZmluZCBhIHBhcmVudCBxdWVyeVxuICAgKiB0byBjbG9uZSBmb3IgYW4gZW1iZWRkZWQgdmlldyAod2hlbiBhbiBlbWJlZGRlZCB2aWV3IGlzIGNyZWF0ZWQpLlxuICAgKi9cbiAgaW5kZXhJbkRlY2xhcmF0aW9uVmlldzogbnVtYmVyO1xuXG4gIC8qKlxuICAgKiBNYXRjaGVzIGNvbGxlY3RlZCBvbiB0aGUgZmlyc3QgdGVtcGxhdGUgcGFzcy4gRWFjaCBtYXRjaCBpcyBhIHBhaXIgb2Y6XG4gICAqIC0gVE5vZGUgaW5kZXg7XG4gICAqIC0gbWF0Y2ggaW5kZXg7XG4gICAqXG4gICAqIEEgVE5vZGUgaW5kZXggY2FuIGJlIGVpdGhlcjpcbiAgICogLSBhIHBvc2l0aXZlIG51bWJlciAodGhlIG1vc3QgY29tbW9uIGNhc2UpIHRvIGluZGljYXRlIGEgbWF0Y2hpbmcgVE5vZGU7XG4gICAqIC0gYSBuZWdhdGl2ZSBudW1iZXIgdG8gaW5kaWNhdGUgdGhhdCBhIGdpdmVuIHF1ZXJ5IGlzIGNyb3NzaW5nIGEgPG5nLXRlbXBsYXRlPiBlbGVtZW50IGFuZFxuICAgKiByZXN1bHRzIGZyb20gdmlld3MgY3JlYXRlZCBiYXNlZCBvbiBUZW1wbGF0ZVJlZiBzaG91bGQgYmUgaW5zZXJ0ZWQgYXQgdGhpcyBwbGFjZS5cbiAgICpcbiAgICogQSBtYXRjaCBpbmRleCBpcyBhIG51bWJlciB1c2VkIHRvIGZpbmQgYW4gYWN0dWFsIHZhbHVlIChmb3IgYSBnaXZlbiBub2RlKSB3aGVuIHF1ZXJ5IHJlc3VsdHNcbiAgICogYXJlIG1hdGVyaWFsaXplZC4gVGhpcyBpbmRleCBjYW4gaGF2ZSBvbmUgb2YgdGhlIGZvbGxvd2luZyB2YWx1ZXM6XG4gICAqIC0gLTIgLSBpbmRpY2F0ZXMgdGhhdCB3ZSBuZWVkIHRvIHJlYWQgYSBzcGVjaWFsIHRva2VuIChUZW1wbGF0ZVJlZiwgVmlld0NvbnRhaW5lclJlZiBldGMuKTtcbiAgICogLSAtMSAtIGluZGljYXRlcyB0aGF0IHdlIG5lZWQgdG8gcmVhZCBhIGRlZmF1bHQgdmFsdWUgYmFzZWQgb24gdGhlIG5vZGUgdHlwZSAoVGVtcGxhdGVSZWYgZm9yXG4gICAqIG5nLXRlbXBsYXRlIGFuZCBFbGVtZW50UmVmIGZvciBvdGhlciBlbGVtZW50cyk7XG4gICAqIC0gYSBwb3NpdGl2ZSBudW1iZXIgLSBpbmRleCBvZiBhbiBpbmplY3RhYmxlIHRvIGJlIHJlYWQgZnJvbSB0aGUgZWxlbWVudCBpbmplY3Rvci5cbiAgICovXG4gIG1hdGNoZXM6IG51bWJlcltdfG51bGw7XG5cbiAgLyoqXG4gICAqIEEgZmxhZyBpbmRpY2F0aW5nIGlmIGEgZ2l2ZW4gcXVlcnkgY3Jvc3NlcyBhbiA8bmctdGVtcGxhdGU+IGVsZW1lbnQuIFRoaXMgZmxhZyBleGlzdHMgZm9yXG4gICAqIHBlcmZvcm1hbmNlIHJlYXNvbnM6IHdlIGNhbiBub3RpY2UgdGhhdCBxdWVyaWVzIG5vdCBjcm9zc2luZyBhbnkgPG5nLXRlbXBsYXRlPiBlbGVtZW50cyB3aWxsXG4gICAqIGhhdmUgbWF0Y2hlcyBmcm9tIGEgZ2l2ZW4gdmlldyBvbmx5IChhbmQgYWRhcHQgcHJvY2Vzc2luZyBhY2NvcmRpbmdseSkuXG4gICAqL1xuICBjcm9zc2VzTmdUZW1wbGF0ZTogYm9vbGVhbjtcblxuICAvKipcbiAgICogQSBtZXRob2QgY2FsbCB3aGVuIGEgZ2l2ZW4gcXVlcnkgaXMgY3Jvc3NpbmcgYW4gZWxlbWVudCAob3IgZWxlbWVudCBjb250YWluZXIpLiBUaGlzIGlzIHdoZXJlIGFcbiAgICogZ2l2ZW4gVE5vZGUgaXMgbWF0Y2hlZCBhZ2FpbnN0IGEgcXVlcnkgcHJlZGljYXRlLlxuICAgKiBAcGFyYW0gdFZpZXdcbiAgICogQHBhcmFtIHROb2RlXG4gICAqL1xuICBlbGVtZW50U3RhcnQodFZpZXc6IFRWaWV3LCB0Tm9kZTogVE5vZGUpOiB2b2lkO1xuXG4gIC8qKlxuICAgKiBBIG1ldGhvZCBjYWxsZWQgd2hlbiBwcm9jZXNzaW5nIHRoZSBlbGVtZW50RW5kIGluc3RydWN0aW9uIC0gdGhpcyBpcyBtb3N0bHkgdXNlZnVsIHRvIGRldGVybWluZVxuICAgKiBpZiBhIGdpdmVuIGNvbnRlbnQgcXVlcnkgc2hvdWxkIG1hdGNoIGFueSBub2RlcyBwYXN0IHRoaXMgcG9pbnQuXG4gICAqIEBwYXJhbSB0Tm9kZVxuICAgKi9cbiAgZWxlbWVudEVuZCh0Tm9kZTogVE5vZGUpOiB2b2lkO1xuXG4gIC8qKlxuICAgKiBBIG1ldGhvZCBjYWxsZWQgd2hlbiBwcm9jZXNzaW5nIHRoZSB0ZW1wbGF0ZSBpbnN0cnVjdGlvbi4gVGhpcyBpcyB3aGVyZSBhXG4gICAqIGdpdmVuIFRDb250YWluZXJOb2RlIGlzIG1hdGNoZWQgYWdhaW5zdCBhIHF1ZXJ5IHByZWRpY2F0ZS5cbiAgICogQHBhcmFtIHRWaWV3XG4gICAqIEBwYXJhbSB0Tm9kZVxuICAgKi9cbiAgdGVtcGxhdGUodFZpZXc6IFRWaWV3LCB0Tm9kZTogVE5vZGUpOiB2b2lkO1xuXG4gIC8qKlxuICAgKiBBIHF1ZXJ5LXJlbGF0ZWQgbWV0aG9kIGNhbGxlZCB3aGVuIGFuIGVtYmVkZGVkIFRWaWV3IGlzIGNyZWF0ZWQgYmFzZWQgb24gdGhlIGNvbnRlbnQgb2YgYVxuICAgKiA8bmctdGVtcGxhdGU+IGVsZW1lbnQuIFdlIGNhbGwgdGhpcyBtZXRob2QgdG8gZGV0ZXJtaW5lIGlmIGEgZ2l2ZW4gcXVlcnkgc2hvdWxkIGJlIHByb3BhZ2F0ZWRcbiAgICogdG8gdGhlIGVtYmVkZGVkIHZpZXcgYW5kIGlmIHNvIC0gcmV0dXJuIGEgY2xvbmVkIFRRdWVyeSBmb3IgdGhpcyBlbWJlZGRlZCB2aWV3LlxuICAgKiBAcGFyYW0gdE5vZGVcbiAgICogQHBhcmFtIGNoaWxkUXVlcnlJbmRleFxuICAgKi9cbiAgZW1iZWRkZWRUVmlldyh0Tm9kZTogVE5vZGUsIGNoaWxkUXVlcnlJbmRleDogbnVtYmVyKTogVFF1ZXJ5fG51bGw7XG59XG5cbi8qKlxuICogVFF1ZXJpZXMgcmVwcmVzZW50IGEgY29sbGVjdGlvbiBvZiBpbmRpdmlkdWFsIFRRdWVyeSBvYmplY3RzIHRyYWNrZWQgaW4gYSBnaXZlbiB2aWV3LiBNb3N0IG9mIHRoZVxuICogbWV0aG9kcyBvbiB0aGlzIGludGVyZmFjZSBhcmUgc2ltcGxlIHByb3h5IG1ldGhvZHMgdG8gdGhlIGNvcnJlc3BvbmRpbmcgZnVuY3Rpb25hbGl0eSBvbiBUUXVlcnkuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgVFF1ZXJpZXMge1xuICAvKipcbiAgICogQWRkcyBhIG5ldyBUUXVlcnkgdG8gYSBjb2xsZWN0aW9uIG9mIHF1ZXJpZXMgdHJhY2tlZCBpbiBhIGdpdmVuIHZpZXcuXG4gICAqIEBwYXJhbSB0UXVlcnlcbiAgICovXG4gIHRyYWNrKHRRdWVyeTogVFF1ZXJ5KTogdm9pZDtcblxuICAvKipcbiAgICogUmV0dXJucyBhIFRRdWVyeSBpbnN0YW5jZSBmb3IgYXQgdGhlIGdpdmVuIGluZGV4ICBpbiB0aGUgcXVlcmllcyBhcnJheS5cbiAgICogQHBhcmFtIGluZGV4XG4gICAqL1xuICBnZXRCeUluZGV4KGluZGV4OiBudW1iZXIpOiBUUXVlcnk7XG5cbiAgLyoqXG4gICAqIFJldHVybnMgdGhlIG51bWJlciBvZiBxdWVyaWVzIHRyYWNrZWQgaW4gYSBnaXZlbiB2aWV3LlxuICAgKi9cbiAgbGVuZ3RoOiBudW1iZXI7XG5cbiAgLyoqXG4gICAqIEEgcHJveHkgbWV0aG9kIHRoYXQgaXRlcmF0ZXMgb3ZlciBhbGwgdGhlIFRRdWVyaWVzIGluIGEgZ2l2ZW4gVFZpZXcgYW5kIGNhbGxzIHRoZSBjb3JyZXNwb25kaW5nXG4gICAqIGBlbGVtZW50U3RhcnRgIG9uIGVhY2ggYW5kIGV2ZXJ5IFRRdWVyeS5cbiAgICogQHBhcmFtIHRWaWV3XG4gICAqIEBwYXJhbSB0Tm9kZVxuICAgKi9cbiAgZWxlbWVudFN0YXJ0KHRWaWV3OiBUVmlldywgdE5vZGU6IFROb2RlKTogdm9pZDtcblxuICAvKipcbiAgICogQSBwcm94eSBtZXRob2QgdGhhdCBpdGVyYXRlcyBvdmVyIGFsbCB0aGUgVFF1ZXJpZXMgaW4gYSBnaXZlbiBUVmlldyBhbmQgY2FsbHMgdGhlIGNvcnJlc3BvbmRpbmdcbiAgICogYGVsZW1lbnRFbmRgIG9uIGVhY2ggYW5kIGV2ZXJ5IFRRdWVyeS5cbiAgICogQHBhcmFtIHROb2RlXG4gICAqL1xuICBlbGVtZW50RW5kKHROb2RlOiBUTm9kZSk6IHZvaWQ7XG5cbiAgLyoqXG4gICAqIEEgcHJveHkgbWV0aG9kIHRoYXQgaXRlcmF0ZXMgb3ZlciBhbGwgdGhlIFRRdWVyaWVzIGluIGEgZ2l2ZW4gVFZpZXcgYW5kIGNhbGxzIHRoZSBjb3JyZXNwb25kaW5nXG4gICAqIGB0ZW1wbGF0ZWAgb24gZWFjaCBhbmQgZXZlcnkgVFF1ZXJ5LlxuICAgKiBAcGFyYW0gdFZpZXdcbiAgICogQHBhcmFtIHROb2RlXG4gICAqL1xuICB0ZW1wbGF0ZSh0VmlldzogVFZpZXcsIHROb2RlOiBUTm9kZSk6IHZvaWQ7XG5cbiAgLyoqXG4gICogQSBwcm94eSBtZXRob2QgdGhhdCBpdGVyYXRlcyBvdmVyIGFsbCB0aGUgVFF1ZXJpZXMgaW4gYSBnaXZlbiBUVmlldyBhbmQgY2FsbHMgdGhlIGNvcnJlc3BvbmRpbmdcbiAgICogYGVtYmVkZGVkVFZpZXdgIG9uIGVhY2ggYW5kIGV2ZXJ5IFRRdWVyeS5cbiAgICogQHBhcmFtIHROb2RlXG4gICAqL1xuICBlbWJlZGRlZFRWaWV3KHROb2RlOiBUTm9kZSk6IFRRdWVyaWVzfG51bGw7XG59XG5cbi8qKlxuICogQW4gaW50ZXJmYWNlIHRoYXQgcmVwcmVzZW50cyBxdWVyeS1yZWxhdGVkIGluZm9ybWF0aW9uIHNwZWNpZmljIHRvIGEgdmlldyBpbnN0YW5jZS4gTW9zdCBub3RhYmx5XG4gKiBpdCBjb250YWluczpcbiAqIC0gbWF0ZXJpYWxpemVkIHF1ZXJ5IG1hdGNoZXM7XG4gKiAtIGEgcG9pbnRlciB0byBhIFF1ZXJ5TGlzdCB3aGVyZSBtYXRlcmlhbGl6ZWQgcXVlcnkgcmVzdWx0cyBzaG91bGQgYmUgcmVwb3J0ZWQuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgTFF1ZXJ5PFQ+IHtcbiAgLyoqXG4gICAqIE1hdGVyaWFsaXplZCBxdWVyeSBtYXRjaGVzIGZvciBhIGdpdmVuIHZpZXcgb25seSAoISkuIFJlc3VsdHMgYXJlIGluaXRpYWxpemVkIGxhemlseSBzbyB0aGVcbiAgICogYXJyYXkgb2YgbWF0Y2hlcyBpcyBzZXQgdG8gYG51bGxgIGluaXRpYWxseS5cbiAgICovXG4gIG1hdGNoZXM6IChUfG51bGwpW118bnVsbDtcblxuICAvKipcbiAgICogQSBRdWVyeUxpc3Qgd2hlcmUgbWF0ZXJpYWxpemVkIHF1ZXJ5IHJlc3VsdHMgc2hvdWxkIGJlIHJlcG9ydGVkLlxuICAgKi9cbiAgcXVlcnlMaXN0OiBRdWVyeUxpc3Q8VD47XG5cbiAgLyoqXG4gICAqIENsb25lcyBhbiBMUXVlcnkgZm9yIGFuIGVtYmVkZGVkIHZpZXcuIEEgY2xvbmVkIHF1ZXJ5IHNoYXJlcyB0aGUgc2FtZSBgUXVlcnlMaXN0YCBidXQgaGFzIGFcbiAgICogc2VwYXJhdGUgY29sbGVjdGlvbiBvZiBtYXRlcmlhbGl6ZWQgbWF0Y2hlcy5cbiAgICovXG4gIGNsb25lKCk6IExRdWVyeTxUPjtcblxuICAvKipcbiAgICogQ2FsbGVkIHdoZW4gYW4gZW1iZWRkZWQgdmlldywgaW1wYWN0aW5nIHJlc3VsdHMgb2YgdGhpcyBxdWVyeSwgaXMgaW5zZXJ0ZWQgb3IgcmVtb3ZlZC5cbiAgICovXG4gIHNldERpcnR5KCk6IHZvaWQ7XG59XG5cbi8qKlxuICogbFF1ZXJpZXMgcmVwcmVzZW50IGEgY29sbGVjdGlvbiBvZiBpbmRpdmlkdWFsIExRdWVyeSBvYmplY3RzIHRyYWNrZWQgaW4gYSBnaXZlbiB2aWV3LlxuICovXG5leHBvcnQgaW50ZXJmYWNlIExRdWVyaWVzIHtcbiAgLyoqXG4gICAqIEEgY29sbGVjdGlvbiBvZiBxdWVyaWVzIHRyYWNrZWQgaW4gYSBnaXZlbiB2aWV3LlxuICAgKi9cbiAgcXVlcmllczogTFF1ZXJ5PGFueT5bXTtcblxuICAvKipcbiAgICogQSBtZXRob2QgY2FsbGVkIHdoZW4gYSBuZXcgZW1iZWRkZWQgdmlldyBpcyBjcmVhdGVkLiBBcyBhIHJlc3VsdCBhIHNldCBvZiBMUXVlcmllcyBhcHBsaWNhYmxlXG4gICAqIGZvciBhIG5ldyBlbWJlZGRlZCB2aWV3IGlzIGluc3RhbnRpYXRlZCAoY2xvbmVkKSBmcm9tIHRoZSBkZWNsYXJhdGlvbiB2aWV3LlxuICAgKiBAcGFyYW0gdFZpZXdcbiAgICovXG4gIGNyZWF0ZUVtYmVkZGVkVmlldyh0VmlldzogVFZpZXcpOiBMUXVlcmllc3xudWxsO1xuXG4gIC8qKlxuICAgKiBBIG1ldGhvZCBjYWxsZWQgd2hlbiBhbiBlbWJlZGRlZCB2aWV3IGlzIGluc2VydGVkIGludG8gYSBjb250YWluZXIuIEFzIGEgcmVzdWx0IGFsbCBpbXBhY3RlZFxuICAgKiBgTFF1ZXJ5YCBvYmplY3RzIChhbmQgYXNzb2NpYXRlZCBgUXVlcnlMaXN0YCkgYXJlIG1hcmtlZCBhcyBkaXJ0eS5cbiAgICogQHBhcmFtIHRWaWV3XG4gICAqL1xuICBpbnNlcnRWaWV3KHRWaWV3OiBUVmlldyk6IHZvaWQ7XG5cbiAgLyoqXG4gICAqIEEgbWV0aG9kIGNhbGxlZCB3aGVuIGFuIGVtYmVkZGVkIHZpZXcgaXMgZGV0YWNoZWQgZnJvbSBhIGNvbnRhaW5lci4gQXMgYSByZXN1bHQgYWxsIGltcGFjdGVkXG4gICAqIGBMUXVlcnlgIG9iamVjdHMgKGFuZCBhc3NvY2lhdGVkIGBRdWVyeUxpc3RgKSBhcmUgbWFya2VkIGFzIGRpcnR5LlxuICAgKiBAcGFyYW0gdFZpZXdcbiAgICovXG4gIGRldGFjaFZpZXcodFZpZXc6IFRWaWV3KTogdm9pZDtcbn1cblxuXG4vLyBOb3RlOiBUaGlzIGhhY2sgaXMgbmVjZXNzYXJ5IHNvIHdlIGRvbid0IGVycm9uZW91c2x5IGdldCBhIGNpcmN1bGFyIGRlcGVuZGVuY3lcbi8vIGZhaWx1cmUgYmFzZWQgb24gdHlwZXMuXG5leHBvcnQgY29uc3QgdW51c2VkVmFsdWVFeHBvcnRUb1BsYWNhdGVBamQgPSAxO1xuIl19