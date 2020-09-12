/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/**
 * Injection flags for DI.
 *
 * @publicApi
 */
export var InjectFlags;
(function (InjectFlags) {
    // TODO(alxhub): make this 'const' when ngc no longer writes exports of it into ngfactory files.
    /** Check self and check parent injector if needed */
    InjectFlags[InjectFlags["Default"] = 0] = "Default";
    /**
     * Specifies that an injector should retrieve a dependency from any injector until reaching the
     * host element of the current component. (Only used with Element Injector)
     */
    InjectFlags[InjectFlags["Host"] = 1] = "Host";
    /** Don't ascend to ancestors of the node requesting injection. */
    InjectFlags[InjectFlags["Self"] = 2] = "Self";
    /** Skip the node that is requesting injection. */
    InjectFlags[InjectFlags["SkipSelf"] = 4] = "SkipSelf";
    /** Inject `defaultValue` instead if token not found. */
    InjectFlags[InjectFlags["Optional"] = 8] = "Optional";
})(InjectFlags || (InjectFlags = {}));
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5qZWN0b3IuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9kaS9pbnRlcmZhY2UvaW5qZWN0b3IudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBR0g7Ozs7R0FJRztBQUNILE1BQU0sQ0FBTixJQUFZLFdBZ0JYO0FBaEJELFdBQVksV0FBVztJQUNyQixnR0FBZ0c7SUFFaEcscURBQXFEO0lBQ3JELG1EQUFnQixDQUFBO0lBQ2hCOzs7T0FHRztJQUNILDZDQUFhLENBQUE7SUFDYixrRUFBa0U7SUFDbEUsNkNBQWEsQ0FBQTtJQUNiLGtEQUFrRDtJQUNsRCxxREFBaUIsQ0FBQTtJQUNqQix3REFBd0Q7SUFDeEQscURBQWlCLENBQUE7QUFDbkIsQ0FBQyxFQWhCVyxXQUFXLEtBQVgsV0FBVyxRQWdCdEIiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuXG4vKipcbiAqIEluamVjdGlvbiBmbGFncyBmb3IgREkuXG4gKlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgZW51bSBJbmplY3RGbGFncyB7XG4gIC8vIFRPRE8oYWx4aHViKTogbWFrZSB0aGlzICdjb25zdCcgd2hlbiBuZ2Mgbm8gbG9uZ2VyIHdyaXRlcyBleHBvcnRzIG9mIGl0IGludG8gbmdmYWN0b3J5IGZpbGVzLlxuXG4gIC8qKiBDaGVjayBzZWxmIGFuZCBjaGVjayBwYXJlbnQgaW5qZWN0b3IgaWYgbmVlZGVkICovXG4gIERlZmF1bHQgPSAwYjAwMDAsXG4gIC8qKlxuICAgKiBTcGVjaWZpZXMgdGhhdCBhbiBpbmplY3RvciBzaG91bGQgcmV0cmlldmUgYSBkZXBlbmRlbmN5IGZyb20gYW55IGluamVjdG9yIHVudGlsIHJlYWNoaW5nIHRoZVxuICAgKiBob3N0IGVsZW1lbnQgb2YgdGhlIGN1cnJlbnQgY29tcG9uZW50LiAoT25seSB1c2VkIHdpdGggRWxlbWVudCBJbmplY3RvcilcbiAgICovXG4gIEhvc3QgPSAwYjAwMDEsXG4gIC8qKiBEb24ndCBhc2NlbmQgdG8gYW5jZXN0b3JzIG9mIHRoZSBub2RlIHJlcXVlc3RpbmcgaW5qZWN0aW9uLiAqL1xuICBTZWxmID0gMGIwMDEwLFxuICAvKiogU2tpcCB0aGUgbm9kZSB0aGF0IGlzIHJlcXVlc3RpbmcgaW5qZWN0aW9uLiAqL1xuICBTa2lwU2VsZiA9IDBiMDEwMCxcbiAgLyoqIEluamVjdCBgZGVmYXVsdFZhbHVlYCBpbnN0ZWFkIGlmIHRva2VuIG5vdCBmb3VuZC4gKi9cbiAgT3B0aW9uYWwgPSAwYjEwMDAsXG59XG4iXX0=