/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/**
 * This helper is used to get hold of an inert tree of DOM elements containing dirty HTML
 * that needs sanitizing.
 * Depending upon browser support we use one of two strategies for doing this.
 * Default: DOMParser strategy
 * Fallback: InertDocument strategy
 */
export function getInertBodyHelper(defaultDoc) {
    return isDOMParserAvailable() ? new DOMParserHelper() : new InertDocumentHelper(defaultDoc);
}
/**
 * Uses DOMParser to create and fill an inert body element.
 * This is the default strategy used in browsers that support it.
 */
class DOMParserHelper {
    getInertBodyElement(html) {
        // We add these extra elements to ensure that the rest of the content is parsed as expected
        // e.g. leading whitespace is maintained and tags like `<meta>` do not get hoisted to the
        // `<head>` tag. Note that the `<body>` tag is closed implicitly to prevent unclosed tags
        // in `html` from consuming the otherwise explicit `</body>` tag.
        html = '<body><remove></remove>' + html;
        try {
            const body = new window.DOMParser().parseFromString(html, 'text/html').body;
            body.removeChild(body.firstChild);
            return body;
        }
        catch (_a) {
            return null;
        }
    }
}
/**
 * Use an HTML5 `template` element, if supported, or an inert body element created via
 * `createHtmlDocument` to create and fill an inert DOM element.
 * This is the fallback strategy if the browser does not support DOMParser.
 */
class InertDocumentHelper {
    constructor(defaultDoc) {
        this.defaultDoc = defaultDoc;
        this.inertDocument = this.defaultDoc.implementation.createHTMLDocument('sanitization-inert');
        if (this.inertDocument.body == null) {
            // usually there should be only one body element in the document, but IE doesn't have any, so
            // we need to create one.
            const inertHtml = this.inertDocument.createElement('html');
            this.inertDocument.appendChild(inertHtml);
            const inertBodyElement = this.inertDocument.createElement('body');
            inertHtml.appendChild(inertBodyElement);
        }
    }
    getInertBodyElement(html) {
        // Prefer using <template> element if supported.
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
        const inertBody = this.inertDocument.createElement('body');
        inertBody.innerHTML = html;
        // Support: IE 9-11 only
        // strip custom-namespaced attributes on IE<=11
        if (this.defaultDoc.documentMode) {
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
     */
    stripCustomNsAttrs(el) {
        const elAttrs = el.attributes;
        // loop backwards so that we can support removals.
        for (let i = elAttrs.length - 1; 0 < i; i--) {
            const attrib = elAttrs.item(i);
            const attrName = attrib.name;
            if (attrName === 'xmlns:ns1' || attrName.indexOf('ns1:') === 0) {
                el.removeAttribute(attrName);
            }
        }
        let childNode = el.firstChild;
        while (childNode) {
            if (childNode.nodeType === Node.ELEMENT_NODE)
                this.stripCustomNsAttrs(childNode);
            childNode = childNode.nextSibling;
        }
    }
}
/**
 * We need to determine whether the DOMParser exists in the global context and
 * supports parsing HTML; HTML parsing support is not as wide as other formats, see
 * https://developer.mozilla.org/en-US/docs/Web/API/DOMParser#Browser_compatibility.
 *
 * @suppress {uselessCode}
 */
export function isDOMParserAvailable() {
    try {
        return !!new window.DOMParser().parseFromString('', 'text/html');
    }
    catch (_a) {
        return false;
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5lcnRfYm9keS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3Nhbml0aXphdGlvbi9pbmVydF9ib2R5LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVIOzs7Ozs7R0FNRztBQUNILE1BQU0sVUFBVSxrQkFBa0IsQ0FBQyxVQUFvQjtJQUNyRCxPQUFPLG9CQUFvQixFQUFFLENBQUMsQ0FBQyxDQUFDLElBQUksZUFBZSxFQUFFLENBQUMsQ0FBQyxDQUFDLElBQUksbUJBQW1CLENBQUMsVUFBVSxDQUFDLENBQUM7QUFDOUYsQ0FBQztBQVNEOzs7R0FHRztBQUNILE1BQU0sZUFBZTtJQUNuQixtQkFBbUIsQ0FBQyxJQUFZO1FBQzlCLDJGQUEyRjtRQUMzRix5RkFBeUY7UUFDekYseUZBQXlGO1FBQ3pGLGlFQUFpRTtRQUNqRSxJQUFJLEdBQUcseUJBQXlCLEdBQUcsSUFBSSxDQUFDO1FBQ3hDLElBQUk7WUFDRixNQUFNLElBQUksR0FBRyxJQUFLLE1BQWMsQ0FBQyxTQUFTLEVBQUUsQ0FBQyxlQUFlLENBQUMsSUFBSSxFQUFFLFdBQVcsQ0FBQyxDQUFDLElBQzdELENBQUM7WUFDcEIsSUFBSSxDQUFDLFdBQVcsQ0FBQyxJQUFJLENBQUMsVUFBVyxDQUFDLENBQUM7WUFDbkMsT0FBTyxJQUFJLENBQUM7U0FDYjtRQUFDLFdBQU07WUFDTixPQUFPLElBQUksQ0FBQztTQUNiO0lBQ0gsQ0FBQztDQUNGO0FBRUQ7Ozs7R0FJRztBQUNILE1BQU0sbUJBQW1CO0lBR3ZCLFlBQW9CLFVBQW9CO1FBQXBCLGVBQVUsR0FBVixVQUFVLENBQVU7UUFDdEMsSUFBSSxDQUFDLGFBQWEsR0FBRyxJQUFJLENBQUMsVUFBVSxDQUFDLGNBQWMsQ0FBQyxrQkFBa0IsQ0FBQyxvQkFBb0IsQ0FBQyxDQUFDO1FBRTdGLElBQUksSUFBSSxDQUFDLGFBQWEsQ0FBQyxJQUFJLElBQUksSUFBSSxFQUFFO1lBQ25DLDZGQUE2RjtZQUM3Rix5QkFBeUI7WUFDekIsTUFBTSxTQUFTLEdBQUcsSUFBSSxDQUFDLGFBQWEsQ0FBQyxhQUFhLENBQUMsTUFBTSxDQUFDLENBQUM7WUFDM0QsSUFBSSxDQUFDLGFBQWEsQ0FBQyxXQUFXLENBQUMsU0FBUyxDQUFDLENBQUM7WUFDMUMsTUFBTSxnQkFBZ0IsR0FBRyxJQUFJLENBQUMsYUFBYSxDQUFDLGFBQWEsQ0FBQyxNQUFNLENBQUMsQ0FBQztZQUNsRSxTQUFTLENBQUMsV0FBVyxDQUFDLGdCQUFnQixDQUFDLENBQUM7U0FDekM7SUFDSCxDQUFDO0lBRUQsbUJBQW1CLENBQUMsSUFBWTtRQUM5QixnREFBZ0Q7UUFDaEQsTUFBTSxVQUFVLEdBQUcsSUFBSSxDQUFDLGFBQWEsQ0FBQyxhQUFhLENBQUMsVUFBVSxDQUFDLENBQUM7UUFDaEUsSUFBSSxTQUFTLElBQUksVUFBVSxFQUFFO1lBQzNCLFVBQVUsQ0FBQyxTQUFTLEdBQUcsSUFBSSxDQUFDO1lBQzVCLE9BQU8sVUFBVSxDQUFDO1NBQ25CO1FBRUQsK0ZBQStGO1FBQy9GLDZGQUE2RjtRQUM3Riw0RkFBNEY7UUFDNUYsMkZBQTJGO1FBQzNGLDBGQUEwRjtRQUMxRiw0RkFBNEY7UUFDNUYsNkNBQTZDO1FBQzdDLE1BQU0sU0FBUyxHQUFHLElBQUksQ0FBQyxhQUFhLENBQUMsYUFBYSxDQUFDLE1BQU0sQ0FBQyxDQUFDO1FBQzNELFNBQVMsQ0FBQyxTQUFTLEdBQUcsSUFBSSxDQUFDO1FBRTNCLHdCQUF3QjtRQUN4QiwrQ0FBK0M7UUFDL0MsSUFBSyxJQUFJLENBQUMsVUFBa0IsQ0FBQyxZQUFZLEVBQUU7WUFDekMsSUFBSSxDQUFDLGtCQUFrQixDQUFDLFNBQVMsQ0FBQyxDQUFDO1NBQ3BDO1FBRUQsT0FBTyxTQUFTLENBQUM7SUFDbkIsQ0FBQztJQUVEOzs7Ozs7O09BT0c7SUFDSyxrQkFBa0IsQ0FBQyxFQUFXO1FBQ3BDLE1BQU0sT0FBTyxHQUFHLEVBQUUsQ0FBQyxVQUFVLENBQUM7UUFDOUIsa0RBQWtEO1FBQ2xELEtBQUssSUFBSSxDQUFDLEdBQUcsT0FBTyxDQUFDLE1BQU0sR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEVBQUUsRUFBRTtZQUMzQyxNQUFNLE1BQU0sR0FBRyxPQUFPLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDO1lBQy9CLE1BQU0sUUFBUSxHQUFHLE1BQU8sQ0FBQyxJQUFJLENBQUM7WUFDOUIsSUFBSSxRQUFRLEtBQUssV0FBVyxJQUFJLFFBQVEsQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyxFQUFFO2dCQUM5RCxFQUFFLENBQUMsZUFBZSxDQUFDLFFBQVEsQ0FBQyxDQUFDO2FBQzlCO1NBQ0Y7UUFDRCxJQUFJLFNBQVMsR0FBRyxFQUFFLENBQUMsVUFBeUIsQ0FBQztRQUM3QyxPQUFPLFNBQVMsRUFBRTtZQUNoQixJQUFJLFNBQVMsQ0FBQyxRQUFRLEtBQUssSUFBSSxDQUFDLFlBQVk7Z0JBQUUsSUFBSSxDQUFDLGtCQUFrQixDQUFDLFNBQW9CLENBQUMsQ0FBQztZQUM1RixTQUFTLEdBQUcsU0FBUyxDQUFDLFdBQVcsQ0FBQztTQUNuQztJQUNILENBQUM7Q0FDRjtBQUVEOzs7Ozs7R0FNRztBQUNILE1BQU0sVUFBVSxvQkFBb0I7SUFDbEMsSUFBSTtRQUNGLE9BQU8sQ0FBQyxDQUFDLElBQUssTUFBYyxDQUFDLFNBQVMsRUFBRSxDQUFDLGVBQWUsQ0FBQyxFQUFFLEVBQUUsV0FBVyxDQUFDLENBQUM7S0FDM0U7SUFBQyxXQUFNO1FBQ04sT0FBTyxLQUFLLENBQUM7S0FDZDtBQUNILENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuLyoqXG4gKiBUaGlzIGhlbHBlciBpcyB1c2VkIHRvIGdldCBob2xkIG9mIGFuIGluZXJ0IHRyZWUgb2YgRE9NIGVsZW1lbnRzIGNvbnRhaW5pbmcgZGlydHkgSFRNTFxuICogdGhhdCBuZWVkcyBzYW5pdGl6aW5nLlxuICogRGVwZW5kaW5nIHVwb24gYnJvd3NlciBzdXBwb3J0IHdlIHVzZSBvbmUgb2YgdHdvIHN0cmF0ZWdpZXMgZm9yIGRvaW5nIHRoaXMuXG4gKiBEZWZhdWx0OiBET01QYXJzZXIgc3RyYXRlZ3lcbiAqIEZhbGxiYWNrOiBJbmVydERvY3VtZW50IHN0cmF0ZWd5XG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRJbmVydEJvZHlIZWxwZXIoZGVmYXVsdERvYzogRG9jdW1lbnQpOiBJbmVydEJvZHlIZWxwZXIge1xuICByZXR1cm4gaXNET01QYXJzZXJBdmFpbGFibGUoKSA/IG5ldyBET01QYXJzZXJIZWxwZXIoKSA6IG5ldyBJbmVydERvY3VtZW50SGVscGVyKGRlZmF1bHREb2MpO1xufVxuXG5leHBvcnQgaW50ZXJmYWNlIEluZXJ0Qm9keUhlbHBlciB7XG4gIC8qKlxuICAgKiBHZXQgYW4gaW5lcnQgRE9NIGVsZW1lbnQgY29udGFpbmluZyBET00gY3JlYXRlZCBmcm9tIHRoZSBkaXJ0eSBIVE1MIHN0cmluZyBwcm92aWRlZC5cbiAgICovXG4gIGdldEluZXJ0Qm9keUVsZW1lbnQ6IChodG1sOiBzdHJpbmcpID0+IEhUTUxFbGVtZW50IHwgbnVsbDtcbn1cblxuLyoqXG4gKiBVc2VzIERPTVBhcnNlciB0byBjcmVhdGUgYW5kIGZpbGwgYW4gaW5lcnQgYm9keSBlbGVtZW50LlxuICogVGhpcyBpcyB0aGUgZGVmYXVsdCBzdHJhdGVneSB1c2VkIGluIGJyb3dzZXJzIHRoYXQgc3VwcG9ydCBpdC5cbiAqL1xuY2xhc3MgRE9NUGFyc2VySGVscGVyIGltcGxlbWVudHMgSW5lcnRCb2R5SGVscGVyIHtcbiAgZ2V0SW5lcnRCb2R5RWxlbWVudChodG1sOiBzdHJpbmcpOiBIVE1MRWxlbWVudHxudWxsIHtcbiAgICAvLyBXZSBhZGQgdGhlc2UgZXh0cmEgZWxlbWVudHMgdG8gZW5zdXJlIHRoYXQgdGhlIHJlc3Qgb2YgdGhlIGNvbnRlbnQgaXMgcGFyc2VkIGFzIGV4cGVjdGVkXG4gICAgLy8gZS5nLiBsZWFkaW5nIHdoaXRlc3BhY2UgaXMgbWFpbnRhaW5lZCBhbmQgdGFncyBsaWtlIGA8bWV0YT5gIGRvIG5vdCBnZXQgaG9pc3RlZCB0byB0aGVcbiAgICAvLyBgPGhlYWQ+YCB0YWcuIE5vdGUgdGhhdCB0aGUgYDxib2R5PmAgdGFnIGlzIGNsb3NlZCBpbXBsaWNpdGx5IHRvIHByZXZlbnQgdW5jbG9zZWQgdGFnc1xuICAgIC8vIGluIGBodG1sYCBmcm9tIGNvbnN1bWluZyB0aGUgb3RoZXJ3aXNlIGV4cGxpY2l0IGA8L2JvZHk+YCB0YWcuXG4gICAgaHRtbCA9ICc8Ym9keT48cmVtb3ZlPjwvcmVtb3ZlPicgKyBodG1sO1xuICAgIHRyeSB7XG4gICAgICBjb25zdCBib2R5ID0gbmV3ICh3aW5kb3cgYXMgYW55KS5ET01QYXJzZXIoKS5wYXJzZUZyb21TdHJpbmcoaHRtbCwgJ3RleHQvaHRtbCcpLmJvZHkgYXNcbiAgICAgICAgICBIVE1MQm9keUVsZW1lbnQ7XG4gICAgICBib2R5LnJlbW92ZUNoaWxkKGJvZHkuZmlyc3RDaGlsZCEpO1xuICAgICAgcmV0dXJuIGJvZHk7XG4gICAgfSBjYXRjaCB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gIH1cbn1cblxuLyoqXG4gKiBVc2UgYW4gSFRNTDUgYHRlbXBsYXRlYCBlbGVtZW50LCBpZiBzdXBwb3J0ZWQsIG9yIGFuIGluZXJ0IGJvZHkgZWxlbWVudCBjcmVhdGVkIHZpYVxuICogYGNyZWF0ZUh0bWxEb2N1bWVudGAgdG8gY3JlYXRlIGFuZCBmaWxsIGFuIGluZXJ0IERPTSBlbGVtZW50LlxuICogVGhpcyBpcyB0aGUgZmFsbGJhY2sgc3RyYXRlZ3kgaWYgdGhlIGJyb3dzZXIgZG9lcyBub3Qgc3VwcG9ydCBET01QYXJzZXIuXG4gKi9cbmNsYXNzIEluZXJ0RG9jdW1lbnRIZWxwZXIgaW1wbGVtZW50cyBJbmVydEJvZHlIZWxwZXIge1xuICBwcml2YXRlIGluZXJ0RG9jdW1lbnQ6IERvY3VtZW50O1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgZGVmYXVsdERvYzogRG9jdW1lbnQpIHtcbiAgICB0aGlzLmluZXJ0RG9jdW1lbnQgPSB0aGlzLmRlZmF1bHREb2MuaW1wbGVtZW50YXRpb24uY3JlYXRlSFRNTERvY3VtZW50KCdzYW5pdGl6YXRpb24taW5lcnQnKTtcblxuICAgIGlmICh0aGlzLmluZXJ0RG9jdW1lbnQuYm9keSA9PSBudWxsKSB7XG4gICAgICAvLyB1c3VhbGx5IHRoZXJlIHNob3VsZCBiZSBvbmx5IG9uZSBib2R5IGVsZW1lbnQgaW4gdGhlIGRvY3VtZW50LCBidXQgSUUgZG9lc24ndCBoYXZlIGFueSwgc29cbiAgICAgIC8vIHdlIG5lZWQgdG8gY3JlYXRlIG9uZS5cbiAgICAgIGNvbnN0IGluZXJ0SHRtbCA9IHRoaXMuaW5lcnREb2N1bWVudC5jcmVhdGVFbGVtZW50KCdodG1sJyk7XG4gICAgICB0aGlzLmluZXJ0RG9jdW1lbnQuYXBwZW5kQ2hpbGQoaW5lcnRIdG1sKTtcbiAgICAgIGNvbnN0IGluZXJ0Qm9keUVsZW1lbnQgPSB0aGlzLmluZXJ0RG9jdW1lbnQuY3JlYXRlRWxlbWVudCgnYm9keScpO1xuICAgICAgaW5lcnRIdG1sLmFwcGVuZENoaWxkKGluZXJ0Qm9keUVsZW1lbnQpO1xuICAgIH1cbiAgfVxuXG4gIGdldEluZXJ0Qm9keUVsZW1lbnQoaHRtbDogc3RyaW5nKTogSFRNTEVsZW1lbnR8bnVsbCB7XG4gICAgLy8gUHJlZmVyIHVzaW5nIDx0ZW1wbGF0ZT4gZWxlbWVudCBpZiBzdXBwb3J0ZWQuXG4gICAgY29uc3QgdGVtcGxhdGVFbCA9IHRoaXMuaW5lcnREb2N1bWVudC5jcmVhdGVFbGVtZW50KCd0ZW1wbGF0ZScpO1xuICAgIGlmICgnY29udGVudCcgaW4gdGVtcGxhdGVFbCkge1xuICAgICAgdGVtcGxhdGVFbC5pbm5lckhUTUwgPSBodG1sO1xuICAgICAgcmV0dXJuIHRlbXBsYXRlRWw7XG4gICAgfVxuXG4gICAgLy8gTm90ZSB0aGF0IHByZXZpb3VzbHkgd2UgdXNlZCB0byBkbyBzb21ldGhpbmcgbGlrZSBgdGhpcy5pbmVydERvY3VtZW50LmJvZHkuaW5uZXJIVE1MID0gaHRtbGBcbiAgICAvLyBhbmQgd2UgcmV0dXJuZWQgdGhlIGluZXJ0IGBib2R5YCBub2RlLiBUaGlzIHdhcyBjaGFuZ2VkLCBiZWNhdXNlIElFIHNlZW1zIHRvIHRyZWF0IHNldHRpbmdcbiAgICAvLyBgaW5uZXJIVE1MYCBvbiBhbiBpbnNlcnRlZCBlbGVtZW50IGRpZmZlcmVudGx5LCBjb21wYXJlZCB0byBvbmUgdGhhdCBoYXNuJ3QgYmVlbiBpbnNlcnRlZFxuICAgIC8vIHlldC4gSW4gcGFydGljdWxhciwgSUUgYXBwZWFycyB0byBzcGxpdCBzb21lIG9mIHRoZSB0ZXh0IGludG8gbXVsdGlwbGUgdGV4dCBub2RlcyByYXRoZXJcbiAgICAvLyB0aGFuIGtlZXBpbmcgdGhlbSBpbiBhIHNpbmdsZSBvbmUgd2hpY2ggZW5kcyB1cCBtZXNzaW5nIHdpdGggSXZ5J3MgaTE4biBwYXJzaW5nIGZ1cnRoZXJcbiAgICAvLyBkb3duIHRoZSBsaW5lLiBUaGlzIGhhcyBiZWVuIHdvcmtlZCBhcm91bmQgYnkgY3JlYXRpbmcgYSBuZXcgaW5lcnQgYGJvZHlgIGFuZCB1c2luZyBpdCBhc1xuICAgIC8vIHRoZSByb290IG5vZGUgaW4gd2hpY2ggd2UgaW5zZXJ0IHRoZSBIVE1MLlxuICAgIGNvbnN0IGluZXJ0Qm9keSA9IHRoaXMuaW5lcnREb2N1bWVudC5jcmVhdGVFbGVtZW50KCdib2R5Jyk7XG4gICAgaW5lcnRCb2R5LmlubmVySFRNTCA9IGh0bWw7XG5cbiAgICAvLyBTdXBwb3J0OiBJRSA5LTExIG9ubHlcbiAgICAvLyBzdHJpcCBjdXN0b20tbmFtZXNwYWNlZCBhdHRyaWJ1dGVzIG9uIElFPD0xMVxuICAgIGlmICgodGhpcy5kZWZhdWx0RG9jIGFzIGFueSkuZG9jdW1lbnRNb2RlKSB7XG4gICAgICB0aGlzLnN0cmlwQ3VzdG9tTnNBdHRycyhpbmVydEJvZHkpO1xuICAgIH1cblxuICAgIHJldHVybiBpbmVydEJvZHk7XG4gIH1cblxuICAvKipcbiAgICogV2hlbiBJRTktMTEgY29tZXMgYWNyb3NzIGFuIHVua25vd24gbmFtZXNwYWNlZCBhdHRyaWJ1dGUgZS5nLiAneGxpbms6Zm9vJyBpdCBhZGRzICd4bWxuczpuczEnXG4gICAqIGF0dHJpYnV0ZSB0byBkZWNsYXJlIG5zMSBuYW1lc3BhY2UgYW5kIHByZWZpeGVzIHRoZSBhdHRyaWJ1dGUgd2l0aCAnbnMxJyAoZS5nLlxuICAgKiAnbnMxOnhsaW5rOmZvbycpLlxuICAgKlxuICAgKiBUaGlzIGlzIHVuZGVzaXJhYmxlIHNpbmNlIHdlIGRvbid0IHdhbnQgdG8gYWxsb3cgYW55IG9mIHRoZXNlIGN1c3RvbSBhdHRyaWJ1dGVzLiBUaGlzIG1ldGhvZFxuICAgKiBzdHJpcHMgdGhlbSBhbGwuXG4gICAqL1xuICBwcml2YXRlIHN0cmlwQ3VzdG9tTnNBdHRycyhlbDogRWxlbWVudCkge1xuICAgIGNvbnN0IGVsQXR0cnMgPSBlbC5hdHRyaWJ1dGVzO1xuICAgIC8vIGxvb3AgYmFja3dhcmRzIHNvIHRoYXQgd2UgY2FuIHN1cHBvcnQgcmVtb3ZhbHMuXG4gICAgZm9yIChsZXQgaSA9IGVsQXR0cnMubGVuZ3RoIC0gMTsgMCA8IGk7IGktLSkge1xuICAgICAgY29uc3QgYXR0cmliID0gZWxBdHRycy5pdGVtKGkpO1xuICAgICAgY29uc3QgYXR0ck5hbWUgPSBhdHRyaWIhLm5hbWU7XG4gICAgICBpZiAoYXR0ck5hbWUgPT09ICd4bWxuczpuczEnIHx8IGF0dHJOYW1lLmluZGV4T2YoJ25zMTonKSA9PT0gMCkge1xuICAgICAgICBlbC5yZW1vdmVBdHRyaWJ1dGUoYXR0ck5hbWUpO1xuICAgICAgfVxuICAgIH1cbiAgICBsZXQgY2hpbGROb2RlID0gZWwuZmlyc3RDaGlsZCBhcyBOb2RlIHwgbnVsbDtcbiAgICB3aGlsZSAoY2hpbGROb2RlKSB7XG4gICAgICBpZiAoY2hpbGROb2RlLm5vZGVUeXBlID09PSBOb2RlLkVMRU1FTlRfTk9ERSkgdGhpcy5zdHJpcEN1c3RvbU5zQXR0cnMoY2hpbGROb2RlIGFzIEVsZW1lbnQpO1xuICAgICAgY2hpbGROb2RlID0gY2hpbGROb2RlLm5leHRTaWJsaW5nO1xuICAgIH1cbiAgfVxufVxuXG4vKipcbiAqIFdlIG5lZWQgdG8gZGV0ZXJtaW5lIHdoZXRoZXIgdGhlIERPTVBhcnNlciBleGlzdHMgaW4gdGhlIGdsb2JhbCBjb250ZXh0IGFuZFxuICogc3VwcG9ydHMgcGFyc2luZyBIVE1MOyBIVE1MIHBhcnNpbmcgc3VwcG9ydCBpcyBub3QgYXMgd2lkZSBhcyBvdGhlciBmb3JtYXRzLCBzZWVcbiAqIGh0dHBzOi8vZGV2ZWxvcGVyLm1vemlsbGEub3JnL2VuLVVTL2RvY3MvV2ViL0FQSS9ET01QYXJzZXIjQnJvd3Nlcl9jb21wYXRpYmlsaXR5LlxuICpcbiAqIEBzdXBwcmVzcyB7dXNlbGVzc0NvZGV9XG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBpc0RPTVBhcnNlckF2YWlsYWJsZSgpIHtcbiAgdHJ5IHtcbiAgICByZXR1cm4gISFuZXcgKHdpbmRvdyBhcyBhbnkpLkRPTVBhcnNlcigpLnBhcnNlRnJvbVN0cmluZygnJywgJ3RleHQvaHRtbCcpO1xuICB9IGNhdGNoIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cbn1cbiJdfQ==