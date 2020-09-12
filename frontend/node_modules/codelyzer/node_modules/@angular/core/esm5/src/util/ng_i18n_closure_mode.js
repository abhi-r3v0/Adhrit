/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { global } from './global';
/**
 * NOTE: changes to the `ngI18nClosureMode` name must be synced with `compiler-cli/src/tooling.ts`.
 */
if (typeof ngI18nClosureMode === 'undefined') {
    // These property accesses can be ignored because ngI18nClosureMode will be set to false
    // when optimizing code and the whole if statement will be dropped.
    // Make sure to refer to ngI18nClosureMode as ['ngI18nClosureMode'] for closure.
    // NOTE: we need to have it in IIFE so that the tree-shaker is happy.
    (function () {
        // tslint:disable-next-line:no-toplevel-property-access
        global['ngI18nClosureMode'] =
            // TODO(FW-1250): validate that this actually, you know, works.
            // tslint:disable-next-line:no-toplevel-property-access
            typeof goog !== 'undefined' && typeof goog.getMsg === 'function';
    })();
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmdfaTE4bl9jbG9zdXJlX21vZGUuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy91dGlsL25nX2kxOG5fY2xvc3VyZV9tb2RlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBQyxNQUFNLEVBQUMsTUFBTSxVQUFVLENBQUM7QUFTaEM7O0dBRUc7QUFDSCxJQUFJLE9BQU8saUJBQWlCLEtBQUssV0FBVyxFQUFFO0lBQzVDLHdGQUF3RjtJQUN4RixtRUFBbUU7SUFDbkUsZ0ZBQWdGO0lBQ2hGLHFFQUFxRTtJQUNyRSxDQUFDO1FBQ0MsdURBQXVEO1FBQ3ZELE1BQU0sQ0FBQyxtQkFBbUIsQ0FBQztZQUN2QiwrREFBK0Q7WUFDL0QsdURBQXVEO1lBQ3ZELE9BQU8sSUFBSSxLQUFLLFdBQVcsSUFBSSxPQUFPLElBQUksQ0FBQyxNQUFNLEtBQUssVUFBVSxDQUFDO0lBQ3ZFLENBQUMsQ0FBQyxFQUFFLENBQUM7Q0FDTiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtnbG9iYWx9IGZyb20gJy4vZ2xvYmFsJztcblxuLy8gRG8gbm90IHJlbW92ZTogbmVlZGVkIGZvciBjbG9zdXJlIHRvIGJlIGFibGUgdG8gcHJvcGVybHkgdHJlZS1zaGFrZSBuZ0kxOG5DbG9zdXJlTW9kZS5cbi8vIGdvb2cuZGVmaW5lXG5cbmRlY2xhcmUgZ2xvYmFsIHtcbiAgY29uc3QgbmdJMThuQ2xvc3VyZU1vZGU6IGJvb2xlYW47XG59XG5cbi8qKlxuICogTk9URTogY2hhbmdlcyB0byB0aGUgYG5nSTE4bkNsb3N1cmVNb2RlYCBuYW1lIG11c3QgYmUgc3luY2VkIHdpdGggYGNvbXBpbGVyLWNsaS9zcmMvdG9vbGluZy50c2AuXG4gKi9cbmlmICh0eXBlb2YgbmdJMThuQ2xvc3VyZU1vZGUgPT09ICd1bmRlZmluZWQnKSB7XG4gIC8vIFRoZXNlIHByb3BlcnR5IGFjY2Vzc2VzIGNhbiBiZSBpZ25vcmVkIGJlY2F1c2UgbmdJMThuQ2xvc3VyZU1vZGUgd2lsbCBiZSBzZXQgdG8gZmFsc2VcbiAgLy8gd2hlbiBvcHRpbWl6aW5nIGNvZGUgYW5kIHRoZSB3aG9sZSBpZiBzdGF0ZW1lbnQgd2lsbCBiZSBkcm9wcGVkLlxuICAvLyBNYWtlIHN1cmUgdG8gcmVmZXIgdG8gbmdJMThuQ2xvc3VyZU1vZGUgYXMgWyduZ0kxOG5DbG9zdXJlTW9kZSddIGZvciBjbG9zdXJlLlxuICAvLyBOT1RFOiB3ZSBuZWVkIHRvIGhhdmUgaXQgaW4gSUlGRSBzbyB0aGF0IHRoZSB0cmVlLXNoYWtlciBpcyBoYXBweS5cbiAgKGZ1bmN0aW9uKCkge1xuICAgIC8vIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTpuby10b3BsZXZlbC1wcm9wZXJ0eS1hY2Nlc3NcbiAgICBnbG9iYWxbJ25nSTE4bkNsb3N1cmVNb2RlJ10gPVxuICAgICAgICAvLyBUT0RPKEZXLTEyNTApOiB2YWxpZGF0ZSB0aGF0IHRoaXMgYWN0dWFsbHksIHlvdSBrbm93LCB3b3Jrcy5cbiAgICAgICAgLy8gdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOm5vLXRvcGxldmVsLXByb3BlcnR5LWFjY2Vzc1xuICAgICAgICB0eXBlb2YgZ29vZyAhPT0gJ3VuZGVmaW5lZCcgJiYgdHlwZW9mIGdvb2cuZ2V0TXNnID09PSAnZnVuY3Rpb24nO1xuICB9KSgpO1xufVxuIl19