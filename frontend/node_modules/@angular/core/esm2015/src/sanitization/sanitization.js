/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { getDocument } from '../render3/interfaces/document';
import { SANITIZER } from '../render3/interfaces/view';
import { getLView } from '../render3/state';
import { renderStringify } from '../render3/util/misc_utils';
import { allowSanitizationBypassAndThrow, unwrapSafeValue } from './bypass';
import { _sanitizeHtml as _sanitizeHtml } from './html_sanitizer';
import { SecurityContext } from './security';
import { _sanitizeUrl as _sanitizeUrl } from './url_sanitizer';
/**
 * An `html` sanitizer which converts untrusted `html` **string** into trusted string by removing
 * dangerous content.
 *
 * This method parses the `html` and locates potentially dangerous content (such as urls and
 * javascript) and removes it.
 *
 * It is possible to mark a string as trusted by calling {@link bypassSanitizationTrustHtml}.
 *
 * @param unsafeHtml untrusted `html`, typically from the user.
 * @returns `html` string which is safe to display to user, because all of the dangerous javascript
 * and urls have been removed.
 *
 * @codeGenApi
 */
export function ɵɵsanitizeHtml(unsafeHtml) {
    const sanitizer = getSanitizer();
    if (sanitizer) {
        return sanitizer.sanitize(SecurityContext.HTML, unsafeHtml) || '';
    }
    if (allowSanitizationBypassAndThrow(unsafeHtml, "HTML" /* Html */)) {
        return unwrapSafeValue(unsafeHtml);
    }
    return _sanitizeHtml(getDocument(), renderStringify(unsafeHtml));
}
/**
 * A `style` sanitizer which converts untrusted `style` **string** into trusted string by removing
 * dangerous content.
 *
 * It is possible to mark a string as trusted by calling {@link bypassSanitizationTrustStyle}.
 *
 * @param unsafeStyle untrusted `style`, typically from the user.
 * @returns `style` string which is safe to bind to the `style` properties.
 *
 * @codeGenApi
 */
export function ɵɵsanitizeStyle(unsafeStyle) {
    const sanitizer = getSanitizer();
    if (sanitizer) {
        return sanitizer.sanitize(SecurityContext.STYLE, unsafeStyle) || '';
    }
    if (allowSanitizationBypassAndThrow(unsafeStyle, "Style" /* Style */)) {
        return unwrapSafeValue(unsafeStyle);
    }
    return renderStringify(unsafeStyle);
}
/**
 * A `url` sanitizer which converts untrusted `url` **string** into trusted string by removing
 * dangerous
 * content.
 *
 * This method parses the `url` and locates potentially dangerous content (such as javascript) and
 * removes it.
 *
 * It is possible to mark a string as trusted by calling {@link bypassSanitizationTrustUrl}.
 *
 * @param unsafeUrl untrusted `url`, typically from the user.
 * @returns `url` string which is safe to bind to the `src` properties such as `<img src>`, because
 * all of the dangerous javascript has been removed.
 *
 * @codeGenApi
 */
export function ɵɵsanitizeUrl(unsafeUrl) {
    const sanitizer = getSanitizer();
    if (sanitizer) {
        return sanitizer.sanitize(SecurityContext.URL, unsafeUrl) || '';
    }
    if (allowSanitizationBypassAndThrow(unsafeUrl, "URL" /* Url */)) {
        return unwrapSafeValue(unsafeUrl);
    }
    return _sanitizeUrl(renderStringify(unsafeUrl));
}
/**
 * A `url` sanitizer which only lets trusted `url`s through.
 *
 * This passes only `url`s marked trusted by calling {@link bypassSanitizationTrustResourceUrl}.
 *
 * @param unsafeResourceUrl untrusted `url`, typically from the user.
 * @returns `url` string which is safe to bind to the `src` properties such as `<img src>`, because
 * only trusted `url`s have been allowed to pass.
 *
 * @codeGenApi
 */
export function ɵɵsanitizeResourceUrl(unsafeResourceUrl) {
    const sanitizer = getSanitizer();
    if (sanitizer) {
        return sanitizer.sanitize(SecurityContext.RESOURCE_URL, unsafeResourceUrl) || '';
    }
    if (allowSanitizationBypassAndThrow(unsafeResourceUrl, "ResourceURL" /* ResourceUrl */)) {
        return unwrapSafeValue(unsafeResourceUrl);
    }
    throw new Error('unsafe value used in a resource URL context (see http://g.co/ng/security#xss)');
}
/**
 * A `script` sanitizer which only lets trusted javascript through.
 *
 * This passes only `script`s marked trusted by calling {@link
 * bypassSanitizationTrustScript}.
 *
 * @param unsafeScript untrusted `script`, typically from the user.
 * @returns `url` string which is safe to bind to the `<script>` element such as `<img src>`,
 * because only trusted `scripts` have been allowed to pass.
 *
 * @codeGenApi
 */
export function ɵɵsanitizeScript(unsafeScript) {
    const sanitizer = getSanitizer();
    if (sanitizer) {
        return sanitizer.sanitize(SecurityContext.SCRIPT, unsafeScript) || '';
    }
    if (allowSanitizationBypassAndThrow(unsafeScript, "Script" /* Script */)) {
        return unwrapSafeValue(unsafeScript);
    }
    throw new Error('unsafe value used in a script context');
}
/**
 * Detects which sanitizer to use for URL property, based on tag name and prop name.
 *
 * The rules are based on the RESOURCE_URL context config from
 * `packages/compiler/src/schema/dom_security_schema.ts`.
 * If tag and prop names don't match Resource URL schema, use URL sanitizer.
 */
export function getUrlSanitizer(tag, prop) {
    if ((prop === 'src' &&
        (tag === 'embed' || tag === 'frame' || tag === 'iframe' || tag === 'media' ||
            tag === 'script')) ||
        (prop === 'href' && (tag === 'base' || tag === 'link'))) {
        return ɵɵsanitizeResourceUrl;
    }
    return ɵɵsanitizeUrl;
}
/**
 * Sanitizes URL, selecting sanitizer function based on tag and property names.
 *
 * This function is used in case we can't define security context at compile time, when only prop
 * name is available. This happens when we generate host bindings for Directives/Components. The
 * host element is unknown at compile time, so we defer calculation of specific sanitizer to
 * runtime.
 *
 * @param unsafeUrl untrusted `url`, typically from the user.
 * @param tag target element tag name.
 * @param prop name of the property that contains the value.
 * @returns `url` string which is safe to bind.
 *
 * @codeGenApi
 */
export function ɵɵsanitizeUrlOrResourceUrl(unsafeUrl, tag, prop) {
    return getUrlSanitizer(tag, prop)(unsafeUrl);
}
export function validateAgainstEventProperties(name) {
    if (name.toLowerCase().startsWith('on')) {
        const msg = `Binding to event property '${name}' is disallowed for security reasons, ` +
            `please use (${name.slice(2)})=...` +
            `\nIf '${name}' is a directive input, make sure the directive is imported by the` +
            ` current module.`;
        throw new Error(msg);
    }
}
export function validateAgainstEventAttributes(name) {
    if (name.toLowerCase().startsWith('on')) {
        const msg = `Binding to event attribute '${name}' is disallowed for security reasons, ` +
            `please use (${name.slice(2)})=...`;
        throw new Error(msg);
    }
}
function getSanitizer() {
    const lView = getLView();
    return lView && lView[SANITIZER];
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic2FuaXRpemF0aW9uLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvc2FuaXRpemF0aW9uL3Nhbml0aXphdGlvbi50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsV0FBVyxFQUFDLE1BQU0sZ0NBQWdDLENBQUM7QUFDM0QsT0FBTyxFQUFDLFNBQVMsRUFBQyxNQUFNLDRCQUE0QixDQUFDO0FBQ3JELE9BQU8sRUFBQyxRQUFRLEVBQUMsTUFBTSxrQkFBa0IsQ0FBQztBQUMxQyxPQUFPLEVBQUMsZUFBZSxFQUFDLE1BQU0sNEJBQTRCLENBQUM7QUFFM0QsT0FBTyxFQUFDLCtCQUErQixFQUFjLGVBQWUsRUFBQyxNQUFNLFVBQVUsQ0FBQztBQUN0RixPQUFPLEVBQUMsYUFBYSxJQUFJLGFBQWEsRUFBQyxNQUFNLGtCQUFrQixDQUFDO0FBRWhFLE9BQU8sRUFBQyxlQUFlLEVBQUMsTUFBTSxZQUFZLENBQUM7QUFDM0MsT0FBTyxFQUFDLFlBQVksSUFBSSxZQUFZLEVBQUMsTUFBTSxpQkFBaUIsQ0FBQztBQUk3RDs7Ozs7Ozs7Ozs7Ozs7R0FjRztBQUNILE1BQU0sVUFBVSxjQUFjLENBQUMsVUFBZTtJQUM1QyxNQUFNLFNBQVMsR0FBRyxZQUFZLEVBQUUsQ0FBQztJQUNqQyxJQUFJLFNBQVMsRUFBRTtRQUNiLE9BQU8sU0FBUyxDQUFDLFFBQVEsQ0FBQyxlQUFlLENBQUMsSUFBSSxFQUFFLFVBQVUsQ0FBQyxJQUFJLEVBQUUsQ0FBQztLQUNuRTtJQUNELElBQUksK0JBQStCLENBQUMsVUFBVSxvQkFBa0IsRUFBRTtRQUNoRSxPQUFPLGVBQWUsQ0FBQyxVQUFVLENBQUMsQ0FBQztLQUNwQztJQUNELE9BQU8sYUFBYSxDQUFDLFdBQVcsRUFBRSxFQUFFLGVBQWUsQ0FBQyxVQUFVLENBQUMsQ0FBQyxDQUFDO0FBQ25FLENBQUM7QUFFRDs7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QUFNLFVBQVUsOEJBQThCLENBQUMsSUFBWTtJQUN6RCxJQUFJLElBQUksQ0FBQyxXQUFXLEVBQUUsQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLEVBQUU7UUFDdkMsTUFBTSxHQUFHLEdBQUcsOEJBQThCLElBQUksd0NBQXdDO1lBQ2xGLGVBQWUsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsT0FBTztZQUNuQyxTQUFTLElBQUksb0VBQW9FO1lBQ2pGLGtCQUFrQixDQUFDO1FBQ3ZCLE1BQU0sSUFBSSxLQUFLLENBQUMsR0FBRyxDQUFDLENBQUM7S0FDdEI7QUFDSCxDQUFDO0FBRUQsTUFBTSxVQUFVLDhCQUE4QixDQUFDLElBQVk7SUFDekQsSUFBSSxJQUFJLENBQUMsV0FBVyxFQUFFLENBQUMsVUFBVSxDQUFDLElBQUksQ0FBQyxFQUFFO1FBQ3ZDLE1BQU0sR0FBRyxHQUFHLCtCQUErQixJQUFJLHdDQUF3QztZQUNuRixlQUFlLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLE9BQU8sQ0FBQztRQUN4QyxNQUFNLElBQUksS0FBSyxDQUFDLEdBQUcsQ0FBQyxDQUFDO0tBQ3RCO0FBQ0gsQ0FBQztBQUVELFNBQVMsWUFBWTtJQUNuQixNQUFNLEtBQUssR0FBRyxRQUFRLEVBQUUsQ0FBQztJQUN6QixPQUFPLEtBQUssSUFBSSxLQUFLLENBQUMsU0FBUyxDQUFDLENBQUM7QUFDbkMsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge2dldERvY3VtZW50fSBmcm9tICcuLi9yZW5kZXIzL2ludGVyZmFjZXMvZG9jdW1lbnQnO1xuaW1wb3J0IHtTQU5JVElaRVJ9IGZyb20gJy4uL3JlbmRlcjMvaW50ZXJmYWNlcy92aWV3JztcbmltcG9ydCB7Z2V0TFZpZXd9IGZyb20gJy4uL3JlbmRlcjMvc3RhdGUnO1xuaW1wb3J0IHtyZW5kZXJTdHJpbmdpZnl9IGZyb20gJy4uL3JlbmRlcjMvdXRpbC9taXNjX3V0aWxzJztcblxuaW1wb3J0IHthbGxvd1Nhbml0aXphdGlvbkJ5cGFzc0FuZFRocm93LCBCeXBhc3NUeXBlLCB1bndyYXBTYWZlVmFsdWV9IGZyb20gJy4vYnlwYXNzJztcbmltcG9ydCB7X3Nhbml0aXplSHRtbCBhcyBfc2FuaXRpemVIdG1sfSBmcm9tICcuL2h0bWxfc2FuaXRpemVyJztcbmltcG9ydCB7U2FuaXRpemVyfSBmcm9tICcuL3Nhbml0aXplcic7XG5pbXBvcnQge1NlY3VyaXR5Q29udGV4dH0gZnJvbSAnLi9zZWN1cml0eSc7XG5pbXBvcnQge19zYW5pdGl6ZVVybCBhcyBfc2FuaXRpemVVcmx9IGZyb20gJy4vdXJsX3Nhbml0aXplcic7XG5cblxuXG4vKipcbiAqIEFuIGBodG1sYCBzYW5pdGl6ZXIgd2hpY2ggY29udmVydHMgdW50cnVzdGVkIGBodG1sYCAqKnN0cmluZyoqIGludG8gdHJ1c3RlZCBzdHJpbmcgYnkgcmVtb3ZpbmdcbiAqIGRhbmdlcm91cyBjb250ZW50LlxuICpcbiAqIFRoaXMgbWV0aG9kIHBhcnNlcyB0aGUgYGh0bWxgIGFuZCBsb2NhdGVzIHBvdGVudGlhbGx5IGRhbmdlcm91cyBjb250ZW50IChzdWNoIGFzIHVybHMgYW5kXG4gKiBqYXZhc2NyaXB0KSBhbmQgcmVtb3ZlcyBpdC5cbiAqXG4gKiBJdCBpcyBwb3NzaWJsZSB0byBtYXJrIGEgc3RyaW5nIGFzIHRydXN0ZWQgYnkgY2FsbGluZyB7QGxpbmsgYnlwYXNzU2FuaXRpemF0aW9uVHJ1c3RIdG1sfS5cbiAqXG4gKiBAcGFyYW0gdW5zYWZlSHRtbCB1bnRydXN0ZWQgYGh0bWxgLCB0eXBpY2FsbHkgZnJvbSB0aGUgdXNlci5cbiAqIEByZXR1cm5zIGBodG1sYCBzdHJpbmcgd2hpY2ggaXMgc2FmZSB0byBkaXNwbGF5IHRvIHVzZXIsIGJlY2F1c2UgYWxsIG9mIHRoZSBkYW5nZXJvdXMgamF2YXNjcmlwdFxuICogYW5kIHVybHMgaGF2ZSBiZWVuIHJlbW92ZWQuXG4gKlxuICogQGNvZGVHZW5BcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIMm1ybVzYW5pdGl6ZUh0bWwodW5zYWZlSHRtbDogYW55KTogc3RyaW5nIHtcbiAgY29uc3Qgc2FuaXRpemVyID0gZ2V0U2FuaXRpemVyKCk7XG4gIGlmIChzYW5pdGl6ZXIpIHtcbiAgICByZXR1cm4gc2FuaXRpemVyLnNhbml0aXplKFNlY3VyaXR5Q29udGV4dC5IVE1MLCB1bnNhZmVIdG1sKSB8fCAnJztcbiAgfVxuICBpZiAoYWxsb3dTYW5pdGl6YXRpb25CeXBhc3NBbmRUaHJvdyh1bnNhZmVIdG1sLCBCeXBhc3NUeXBlLkh0bWwpKSB7XG4gICAgcmV0dXJuIHVud3JhcFNhZmVWYWx1ZSh1bnNhZmVIdG1sKTtcbiAgfVxuICByZXR1cm4gX3Nhbml0aXplSHRtbChnZXREb2N1bWVudCgpLCByZW5kZXJTdHJpbmdpZnkodW5zYWZlSHRtbCkpO1xufVxuXG4vKipcbiAqIEEgYHN0eWxlYCBzYW5pdGl6ZXIgd2hpY2ggY29udmVydHMgdW50cnVzdGVkIGBzdHlsZWAgKipzdHJpbmcqKiBpbnRvIHRydXN0ZWQgc3RyaW5nIGJ5IHJlbW92aW5nXG4gKiBkYW5nZXJvdXMgY29udGVudC5cbiAqXG4gKiBJdCBpcyBwb3NzaWJsZSB0byBtYXJrIGEgc3RyaW5nIGFzIHRydXN0ZWQgYnkgY2FsbGluZyB7QGxpbmsgYnlwYXNzU2FuaXRpemF0aW9uVHJ1c3RTdHlsZX0uXG4gKlxuICogQHBhcmFtIHVuc2FmZVN0eWxlIHVudHJ1c3RlZCBgc3R5bGVgLCB0eXBpY2FsbHkgZnJvbSB0aGUgdXNlci5cbiAqIEByZXR1cm5zIGBzdHlsZWAgc3RyaW5nIHdoaWNoIGlzIHNhZmUgdG8gYmluZCB0byB0aGUgYHN0eWxlYCBwcm9wZXJ0aWVzLlxuICpcbiAqIEBjb2RlR2VuQXBpXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiDJtcm1c2FuaXRpemVTdHlsZSh1bnNhZmVTdHlsZTogYW55KTogc3RyaW5nIHtcbiAgY29uc3Qgc2FuaXRpemVyID0gZ2V0U2FuaXRpemVyKCk7XG4gIGlmIChzYW5pdGl6ZXIpIHtcbiAgICByZXR1cm4gc2FuaXRpemVyLnNhbml0aXplKFNlY3VyaXR5Q29udGV4dC5TVFlMRSwgdW5zYWZlU3R5bGUpIHx8ICcnO1xuICB9XG4gIGlmIChhbGxvd1Nhbml0aXphdGlvbkJ5cGFzc0FuZFRocm93KHVuc2FmZVN0eWxlLCBCeXBhc3NUeXBlLlN0eWxlKSkge1xuICAgIHJldHVybiB1bndyYXBTYWZlVmFsdWUodW5zYWZlU3R5bGUpO1xuICB9XG4gIHJldHVybiByZW5kZXJTdHJpbmdpZnkodW5zYWZlU3R5bGUpO1xufVxuXG4vKipcbiAqIEEgYHVybGAgc2FuaXRpemVyIHdoaWNoIGNvbnZlcnRzIHVudHJ1c3RlZCBgdXJsYCAqKnN0cmluZyoqIGludG8gdHJ1c3RlZCBzdHJpbmcgYnkgcmVtb3ZpbmdcbiAqIGRhbmdlcm91c1xuICogY29udGVudC5cbiAqXG4gKiBUaGlzIG1ldGhvZCBwYXJzZXMgdGhlIGB1cmxgIGFuZCBsb2NhdGVzIHBvdGVudGlhbGx5IGRhbmdlcm91cyBjb250ZW50IChzdWNoIGFzIGphdmFzY3JpcHQpIGFuZFxuICogcmVtb3ZlcyBpdC5cbiAqXG4gKiBJdCBpcyBwb3NzaWJsZSB0byBtYXJrIGEgc3RyaW5nIGFzIHRydXN0ZWQgYnkgY2FsbGluZyB7QGxpbmsgYnlwYXNzU2FuaXRpemF0aW9uVHJ1c3RVcmx9LlxuICpcbiAqIEBwYXJhbSB1bnNhZmVVcmwgdW50cnVzdGVkIGB1cmxgLCB0eXBpY2FsbHkgZnJvbSB0aGUgdXNlci5cbiAqIEByZXR1cm5zIGB1cmxgIHN0cmluZyB3aGljaCBpcyBzYWZlIHRvIGJpbmQgdG8gdGhlIGBzcmNgIHByb3BlcnRpZXMgc3VjaCBhcyBgPGltZyBzcmM+YCwgYmVjYXVzZVxuICogYWxsIG9mIHRoZSBkYW5nZXJvdXMgamF2YXNjcmlwdCBoYXMgYmVlbiByZW1vdmVkLlxuICpcbiAqIEBjb2RlR2VuQXBpXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiDJtcm1c2FuaXRpemVVcmwodW5zYWZlVXJsOiBhbnkpOiBzdHJpbmcge1xuICBjb25zdCBzYW5pdGl6ZXIgPSBnZXRTYW5pdGl6ZXIoKTtcbiAgaWYgKHNhbml0aXplcikge1xuICAgIHJldHVybiBzYW5pdGl6ZXIuc2FuaXRpemUoU2VjdXJpdHlDb250ZXh0LlVSTCwgdW5zYWZlVXJsKSB8fCAnJztcbiAgfVxuICBpZiAoYWxsb3dTYW5pdGl6YXRpb25CeXBhc3NBbmRUaHJvdyh1bnNhZmVVcmwsIEJ5cGFzc1R5cGUuVXJsKSkge1xuICAgIHJldHVybiB1bndyYXBTYWZlVmFsdWUodW5zYWZlVXJsKTtcbiAgfVxuICByZXR1cm4gX3Nhbml0aXplVXJsKHJlbmRlclN0cmluZ2lmeSh1bnNhZmVVcmwpKTtcbn1cblxuLyoqXG4gKiBBIGB1cmxgIHNhbml0aXplciB3aGljaCBvbmx5IGxldHMgdHJ1c3RlZCBgdXJsYHMgdGhyb3VnaC5cbiAqXG4gKiBUaGlzIHBhc3NlcyBvbmx5IGB1cmxgcyBtYXJrZWQgdHJ1c3RlZCBieSBjYWxsaW5nIHtAbGluayBieXBhc3NTYW5pdGl6YXRpb25UcnVzdFJlc291cmNlVXJsfS5cbiAqXG4gKiBAcGFyYW0gdW5zYWZlUmVzb3VyY2VVcmwgdW50cnVzdGVkIGB1cmxgLCB0eXBpY2FsbHkgZnJvbSB0aGUgdXNlci5cbiAqIEByZXR1cm5zIGB1cmxgIHN0cmluZyB3aGljaCBpcyBzYWZlIHRvIGJpbmQgdG8gdGhlIGBzcmNgIHByb3BlcnRpZXMgc3VjaCBhcyBgPGltZyBzcmM+YCwgYmVjYXVzZVxuICogb25seSB0cnVzdGVkIGB1cmxgcyBoYXZlIGJlZW4gYWxsb3dlZCB0byBwYXNzLlxuICpcbiAqIEBjb2RlR2VuQXBpXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiDJtcm1c2FuaXRpemVSZXNvdXJjZVVybCh1bnNhZmVSZXNvdXJjZVVybDogYW55KTogc3RyaW5nIHtcbiAgY29uc3Qgc2FuaXRpemVyID0gZ2V0U2FuaXRpemVyKCk7XG4gIGlmIChzYW5pdGl6ZXIpIHtcbiAgICByZXR1cm4gc2FuaXRpemVyLnNhbml0aXplKFNlY3VyaXR5Q29udGV4dC5SRVNPVVJDRV9VUkwsIHVuc2FmZVJlc291cmNlVXJsKSB8fCAnJztcbiAgfVxuICBpZiAoYWxsb3dTYW5pdGl6YXRpb25CeXBhc3NBbmRUaHJvdyh1bnNhZmVSZXNvdXJjZVVybCwgQnlwYXNzVHlwZS5SZXNvdXJjZVVybCkpIHtcbiAgICByZXR1cm4gdW53cmFwU2FmZVZhbHVlKHVuc2FmZVJlc291cmNlVXJsKTtcbiAgfVxuICB0aHJvdyBuZXcgRXJyb3IoJ3Vuc2FmZSB2YWx1ZSB1c2VkIGluIGEgcmVzb3VyY2UgVVJMIGNvbnRleHQgKHNlZSBodHRwOi8vZy5jby9uZy9zZWN1cml0eSN4c3MpJyk7XG59XG5cbi8qKlxuICogQSBgc2NyaXB0YCBzYW5pdGl6ZXIgd2hpY2ggb25seSBsZXRzIHRydXN0ZWQgamF2YXNjcmlwdCB0aHJvdWdoLlxuICpcbiAqIFRoaXMgcGFzc2VzIG9ubHkgYHNjcmlwdGBzIG1hcmtlZCB0cnVzdGVkIGJ5IGNhbGxpbmcge0BsaW5rXG4gKiBieXBhc3NTYW5pdGl6YXRpb25UcnVzdFNjcmlwdH0uXG4gKlxuICogQHBhcmFtIHVuc2FmZVNjcmlwdCB1bnRydXN0ZWQgYHNjcmlwdGAsIHR5cGljYWxseSBmcm9tIHRoZSB1c2VyLlxuICogQHJldHVybnMgYHVybGAgc3RyaW5nIHdoaWNoIGlzIHNhZmUgdG8gYmluZCB0byB0aGUgYDxzY3JpcHQ+YCBlbGVtZW50IHN1Y2ggYXMgYDxpbWcgc3JjPmAsXG4gKiBiZWNhdXNlIG9ubHkgdHJ1c3RlZCBgc2NyaXB0c2AgaGF2ZSBiZWVuIGFsbG93ZWQgdG8gcGFzcy5cbiAqXG4gKiBAY29kZUdlbkFwaVxuICovXG5leHBvcnQgZnVuY3Rpb24gybXJtXNhbml0aXplU2NyaXB0KHVuc2FmZVNjcmlwdDogYW55KTogc3RyaW5nIHtcbiAgY29uc3Qgc2FuaXRpemVyID0gZ2V0U2FuaXRpemVyKCk7XG4gIGlmIChzYW5pdGl6ZXIpIHtcbiAgICByZXR1cm4gc2FuaXRpemVyLnNhbml0aXplKFNlY3VyaXR5Q29udGV4dC5TQ1JJUFQsIHVuc2FmZVNjcmlwdCkgfHwgJyc7XG4gIH1cbiAgaWYgKGFsbG93U2FuaXRpemF0aW9uQnlwYXNzQW5kVGhyb3codW5zYWZlU2NyaXB0LCBCeXBhc3NUeXBlLlNjcmlwdCkpIHtcbiAgICByZXR1cm4gdW53cmFwU2FmZVZhbHVlKHVuc2FmZVNjcmlwdCk7XG4gIH1cbiAgdGhyb3cgbmV3IEVycm9yKCd1bnNhZmUgdmFsdWUgdXNlZCBpbiBhIHNjcmlwdCBjb250ZXh0Jyk7XG59XG5cbi8qKlxuICogRGV0ZWN0cyB3aGljaCBzYW5pdGl6ZXIgdG8gdXNlIGZvciBVUkwgcHJvcGVydHksIGJhc2VkIG9uIHRhZyBuYW1lIGFuZCBwcm9wIG5hbWUuXG4gKlxuICogVGhlIHJ1bGVzIGFyZSBiYXNlZCBvbiB0aGUgUkVTT1VSQ0VfVVJMIGNvbnRleHQgY29uZmlnIGZyb21cbiAqIGBwYWNrYWdlcy9jb21waWxlci9zcmMvc2NoZW1hL2RvbV9zZWN1cml0eV9zY2hlbWEudHNgLlxuICogSWYgdGFnIGFuZCBwcm9wIG5hbWVzIGRvbid0IG1hdGNoIFJlc291cmNlIFVSTCBzY2hlbWEsIHVzZSBVUkwgc2FuaXRpemVyLlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0VXJsU2FuaXRpemVyKHRhZzogc3RyaW5nLCBwcm9wOiBzdHJpbmcpIHtcbiAgaWYgKChwcm9wID09PSAnc3JjJyAmJlxuICAgICAgICh0YWcgPT09ICdlbWJlZCcgfHwgdGFnID09PSAnZnJhbWUnIHx8IHRhZyA9PT0gJ2lmcmFtZScgfHwgdGFnID09PSAnbWVkaWEnIHx8XG4gICAgICAgIHRhZyA9PT0gJ3NjcmlwdCcpKSB8fFxuICAgICAgKHByb3AgPT09ICdocmVmJyAmJiAodGFnID09PSAnYmFzZScgfHwgdGFnID09PSAnbGluaycpKSkge1xuICAgIHJldHVybiDJtcm1c2FuaXRpemVSZXNvdXJjZVVybDtcbiAgfVxuICByZXR1cm4gybXJtXNhbml0aXplVXJsO1xufVxuXG4vKipcbiAqIFNhbml0aXplcyBVUkwsIHNlbGVjdGluZyBzYW5pdGl6ZXIgZnVuY3Rpb24gYmFzZWQgb24gdGFnIGFuZCBwcm9wZXJ0eSBuYW1lcy5cbiAqXG4gKiBUaGlzIGZ1bmN0aW9uIGlzIHVzZWQgaW4gY2FzZSB3ZSBjYW4ndCBkZWZpbmUgc2VjdXJpdHkgY29udGV4dCBhdCBjb21waWxlIHRpbWUsIHdoZW4gb25seSBwcm9wXG4gKiBuYW1lIGlzIGF2YWlsYWJsZS4gVGhpcyBoYXBwZW5zIHdoZW4gd2UgZ2VuZXJhdGUgaG9zdCBiaW5kaW5ncyBmb3IgRGlyZWN0aXZlcy9Db21wb25lbnRzLiBUaGVcbiAqIGhvc3QgZWxlbWVudCBpcyB1bmtub3duIGF0IGNvbXBpbGUgdGltZSwgc28gd2UgZGVmZXIgY2FsY3VsYXRpb24gb2Ygc3BlY2lmaWMgc2FuaXRpemVyIHRvXG4gKiBydW50aW1lLlxuICpcbiAqIEBwYXJhbSB1bnNhZmVVcmwgdW50cnVzdGVkIGB1cmxgLCB0eXBpY2FsbHkgZnJvbSB0aGUgdXNlci5cbiAqIEBwYXJhbSB0YWcgdGFyZ2V0IGVsZW1lbnQgdGFnIG5hbWUuXG4gKiBAcGFyYW0gcHJvcCBuYW1lIG9mIHRoZSBwcm9wZXJ0eSB0aGF0IGNvbnRhaW5zIHRoZSB2YWx1ZS5cbiAqIEByZXR1cm5zIGB1cmxgIHN0cmluZyB3aGljaCBpcyBzYWZlIHRvIGJpbmQuXG4gKlxuICogQGNvZGVHZW5BcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIMm1ybVzYW5pdGl6ZVVybE9yUmVzb3VyY2VVcmwodW5zYWZlVXJsOiBhbnksIHRhZzogc3RyaW5nLCBwcm9wOiBzdHJpbmcpOiBhbnkge1xuICByZXR1cm4gZ2V0VXJsU2FuaXRpemVyKHRhZywgcHJvcCkodW5zYWZlVXJsKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHZhbGlkYXRlQWdhaW5zdEV2ZW50UHJvcGVydGllcyhuYW1lOiBzdHJpbmcpIHtcbiAgaWYgKG5hbWUudG9Mb3dlckNhc2UoKS5zdGFydHNXaXRoKCdvbicpKSB7XG4gICAgY29uc3QgbXNnID0gYEJpbmRpbmcgdG8gZXZlbnQgcHJvcGVydHkgJyR7bmFtZX0nIGlzIGRpc2FsbG93ZWQgZm9yIHNlY3VyaXR5IHJlYXNvbnMsIGAgK1xuICAgICAgICBgcGxlYXNlIHVzZSAoJHtuYW1lLnNsaWNlKDIpfSk9Li4uYCArXG4gICAgICAgIGBcXG5JZiAnJHtuYW1lfScgaXMgYSBkaXJlY3RpdmUgaW5wdXQsIG1ha2Ugc3VyZSB0aGUgZGlyZWN0aXZlIGlzIGltcG9ydGVkIGJ5IHRoZWAgK1xuICAgICAgICBgIGN1cnJlbnQgbW9kdWxlLmA7XG4gICAgdGhyb3cgbmV3IEVycm9yKG1zZyk7XG4gIH1cbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHZhbGlkYXRlQWdhaW5zdEV2ZW50QXR0cmlidXRlcyhuYW1lOiBzdHJpbmcpIHtcbiAgaWYgKG5hbWUudG9Mb3dlckNhc2UoKS5zdGFydHNXaXRoKCdvbicpKSB7XG4gICAgY29uc3QgbXNnID0gYEJpbmRpbmcgdG8gZXZlbnQgYXR0cmlidXRlICcke25hbWV9JyBpcyBkaXNhbGxvd2VkIGZvciBzZWN1cml0eSByZWFzb25zLCBgICtcbiAgICAgICAgYHBsZWFzZSB1c2UgKCR7bmFtZS5zbGljZSgyKX0pPS4uLmA7XG4gICAgdGhyb3cgbmV3IEVycm9yKG1zZyk7XG4gIH1cbn1cblxuZnVuY3Rpb24gZ2V0U2FuaXRpemVyKCk6IFNhbml0aXplcnxudWxsIHtcbiAgY29uc3QgbFZpZXcgPSBnZXRMVmlldygpO1xuICByZXR1cm4gbFZpZXcgJiYgbFZpZXdbU0FOSVRJWkVSXTtcbn1cbiJdfQ==