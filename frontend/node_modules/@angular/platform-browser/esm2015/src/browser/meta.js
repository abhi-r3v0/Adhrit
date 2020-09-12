/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { DOCUMENT, ɵgetDOM as getDOM } from '@angular/common';
import { Inject, Injectable, ɵɵinject } from '@angular/core';
import * as i0 from "@angular/core";
/**
 * Factory to create a `Meta` service instance for the current DOM document.
 */
export function createMeta() {
    return new Meta(ɵɵinject(DOCUMENT));
}
/**
 * A service for managing HTML `<meta>` tags.
 *
 * Properties of the `MetaDefinition` object match the attributes of the
 * HTML `<meta>` tag. These tags define document metadata that is important for
 * things like configuring a Content Security Policy, defining browser compatibility
 * and security settings, setting HTTP Headers, defining rich content for social sharing,
 * and Search Engine Optimization (SEO).
 *
 * To identify specific `<meta>` tags in a document, use an attribute selection
 * string in the format `"tag_attribute='value string'"`.
 * For example, an `attrSelector` value of `"name='description'"` matches a tag
 * whose `name` attribute has the value `"description"`.
 * Selectors are used with the `querySelector()` Document method,
 * in the format `meta[{attrSelector}]`.
 *
 * @see [HTML meta tag](https://developer.mozilla.org/docs/Web/HTML/Element/meta)
 * @see [Document.querySelector()](https://developer.mozilla.org/docs/Web/API/Document/querySelector)
 *
 *
 * @publicApi
 */
export class Meta {
    constructor(_doc) {
        this._doc = _doc;
        this._dom = getDOM();
    }
    /**
     * Retrieves or creates a specific `<meta>` tag element in the current HTML document.
     * In searching for an existing tag, Angular attempts to match the `name` or `property` attribute
     * values in the provided tag definition, and verifies that all other attribute values are equal.
     * If an existing element is found, it is returned and is not modified in any way.
     * @param tag The definition of a `<meta>` element to match or create.
     * @param forceCreation True to create a new element without checking whether one already exists.
     * @returns The existing element with the same attributes and values if found,
     * the new element if no match is found, or `null` if the tag parameter is not defined.
     */
    addTag(tag, forceCreation = false) {
        if (!tag)
            return null;
        return this._getOrCreateElement(tag, forceCreation);
    }
    /**
     * Retrieves or creates a set of `<meta>` tag elements in the current HTML document.
     * In searching for an existing tag, Angular attempts to match the `name` or `property` attribute
     * values in the provided tag definition, and verifies that all other attribute values are equal.
     * @param tags An array of tag definitions to match or create.
     * @param forceCreation True to create new elements without checking whether they already exist.
     * @returns The matching elements if found, or the new elements.
     */
    addTags(tags, forceCreation = false) {
        if (!tags)
            return [];
        return tags.reduce((result, tag) => {
            if (tag) {
                result.push(this._getOrCreateElement(tag, forceCreation));
            }
            return result;
        }, []);
    }
    /**
     * Retrieves a `<meta>` tag element in the current HTML document.
     * @param attrSelector The tag attribute and value to match against, in the format
     * `"tag_attribute='value string'"`.
     * @returns The matching element, if any.
     */
    getTag(attrSelector) {
        if (!attrSelector)
            return null;
        return this._doc.querySelector(`meta[${attrSelector}]`) || null;
    }
    /**
     * Retrieves a set of `<meta>` tag elements in the current HTML document.
     * @param attrSelector The tag attribute and value to match against, in the format
     * `"tag_attribute='value string'"`.
     * @returns The matching elements, if any.
     */
    getTags(attrSelector) {
        if (!attrSelector)
            return [];
        const list /*NodeList*/ = this._doc.querySelectorAll(`meta[${attrSelector}]`);
        return list ? [].slice.call(list) : [];
    }
    /**
     * Modifies an existing `<meta>` tag element in the current HTML document.
     * @param tag The tag description with which to replace the existing tag content.
     * @param selector A tag attribute and value to match against, to identify
     * an existing tag. A string in the format `"tag_attribute=`value string`"`.
     * If not supplied, matches a tag with the same `name` or `property` attribute value as the
     * replacement tag.
     * @return The modified element.
     */
    updateTag(tag, selector) {
        if (!tag)
            return null;
        selector = selector || this._parseSelector(tag);
        const meta = this.getTag(selector);
        if (meta) {
            return this._setMetaElementAttributes(tag, meta);
        }
        return this._getOrCreateElement(tag, true);
    }
    /**
     * Removes an existing `<meta>` tag element from the current HTML document.
     * @param attrSelector A tag attribute and value to match against, to identify
     * an existing tag. A string in the format `"tag_attribute=`value string`"`.
     */
    removeTag(attrSelector) {
        this.removeTagElement(this.getTag(attrSelector));
    }
    /**
     * Removes an existing `<meta>` tag element from the current HTML document.
     * @param meta The tag definition to match against to identify an existing tag.
     */
    removeTagElement(meta) {
        if (meta) {
            this._dom.remove(meta);
        }
    }
    _getOrCreateElement(meta, forceCreation = false) {
        if (!forceCreation) {
            const selector = this._parseSelector(meta);
            const elem = this.getTag(selector);
            // It's allowed to have multiple elements with the same name so it's not enough to
            // just check that element with the same name already present on the page. We also need to
            // check if element has tag attributes
            if (elem && this._containsAttributes(meta, elem))
                return elem;
        }
        const element = this._dom.createElement('meta');
        this._setMetaElementAttributes(meta, element);
        const head = this._doc.getElementsByTagName('head')[0];
        head.appendChild(element);
        return element;
    }
    _setMetaElementAttributes(tag, el) {
        Object.keys(tag).forEach((prop) => el.setAttribute(prop, tag[prop]));
        return el;
    }
    _parseSelector(tag) {
        const attr = tag.name ? 'name' : 'property';
        return `${attr}="${tag[attr]}"`;
    }
    _containsAttributes(tag, elem) {
        return Object.keys(tag).every((key) => elem.getAttribute(key) === tag[key]);
    }
}
Meta.ɵprov = i0.ɵɵdefineInjectable({ factory: createMeta, token: Meta, providedIn: "root" });
Meta.decorators = [
    { type: Injectable, args: [{ providedIn: 'root', useFactory: createMeta, deps: [] },] }
];
Meta.ctorParameters = () => [
    { type: undefined, decorators: [{ type: Inject, args: [DOCUMENT,] }] }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWV0YS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL3BsYXRmb3JtLWJyb3dzZXIvc3JjL2Jyb3dzZXIvbWV0YS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsUUFBUSxFQUE2QixPQUFPLElBQUksTUFBTSxFQUFDLE1BQU0saUJBQWlCLENBQUM7QUFDdkYsT0FBTyxFQUFDLE1BQU0sRUFBRSxVQUFVLEVBQUUsUUFBUSxFQUFDLE1BQU0sZUFBZSxDQUFDOztBQTBCM0Q7O0dBRUc7QUFDSCxNQUFNLFVBQVUsVUFBVTtJQUN4QixPQUFPLElBQUksSUFBSSxDQUFDLFFBQVEsQ0FBQyxRQUFRLENBQUMsQ0FBQyxDQUFDO0FBQ3RDLENBQUM7QUFFRDs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0dBcUJHO0FBRUgsTUFBTSxPQUFPLElBQUk7SUFFZixZQUFzQyxJQUFTO1FBQVQsU0FBSSxHQUFKLElBQUksQ0FBSztRQUM3QyxJQUFJLENBQUMsSUFBSSxHQUFHLE1BQU0sRUFBRSxDQUFDO0lBQ3ZCLENBQUM7SUFDRDs7Ozs7Ozs7O09BU0c7SUFDSCxNQUFNLENBQUMsR0FBbUIsRUFBRSxnQkFBeUIsS0FBSztRQUN4RCxJQUFJLENBQUMsR0FBRztZQUFFLE9BQU8sSUFBSSxDQUFDO1FBQ3RCLE9BQU8sSUFBSSxDQUFDLG1CQUFtQixDQUFDLEdBQUcsRUFBRSxhQUFhLENBQUMsQ0FBQztJQUN0RCxDQUFDO0lBRUQ7Ozs7Ozs7T0FPRztJQUNILE9BQU8sQ0FBQyxJQUFzQixFQUFFLGdCQUF5QixLQUFLO1FBQzVELElBQUksQ0FBQyxJQUFJO1lBQUUsT0FBTyxFQUFFLENBQUM7UUFDckIsT0FBTyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUMsTUFBeUIsRUFBRSxHQUFtQixFQUFFLEVBQUU7WUFDcEUsSUFBSSxHQUFHLEVBQUU7Z0JBQ1AsTUFBTSxDQUFDLElBQUks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RyxDQUFDLENBQUMsT0FBTyxDQUFDLENBQUMsSUFBWSxFQUFFLEVBQUUsQ0FBQyxFQUFFLENBQUMsWUFBWSxDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQzdFLE9BQU8sRUFBRSxDQUFDO0lBQ1osQ0FBQztJQUVPLGNBQWMsQ0FBQyxHQUFtQjtRQUN4QyxNQUFNLElBQUksR0FBVyxHQUFHLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLFVBQVUsQ0FBQztRQUNwRCxPQUFPLEdBQUcsSUFBSSxLQUFLLEdBQUcsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDO0lBQ2xDLENBQUM7SUFFTyxtQkFBbUIsQ0FBQyxHQUFtQixFQUFFLElBQXFCO1FBQ3BFLE9BQU8sTUFBTSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQyxLQUFLLENBQUMsQ0FBQyxHQUFXLEVBQUUsRUFBRSxDQUFDLElBQUksQ0FBQyxZQUFZLENBQUMsR0FBRyxDQUFDLEtBQUssR0FBRyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUM7SUFDdEYsQ0FBQzs7OztZQWpJRixVQUFVLFNBQUMsRUFBQyxVQUFVLEVBQUUsTUFBTSxFQUFFLFVBQVUsRUFBRSxVQUFVLEVBQUUsSUFBSSxFQUFFLEVBQUUsRUFBQzs7OzRDQUduRCxNQUFNLFNBQUMsUUFBUSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0RPQ1VNRU5ULCDJtURvbUFkYXB0ZXIgYXMgRG9tQWRhcHRlciwgybVnZXRET00gYXMgZ2V0RE9NfSBmcm9tICdAYW5ndWxhci9jb21tb24nO1xuaW1wb3J0IHtJbmplY3QsIEluamVjdGFibGUsIMm1ybVpbmplY3R9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG4vKipcbiAqIFJlcHJlc2VudHMgdGhlIGF0dHJpYnV0ZXMgb2YgYW4gSFRNTCBgPG1ldGE+YCBlbGVtZW50LiBUaGUgZWxlbWVudCBpdHNlbGYgaXNcbiAqIHJlcHJlc2VudGVkIGJ5IHRoZSBpbnRlcm5hbCBgSFRNTE1ldGFFbGVtZW50YC5cbiAqXG4gKiBAc2VlIFtIVE1MIG1ldGEgdGFnXShodHRwczovL2RldmVsb3Blci5tb3ppbGxhLm9yZy9kb2NzL1dlYi9IVE1ML0VsZW1lbnQvbWV0YSlcbiAqIEBzZWUgYE1ldGFgXG4gKlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgdHlwZSBNZXRhRGVmaW5pdGlvbiA9IHtcbiAgY2hhcnNldD86IHN0cmluZztcbiAgY29udGVudD86IHN0cmluZztcbiAgaHR0cEVxdWl2Pzogc3RyaW5nO1xuICBpZD86IHN0cmluZztcbiAgaXRlbXByb3A/OiBzdHJpbmc7XG4gIG5hbWU/OiBzdHJpbmc7XG4gIHByb3BlcnR5Pzogc3RyaW5nO1xuICBzY2hlbWU/OiBzdHJpbmc7XG4gIHVybD86IHN0cmluZztcbn0me1xuICAvLyBUT0RPKElnb3JNaW5hcik6IHRoaXMgdHlwZSBsb29rcyB3cm9uZ1xuICBbcHJvcDogc3RyaW5nXTogc3RyaW5nO1xufTtcblxuLyoqXG4gKiBGYWN0b3J5IHRvIGNyZWF0ZSBhIGBNZXRhYCBzZXJ2aWNlIGluc3RhbmNlIGZvciB0aGUgY3VycmVudCBET00gZG9jdW1lbnQuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBjcmVhdGVNZXRhKCkge1xuICByZXR1cm4gbmV3IE1ldGEoybXJtWluamVjdChET0NVTUVOVCkpO1xufVxuXG4vKipcbiAqIEEgc2VydmljZSBmb3IgbWFuYWdpbmcgSFRNTCBgPG1ldGE+YCB0YWdzLlxuICpcbiAqIFByb3BlcnRpZXMgb2YgdGhlIGBNZXRhRGVmaW5pdGlvbmAgb2JqZWN0IG1hdGNoIHRoZSBhdHRyaWJ1dGVzIG9mIHRoZVxuICogSFRNTCBgPG1ldGE+YCB0YWcuIFRoZXNlIHRhZ3MgZGVmaW5lIGRvY3VtZW50IG1ldGFkYXRhIHRoYXQgaXMgaW1wb3J0YW50IGZvclxuICogdGhpbmdzIGxpa2UgY29uZmlndXJpbmcgYSBDb250ZW50IFNlY3VyaXR5IFBvbGljeSwgZGVmaW5pbmcgYnJvd3NlciBjb21wYXRpYmlsaXR5XG4gKiBhbmQgc2VjdXJpdHkgc2V0dGluZ3MsIHNldHRpbmcgSFRUUCBIZWFkZXJzLCBkZWZpbmluZyByaWNoIGNvbnRlbnQgZm9yIHNvY2lhbCBzaGFyaW5nLFxuICogYW5kIFNlYXJjaCBFbmdpbmUgT3B0aW1pemF0aW9uIChTRU8pLlxuICpcbiAqIFRvIGlkZW50aWZ5IHNwZWNpZmljIGA8bWV0YT5gIHRhZ3MgaW4gYSBkb2N1bWVudCwgdXNlIGFuIGF0dHJpYnV0ZSBzZWxlY3Rpb25cbiAqIHN0cmluZyBpbiB0aGUgZm9ybWF0IGBcInRhZ19hdHRyaWJ1dGU9J3ZhbHVlIHN0cmluZydcImAuXG4gKiBGb3IgZXhhbXBsZSwgYW4gYGF0dHJTZWxlY3RvcmAgdmFsdWUgb2YgYFwibmFtZT0nZGVzY3JpcHRpb24nXCJgIG1hdGNoZXMgYSB0YWdcbiAqIHdob3NlIGBuYW1lYCBhdHRyaWJ1dGUgaGFzIHRoZSB2YWx1ZSBgXCJkZXNjcmlwdGlvblwiYC5cbiAqIFNlbGVjdG9ycyBhcmUgdXNlZCB3aXRoIHRoZSBgcXVlcnlTZWxlY3RvcigpYCBEb2N1bWVudCBtZXRob2QsXG4gKiBpbiB0aGUgZm9ybWF0IGBtZXRhW3thdHRyU2VsZWN0b3J9XWAuXG4gKlxuICogQHNlZSBbSFRNTCBtZXRhIHRhZ10oaHR0cHM6Ly9kZXZlbG9wZXIubW96aWxsYS5vcmcvZG9jcy9XZWIvSFRNTC9FbGVtZW50L21ldGEpXG4gKiBAc2VlIFtEb2N1bWVudC5xdWVyeVNlbGVjdG9yKCldKGh0dHBzOi8vZGV2ZWxvcGVyLm1vemlsbGEub3JnL2RvY3MvV2ViL0FQSS9Eb2N1bWVudC9xdWVyeVNlbGVjdG9yKVxuICpcbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbkBJbmplY3RhYmxlKHtwcm92aWRlZEluOiAncm9vdCcsIHVzZUZhY3Rvcnk6IGNyZWF0ZU1ldGEsIGRlcHM6IFtdfSlcbmV4cG9ydCBjbGFzcyBNZXRhIHtcbiAgcHJpdmF0ZSBfZG9tOiBEb21BZGFwdGVyO1xuICBjb25zdHJ1Y3RvcihASW5qZWN0KERPQ1VNRU5UKSBwcml2YXRlIF9kb2M6IGFueSkge1xuICAgIHRoaXMuX2RvbSA9IGdldERPTSgpO1xuICB9XG4gIC8qKlxuICAgKiBSZXRyaWV2ZXMgb3IgY3JlYXRlcyBhIHNwZWNpZmljIGA8bWV0YT5gIHRhZyBlbGVtZW50IGluIHRoZSBjdXJyZW50IEhUTUwgZG9jdW1lbnQuXG4gICAqIEluIHNlYXJjaGluZyBmb3IgYW4gZXhpc3RpbmcgdGFnLCBBbmd1bGFyIGF0dGVtcHRzIHRvIG1hdGNoIHRoZSBgbmFtZWAgb3IgYHByb3BlcnR5YCBhdHRyaWJ1dGVcbiAgICogdmFsdWVzIGluIHRoZSBwcm92aWRlZCB0YWcgZGVmaW5pdGlvbiwgYW5kIHZlcmlmaWVzIHRoYXQgYWxsIG90aGVyIGF0dHJpYnV0ZSB2YWx1ZXMgYXJlIGVxdWFsLlxuICAgKiBJZiBhbiBleGlzdGluZyBlbGVtZW50IGlzIGZvdW5kLCBpdCBpcyByZXR1cm5lZCBhbmQgaXMgbm90IG1vZGlmaWVkIGluIGFueSB3YXkuXG4gICAqIEBwYXJhbSB0YWcgVGhlIGRlZmluaXRpb24gb2YgYSBgPG1ldGE+YCBlbGVtZW50IHRvIG1hdGNoIG9yIGNyZWF0ZS5cbiAgICogQHBhcmFtIGZvcmNlQ3JlYXRpb24gVHJ1ZSB0byBjcmVhdGUgYSBuZXcgZWxlbWVudCB3aXRob3V0IGNoZWNraW5nIHdoZXRoZXIgb25lIGFscmVhZHkgZXhpc3RzLlxuICAgKiBAcmV0dXJucyBUaGUgZXhpc3RpbmcgZWxlbWVudCB3aXRoIHRoZSBzYW1lIGF0dHJpYnV0ZXMgYW5kIHZhbHVlcyBpZiBmb3VuZCxcbiAgICogdGhlIG5ldyBlbGVtZW50IGlmIG5vIG1hdGNoIGlzIGZvdW5kLCBvciBgbnVsbGAgaWYgdGhlIHRhZyBwYXJhbWV0ZXIgaXMgbm90IGRlZmluZWQuXG4gICAqL1xuICBhZGRUYWcodGFnOiBNZXRhRGVmaW5pdGlvbiwgZm9yY2VDcmVhdGlvbjogYm9vbGVhbiA9IGZhbHNlKTogSFRNTE1ldGFFbGVtZW50fG51bGwge1xuICAgIGlmICghdGFnKSByZXR1cm4gbnVsbDtcbiAgICByZXR1cm4gdGhpcy5fZ2V0T3JDcmVhdGVFbGVtZW50KHRhZywgZm9yY2VDcmVhdGlvbik7XG4gIH1cblxuICAvKipcbiAgICogUmV0cmlldmVzIG9yIGNyZWF0ZXMgYSBzZXQgb2YgYDxtZXRhPmAgdGFnIGVsZW1lbnRzIGluIHRoZSBjdXJyZW50IEhUTUwgZG9jdW1lbnQuXG4gICAqIEluIHNlYXJjaGluZyBmb3IgYW4gZXhpc3RpbmcgdGFnLCBBbmd1bGFyIGF0dGVtcHRzIHRvIG1hdGNoIHRoZSBgbmFtZWAgb3IgYHByb3BlcnR5YCBhdHRyaWJ1dGVcbiAgICogdmFsdWVzIGluIHRoZSBwcm92aWRlZCB0YWcgZGVmaW5pdGlvbiwgYW5kIHZlcmlmaWVzIHRoYXQgYWxsIG90aGVyIGF0dHJpYnV0ZSB2YWx1ZXMgYXJlIGVxdWFsLlxuICAgKiBAcGFyYW0gdGFncyBBbiBhcnJheSBvZiB0YWcgZGVmaW5pdGlvbnMgdG8gbWF0Y2ggb3IgY3JlYXRlLlxuICAgKiBAcGFyYW0gZm9yY2VDcmVhdGlvbiBUcnVlIHRvIGNyZWF0ZSBuZXcgZWxlbWVudHMgd2l0aG91dCBjaGVja2luZyB3aGV0aGVyIHRoZXkgYWxyZWFkeSBleGlzdC5cbiAgICogQHJldHVybnMgVGhlIG1hdGNoaW5nIGVsZW1lbnRzIGlmIGZvdW5kLCBvciB0aGUgbmV3IGVsZW1lbnRzLlxuICAgKi9cbiAgYWRkVGFncyh0YWdzOiBNZXRhRGVmaW5pdGlvbltdLCBmb3JjZUNyZWF0aW9uOiBib29sZWFuID0gZmFsc2UpOiBIVE1MTWV0YUVsZW1lbnRbXSB7XG4gICAgaWYgKCF0YWdzKSByZXR1cm4gW107XG4gICAgcmV0dXJuIHRhZ3MucmVkdWNlKChyZXN1bHQ6IEhUTUxNZXRhRWxlbWVudFtdLCB0YWc6IE1ldGFEZWZpbml0aW9uKSA9PiB7XG4gICAgICBpZiAodGFnKSB7XG4gICAgICAgIHJlc3VsdC5wdXNoKHRoaXMuX2dldE9yQ3JlYXRlRWxlbWVudCh0YWcsIGZvcmNlQ3JlYXRpb24pKTtcbiAgICAgIH1cbiAgICAgIHJldHVybiByZXN1bHQ7XG4gICAgfSwgW10pO1xuICB9XG5cbiAgLyoqXG4gICAqIFJldHJpZXZlcyBhIGA8bWV0YT5gIHRhZyBlbGVtZW50IGluIHRoZSBjdXJyZW50IEhUTUwgZG9jdW1lbnQuXG4gICAqIEBwYXJhbSBhdHRyU2VsZWN0b3IgVGhlIHRhZyBhdHRyaWJ1dGUgYW5kIHZhbHVlIHRvIG1hdGNoIGFnYWluc3QsIGluIHRoZSBmb3JtYXRcbiAgICogYFwidGFnX2F0dHJpYnV0ZT0ndmFsdWUgc3RyaW5nJ1wiYC5cbiAgICogQHJldHVybnMgVGhlIG1hdGNoaW5nIGVsZW1lbnQsIGlmIGFueS5cbiAgICovXG4gIGdldFRhZyhhdHRyU2VsZWN0b3I6IHN0cmluZyk6IEhUTUxNZXRhRWxlbWVudHxudWxsIHtcbiAgICBpZiAoIWF0dHJTZWxlY3RvcikgcmV0dXJuIG51bGw7XG4gICAgcmV0dXJuIHRoaXMuX2RvYy5xdWVyeVNlbGVjdG9yKGBtZXRhWyR7YXR0clNlbGVjdG9yfV1gKSB8fCBudWxsO1xuICB9XG5cbiAgLyoqXG4gICAqIFJldHJpZXZlcyBhIHNldCBvZiBgPG1ldGE+YCB0YWcgZWxlbWVudHMgaW4gdGhlIGN1cnJlbnQgSFRNTCBkb2N1bWVudC5cbiAgICogQHBhcmFtIGF0dHJTZWxlY3RvciBUaGUgdGFnIGF0dHJpYnV0ZSBhbmQgdmFsdWUgdG8gbWF0Y2ggYWdhaW5zdCwgaW4gdGhlIGZvcm1hdFxuICAgKiBgXCJ0YWdfYXR0cmlidXRlPSd2YWx1ZSBzdHJpbmcnXCJgLlxuICAgKiBAcmV0dXJucyBUaGUgbWF0Y2hpbmcgZWxlbWVudHMsIGlmIGFueS5cbiAgICovXG4gIGdldFRhZ3MoYXR0clNlbGVjdG9yOiBzdHJpbmcpOiBIVE1MTWV0YUVsZW1lbnRbXSB7XG4gICAgaWYgKCFhdHRyU2VsZWN0b3IpIHJldHVybiBbXTtcbiAgICBjb25zdCBsaXN0IC8qTm9kZUxpc3QqLyA9IHRoaXMuX2RvYy5xdWVyeVNlbGVjdG9yQWxsKGBtZXRhWyR7YXR0clNlbGVjdG9yfV1gKTtcbiAgICByZXR1cm4gbGlzdCA/IFtdLnNsaWNlLmNhbGwobGlzdCkgOiBbXTtcbiAgfVxuXG4gIC8qKlxuICAgKiBNb2RpZmllcyBhbiBleGlzdGluZyBgPG1ldGE+YCB0YWcgZWxlbWVudCBpbiB0aGUgY3VycmVudCBIVE1MIGRvY3VtZW50LlxuICAgKiBAcGFyYW0gdGFnIFRoZSB0YWcgZGVzY3JpcHRpb24gd2l0aCB3aGljaCB0byByZXBsYWNlIHRoZSBleGlzdGluZyB0YWcgY29udGVudC5cbiAgICogQHBhcmFtIHNlbGVjdG9yIEEgdGFnIGF0dHJpYnV0ZSBhbmQgdmFsdWUgdG8gbWF0Y2ggYWdhaW5zdCwgdG8gaWRlbnRpZnlcbiAgICogYW4gZXhpc3RpbmcgdGFnLiBBIHN0cmluZyBpbiB0aGUgZm9ybWF0IGBcInRhZ19hdHRyaWJ1dGU9YHZhbHVlIHN0cmluZ2BcImAuXG4gICAqIElmIG5vdCBzdXBwbGllZCwgbWF0Y2hlcyBhIHRhZyB3aXRoIHRoZSBzYW1lIGBuYW1lYCBvciBgcHJvcGVydHlgIGF0dHJpYnV0ZSB2YWx1ZSBhcyB0aGVcbiAgICogcmVwbGFjZW1lbnQgdGFnLlxuICAgKiBAcmV0dXJuIFRoZSBtb2RpZmllZCBlbGVtZW50LlxuICAgKi9cbiAgdXBkYXRlVGFnKHRhZzogTWV0YURlZmluaXRpb24sIHNlbGVjdG9yPzogc3RyaW5nKTogSFRNTE1ldGFFbGVtZW50fG51bGwge1xuICAgIGlmICghdGFnKSByZXR1cm4gbnVsbDtcbiAgICBzZWxlY3RvciA9IHNlbGVjdG9yIHx8IHRoaXMuX3BhcnNlU2VsZWN0b3IodGFnKTtcbiAgICBjb25zdCBtZXRhOiBIVE1MTWV0YUVsZW1lbnQgPSB0aGlzLmdldFRhZyhzZWxlY3RvcikhO1xuICAgIGlmIChtZXRhKSB7XG4gICAgICByZXR1cm4gdGhpcy5fc2V0TWV0YUVsZW1lbnRBdHRyaWJ1dGVzKHRhZywgbWV0YSk7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLl9nZXRPckNyZWF0ZUVsZW1lbnQodGFnLCB0cnVlKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBSZW1vdmVzIGFuIGV4aXN0aW5nIGA8bWV0YT5gIHRhZyBlbGVtZW50IGZyb20gdGhlIGN1cnJlbnQgSFRNTCBkb2N1bWVudC5cbiAgICogQHBhcmFtIGF0dHJTZWxlY3RvciBBIHRhZyBhdHRyaWJ1dGUgYW5kIHZhbHVlIHRvIG1hdGNoIGFnYWluc3QsIHRvIGlkZW50aWZ5XG4gICAqIGFuIGV4aXN0aW5nIHRhZy4gQSBzdHJpbmcgaW4gdGhlIGZvcm1hdCBgXCJ0YWdfYXR0cmlidXRlPWB2YWx1ZSBzdHJpbmdgXCJgLlxuICAgKi9cbiAgcmVtb3ZlVGFnKGF0dHJTZWxlY3Rvcjogc3RyaW5nKTogdm9pZCB7XG4gICAgdGhpcy5yZW1vdmVUYWdFbGVtZW50KHRoaXMuZ2V0VGFnKGF0dHJTZWxlY3RvcikhKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBSZW1vdmVzIGFuIGV4aXN0aW5nIGA8bWV0YT5gIHRhZyBlbGVtZW50IGZyb20gdGhlIGN1cnJlbnQgSFRNTCBkb2N1bWVudC5cbiAgICogQHBhcmFtIG1ldGEgVGhlIHRhZyBkZWZpbml0aW9uIHRvIG1hdGNoIGFnYWluc3QgdG8gaWRlbnRpZnkgYW4gZXhpc3RpbmcgdGFnLlxuICAgKi9cbiAgcmVtb3ZlVGFnRWxlbWVudChtZXRhOiBIVE1MTWV0YUVsZW1lbnQpOiB2b2lkIHtcbiAgICBpZiAobWV0YSkge1xuICAgICAgdGhpcy5fZG9tLnJlbW92ZShtZXRhKTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIF9nZXRPckNyZWF0ZUVsZW1lbnQobWV0YTogTWV0YURlZmluaXRpb24sIGZvcmNlQ3JlYXRpb246IGJvb2xlYW4gPSBmYWxzZSk6XG4gICAgICBIVE1MTWV0YUVsZW1lbnQge1xuICAgIGlmICghZm9yY2VDcmVhdGlvbikge1xuICAgICAgY29uc3Qgc2VsZWN0b3I6IHN0cmluZyA9IHRoaXMuX3BhcnNlU2VsZWN0b3IobWV0YSk7XG4gICAgICBjb25zdCBlbGVtOiBIVE1MTWV0YUVsZW1lbnQgPSB0aGlzLmdldFRhZyhzZWxlY3RvcikhO1xuICAgICAgLy8gSXQncyBhbGxvd2VkIHRvIGhhdmUgbXVsdGlwbGUgZWxlbWVudHMgd2l0aCB0aGUgc2FtZSBuYW1lIHNvIGl0J3Mgbm90IGVub3VnaCB0b1xuICAgICAgLy8ganVzdCBjaGVjayB0aGF0IGVsZW1lbnQgd2l0aCB0aGUgc2FtZSBuYW1lIGFscmVhZHkgcHJlc2VudCBvbiB0aGUgcGFnZS4gV2UgYWxzbyBuZWVkIHRvXG4gICAgICAvLyBjaGVjayBpZiBlbGVtZW50IGhhcyB0YWcgYXR0cmlidXRlc1xuICAgICAgaWYgKGVsZW0gJiYgdGhpcy5fY29udGFpbnNBdHRyaWJ1dGVzKG1ldGEsIGVsZW0pKSByZXR1cm4gZWxlbTtcbiAgICB9XG4gICAgY29uc3QgZWxlbWVudDogSFRNTE1ldGFFbGVtZW50ID0gdGhpcy5fZG9tLmNyZWF0ZUVsZW1lbnQoJ21ldGEnKSBhcyBIVE1MTWV0YUVsZW1lbnQ7XG4gICAgdGhpcy5fc2V0TWV0YUVsZW1lbnRBdHRyaWJ1dGVzKG1ldGEsIGVsZW1lbnQpO1xuICAgIGNvbnN0IGhlYWQgPSB0aGlzLl9kb2MuZ2V0RWxlbWVudHNCeVRhZ05hbWUoJ2hlYWQnKVswXTtcbiAgICBoZWFkLmFwcGVuZENoaWxkKGVsZW1lbnQpO1xuICAgIHJldHVybiBlbGVtZW50O1xuICB9XG5cbiAgcHJpdmF0ZSBfc2V0TWV0YUVsZW1lbnRBdHRyaWJ1dGVzKHRhZzogTWV0YURlZmluaXRpb24sIGVsOiBIVE1MTWV0YUVsZW1lbnQpOiBIVE1MTWV0YUVsZW1lbnQge1xuICAgIE9iamVjdC5rZXlzKHRhZykuZm9yRWFjaCgocHJvcDogc3RyaW5nKSA9PiBlbC5zZXRBdHRyaWJ1dGUocHJvcCwgdGFnW3Byb3BdKSk7XG4gICAgcmV0dXJuIGVsO1xuICB9XG5cbiAgcHJpdmF0ZSBfcGFyc2VTZWxlY3Rvcih0YWc6IE1ldGFEZWZpbml0aW9uKTogc3RyaW5nIHtcbiAgICBjb25zdCBhdHRyOiBzdHJpbmcgPSB0YWcubmFtZSA/ICduYW1lJyA6ICdwcm9wZXJ0eSc7XG4gICAgcmV0dXJuIGAke2F0dHJ9PVwiJHt0YWdbYXR0cl19XCJgO1xuICB9XG5cbiAgcHJpdmF0ZSBfY29udGFpbnNBdHRyaWJ1dGVzKHRhZzogTWV0YURlZmluaXRpb24sIGVsZW06IEhUTUxNZXRhRWxlbWVudCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBPYmplY3Qua2V5cyh0YWcpLmV2ZXJ5KChrZXk6IHN0cmluZykgPT4gZWxlbS5nZXRBdHRyaWJ1dGUoa2V5KSA9PT0gdGFnW2tleV0pO1xuICB9XG59XG4iXX0=