/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/core/schematics/utils/typescript/nodes", ["require", "exports"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.hasModifier = void 0;
    /** Checks whether the given TypeScript node has the specified modifier set. */
    function hasModifier(node, modifierKind) {
        return !!node.modifiers && node.modifiers.some(m => m.kind === modifierKind);
    }
    exports.hasModifier = hasModifier;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibm9kZXMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NjaGVtYXRpY3MvdXRpbHMvdHlwZXNjcmlwdC9ub2Rlcy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7SUFJSCwrRUFBK0U7SUFDL0UsU0FBZ0IsV0FBVyxDQUFDLElBQWEsRUFBRSxZQUEyQjtRQUNwRSxPQUFPLENBQUMsQ0FBQyxJQUFJLENBQUMsU0FBUyxJQUFJLElBQUksQ0FBQyxTQUFTLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLElBQUksS0FBSyxZQUFZLENBQUMsQ0FBQztJQUMvRSxDQUFDO0lBRkQsa0NBRUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbi8qKiBDaGVja3Mgd2hldGhlciB0aGUgZ2l2ZW4gVHlwZVNjcmlwdCBub2RlIGhhcyB0aGUgc3BlY2lmaWVkIG1vZGlmaWVyIHNldC4gKi9cbmV4cG9ydCBmdW5jdGlvbiBoYXNNb2RpZmllcihub2RlOiB0cy5Ob2RlLCBtb2RpZmllcktpbmQ6IHRzLlN5bnRheEtpbmQpIHtcbiAgcmV0dXJuICEhbm9kZS5tb2RpZmllcnMgJiYgbm9kZS5tb2RpZmllcnMuc29tZShtID0+IG0ua2luZCA9PT0gbW9kaWZpZXJLaW5kKTtcbn1cbiJdfQ==