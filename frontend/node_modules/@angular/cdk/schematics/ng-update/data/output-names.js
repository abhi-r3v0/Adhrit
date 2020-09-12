"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.outputNames = void 0;
const target_version_1 = require("../../update-tool/target-version");
exports.outputNames = {
    [target_version_1.TargetVersion.V10]: [
        {
            pr: 'https://github.com/angular/components/pull/19362',
            changes: [{
                    replace: 'copied',
                    replaceWith: 'cdkCopyToClipboardCopied',
                    whitelist: {
                        attributes: ['cdkCopyToClipboard']
                    }
                }]
        }
    ],
    [target_version_1.TargetVersion.V6]: [],
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoib3V0cHV0LW5hbWVzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9zY2hlbWF0aWNzL25nLXVwZGF0ZS9kYXRhL291dHB1dC1uYW1lcy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUE7Ozs7OztHQU1HOzs7QUFFSCxxRUFBK0Q7QUFpQmxELFFBQUEsV0FBVyxHQUEwQztJQUNoRSxDQUFDLDhCQUFhLENBQUMsR0FBRyxDQUFDLEVBQUU7UUFDbkI7WUFDRSxFQUFFLEVBQUUsa0RBQWtEO1lBQ3RELE9BQU8sRUFBRSxDQUFDO29CQUNSLE9BQU8sRUFBRSxRQUFRO29CQUNqQixXQUFXLEVBQUUsMEJBQTBCO29CQUN2QyxTQUFTLEVBQUU7d0JBQ1QsVUFBVSxFQUFFLENBQUMsb0JBQW9CLENBQUM7cUJBQ25DO2lCQUNGLENBQUM7U0FDSDtLQUNGO0lBQ0QsQ0FBQyw4QkFBYSxDQUFDLEVBQUUsQ0FBQyxFQUFFLEVBQUU7Q0FDdkIsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1RhcmdldFZlcnNpb259IGZyb20gJy4uLy4uL3VwZGF0ZS10b29sL3RhcmdldC12ZXJzaW9uJztcbmltcG9ydCB7VmVyc2lvbkNoYW5nZXN9IGZyb20gJy4uLy4uL3VwZGF0ZS10b29sL3ZlcnNpb24tY2hhbmdlcyc7XG5cbmV4cG9ydCBpbnRlcmZhY2UgT3V0cHV0TmFtZVVwZ3JhZGVEYXRhIHtcbiAgLyoqIFRoZSBAT3V0cHV0KCkgbmFtZSB0byByZXBsYWNlLiAqL1xuICByZXBsYWNlOiBzdHJpbmc7XG4gIC8qKiBUaGUgbmV3IG5hbWUgZm9yIHRoZSBAT3V0cHV0KCkuICovXG4gIHJlcGxhY2VXaXRoOiBzdHJpbmc7XG4gIC8qKiBXaGl0ZWxpc3Qgd2hlcmUgdGhpcyByZXBsYWNlbWVudCBpcyBtYWRlLiBJZiBvbWl0dGVkIGl0IGlzIG1hZGUgaW4gYWxsIEhUTUwgJiBDU1MgKi9cbiAgd2hpdGVsaXN0OiB7XG4gICAgLyoqIExpbWl0IHRvIGVsZW1lbnRzIHdpdGggYW55IG9mIHRoZXNlIGVsZW1lbnQgdGFncy4gKi9cbiAgICBlbGVtZW50cz86IHN0cmluZ1tdLFxuICAgIC8qKiBMaW1pdCB0byBlbGVtZW50cyB3aXRoIGFueSBvZiB0aGVzZSBhdHRyaWJ1dGVzLiAqL1xuICAgIGF0dHJpYnV0ZXM/OiBzdHJpbmdbXSxcbiAgfTtcbn1cblxuZXhwb3J0IGNvbnN0IG91dHB1dE5hbWVzOiBWZXJzaW9uQ2hhbmdlczxPdXRwdXROYW1lVXBncmFkZURhdGE+ID0ge1xuICBbVGFyZ2V0VmVyc2lvbi5WMTBdOiBbXG4gICAge1xuICAgICAgcHI6ICdodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9jb21wb25lbnRzL3B1bGwvMTkzNjInLFxuICAgICAgY2hhbmdlczogW3tcbiAgICAgICAgcmVwbGFjZTogJ2NvcGllZCcsXG4gICAgICAgIHJlcGxhY2VXaXRoOiAnY2RrQ29weVRvQ2xpcGJvYXJkQ29waWVkJyxcbiAgICAgICAgd2hpdGVsaXN0OiB7XG4gICAgICAgICAgYXR0cmlidXRlczogWydjZGtDb3B5VG9DbGlwYm9hcmQnXVxuICAgICAgICB9XG4gICAgICB9XVxuICAgIH1cbiAgXSxcbiAgW1RhcmdldFZlcnNpb24uVjZdOiBbXSxcbn07XG4iXX0=