/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
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
        I18nMetaVisitor.prototype.visitText = function (text) { return text; };
        I18nMetaVisitor.prototype.visitAttribute = function (attribute) { return attribute; };
        I18nMetaVisitor.prototype.visitComment = function (comment) { return comment; };
        I18nMetaVisitor.prototype.visitExpansionCase = function (expansionCase) { return expansionCase; };
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWV0YS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9yZW5kZXIzL3ZpZXcvaTE4bi9tZXRhLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQUVILDREQUF3RjtJQUN4RiwwREFBK0M7SUFDL0Msc0VBQWdGO0lBQ2hGLDBEQUErQztJQUMvQyw2RkFBMEc7SUFDMUcsMkRBQWdEO0lBRWhELHFFQUFxRjtJQVdyRixJQUFNLFdBQVcsR0FBZ0IsVUFBQyxRQUFRLEVBQUUsUUFBUTtRQUNsRCxJQUFJLFFBQVEsWUFBWSxJQUFJLENBQUMsWUFBWSxFQUFFO1lBQ3pDLElBQUksUUFBUSxZQUFZLElBQUksQ0FBQyxjQUFjLElBQUksUUFBUSxDQUFDLElBQUksWUFBWSxJQUFJLENBQUMsT0FBTyxFQUFFO2dCQUNwRiwyRkFBMkY7Z0JBQzNGLG9GQUFvRjtnQkFDcEYsMkZBQTJGO2dCQUMzRiwyRUFBMkU7Z0JBQzNFLFFBQVEsQ0FBQyxlQUFlLEdBQUcsUUFBUSxDQUFDLElBQUksQ0FBQzthQUMxQztZQUNELFFBQVEsQ0FBQyxJQUFJLEdBQUcsUUFBUSxDQUFDO1NBQzFCO1FBQ0QsT0FBTyxRQUFRLENBQUM7SUFDbEIsQ0FBQyxDQUFDO0lBRUY7Ozs7T0FJRztJQUNIO1FBT0UseUJBQ1ksbUJBQXVFLEVBQ3ZFLGFBQXFCLEVBQVUsK0JBQXVDO1lBRHRFLG9DQUFBLEVBQUEsc0JBQTJDLG1EQUE0QjtZQUN2RSw4QkFBQSxFQUFBLHFCQUFxQjtZQUFVLGdEQUFBLEVBQUEsdUNBQXVDO1lBRHRFLHdCQUFtQixHQUFuQixtQkFBbUIsQ0FBb0Q7WUFDdkUsa0JBQWEsR0FBYixhQUFhLENBQVE7WUFBVSxvQ0FBK0IsR0FBL0IsK0JBQStCLENBQVE7WUFSbEYsaURBQWlEO1lBQzFDLGdCQUFXLEdBQVksS0FBSyxDQUFDO1lBRXBDLGtDQUFrQztZQUMxQix1QkFBa0IsR0FBRyxzQ0FBd0IsQ0FBQyxJQUFJLENBQUMsbUJBQW1CLENBQUMsQ0FBQztRQUlLLENBQUM7UUFFOUUsOENBQW9CLEdBQTVCLFVBQ0ksS0FBa0IsRUFBRSxJQUErQixFQUNuRCxXQUF5QjtZQURMLHFCQUFBLEVBQUEsU0FBK0I7WUFFL0MsSUFBQSw4QkFBNEQsRUFBM0Qsb0JBQU8sRUFBRSw0QkFBVyxFQUFFLHNCQUFxQyxDQUFDO1lBQ25FLElBQU0sT0FBTyxHQUFHLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxLQUFLLEVBQUUsT0FBTyxFQUFFLFdBQVcsRUFBRSxRQUFRLEVBQUUsV0FBVyxDQUFDLENBQUM7WUFDNUYsSUFBSSxDQUFDLGFBQWEsQ0FBQyxPQUFPLEVBQUUsSUFBSSxDQUFDLENBQUM7WUFDbEMsSUFBSSxDQUFDLGFBQWEsQ0FBQyxPQUFPLEVBQUUsSUFBSSxDQUFDLENBQUM7WUFDbEMsT0FBTyxPQUFPLENBQUM7UUFDakIsQ0FBQztRQUVELHNDQUFZLEdBQVosVUFBYSxPQUFxQjs7WUFDaEMsSUFBSSxtQkFBWSxDQUFDLE9BQU8sQ0FBQyxFQUFFO2dCQUN6QixJQUFJLENBQUMsV0FBVyxHQUFHLElBQUksQ0FBQztnQkFDeEIsSUFBTSxLQUFLLEdBQXFCLEVBQUUsQ0FBQztnQkFDbkMsSUFBTSxTQUFTLEdBQTRCLEVBQUUsQ0FBQzs7b0JBRTlDLEtBQW1CLElBQUEsS0FBQSxpQkFBQSxPQUFPLENBQUMsS0FBSyxDQUFBLGdCQUFBLDRCQUFFO3dCQUE3QixJQUFNLElBQUksV0FBQTt3QkFDYixJQUFJLElBQUksQ0FBQyxJQUFJLEtBQUssZ0JBQVMsRUFBRTs0QkFDM0IsNkJBQTZCOzRCQUM3QixJQUFNLE1BQUksR0FBRyxPQUFPLENBQUMsSUFBSSxJQUFJLElBQUksQ0FBQyxLQUFLLENBQUM7NEJBQ3hDLElBQU0sT0FBTyxHQUFHLElBQUksQ0FBQyxvQkFBb0IsQ0FBQyxPQUFPLENBQUMsUUFBUSxFQUFFLE1BQUksRUFBRSxXQUFXLENBQUMsQ0FBQzs0QkFDL0UsZ0NBQWdDOzRCQUNoQyxJQUFJLE9BQU8sQ0FBQyxLQUFLLENBQUMsTUFBTSxFQUFFO2dDQUN4QixPQUFPLENBQUMsSUFBSSxHQUFHLE9BQU8sQ0FBQzs2QkFDeEI7eUJBRUY7NkJBQU0sSUFBSSxJQUFJLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyx1QkFBZ0IsQ0FBQyxFQUFFOzRCQUNqRCxzQkFBc0I7NEJBQ3RCLElBQU0sR0FBRyxHQUFHLElBQUksQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLHVCQUFnQixDQUFDLE1BQU0sQ0FBQyxDQUFDOzRCQUNyRCxTQUFTLENBQUMsR0FBRyxDQUFDLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQzt5QkFFN0I7NkJBQU07NEJBQ0wsc0JBQXNCOzRCQUN0QixLQUFLLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO3lCQUNsQjtxQkFDRjs7Ozs7Ozs7O2dCQUVELCtCQUErQjtnQkFDL0IsSUFBSSxNQUFNLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDLE1BQU0sRUFBRTs7d0JBQ2pDLEtBQW1CLElBQUEsVUFBQSxpQkFBQSxLQUFLLENBQUEsNEJBQUEsK0NBQUU7NEJBQXJCLElBQU0sSUFBSSxrQkFBQTs0QkFDYixJQUFNLElBQUksR0FBRyxTQUFTLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDOzRCQUNsQyxpREFBaUQ7NEJBQ2pELElBQUksSUFBSSxLQUFLLFNBQVMsSUFBSSxJQUFJLENBQUMsS0FBSyxFQUFFO2dDQUNwQyxJQUFJLENBQUMsSUFBSSxHQUFHLElBQUksQ0FBQyxvQkFBb0IsQ0FBQyxDQUFDLElBQUksQ0FBQyxFQUFFLElBQUksQ0FBQyxJQUFJLElBQUksSUFBSSxDQUFDLENBQUM7NkJBQ2xFO3lCQUNGOzs7Ozs7Ozs7aUJBQ0Y7Z0JBRUQsSUFBSSxDQUFDLElBQUksQ0FBQyxhQUFhLEVBQUU7b0JBQ3ZCLCtCQUErQjtvQkFDL0IscUNBQXFDO29CQUNyQyxPQUFPLENBQUMsS0FBSyxHQUFHLEtBQUssQ0FBQztpQkFDdkI7YUFDRjtZQUNELElBQUksQ0FBQyxRQUFRLENBQUMsSUFBSSxFQUFFLE9BQU8sQ0FBQyxRQUFRLEVBQUUsT0FBTyxDQUFDLElBQUksQ0FBQyxDQUFDO1lBQ3BELE9BQU8sT0FBTyxDQUFDO1FBQ2pCLENBQUM7UUFFRCx3Q0FBYyxHQUFkLFVBQWUsU0FBeUIsRUFBRSxjQUFzQztZQUM5RSxJQUFJLE9BQU8sQ0FBQztZQUNaLElBQU0sSUFBSSxHQUFHLFNBQVMsQ0FBQyxJQUFJLENBQUM7WUFDNUIsSUFBSSxDQUFDLFdBQVcsR0FBRyxJQUFJLENBQUM7WUFDeEIsSUFBSSxJQUFJLFlBQVksSUFBSSxDQUFDLGNBQWMsRUFBRTtnQkFDdkMsMkNBQTJDO2dCQUMzQyxvREFBb0Q7Z0JBQ3BELG9EQUFvRDtnQkFDcEQsSUFBTSxNQUFJLEdBQUcsSUFBSSxDQUFDLElBQUksQ0FBQztnQkFDdkIsT0FBTyxHQUFHLElBQUksQ0FBQyxvQkFBb0IsQ0FBQyxDQUFDLFNBQVMsQ0FBQyxFQUFFLElBQUksQ0FBQyxDQUFDO2dCQUN2RCxJQUFNLEdBQUcsR0FBRyx5QkFBa0IsQ0FBQyxPQUFPLENBQUMsQ0FBQztnQkFDeEMsR0FBRyxDQUFDLElBQUksR0FBRyxNQUFJLENBQUM7YUFDakI7aUJBQU07Z0JBQ0wseUZBQXlGO2dCQUN6RixzRkFBc0Y7Z0JBQ3RGLCtEQUErRDtnQkFDL0QsT0FBTyxHQUFHLElBQUksQ0FBQyxvQkFBb0IsQ0FBQyxDQUFDLFNBQVMsQ0FBQyxFQUFFLGNBQWMsSUFBSSxJQUFJLENBQUMsQ0FBQzthQUMxRTtZQUNELFNBQVMsQ0FBQyxJQUFJLEdBQUcsT0FBTyxDQUFDO1lBQ3pCLE9BQU8sU0FBUyxDQUFDO1FBQ25CLENBQUM7UUFFRCxtQ0FBUyxHQUFULFVBQVUsSUFBZSxJQUFTLE9BQU8sSUFBSSxDQUFDLENBQUMsQ0FBQztRQUNoRCx3Q0FBYyxHQUFkLFVBQWUsU0FBeUIsSUFBUyxPQUFPLFNBQVMsQ0FBQyxDQUFDLENBQUM7UUFDcEUsc0NBQVksR0FBWixVQUFhLE9BQXFCLElBQVMsT0FBTyxPQUFPLENBQUMsQ0FBQyxDQUFDO1FBQzVELDRDQUFrQixHQUFsQixVQUFtQixhQUFpQyxJQUFTLE9BQU8sYUFBYSxDQUFDLENBQUMsQ0FBQztRQUVwRjs7Ozs7Ozs7Ozs7V0FXRztRQUNLLHdDQUFjLEdBQXRCLFVBQXVCLElBQTBCO1lBQy9DLE9BQU8sT0FBTyxJQUFJLEtBQUssUUFBUSxDQUFDLENBQUMsQ0FBQyxhQUFhLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQztnQkFDckIsSUFBSSxZQUFZLElBQUksQ0FBQyxPQUFPLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDO1FBQzdFLENBQUM7UUFFRDs7V0FFRztRQUNLLHVDQUFhLEdBQXJCLFVBQXNCLE9BQXFCLEVBQUUsSUFBMEI7WUFDckUsSUFBSSxDQUFDLE9BQU8sQ0FBQyxFQUFFLEVBQUU7Z0JBQ2YsT0FBTyxDQUFDLEVBQUUsR0FBRyxJQUFJLFlBQVksSUFBSSxDQUFDLE9BQU8sSUFBSSxJQUFJLENBQUMsRUFBRSxJQUFJLHNCQUFhLENBQUMsT0FBTyxDQUFDLENBQUM7YUFDaEY7UUFDSCxDQUFDO1FBRUQ7Ozs7O1dBS0c7UUFDSyx1Q0FBYSxHQUFyQixVQUFzQixPQUFxQixFQUFFLElBQTBCO1lBQ3JFLElBQUksSUFBSSxDQUFDLCtCQUErQixFQUFFO2dCQUN4QyxPQUFPLENBQUMsU0FBUyxHQUFHLENBQUMsc0JBQWEsQ0FBQyxPQUFPLENBQUMsRUFBRSw2QkFBb0IsQ0FBQyxPQUFPLENBQUMsQ0FBQyxDQUFDO2FBQzdFO2lCQUFNLElBQUksT0FBTyxJQUFJLEtBQUssUUFBUSxFQUFFO2dCQUNuQyw4RkFBOEY7Z0JBQzlGLHFEQUFxRDtnQkFDckQsa0ZBQWtGO2dCQUNsRixvQkFBb0I7Z0JBQ3BCLElBQU0sZUFBZSxHQUFHLElBQUksWUFBWSxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUM7b0JBQ2xELElBQUksQ0FBQyxDQUFDO29CQUNOLElBQUksWUFBWSxJQUFJLENBQUMsY0FBYyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsZUFBZSxDQUFDLENBQUMsQ0FBQyxTQUFTLENBQUM7Z0JBQzNFLE9BQU8sQ0FBQyxTQUFTLEdBQUcsZUFBZSxDQUFDLENBQUMsQ0FBQyxlQUFlLENBQUMsU0FBUyxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUM7YUFDdEU7UUFDSCxDQUFDO1FBQ0gsc0JBQUM7SUFBRCxDQUFDLEFBOUlELElBOElDO0lBOUlZLDBDQUFlO0lBZ0o1QixvQ0FBb0M7SUFDcEMsSUFBTSxzQkFBc0IsR0FBRyxHQUFHLENBQUM7SUFDbkMsSUFBTSxpQkFBaUIsR0FBRyxJQUFJLENBQUM7SUFFL0I7Ozs7Ozs7OztPQVNHO0lBQ0gsU0FBZ0IsYUFBYSxDQUFDLElBQWlCOztRQUFqQixxQkFBQSxFQUFBLFNBQWlCO1FBQzdDLElBQUksUUFBMEIsQ0FBQztRQUMvQixJQUFJLE9BQXlCLENBQUM7UUFDOUIsSUFBSSxXQUE2QixDQUFDO1FBRWxDLElBQUksR0FBRyxJQUFJLENBQUMsSUFBSSxFQUFFLENBQUM7UUFDbkIsSUFBSSxJQUFJLEVBQUU7WUFDUixJQUFNLE9BQU8sR0FBRyxJQUFJLENBQUMsT0FBTyxDQUFDLGlCQUFpQixDQUFDLENBQUM7WUFDaEQsSUFBTSxTQUFTLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQyxzQkFBc0IsQ0FBQyxDQUFDO1lBQ3ZELElBQUksY0FBYyxTQUFRLENBQUM7WUFDM0IsdUdBQ21GLEVBRGxGLHNCQUFjLEVBQUUsZ0JBQVEsQ0FDMkQ7WUFDcEY7O3dDQUV3QixFQUZ2QixlQUFPLEVBQUUsbUJBQVcsQ0FFSTtTQUMxQjtRQUVELE9BQU8sRUFBQyxRQUFRLFVBQUEsRUFBRSxPQUFPLFNBQUEsRUFBRSxXQUFXLGFBQUEsRUFBQyxDQUFDO0lBQzFDLENBQUM7SUFsQkQsc0NBa0JDO0lBRUQsMEVBQTBFO0lBQzFFLHNFQUFzRTtJQUN0RSxTQUFnQixpQkFBaUIsQ0FBQyxJQUFjO1FBQzlDLElBQU0sSUFBSSxHQUFpQixFQUFFLENBQUM7UUFDOUIsSUFBSSxJQUFJLENBQUMsV0FBVyxFQUFFO1lBQ3BCLElBQUksQ0FBQyxJQUFJLENBQUMsRUFBQyxPQUFPLG1CQUFxQixFQUFFLElBQUksRUFBRSxJQUFJLENBQUMsV0FBVyxFQUFDLENBQUMsQ0FBQztTQUNuRTtRQUNELElBQUksSUFBSSxDQUFDLE9BQU8sRUFBRTtZQUNoQixJQUFJLENBQUMsSUFBSSxDQUFDLEVBQUMsT0FBTyx5QkFBd0IsRUFBRSxJQUFJLEVBQUUsSUFBSSxDQUFDLE9BQU8sRUFBQyxDQUFDLENBQUM7U0FDbEU7UUFDRCxPQUFPLElBQUksQ0FBQyxNQUFNLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxDQUFDLGdCQUFnQixDQUFDLElBQUksQ0FBQyxDQUFDO0lBQ2hFLENBQUM7SUFURCw4Q0FTQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtjb21wdXRlRGVjaW1hbERpZ2VzdCwgY29tcHV0ZURpZ2VzdCwgZGVjaW1hbERpZ2VzdH0gZnJvbSAnLi4vLi4vLi4vaTE4bi9kaWdlc3QnO1xuaW1wb3J0ICogYXMgaTE4biBmcm9tICcuLi8uLi8uLi9pMThuL2kxOG5fYXN0JztcbmltcG9ydCB7VmlzaXROb2RlRm4sIGNyZWF0ZUkxOG5NZXNzYWdlRmFjdG9yeX0gZnJvbSAnLi4vLi4vLi4vaTE4bi9pMThuX3BhcnNlcic7XG5pbXBvcnQgKiBhcyBodG1sIGZyb20gJy4uLy4uLy4uL21sX3BhcnNlci9hc3QnO1xuaW1wb3J0IHtERUZBVUxUX0lOVEVSUE9MQVRJT05fQ09ORklHLCBJbnRlcnBvbGF0aW9uQ29uZmlnfSBmcm9tICcuLi8uLi8uLi9tbF9wYXJzZXIvaW50ZXJwb2xhdGlvbl9jb25maWcnO1xuaW1wb3J0ICogYXMgbyBmcm9tICcuLi8uLi8uLi9vdXRwdXQvb3V0cHV0X2FzdCc7XG5cbmltcG9ydCB7STE4Tl9BVFRSLCBJMThOX0FUVFJfUFJFRklYLCBoYXNJMThuQXR0cnMsIGljdUZyb21JMThuTWVzc2FnZX0gZnJvbSAnLi91dGlsJztcblxuZXhwb3J0IHR5cGUgSTE4bk1ldGEgPSB7XG4gIGlkPzogc3RyaW5nLFxuICBjdXN0b21JZD86IHN0cmluZyxcbiAgbGVnYWN5SWRzPzogc3RyaW5nW10sXG4gIGRlc2NyaXB0aW9uPzogc3RyaW5nLFxuICBtZWFuaW5nPzogc3RyaW5nXG59O1xuXG5cbmNvbnN0IHNldEkxOG5SZWZzOiBWaXNpdE5vZGVGbiA9IChodG1sTm9kZSwgaTE4bk5vZGUpID0+IHtcbiAgaWYgKGh0bWxOb2RlIGluc3RhbmNlb2YgaHRtbC5Ob2RlV2l0aEkxOG4pIHtcbiAgICBpZiAoaTE4bk5vZGUgaW5zdGFuY2VvZiBpMThuLkljdVBsYWNlaG9sZGVyICYmIGh0bWxOb2RlLmkxOG4gaW5zdGFuY2VvZiBpMThuLk1lc3NhZ2UpIHtcbiAgICAgIC8vIFRoaXMgaHRtbCBub2RlIHJlcHJlc2VudHMgYW4gSUNVIGJ1dCB0aGlzIGlzIGEgc2Vjb25kIHByb2Nlc3NpbmcgcGFzcywgYW5kIHRoZSBsZWdhY3kgaWRcbiAgICAgIC8vIHdhcyBjb21wdXRlZCBpbiB0aGUgcHJldmlvdXMgcGFzcyBhbmQgc3RvcmVkIGluIHRoZSBgaTE4bmAgcHJvcGVydHkgYXMgYSBtZXNzYWdlLlxuICAgICAgLy8gV2UgYXJlIGFib3V0IHRvIHdpcGUgb3V0IHRoYXQgcHJvcGVydHkgc28gY2FwdHVyZSB0aGUgcHJldmlvdXMgbWVzc2FnZSB0byBiZSByZXVzZWQgd2hlblxuICAgICAgLy8gZ2VuZXJhdGluZyB0aGUgbWVzc2FnZSBmb3IgdGhpcyBJQ1UgbGF0ZXIuIFNlZSBgX2dlbmVyYXRlSTE4bk1lc3NhZ2UoKWAuXG4gICAgICBpMThuTm9kZS5wcmV2aW91c01lc3NhZ2UgPSBodG1sTm9kZS5pMThuO1xuICAgIH1cbiAgICBodG1sTm9kZS5pMThuID0gaTE4bk5vZGU7XG4gIH1cbiAgcmV0dXJuIGkxOG5Ob2RlO1xufTtcblxuLyoqXG4gKiBUaGlzIHZpc2l0b3Igd2Fsa3Mgb3ZlciBIVE1MIHBhcnNlIHRyZWUgYW5kIGNvbnZlcnRzIGluZm9ybWF0aW9uIHN0b3JlZCBpblxuICogaTE4bi1yZWxhdGVkIGF0dHJpYnV0ZXMgKFwiaTE4blwiIGFuZCBcImkxOG4tKlwiKSBpbnRvIGkxOG4gbWV0YSBvYmplY3QgdGhhdCBpc1xuICogc3RvcmVkIHdpdGggb3RoZXIgZWxlbWVudCdzIGFuZCBhdHRyaWJ1dGUncyBpbmZvcm1hdGlvbi5cbiAqL1xuZXhwb3J0IGNsYXNzIEkxOG5NZXRhVmlzaXRvciBpbXBsZW1lbnRzIGh0bWwuVmlzaXRvciB7XG4gIC8vIHdoZXRoZXIgdmlzaXRlZCBub2RlcyBjb250YWluIGkxOG4gaW5mb3JtYXRpb25cbiAgcHVibGljIGhhc0kxOG5NZXRhOiBib29sZWFuID0gZmFsc2U7XG5cbiAgLy8gaTE4biBtZXNzYWdlIGdlbmVyYXRpb24gZmFjdG9yeVxuICBwcml2YXRlIF9jcmVhdGVJMThuTWVzc2FnZSA9IGNyZWF0ZUkxOG5NZXNzYWdlRmFjdG9yeSh0aGlzLmludGVycG9sYXRpb25Db25maWcpO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSBpbnRlcnBvbGF0aW9uQ29uZmlnOiBJbnRlcnBvbGF0aW9uQ29uZmlnID0gREVGQVVMVF9JTlRFUlBPTEFUSU9OX0NPTkZJRyxcbiAgICAgIHByaXZhdGUga2VlcEkxOG5BdHRycyA9IGZhbHNlLCBwcml2YXRlIGVuYWJsZUkxOG5MZWdhY3lNZXNzYWdlSWRGb3JtYXQgPSBmYWxzZSkge31cblxuICBwcml2YXRlIF9nZW5lcmF0ZUkxOG5NZXNzYWdlKFxuICAgICAgbm9kZXM6IGh0bWwuTm9kZVtdLCBtZXRhOiBzdHJpbmd8aTE4bi5JMThuTWV0YSA9ICcnLFxuICAgICAgdmlzaXROb2RlRm4/OiBWaXNpdE5vZGVGbik6IGkxOG4uTWVzc2FnZSB7XG4gICAgY29uc3Qge21lYW5pbmcsIGRlc2NyaXB0aW9uLCBjdXN0b21JZH0gPSB0aGlzLl9wYXJzZU1ldGFkYXRhKG1ldGEpO1xuICAgIGNvbnN0IG1lc3NhZ2UgPSB0aGlzLl9jcmVhdGVJMThuTWVzc2FnZShub2RlcywgbWVhbmluZywgZGVzY3JpcHRpb24sIGN1c3RvbUlkLCB2aXNpdE5vZGVGbik7XG4gICAgdGhpcy5fc2V0TWVzc2FnZUlkKG1lc3NhZ2UsIG1ldGEpO1xuICAgIHRoaXMuX3NldExlZ2FjeUlkcyhtZXNzYWdlLCBtZXRhKTtcbiAgICByZXR1cm4gbWVzc2FnZTtcbiAgfVxuXG4gIHZpc2l0RWxlbWVudChlbGVtZW50OiBodG1sLkVsZW1lbnQpOiBhbnkge1xuICAgIGlmIChoYXNJMThuQXR0cnMoZWxlbWVudCkpIHtcbiAgICAgIHRoaXMuaGFzSTE4bk1ldGEgPSB0cnVlO1xuICAgICAgY29uc3QgYXR0cnM6IGh0bWwuQXR0cmlidXRlW10gPSBbXTtcbiAgICAgIGNvbnN0IGF0dHJzTWV0YToge1trZXk6IHN0cmluZ106IHN0cmluZ30gPSB7fTtcblxuICAgICAgZm9yIChjb25zdCBhdHRyIG9mIGVsZW1lbnQuYXR0cnMpIHtcbiAgICAgICAgaWYgKGF0dHIubmFtZSA9PT0gSTE4Tl9BVFRSKSB7XG4gICAgICAgICAgLy8gcm9vdCAnaTE4bicgbm9kZSBhdHRyaWJ1dGVcbiAgICAgICAgICBjb25zdCBpMThuID0gZWxlbWVudC5pMThuIHx8IGF0dHIudmFsdWU7XG4gICAgICAgICAgY29uc3QgbWVzc2FnZSA9IHRoaXMuX2dlbmVyYXRlSTE4bk1lc3NhZ2UoZWxlbWVudC5jaGlsZHJlbiwgaTE4biwgc2V0STE4blJlZnMpO1xuICAgICAgICAgIC8vIGRvIG5vdCBhc3NpZ24gZW1wdHkgaTE4biBtZXRhXG4gICAgICAgICAgaWYgKG1lc3NhZ2Uubm9kZXMubGVuZ3RoKSB7XG4gICAgICAgICAgICBlbGVtZW50LmkxOG4gPSBtZXNzYWdlO1xuICAgICAgICAgIH1cblxuICAgICAgICB9IGVsc2UgaWYgKGF0dHIubmFtZS5zdGFydHNXaXRoKEkxOE5fQVRUUl9QUkVGSVgpKSB7XG4gICAgICAgICAgLy8gJ2kxOG4tKicgYXR0cmlidXRlc1xuICAgICAgICAgIGNvbnN0IGtleSA9IGF0dHIubmFtZS5zbGljZShJMThOX0FUVFJfUFJFRklYLmxlbmd0aCk7XG4gICAgICAgICAgYXR0cnNNZXRhW2tleV0gPSBhdHRyLnZhbHVlO1xuXG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgLy8gbm9uLWkxOG4gYXR0cmlidXRlc1xuICAgICAgICAgIGF0dHJzLnB1c2goYXR0cik7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgLy8gc2V0IGkxOG4gbWV0YSBmb3IgYXR0cmlidXRlc1xuICAgICAgaWYgKE9iamVjdC5rZXlzKGF0dHJzTWV0YSkubGVuZ3RoKSB7XG4gICAgICAgIGZvciAoY29uc3QgYXR0ciBvZiBhdHRycykge1xuICAgICAgICAgIGNvbnN0IG1ldGEgPSBhdHRyc01ldGFbYXR0ci5uYW1lXTtcbiAgICAgICAgICAvLyBkbyBub3QgY3JlYXRlIHRyYW5zbGF0aW9uIGZvciBlbXB0eSBhdHRyaWJ1dGVzXG4gICAgICAgICAgaWYgKG1ldGEgIT09IHVuZGVmaW5lZCAmJiBhdHRyLnZhbHVlKSB7XG4gICAgICAgICAgICBhdHRyLmkxOG4gPSB0aGlzLl9nZW5lcmF0ZUkxOG5NZXNzYWdlKFthdHRyXSwgYXR0ci5pMThuIHx8IG1ldGEpO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICBpZiAoIXRoaXMua2VlcEkxOG5BdHRycykge1xuICAgICAgICAvLyB1cGRhdGUgZWxlbWVudCdzIGF0dHJpYnV0ZXMsXG4gICAgICAgIC8vIGtlZXBpbmcgb25seSBub24taTE4biByZWxhdGVkIG9uZXNcbiAgICAgICAgZWxlbWVudC5hdHRycyA9IGF0dHJzO1xuICAgICAgfVxuICAgIH1cbiAgICBodG1sLnZpc2l0QWxsKHRoaXMsIGVsZW1lbnQuY2hpbGRyZW4sIGVsZW1lbnQuaTE4bik7XG4gICAgcmV0dXJuIGVsZW1lbnQ7XG4gIH1cblxuICB2aXNpdEV4cGFuc2lvbihleHBhbnNpb246IGh0bWwuRXhwYW5zaW9uLCBjdXJyZW50TWVzc2FnZTogaTE4bi5NZXNzYWdlfHVuZGVmaW5lZCk6IGFueSB7XG4gICAgbGV0IG1lc3NhZ2U7XG4gICAgY29uc3QgbWV0YSA9IGV4cGFuc2lvbi5pMThuO1xuICAgIHRoaXMuaGFzSTE4bk1ldGEgPSB0cnVlO1xuICAgIGlmIChtZXRhIGluc3RhbmNlb2YgaTE4bi5JY3VQbGFjZWhvbGRlcikge1xuICAgICAgLy8gc2V0IElDVSBwbGFjZWhvbGRlciBuYW1lIChlLmcuIFwiSUNVXzFcIiksXG4gICAgICAvLyBnZW5lcmF0ZWQgd2hpbGUgcHJvY2Vzc2luZyByb290IGVsZW1lbnQgY29udGVudHMsXG4gICAgICAvLyBzbyB3ZSBjYW4gcmVmZXJlbmNlIGl0IHdoZW4gd2Ugb3V0cHV0IHRyYW5zbGF0aW9uXG4gICAgICBjb25zdCBuYW1lID0gbWV0YS5uYW1lO1xuICAgICAgbWVzc2FnZSA9IHRoaXMuX2dlbmVyYXRlSTE4bk1lc3NhZ2UoW2V4cGFuc2lvbl0sIG1ldGEpO1xuICAgICAgY29uc3QgaWN1ID0gaWN1RnJvbUkxOG5NZXNzYWdlKG1lc3NhZ2UpO1xuICAgICAgaWN1Lm5hbWUgPSBuYW1lO1xuICAgIH0gZWxzZSB7XG4gICAgICAvLyBJQ1UgaXMgYSB0b3AgbGV2ZWwgbWVzc2FnZSwgdHJ5IHRvIHVzZSBtZXRhZGF0YSBmcm9tIGNvbnRhaW5lciBlbGVtZW50IGlmIHByb3ZpZGVkIHZpYVxuICAgICAgLy8gYGNvbnRleHRgIGFyZ3VtZW50LiBOb3RlOiBjb250ZXh0IG1heSBub3QgYmUgYXZhaWxhYmxlIGZvciBzdGFuZGFsb25lIElDVXMgKHdpdGhvdXRcbiAgICAgIC8vIHdyYXBwaW5nIGVsZW1lbnQpLCBzbyBmYWxsYmFjayB0byBJQ1UgbWV0YWRhdGEgaW4gdGhpcyBjYXNlLlxuICAgICAgbWVzc2FnZSA9IHRoaXMuX2dlbmVyYXRlSTE4bk1lc3NhZ2UoW2V4cGFuc2lvbl0sIGN1cnJlbnRNZXNzYWdlIHx8IG1ldGEpO1xuICAgIH1cbiAgICBleHBhbnNpb24uaTE4biA9IG1lc3NhZ2U7XG4gICAgcmV0dXJuIGV4cGFuc2lvbjtcbiAgfVxuXG4gIHZpc2l0VGV4dCh0ZXh0OiBodG1sLlRleHQpOiBhbnkgeyByZXR1cm4gdGV4dDsgfVxuICB2aXNpdEF0dHJpYnV0ZShhdHRyaWJ1dGU6IGh0bWwuQXR0cmlidXRlKTogYW55IHsgcmV0dXJuIGF0dHJpYnV0ZTsgfVxuICB2aXNpdENvbW1lbnQoY29tbWVudDogaHRtbC5Db21tZW50KTogYW55IHsgcmV0dXJuIGNvbW1lbnQ7IH1cbiAgdmlzaXRFeHBhbnNpb25DYXNlKGV4cGFuc2lvbkNhc2U6IGh0bWwuRXhwYW5zaW9uQ2FzZSk6IGFueSB7IHJldHVybiBleHBhbnNpb25DYXNlOyB9XG5cbiAgLyoqXG4gICAqIFBhcnNlIHRoZSBnZW5lcmFsIGZvcm0gYG1ldGFgIHBhc3NlZCBpbnRvIGV4dHJhY3QgdGhlIGV4cGxpY2l0IG1ldGFkYXRhIG5lZWRlZCB0byBjcmVhdGUgYVxuICAgKiBgTWVzc2FnZWAuXG4gICAqXG4gICAqIFRoZXJlIGFyZSB0aHJlZSBwb3NzaWJpbGl0aWVzIGZvciB0aGUgYG1ldGFgIHZhcmlhYmxlXG4gICAqIDEpIGEgc3RyaW5nIGZyb20gYW4gYGkxOG5gIHRlbXBsYXRlIGF0dHJpYnV0ZTogcGFyc2UgaXQgdG8gZXh0cmFjdCB0aGUgbWV0YWRhdGEgdmFsdWVzLlxuICAgKiAyKSBhIGBNZXNzYWdlYCBmcm9tIGEgcHJldmlvdXMgcHJvY2Vzc2luZyBwYXNzOiByZXVzZSB0aGUgbWV0YWRhdGEgdmFsdWVzIGluIHRoZSBtZXNzYWdlLlxuICAgKiA0KSBvdGhlcjogaWdub3JlIHRoaXMgYW5kIGp1c3QgcHJvY2VzcyB0aGUgbWVzc2FnZSBtZXRhZGF0YSBhcyBub3JtYWxcbiAgICpcbiAgICogQHBhcmFtIG1ldGEgdGhlIGJ1Y2tldCB0aGF0IGhvbGRzIGluZm9ybWF0aW9uIGFib3V0IHRoZSBtZXNzYWdlXG4gICAqIEByZXR1cm5zIHRoZSBwYXJzZWQgbWV0YWRhdGEuXG4gICAqL1xuICBwcml2YXRlIF9wYXJzZU1ldGFkYXRhKG1ldGE6IHN0cmluZ3xpMThuLkkxOG5NZXRhKTogSTE4bk1ldGEge1xuICAgIHJldHVybiB0eXBlb2YgbWV0YSA9PT0gJ3N0cmluZycgPyBwYXJzZUkxOG5NZXRhKG1ldGEpIDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbWV0YSBpbnN0YW5jZW9mIGkxOG4uTWVzc2FnZSA/IG1ldGEgOiB7fTtcbiAgfVxuXG4gIC8qKlxuICAgKiBHZW5lcmF0ZSAob3IgcmVzdG9yZSkgbWVzc2FnZSBpZCBpZiBub3Qgc3BlY2lmaWVkIGFscmVhZHkuXG4gICAqL1xuICBwcml2YXRlIF9zZXRNZXNzYWdlSWQobWVzc2FnZTogaTE4bi5NZXNzYWdlLCBtZXRhOiBzdHJpbmd8aTE4bi5JMThuTWV0YSk6IHZvaWQge1xuICAgIGlmICghbWVzc2FnZS5pZCkge1xuICAgICAgbWVzc2FnZS5pZCA9IG1ldGEgaW5zdGFuY2VvZiBpMThuLk1lc3NhZ2UgJiYgbWV0YS5pZCB8fCBkZWNpbWFsRGlnZXN0KG1lc3NhZ2UpO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBVcGRhdGUgdGhlIGBtZXNzYWdlYCB3aXRoIGEgYGxlZ2FjeUlkYCBpZiBuZWNlc3NhcnkuXG4gICAqXG4gICAqIEBwYXJhbSBtZXNzYWdlIHRoZSBtZXNzYWdlIHdob3NlIGxlZ2FjeSBpZCBzaG91bGQgYmUgc2V0XG4gICAqIEBwYXJhbSBtZXRhIGluZm9ybWF0aW9uIGFib3V0IHRoZSBtZXNzYWdlIGJlaW5nIHByb2Nlc3NlZFxuICAgKi9cbiAgcHJpdmF0ZSBfc2V0TGVnYWN5SWRzKG1lc3NhZ2U6IGkxOG4uTWVzc2FnZSwgbWV0YTogc3RyaW5nfGkxOG4uSTE4bk1ldGEpOiB2b2lkIHtcbiAgICBpZiAodGhpcy5lbmFibGVJMThuTGVnYWN5TWVzc2FnZUlkRm9ybWF0KSB7XG4gICAgICBtZXNzYWdlLmxlZ2FjeUlkcyA9IFtjb21wdXRlRGlnZXN0KG1lc3NhZ2UpLCBjb21wdXRlRGVjaW1hbERpZ2VzdChtZXNzYWdlKV07XG4gICAgfSBlbHNlIGlmICh0eXBlb2YgbWV0YSAhPT0gJ3N0cmluZycpIHtcbiAgICAgIC8vIFRoaXMgb2NjdXJzIGlmIHdlIGFyZSBkb2luZyB0aGUgMm5kIHBhc3MgYWZ0ZXIgd2hpdGVzcGFjZSByZW1vdmFsIChzZWUgYHBhcnNlVGVtcGxhdGUoKWAgaW5cbiAgICAgIC8vIGBwYWNrYWdlcy9jb21waWxlci9zcmMvcmVuZGVyMy92aWV3L3RlbXBsYXRlLnRzYCkuXG4gICAgICAvLyBJbiB0aGF0IGNhc2Ugd2Ugd2FudCB0byByZXVzZSB0aGUgbGVnYWN5IG1lc3NhZ2UgZ2VuZXJhdGVkIGluIHRoZSAxc3QgcGFzcyAoc2VlXG4gICAgICAvLyBgc2V0STE4blJlZnMoKWApLlxuICAgICAgY29uc3QgcHJldmlvdXNNZXNzYWdlID0gbWV0YSBpbnN0YW5jZW9mIGkxOG4uTWVzc2FnZSA/XG4gICAgICAgICAgbWV0YSA6XG4gICAgICAgICAgbWV0YSBpbnN0YW5jZW9mIGkxOG4uSWN1UGxhY2Vob2xkZXIgPyBtZXRhLnByZXZpb3VzTWVzc2FnZSA6IHVuZGVmaW5lZDtcbiAgICAgIG1lc3NhZ2UubGVnYWN5SWRzID0gcHJldmlvdXNNZXNzYWdlID8gcHJldmlvdXNNZXNzYWdlLmxlZ2FjeUlkcyA6IFtdO1xuICAgIH1cbiAgfVxufVxuXG4vKiogSTE4biBzZXBhcmF0b3JzIGZvciBtZXRhZGF0YSAqKi9cbmNvbnN0IEkxOE5fTUVBTklOR19TRVBBUkFUT1IgPSAnfCc7XG5jb25zdCBJMThOX0lEX1NFUEFSQVRPUiA9ICdAQCc7XG5cbi8qKlxuICogUGFyc2VzIGkxOG4gbWV0YXMgbGlrZTpcbiAqICAtIFwiQEBpZFwiLFxuICogIC0gXCJkZXNjcmlwdGlvbltAQGlkXVwiLFxuICogIC0gXCJtZWFuaW5nfGRlc2NyaXB0aW9uW0BAaWRdXCJcbiAqIGFuZCByZXR1cm5zIGFuIG9iamVjdCB3aXRoIHBhcnNlZCBvdXRwdXQuXG4gKlxuICogQHBhcmFtIG1ldGEgU3RyaW5nIHRoYXQgcmVwcmVzZW50cyBpMThuIG1ldGFcbiAqIEByZXR1cm5zIE9iamVjdCB3aXRoIGlkLCBtZWFuaW5nIGFuZCBkZXNjcmlwdGlvbiBmaWVsZHNcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHBhcnNlSTE4bk1ldGEobWV0YTogc3RyaW5nID0gJycpOiBJMThuTWV0YSB7XG4gIGxldCBjdXN0b21JZDogc3RyaW5nfHVuZGVmaW5lZDtcbiAgbGV0IG1lYW5pbmc6IHN0cmluZ3x1bmRlZmluZWQ7XG4gIGxldCBkZXNjcmlwdGlvbjogc3RyaW5nfHVuZGVmaW5lZDtcblxuICBtZXRhID0gbWV0YS50cmltKCk7XG4gIGlmIChtZXRhKSB7XG4gICAgY29uc3QgaWRJbmRleCA9IG1ldGEuaW5kZXhPZihJMThOX0lEX1NFUEFSQVRPUik7XG4gICAgY29uc3QgZGVzY0luZGV4ID0gbWV0YS5pbmRleE9mKEkxOE5fTUVBTklOR19TRVBBUkFUT1IpO1xuICAgIGxldCBtZWFuaW5nQW5kRGVzYzogc3RyaW5nO1xuICAgIFttZWFuaW5nQW5kRGVzYywgY3VzdG9tSWRdID1cbiAgICAgICAgKGlkSW5kZXggPiAtMSkgPyBbbWV0YS5zbGljZSgwLCBpZEluZGV4KSwgbWV0YS5zbGljZShpZEluZGV4ICsgMildIDogW21ldGEsICcnXTtcbiAgICBbbWVhbmluZywgZGVzY3JpcHRpb25dID0gKGRlc2NJbmRleCA+IC0xKSA/XG4gICAgICAgIFttZWFuaW5nQW5kRGVzYy5zbGljZSgwLCBkZXNjSW5kZXgpLCBtZWFuaW5nQW5kRGVzYy5zbGljZShkZXNjSW5kZXggKyAxKV0gOlxuICAgICAgICBbJycsIG1lYW5pbmdBbmREZXNjXTtcbiAgfVxuXG4gIHJldHVybiB7Y3VzdG9tSWQsIG1lYW5pbmcsIGRlc2NyaXB0aW9ufTtcbn1cblxuLy8gQ29udmVydHMgaTE4biBtZXRhIGluZm9ybWF0aW9uIGZvciBhIG1lc3NhZ2UgKGlkLCBkZXNjcmlwdGlvbiwgbWVhbmluZylcbi8vIHRvIGEgSnNEb2Mgc3RhdGVtZW50IGZvcm1hdHRlZCBhcyBleHBlY3RlZCBieSB0aGUgQ2xvc3VyZSBjb21waWxlci5cbmV4cG9ydCBmdW5jdGlvbiBpMThuTWV0YVRvRG9jU3RtdChtZXRhOiBJMThuTWV0YSk6IG8uSlNEb2NDb21tZW50U3RtdHxudWxsIHtcbiAgY29uc3QgdGFnczogby5KU0RvY1RhZ1tdID0gW107XG4gIGlmIChtZXRhLmRlc2NyaXB0aW9uKSB7XG4gICAgdGFncy5wdXNoKHt0YWdOYW1lOiBvLkpTRG9jVGFnTmFtZS5EZXNjLCB0ZXh0OiBtZXRhLmRlc2NyaXB0aW9ufSk7XG4gIH1cbiAgaWYgKG1ldGEubWVhbmluZykge1xuICAgIHRhZ3MucHVzaCh7dGFnTmFtZTogby5KU0RvY1RhZ05hbWUuTWVhbmluZywgdGV4dDogbWV0YS5tZWFuaW5nfSk7XG4gIH1cbiAgcmV0dXJuIHRhZ3MubGVuZ3RoID09IDAgPyBudWxsIDogbmV3IG8uSlNEb2NDb21tZW50U3RtdCh0YWdzKTtcbn1cbiJdfQ==