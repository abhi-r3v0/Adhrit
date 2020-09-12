/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __read, __spread } from "tslib";
import { MissingTranslationStrategy } from '../core';
import { HtmlParser } from '../ml_parser/html_parser';
import { I18nError } from './parse_util';
import { escapeXml } from './serializers/xml_helper';
/**
 * A container for translated messages
 */
var TranslationBundle = /** @class */ (function () {
    function TranslationBundle(_i18nNodesByMsgId, locale, digest, mapperFactory, missingTranslationStrategy, console) {
        if (_i18nNodesByMsgId === void 0) { _i18nNodesByMsgId = {}; }
        if (missingTranslationStrategy === void 0) { missingTranslationStrategy = MissingTranslationStrategy.Warning; }
        this._i18nNodesByMsgId = _i18nNodesByMsgId;
        this.digest = digest;
        this.mapperFactory = mapperFactory;
        this._i18nToHtml = new I18nToHtmlVisitor(_i18nNodesByMsgId, locale, digest, mapperFactory, missingTranslationStrategy, console);
    }
    // Creates a `TranslationBundle` by parsing the given `content` with the `serializer`.
    TranslationBundle.load = function (content, url, serializer, missingTranslationStrategy, console) {
        var _a = serializer.load(content, url), locale = _a.locale, i18nNodesByMsgId = _a.i18nNodesByMsgId;
        var digestFn = function (m) { return serializer.digest(m); };
        var mapperFactory = function (m) { return serializer.createNameMapper(m); };
        return new TranslationBundle(i18nNodesByMsgId, locale, digestFn, mapperFactory, missingTranslationStrategy, console);
    };
    // Returns the translation as HTML nodes from the given source message.
    TranslationBundle.prototype.get = function (srcMsg) {
        var html = this._i18nToHtml.convert(srcMsg);
        if (html.errors.length) {
            throw new Error(html.errors.join('\n'));
        }
        return html.nodes;
    };
    TranslationBundle.prototype.has = function (srcMsg) { return this.digest(srcMsg) in this._i18nNodesByMsgId; };
    return TranslationBundle;
}());
export { TranslationBundle };
var I18nToHtmlVisitor = /** @class */ (function () {
    function I18nToHtmlVisitor(_i18nNodesByMsgId, _locale, _digest, _mapperFactory, _missingTranslationStrategy, _console) {
        if (_i18nNodesByMsgId === void 0) { _i18nNodesByMsgId = {}; }
        this._i18nNodesByMsgId = _i18nNodesByMsgId;
        this._locale = _locale;
        this._digest = _digest;
        this._mapperFactory = _mapperFactory;
        this._missingTranslationStrategy = _missingTranslationStrategy;
        this._console = _console;
        this._contextStack = [];
        this._errors = [];
    }
    I18nToHtmlVisitor.prototype.convert = function (srcMsg) {
        this._contextStack.length = 0;
        this._errors.length = 0;
        // i18n to text
        var text = this._convertToText(srcMsg);
        // text to html
        var url = srcMsg.nodes[0].sourceSpan.start.file.url;
        var html = new HtmlParser().parse(text, url, { tokenizeExpansionForms: true });
        return {
            nodes: html.rootNodes,
            errors: __spread(this._errors, html.errors),
        };
    };
    I18nToHtmlVisitor.prototype.visitText = function (text, context) {
        // `convert()` uses an `HtmlParser` to return `html.Node`s
        // we should then make sure that any special characters are escaped
        return escapeXml(text.value);
    };
    I18nToHtmlVisitor.prototype.visitContainer = function (container, context) {
        var _this = this;
        return container.children.map(function (n) { return n.visit(_this); }).join('');
    };
    I18nToHtmlVisitor.prototype.visitIcu = function (icu, context) {
        var _this = this;
        var cases = Object.keys(icu.cases).map(function (k) { return k + " {" + icu.cases[k].visit(_this) + "}"; });
        // TODO(vicb): Once all format switch to using expression placeholders
        // we should throw when the placeholder is not in the source message
        var exp = this._srcMsg.placeholders.hasOwnProperty(icu.expression) ?
            this._srcMsg.placeholders[icu.expression] :
            icu.expression;
        return "{" + exp + ", " + icu.type + ", " + cases.join(' ') + "}";
    };
    I18nToHtmlVisitor.prototype.visitPlaceholder = function (ph, context) {
        var phName = this._mapper(ph.name);
        if (this._srcMsg.placeholders.hasOwnProperty(phName)) {
            return this._srcMsg.placeholders[phName];
        }
        if (this._srcMsg.placeholderToMessage.hasOwnProperty(phName)) {
            return this._convertToText(this._srcMsg.placeholderToMessage[phName]);
        }
        this._addError(ph, "Unknown placeholder \"" + ph.name + "\"");
        return '';
    };
    // Loaded message contains only placeholders (vs tag and icu placeholders).
    // However when a translation can not be found, we need to serialize the source message
    // which can contain tag placeholders
    I18nToHtmlVisitor.prototype.visitTagPlaceholder = function (ph, context) {
        var _this = this;
        var tag = "" + ph.tag;
        var attrs = Object.keys(ph.attrs).map(function (name) { return name + "=\"" + ph.attrs[name] + "\""; }).join(' ');
        if (ph.isVoid) {
            return "<" + tag + " " + attrs + "/>";
        }
        var children = ph.children.map(function (c) { return c.visit(_this); }).join('');
        return "<" + tag + " " + attrs + ">" + children + "</" + tag + ">";
    };
    // Loaded message contains only placeholders (vs tag and icu placeholders).
    // However when a translation can not be found, we need to serialize the source message
    // which can contain tag placeholders
    I18nToHtmlVisitor.prototype.visitIcuPlaceholder = function (ph, context) {
        // An ICU placeholder references the source message to be serialized
        return this._convertToText(this._srcMsg.placeholderToMessage[ph.name]);
    };
    /**
     * Convert a source message to a translated text string:
     * - text nodes are replaced with their translation,
     * - placeholders are replaced with their content,
     * - ICU nodes are converted to ICU expressions.
     */
    I18nToHtmlVisitor.prototype._convertToText = function (srcMsg) {
        var _this = this;
        var id = this._digest(srcMsg);
        var mapper = this._mapperFactory ? this._mapperFactory(srcMsg) : null;
        var nodes;
        this._contextStack.push({ msg: this._srcMsg, mapper: this._mapper });
        this._srcMsg = srcMsg;
        if (this._i18nNodesByMsgId.hasOwnProperty(id)) {
            // When there is a translation use its nodes as the source
            // And create a mapper to convert serialized placeholder names to internal names
            nodes = this._i18nNodesByMsgId[id];
            this._mapper = function (name) { return mapper ? mapper.toInternalName(name) : name; };
        }
        else {
            // When no translation has been found
            // - report an error / a warning / nothing,
            // - use the nodes from the original message
            // - placeholders are already internal and need no mapper
            if (this._missingTranslationStrategy === MissingTranslationStrategy.Error) {
                var ctx = this._locale ? " for locale \"" + this._locale + "\"" : '';
                this._addError(srcMsg.nodes[0], "Missing translation for message \"" + id + "\"" + ctx);
            }
            else if (this._console &&
                this._missingTranslationStrategy === MissingTranslationStrategy.Warning) {
                var ctx = this._locale ? " for locale \"" + this._locale + "\"" : '';
                this._console.warn("Missing translation for message \"" + id + "\"" + ctx);
            }
            nodes = srcMsg.nodes;
            this._mapper = function (name) { return name; };
        }
        var text = nodes.map(function (node) { return node.visit(_this); }).join('');
        var context = this._contextStack.pop();
        this._srcMsg = context.msg;
        this._mapper = context.mapper;
        return text;
    };
    I18nToHtmlVisitor.prototype._addError = function (el, msg) {
        this._errors.push(new I18nError(el.sourceSpan, msg));
    };
    return I18nToHtmlVisitor;
}());
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNsYXRpb25fYnVuZGxlLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvc3JjL2kxOG4vdHJhbnNsYXRpb25fYnVuZGxlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7QUFFSCxPQUFPLEVBQUMsMEJBQTBCLEVBQUMsTUFBTSxTQUFTLENBQUM7QUFFbkQsT0FBTyxFQUFDLFVBQVUsRUFBQyxNQUFNLDBCQUEwQixDQUFDO0FBSXBELE9BQU8sRUFBQyxTQUFTLEVBQUMsTUFBTSxjQUFjLENBQUM7QUFFdkMsT0FBTyxFQUFDLFNBQVMsRUFBQyxNQUFNLDBCQUEwQixDQUFDO0FBR25EOztHQUVHO0FBQ0g7SUFHRSwyQkFDWSxpQkFBc0QsRUFBRSxNQUFtQixFQUM1RSxNQUFtQyxFQUNuQyxhQUFzRCxFQUM3RCwwQkFBMkYsRUFDM0YsT0FBaUI7UUFKVCxrQ0FBQSxFQUFBLHNCQUFzRDtRQUc5RCwyQ0FBQSxFQUFBLDZCQUF5RCwwQkFBMEIsQ0FBQyxPQUFPO1FBSG5GLHNCQUFpQixHQUFqQixpQkFBaUIsQ0FBcUM7UUFDdkQsV0FBTSxHQUFOLE1BQU0sQ0FBNkI7UUFDbkMsa0JBQWEsR0FBYixhQUFhLENBQXlDO1FBRy9ELElBQUksQ0FBQyxXQUFXLEdBQUcsSUFBSSxpQkFBaUIsQ0FDcEMsaUJBQWlCLEVBQUUsTUFBTSxFQUFFLE1BQU0sRUFBRSxhQUFlLEVBQUUsMEJBQTBCLEVBQUUsT0FBTyxDQUFDLENBQUM7SUFDL0YsQ0FBQztJQUVELHNGQUFzRjtJQUMvRSxzQkFBSSxHQUFYLFVBQ0ksT0FBZSxFQUFFLEdBQVcsRUFBRSxVQUFzQixFQUNwRCwwQkFBc0QsRUFDdEQsT0FBaUI7UUFDYixJQUFBLGtDQUEwRCxFQUF6RCxrQkFBTSxFQUFFLHNDQUFpRCxDQUFDO1FBQ2pFLElBQU0sUUFBUSxHQUFHLFVBQUMsQ0FBZSxJQUFLLE9B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QUksQ0FBQyxJQUFJLFNBQVMsQ0FBQyxFQUFFLENBQUMsVUFBVSxFQUFFLEdBQUcsQ0FBQyxDQUFDLENBQUM7SUFDdkQsQ0FBQztJQUNILHdCQUFDO0FBQUQsQ0FBQyxBQXZJRCxJQXVJQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtNaXNzaW5nVHJhbnNsYXRpb25TdHJhdGVneX0gZnJvbSAnLi4vY29yZSc7XG5pbXBvcnQgKiBhcyBodG1sIGZyb20gJy4uL21sX3BhcnNlci9hc3QnO1xuaW1wb3J0IHtIdG1sUGFyc2VyfSBmcm9tICcuLi9tbF9wYXJzZXIvaHRtbF9wYXJzZXInO1xuaW1wb3J0IHtDb25zb2xlfSBmcm9tICcuLi91dGlsJztcblxuaW1wb3J0ICogYXMgaTE4biBmcm9tICcuL2kxOG5fYXN0JztcbmltcG9ydCB7STE4bkVycm9yfSBmcm9tICcuL3BhcnNlX3V0aWwnO1xuaW1wb3J0IHtQbGFjZWhvbGRlck1hcHBlciwgU2VyaWFsaXplcn0gZnJvbSAnLi9zZXJpYWxpemVycy9zZXJpYWxpemVyJztcbmltcG9ydCB7ZXNjYXBlWG1sfSBmcm9tICcuL3NlcmlhbGl6ZXJzL3htbF9oZWxwZXInO1xuXG5cbi8qKlxuICogQSBjb250YWluZXIgZm9yIHRyYW5zbGF0ZWQgbWVzc2FnZXNcbiAqL1xuZXhwb3J0IGNsYXNzIFRyYW5zbGF0aW9uQnVuZGxlIHtcbiAgcHJpdmF0ZSBfaTE4blRvSHRtbDogSTE4blRvSHRtbFZpc2l0b3I7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIF9pMThuTm9kZXNCeU1zZ0lkOiB7W21zZ0lkOiBzdHJpbmddOiBpMThuLk5vZGVbXX0gPSB7fSwgbG9jYWxlOiBzdHJpbmd8bnVsbCxcbiAgICAgIHB1YmxpYyBkaWdlc3Q6IChtOiBpMThuLk1lc3NhZ2UpID0+IHN0cmluZyxcbiAgICAgIHB1YmxpYyBtYXBwZXJGYWN0b3J5PzogKG06IGkxOG4uTWVzc2FnZSkgPT4gUGxhY2Vob2xkZXJNYXBwZXIsXG4gICAgICBtaXNzaW5nVHJhbnNsYXRpb25TdHJhdGVneTogTWlzc2luZ1RyYW5zbGF0aW9uU3RyYXRlZ3kgPSBNaXNzaW5nVHJhbnNsYXRpb25TdHJhdGVneS5XYXJuaW5nLFxuICAgICAgY29uc29sZT86IENvbnNvbGUpIHtcbiAgICB0aGlzLl9pMThuVG9IdG1sID0gbmV3IEkxOG5Ub0h0bWxWaXNpdG9yKFxuICAgICAgICBfaTE4bk5vZGVzQnlNc2dJZCwgbG9jYWxlLCBkaWdlc3QsIG1hcHBlckZhY3RvcnkgISwgbWlzc2luZ1RyYW5zbGF0aW9uU3RyYXRlZ3ksIGNvbnNvbGUpO1xuICB9XG5cbiAgLy8gQ3JlYXRlcyBhIGBUcmFuc2xhdGlvbkJ1bmRsZWAgYnkgcGFyc2luZyB0aGUgZ2l2ZW4gYGNvbnRlbnRgIHdpdGggdGhlIGBzZXJpYWxpemVyYC5cbiAgc3RhdGljIGxvYWQoXG4gICAgICBjb250ZW50OiBzdHJpbmcsIHVybDogc3RyaW5nLCBzZXJpYWxpemVyOiBTZXJpYWxpemVyLFxuICAgICAgbWlzc2luZ1RyYW5zbGF0aW9uU3RyYXRlZ3k6IE1pc3NpbmdUcmFuc2xhdGlvblN0cmF0ZWd5LFxuICAgICAgY29uc29sZT86IENvbnNvbGUpOiBUcmFuc2xhdGlvbkJ1bmRsZSB7XG4gICAgY29uc3Qge2xvY2FsZSwgaTE4bk5vZGVzQnlNc2dJZH0gPSBzZXJpYWxpemVyLmxvYWQoY29udGVudCwgdXJsKTtcbiAgICBjb25zdCBkaWdlc3RGbiA9IChtOiBpMThuLk1lc3NhZ2UpID0+IHNlcmlhbGl6ZXIuZGlnZXN0KG0pO1xuICAgIGNvbnN0IG1hcHBlckZhY3RvcnkgPSAobTogaTE4bi5NZXNzYWdlKSA9PiBzZXJpYWxpemVyLmNyZWF0ZU5hbWVNYXBwZXIobSkgITtcbiAgICByZXR1cm4gbmV3IFRyYW5zbGF0aW9uQnVuZGxlKFxuICAgICAgICBpMThuTm9kZXNCeU1zZ0lkLCBsb2NhbGUsIGRpZ2VzdEZuLCBtYXBwZXJGYWN0b3J5LCBtaXNzaW5nVHJhbnNsYXRpb25TdHJhdGVneSwgY29uc29sZSk7XG4gIH1cblxuICAvLyBSZXR1cm5zIHRoZSB0cmFuc2xhdGlvbiBhcyBIVE1MIG5vZGVzIGZyb20gdGhlIGdpdmVuIHNvdXJjZSBtZXNzYWdlLlxuICBnZXQoc3JjTXNnOiBpMThuLk1lc3NhZ2UpOiBodG1sLk5vZGVbXSB7XG4gICAgY29uc3QgaHRtbCA9IHRoaXMuX2kxOG5Ub0h0bWwuY29udmVydChzcmNNc2cpO1xuXG4gICAgaWYgKGh0bWwuZXJyb3JzLmxlbmd0aCkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGh0bWwuZXJyb3JzLmpvaW4oJ1xcbicpKTtcbiAgICB9XG5cbiAgICByZXR1cm4gaHRtbC5ub2RlcztcbiAgfVxuXG4gIGhhcyhzcmNNc2c6IGkxOG4uTWVzc2FnZSk6IGJvb2xlYW4geyByZXR1cm4gdGhpcy5kaWdlc3Qoc3JjTXNnKSBpbiB0aGlzLl9pMThuTm9kZXNCeU1zZ0lkOyB9XG59XG5cbmNsYXNzIEkxOG5Ub0h0bWxWaXNpdG9yIGltcGxlbWVudHMgaTE4bi5WaXNpdG9yIHtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIHByaXZhdGUgX3NyY01zZyAhOiBpMThuLk1lc3NhZ2U7XG4gIHByaXZhdGUgX2NvbnRleHRTdGFjazoge21zZzogaTE4bi5NZXNzYWdlLCBtYXBwZXI6IChuYW1lOiBzdHJpbmcpID0+IHN0cmluZ31bXSA9IFtdO1xuICBwcml2YXRlIF9lcnJvcnM6IEkxOG5FcnJvcltdID0gW107XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9tYXBwZXIgITogKG5hbWU6IHN0cmluZykgPT4gc3RyaW5nO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSBfaTE4bk5vZGVzQnlNc2dJZDoge1ttc2dJZDogc3RyaW5nXTogaTE4bi5Ob2RlW119ID0ge30sIHByaXZhdGUgX2xvY2FsZTogc3RyaW5nfG51bGwsXG4gICAgICBwcml2YXRlIF9kaWdlc3Q6IChtOiBpMThuLk1lc3NhZ2UpID0+IHN0cmluZyxcbiAgICAgIHByaXZhdGUgX21hcHBlckZhY3Rvcnk6IChtOiBpMThuLk1lc3NhZ2UpID0+IFBsYWNlaG9sZGVyTWFwcGVyLFxuICAgICAgcHJpdmF0ZSBfbWlzc2luZ1RyYW5zbGF0aW9uU3RyYXRlZ3k6IE1pc3NpbmdUcmFuc2xhdGlvblN0cmF0ZWd5LCBwcml2YXRlIF9jb25zb2xlPzogQ29uc29sZSkge1xuICB9XG5cbiAgY29udmVydChzcmNNc2c6IGkxOG4uTWVzc2FnZSk6IHtub2RlczogaHRtbC5Ob2RlW10sIGVycm9yczogSTE4bkVycm9yW119IHtcbiAgICB0aGlzLl9jb250ZXh0U3RhY2subGVuZ3RoID0gMDtcbiAgICB0aGlzLl9lcnJvcnMubGVuZ3RoID0gMDtcblxuICAgIC8vIGkxOG4gdG8gdGV4dFxuICAgIGNvbnN0IHRleHQgPSB0aGlzLl9jb252ZXJ0VG9UZXh0KHNyY01zZyk7XG5cbiAgICAvLyB0ZXh0IHRvIGh0bWxcbiAgICBjb25zdCB1cmwgPSBzcmNNc2cubm9kZXNbMF0uc291cmNlU3Bhbi5zdGFydC5maWxlLnVybDtcbiAgICBjb25zdCBodG1sID0gbmV3IEh0bWxQYXJzZXIoKS5wYXJzZSh0ZXh0LCB1cmwsIHt0b2tlbml6ZUV4cGFuc2lvbkZvcm1zOiB0cnVlfSk7XG5cbiAgICByZXR1cm4ge1xuICAgICAgbm9kZXM6IGh0bWwucm9vdE5vZGVzLFxuICAgICAgZXJyb3JzOiBbLi4udGhpcy5fZXJyb3JzLCAuLi5odG1sLmVycm9yc10sXG4gICAgfTtcbiAgfVxuXG4gIHZpc2l0VGV4dCh0ZXh0OiBpMThuLlRleHQsIGNvbnRleHQ/OiBhbnkpOiBzdHJpbmcge1xuICAgIC8vIGBjb252ZXJ0KClgIHVzZXMgYW4gYEh0bWxQYXJzZXJgIHRvIHJldHVybiBgaHRtbC5Ob2RlYHNcbiAgICAvLyB3ZSBzaG91bGQgdGhlbiBtYWtlIHN1cmUgdGhhdCBhbnkgc3BlY2lhbCBjaGFyYWN0ZXJzIGFyZSBlc2NhcGVkXG4gICAgcmV0dXJuIGVzY2FwZVhtbCh0ZXh0LnZhbHVlKTtcbiAgfVxuXG4gIHZpc2l0Q29udGFpbmVyKGNvbnRhaW5lcjogaTE4bi5Db250YWluZXIsIGNvbnRleHQ/OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiBjb250YWluZXIuY2hpbGRyZW4ubWFwKG4gPT4gbi52aXNpdCh0aGlzKSkuam9pbignJyk7XG4gIH1cblxuICB2aXNpdEljdShpY3U6IGkxOG4uSWN1LCBjb250ZXh0PzogYW55KTogYW55IHtcbiAgICBjb25zdCBjYXNlcyA9IE9iamVjdC5rZXlzKGljdS5jYXNlcykubWFwKGsgPT4gYCR7a30geyR7aWN1LmNhc2VzW2tdLnZpc2l0KHRoaXMpfX1gKTtcblxuICAgIC8vIFRPRE8odmljYik6IE9uY2UgYWxsIGZvcm1hdCBzd2l0Y2ggdG8gdXNpbmcgZXhwcmVzc2lvbiBwbGFjZWhvbGRlcnNcbiAgICAvLyB3ZSBzaG91bGQgdGhyb3cgd2hlbiB0aGUgcGxhY2Vob2xkZXIgaXMgbm90IGluIHRoZSBzb3VyY2UgbWVzc2FnZVxuICAgIGNvbnN0IGV4cCA9IHRoaXMuX3NyY01zZy5wbGFjZWhvbGRlcnMuaGFzT3duUHJvcGVydHkoaWN1LmV4cHJlc3Npb24pID9cbiAgICAgICAgdGhpcy5fc3JjTXNnLnBsYWNlaG9sZGVyc1tpY3UuZXhwcmVzc2lvbl0gOlxuICAgICAgICBpY3UuZXhwcmVzc2lvbjtcblxuICAgIHJldHVybiBgeyR7ZXhwfSwgJHtpY3UudHlwZX0sICR7Y2FzZXMuam9pbignICcpfX1gO1xuICB9XG5cbiAgdmlzaXRQbGFjZWhvbGRlcihwaDogaTE4bi5QbGFjZWhvbGRlciwgY29udGV4dD86IGFueSk6IHN0cmluZyB7XG4gICAgY29uc3QgcGhOYW1lID0gdGhpcy5fbWFwcGVyKHBoLm5hbWUpO1xuICAgIGlmICh0aGlzLl9zcmNNc2cucGxhY2Vob2xkZXJzLmhhc093blByb3BlcnR5KHBoTmFtZSkpIHtcbiAgICAgIHJldHVybiB0aGlzLl9zcmNNc2cucGxhY2Vob2xkZXJzW3BoTmFtZV07XG4gICAgfVxuXG4gICAgaWYgKHRoaXMuX3NyY01zZy5wbGFjZWhvbGRlclRvTWVzc2FnZS5oYXNPd25Qcm9wZXJ0eShwaE5hbWUpKSB7XG4gICAgICByZXR1cm4gdGhpcy5fY29udmVydFRvVGV4dCh0aGlzLl9zcmNNc2cucGxhY2Vob2xkZXJUb01lc3NhZ2VbcGhOYW1lXSk7XG4gICAgfVxuXG4gICAgdGhpcy5fYWRkRXJyb3IocGgsIGBVbmtub3duIHBsYWNlaG9sZGVyIFwiJHtwaC5uYW1lfVwiYCk7XG4gICAgcmV0dXJuICcnO1xuICB9XG5cbiAgLy8gTG9hZGVkIG1lc3NhZ2UgY29udGFpbnMgb25seSBwbGFjZWhvbGRlcnMgKHZzIHRhZyBhbmQgaWN1IHBsYWNlaG9sZGVycykuXG4gIC8vIEhvd2V2ZXIgd2hlbiBhIHRyYW5zbGF0aW9uIGNhbiBub3QgYmUgZm91bmQsIHdlIG5lZWQgdG8gc2VyaWFsaXplIHRoZSBzb3VyY2UgbWVzc2FnZVxuICAvLyB3aGljaCBjYW4gY29udGFpbiB0YWcgcGxhY2Vob2xkZXJzXG4gIHZpc2l0VGFnUGxhY2Vob2xkZXIocGg6IGkxOG4uVGFnUGxhY2Vob2xkZXIsIGNvbnRleHQ/OiBhbnkpOiBzdHJpbmcge1xuICAgIGNvbnN0IHRhZyA9IGAke3BoLnRhZ31gO1xuICAgIGNvbnN0IGF0dHJzID0gT2JqZWN0LmtleXMocGguYXR0cnMpLm1hcChuYW1lID0+IGAke25hbWV9PVwiJHtwaC5hdHRyc1tuYW1lXX1cImApLmpvaW4oJyAnKTtcbiAgICBpZiAocGguaXNWb2lkKSB7XG4gICAgICByZXR1cm4gYDwke3RhZ30gJHthdHRyc30vPmA7XG4gICAgfVxuICAgIGNvbnN0IGNoaWxkcmVuID0gcGguY2hpbGRyZW4ubWFwKChjOiBpMThuLk5vZGUpID0+IGMudmlzaXQodGhpcykpLmpvaW4oJycpO1xuICAgIHJldHVybiBgPCR7dGFnfSAke2F0dHJzfT4ke2NoaWxkcmVufTwvJHt0YWd9PmA7XG4gIH1cblxuICAvLyBMb2FkZWQgbWVzc2FnZSBjb250YWlucyBvbmx5IHBsYWNlaG9sZGVycyAodnMgdGFnIGFuZCBpY3UgcGxhY2Vob2xkZXJzKS5cbiAgLy8gSG93ZXZlciB3aGVuIGEgdHJhbnNsYXRpb24gY2FuIG5vdCBiZSBmb3VuZCwgd2UgbmVlZCB0byBzZXJpYWxpemUgdGhlIHNvdXJjZSBtZXNzYWdlXG4gIC8vIHdoaWNoIGNhbiBjb250YWluIHRhZyBwbGFjZWhvbGRlcnNcbiAgdmlzaXRJY3VQbGFjZWhvbGRlcihwaDogaTE4bi5JY3VQbGFjZWhvbGRlciwgY29udGV4dD86IGFueSk6IHN0cmluZyB7XG4gICAgLy8gQW4gSUNVIHBsYWNlaG9sZGVyIHJlZmVyZW5jZXMgdGhlIHNvdXJjZSBtZXNzYWdlIHRvIGJlIHNlcmlhbGl6ZWRcbiAgICByZXR1cm4gdGhpcy5fY29udmVydFRvVGV4dCh0aGlzLl9zcmNNc2cucGxhY2Vob2xkZXJUb01lc3NhZ2VbcGgubmFtZV0pO1xuICB9XG5cbiAgLyoqXG4gICAqIENvbnZlcnQgYSBzb3VyY2UgbWVzc2FnZSB0byBhIHRyYW5zbGF0ZWQgdGV4dCBzdHJpbmc6XG4gICAqIC0gdGV4dCBub2RlcyBhcmUgcmVwbGFjZWQgd2l0aCB0aGVpciB0cmFuc2xhdGlvbixcbiAgICogLSBwbGFjZWhvbGRlcnMgYXJlIHJlcGxhY2VkIHdpdGggdGhlaXIgY29udGVudCxcbiAgICogLSBJQ1Ugbm9kZXMgYXJlIGNvbnZlcnRlZCB0byBJQ1UgZXhwcmVzc2lvbnMuXG4gICAqL1xuICBwcml2YXRlIF9jb252ZXJ0VG9UZXh0KHNyY01zZzogaTE4bi5NZXNzYWdlKTogc3RyaW5nIHtcbiAgICBjb25zdCBpZCA9IHRoaXMuX2RpZ2VzdChzcmNNc2cpO1xuICAgIGNvbnN0IG1hcHBlciA9IHRoaXMuX21hcHBlckZhY3RvcnkgPyB0aGlzLl9tYXBwZXJGYWN0b3J5KHNyY01zZykgOiBudWxsO1xuICAgIGxldCBub2RlczogaTE4bi5Ob2RlW107XG5cbiAgICB0aGlzLl9jb250ZXh0U3RhY2sucHVzaCh7bXNnOiB0aGlzLl9zcmNNc2csIG1hcHBlcjogdGhpcy5fbWFwcGVyfSk7XG4gICAgdGhpcy5fc3JjTXNnID0gc3JjTXNnO1xuXG4gICAgaWYgKHRoaXMuX2kxOG5Ob2Rlc0J5TXNnSWQuaGFzT3duUHJvcGVydHkoaWQpKSB7XG4gICAgICAvLyBXaGVuIHRoZXJlIGlzIGEgdHJhbnNsYXRpb24gdXNlIGl0cyBub2RlcyBhcyB0aGUgc291cmNlXG4gICAgICAvLyBBbmQgY3JlYXRlIGEgbWFwcGVyIHRvIGNvbnZlcnQgc2VyaWFsaXplZCBwbGFjZWhvbGRlciBuYW1lcyB0byBpbnRlcm5hbCBuYW1lc1xuICAgICAgbm9kZXMgPSB0aGlzLl9pMThuTm9kZXNCeU1zZ0lkW2lkXTtcbiAgICAgIHRoaXMuX21hcHBlciA9IChuYW1lOiBzdHJpbmcpID0+IG1hcHBlciA/IG1hcHBlci50b0ludGVybmFsTmFtZShuYW1lKSAhIDogbmFtZTtcbiAgICB9IGVsc2Uge1xuICAgICAgLy8gV2hlbiBubyB0cmFuc2xhdGlvbiBoYXMgYmVlbiBmb3VuZFxuICAgICAgLy8gLSByZXBvcnQgYW4gZXJyb3IgLyBhIHdhcm5pbmcgLyBub3RoaW5nLFxuICAgICAgLy8gLSB1c2UgdGhlIG5vZGVzIGZyb20gdGhlIG9yaWdpbmFsIG1lc3NhZ2VcbiAgICAgIC8vIC0gcGxhY2Vob2xkZXJzIGFyZSBhbHJlYWR5IGludGVybmFsIGFuZCBuZWVkIG5vIG1hcHBlclxuICAgICAgaWYgKHRoaXMuX21pc3NpbmdUcmFuc2xhdGlvblN0cmF0ZWd5ID09PSBNaXNzaW5nVHJhbnNsYXRpb25TdHJhdGVneS5FcnJvcikge1xuICAgICAgICBjb25zdCBjdHggPSB0aGlzLl9sb2NhbGUgPyBgIGZvciBsb2NhbGUgXCIke3RoaXMuX2xvY2FsZX1cImAgOiAnJztcbiAgICAgICAgdGhpcy5fYWRkRXJyb3Ioc3JjTXNnLm5vZGVzWzBdLCBgTWlzc2luZyB0cmFuc2xhdGlvbiBmb3IgbWVzc2FnZSBcIiR7aWR9XCIke2N0eH1gKTtcbiAgICAgIH0gZWxzZSBpZiAoXG4gICAgICAgICAgdGhpcy5fY29uc29sZSAmJlxuICAgICAgICAgIHRoaXMuX21pc3NpbmdUcmFuc2xhdGlvblN0cmF0ZWd5ID09PSBNaXNzaW5nVHJhbnNsYXRpb25TdHJhdGVneS5XYXJuaW5nKSB7XG4gICAgICAgIGNvbnN0IGN0eCA9IHRoaXMuX2xvY2FsZSA/IGAgZm9yIGxvY2FsZSBcIiR7dGhpcy5fbG9jYWxlfVwiYCA6ICcnO1xuICAgICAgICB0aGlzLl9jb25zb2xlLndhcm4oYE1pc3NpbmcgdHJhbnNsYXRpb24gZm9yIG1lc3NhZ2UgXCIke2lkfVwiJHtjdHh9YCk7XG4gICAgICB9XG4gICAgICBub2RlcyA9IHNyY01zZy5ub2RlcztcbiAgICAgIHRoaXMuX21hcHBlciA9IChuYW1lOiBzdHJpbmcpID0+IG5hbWU7XG4gICAgfVxuICAgIGNvbnN0IHRleHQgPSBub2Rlcy5tYXAobm9kZSA9PiBub2RlLnZpc2l0KHRoaXMpKS5qb2luKCcnKTtcbiAgICBjb25zdCBjb250ZXh0ID0gdGhpcy5fY29udGV4dFN0YWNrLnBvcCgpICE7XG4gICAgdGhpcy5fc3JjTXNnID0gY29udGV4dC5tc2c7XG4gICAgdGhpcy5fbWFwcGVyID0gY29udGV4dC5tYXBwZXI7XG4gICAgcmV0dXJuIHRleHQ7XG4gIH1cblxuICBwcml2YXRlIF9hZGRFcnJvcihlbDogaTE4bi5Ob2RlLCBtc2c6IHN0cmluZykge1xuICAgIHRoaXMuX2Vycm9ycy5wdXNoKG5ldyBJMThuRXJyb3IoZWwuc291cmNlU3BhbiwgbXNnKSk7XG4gIH1cbn1cbiJdfQ==