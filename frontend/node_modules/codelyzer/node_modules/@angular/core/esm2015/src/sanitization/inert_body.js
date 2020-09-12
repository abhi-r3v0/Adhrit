/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/sanitization/inert_body.ts
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
 * This helper class is used to get hold of an inert tree of DOM elements containing dirty HTML
 * that needs sanitizing.
 * Depending upon browser support we must use one of three strategies for doing this.
 * Support: Safari 10.x -> XHR strategy
 * Support: Firefox -> DomParser strategy
 * Default: InertDocument strategy
 */
export class InertBodyHelper {
    /**
     * @param {?} defaultDoc
     */
    constructor(defaultDoc) {
        this.defaultDoc = defaultDoc;
        this.inertDocument = this.defaultDoc.implementation.createHTMLDocument('sanitization-inert');
        /** @type {?} */
        let inertBodyElement = this.inertDocument.body;
        if (inertBodyElement == null) {
            // usually there should be only one body element in the document, but IE doesn't have any, so
            // we need to create one.
            /** @type {?} */
            const inertHtml = this.inertDocument.createElement('html');
            this.inertDocument.appendChild(inertHtml);
            inertBodyElement = this.inertDocument.createElement('body');
            inertHtml.appendChild(inertBodyElement);
        }
        inertBodyElement.innerHTML = '<svg><g onload="this.parentNode.remove()"></g></svg>';
        if (inertBodyElement.querySelector && !inertBodyElement.querySelector('svg')) {
            // We just hit the Safari 10.1 bug - which allows JS to run inside the SVG G element
            // so use the XHR strategy.
            this.getInertBodyElement = this.getInertBodyElement_XHR;
            return;
        }
        inertBodyElement.innerHTML = '<svg><p><style><img src="</style><img src=x onerror=alert(1)//">';
        if (inertBodyElement.querySelector && inertBodyElement.querySelector('svg img')) {
            // We just hit the Firefox bug - which prevents the inner img JS from being sanitized
            // so use the DOMParser strategy, if it is available.
            // If the DOMParser is not available then we are not in Firefox (Server/WebWorker?) so we
            // fall through to the default strategy below.
            if (isDOMParserAvailable()) {
                this.getInertBodyElement = this.getInertBodyElement_DOMParser;
                return;
            }
        }
        // None of the bugs were hit so it is safe for us to use the default InertDocument strategy
        this.getInertBodyElement = this.getInertBodyElement_InertDocument;
    }
    /**
     * Use XHR to create and fill an inert body element (on Safari 10.1)
     * See
     * https://github.com/cure53/DOMPurify/blob/a992d3a75031cb8bb032e5ea8399ba972bdf9a65/src/purify.js#L439-L449
     * @private
     * @param {?} html
     * @return {?}
     */
    getInertBodyElement_XHR(html) {
        // We add these extra elements to ensure that the rest of the content is parsed as expected
        // e.g. leading whitespace is maintained and tags like `<meta>` do not get hoisted to the
        // `<head>` tag.
        html = '<body><remove></remove>' + html + '</body>';
        try {
            html = encodeURI(html);
        }
        catch (_a) {
            return null;
        }
        /** @type {?} */
        const xhr = new XMLHttpRequest();
        xhr.responseType = 'document';
        xhr.open('GET', 'data:text/html;charset=utf-8,' + html, false);
        xhr.send(undefined);
        /** @type {?} */
        const body = xhr.response.body;
        body.removeChild((/** @type {?} */ (body.firstChild)));
        return body;
    }
    /**
     * Use DOMParser to create and fill an inert body element (on Firefox)
     * See https://github.com/cure53/DOMPurify/releases/tag/0.6.7
     *
     * @private
     * @param {?} html
     * @return {?}
     */
    getInertBodyElement_DOMParser(html) {
        // We add these extra elements to ensure that the rest of the content is parsed as expected
        // e.g. leading whitespace is maintained and tags like `<meta>` do not get hoisted to the
        // `<head>` tag.
        html = '<body><remove></remove>' + html + '</body>';
        try {
            /** @type {?} */
            const body = (/** @type {?} */ (new ((/** @type {?} */ (window)))
                .DOMParser()
                .parseFromString(html, 'text/html')
                .body));
            body.removeChild((/** @type {?} */ (body.firstChild)));
            return body;
        }
        catch (_a) {
            return null;
        }
    }
    /**
     * Use an HTML5 `template` element, if supported, or an inert body element created via
     * `createHtmlDocument` to create and fill an inert DOM element.
     * This is the default sane strategy to use if the browser does not require one of the specialised
     * strategies above.
     * @private
     * @param {?} html
     * @return {?}
     */
    getInertBodyElement_InertDocument(html) {
        // Prefer using <template> element if supported.
        /** @type {?} */
        const templateEl = this.inertDocument.createElement('template');
        if ('content' in templateEl) {
            templateEl.innerHTML = html;
            return templateEl;
        }
        // Note that previously we used to do something like `this.inertDocument.body.innerHTML = html`
        // and we returned the inert `body` node. This was changed, because IE seems to treat setting
        // `innerHTML` on an inserted element differently, compared to one that hasn't been inserted
        // yet. In particular, IE appears to split some of the text into multiple text nodes rather
        // than keeping them in a single one which ends up messing with Ivy's i18n parsing further
        // down the line. This has been worked around by creating a new inert `body` and using it as
        // the root node in which we insert the HTML.
        /** @type {?} */
        const inertBody = this.inertDocument.createElement('body');
        inertBody.innerHTML = html;
        // Support: IE 9-11 only
        // strip custom-namespaced attributes on IE<=11
        if (((/** @type {?} */ (this.defaultDoc))).documentMode) {
            this.stripCustomNsAttrs(inertBody);
        }
        return inertBody;
    }
    /**
     * When IE9-11 comes across an unknown namespaced attribute e.g. 'xlink:foo' it adds 'xmlns:ns1'
     * attribute to declare ns1 namespace and prefixes the attribute with 'ns1' (e.g.
     * 'ns1:xlink:foo').
     *
     * This is undesirable since we don't want to allow any of these custom attributes. This method
     * strips them all.
     * @private
     * @param {?} el
     * @return {?}
     */
    stripCustomNsAttrs(el) {
        /** @type {?} */
        const elAttrs = el.attributes;
        // loop backwards so that we can support removals.
        for (let i = elAttrs.length - 1; 0 < i; i--) {
            /** @type {?} */
            const attrib = elAttrs.item(i);
            /** @type {?} */
            const attrName = (/** @type {?} */ (attrib)).name;
            if (attrName === 'xmlns:ns1' || attrName.indexOf('ns1:') === 0) {
                el.removeAttribute(attrName);
            }
        }
        /** @type {?} */
        let childNode = (/** @type {?} */ (el.firstChild));
        while (childNode) {
            if (childNode.nodeType === Node.ELEMENT_NODE)
                this.stripCustomNsAttrs((/** @type {?} */ (childNode)));
            childNode = childNode.nextSibling;
        }
    }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    InertBodyHelper.prototype.inertDocument;
    /**
     * Get an inert DOM element containing DOM created from the dirty HTML string provided.
     * The implementation of this is determined in the constructor, when the class is instantiated.
     * @type {?}
     */
    InertBodyHelper.prototype.getInertBodyElement;
    /**
     * @type {?}
     * @private
     */
    InertBodyHelper.prototype.defaultDoc;
}
/**
 * We need to determine whether the DOMParser exists in the global context.
 * The try-catch is because, on some browsers, trying to access this property
 * on window can actually throw an error.
 *
 * @suppress {uselessCode}
 * @return {?}
 */
function isDOMParserAvailable() {
    try {
        return !!((/** @type {?} */ (window))).DOMParser;
    }
    catch (_a) {
        return false;
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5lcnRfYm9keS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3Nhbml0aXphdGlvbi9pbmVydF9ib2R5LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBZ0JBLE1BQU0sT0FBTyxlQUFlOzs7O0lBRzFCLFlBQW9CLFVBQW9CO1FBQXBCLGVBQVUsR0FBVixVQUFVLENBQVU7UUFDdEMsSUFBSSxDQUFDLGFBQWEsR0FBRyxJQUFJLENBQUMsVUFBVSxDQUFDLGNBQWMsQ0FBQyxrQkFBa0IsQ0FBQyxvQkFBb0IsQ0FBQyxDQUFDOztZQUN6RixnQkFBZ0IsR0FBRyxJQUFJLENBQUMsYUFBYSxDQUFDLElBQUk7UUFFOUMsSUFBSSxnQkFBZ0IsSUFBSSxJQUFJLEVBQUU7Ozs7a0JBR3RCLFNBQVMsR0FBRyxJQUFJLENBQUMsYUFBYSxDQUFDLGFBQWEsQ0FBQyxNQUFNLENBQUM7WUFDMUQsSUFBSSxDQUFDLGFBQWEsQ0FBQyxXQUFXLENBQUMsU0FBUyxDQUFDLENBQUM7WUFDMUMsZ0JBQWdCLEdBQUcsSUFBSSxDQUFDLGFBQWEsQ0FBQyxhQUFhLENBQUMsTUFBTSxDQUFDLENBQUM7WUFDNUQsU0FBUyxDQUFDLFdBQVcsQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDO1NBQ3pDO1FBRUQsZ0JBQWdCLENBQUMsU0FBUyxHQUFHLHNEQUFzRCxDQUFDO1FBQ3BGLElBQUksZ0JBQWdCLENBQUMsYUFBYSxJQUFJLENBQUMsZ0JBQWdCLENBQUMsYUFBYSxDQUFDLEtBQUssQ0FBQyxFQUFFO1lBQzVFLG9GQUFvRjtZQUNwRiwyQkFBMkI7WUFDM0IsSUFBSSxDQUFDLG1CQUFtQixHQUFHLElBQUksQ0FBQyx1QkFBdUIsQ0FBQztZQUN4RCxPQUFPO1NBQ1I7UUFFRCxnQkFBZ0IsQ0FBQyxTQUFTLEdBQUcsa0VBQWtFLENBQUM7UUFDaEcsSUFBSSxnQkFBZ0IsQ0FBQyxhQUFh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QkFDckMsTUFBTSxHQUFHLE9BQU8sQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDOztrQkFDeEIsUUFBUSxHQUFHLG1CQUFBLE1BQU0sRUFBRSxDQUFDLElBQUk7WUFDOUIsSUFBSSxRQUFRLEtBQUssV0FBVyxJQUFJLFFBQVEsQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyxFQUFFO2dCQUM5RCxFQUFFLENBQUMsZUFBZSxDQUFDLFFBQVEsQ0FBQyxDQUFDO2FBQzlCO1NBQ0Y7O1lBQ0csU0FBUyxHQUFHLG1CQUFBLEVBQUUsQ0FBQyxVQUFVLEVBQWU7UUFDNUMsT0FBTyxTQUFTLEVBQUU7WUFDaEIsSUFBSSxTQUFTLENBQUMsUUFBUSxLQUFLLElBQUksQ0FBQyxZQUFZO2dCQUFFLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxtQkFBQSxTQUFTLEVBQVcsQ0FBQyxDQUFDO1lBQzVGLFNBQVMsR0FBRyxTQUFTLENBQUMsV0FBVyxDQUFDO1NBQ25DO0lBQ0gsQ0FBQztDQUNGOzs7Ozs7SUFwSkMsd0NBQWdDOzs7Ozs7SUEyQ2hDLDhDQUEwRDs7Ozs7SUF6QzlDLHFDQUE0Qjs7Ozs7Ozs7OztBQTJKMUMsU0FBUyxvQkFBb0I7SUFDM0IsSUFBSTtRQUNGLE9BQU8sQ0FBQyxDQUFDLENBQUMsbUJBQUEsTUFBTSxFQUFPLENBQUMsQ0FBQyxTQUFTLENBQUM7S0FDcEM7SUFBQyxXQUFNO1FBQ04sT0FBTyxLQUFLLENBQUM7S0FDZDtBQUNILENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbi8qKlxuICogVGhpcyBoZWxwZXIgY2xhc3MgaXMgdXNlZCB0byBnZXQgaG9sZCBvZiBhbiBpbmVydCB0cmVlIG9mIERPTSBlbGVtZW50cyBjb250YWluaW5nIGRpcnR5IEhUTUxcbiAqIHRoYXQgbmVlZHMgc2FuaXRpemluZy5cbiAqIERlcGVuZGluZyB1cG9uIGJyb3dzZXIgc3VwcG9ydCB3ZSBtdXN0IHVzZSBvbmUgb2YgdGhyZWUgc3RyYXRlZ2llcyBmb3IgZG9pbmcgdGhpcy5cbiAqIFN1cHBvcnQ6IFNhZmFyaSAxMC54IC0+IFhIUiBzdHJhdGVneVxuICogU3VwcG9ydDogRmlyZWZveCAtPiBEb21QYXJzZXIgc3RyYXRlZ3lcbiAqIERlZmF1bHQ6IEluZXJ0RG9jdW1lbnQgc3RyYXRlZ3lcbiAqL1xuZXhwb3J0IGNsYXNzIEluZXJ0Qm9keUhlbHBlciB7XG4gIHByaXZhdGUgaW5lcnREb2N1bWVudDogRG9jdW1lbnQ7XG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSBkZWZhdWx0RG9jOiBEb2N1bWVudCkge1xuICAgIHRoaXMuaW5lcnREb2N1bWVudCA9IHRoaXMuZGVmYXVsdERvYy5pbXBsZW1lbnRhdGlvbi5jcmVhdGVIVE1MRG9jdW1lbnQoJ3Nhbml0aXphdGlvbi1pbmVydCcpO1xuICAgIGxldCBpbmVydEJvZHlFbGVtZW50ID0gdGhpcy5pbmVydERvY3VtZW50LmJvZHk7XG5cbiAgICBpZiAoaW5lcnRCb2R5RWxlbWVudCA9PSBudWxsKSB7XG4gICAgICAvLyB1c3VhbGx5IHRoZXJlIHNob3VsZCBiZSBvbmx5IG9uZSBib2R5IGVsZW1lbnQgaW4gdGhlIGRvY3VtZW50LCBidXQgSUUgZG9lc24ndCBoYXZlIGFueSwgc29cbiAgICAgIC8vIHdlIG5lZWQgdG8gY3JlYXRlIG9uZS5cbiAgICAgIGNvbnN0IGluZXJ0SHRtbCA9IHRoaXMuaW5lcnREb2N1bWVudC5jcmVhdGVFbGVtZW50KCdodG1sJyk7XG4gICAgICB0aGlzLmluZXJ0RG9jdW1lbnQuYXBwZW5kQ2hpbGQoaW5lcnRIdG1sKTtcbiAgICAgIGluZXJ0Qm9keUVsZW1lbnQgPSB0aGlzLmluZXJ0RG9jdW1lbnQuY3JlYXRlRWxlbWVudCgnYm9keScpO1xuICAgICAgaW5lcnRIdG1sLmFwcGVuZENoaWxkKGluZXJ0Qm9keUVsZW1lbnQpO1xuICAgIH1cblxuICAgIGluZXJ0Qm9keUVsZW1lbnQuaW5uZXJIVE1MID0gJzxzdmc+PGcgb25sb2FkPVwidGhpcy5wYXJlbnROb2RlLnJlbW92ZSgpXCI+PC9nPjwvc3ZnPic7XG4gICAgaWYgKGluZXJ0Qm9keUVsZW1lbnQucXVlcnlTZWxlY3RvciAmJiAhaW5lcnRCb2R5RWxlbWVudC5xdWVyeVNlbGVjdG9yKCdzdmcnKSkge1xuICAgICAgLy8gV2UganVzdCBoaXQgdGhlIFNhZmFyaSAxMC4xIGJ1ZyAtIHdoaWNoIGFsbG93cyBKUyB0byBydW4gaW5zaWRlIHRoZSBTVkcgRyBlbGVtZW50XG4gICAgICAvLyBzbyB1c2UgdGhlIFhIUiBzdHJhdGVneS5cbiAgICAgIHRoaXMuZ2V0SW5lcnRCb2R5RWxlbWVudCA9IHRoaXMuZ2V0SW5lcnRCb2R5RWxlbWVudF9YSFI7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgaW5lcnRCb2R5RWxlbWVudC5pbm5lckhUTUwgPSAnPHN2Zz48cD48c3R5bGU+PGltZyBzcmM9XCI8L3N0eWxlPjxpbWcgc3JjPXggb25lcnJvcj1hbGVydCgxKS8vXCI+JztcbiAgICBpZiAoaW5lcnRCb2R5RWxlbWVudC5xdWVyeVNlbGVjdG9yICYmIGluZXJ0Qm9keUVsZW1lbnQucXVlcnlTZWxlY3Rvcignc3ZnIGltZycpKSB7XG4gICAgICAvLyBXZSBqdXN0IGhpdCB0aGUgRmlyZWZveCBidWcgLSB3aGljaCBwcmV2ZW50cyB0aGUgaW5uZXIgaW1nIEpTIGZyb20gYmVpbmcgc2FuaXRpemVkXG4gICAgICAvLyBzbyB1c2UgdGhlIERPTVBhcnNlciBzdHJhdGVneSwgaWYgaXQgaXMgYXZhaWxhYmxlLlxuICAgICAgLy8gSWYgdGhlIERPTVBhcnNlciBpcyBub3QgYXZhaWxhYmxlIHRoZW4gd2UgYXJlIG5vdCBpbiBGaXJlZm94IChTZXJ2ZXIvV2ViV29ya2VyPykgc28gd2VcbiAgICAgIC8vIGZhbGwgdGhyb3VnaCB0byB0aGUgZGVmYXVsdCBzdHJhdGVneSBiZWxvdy5cbiAgICAgIGlmIChpc0RPTVBhcnNlckF2YWlsYWJsZSgpKSB7XG4gICAgICAgIHRoaXMuZ2V0SW5lcnRCb2R5RWxlbWVudCA9IHRoaXMuZ2V0SW5lcnRCb2R5RWxlbWVudF9ET01QYXJzZXI7XG4gICAgICAgIHJldHVybjtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyBOb25lIG9mIHRoZSBidWdzIHdlcmUgaGl0IHNvIGl0IGlzIHNhZmUgZm9yIHVzIHRvIHVzZSB0aGUgZGVmYXVsdCBJbmVydERvY3VtZW50IHN0cmF0ZWd5XG4gICAgdGhpcy5nZXRJbmVydEJvZHlFbGVtZW50ID0gdGhpcy5nZXRJbmVydEJvZHlFbGVtZW50X0luZXJ0RG9jdW1lbnQ7XG4gIH1cblxuICAvKipcbiAgICogR2V0IGFuIGluZXJ0IERPTSBlbGVtZW50IGNvbnRhaW5pbmcgRE9NIGNyZWF0ZWQgZnJvbSB0aGUgZGlydHkgSFRNTCBzdHJpbmcgcHJvdmlkZWQuXG4gICAqIFRoZSBpbXBsZW1lbnRhdGlvbiBvZiB0aGlzIGlzIGRldGVybWluZWQgaW4gdGhlIGNvbnN0cnVjdG9yLCB3aGVuIHRoZSBjbGFzcyBpcyBpbnN0YW50aWF0ZWQuXG4gICAqL1xuICBnZXRJbmVydEJvZHlFbGVtZW50OiAoaHRtbDogc3RyaW5nKSA9PiBIVE1MRWxlbWVudCB8IG51bGw7XG5cbiAgLyoqXG4gICAqIFVzZSBYSFIgdG8gY3JlYXRlIGFuZCBmaWxsIGFuIGluZXJ0IGJvZHkgZWxlbWVudCAob24gU2FmYXJpIDEwLjEpXG4gICAqIFNlZVxuICAgKiBodHRwczovL2dpdGh1Yi5jb20vY3VyZTUzL0RPTVB1cmlmeS9ibG9iL2E5OTJkM2E3NTAzMWNiOGJiMDMyZTVlYTgzOTliYTk3MmJkZjlhNjUvc3JjL3B1cmlmeS5qcyNMNDM5LUw0NDlcbiAgICovXG4gIHByaXZhdGUgZ2V0SW5lcnRCb2R5RWxlbWVudF9YSFIoaHRtbDogc3RyaW5nKSB7XG4gICAgLy8gV2UgYWRkIHRoZXNlIGV4dHJhIGVsZW1lbnRzIHRvIGVuc3VyZSB0aGF0IHRoZSByZXN0IG9mIHRoZSBjb250ZW50IGlzIHBhcnNlZCBhcyBleHBlY3RlZFxuICAgIC8vIGUuZy4gbGVhZGluZyB3aGl0ZXNwYWNlIGlzIG1haW50YWluZWQgYW5kIHRhZ3MgbGlrZSBgPG1ldGE+YCBkbyBub3QgZ2V0IGhvaXN0ZWQgdG8gdGhlXG4gICAgLy8gYDxoZWFkPmAgdGFnLlxuICAgIGh0bWwgPSAnPGJvZHk+PHJlbW92ZT48L3JlbW92ZT4nICsgaHRtbCArICc8L2JvZHk+JztcbiAgICB0cnkge1xuICAgICAgaHRtbCA9IGVuY29kZVVSSShodG1sKTtcbiAgICB9IGNhdGNoIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgICBjb25zdCB4aHIgPSBuZXcgWE1MSHR0cFJlcXVlc3QoKTtcbiAgICB4aHIucmVzcG9uc2VUeXBlID0gJ2RvY3VtZW50JztcbiAgICB4aHIub3BlbignR0VUJywgJ2RhdGE6dGV4dC9odG1sO2NoYXJzZXQ9dXRmLTgsJyArIGh0bWwsIGZhbHNlKTtcbiAgICB4aHIuc2VuZCh1bmRlZmluZWQpO1xuICAgIGNvbnN0IGJvZHk6IEhUTUxCb2R5RWxlbWVudCA9IHhoci5yZXNwb25zZS5ib2R5O1xuICAgIGJvZHkucmVtb3ZlQ2hpbGQoYm9keS5maXJzdENoaWxkICEpO1xuICAgIHJldHVybiBib2R5O1xuICB9XG5cbiAgLyoqXG4gICAqIFVzZSBET01QYXJzZXIgdG8gY3JlYXRlIGFuZCBmaWxsIGFuIGluZXJ0IGJvZHkgZWxlbWVudCAob24gRmlyZWZveClcbiAgICogU2VlIGh0dHBzOi8vZ2l0aHViLmNvbS9jdXJlNTMvRE9NUHVyaWZ5L3JlbGVhc2VzL3RhZy8wLjYuN1xuICAgKlxuICAgKi9cbiAgcHJpdmF0ZSBnZXRJbmVydEJvZHlFbGVtZW50X0RPTVBhcnNlcihodG1sOiBzdHJpbmcpIHtcbiAgICAvLyBXZSBhZGQgdGhlc2UgZXh0cmEgZWxlbWVudHMgdG8gZW5zdXJlIHRoYXQgdGhlIHJlc3Qgb2YgdGhlIGNvbnRlbnQgaXMgcGFyc2VkIGFzIGV4cGVjdGVkXG4gICAgLy8gZS5nLiBsZWFkaW5nIHdoaXRlc3BhY2UgaXMgbWFpbnRhaW5lZCBhbmQgdGFncyBsaWtlIGA8bWV0YT5gIGRvIG5vdCBnZXQgaG9pc3RlZCB0byB0aGVcbiAgICAvLyBgPGhlYWQ+YCB0YWcuXG4gICAgaHRtbCA9ICc8Ym9keT48cmVtb3ZlPjwvcmVtb3ZlPicgKyBodG1sICsgJzwvYm9keT4nO1xuICAgIHRyeSB7XG4gICAgICBjb25zdCBib2R5ID0gbmV3ICh3aW5kb3cgYXMgYW55KVxuICAgICAgICAgICAgICAgICAgICAgICAuRE9NUGFyc2VyKClcbiAgICAgICAgICAgICAgICAgICAgICAgLnBhcnNlRnJvbVN0cmluZyhodG1sLCAndGV4dC9odG1sJylcbiAgICAgICAgICAgICAgICAgICAgICAgLmJvZHkgYXMgSFRNTEJvZHlFbGVtZW50O1xuICAgICAgYm9keS5yZW1vdmVDaGlsZChib2R5LmZpcnN0Q2hpbGQgISk7XG4gICAgICByZXR1cm4gYm9keTtcbiAgICB9IGNhdGNoIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBVc2UgYW4gSFRNTDUgYHRlbXBsYXRlYCBlbGVtZW50LCBpZiBzdXBwb3J0ZWQsIG9yIGFuIGluZXJ0IGJvZHkgZWxlbWVudCBjcmVhdGVkIHZpYVxuICAgKiBgY3JlYXRlSHRtbERvY3VtZW50YCB0byBjcmVhdGUgYW5kIGZpbGwgYW4gaW5lcnQgRE9NIGVsZW1lbnQuXG4gICAqIFRoaXMgaXMgdGhlIGRlZmF1bHQgc2FuZSBzdHJhdGVneSB0byB1c2UgaWYgdGhlIGJyb3dzZXIgZG9lcyBub3QgcmVxdWlyZSBvbmUgb2YgdGhlIHNwZWNpYWxpc2VkXG4gICAqIHN0cmF0ZWdpZXMgYWJvdmUuXG4gICAqL1xuICBwcml2YXRlIGdldEluZXJ0Qm9keUVsZW1lbnRfSW5lcnREb2N1bWVudChodG1sOiBzdHJpbmcpIHtcbiAgICAvLyBQcmVmZXIgdXNpbmcgPHRlbXBsYXRlPiBlbGVtZW50IGlmIHN1cHBvcnRlZC5cbiAgICBjb25zdCB0ZW1wbGF0ZUVsID0gdGhpcy5pbmVydERvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ3RlbXBsYXRlJyk7XG4gICAgaWYgKCdjb250ZW50JyBpbiB0ZW1wbGF0ZUVsKSB7XG4gICAgICB0ZW1wbGF0ZUVsLmlubmVySFRNTCA9IGh0bWw7XG4gICAgICByZXR1cm4gdGVtcGxhdGVFbDtcbiAgICB9XG5cbiAgICAvLyBOb3RlIHRoYXQgcHJldmlvdXNseSB3ZSB1c2VkIHRvIGRvIHNvbWV0aGluZyBsaWtlIGB0aGlzLmluZXJ0RG9jdW1lbnQuYm9keS5pbm5lckhUTUwgPSBodG1sYFxuICAgIC8vIGFuZCB3ZSByZXR1cm5lZCB0aGUgaW5lcnQgYGJvZHlgIG5vZGUuIFRoaXMgd2FzIGNoYW5nZWQsIGJlY2F1c2UgSUUgc2VlbXMgdG8gdHJlYXQgc2V0dGluZ1xuICAgIC8vIGBpbm5lckhUTUxgIG9uIGFuIGluc2VydGVkIGVsZW1lbnQgZGlmZmVyZW50bHksIGNvbXBhcmVkIHRvIG9uZSB0aGF0IGhhc24ndCBiZWVuIGluc2VydGVkXG4gICAgLy8geWV0LiBJbiBwYXJ0aWN1bGFyLCBJRSBhcHBlYXJzIHRvIHNwbGl0IHNvbWUgb2YgdGhlIHRleHQgaW50byBtdWx0aXBsZSB0ZXh0IG5vZGVzIHJhdGhlclxuICAgIC8vIHRoYW4ga2VlcGluZyB0aGVtIGluIGEgc2luZ2xlIG9uZSB3aGljaCBlbmRzIHVwIG1lc3Npbmcgd2l0aCBJdnkncyBpMThuIHBhcnNpbmcgZnVydGhlclxuICAgIC8vIGRvd24gdGhlIGxpbmUuIFRoaXMgaGFzIGJlZW4gd29ya2VkIGFyb3VuZCBieSBjcmVhdGluZyBhIG5ldyBpbmVydCBgYm9keWAgYW5kIHVzaW5nIGl0IGFzXG4gICAgLy8gdGhlIHJvb3Qgbm9kZSBpbiB3aGljaCB3ZSBpbnNlcnQgdGhlIEhUTUwuXG4gICAgY29uc3QgaW5lcnRCb2R5ID0gdGhpcy5pbmVydERvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ2JvZHknKTtcbiAgICBpbmVydEJvZHkuaW5uZXJIVE1MID0gaHRtbDtcblxuICAgIC8vIFN1cHBvcnQ6IElFIDktMTEgb25seVxuICAgIC8vIHN0cmlwIGN1c3RvbS1uYW1lc3BhY2VkIGF0dHJpYnV0ZXMgb24gSUU8PTExXG4gICAgaWYgKCh0aGlzLmRlZmF1bHREb2MgYXMgYW55KS5kb2N1bWVudE1vZGUpIHtcbiAgICAgIHRoaXMuc3RyaXBDdXN0b21Oc0F0dHJzKGluZXJ0Qm9keSk7XG4gICAgfVxuXG4gICAgcmV0dXJuIGluZXJ0Qm9keTtcbiAgfVxuXG4gIC8qKlxuICAgKiBXaGVuIElFOS0xMSBjb21lcyBhY3Jvc3MgYW4gdW5rbm93biBuYW1lc3BhY2VkIGF0dHJpYnV0ZSBlLmcuICd4bGluazpmb28nIGl0IGFkZHMgJ3htbG5zOm5zMSdcbiAgICogYXR0cmlidXRlIHRvIGRlY2xhcmUgbnMxIG5hbWVzcGFjZSBhbmQgcHJlZml4ZXMgdGhlIGF0dHJpYnV0ZSB3aXRoICduczEnIChlLmcuXG4gICAqICduczE6eGxpbms6Zm9vJykuXG4gICAqXG4gICAqIFRoaXMgaXMgdW5kZXNpcmFibGUgc2luY2Ugd2UgZG9uJ3Qgd2FudCB0byBhbGxvdyBhbnkgb2YgdGhlc2UgY3VzdG9tIGF0dHJpYnV0ZXMuIFRoaXMgbWV0aG9kXG4gICAqIHN0cmlwcyB0aGVtIGFsbC5cbiAgICovXG4gIHByaXZhdGUgc3RyaXBDdXN0b21Oc0F0dHJzKGVsOiBFbGVtZW50KSB7XG4gICAgY29uc3QgZWxBdHRycyA9IGVsLmF0dHJpYnV0ZXM7XG4gICAgLy8gbG9vcCBiYWNrd2FyZHMgc28gdGhhdCB3ZSBjYW4gc3VwcG9ydCByZW1vdmFscy5cbiAgICBmb3IgKGxldCBpID0gZWxBdHRycy5sZW5ndGggLSAxOyAwIDwgaTsgaS0tKSB7XG4gICAgICBjb25zdCBhdHRyaWIgPSBlbEF0dHJzLml0ZW0oaSk7XG4gICAgICBjb25zdCBhdHRyTmFtZSA9IGF0dHJpYiAhLm5hbWU7XG4gICAgICBpZiAoYXR0ck5hbWUgPT09ICd4bWxuczpuczEnIHx8IGF0dHJOYW1lLmluZGV4T2YoJ25zMTonKSA9PT0gMCkge1xuICAgICAgICBlbC5yZW1vdmVBdHRyaWJ1dGUoYXR0ck5hbWUpO1xuICAgICAgfVxuICAgIH1cbiAgICBsZXQgY2hpbGROb2RlID0gZWwuZmlyc3RDaGlsZCBhcyBOb2RlIHwgbnVsbDtcbiAgICB3aGlsZSAoY2hpbGROb2RlKSB7XG4gICAgICBpZiAoY2hpbGROb2RlLm5vZGVUeXBlID09PSBOb2RlLkVMRU1FTlRfTk9ERSkgdGhpcy5zdHJpcEN1c3RvbU5zQXR0cnMoY2hpbGROb2RlIGFzIEVsZW1lbnQpO1xuICAgICAgY2hpbGROb2RlID0gY2hpbGROb2RlLm5leHRTaWJsaW5nO1xuICAgIH1cbiAgfVxufVxuXG4vKipcbiAqIFdlIG5lZWQgdG8gZGV0ZXJtaW5lIHdoZXRoZXIgdGhlIERPTVBhcnNlciBleGlzdHMgaW4gdGhlIGdsb2JhbCBjb250ZXh0LlxuICogVGhlIHRyeS1jYXRjaCBpcyBiZWNhdXNlLCBvbiBzb21lIGJyb3dzZXJzLCB0cnlpbmcgdG8gYWNjZXNzIHRoaXMgcHJvcGVydHlcbiAqIG9uIHdpbmRvdyBjYW4gYWN0dWFsbHkgdGhyb3cgYW4gZXJyb3IuXG4gKlxuICogQHN1cHByZXNzIHt1c2VsZXNzQ29kZX1cbiAqL1xuZnVuY3Rpb24gaXNET01QYXJzZXJBdmFpbGFibGUoKSB7XG4gIHRyeSB7XG4gICAgcmV0dXJuICEhKHdpbmRvdyBhcyBhbnkpLkRPTVBhcnNlcjtcbiAgfSBjYXRjaCB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG59XG4iXX0=