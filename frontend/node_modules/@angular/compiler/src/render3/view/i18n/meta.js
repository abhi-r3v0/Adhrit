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
        define("@angular/compiler/src/render3/view/i18n/meta", ["require", "exports", "tslib", "@angular/compiler/src/i18n/digest", "@angular/compiler/src/i18n/i18n_ast", "@angular/compiler/src/i18n/i18n_parser", "@angular/compiler/src/ml_parser/ast", "@angular/compiler/src/ml_parser/interpolation_config", "@angular/compiler/src/output/output_ast", "@angular/compiler/src/render3/view/i18n/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.i18nMetaToDocStmt = exports.parseI18nMeta = exports.I18nMetaVisitor = void 0;
    var tslib_1 = require("tslib");
    var digest_1 = require("@angular/compiler/src/i18n/digest");
    var i18n = require("@angular/compiler/src/i18n/i18n_ast");
    var i18n_parser_1 = require("@angular/compiler/src/i18n/i18n_parser");
    var html = require("@angular/compiler/src/ml_parser/ast");
    var interpolation_config_1 = require("@angular/compiler/src/ml_parser/interpolation_config");
    var o = require("@angular/compiler/src/output/output_ast");
    var util_1 = require("@angular/compiler/src/render3/view/i18n/util");
    var setI18nRefs = function (htmlNode, i18nNode) {
        if (htmlNode instanceof html.NodeWithI18n) {
            if (i18nNode instanceof i18n.IcuPlaceholder && htmlNode.i18n instanceof i18n.Message) {
                // This html node represents an ICU but this is a second processing pass, and the legacy id
                // was computed in the previous pass and stored in the `i18n` property as a message.
                // We are about to wipe out that property so capture the previous message to be reused when
                // generating the message for this ICU later. See `_generateI18nMessage()`.
                i18nNode.previousMessage = htmlNode.i18n;
            }
            htmlNode.i18n = i18nNode;
        }
        return i18nNode;
    };
    /**
     * This visitor walks over HTML parse tree and converts information stored in
     * i18n-related attributes ("i18n" and "i18n-*") into i18n meta object that is
     * stored with other element's and attribute's information.
     */
    var I18nMetaVisitor = /** @class */ (function () {
        function I18nMetaVisitor(interpolationConfig, keepI18nAttrs, enableI18nLegacyMessageIdFormat) {
            if (interpolationConfig === void 0) { interpolationConfig = interpolation_config_1.DEFAULT_INTERPOLATION_CONFIG; }
            if (keepI18nAttrs === void 0) { keepI18nAttrs = false; }
            if (enableI18nLegacyMessageIdFormat === void 0) { enableI18nLegacyMessageIdFormat = false; }
            this.interpolationConfig = interpolationConfig;
            this.keepI18nAttrs = keepI18nAttrs;
            this.enableI18nLegacyMessageIdFormat = enableI18nLegacyMessageIdFormat;
            // whether visited nodes contain i18n information
            this.hasI18nMeta = false;
            // i18n message generation factory
            this._createI18nMessage = i18n_parser_1.createI18nMessageFactory(this.interpolationConfig);
        }
        I18nMetaVisitor.prototype._generateI18nMessage = function (nodes, meta, visitNodeFn) {
            if (meta === void 0) { meta = ''; }
            var _a = this._parseMetadata(meta), meaning = _a.meaning, description = _a.description, customId = _a.customId;
            var message = this._createI18nMessage(nodes, meaning, description, customId, visitNodeFn);
            this._setMessageId(message, meta);
            this._setLegacyIds(message, meta);
            return message;
        };
        I18nMetaVisitor.prototype.visitElement = function (element) {
            var e_1, _a, e_2, _b;
            if (util_1.hasI18nAttrs(element)) {
                this.hasI18nMeta = true;
                var attrs = [];
                var attrsMeta = {};
                try {
                    for (var _c = tslib_1.__values(element.attrs), _d = _c.next(); !_d.done; _d = _c.next()) {
                        var attr = _d.value;
                        if (attr.name === util_1.I18N_ATTR) {
                            // root 'i18n' node attribute
                            var i18n_1 = element.i18n || attr.value;
                            var message = this._generateI18nMessage(element.children, i18n_1, setI18nRefs);
                            // do not assign empty i18n meta
                            if (message.nodes.length) {
                                element.i18n = message;
                            }
                        }
                        else if (attr.name.startsWith(util_1.I18N_ATTR_PREFIX)) {
                            // 'i18n-*' attributes
                            var key = attr.name.slice(util_1.I18N_ATTR_PREFIX.length);
                            attrsMeta[key] = attr.value;
                        }
                        else {
                            // non-i18n attributes
                            attrs.push(attr);
                        }
                    }
                }
                catch (e_1_1) { e_1 = { error: e_1_1 }; }
                finally {
                    try {
                        if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
                    }
                    finally { if (e_1) throw e_1.error; }
                }
                // set i18n meta for attributes
                if (Object.keys(attrsMeta).length) {
                    try {
                        for (var attrs_1 = tslib_1.__values(attrs), attrs_1_1 = attrs_1.next(); !attrs_1_1.done; attrs_1_1 = attrs_1.next()) {
                            var attr = attrs_1_1.value;
                            var meta = attrsMeta[attr.name];
                            // do not create translation for empty attributes
                            if (meta !== undefined && attr.value) {
                                attr.i18n = this._generateI18nMessage([attr], attr.i18n || meta);
                            }
                        }
                    }
                    catch (e_2_1) { e_2 = { error: e_2_1 }; }
                    finally {
                        try {
                            if (attrs_1_1 && !attrs_1_1.done && (_b = attrs_1.return)) _b.call(attrs_1);
                        }
                        finally { if (e_2) throw e_2.error; }
                    }
                }
                if (!this.keepI18nAttrs) {
                    // update element's attributes,
                    // keeping only non-i18n related ones
                    element.attrs = attrs;
                }
            }
            html.visitAll(this, element.children, element.i18n);
            return element;
        };
        I18nMetaVisitor.prototype.visitExpansion = function (expansion, currentMessage) {
            var message;
            var meta = expansion.i18n;
            this.hasI18nMeta = true;
            if (meta instanceof i18n.IcuPlaceholder) {
                // set ICU placeholder name (e.g. "ICU_1"),
                // generated while processing root element contents,
                // so we can reference it when we output translation
                var name_1 = meta.name;
                message = this._generateI18nMessage([expansion], meta);
                var icu = util_1.icuFromI18nMessage(message);
                icu.name = name_1;
            }
            else {
                // ICU is a top level message, try to use metadata from container element if provided via
                // `context` argument. Note: context may not be available for standalone ICUs (without
                // wrapping element), so fallback to ICU metadata in this case.
                message = this._generateI18nMessage([expansion], currentMessage || meta);
            }
            expansion.i18n = message;
            return expansion;
        };
        I18nMetaVisitor.prototype.visitText = function (text) {
            return text;
        };
        I18nMetaVisitor.prototype.visitAttribute = function (attribute) {
            return attribute;
        };
        I18nMetaVisitor.prototype.visitComment = function (comment) {
            return comment;
        };
        I18nMetaVisitor.prototype.visitExpansionCase = function (expansionCase) {
            return expansionCase;
        };
        /**
         * Parse the general form `meta` passed into extract the explicit metadata needed to create a
         * `Message`.
         *
         * There are three possibilities for the `meta` variable
         * 1) a string from an `i18n` template attribute: parse it to extract the metadata values.
         * 2) a `Message` from a previous processing pass: reuse the metadata values in the message.
         * 4) other: ignore this and just process the message metadata as normal
         *
         * @param meta the bucket that holds information about the message
         * @returns the parsed metadata.
         */
        I18nMetaVisitor.prototype._parseMetadata = function (meta) {
            return typeof meta === 'string' ? parseI18nMeta(meta) :
                meta instanceof i18n.Message ? meta : {};
        };
        /**
         * Generate (or restore) message id if not specified already.
         */
        I18nMetaVisitor.prototype._setMessageId = function (message, meta) {
            if (!message.id) {
                message.id = meta instanceof i18n.Message && meta.id || digest_1.decimalDigest(message);
            }
        };
        /**
         * Update the `message` with a `legacyId` if necessary.
         *
         * @param message the message whose legacy id should be set
         * @param meta information about the message being processed
         */
        I18nMetaVisitor.prototype._setLegacyIds = function (message, meta) {
            if (this.enableI18nLegacyMessageIdFormat) {
                message.legacyIds = [digest_1.computeDigest(message), digest_1.computeDecimalDigest(message)];
            }
            else if (typeof meta !== 'string') {
                // This occurs if we are doing the 2nd pass after whitespace removal (see `parseTemplate()` in
                // `packages/compiler/src/render3/view/template.ts`).
                // In that case we want to reuse the legacy message generated in the 1st pass (see
                // `setI18nRefs()`).
                var previousMessage = meta instanceof i18n.Message ?
                    meta :
                    meta instanceof i18n.IcuPlaceholder ? meta.previousMessage : undefined;
                message.legacyIds = previousMessage ? previousMessage.legacyIds : [];
            }
        };
        return I18nMetaVisitor;
    }());
    exports.I18nMetaVisitor = I18nMetaVisitor;
    /** I18n separators for metadata **/
    var I18N_MEANING_SEPARATOR = '|';
    var I18N_ID_SEPARATOR = '@@';
    /**
     * Parses i18n metas like:
     *  - "@@id",
     *  - "description[@@id]",
     *  - "meaning|description[@@id]"
     * and returns an object with parsed output.
     *
     * @param meta String that represents i18n meta
     * @returns Object with id, meaning and description fields
     */
    function parseI18nMeta(meta) {
        var _a, _b;
        if (meta === void 0) { meta = ''; }
        var customId;
        var meaning;
        var description;
        meta = meta.trim();
        if (meta) {
            var idIndex = meta.indexOf(I18N_ID_SEPARATOR);
            var descIndex = meta.indexOf(I18N_MEANING_SEPARATOR);
            var meaningAndDesc = void 0;
            _a = tslib_1.__read((idIndex > -1) ? [meta.slice(0, idIndex), meta.slice(idIndex + 2)] : [meta, ''], 2), meaningAndDesc = _a[0], customId = _a[1];
            _b = tslib_1.__read((descIndex > -1) ?
                [meaningAndDesc.slice(0, descIndex), meaningAndDesc.slice(descIndex + 1)] :
                ['', meaningAndDesc], 2), meaning = _b[0], description = _b[1];
        }
        return { customId: customId, meaning: meaning, description: description };
    }
    exports.parseI18nMeta = parseI18nMeta;
    // Converts i18n meta information for a message (id, description, meaning)
    // to a JsDoc statement formatted as expected by the Closure compiler.
    function i18nMetaToDocStmt(meta) {
        var tags = [];
        if (meta.description) {
            tags.push({ tagName: "desc" /* Desc */, text: meta.description });
        }
        if (meta.meaning) {
            tags.push({ tagName: "meaning" /* Meaning */, text: meta.meaning });
        }
        return tags.length == 0 ? null : new o.JSDocCommentStmt(tags);
    }
    exports.i18nMetaToDocStmt = i18nMetaToDocStmt;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWV0YS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9yZW5kZXIzL3ZpZXcvaTE4bi9tZXRhLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFFSCw0REFBd0Y7SUFDeEYsMERBQStDO0lBQy9DLHNFQUFnRjtJQUNoRiwwREFBK0M7SUFDL0MsNkZBQTBHO0lBQzFHLDJEQUFnRDtJQUVoRCxxRUFBcUY7SUFXckYsSUFBTSxXQUFXLEdBQWdCLFVBQUMsUUFBUSxFQUFFLFFBQVE7UUFDbEQsSUFBSSxRQUFRLFlBQVksSUFBSSxDQUFDLFlBQVksRUFBRTtZQUN6QyxJQUFJLFFBQVEsWUFBWSxJQUFJLENBQUMsY0FBYyxJQUFJLFFBQVEsQ0FBQyxJQUFJLFlBQVksSUFBSSxDQUFDLE9BQU8sRUFBRTtnQkFDcEYsMkZBQTJGO2dCQUMzRixvRkFBb0Y7Z0JBQ3BGLDJGQUEyRjtnQkFDM0YsMkVBQTJFO2dCQUMzRSxRQUFRLENBQUMsZUFBZSxHQUFHLFFBQVEsQ0FBQyxJQUFJLENBQUM7YUFDMUM7WUFDRCxRQUFRLENBQUMsSUFBSSxHQUFHLFFBQVEsQ0FBQztTQUMxQjtRQUNELE9BQU8sUUFBUSxDQUFDO0lBQ2xCLENBQUMsQ0FBQztJQUVGOzs7O09BSUc7SUFDSDtRQU9FLHlCQUNZLG1CQUF1RSxFQUN2RSxhQUFxQixFQUFVLCtCQUF1QztZQUR0RSxvQ0FBQSxFQUFBLHNCQUEyQyxtREFBNEI7WUFDdkUsOEJBQUEsRUFBQSxxQkFBcUI7WUFBVSxnREFBQSxFQUFBLHVDQUF1QztZQUR0RSx3QkFBbUIsR0FBbkIsbUJBQW1CLENBQW9EO1lBQ3ZFLGtCQUFhLEdBQWIsYUFBYSxDQUFRO1lBQVUsb0NBQStCLEdBQS9CLCtCQUErQixDQUFRO1lBUmxGLGlEQUFpRDtZQUMxQyxnQkFBVyxHQUFZLEtBQUssQ0FBQztZQUVwQyxr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LGVBQXlCLENBQUMsU0FBUyxHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztnQkFDdkMsQ0FBQyxjQUFjLENBQUMsS0FBSyxDQUFDLENBQUMsRUFBRSxTQUFTLENBQUMsRUFBRSxjQUFjLENBQUMsS0FBSyxDQUFDLFNBQVMsR0FBRyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7Z0JBQzNFLENBQUMsRUFBRSxFQUFFLGNBQWMsQ0FBQyxJQUFBLEVBRnZCLE9BQU8sUUFBQSxFQUFFLFdBQVcsUUFBQSxDQUVJO1NBQzFCO1FBRUQsT0FBTyxFQUFDLFFBQVEsVUFBQSxFQUFFLE9BQU8sU0FBQSxFQUFFLFdBQVcsYUFBQSxFQUFDLENBQUM7SUFDMUMsQ0FBQztJQWxCRCxzQ0FrQkM7SUFFRCwwRUFBMEU7SUFDMUUsc0VBQXNFO0lBQ3RFLFNBQWdCLGlCQUFpQixDQUFDLElBQWM7UUFDOUMsSUFBTSxJQUFJLEdBQWlCLEVBQUUsQ0FBQztRQUM5QixJQUFJLElBQUksQ0FBQyxXQUFXLEVBQUU7WUFDcEIsSUFBSSxDQUFDLElBQUksQ0FBQyxFQUFDLE9BQU8sbUJBQXFCLEVBQUUsSUFBSSxFQUFFLElBQUksQ0FBQyxXQUFXLEVBQUMsQ0FBQyxDQUFDO1NBQ25FO1FBQ0QsSUFBSSxJQUFJLENBQUMsT0FBTyxFQUFFO1lBQ2hCLElBQUksQ0FBQyxJQUFJLENBQUMsRUFBQyxPQUFPLHlCQUF3QixFQUFFLElBQUksRUFBRSxJQUFJLENBQUMsT0FBTyxFQUFDLENBQUMsQ0FBQztTQUNsRTtRQUNELE9BQU8sSUFBSSxDQUFDLE1BQU0sSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDLENBQUMsZ0JBQWdCLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDaEUsQ0FBQztJQVRELDhDQVNDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Y29tcHV0ZURlY2ltYWxEaWdlc3QsIGNvbXB1dGVEaWdlc3QsIGRlY2ltYWxEaWdlc3R9IGZyb20gJy4uLy4uLy4uL2kxOG4vZGlnZXN0JztcbmltcG9ydCAqIGFzIGkxOG4gZnJvbSAnLi4vLi4vLi4vaTE4bi9pMThuX2FzdCc7XG5pbXBvcnQge2NyZWF0ZUkxOG5NZXNzYWdlRmFjdG9yeSwgVmlzaXROb2RlRm59IGZyb20gJy4uLy4uLy4uL2kxOG4vaTE4bl9wYXJzZXInO1xuaW1wb3J0ICogYXMgaHRtbCBmcm9tICcuLi8uLi8uLi9tbF9wYXJzZXIvYXN0JztcbmltcG9ydCB7REVGQVVMVF9JTlRFUlBPTEFUSU9OX0NPTkZJRywgSW50ZXJwb2xhdGlvbkNvbmZpZ30gZnJvbSAnLi4vLi4vLi4vbWxfcGFyc2VyL2ludGVycG9sYXRpb25fY29uZmlnJztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi4vLi4vLi4vb3V0cHV0L291dHB1dF9hc3QnO1xuXG5pbXBvcnQge2hhc0kxOG5BdHRycywgSTE4Tl9BVFRSLCBJMThOX0FUVFJfUFJFRklYLCBpY3VGcm9tSTE4bk1lc3NhZ2V9IGZyb20gJy4vdXRpbCc7XG5cbmV4cG9ydCB0eXBlIEkxOG5NZXRhID0ge1xuICBpZD86IHN0cmluZyxcbiAgY3VzdG9tSWQ/OiBzdHJpbmcsXG4gIGxlZ2FjeUlkcz86IHN0cmluZ1tdLFxuICBkZXNjcmlwdGlvbj86IHN0cmluZyxcbiAgbWVhbmluZz86IHN0cmluZ1xufTtcblxuXG5jb25zdCBzZXRJMThuUmVmczogVmlzaXROb2RlRm4gPSAoaHRtbE5vZGUsIGkxOG5Ob2RlKSA9PiB7XG4gIGlmIChodG1sTm9kZSBpbnN0YW5jZW9mIGh0bWwuTm9kZVdpdGhJMThuKSB7XG4gICAgaWYgKGkxOG5Ob2RlIGluc3RhbmNlb2YgaTE4bi5JY3VQbGFjZWhvbGRlciAmJiBodG1sTm9kZS5pMThuIGluc3RhbmNlb2YgaTE4bi5NZXNzYWdlKSB7XG4gICAgICAvLyBUaGlzIGh0bWwgbm9kZSByZXByZXNlbnRzIGFuIElDVSBidXQgdGhpcyBpcyBhIHNlY29uZCBwcm9jZXNzaW5nIHBhc3MsIGFuZCB0aGUgbGVnYWN5IGlkXG4gICAgICAvLyB3YXMgY29tcHV0ZWQgaW4gdGhlIHByZXZpb3VzIHBhc3MgYW5kIHN0b3JlZCBpbiB0aGUgYGkxOG5gIHByb3BlcnR5IGFzIGEgbWVzc2FnZS5cbiAgICAgIC8vIFdlIGFyZSBhYm91dCB0byB3aXBlIG91dCB0aGF0IHByb3BlcnR5IHNvIGNhcHR1cmUgdGhlIHByZXZpb3VzIG1lc3NhZ2UgdG8gYmUgcmV1c2VkIHdoZW5cbiAgICAgIC8vIGdlbmVyYXRpbmcgdGhlIG1lc3NhZ2UgZm9yIHRoaXMgSUNVIGxhdGVyLiBTZWUgYF9nZW5lcmF0ZUkxOG5NZXNzYWdlKClgLlxuICAgICAgaTE4bk5vZGUucHJldmlvdXNNZXNzYWdlID0gaHRtbE5vZGUuaTE4bjtcbiAgICB9XG4gICAgaHRtbE5vZGUuaTE4biA9IGkxOG5Ob2RlO1xuICB9XG4gIHJldHVybiBpMThuTm9kZTtcbn07XG5cbi8qKlxuICogVGhpcyB2aXNpdG9yIHdhbGtzIG92ZXIgSFRNTCBwYXJzZSB0cmVlIGFuZCBjb252ZXJ0cyBpbmZvcm1hdGlvbiBzdG9yZWQgaW5cbiAqIGkxOG4tcmVsYXRlZCBhdHRyaWJ1dGVzIChcImkxOG5cIiBhbmQgXCJpMThuLSpcIikgaW50byBpMThuIG1ldGEgb2JqZWN0IHRoYXQgaXNcbiAqIHN0b3JlZCB3aXRoIG90aGVyIGVsZW1lbnQncyBhbmQgYXR0cmlidXRlJ3MgaW5mb3JtYXRpb24uXG4gKi9cbmV4cG9ydCBjbGFzcyBJMThuTWV0YVZpc2l0b3IgaW1wbGVtZW50cyBodG1sLlZpc2l0b3Ige1xuICAvLyB3aGV0aGVyIHZpc2l0ZWQgbm9kZXMgY29udGFpbiBpMThuIGluZm9ybWF0aW9uXG4gIHB1YmxpYyBoYXNJMThuTWV0YTogYm9vbGVhbiA9IGZhbHNlO1xuXG4gIC8vIGkxOG4gbWVzc2FnZSBnZW5lcmF0aW9uIGZhY3RvcnlcbiAgcHJpdmF0ZSBfY3JlYXRlSTE4bk1lc3NhZ2UgPSBjcmVhdGVJMThuTWVzc2FnZUZhY3RvcnkodGhpcy5pbnRlcnBvbGF0aW9uQ29uZmlnKTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgaW50ZXJwb2xhdGlvbkNvbmZpZzogSW50ZXJwb2xhdGlvbkNvbmZpZyA9IERFRkFVTFRfSU5URVJQT0xBVElPTl9DT05GSUcsXG4gICAgICBwcml2YXRlIGtlZXBJMThuQXR0cnMgPSBmYWxzZSwgcHJpdmF0ZSBlbmFibGVJMThuTGVnYWN5TWVzc2FnZUlkRm9ybWF0ID0gZmFsc2UpIHt9XG5cbiAgcHJpdmF0ZSBfZ2VuZXJhdGVJMThuTWVzc2FnZShcbiAgICAgIG5vZGVzOiBodG1sLk5vZGVbXSwgbWV0YTogc3RyaW5nfGkxOG4uSTE4bk1ldGEgPSAnJyxcbiAgICAgIHZpc2l0Tm9kZUZuPzogVmlzaXROb2RlRm4pOiBpMThuLk1lc3NhZ2Uge1xuICAgIGNvbnN0IHttZWFuaW5nLCBkZXNjcmlwdGlvbiwgY3VzdG9tSWR9ID0gdGhpcy5fcGFyc2VNZXRhZGF0YShtZXRhKTtcbiAgICBjb25zdCBtZXNzYWdlID0gdGhpcy5fY3JlYXRlSTE4bk1lc3NhZ2Uobm9kZXMsIG1lYW5pbmcsIGRlc2NyaXB0aW9uLCBjdXN0b21JZCwgdmlzaXROb2RlRm4pO1xuICAgIHRoaXMuX3NldE1lc3NhZ2VJZChtZXNzYWdlLCBtZXRhKTtcbiAgICB0aGlzLl9zZXRMZWdhY3lJZHMobWVzc2FnZSwgbWV0YSk7XG4gICAgcmV0dXJuIG1lc3NhZ2U7XG4gIH1cblxuICB2aXNpdEVsZW1lbnQoZWxlbWVudDogaHRtbC5FbGVtZW50KTogYW55IHtcbiAgICBpZiAoaGFzSTE4bkF0dHJzKGVsZW1lbnQpKSB7XG4gICAgICB0aGlzLmhhc0kxOG5NZXRhID0gdHJ1ZTtcbiAgICAgIGNvbnN0IGF0dHJzOiBodG1sLkF0dHJpYnV0ZVtdID0gW107XG4gICAgICBjb25zdCBhdHRyc01ldGE6IHtba2V5OiBzdHJpbmddOiBzdHJpbmd9ID0ge307XG5cbiAgICAgIGZvciAoY29uc3QgYXR0ciBvZiBlbGVtZW50LmF0dHJzKSB7XG4gICAgICAgIGlmIChhdHRyLm5hbWUgPT09IEkxOE5fQVRUUikge1xuICAgICAgICAgIC8vIHJvb3QgJ2kxOG4nIG5vZGUgYXR0cmlidXRlXG4gICAgICAgICAgY29uc3QgaTE4biA9IGVsZW1lbnQuaTE4biB8fCBhdHRyLnZhbHVlO1xuICAgICAgICAgIGNvbnN0IG1lc3NhZ2UgPSB0aGlzLl9nZW5lcmF0ZUkxOG5NZXNzYWdlKGVsZW1lbnQuY2hpbGRyZW4sIGkxOG4sIHNldEkxOG5SZWZzKTtcbiAgICAgICAgICAvLyBkbyBub3QgYXNzaWduIGVtcHR5IGkxOG4gbWV0YVxuICAgICAgICAgIGlmIChtZXNzYWdlLm5vZGVzLmxlbmd0aCkge1xuICAgICAgICAgICAgZWxlbWVudC5pMThuID0gbWVzc2FnZTtcbiAgICAgICAgICB9XG5cbiAgICAgICAgfSBlbHNlIGlmIChhdHRyLm5hbWUuc3RhcnRzV2l0aChJMThOX0FUVFJfUFJFRklYKSkge1xuICAgICAgICAgIC8vICdpMThuLSonIGF0dHJpYnV0ZXNcbiAgICAgICAgICBjb25zdCBrZXkgPSBhdHRyLm5hbWUuc2xpY2UoSTE4Tl9BVFRSX1BSRUZJWC5sZW5ndGgpO1xuICAgICAgICAgIGF0dHJzTWV0YVtrZXldID0gYXR0ci52YWx1ZTtcblxuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIC8vIG5vbi1pMThuIGF0dHJpYnV0ZXNcbiAgICAgICAgICBhdHRycy5wdXNoKGF0dHIpO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC8vIHNldCBpMThuIG1ldGEgZm9yIGF0dHJpYnV0ZXNcbiAgICAgIGlmIChPYmplY3Qua2V5cyhhdHRyc01ldGEpLmxlbmd0aCkge1xuICAgICAgICBmb3IgKGNvbnN0IGF0dHIgb2YgYXR0cnMpIHtcbiAgICAgICAgICBjb25zdCBtZXRhID0gYXR0cnNNZXRhW2F0dHIubmFtZV07XG4gICAgICAgICAgLy8gZG8gbm90IGNyZWF0ZSB0cmFuc2xhdGlvbiBmb3IgZW1wdHkgYXR0cmlidXRlc1xuICAgICAgICAgIGlmIChtZXRhICE9PSB1bmRlZmluZWQgJiYgYXR0ci52YWx1ZSkge1xuICAgICAgICAgICAgYXR0ci5pMThuID0gdGhpcy5fZ2VuZXJhdGVJMThuTWVzc2FnZShbYXR0cl0sIGF0dHIuaTE4biB8fCBtZXRhKTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgaWYgKCF0aGlzLmtlZXBJMThuQXR0cnMpIHtcbiAgICAgICAgLy8gdXBkYXRlIGVsZW1lbnQncyBhdHRyaWJ1dGVzLFxuICAgICAgICAvLyBrZWVwaW5nIG9ubHkgbm9uLWkxOG4gcmVsYXRlZCBvbmVzXG4gICAgICAgIGVsZW1lbnQuYXR0cnMgPSBhdHRycztcbiAgICAgIH1cbiAgICB9XG4gICAgaHRtbC52aXNpdEFsbCh0aGlzLCBlbGVtZW50LmNoaWxkcmVuLCBlbGVtZW50LmkxOG4pO1xuICAgIHJldHVybiBlbGVtZW50O1xuICB9XG5cbiAgdmlzaXRFeHBhbnNpb24oZXhwYW5zaW9uOiBodG1sLkV4cGFuc2lvbiwgY3VycmVudE1lc3NhZ2U6IGkxOG4uTWVzc2FnZXx1bmRlZmluZWQpOiBhbnkge1xuICAgIGxldCBtZXNzYWdlO1xuICAgIGNvbnN0IG1ldGEgPSBleHBhbnNpb24uaTE4bjtcbiAgICB0aGlzLmhhc0kxOG5NZXRhID0gdHJ1ZTtcbiAgICBpZiAobWV0YSBpbnN0YW5jZW9mIGkxOG4uSWN1UGxhY2Vob2xkZXIpIHtcbiAgICAgIC8vIHNldCBJQ1UgcGxhY2Vob2xkZXIgbmFtZSAoZS5nLiBcIklDVV8xXCIpLFxuICAgICAgLy8gZ2VuZXJhdGVkIHdoaWxlIHByb2Nlc3Npbmcgcm9vdCBlbGVtZW50IGNvbnRlbnRzLFxuICAgICAgLy8gc28gd2UgY2FuIHJlZmVyZW5jZSBpdCB3aGVuIHdlIG91dHB1dCB0cmFuc2xhdGlvblxuICAgICAgY29uc3QgbmFtZSA9IG1ldGEubmFtZTtcbiAgICAgIG1lc3NhZ2UgPSB0aGlzLl9nZW5lcmF0ZUkxOG5NZXNzYWdlKFtleHBhbnNpb25dLCBtZXRhKTtcbiAgICAgIGNvbnN0IGljdSA9IGljdUZyb21JMThuTWVzc2FnZShtZXNzYWdlKTtcbiAgICAgIGljdS5uYW1lID0gbmFtZTtcbiAgICB9IGVsc2Uge1xuICAgICAgLy8gSUNVIGlzIGEgdG9wIGxldmVsIG1lc3NhZ2UsIHRyeSB0byB1c2UgbWV0YWRhdGEgZnJvbSBjb250YWluZXIgZWxlbWVudCBpZiBwcm92aWRlZCB2aWFcbiAgICAgIC8vIGBjb250ZXh0YCBhcmd1bWVudC4gTm90ZTogY29udGV4dCBtYXkgbm90IGJlIGF2YWlsYWJsZSBmb3Igc3RhbmRhbG9uZSBJQ1VzICh3aXRob3V0XG4gICAgICAvLyB3cmFwcGluZyBlbGVtZW50KSwgc28gZmFsbGJhY2sgdG8gSUNVIG1ldGFkYXRhIGluIHRoaXMgY2FzZS5cbiAgICAgIG1lc3NhZ2UgPSB0aGlzLl9nZW5lcmF0ZUkxOG5NZXNzYWdlKFtleHBhbnNpb25dLCBjdXJyZW50TWVzc2FnZSB8fCBtZXRhKTtcbiAgICB9XG4gICAgZXhwYW5zaW9uLmkxOG4gPSBtZXNzYWdlO1xuICAgIHJldHVybiBleHBhbnNpb247XG4gIH1cblxuICB2aXNpdFRleHQodGV4dDogaHRtbC5UZXh0KTogYW55IHtcbiAgICByZXR1cm4gdGV4dDtcbiAgfVxuICB2aXNpdEF0dHJpYnV0ZShhdHRyaWJ1dGU6IGh0bWwuQXR0cmlidXRlKTogYW55IHtcbiAgICByZXR1cm4gYXR0cmlidXRlO1xuICB9XG4gIHZpc2l0Q29tbWVudChjb21tZW50OiBodG1sLkNvbW1lbnQpOiBhbnkge1xuICAgIHJldHVybiBjb21tZW50O1xuICB9XG4gIHZpc2l0RXhwYW5zaW9uQ2FzZShleHBhbnNpb25DYXNlOiBodG1sLkV4cGFuc2lvbkNhc2UpOiBhbnkge1xuICAgIHJldHVybiBleHBhbnNpb25DYXNlO1xuICB9XG5cbiAgLyoqXG4gICAqIFBhcnNlIHRoZSBnZW5lcmFsIGZvcm0gYG1ldGFgIHBhc3NlZCBpbnRvIGV4dHJhY3QgdGhlIGV4cGxpY2l0IG1ldGFkYXRhIG5lZWRlZCB0byBjcmVhdGUgYVxuICAgKiBgTWVzc2FnZWAuXG4gICAqXG4gICAqIFRoZXJlIGFyZSB0aHJlZSBwb3NzaWJpbGl0aWVzIGZvciB0aGUgYG1ldGFgIHZhcmlhYmxlXG4gICAqIDEpIGEgc3RyaW5nIGZyb20gYW4gYGkxOG5gIHRlbXBsYXRlIGF0dHJpYnV0ZTogcGFyc2UgaXQgdG8gZXh0cmFjdCB0aGUgbWV0YWRhdGEgdmFsdWVzLlxuICAgKiAyKSBhIGBNZXNzYWdlYCBmcm9tIGEgcHJldmlvdXMgcHJvY2Vzc2luZyBwYXNzOiByZXVzZSB0aGUgbWV0YWRhdGEgdmFsdWVzIGluIHRoZSBtZXNzYWdlLlxuICAgKiA0KSBvdGhlcjogaWdub3JlIHRoaXMgYW5kIGp1c3QgcHJvY2VzcyB0aGUgbWVzc2FnZSBtZXRhZGF0YSBhcyBub3JtYWxcbiAgICpcbiAgICogQHBhcmFtIG1ldGEgdGhlIGJ1Y2tldCB0aGF0IGhvbGRzIGluZm9ybWF0aW9uIGFib3V0IHRoZSBtZXNzYWdlXG4gICAqIEByZXR1cm5zIHRoZSBwYXJzZWQgbWV0YWRhdGEuXG4gICAqL1xuICBwcml2YXRlIF9wYXJzZU1ldGFkYXRhKG1ldGE6IHN0cmluZ3xpMThuLkkxOG5NZXRhKTogSTE4bk1ldGEge1xuICAgIHJldHVybiB0eXBlb2YgbWV0YSA9PT0gJ3N0cmluZycgPyBwYXJzZUkxOG5NZXRhKG1ldGEpIDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbWV0YSBpbnN0YW5jZW9mIGkxOG4uTWVzc2FnZSA/IG1ldGEgOiB7fTtcbiAgfVxuXG4gIC8qKlxuICAgKiBHZW5lcmF0ZSAob3IgcmVzdG9yZSkgbWVzc2FnZSBpZCBpZiBub3Qgc3BlY2lmaWVkIGFscmVhZHkuXG4gICAqL1xuICBwcml2YXRlIF9zZXRNZXNzYWdlSWQobWVzc2FnZTogaTE4bi5NZXNzYWdlLCBtZXRhOiBzdHJpbmd8aTE4bi5JMThuTWV0YSk6IHZvaWQge1xuICAgIGlmICghbWVzc2FnZS5pZCkge1xuICAgICAgbWVzc2FnZS5pZCA9IG1ldGEgaW5zdGFuY2VvZiBpMThuLk1lc3NhZ2UgJiYgbWV0YS5pZCB8fCBkZWNpbWFsRGlnZXN0KG1lc3NhZ2UpO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBVcGRhdGUgdGhlIGBtZXNzYWdlYCB3aXRoIGEgYGxlZ2FjeUlkYCBpZiBuZWNlc3NhcnkuXG4gICAqXG4gICAqIEBwYXJhbSBtZXNzYWdlIHRoZSBtZXNzYWdlIHdob3NlIGxlZ2FjeSBpZCBzaG91bGQgYmUgc2V0XG4gICAqIEBwYXJhbSBtZXRhIGluZm9ybWF0aW9uIGFib3V0IHRoZSBtZXNzYWdlIGJlaW5nIHByb2Nlc3NlZFxuICAgKi9cbiAgcHJpdmF0ZSBfc2V0TGVnYWN5SWRzKG1lc3NhZ2U6IGkxOG4uTWVzc2FnZSwgbWV0YTogc3RyaW5nfGkxOG4uSTE4bk1ldGEpOiB2b2lkIHtcbiAgICBpZiAodGhpcy5lbmFibGVJMThuTGVnYWN5TWVzc2FnZUlkRm9ybWF0KSB7XG4gICAgICBtZXNzYWdlLmxlZ2FjeUlkcyA9IFtjb21wdXRlRGlnZXN0KG1lc3NhZ2UpLCBjb21wdXRlRGVjaW1hbERpZ2VzdChtZXNzYWdlKV07XG4gICAgfSBlbHNlIGlmICh0eXBlb2YgbWV0YSAhPT0gJ3N0cmluZycpIHtcbiAgICAgIC8vIFRoaXMgb2NjdXJzIGlmIHdlIGFyZSBkb2luZyB0aGUgMm5kIHBhc3MgYWZ0ZXIgd2hpdGVzcGFjZSByZW1vdmFsIChzZWUgYHBhcnNlVGVtcGxhdGUoKWAgaW5cbiAgICAgIC8vIGBwYWNrYWdlcy9jb21waWxlci9zcmMvcmVuZGVyMy92aWV3L3RlbXBsYXRlLnRzYCkuXG4gICAgICAvLyBJbiB0aGF0IGNhc2Ugd2Ugd2FudCB0byByZXVzZSB0aGUgbGVnYWN5IG1lc3NhZ2UgZ2VuZXJhdGVkIGluIHRoZSAxc3QgcGFzcyAoc2VlXG4gICAgICAvLyBgc2V0STE4blJlZnMoKWApLlxuICAgICAgY29uc3QgcHJldmlvdXNNZXNzYWdlID0gbWV0YSBpbnN0YW5jZW9mIGkxOG4uTWVzc2FnZSA/XG4gICAgICAgICAgbWV0YSA6XG4gICAgICAgICAgbWV0YSBpbnN0YW5jZW9mIGkxOG4uSWN1UGxhY2Vob2xkZXIgPyBtZXRhLnByZXZpb3VzTWVzc2FnZSA6IHVuZGVmaW5lZDtcbiAgICAgIG1lc3NhZ2UubGVnYWN5SWRzID0gcHJldmlvdXNNZXNzYWdlID8gcHJldmlvdXNNZXNzYWdlLmxlZ2FjeUlkcyA6IFtdO1xuICAgIH1cbiAgfVxufVxuXG4vKiogSTE4biBzZXBhcmF0b3JzIGZvciBtZXRhZGF0YSAqKi9cbmNvbnN0IEkxOE5fTUVBTklOR19TRVBBUkFUT1IgPSAnfCc7XG5jb25zdCBJMThOX0lEX1NFUEFSQVRPUiA9ICdAQCc7XG5cbi8qKlxuICogUGFyc2VzIGkxOG4gbWV0YXMgbGlrZTpcbiAqICAtIFwiQEBpZFwiLFxuICogIC0gXCJkZXNjcmlwdGlvbltAQGlkXVwiLFxuICogIC0gXCJtZWFuaW5nfGRlc2NyaXB0aW9uW0BAaWRdXCJcbiAqIGFuZCByZXR1cm5zIGFuIG9iamVjdCB3aXRoIHBhcnNlZCBvdXRwdXQuXG4gKlxuICogQHBhcmFtIG1ldGEgU3RyaW5nIHRoYXQgcmVwcmVzZW50cyBpMThuIG1ldGFcbiAqIEByZXR1cm5zIE9iamVjdCB3aXRoIGlkLCBtZWFuaW5nIGFuZCBkZXNjcmlwdGlvbiBmaWVsZHNcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHBhcnNlSTE4bk1ldGEobWV0YTogc3RyaW5nID0gJycpOiBJMThuTWV0YSB7XG4gIGxldCBjdXN0b21JZDogc3RyaW5nfHVuZGVmaW5lZDtcbiAgbGV0IG1lYW5pbmc6IHN0cmluZ3x1bmRlZmluZWQ7XG4gIGxldCBkZXNjcmlwdGlvbjogc3RyaW5nfHVuZGVmaW5lZDtcblxuICBtZXRhID0gbWV0YS50cmltKCk7XG4gIGlmIChtZXRhKSB7XG4gICAgY29uc3QgaWRJbmRleCA9IG1ldGEuaW5kZXhPZihJMThOX0lEX1NFUEFSQVRPUik7XG4gICAgY29uc3QgZGVzY0luZGV4ID0gbWV0YS5pbmRleE9mKEkxOE5fTUVBTklOR19TRVBBUkFUT1IpO1xuICAgIGxldCBtZWFuaW5nQW5kRGVzYzogc3RyaW5nO1xuICAgIFttZWFuaW5nQW5kRGVzYywgY3VzdG9tSWRdID1cbiAgICAgICAgKGlkSW5kZXggPiAtMSkgPyBbbWV0YS5zbGljZSgwLCBpZEluZGV4KSwgbWV0YS5zbGljZShpZEluZGV4ICsgMildIDogW21ldGEsICcnXTtcbiAgICBbbWVhbmluZywgZGVzY3JpcHRpb25dID0gKGRlc2NJbmRleCA+IC0xKSA/XG4gICAgICAgIFttZWFuaW5nQW5kRGVzYy5zbGljZSgwLCBkZXNjSW5kZXgpLCBtZWFuaW5nQW5kRGVzYy5zbGljZShkZXNjSW5kZXggKyAxKV0gOlxuICAgICAgICBbJycsIG1lYW5pbmdBbmREZXNjXTtcbiAgfVxuXG4gIHJldHVybiB7Y3VzdG9tSWQsIG1lYW5pbmcsIGRlc2NyaXB0aW9ufTtcbn1cblxuLy8gQ29udmVydHMgaTE4biBtZXRhIGluZm9ybWF0aW9uIGZvciBhIG1lc3NhZ2UgKGlkLCBkZXNjcmlwdGlvbiwgbWVhbmluZylcbi8vIHRvIGEgSnNEb2Mgc3RhdGVtZW50IGZvcm1hdHRlZCBhcyBleHBlY3RlZCBieSB0aGUgQ2xvc3VyZSBjb21waWxlci5cbmV4cG9ydCBmdW5jdGlvbiBpMThuTWV0YVRvRG9jU3RtdChtZXRhOiBJMThuTWV0YSk6IG8uSlNEb2NDb21tZW50U3RtdHxudWxsIHtcbiAgY29uc3QgdGFnczogby5KU0RvY1RhZ1tdID0gW107XG4gIGlmIChtZXRhLmRlc2NyaXB0aW9uKSB7XG4gICAgdGFncy5wdXNoKHt0YWdOYW1lOiBvLkpTRG9jVGFnTmFtZS5EZXNjLCB0ZXh0OiBtZXRhLmRlc2NyaXB0aW9ufSk7XG4gIH1cbiAgaWYgKG1ldGEubWVhbmluZykge1xuICAgIHRhZ3MucHVzaCh7dGFnTmFtZTogby5KU0RvY1RhZ05hbWUuTWVhbmluZywgdGV4dDogbWV0YS5tZWFuaW5nfSk7XG4gIH1cbiAgcmV0dXJuIHRhZ3MubGVuZ3RoID09IDAgPyBudWxsIDogbmV3IG8uSlNEb2NDb21tZW50U3RtdCh0YWdzKTtcbn1cbiJdfQ==