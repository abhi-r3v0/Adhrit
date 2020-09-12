(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler/src/i18n/index", ["require", "exports", "@angular/compiler/src/i18n/digest", "@angular/compiler/src/i18n/extractor", "@angular/compiler/src/i18n/i18n_html_parser", "@angular/compiler/src/i18n/message_bundle", "@angular/compiler/src/i18n/serializers/serializer", "@angular/compiler/src/i18n/serializers/xliff", "@angular/compiler/src/i18n/serializers/xliff2", "@angular/compiler/src/i18n/serializers/xmb", "@angular/compiler/src/i18n/serializers/xtb"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var digest_1 = require("@angular/compiler/src/i18n/digest");
    Object.defineProperty(exports, "computeMsgId", { enumerable: true, get: function () { return digest_1.computeMsgId; } });
    var extractor_1 = require("@angular/compiler/src/i18n/extractor");
    Object.defineProperty(exports, "Extractor", { enumerable: true, get: function () { return extractor_1.Extractor; } });
    var i18n_html_parser_1 = require("@angular/compiler/src/i18n/i18n_html_parser");
    Object.defineProperty(exports, "I18NHtmlParser", { enumerable: true, get: function () { return i18n_html_parser_1.I18NHtmlParser; } });
    var message_bundle_1 = require("@angular/compiler/src/i18n/message_bundle");
    Object.defineProperty(exports, "MessageBundle", { enumerable: true, get: function () { return message_bundle_1.MessageBundle; } });
    var serializer_1 = require("@angular/compiler/src/i18n/serializers/serializer");
    Object.defineProperty(exports, "Serializer", { enumerable: true, get: function () { return serializer_1.Serializer; } });
    var xliff_1 = require("@angular/compiler/src/i18n/serializers/xliff");
    Object.defineProperty(exports, "Xliff", { enumerable: true, get: function () { return xliff_1.Xliff; } });
    var xliff2_1 = require("@angular/compiler/src/i18n/serializers/xliff2");
    Object.defineProperty(exports, "Xliff2", { enumerable: true, get: function () { return xliff2_1.Xliff2; } });
    var xmb_1 = require("@angular/compiler/src/i18n/serializers/xmb");
    Object.defineProperty(exports, "Xmb", { enumerable: true, get: function () { return xmb_1.Xmb; } });
    var xtb_1 = require("@angular/compiler/src/i18n/serializers/xtb");
    Object.defineProperty(exports, "Xtb", { enumerable: true, get: function () { return xtb_1.Xtb; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci9zcmMvaTE4bi9pbmRleC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7OztJQUFBOzs7Ozs7T0FNRztJQUNILDREQUFzQztJQUE5QixzR0FBQSxZQUFZLE9BQUE7SUFDcEIsa0VBQXFEO0lBQTdDLHNHQUFBLFNBQVMsT0FBQTtJQUNqQixnRkFBa0Q7SUFBMUMsa0hBQUEsY0FBYyxPQUFBO0lBQ3RCLDRFQUErQztJQUF2QywrR0FBQSxhQUFhLE9BQUE7SUFDckIsZ0ZBQW9EO0lBQTVDLHdHQUFBLFVBQVUsT0FBQTtJQUNsQixzRUFBMEM7SUFBbEMsOEZBQUEsS0FBSyxPQUFBO0lBQ2Isd0VBQTRDO0lBQXBDLGdHQUFBLE1BQU0sT0FBQTtJQUNkLGtFQUFzQztJQUE5QiwwRkFBQSxHQUFHLE9BQUE7SUFDWCxrRUFBc0M7SUFBOUIsMEZBQUEsR0FBRyxPQUFBIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5leHBvcnQge2NvbXB1dGVNc2dJZH0gZnJvbSAnLi9kaWdlc3QnO1xuZXhwb3J0IHtFeHRyYWN0b3IsIEV4dHJhY3Rvckhvc3R9IGZyb20gJy4vZXh0cmFjdG9yJztcbmV4cG9ydCB7STE4Tkh0bWxQYXJzZXJ9IGZyb20gJy4vaTE4bl9odG1sX3BhcnNlcic7XG5leHBvcnQge01lc3NhZ2VCdW5kbGV9IGZyb20gJy4vbWVzc2FnZV9idW5kbGUnO1xuZXhwb3J0IHtTZXJpYWxpemVyfSBmcm9tICcuL3NlcmlhbGl6ZXJzL3NlcmlhbGl6ZXInO1xuZXhwb3J0IHtYbGlmZn0gZnJvbSAnLi9zZXJpYWxpemVycy94bGlmZic7XG5leHBvcnQge1hsaWZmMn0gZnJvbSAnLi9zZXJpYWxpemVycy94bGlmZjInO1xuZXhwb3J0IHtYbWJ9IGZyb20gJy4vc2VyaWFsaXplcnMveG1iJztcbmV4cG9ydCB7WHRifSBmcm9tICcuL3NlcmlhbGl6ZXJzL3h0Yic7XG4iXX0=