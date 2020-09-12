/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __values } from "tslib";
import { SecurityContext } from '../core';
// =================================================================================================
// =================================================================================================
// =========== S T O P   -  S T O P   -  S T O P   -  S T O P   -  S T O P   -  S T O P  ===========
// =================================================================================================
// =================================================================================================
//
//        DO NOT EDIT THIS LIST OF SECURITY SENSITIVE PROPERTIES WITHOUT A SECURITY REVIEW!
//                               Reach out to mprobst for details.
//
// =================================================================================================
/** Map from tagName|propertyName SecurityContext. Properties applying to all tags use '*'. */
var _SECURITY_SCHEMA;
export function SECURITY_SCHEMA() {
    if (!_SECURITY_SCHEMA) {
        _SECURITY_SCHEMA = {};
        // Case is insignificant below, all element and attribute names are lower-cased for lookup.
        registerContext(SecurityContext.HTML, [
            'iframe|srcdoc',
            '*|innerHTML',
            '*|outerHTML',
        ]);
        registerContext(SecurityContext.STYLE, ['*|style']);
        // NB: no SCRIPT contexts here, they are never allowed due to the parser stripping them.
        registerContext(SecurityContext.URL, [
            '*|formAction', 'area|href', 'area|ping', 'audio|src', 'a|href',
            'a|ping', 'blockquote|cite', 'body|background', 'del|cite', 'form|action',
            'img|src', 'img|srcset', 'input|src', 'ins|cite', 'q|cite',
            'source|src', 'source|srcset', 'track|src', 'video|poster', 'video|src',
        ]);
        registerContext(SecurityContext.RESOURCE_URL, [
            'applet|code',
            'applet|codebase',
            'base|href',
            'embed|src',
            'frame|src',
            'head|profile',
            'html|manifest',
            'iframe|src',
            'link|href',
            'media|src',
            'object|codebase',
            'object|data',
            'script|src',
        ]);
    }
    return _SECURITY_SCHEMA;
}
function registerContext(ctx, specs) {
    var e_1, _a;
    try {
        for (var specs_1 = __values(specs), specs_1_1 = specs_1.next(); !specs_1_1.done; specs_1_1 = specs_1.next()) {
            var spec = specs_1_1.value;
            _SECURITY_SCHEMA[spec.toLowerCase()] = ctx;
        }
    }
    catch (e_1_1) { e_1 = { error: e_1_1 }; }
    finally {
        try {
            if (specs_1_1 && !specs_1_1.done && (_a = specs_1.return)) _a.call(specs_1);
        }
        finally { if (e_1) throw e_1.error; }
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZG9tX3NlY3VyaXR5X3NjaGVtYS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9zY2hlbWEvZG9tX3NlY3VyaXR5X3NjaGVtYS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7O0FBRUgsT0FBTyxFQUFDLGVBQWUsRUFBQyxNQUFNLFNBQVMsQ0FBQztBQUV4QyxvR0FBb0c7QUFDcEcsb0dBQW9HO0FBQ3BHLG9HQUFvRztBQUNwRyxvR0FBb0c7QUFDcEcsb0dBQW9HO0FBQ3BHLEVBQUU7QUFDRiwyRkFBMkY7QUFDM0Ysa0VBQWtFO0FBQ2xFLEVBQUU7QUFDRixvR0FBb0c7QUFFcEcsOEZBQThGO0FBQzlGLElBQUksZ0JBQWtELENBQUM7QUFFdkQsTUFBTSxVQUFVLGVBQWU7SUFDN0IsSUFBSSxDQUFDLGdCQUFnQixFQUFFO1FBQ3JCLGdCQUFnQixHQUFHLEVBQUUsQ0FBQztRQUN0QiwyRkFBMkY7UUFFM0YsZUFBZSxDQUFDLGVBQWUsQ0FBQyxJQUFJLEVBQUU7WUFDcEMsZUFBZTtZQUNmLGFBQWE7WUFDYixhQUFhO1NBQ2QsQ0FBQyxDQUFDO1FBQ0gsZUFBZSxDQUFDLGVBQWUsQ0FBQyxLQUFLLEVBQUUsQ0FBQyxTQUFTLENBQUMsQ0FBQyxDQUFDO1FBQ3BELHdGQUF3RjtRQUN4RixlQUFlLENBQUMsZUFBZSxDQUFDLEdBQUcsRUFBRTtZQUNuQyxjQUFjLEVBQUUsV0FBVyxFQUFRLFdBQVcsRUFBUSxXQUFXLEVBQUssUUFBUTtZQUM5RSxRQUFRLEVBQVEsaUJBQWlCLEVBQUUsaUJBQWlCLEVBQUUsVUFBVSxFQUFNLGFBQWE7WUFDbkYsU0FBUyxFQUFPLFlBQVksRUFBTyxXQUFXLEVBQVEsVUFBVSxFQUFNLFFBQVE7WUFDOUUsWUFBWSxFQUFJLGVBQWUsRUFBSSxXQUFXLEVBQVEsY0FBYyxFQUFFLFdBQVc7U0FDbEYsQ0FBQyxDQUFDO1FBQ0gsZUFBZSxDQUFDLGVBQWUsQ0FBQyxZQUFZLEVBQUU7WUFDNUMsYUFBYTtZQUNiLGlCQUFpQjtZQUNqQixXQUFXO1lBQ1gsV0FBVztZQUNYLFdBQVc7WUFDWCxjQUFjO1lBQ2QsZUFBZTtZQUNmLFlBQVk7WUFDWixXQUFXO1lBQ1gsV0FBVztZQUNYLGlCQUFpQjtZQUNqQixhQUFhO1lBQ2IsWUFBWTtTQUNiLENBQUMsQ0FBQztLQUNKO0lBQ0QsT0FBTyxnQkFBZ0IsQ0FBQztBQUMxQixDQUFDO0FBRUQsU0FBUyxlQUFlLENBQUMsR0FBb0IsRUFBRSxLQUFlOzs7UUFDNUQsS0FBbUIsSUFBQSxVQUFBLFNBQUEsS0FBSyxDQUFBLDRCQUFBO1lBQW5CLElBQU0sSUFBSSxrQkFBQTtZQUFXLGdCQUFnQixDQUFDLElBQUksQ0FBQyxXQUFXLEVBQUUsQ0FBQyxHQUFHLEdBQUcsQ0FBQztTQUFBOzs7Ozs7Ozs7QUFDdkUsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtTZWN1cml0eUNvbnRleHR9IGZyb20gJy4uL2NvcmUnO1xuXG4vLyA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09XG4vLyA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09XG4vLyA9PT09PT09PT09PSBTIFQgTyBQICAgLSAgUyBUIE8gUCAgIC0gIFMgVCBPIFAgICAtICBTIFQgTyBQICAgLSAgUyBUIE8gUCAgIC0gIFMgVCBPIFAgID09PT09PT09PT09XG4vLyA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09XG4vLyA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09XG4vL1xuLy8gICAgICAgIERPIE5PVCBFRElUIFRISVMgTElTVCBPRiBTRUNVUklUWSBTRU5TSVRJVkUgUFJPUEVSVElFUyBXSVRIT1VUIEEgU0VDVVJJVFkgUkVWSUVXIVxuLy8gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUmVhY2ggb3V0IHRvIG1wcm9ic3QgZm9yIGRldGFpbHMuXG4vL1xuLy8gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PVxuXG4vKiogTWFwIGZyb20gdGFnTmFtZXxwcm9wZXJ0eU5hbWUgU2VjdXJpdHlDb250ZXh0LiBQcm9wZXJ0aWVzIGFwcGx5aW5nIHRvIGFsbCB0YWdzIHVzZSAnKicuICovXG5sZXQgX1NFQ1VSSVRZX1NDSEVNQSAhOiB7W2s6IHN0cmluZ106IFNlY3VyaXR5Q29udGV4dH07XG5cbmV4cG9ydCBmdW5jdGlvbiBTRUNVUklUWV9TQ0hFTUEoKToge1trOiBzdHJpbmddOiBTZWN1cml0eUNvbnRleHR9IHtcbiAgaWYgKCFfU0VDVVJJVFlfU0NIRU1BKSB7XG4gICAgX1NFQ1VSSVRZX1NDSEVNQSA9IHt9O1xuICAgIC8vIENhc2UgaXMgaW5zaWduaWZpY2FudCBiZWxvdywgYWxsIGVsZW1lbnQgYW5kIGF0dHJpYnV0ZSBuYW1lcyBhcmUgbG93ZXItY2FzZWQgZm9yIGxvb2t1cC5cblxuICAgIHJlZ2lzdGVyQ29udGV4dChTZWN1cml0eUNvbnRleHQuSFRNTCwgW1xuICAgICAgJ2lmcmFtZXxzcmNkb2MnLFxuICAgICAgJyp8aW5uZXJIVE1MJyxcbiAgICAgICcqfG91dGVySFRNTCcsXG4gICAgXSk7XG4gICAgcmVnaXN0ZXJDb250ZXh0KFNlY3VyaXR5Q29udGV4dC5TVFlMRSwgWycqfHN0eWxlJ10pO1xuICAgIC8vIE5COiBubyBTQ1JJUFQgY29udGV4dHMgaGVyZSwgdGhleSBhcmUgbmV2ZXIgYWxsb3dlZCBkdWUgdG8gdGhlIHBhcnNlciBzdHJpcHBpbmcgdGhlbS5cbiAgICByZWdpc3RlckNvbnRleHQoU2VjdXJpdHlDb250ZXh0LlVSTCwgW1xuICAgICAgJyp8Zm9ybUFjdGlvbicsICdhcmVhfGhyZWYnLCAgICAgICAnYXJlYXxwaW5nJywgICAgICAgJ2F1ZGlvfHNyYycsICAgICdhfGhyZWYnLFxuICAgICAgJ2F8cGluZycsICAgICAgICdibG9ja3F1b3RlfGNpdGUnLCAnYm9keXxiYWNrZ3JvdW5kJywgJ2RlbHxjaXRlJywgICAgICdmb3JtfGFjdGlvbicsXG4gICAgICAnaW1nfHNyYycsICAgICAgJ2ltZ3xzcmNzZXQnLCAgICAgICdpbnB1dHxzcmMnLCAgICAgICAnaW5zfGNpdGUnLCAgICAgJ3F8Y2l0ZScsXG4gICAgICAnc291cmNlfHNyYycsICAgJ3NvdXJjZXxzcmNzZXQnLCAgICd0cmFja3xzcmMnLCAgICAgICAndmlkZW98cG9zdGVyJywgJ3ZpZGVvfHNyYycsXG4gICAgXSk7XG4gICAgcmVnaXN0ZXJDb250ZXh0KFNlY3VyaXR5Q29udGV4dC5SRVNPVVJDRV9VUkwsIFtcbiAgICAgICdhcHBsZXR8Y29kZScsXG4gICAgICAnYXBwbGV0fGNvZGViYXNlJyxcbiAgICAgICdiYXNlfGhyZWYnLFxuICAgICAgJ2VtYmVkfHNyYycsXG4gICAgICAnZnJhbWV8c3JjJyxcbiAgICAgICdoZWFkfHByb2ZpbGUnLFxuICAgICAgJ2h0bWx8bWFuaWZlc3QnLFxuICAgICAgJ2lmcmFtZXxzcmMnLFxuICAgICAgJ2xpbmt8aHJlZicsXG4gICAgICAnbWVkaWF8c3JjJyxcbiAgICAgICdvYmplY3R8Y29kZWJhc2UnLFxuICAgICAgJ29iamVjdHxkYXRhJyxcbiAgICAgICdzY3JpcHR8c3JjJyxcbiAgICBdKTtcbiAgfVxuICByZXR1cm4gX1NFQ1VSSVRZX1NDSEVNQTtcbn1cblxuZnVuY3Rpb24gcmVnaXN0ZXJDb250ZXh0KGN0eDogU2VjdXJpdHlDb250ZXh0LCBzcGVjczogc3RyaW5nW10pIHtcbiAgZm9yIChjb25zdCBzcGVjIG9mIHNwZWNzKSBfU0VDVVJJVFlfU0NIRU1BW3NwZWMudG9Mb3dlckNhc2UoKV0gPSBjdHg7XG59XG4iXX0=