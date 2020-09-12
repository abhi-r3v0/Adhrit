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
        define("@angular/compiler/src/ml_parser/html_tags", ["require", "exports", "@angular/compiler/src/ml_parser/tags"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.getHtmlTagDefinition = exports.HtmlTagDefinition = void 0;
    var tags_1 = require("@angular/compiler/src/ml_parser/tags");
    var HtmlTagDefinition = /** @class */ (function () {
        function HtmlTagDefinition(_a) {
            var _this = this;
            var _b = _a === void 0 ? {} : _a, closedByChildren = _b.closedByChildren, implicitNamespacePrefix = _b.implicitNamespacePrefix, _c = _b.contentType, contentType = _c === void 0 ? tags_1.TagContentType.PARSABLE_DATA : _c, _d = _b.closedByParent, closedByParent = _d === void 0 ? false : _d, _e = _b.isVoid, isVoid = _e === void 0 ? false : _e, _f = _b.ignoreFirstLf, ignoreFirstLf = _f === void 0 ? false : _f;
            this.closedByChildren = {};
            this.closedByParent = false;
            this.canSelfClose = false;
            if (closedByChildren && closedByChildren.length > 0) {
                closedByChildren.forEach(function (tagName) { return _this.closedByChildren[tagName] = true; });
            }
            this.isVoid = isVoid;
            this.closedByParent = closedByParent || isVoid;
            this.implicitNamespacePrefix = implicitNamespacePrefix || null;
            this.contentType = contentType;
            this.ignoreFirstLf = ignoreFirstLf;
        }
        HtmlTagDefinition.prototype.isClosedByChild = function (name) {
            return this.isVoid || name.toLowerCase() in this.closedByChildren;
        };
        return HtmlTagDefinition;
    }());
    exports.HtmlTagDefinition = HtmlTagDefinition;
    var _DEFAULT_TAG_DEFINITION;
    // see http://www.w3.org/TR/html51/syntax.html#optional-tags
    // This implementation does not fully conform to the HTML5 spec.
    var TAG_DEFINITIONS;
    function getHtmlTagDefinition(tagName) {
        if (!TAG_DEFINITIONS) {
            _DEFAULT_TAG_DEFINITION = new HtmlTagDefinition();
            TAG_DEFINITIONS = {
                'base': new HtmlTagDefinition({ isVoid: true }),
                'meta': new HtmlTagDefinition({ isVoid: true }),
                'area': new HtmlTagDefinition({ isVoid: true }),
                'embed': new HtmlTagDefinition({ isVoid: true }),
                'link': new HtmlTagDefinition({ isVoid: true }),
                'img': new HtmlTagDefinition({ isVoid: true }),
                'input': new HtmlTagDefinition({ isVoid: true }),
                'param': new HtmlTagDefinition({ isVoid: true }),
                'hr': new HtmlTagDefinition({ isVoid: true }),
                'br': new HtmlTagDefinition({ isVoid: true }),
                'source': new HtmlTagDefinition({ isVoid: true }),
                'track': new HtmlTagDefinition({ isVoid: true }),
                'wbr': new HtmlTagDefinition({ isVoid: true }),
                'p': new HtmlTagDefinition({
                    closedByChildren: [
                        'address', 'article', 'aside', 'blockquote', 'div', 'dl', 'fieldset',
                        'footer', 'form', 'h1', 'h2', 'h3', 'h4', 'h5',
                        'h6', 'header', 'hgroup', 'hr', 'main', 'nav', 'ol',
                        'p', 'pre', 'section', 'table', 'ul'
                    ],
                    closedByParent: true
                }),
                'thead': new HtmlTagDefinition({ closedByChildren: ['tbody', 'tfoot'] }),
                'tbody': new HtmlTagDefinition({ closedByChildren: ['tbody', 'tfoot'], closedByParent: true }),
                'tfoot': new HtmlTagDefinition({ closedByChildren: ['tbody'], closedByParent: true }),
                'tr': new HtmlTagDefinition({ closedByChildren: ['tr'], closedByParent: true }),
                'td': new HtmlTagDefinition({ closedByChildren: ['td', 'th'], closedByParent: true }),
                'th': new HtmlTagDefinition({ closedByChildren: ['td', 'th'], closedByParent: true }),
                'col': new HtmlTagDefinition({ isVoid: true }),
                'svg': new HtmlTagDefinition({ implicitNamespacePrefix: 'svg' }),
                'math': new HtmlTagDefinition({ implicitNamespacePrefix: 'math' }),
                'li': new HtmlTagDefinition({ closedByChildren: ['li'], closedByParent: true }),
                'dt': new HtmlTagDefinition({ closedByChildren: ['dt', 'dd'] }),
                'dd': new HtmlTagDefinition({ closedByChildren: ['dt', 'dd'], closedByParent: true }),
                'rb': new HtmlTagDefinition({ closedByChildren: ['rb', 'rt', 'rtc', 'rp'], closedByParent: true }),
                'rt': new HtmlTagDefinition({ closedByChildren: ['rb', 'rt', 'rtc', 'rp'], closedByParent: true }),
                'rtc': new HtmlTagDefinition({ closedByChildren: ['rb', 'rtc', 'rp'], closedByParent: true }),
                'rp': new HtmlTagDefinition({ closedByChildren: ['rb', 'rt', 'rtc', 'rp'], closedByParent: true }),
                'optgroup': new HtmlTagDefinition({ closedByChildren: ['optgroup'], closedByParent: true }),
                'option': new HtmlTagDefinition({ closedByChildren: ['option', 'optgroup'], closedByParent: true }),
                'pre': new HtmlTagDefinition({ ignoreFirstLf: true }),
                'listing': new HtmlTagDefinition({ ignoreFirstLf: true }),
                'style': new HtmlTagDefinition({ contentType: tags_1.TagContentType.RAW_TEXT }),
                'script': new HtmlTagDefinition({ contentType: tags_1.TagContentType.RAW_TEXT }),
                'title': new HtmlTagDefinition({ contentType: tags_1.TagContentType.ESCAPABLE_RAW_TEXT }),
                'textarea': new HtmlTagDefinition({ contentType: tags_1.TagContentType.ESCAPABLE_RAW_TEXT, ignoreFirstLf: true }),
            };
        }
        return TAG_DEFINITIONS[tagName.toLowerCase()] || _DEFAULT_TAG_DEFINITION;
    }
    exports.getHtmlTagDefinition = getHtmlTagDefinition;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaHRtbF90YWdzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvc3JjL21sX3BhcnNlci9odG1sX3RhZ3MudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7O0lBRUgsNkRBQXFEO0lBRXJEO1FBVUUsMkJBQVksRUFjTjtZQWROLGlCQXVCQztnQkF2QlcscUJBY1IsRUFBRSxLQUFBLEVBYkosZ0JBQWdCLHNCQUFBLEVBQ2hCLHVCQUF1Qiw2QkFBQSxFQUN2QixtQkFBMEMsRUFBMUMsV0FBVyxtQkFBRyxxQkFBYyxDQUFDLGFBQWEsS0FBQSxFQUMxQyxzQkFBc0IsRUFBdEIsY0FBYyxtQkFBRyxLQUFLLEtBQUEsRUFDdEIsY0FBYyxFQUFkLE1BQU0sbUJBQUcsS0FBSyxLQUFBLEVBQ2QscUJBQXFCLEVBQXJCLGFBQWEsbUJBQUcsS0FBSyxLQUFBO1lBZmYscUJBQWdCLEdBQTZCLEVBQUUsQ0FBQztZQUV4RCxtQkFBYyxHQUFZLEtBQUssQ0FBQztZQUtoQyxpQkFBWSxHQUFZLEtBQUssQ0FBQztZQWlCNUIsSUFBSSxnQkFBZ0IsSUFBSSxnQkFBZ0IsQ0FBQyxNQUFNLEdBQUcsQ0FBQyxFQUFFO2dCQUNuRCxnQkFBZ0IsQ0FBQyxPQUFPLENBQUMsVUFBQSxPQUFPLElBQUksT0FBQSxLQUFJLENBQUMsZ0JBQWdCLENBQUMsT0FBTyxDQUFDLEdBQUcsSUFBSSxFQUFyQyxDQUFxQyxDQUFDLENBQUM7YUFDNUU7WUFDRCxJQUFJLENBQUMsTUFBTSxHQUFHLE1BQU0sQ0FBQztZQUNyQixJQUFJLENBQUMsY0FBYyxHQUFHLGNBQWMsSUFBSSxNQUFNLENBQUM7WUFDL0MsSUFBSSxDQUFDLHVCQUF1QixHQUFHLHVCQUF1QixJQUFJLElBQUksQ0FBQztZQUMvRCxJQUFJLENBQUMsV0FBVyxHQUFHLFdBQVcsQ0FBQztZQUMvQixJQUFJLENBQUMsYUFBYSxH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QUFDLFFBQVEsRUFBQyxDQUFDO2dCQUN2RSxPQUFPLEVBQUUsSUFBSSxpQkFBaUIsQ0FBQyxFQUFDLFdBQVcsRUFBRSxxQkFBYyxDQUFDLGtCQUFrQixFQUFDLENBQUM7Z0JBQ2hGLFVBQVUsRUFBRSxJQUFJLGlCQUFpQixDQUM3QixFQUFDLFdBQVcsRUFBRSxxQkFBYyxDQUFDLGtCQUFrQixFQUFFLGFBQWEsRUFBRSxJQUFJLEVBQUMsQ0FBQzthQUMzRSxDQUFDO1NBQ0g7UUFDRCxPQUFPLGVBQWUsQ0FBQyxPQUFPLENBQUMsV0FBVyxFQUFFLENBQUMsSUFBSSx1QkFBdUIsQ0FBQztJQUMzRSxDQUFDO0lBMURELG9EQTBEQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1RhZ0NvbnRlbnRUeXBlLCBUYWdEZWZpbml0aW9ufSBmcm9tICcuL3RhZ3MnO1xuXG5leHBvcnQgY2xhc3MgSHRtbFRhZ0RlZmluaXRpb24gaW1wbGVtZW50cyBUYWdEZWZpbml0aW9uIHtcbiAgcHJpdmF0ZSBjbG9zZWRCeUNoaWxkcmVuOiB7W2tleTogc3RyaW5nXTogYm9vbGVhbn0gPSB7fTtcblxuICBjbG9zZWRCeVBhcmVudDogYm9vbGVhbiA9IGZhbHNlO1xuICBpbXBsaWNpdE5hbWVzcGFjZVByZWZpeDogc3RyaW5nfG51bGw7XG4gIGNvbnRlbnRUeXBlOiBUYWdDb250ZW50VHlwZTtcbiAgaXNWb2lkOiBib29sZWFuO1xuICBpZ25vcmVGaXJzdExmOiBib29sZWFuO1xuICBjYW5TZWxmQ2xvc2U6IGJvb2xlYW4gPSBmYWxzZTtcblxuICBjb25zdHJ1Y3Rvcih7XG4gICAgY2xvc2VkQnlDaGlsZHJlbixcbiAgICBpbXBsaWNpdE5hbWVzcGFjZVByZWZpeCxcbiAgICBjb250ZW50VHlwZSA9IFRhZ0NvbnRlbnRUeXBlLlBBUlNBQkxFX0RBVEEsXG4gICAgY2xvc2VkQnlQYXJlbnQgPSBmYWxzZSxcbiAgICBpc1ZvaWQgPSBmYWxzZSxcbiAgICBpZ25vcmVGaXJzdExmID0gZmFsc2VcbiAgfToge1xuICAgIGNsb3NlZEJ5Q2hpbGRyZW4/OiBzdHJpbmdbXSxcbiAgICBjbG9zZWRCeVBhcmVudD86IGJvb2xlYW4sXG4gICAgaW1wbGljaXROYW1lc3BhY2VQcmVmaXg/OiBzdHJpbmcsXG4gICAgY29udGVudFR5cGU/OiBUYWdDb250ZW50VHlwZSxcbiAgICBpc1ZvaWQ/OiBib29sZWFuLFxuICAgIGlnbm9yZUZpcnN0TGY/OiBib29sZWFuXG4gIH0gPSB7fSkge1xuICAgIGlmIChjbG9zZWRCeUNoaWxkcmVuICYmIGNsb3NlZEJ5Q2hpbGRyZW4ubGVuZ3RoID4gMCkge1xuICAgICAgY2xvc2VkQnlDaGlsZHJlbi5mb3JFYWNoKHRhZ05hbWUgPT4gdGhpcy5jbG9zZWRCeUNoaWxkcmVuW3RhZ05hbWVdID0gdHJ1ZSk7XG4gICAgfVxuICAgIHRoaXMuaXNWb2lkID0gaXNWb2lkO1xuICAgIHRoaXMuY2xvc2VkQnlQYXJlbnQgPSBjbG9zZWRCeVBhcmVudCB8fCBpc1ZvaWQ7XG4gICAgdGhpcy5pbXBsaWNpdE5hbWVzcGFjZVByZWZpeCA9IGltcGxpY2l0TmFtZXNwYWNlUHJlZml4IHx8IG51bGw7XG4gICAgdGhpcy5jb250ZW50VHlwZSA9IGNvbnRlbnRUeXBlO1xuICAgIHRoaXMuaWdub3JlRmlyc3RMZiA9IGlnbm9yZUZpcnN0TGY7XG4gIH1cblxuICBpc0Nsb3NlZEJ5Q2hpbGQobmFtZTogc3RyaW5nKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRoaXMuaXNWb2lkIHx8IG5hbWUudG9Mb3dlckNhc2UoKSBpbiB0aGlzLmNsb3NlZEJ5Q2hpbGRyZW47XG4gIH1cbn1cblxubGV0IF9ERUZBVUxUX1RBR19ERUZJTklUSU9OITogSHRtbFRhZ0RlZmluaXRpb247XG5cbi8vIHNlZSBodHRwOi8vd3d3LnczLm9yZy9UUi9odG1sNTEvc3ludGF4Lmh0bWwjb3B0aW9uYWwtdGFnc1xuLy8gVGhpcyBpbXBsZW1lbnRhdGlvbiBkb2VzIG5vdCBmdWxseSBjb25mb3JtIHRvIHRoZSBIVE1MNSBzcGVjLlxubGV0IFRBR19ERUZJTklUSU9OUyE6IHtba2V5OiBzdHJpbmddOiBIdG1sVGFnRGVmaW5pdGlvbn07XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRIdG1sVGFnRGVmaW5pdGlvbih0YWdOYW1lOiBzdHJpbmcpOiBIdG1sVGFnRGVmaW5pdGlvbiB7XG4gIGlmICghVEFHX0RFRklOSVRJT05TKSB7XG4gICAgX0RFRkFVTFRfVEFHX0RFRklOSVRJT04gPSBuZXcgSHRtbFRhZ0RlZmluaXRpb24oKTtcbiAgICBUQUdfREVGSU5JVElPTlMgPSB7XG4gICAgICAnYmFzZSc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7aXNWb2lkOiB0cnVlfSksXG4gICAgICAnbWV0YSc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7aXNWb2lkOiB0cnVlfSksXG4gICAgICAnYXJlYSc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7aXNWb2lkOiB0cnVlfSksXG4gICAgICAnZW1iZWQnOiBuZXcgSHRtbFRhZ0RlZmluaXRpb24oe2lzVm9pZDogdHJ1ZX0pLFxuICAgICAgJ2xpbmsnOiBuZXcgSHRtbFRhZ0RlZmluaXRpb24oe2lzVm9pZDogdHJ1ZX0pLFxuICAgICAgJ2ltZyc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7aXNWb2lkOiB0cnVlfSksXG4gICAgICAnaW5wdXQnOiBuZXcgSHRtbFRhZ0RlZmluaXRpb24oe2lzVm9pZDogdHJ1ZX0pLFxuICAgICAgJ3BhcmFtJzogbmV3IEh0bWxUYWdEZWZpbml0aW9uKHtpc1ZvaWQ6IHRydWV9KSxcbiAgICAgICdocic6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7aXNWb2lkOiB0cnVlfSksXG4gICAgICAnYnInOiBuZXcgSHRtbFRhZ0RlZmluaXRpb24oe2lzVm9pZDogdHJ1ZX0pLFxuICAgICAgJ3NvdXJjZSc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7aXNWb2lkOiB0cnVlfSksXG4gICAgICAndHJhY2snOiBuZXcgSHRtbFRhZ0RlZmluaXRpb24oe2lzVm9pZDogdHJ1ZX0pLFxuICAgICAgJ3dicic6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7aXNWb2lkOiB0cnVlfSksXG4gICAgICAncCc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7XG4gICAgICAgIGNsb3NlZEJ5Q2hpbGRyZW46IFtcbiAgICAgICAgICAnYWRkcmVzcycsICdhcnRpY2xlJywgJ2FzaWRlJywgICAnYmxvY2txdW90ZScsICdkaXYnLCAgJ2RsJywgICdmaWVsZHNldCcsXG4gICAgICAgICAgJ2Zvb3RlcicsICAnZm9ybScsICAgICdoMScsICAgICAgJ2gyJywgICAgICAgICAnaDMnLCAgICdoNCcsICAnaDUnLFxuICAgICAgICAgICdoNicsICAgICAgJ2hlYWRlcicsICAnaGdyb3VwJywgICdocicsICAgICAgICAgJ21haW4nLCAnbmF2JywgJ29sJyxcbiAgICAgICAgICAncCcsICAgICAgICdwcmUnLCAgICAgJ3NlY3Rpb24nLCAndGFibGUnLCAgICAgICd1bCdcbiAgICAgICAgXSxcbiAgICAgICAgY2xvc2VkQnlQYXJlbnQ6IHRydWVcbiAgICAgIH0pLFxuICAgICAgJ3RoZWFkJzogbmV3IEh0bWxUYWdEZWZpbml0aW9uKHtjbG9zZWRCeUNoaWxkcmVuOiBbJ3Rib2R5JywgJ3Rmb290J119KSxcbiAgICAgICd0Ym9keSc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7Y2xvc2VkQnlDaGlsZHJlbjogWyd0Ym9keScsICd0Zm9vdCddLCBjbG9zZWRCeVBhcmVudDogdHJ1ZX0pLFxuICAgICAgJ3Rmb290JzogbmV3IEh0bWxUYWdEZWZpbml0aW9uKHtjbG9zZWRCeUNoaWxkcmVuOiBbJ3Rib2R5J10sIGNsb3NlZEJ5UGFyZW50OiB0cnVlfSksXG4gICAgICAndHInOiBuZXcgSHRtbFRhZ0RlZmluaXRpb24oe2Nsb3NlZEJ5Q2hpbGRyZW46IFsndHInXSwgY2xvc2VkQnlQYXJlbnQ6IHRydWV9KSxcbiAgICAgICd0ZCc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7Y2xvc2VkQnlDaGlsZHJlbjogWyd0ZCcsICd0aCddLCBjbG9zZWRCeVBhcmVudDogdHJ1ZX0pLFxuICAgICAgJ3RoJzogbmV3IEh0bWxUYWdEZWZpbml0aW9uKHtjbG9zZWRCeUNoaWxkcmVuOiBbJ3RkJywgJ3RoJ10sIGNsb3NlZEJ5UGFyZW50OiB0cnVlfSksXG4gICAgICAnY29sJzogbmV3IEh0bWxUYWdEZWZpbml0aW9uKHtpc1ZvaWQ6IHRydWV9KSxcbiAgICAgICdzdmcnOiBuZXcgSHRtbFRhZ0RlZmluaXRpb24oe2ltcGxpY2l0TmFtZXNwYWNlUHJlZml4OiAnc3ZnJ30pLFxuICAgICAgJ21hdGgnOiBuZXcgSHRtbFRhZ0RlZmluaXRpb24oe2ltcGxpY2l0TmFtZXNwYWNlUHJlZml4OiAnbWF0aCd9KSxcbiAgICAgICdsaSc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7Y2xvc2VkQnlDaGlsZHJlbjogWydsaSddLCBjbG9zZWRCeVBhcmVudDogdHJ1ZX0pLFxuICAgICAgJ2R0JzogbmV3IEh0bWxUYWdEZWZpbml0aW9uKHtjbG9zZWRCeUNoaWxkcmVuOiBbJ2R0JywgJ2RkJ119KSxcbiAgICAgICdkZCc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7Y2xvc2VkQnlDaGlsZHJlbjogWydkdCcsICdkZCddLCBjbG9zZWRCeVBhcmVudDogdHJ1ZX0pLFxuICAgICAgJ3JiJzogbmV3IEh0bWxUYWdEZWZpbml0aW9uKFxuICAgICAgICAgIHtjbG9zZWRCeUNoaWxkcmVuOiBbJ3JiJywgJ3J0JywgJ3J0YycsICdycCddLCBjbG9zZWRCeVBhcmVudDogdHJ1ZX0pLFxuICAgICAgJ3J0JzogbmV3IEh0bWxUYWdEZWZpbml0aW9uKFxuICAgICAgICAgIHtjbG9zZWRCeUNoaWxkcmVuOiBbJ3JiJywgJ3J0JywgJ3J0YycsICdycCddLCBjbG9zZWRCeVBhcmVudDogdHJ1ZX0pLFxuICAgICAgJ3J0Yyc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7Y2xvc2VkQnlDaGlsZHJlbjogWydyYicsICdydGMnLCAncnAnXSwgY2xvc2VkQnlQYXJlbnQ6IHRydWV9KSxcbiAgICAgICdycCc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbihcbiAgICAgICAgICB7Y2xvc2VkQnlDaGlsZHJlbjogWydyYicsICdydCcsICdydGMnLCAncnAnXSwgY2xvc2VkQnlQYXJlbnQ6IHRydWV9KSxcbiAgICAgICdvcHRncm91cCc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7Y2xvc2VkQnlDaGlsZHJlbjogWydvcHRncm91cCddLCBjbG9zZWRCeVBhcmVudDogdHJ1ZX0pLFxuICAgICAgJ29wdGlvbic6XG4gICAgICAgICAgbmV3IEh0bWxUYWdEZWZpbml0aW9uKHtjbG9zZWRCeUNoaWxkcmVuOiBbJ29wdGlvbicsICdvcHRncm91cCddLCBjbG9zZWRCeVBhcmVudDogdHJ1ZX0pLFxuICAgICAgJ3ByZSc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7aWdub3JlRmlyc3RMZjogdHJ1ZX0pLFxuICAgICAgJ2xpc3RpbmcnOiBuZXcgSHRtbFRhZ0RlZmluaXRpb24oe2lnbm9yZUZpcnN0TGY6IHRydWV9KSxcbiAgICAgICdzdHlsZSc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7Y29udGVudFR5cGU6IFRhZ0NvbnRlbnRUeXBlLlJBV19URVhUfSksXG4gICAgICAnc2NyaXB0JzogbmV3IEh0bWxUYWdEZWZpbml0aW9uKHtjb250ZW50VHlwZTogVGFnQ29udGVudFR5cGUuUkFXX1RFWFR9KSxcbiAgICAgICd0aXRsZSc6IG5ldyBIdG1sVGFnRGVmaW5pdGlvbih7Y29udGVudFR5cGU6IFRhZ0NvbnRlbnRUeXBlLkVTQ0FQQUJMRV9SQVdfVEVYVH0pLFxuICAgICAgJ3RleHRhcmVhJzogbmV3IEh0bWxUYWdEZWZpbml0aW9uKFxuICAgICAgICAgIHtjb250ZW50VHlwZTogVGFnQ29udGVudFR5cGUuRVNDQVBBQkxFX1JBV19URVhULCBpZ25vcmVGaXJzdExmOiB0cnVlfSksXG4gICAgfTtcbiAgfVxuICByZXR1cm4gVEFHX0RFRklOSVRJT05TW3RhZ05hbWUudG9Mb3dlckNhc2UoKV0gfHwgX0RFRkFVTFRfVEFHX0RFRklOSVRJT047XG59XG4iXX0=