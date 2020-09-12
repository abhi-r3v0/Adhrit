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
        define("@angular/compiler/src/i18n/serializers/xtb", ["require", "exports", "tslib", "@angular/compiler/src/ml_parser/ast", "@angular/compiler/src/ml_parser/xml_parser", "@angular/compiler/src/i18n/i18n_ast", "@angular/compiler/src/i18n/parse_util", "@angular/compiler/src/i18n/serializers/serializer", "@angular/compiler/src/i18n/serializers/xmb"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.Xtb = void 0;
    var tslib_1 = require("tslib");
    var ml = require("@angular/compiler/src/ml_parser/ast");
    var xml_parser_1 = require("@angular/compiler/src/ml_parser/xml_parser");
    var i18n = require("@angular/compiler/src/i18n/i18n_ast");
    var parse_util_1 = require("@angular/compiler/src/i18n/parse_util");
    var serializer_1 = require("@angular/compiler/src/i18n/serializers/serializer");
    var xmb_1 = require("@angular/compiler/src/i18n/serializers/xmb");
    var _TRANSLATIONS_TAG = 'translationbundle';
    var _TRANSLATION_TAG = 'translation';
    var _PLACEHOLDER_TAG = 'ph';
    var Xtb = /** @class */ (function (_super) {
        tslib_1.__extends(Xtb, _super);
        function Xtb() {
            return _super !== null && _super.apply(this, arguments) || this;
        }
        Xtb.prototype.write = function (messages, locale) {
            throw new Error('Unsupported');
        };
        Xtb.prototype.load = function (content, url) {
            // xtb to xml nodes
            var xtbParser = new XtbParser();
            var _a = xtbParser.parse(content, url), locale = _a.locale, msgIdToHtml = _a.msgIdToHtml, errors = _a.errors;
            // xml nodes to i18n nodes
            var i18nNodesByMsgId = {};
            var converter = new XmlToI18n();
            // Because we should be able to load xtb files that rely on features not supported by angular,
            // we need to delay the conversion of html to i18n nodes so that non angular messages are not
            // converted
            Object.keys(msgIdToHtml).forEach(function (msgId) {
                var valueFn = function () {
                    var _a = converter.convert(msgIdToHtml[msgId], url), i18nNodes = _a.i18nNodes, errors = _a.errors;
                    if (errors.length) {
                        throw new Error("xtb parse errors:\n" + errors.join('\n'));
                    }
                    return i18nNodes;
                };
                createLazyProperty(i18nNodesByMsgId, msgId, valueFn);
            });
            if (errors.length) {
                throw new Error("xtb parse errors:\n" + errors.join('\n'));
            }
            return { locale: locale, i18nNodesByMsgId: i18nNodesByMsgId };
        };
        Xtb.prototype.digest = function (message) {
            return xmb_1.digest(message);
        };
        Xtb.prototype.createNameMapper = function (message) {
            return new serializer_1.SimplePlaceholderMapper(message, xmb_1.toPublicName);
        };
        return Xtb;
    }(serializer_1.Serializer));
    exports.Xtb = Xtb;
    function createLazyProperty(messages, id, valueFn) {
        Object.defineProperty(messages, id, {
            configurable: true,
            enumerable: true,
            get: function () {
                var value = valueFn();
                Object.defineProperty(messages, id, { enumerable: true, value: value });
                return value;
            },
            set: function (_) {
                throw new Error('Could not overwrite an XTB translation');
            },
        });
    }
    // Extract messages as xml nodes from the xtb file
    var XtbParser = /** @class */ (function () {
        function XtbParser() {
            this._locale = null;
        }
        XtbParser.prototype.parse = function (xtb, url) {
            this._bundleDepth = 0;
            this._msgIdToHtml = {};
            // We can not parse the ICU messages at this point as some messages might not originate
            // from Angular that could not be lex'd.
            var xml = new xml_parser_1.XmlParser().parse(xtb, url);
            this._errors = xml.errors;
            ml.visitAll(this, xml.rootNodes);
            return {
                msgIdToHtml: this._msgIdToHtml,
                errors: this._errors,
                locale: this._locale,
            };
        };
        XtbParser.prototype.visitElement = function (element, context) {
            switch (element.name) {
                case _TRANSLATIONS_TAG:
                    this._bundleDepth++;
                    if (this._bundleDepth > 1) {
                        this._addError(element, "<" + _TRANSLATIONS_TAG + "> elements can not be nested");
                    }
                    var langAttr = element.attrs.find(function (attr) { return attr.name === 'lang'; });
                    if (langAttr) {
                        this._locale = langAttr.value;
                    }
                    ml.visitAll(this, element.children, null);
                    this._bundleDepth--;
                    break;
                case _TRANSLATION_TAG:
                    var idAttr = element.attrs.find(function (attr) { return attr.name === 'id'; });
                    if (!idAttr) {
                        this._addError(element, "<" + _TRANSLATION_TAG + "> misses the \"id\" attribute");
                    }
                    else {
                        var id = idAttr.value;
                        if (this._msgIdToHtml.hasOwnProperty(id)) {
                            this._addError(element, "Duplicated translations for msg " + id);
                        }
                        else {
                            var innerTextStart = element.startSourceSpan.end.offset;
                            var innerTextEnd = element.endSourceSpan.start.offset;
                            var content = element.startSourceSpan.start.file.content;
                            var innerText = content.slice(innerTextStart, innerTextEnd);
                            this._msgIdToHtml[id] = innerText;
                        }
                    }
                    break;
                default:
                    this._addError(element, 'Unexpected tag');
            }
        };
        XtbParser.prototype.visitAttribute = function (attribute, context) { };
        XtbParser.prototype.visitText = function (text, context) { };
        XtbParser.prototype.visitComment = function (comment, context) { };
        XtbParser.prototype.visitExpansion = function (expansion, context) { };
        XtbParser.prototype.visitExpansionCase = function (expansionCase, context) { };
        XtbParser.prototype._addError = function (node, message) {
            this._errors.push(new parse_util_1.I18nError(node.sourceSpan, message));
        };
        return XtbParser;
    }());
    // Convert ml nodes (xtb syntax) to i18n nodes
    var XmlToI18n = /** @class */ (function () {
        function XmlToI18n() {
        }
        XmlToI18n.prototype.convert = function (message, url) {
            var xmlIcu = new xml_parser_1.XmlParser().parse(message, url, { tokenizeExpansionForms: true });
            this._errors = xmlIcu.errors;
            var i18nNodes = this._errors.length > 0 || xmlIcu.rootNodes.length == 0 ?
                [] :
                ml.visitAll(this, xmlIcu.rootNodes);
            return {
                i18nNodes: i18nNodes,
                errors: this._errors,
            };
        };
        XmlToI18n.prototype.visitText = function (text, context) {
            return new i18n.Text(text.value, text.sourceSpan);
        };
        XmlToI18n.prototype.visitExpansion = function (icu, context) {
            var caseMap = {};
            ml.visitAll(this, icu.cases).forEach(function (c) {
                caseMap[c.value] = new i18n.Container(c.nodes, icu.sourceSpan);
            });
            return new i18n.Icu(icu.switchValue, icu.type, caseMap, icu.sourceSpan);
        };
        XmlToI18n.prototype.visitExpansionCase = function (icuCase, context) {
            return {
                value: icuCase.value,
                nodes: ml.visitAll(this, icuCase.expression),
            };
        };
        XmlToI18n.prototype.visitElement = function (el, context) {
            if (el.name === _PLACEHOLDER_TAG) {
                var nameAttr = el.attrs.find(function (attr) { return attr.name === 'name'; });
                if (nameAttr) {
                    return new i18n.Placeholder('', nameAttr.value, el.sourceSpan);
                }
                this._addError(el, "<" + _PLACEHOLDER_TAG + "> misses the \"name\" attribute");
            }
            else {
                this._addError(el, "Unexpected tag");
            }
            return null;
        };
        XmlToI18n.prototype.visitComment = function (comment, context) { };
        XmlToI18n.prototype.visitAttribute = function (attribute, context) { };
        XmlToI18n.prototype._addError = function (node, message) {
            this._errors.push(new parse_util_1.I18nError(node.sourceSpan, message));
        };
        return XmlToI18n;
    }());
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoieHRiLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvc3JjL2kxOG4vc2VyaWFsaXplcnMveHRiLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFFSCx3REFBMEM7SUFDMUMseUVBQXFEO0lBQ3JELDBEQUFvQztJQUNwQyxvRUFBd0M7SUFFeEMsZ0ZBQW9GO0lBQ3BGLGtFQUEyQztJQUUzQyxJQUFNLGlCQUFpQixHQUFHLG1CQUFtQixDQUFDO0lBQzlDLElBQU0sZ0JBQWdCLEdBQUcsYUFBYSxDQUFDO0lBQ3ZDLElBQU0sZ0JBQWdCLEdBQUcsSUFBSSxDQUFDO0lBRTlCO1FBQXlCLCtCQUFVO1FBQW5DOztRQTJDQSxDQUFDO1FBMUNDLG1CQUFLLEdBQUwsVUFBTSxRQUF3QixFQUFFLE1BQW1CO1lBQ2pELE1BQU0sSUFBSSxLQUFLLENBQUMsYUFBYSxDQUFDLENBQUM7UUFDakMsQ0FBQztRQUVELGtCQUFJLEdBQUosVUFBSyxPQUFlLEVBQUUsR0FBVztZQUUvQixtQkFBbUI7WUFDbkIsSUFBTSxTQUFTLEdBQUcsSUFBSSxTQUFTLEVBQUUsQ0FBQztZQUM1QixJQUFBLEtBQWdDLFNBQVMsQ0FBQyxLQUFLLENBQUMsT0FBTyxFQUFFLEdBQUcsQ0FBQyxFQUE1RCxNQUFNLFlBQUEsRUFBRSxXQUFXLGlCQUFBLEVBQUUsTUFBTSxZQUFpQyxDQUFDO1lBRXBFLDBCQUEwQjtZQUMxQixJQUFNLGdCQUFnQixHQUFtQyxFQUFFLENBQUM7WUFDNUQsSUFBTSxTQUFTLEdBQUcsSUFBSSxTQUFTLEVBQUUsQ0FBQztZQUVsQyw4RkFBOEY7WUFDOUYsNkZBQTZGO1lBQzdGLFlBQVk7WUFDWixNQUFNLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxDQUFDLE9BQU8sQ0FBQyxVQUFBLEtBQUs7Z0JBQ3BDLElBQU0sT0FBTyxHQUFHO29CQUNSLElB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c291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCAqIGFzIG1sIGZyb20gJy4uLy4uL21sX3BhcnNlci9hc3QnO1xuaW1wb3J0IHtYbWxQYXJzZXJ9IGZyb20gJy4uLy4uL21sX3BhcnNlci94bWxfcGFyc2VyJztcbmltcG9ydCAqIGFzIGkxOG4gZnJvbSAnLi4vaTE4bl9hc3QnO1xuaW1wb3J0IHtJMThuRXJyb3J9IGZyb20gJy4uL3BhcnNlX3V0aWwnO1xuXG5pbXBvcnQge1BsYWNlaG9sZGVyTWFwcGVyLCBTZXJpYWxpemVyLCBTaW1wbGVQbGFjZWhvbGRlck1hcHBlcn0gZnJvbSAnLi9zZXJpYWxpemVyJztcbmltcG9ydCB7ZGlnZXN0LCB0b1B1YmxpY05hbWV9IGZyb20gJy4veG1iJztcblxuY29uc3QgX1RSQU5TTEFUSU9OU19UQUcgPSAndHJhbnNsYXRpb25idW5kbGUnO1xuY29uc3QgX1RSQU5TTEFUSU9OX1RBRyA9ICd0cmFuc2xhdGlvbic7XG5jb25zdCBfUExBQ0VIT0xERVJfVEFHID0gJ3BoJztcblxuZXhwb3J0IGNsYXNzIFh0YiBleHRlbmRzIFNlcmlhbGl6ZXIge1xuICB3cml0ZShtZXNzYWdlczogaTE4bi5NZXNzYWdlW10sIGxvY2FsZTogc3RyaW5nfG51bGwpOiBzdHJpbmcge1xuICAgIHRocm93IG5ldyBFcnJvcignVW5zdXBwb3J0ZWQnKTtcbiAgfVxuXG4gIGxvYWQoY29udGVudDogc3RyaW5nLCB1cmw6IHN0cmluZyk6XG4gICAgICB7bG9jYWxlOiBzdHJpbmcsIGkxOG5Ob2Rlc0J5TXNnSWQ6IHtbbXNnSWQ6IHN0cmluZ106IGkxOG4uTm9kZVtdfX0ge1xuICAgIC8vIHh0YiB0byB4bWwgbm9kZXNcbiAgICBjb25zdCB4dGJQYXJzZXIgPSBuZXcgWHRiUGFyc2VyKCk7XG4gICAgY29uc3Qge2xvY2FsZSwgbXNnSWRUb0h0bWwsIGVycm9yc30gPSB4dGJQYXJzZXIucGFyc2UoY29udGVudCwgdXJsKTtcblxuICAgIC8vIHhtbCBub2RlcyB0byBpMThuIG5vZGVzXG4gICAgY29uc3QgaTE4bk5vZGVzQnlNc2dJZDoge1ttc2dJZDogc3RyaW5nXTogaTE4bi5Ob2RlW119ID0ge307XG4gICAgY29uc3QgY29udmVydGVyID0gbmV3IFhtbFRvSTE4bigpO1xuXG4gICAgLy8gQmVjYXVzZSB3ZSBzaG91bGQgYmUgYWJsZSB0byBsb2FkIHh0YiBmaWxlcyB0aGF0IHJlbHkgb24gZmVhdHVyZXMgbm90IHN1cHBvcnRlZCBieSBhbmd1bGFyLFxuICAgIC8vIHdlIG5lZWQgdG8gZGVsYXkgdGhlIGNvbnZlcnNpb24gb2YgaHRtbCB0byBpMThuIG5vZGVzIHNvIHRoYXQgbm9uIGFuZ3VsYXIgbWVzc2FnZXMgYXJlIG5vdFxuICAgIC8vIGNvbnZlcnRlZFxuICAgIE9iamVjdC5rZXlzKG1zZ0lkVG9IdG1sKS5mb3JFYWNoKG1zZ0lkID0+IHtcbiAgICAgIGNvbnN0IHZhbHVlRm4gPSBmdW5jdGlvbigpIHtcbiAgICAgICAgY29uc3Qge2kxOG5Ob2RlcywgZXJyb3JzfSA9IGNvbnZlcnRlci5jb252ZXJ0KG1zZ0lkVG9IdG1sW21zZ0lkXSwgdXJsKTtcbiAgICAgICAgaWYgKGVycm9ycy5sZW5ndGgpIHtcbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoYHh0YiBwYXJzZSBlcnJvcnM6XFxuJHtlcnJvcnMuam9pbignXFxuJyl9YCk7XG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuIGkxOG5Ob2RlcztcbiAgICAgIH07XG4gICAgICBjcmVhdGVMYXp5UHJvcGVydHkoaTE4bk5vZGVzQnlNc2dJZCwgbXNnSWQsIHZhbHVlRm4pO1xuICAgIH0pO1xuXG4gICAgaWYgKGVycm9ycy5sZW5ndGgpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihgeHRiIHBhcnNlIGVycm9yczpcXG4ke2Vycm9ycy5qb2luKCdcXG4nKX1gKTtcbiAgICB9XG5cbiAgICByZXR1cm4ge2xvY2FsZTogbG9jYWxlISwgaTE4bk5vZGVzQnlNc2dJZH07XG4gIH1cblxuICBkaWdlc3QobWVzc2FnZTogaTE4bi5NZXNzYWdlKTogc3RyaW5nIHtcbiAgICByZXR1cm4gZGlnZXN0KG1lc3NhZ2UpO1xuICB9XG5cbiAgY3JlYXRlTmFtZU1hcHBlcihtZXNzYWdlOiBpMThuLk1lc3NhZ2UpOiBQbGFjZWhvbGRlck1hcHBlciB7XG4gICAgcmV0dXJuIG5ldyBTaW1wbGVQbGFjZWhvbGRlck1hcHBlcihtZXNzYWdlLCB0b1B1YmxpY05hbWUpO1xuICB9XG59XG5cbmZ1bmN0aW9uIGNyZWF0ZUxhenlQcm9wZXJ0eShtZXNzYWdlczogYW55LCBpZDogc3RyaW5nLCB2YWx1ZUZuOiAoKSA9PiBhbnkpIHtcbiAgT2JqZWN0LmRlZmluZVByb3BlcnR5KG1lc3NhZ2VzLCBpZCwge1xuICAgIGNvbmZpZ3VyYWJsZTogdHJ1ZSxcbiAgICBlbnVtZXJhYmxlOiB0cnVlLFxuICAgIGdldDogZnVuY3Rpb24oKSB7XG4gICAgICBjb25zdCB2YWx1ZSA9IHZhbHVlRm4oKTtcbiAgICAgIE9iamVjdC5kZWZpbmVQcm9wZXJ0eShtZXNzYWdlcywgaWQsIHtlbnVtZXJhYmxlOiB0cnVlLCB2YWx1ZX0pO1xuICAgICAgcmV0dXJuIHZhbHVlO1xuICAgIH0sXG4gICAgc2V0OiBfID0+IHtcbiAgICAgIHRocm93IG5ldyBFcnJvcignQ291bGQgbm90IG92ZXJ3cml0ZSBhbiBYVEIgdHJhbnNsYXRpb24nKTtcbiAgICB9LFxuICB9KTtcbn1cblxuLy8gRXh0cmFjdCBtZXNzYWdlcyBhcyB4bWwgbm9kZXMgZnJvbSB0aGUgeHRiIGZpbGVcbmNsYXNzIFh0YlBhcnNlciBpbXBsZW1lbnRzIG1sLlZpc2l0b3Ige1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfYnVuZGxlRGVwdGghOiBudW1iZXI7XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9lcnJvcnMhOiBJMThuRXJyb3JbXTtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIHByaXZhdGUgX21zZ0lkVG9IdG1sIToge1ttc2dJZDogc3RyaW5nXTogc3RyaW5nfTtcbiAgcHJpdmF0ZSBfbG9jYWxlOiBzdHJpbmd8bnVsbCA9IG51bGw7XG5cbiAgcGFyc2UoeHRiOiBzdHJpbmcsIHVybDogc3RyaW5nKSB7XG4gICAgdGhpcy5fYnVuZGxlRGVwdGggPSAwO1xuICAgIHRoaXMuX21zZ0lkVG9IdG1sID0ge307XG5cbiAgICAvLyBXZSBjYW4gbm90IHBhcnNlIHRoZSBJQ1UgbWVzc2FnZXMgYXQgdGhpcyBwb2ludCBhcyBzb21lIG1lc3NhZ2VzIG1pZ2h0IG5vdCBvcmlnaW5hdGVcbiAgICAvLyBmcm9tIEFuZ3VsYXIgdGhhdCBjb3VsZCBub3QgYmUgbGV4J2QuXG4gICAgY29uc3QgeG1sID0gbmV3IFhtbFBhcnNlcigpLnBhcnNlKHh0YiwgdXJsKTtcblxuICAgIHRoaXMuX2Vycm9ycyA9IHhtbC5lcnJvcnM7XG4gICAgbWwudmlzaXRBbGwodGhpcywgeG1sLnJvb3ROb2Rlcyk7XG5cbiAgICByZXR1cm4ge1xuICAgICAgbXNnSWRUb0h0bWw6IHRoaXMuX21zZ0lkVG9IdG1sLFxuICAgICAgZXJyb3JzOiB0aGlzLl9lcnJvcnMsXG4gICAgICBsb2NhbGU6IHRoaXMuX2xvY2FsZSxcbiAgICB9O1xuICB9XG5cbiAgdmlzaXRFbGVtZW50KGVsZW1lbnQ6IG1sLkVsZW1lbnQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgc3dpdGNoIChlbGVtZW50Lm5hbWUpIHtcbiAgICAgIGNhc2UgX1RSQU5TTEFUSU9OU19UQUc6XG4gICAgICAgIHRoaXMuX2J1bmRsZURlcHRoKys7XG4gICAgICAgIGlmICh0aGlzLl9idW5kbGVEZXB0aCA+IDEpIHtcbiAgICAgICAgICB0aGlzLl9hZGRFcnJvcihlbGVtZW50LCBgPCR7X1RSQU5TTEFUSU9OU19UQUd9PiBlbGVtZW50cyBjYW4gbm90IGJlIG5lc3RlZGApO1xuICAgICAgICB9XG4gICAgICAgIGNvbnN0IGxhbmdBdHRyID0gZWxlbWVudC5hdHRycy5maW5kKChhdHRyKSA9PiBhdHRyLm5hbWUgPT09ICdsYW5nJyk7XG4gICAgICAgIGlmIChsYW5nQXR0cikge1xuICAgICAgICAgIHRoaXMuX2xvY2FsZSA9IGxhbmdBdHRyLnZhbHVlO1xuICAgICAgICB9XG4gICAgICAgIG1sLnZpc2l0QWxsKHRoaXMsIGVsZW1lbnQuY2hpbGRyZW4sIG51bGwpO1xuICAgICAgICB0aGlzLl9idW5kbGVEZXB0aC0tO1xuICAgICAgICBicmVhaztcblxuICAgICAgY2FzZSBfVFJBTlNMQVRJT05fVEFHOlxuICAgICAgICBjb25zdCBpZEF0dHIgPSBlbGVtZW50LmF0dHJzLmZpbmQoKGF0dHIpID0+IGF0dHIubmFtZSA9PT0gJ2lkJyk7XG4gICAgICAgIGlmICghaWRBdHRyKSB7XG4gICAgICAgICAgdGhpcy5fYWRkRXJyb3IoZWxlbWVudCwgYDwke19UUkFOU0xBVElPTl9UQUd9PiBtaXNzZXMgdGhlIFwiaWRcIiBhdHRyaWJ1dGVgKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICBjb25zdCBpZCA9IGlkQXR0ci52YWx1ZTtcbiAgICAgICAgICBpZiAodGhpcy5fbXNnSWRUb0h0bWwuaGFzT3duUHJvcGVydHkoaWQpKSB7XG4gICAgICAgICAgICB0aGlzLl9hZGRFcnJvcihlbGVtZW50LCBgRHVwbGljYXRlZCB0cmFuc2xhdGlvbnMgZm9yIG1zZyAke2lkfWApO1xuICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICBjb25zdCBpbm5lclRleHRTdGFydCA9IGVsZW1lbnQuc3RhcnRTb3VyY2VTcGFuIS5lbmQub2Zmc2V0O1xuICAgICAgICAgICAgY29uc3QgaW5uZXJUZXh0RW5kID0gZWxlbWVudC5lbmRTb3VyY2VTcGFuIS5zdGFydC5vZmZzZXQ7XG4gICAgICAgICAgICBjb25zdCBjb250ZW50ID0gZWxlbWVudC5zdGFydFNvdXJjZVNwYW4hLnN0YXJ0LmZpbGUuY29udGVudDtcbiAgICAgICAgICAgIGNvbnN0IGlubmVyVGV4dCA9IGNvbnRlbnQuc2xpY2UoaW5uZXJUZXh0U3RhcnQhLCBpbm5lclRleHRFbmQhKTtcbiAgICAgICAgICAgIHRoaXMuX21zZ0lkVG9IdG1sW2lkXSA9IGlubmVyVGV4dDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgICAgYnJlYWs7XG5cbiAgICAgIGRlZmF1bHQ6XG4gICAgICAgIHRoaXMuX2FkZEVycm9yKGVsZW1lbnQsICdVbmV4cGVjdGVkIHRhZycpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0QXR0cmlidXRlKGF0dHJpYnV0ZTogbWwuQXR0cmlidXRlLCBjb250ZXh0OiBhbnkpOiBhbnkge31cblxuICB2aXNpdFRleHQodGV4dDogbWwuVGV4dCwgY29udGV4dDogYW55KTogYW55IHt9XG5cbiAgdmlzaXRDb21tZW50KGNvbW1lbnQ6IG1sLkNvbW1lbnQsIGNvbnRleHQ6IGFueSk6IGFueSB7fVxuXG4gIHZpc2l0RXhwYW5zaW9uKGV4cGFuc2lvbjogbWwuRXhwYW5zaW9uLCBjb250ZXh0OiBhbnkpOiBhbnkge31cblxuICB2aXNpdEV4cGFuc2lvbkNhc2UoZXhwYW5zaW9uQ2FzZTogbWwuRXhwYW5zaW9uQ2FzZSwgY29udGV4dDogYW55KTogYW55IHt9XG5cbiAgcHJpdmF0ZSBfYWRkRXJyb3Iobm9kZTogbWwuTm9kZSwgbWVzc2FnZTogc3RyaW5nKTogdm9pZCB7XG4gICAgdGhpcy5fZXJyb3JzLnB1c2gobmV3IEkxOG5FcnJvcihub2RlLnNvdXJjZVNwYW4hLCBtZXNzYWdlKSk7XG4gIH1cbn1cblxuLy8gQ29udmVydCBtbCBub2RlcyAoeHRiIHN5bnRheCkgdG8gaTE4biBub2Rlc1xuY2xhc3MgWG1sVG9JMThuIGltcGxlbWVudHMgbWwuVmlzaXRvciB7XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9lcnJvcnMhOiBJMThuRXJyb3JbXTtcblxuICBjb252ZXJ0KG1lc3NhZ2U6IHN0cmluZywgdXJsOiBzdHJpbmcpIHtcbiAgICBjb25zdCB4bWxJY3UgPSBuZXcgWG1sUGFyc2VyKCkucGFyc2UobWVzc2FnZSwgdXJsLCB7dG9rZW5pemVFeHBhbnNpb25Gb3JtczogdHJ1ZX0pO1xuICAgIHRoaXMuX2Vycm9ycyA9IHhtbEljdS5lcnJvcnM7XG5cbiAgICBjb25zdCBpMThuTm9kZXMgPSB0aGlzLl9lcnJvcnMubGVuZ3RoID4gMCB8fCB4bWxJY3Uucm9vdE5vZGVzLmxlbmd0aCA9PSAwID9cbiAgICAgICAgW10gOlxuICAgICAgICBtbC52aXNpdEFsbCh0aGlzLCB4bWxJY3Uucm9vdE5vZGVzKTtcblxuICAgIHJldHVybiB7XG4gICAgICBpMThuTm9kZXMsXG4gICAgICBlcnJvcnM6IHRoaXMuX2Vycm9ycyxcbiAgICB9O1xuICB9XG5cbiAgdmlzaXRUZXh0KHRleHQ6IG1sLlRleHQsIGNvbnRleHQ6IGFueSkge1xuICAgIHJldHVybiBuZXcgaTE4bi5UZXh0KHRleHQudmFsdWUsIHRleHQuc291cmNlU3BhbiEpO1xuICB9XG5cbiAgdmlzaXRFeHBhbnNpb24oaWN1OiBtbC5FeHBhbnNpb24sIGNvbnRleHQ6IGFueSkge1xuICAgIGNvbnN0IGNhc2VNYXA6IHtbdmFsdWU6IHN0cmluZ106IGkxOG4uTm9kZX0gPSB7fTtcblxuICAgIG1sLnZpc2l0QWxsKHRoaXMsIGljdS5jYXNlcykuZm9yRWFjaChjID0+IHtcbiAgICAgIGNhc2VNYXBbYy52YWx1ZV0gPSBuZXcgaTE4bi5Db250YWluZXIoYy5ub2RlcywgaWN1LnNvdXJjZVNwYW4pO1xuICAgIH0pO1xuXG4gICAgcmV0dXJuIG5ldyBpMThuLkljdShpY3Uuc3dpdGNoVmFsdWUsIGljdS50eXBlLCBjYXNlTWFwLCBpY3Uuc291cmNlU3Bhbik7XG4gIH1cblxuICB2aXNpdEV4cGFuc2lvbkNhc2UoaWN1Q2FzZTogbWwuRXhwYW5zaW9uQ2FzZSwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4ge1xuICAgICAgdmFsdWU6IGljdUNhc2UudmFsdWUsXG4gICAgICBub2RlczogbWwudmlzaXRBbGwodGhpcywgaWN1Q2FzZS5leHByZXNzaW9uKSxcbiAgICB9O1xuICB9XG5cbiAgdmlzaXRFbGVtZW50KGVsOiBtbC5FbGVtZW50LCBjb250ZXh0OiBhbnkpOiBpMThuLlBsYWNlaG9sZGVyfG51bGwge1xuICAgIGlmIChlbC5uYW1lID09PSBfUExBQ0VIT0xERVJfVEFHKSB7XG4gICAgICBjb25zdCBuYW1lQXR0ciA9IGVsLmF0dHJzLmZpbmQoKGF0dHIpID0+IGF0dHIubmFtZSA9PT0gJ25hbWUnKTtcbiAgICAgIGlmIChuYW1lQXR0cikge1xuICAgICAgICByZXR1cm4gbmV3IGkxOG4uUGxhY2Vob2xkZXIoJycsIG5hbWVBdHRyLnZhbHVlLCBlbC5zb3VyY2VTcGFuISk7XG4gICAgICB9XG5cbiAgICAgIHRoaXMuX2FkZEVycm9yKGVsLCBgPCR7X1BMQUNFSE9MREVSX1RBR30+IG1pc3NlcyB0aGUgXCJuYW1lXCIgYXR0cmlidXRlYCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMuX2FkZEVycm9yKGVsLCBgVW5leHBlY3RlZCB0YWdgKTtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICB2aXNpdENvbW1lbnQoY29tbWVudDogbWwuQ29tbWVudCwgY29udGV4dDogYW55KSB7fVxuXG4gIHZpc2l0QXR0cmlidXRlKGF0dHJpYnV0ZTogbWwuQXR0cmlidXRlLCBjb250ZXh0OiBhbnkpIHt9XG5cbiAgcHJpdmF0ZSBfYWRkRXJyb3Iobm9kZTogbWwuTm9kZSwgbWVzc2FnZTogc3RyaW5nKTogdm9pZCB7XG4gICAgdGhpcy5fZXJyb3JzLnB1c2gobmV3IEkxOG5FcnJvcihub2RlLnNvdXJjZVNwYW4hLCBtZXNzYWdlKSk7XG4gIH1cbn1cbiJdfQ==