(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler/src/render3/view/i18n/localize_utils", ["require", "exports", "tslib", "@angular/compiler/src/output/output_ast", "@angular/compiler/src/render3/view/i18n/icu_serializer", "@angular/compiler/src/render3/view/i18n/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.serializeI18nMessageForLocalize = exports.createLocalizeStatements = void 0;
    var tslib_1 = require("tslib");
    var o = require("@angular/compiler/src/output/output_ast");
    var icu_serializer_1 = require("@angular/compiler/src/render3/view/i18n/icu_serializer");
    var util_1 = require("@angular/compiler/src/render3/view/i18n/util");
    function createLocalizeStatements(variable, message, params) {
        var statements = [];
        var _a = serializeI18nMessageForLocalize(message), messageParts = _a.messageParts, placeHolders = _a.placeHolders;
        statements.push(new o.ExpressionStatement(variable.set(o.localizedString(message, messageParts, placeHolders, placeHolders.map(function (ph) { return params[ph]; })))));
        return statements;
    }
    exports.createLocalizeStatements = createLocalizeStatements;
    var MessagePiece = /** @class */ (function () {
        function MessagePiece(text) {
            this.text = text;
        }
        return MessagePiece;
    }());
    var LiteralPiece = /** @class */ (function (_super) {
        tslib_1.__extends(LiteralPiece, _super);
        function LiteralPiece() {
            return _super !== null && _super.apply(this, arguments) || this;
        }
        return LiteralPiece;
    }(MessagePiece));
    var PlaceholderPiece = /** @class */ (function (_super) {
        tslib_1.__extends(PlaceholderPiece, _super);
        function PlaceholderPiece(name) {
            return _super.call(this, util_1.formatI18nPlaceholderName(name, /* useCamelCase */ false)) || this;
        }
        return PlaceholderPiece;
    }(MessagePiece));
    /**
     * This visitor walks over an i18n tree, capturing literal strings and placeholders.
     *
     * The result can be used for generating the `$localize` tagged template literals.
     */
    var LocalizeSerializerVisitor = /** @class */ (function () {
        function LocalizeSerializerVisitor() {
        }
        LocalizeSerializerVisitor.prototype.visitText = function (text, context) {
            if (context[context.length - 1] instanceof LiteralPiece) {
                // Two literal pieces in a row means that there was some comment node in-between.
                context[context.length - 1].text += text.value;
            }
            else {
                context.push(new LiteralPiece(text.value));
            }
        };
        LocalizeSerializerVisitor.prototype.visitContainer = function (container, context) {
            var _this = this;
            container.children.forEach(function (child) { return child.visit(_this, context); });
        };
        LocalizeSerializerVisitor.prototype.visitIcu = function (icu, context) {
            context.push(new LiteralPiece(icu_serializer_1.serializeIcuNode(icu)));
        };
        LocalizeSerializerVisitor.prototype.visitTagPlaceholder = function (ph, context) {
            var _this = this;
            context.push(new PlaceholderPiece(ph.startName));
            if (!ph.isVoid) {
                ph.children.forEach(function (child) { return child.visit(_this, context); });
                context.push(new PlaceholderPiece(ph.closeName));
            }
        };
        LocalizeSerializerVisitor.prototype.visitPlaceholder = function (ph, context) {
            context.push(new PlaceholderPiece(ph.name));
        };
        LocalizeSerializerVisitor.prototype.visitIcuPlaceholder = function (ph, context) {
            context.push(new PlaceholderPiece(ph.name));
        };
        return LocalizeSerializerVisitor;
    }());
    var serializerVisitor = new LocalizeSerializerVisitor();
    /**
     * Serialize an i18n message into two arrays: messageParts and placeholders.
     *
     * These arrays will be used to generate `$localize` tagged template literals.
     *
     * @param message The message to be serialized.
     * @returns an object containing the messageParts and placeholders.
     */
    function serializeI18nMessageForLocalize(message) {
        var pieces = [];
        message.nodes.forEach(function (node) { return node.visit(serializerVisitor, pieces); });
        return processMessagePieces(pieces);
    }
    exports.serializeI18nMessageForLocalize = serializeI18nMessageForLocalize;
    /**
     * Convert the list of serialized MessagePieces into two arrays.
     *
     * One contains the literal string pieces and the other the placeholders that will be replaced by
     * expressions when rendering `$localize` tagged template literals.
     *
     * @param pieces The pieces to process.
     * @returns an object containing the messageParts and placeholders.
     */
    function processMessagePieces(pieces) {
        var messageParts = [];
        var placeHolders = [];
        if (pieces[0] instanceof PlaceholderPiece) {
            // The first piece was a placeholder so we need to add an initial empty message part.
            messageParts.push('');
        }
        for (var i = 0; i < pieces.length; i++) {
            var part = pieces[i];
            if (part instanceof LiteralPiece) {
                messageParts.push(part.text);
            }
            else {
                placeHolders.push(part.text);
                if (pieces[i - 1] instanceof PlaceholderPiece) {
                    // There were two placeholders in a row, so we need to add an empty message part.
                    messageParts.push('');
                }
            }
        }
        if (pieces[pieces.length - 1] instanceof PlaceholderPiece) {
            // The last piece was a placeholder so we need to add a final empty message part.
            messageParts.push('');
        }
        return { messageParts: messageParts, placeHolders: placeHolders };
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibG9jYWxpemVfdXRpbHMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci9zcmMvcmVuZGVyMy92aWV3L2kxOG4vbG9jYWxpemVfdXRpbHMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztJQVFBLDJEQUFnRDtJQUVoRCx5RkFBa0Q7SUFDbEQscUVBQWlEO0lBRWpELFNBQWdCLHdCQUF3QixDQUNwQyxRQUF1QixFQUFFLE9BQXFCLEVBQzlDLE1BQXNDO1FBQ3hDLElBQU0sVUFBVSxHQUFHLEVBQUUsQ0FBQztRQUVoQixJQUFBLEtBQStCLCtCQUErQixDQUFDLE9BQU8sQ0FBQyxFQUF0RSxZQUFZLGtCQUFBLEVBQUUsWUFBWSxrQkFBNEMsQ0FBQztRQUM5RSxVQUFVLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDLG1CQUFtQixDQUFDLFFBQVEsQ0FBQyxHQUFHLENBQ2xELENBQUMsQ0FBQyxlQUFlLENBQUMsT0FBTyxFQUFFLFlBQVksRUFBRSxZQUFZLEVBQUUsWUFBWSxDQUFDLEdBQUcsQ0FBQyxVQUFBLEVBQUUsSUFBSSxPQUFBLE1BQU0sQ0FBQyxFQUFFLENBQUMsRUFBVixDQUFVLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBRWxHLE9BQU8sVUFBVSxDQUFDO0lBQ3BCLENBQUM7SUFWRCw0REFVQztJQUVEO1FBQ0Usc0JBQW1CLElBQVk7WUFBWixTQUFJLEdBQUosSUFBSSxDQUFRO1FBQUcsQ0FBQztRQUNyQyxtQkFBQztJQUFELENBQUMsQUFGRCxJQUVDO0lBQ0Q7UUFBMkIsd0NBQVk7UUFBdkM7O1FBQXlDLENBQUM7UUFBRCxtQkFBQztJQUFELENBQUMsQUFBMUMsQ0FBMkIsWUFBWSxHQUFHO0lBQzFDO1FBQStCLDRDQUFZO1FBQ3pDLDBCQUFZLElBQVk7bUJBQ3RCLGtCQUFNLGdDQUF5QixDQUFDLElBQUksRUFBRSxrQkFBa0IsQ0FBQyxLQUFLLENBQUMsQ0FBQztRQUNsRSxDQUFDO1FBQ0gsdUJBQUM7SUFBRCxDQUFDLEFBSkQsQ0FBK0IsWUFBWSxHQUkxQztJQUVEOzs7O09BSUc7SUFDSDtRQUFBO1FBaUNBLENBQUM7UUFoQ0MsNkNBQVMsR0FBVCxVQUFVLElBQWUsRUFBRSxPQUF1QjtZQUNoRCxJQUFJLE9BQU8sQ0FBQyxPQUFPLENBQUMsTUFBTSxHQUFHLENBQUMsQ0FBQyxZQUFZLFlBQVksRUFBRTtnQkFDdkQsaUZBQWlGO2dCQUNqRixPQUFPLENBQUMsT0FBTyxDQUFDLE1BQU0sR0FBRyxDQUFDLENBQUMsQ0FBQyxJQUFJLElBQUksSUFBSSxDQUFDLEtBQUssQ0FBQzthQUNoRDtpQkFBTTtnQkFDTCxPQUFPLENBQUMsSUFBSSxDQUFDLElBQUksWUFBWSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDO2FBQzVDO1FBQ0gsQ0FBQztRQUVELGtEQUFjLEdBQWQsVUFBZSxTQUF5QixFQUFFLE9BQXVCO1lBQWpFLGlCQUVDO1lBREMsU0FBUyxDQUFDLFFBQVEsQ0FBQyxPQUFPLENBQUMsVUFBQSxLQUFLLElBQUksT0FBQSxLQUFLLENBQUMsS0FBSyxDQUFDLEtBQUksRUFBRSxPQUFPLENBQUMsRUFBMUIsQ0FBMEIsQ0FBQyxDQUFDO1FBQ2xFLENBQUM7UUFFRCw0Q0FBUSxHQUFSLFVBQVMsR0FBYSxFQUFFLE9BQXVCO1lBQzdDLE9BQU8sQ0FBQyxJQUFJLENBQUMsSUFBSSxZQUFZLENBQUMsaUNBQWdCLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQ3hELENBQUM7UUFFRCx1REFBbUIsR0FBbkIsVUFBb0IsRUFBdUIsRUFBRSxPQUF1QjtZQUFwRSxpQkFNQztZQUxDLE9BQU8sQ0FBQyxJQUFJLENBQUMsSUFBSSxnQkFBZ0IsQ0FBQyxFQUFFLENBQUMsU0FBUyxDQUFDLENBQUMsQ0FBQztZQUNqRCxJQUFJLENBQUMsRUFBRSxDQUFDLE1BQU0sRUFBRTtnQkFDZCxFQUFFLENBQUMsUUFBUSxDQUFDLE9BQU8sQ0FBQyxVQUFBLEtBQUssSUFBSSxPQUFBLEtBQUssQ0FBQyxLQUFLLENBQUMsS0FBSSxFQUFFLE9BQU8sQ0FBQyxFQUExQixDQUEwQixDQUFDLENBQUM7Z0JBQ3pELE9BQU8sQ0FBQyxJQUFJLENBQUMsSUFBSSxnQkFBZ0IsQ0FBQyxFQUFFLENBQUMsU0FBUyxDQUFDLENBQUMsQ0FBQzthQUNsRDtRQUNILENBQUM7UUFFRCxvREFBZ0IsR0FBaEIsVUFBaUIsRUFBb0IsRUFBRSxPQUF1QjtZQUM1RCxPQUFPLENBQUMsSUFBSSxDQUFDLElBQUksZ0JBQWdCLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7UUFDOUMsQ0FBQztRQUVELHVEQUFtQixHQUFuQixVQUFvQixFQUF1QixFQUFFLE9BQWE7WUFDeEQsT0FBTyxDQUFDLElBQUksQ0FBQyxJQUFJLGdCQUFnQixDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDO1FBQzlDLENBQUM7UUFDSCxnQ0FBQztJQUFELENBQUMsQUFqQ0QsSUFpQ0M7SUFFRCxJQUFNLGlCQUFpQixHQUFHLElBQUkseUJBQXlCLEVBQUUsQ0FBQztJQUUxRDs7Ozs7OztPQU9HO0lBQ0gsU0FBZ0IsK0JBQStCLENBQUMsT0FBcUI7UUFFbkUsSUFBTSxNQUFNLEdBQW1CLEVBQUUsQ0FBQztRQUNsQyxPQUFPLENBQUMsS0FBSyxDQUFDLE9BQU8sQ0FBQyxVQUFBLElBQUksSUFBSSxPQUFBLElBQUksQ0FBQyxLQUFLLENBQUMsaUJBQWlCLEVBQUUsTUFBTSxDQUFDLEVBQXJDLENBQXFDLENBQUMsQ0FBQztRQUNyRSxPQUFPLG9CQUFvQixDQUFDLE1BQU0sQ0FBQyxDQUFDO0lBQ3RDLENBQUM7SUFMRCwwRUFLQztJQUVEOzs7Ozs7OztPQVFHO0lBQ0gsU0FBUyxvQkFBb0IsQ0FBQyxNQUFzQjtRQUVsRCxJQUFNLFlBQVksR0FBYSxFQUFFLENBQUM7UUFDbEMsSUFBTSxZQUFZLEdBQWEsRUFBRSxDQUFDO1FBRWxDLElBQUksTUFBTSxDQUFDLENBQUMsQ0FBQyxZQUFZLGdCQUFnQixFQUFFO1lBQ3pDLHFGQUFxRjtZQUNyRixZQUFZLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxDQUFDO1NBQ3ZCO1FBRUQsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLE1BQU0sQ0FBQyxNQUFNLEVBQUUsQ0FBQyxFQUFFLEVBQUU7WUFDdEMsSUFBTSxJQUFJLEdBQUcsTUFBTSxDQUFDLENBQUMsQ0FBQyxDQUFDO1lBQ3ZCLElBQUksSUFBSSxZQUFZLFlBQVksRUFBRTtnQkFDaEMsWUFBWSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7YUFDOUI7aUJBQU07Z0JBQ0wsWUFBWSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7Z0JBQzdCLElBQUksTUFBTSxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUMsWUFBWSxnQkFBZ0IsRUFBRTtvQkFDN0MsaUZBQWlGO29CQUNqRixZQUFZLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxDQUFDO2lCQUN2QjthQUNGO1NBQ0Y7UUFDRCxJQUFJLE1BQU0sQ0FBQyxNQUFNLENBQUMsTUFBTSxHQUFHLENBQUMsQ0FBQyxZQUFZLGdCQUFnQixFQUFFO1lBQ3pELGlGQUFpRjtZQUNqRixZQUFZLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxDQUFDO1NBQ3ZCO1FBQ0QsT0FBTyxFQUFDLFlBQVksY0FBQSxFQUFFLFlBQVksY0FBQSxFQUFDLENBQUM7SUFDdEMsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0ICogYXMgaTE4biBmcm9tICcuLi8uLi8uLi9pMThuL2kxOG5fYXN0JztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi4vLi4vLi4vb3V0cHV0L291dHB1dF9hc3QnO1xuXG5pbXBvcnQge3NlcmlhbGl6ZUljdU5vZGV9IGZyb20gJy4vaWN1X3NlcmlhbGl6ZXInO1xuaW1wb3J0IHtmb3JtYXRJMThuUGxhY2Vob2xkZXJOYW1lfSBmcm9tICcuL3V0aWwnO1xuXG5leHBvcnQgZnVuY3Rpb24gY3JlYXRlTG9jYWxpemVTdGF0ZW1lbnRzKFxuICAgIHZhcmlhYmxlOiBvLlJlYWRWYXJFeHByLCBtZXNzYWdlOiBpMThuLk1lc3NhZ2UsXG4gICAgcGFyYW1zOiB7W25hbWU6IHN0cmluZ106IG8uRXhwcmVzc2lvbn0pOiBvLlN0YXRlbWVudFtdIHtcbiAgY29uc3Qgc3RhdGVtZW50cyA9IFtdO1xuXG4gIGNvbnN0IHttZXNzYWdlUGFydHMsIHBsYWNlSG9sZGVyc30gPSBzZXJpYWxpemVJMThuTWVzc2FnZUZvckxvY2FsaXplKG1lc3NhZ2UpO1xuICBzdGF0ZW1lbnRzLnB1c2gobmV3IG8uRXhwcmVzc2lvblN0YXRlbWVudCh2YXJpYWJsZS5zZXQoXG4gICAgICBvLmxvY2FsaXplZFN0cmluZyhtZXNzYWdlLCBtZXNzYWdlUGFydHMsIHBsYWNlSG9sZGVycywgcGxhY2VIb2xkZXJzLm1hcChwaCA9PiBwYXJhbXNbcGhdKSkpKSk7XG5cbiAgcmV0dXJuIHN0YXRlbWVudHM7XG59XG5cbmNsYXNzIE1lc3NhZ2VQaWVjZSB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyB0ZXh0OiBzdHJpbmcpIHt9XG59XG5jbGFzcyBMaXRlcmFsUGllY2UgZXh0ZW5kcyBNZXNzYWdlUGllY2Uge31cbmNsYXNzIFBsYWNlaG9sZGVyUGllY2UgZXh0ZW5kcyBNZXNzYWdlUGllY2Uge1xuICBjb25zdHJ1Y3RvcihuYW1lOiBzdHJpbmcpIHtcbiAgICBzdXBlcihmb3JtYXRJMThuUGxhY2Vob2xkZXJOYW1lKG5hbWUsIC8qIHVzZUNhbWVsQ2FzZSAqLyBmYWxzZSkpO1xuICB9XG59XG5cbi8qKlxuICogVGhpcyB2aXNpdG9yIHdhbGtzIG92ZXIgYW4gaTE4biB0cmVlLCBjYXB0dXJpbmcgbGl0ZXJhbCBzdHJpbmdzIGFuZCBwbGFjZWhvbGRlcnMuXG4gKlxuICogVGhlIHJlc3VsdCBjYW4gYmUgdXNlZCBmb3IgZ2VuZXJhdGluZyB0aGUgYCRsb2NhbGl6ZWAgdGFnZ2VkIHRlbXBsYXRlIGxpdGVyYWxzLlxuICovXG5jbGFzcyBMb2NhbGl6ZVNlcmlhbGl6ZXJWaXNpdG9yIGltcGxlbWVudHMgaTE4bi5WaXNpdG9yIHtcbiAgdmlzaXRUZXh0KHRleHQ6IGkxOG4uVGV4dCwgY29udGV4dDogTWVzc2FnZVBpZWNlW10pOiBhbnkge1xuICAgIGlmIChjb250ZXh0W2NvbnRleHQubGVuZ3RoIC0gMV0gaW5zdGFuY2VvZiBMaXRlcmFsUGllY2UpIHtcbiAgICAgIC8vIFR3byBsaXRlcmFsIHBpZWNlcyBpbiBhIHJvdyBtZWFucyB0aGF0IHRoZXJlIHdhcyBzb21lIGNvbW1lbnQgbm9kZSBpbi1iZXR3ZWVuLlxuICAgICAgY29udGV4dFtjb250ZXh0Lmxlbmd0aCAtIDFdLnRleHQgKz0gdGV4dC52YWx1ZTtcbiAgICB9IGVsc2Uge1xuICAgICAgY29udGV4dC5wdXNoKG5ldyBMaXRlcmFsUGllY2UodGV4dC52YWx1ZSkpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0Q29udGFpbmVyKGNvbnRhaW5lcjogaTE4bi5Db250YWluZXIsIGNvbnRleHQ6IE1lc3NhZ2VQaWVjZVtdKTogYW55IHtcbiAgICBjb250YWluZXIuY2hpbGRyZW4uZm9yRWFjaChjaGlsZCA9PiBjaGlsZC52aXNpdCh0aGlzLCBjb250ZXh0KSk7XG4gIH1cblxuICB2aXNpdEljdShpY3U6IGkxOG4uSWN1LCBjb250ZXh0OiBNZXNzYWdlUGllY2VbXSk6IGFueSB7XG4gICAgY29udGV4dC5wdXNoKG5ldyBMaXRlcmFsUGllY2Uoc2VyaWFsaXplSWN1Tm9kZShpY3UpKSk7XG4gIH1cblxuICB2aXNpdFRhZ1BsYWNlaG9sZGVyKHBoOiBpMThuLlRhZ1BsYWNlaG9sZGVyLCBjb250ZXh0OiBNZXNzYWdlUGllY2VbXSk6IGFueSB7XG4gICAgY29udGV4dC5wdXNoKG5ldyBQbGFjZWhvbGRlclBpZWNlKHBoLnN0YXJ0TmFtZSkpO1xuICAgIGlmICghcGguaXNWb2lkKSB7XG4gICAgICBwaC5jaGlsZHJlbi5mb3JFYWNoKGNoaWxkID0+IGNoaWxkLnZpc2l0KHRoaXMsIGNvbnRleHQpKTtcbiAgICAgIGNvbnRleHQucHVzaChuZXcgUGxhY2Vob2xkZXJQaWVjZShwaC5jbG9zZU5hbWUpKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdFBsYWNlaG9sZGVyKHBoOiBpMThuLlBsYWNlaG9sZGVyLCBjb250ZXh0OiBNZXNzYWdlUGllY2VbXSk6IGFueSB7XG4gICAgY29udGV4dC5wdXNoKG5ldyBQbGFjZWhvbGRlclBpZWNlKHBoLm5hbWUpKTtcbiAgfVxuXG4gIHZpc2l0SWN1UGxhY2Vob2xkZXIocGg6IGkxOG4uSWN1UGxhY2Vob2xkZXIsIGNvbnRleHQ/OiBhbnkpOiBhbnkge1xuICAgIGNvbnRleHQucHVzaChuZXcgUGxhY2Vob2xkZXJQaWVjZShwaC5uYW1lKSk7XG4gIH1cbn1cblxuY29uc3Qgc2VyaWFsaXplclZpc2l0b3IgPSBuZXcgTG9jYWxpemVTZXJpYWxpemVyVmlzaXRvcigpO1xuXG4vKipcbiAqIFNlcmlhbGl6ZSBhbiBpMThuIG1lc3NhZ2UgaW50byB0d28gYXJyYXlzOiBtZXNzYWdlUGFydHMgYW5kIHBsYWNlaG9sZGVycy5cbiAqXG4gKiBUaGVzZSBhcnJheXMgd2lsbCBiZSB1c2VkIHRvIGdlbmVyYXRlIGAkbG9jYWxpemVgIHRhZ2dlZCB0ZW1wbGF0ZSBsaXRlcmFscy5cbiAqXG4gKiBAcGFyYW0gbWVzc2FnZSBUaGUgbWVzc2FnZSB0byBiZSBzZXJpYWxpemVkLlxuICogQHJldHVybnMgYW4gb2JqZWN0IGNvbnRhaW5pbmcgdGhlIG1lc3NhZ2VQYXJ0cyBhbmQgcGxhY2Vob2xkZXJzLlxuICovXG5leHBvcnQgZnVuY3Rpb24gc2VyaWFsaXplSTE4bk1lc3NhZ2VGb3JMb2NhbGl6ZShtZXNzYWdlOiBpMThuLk1lc3NhZ2UpOlxuICAgIHttZXNzYWdlUGFydHM6IHN0cmluZ1tdLCBwbGFjZUhvbGRlcnM6IHN0cmluZ1tdfSB7XG4gIGNvbnN0IHBpZWNlczogTWVzc2FnZVBpZWNlW10gPSBbXTtcbiAgbWVzc2FnZS5ub2Rlcy5mb3JFYWNoKG5vZGUgPT4gbm9kZS52aXNpdChzZXJpYWxpemVyVmlzaXRvciwgcGllY2VzKSk7XG4gIHJldHVybiBwcm9jZXNzTWVzc2FnZVBpZWNlcyhwaWVjZXMpO1xufVxuXG4vKipcbiAqIENvbnZlcnQgdGhlIGxpc3Qgb2Ygc2VyaWFsaXplZCBNZXNzYWdlUGllY2VzIGludG8gdHdvIGFycmF5cy5cbiAqXG4gKiBPbmUgY29udGFpbnMgdGhlIGxpdGVyYWwgc3RyaW5nIHBpZWNlcyBhbmQgdGhlIG90aGVyIHRoZSBwbGFjZWhvbGRlcnMgdGhhdCB3aWxsIGJlIHJlcGxhY2VkIGJ5XG4gKiBleHByZXNzaW9ucyB3aGVuIHJlbmRlcmluZyBgJGxvY2FsaXplYCB0YWdnZWQgdGVtcGxhdGUgbGl0ZXJhbHMuXG4gKlxuICogQHBhcmFtIHBpZWNlcyBUaGUgcGllY2VzIHRvIHByb2Nlc3MuXG4gKiBAcmV0dXJucyBhbiBvYmplY3QgY29udGFpbmluZyB0aGUgbWVzc2FnZVBhcnRzIGFuZCBwbGFjZWhvbGRlcnMuXG4gKi9cbmZ1bmN0aW9uIHByb2Nlc3NNZXNzYWdlUGllY2VzKHBpZWNlczogTWVzc2FnZVBpZWNlW10pOlxuICAgIHttZXNzYWdlUGFydHM6IHN0cmluZ1tdLCBwbGFjZUhvbGRlcnM6IHN0cmluZ1tdfSB7XG4gIGNvbnN0IG1lc3NhZ2VQYXJ0czogc3RyaW5nW10gPSBbXTtcbiAgY29uc3QgcGxhY2VIb2xkZXJzOiBzdHJpbmdbXSA9IFtdO1xuXG4gIGlmIChwaWVjZXNbMF0gaW5zdGFuY2VvZiBQbGFjZWhvbGRlclBpZWNlKSB7XG4gICAgLy8gVGhlIGZpcnN0IHBpZWNlIHdhcyBhIHBsYWNlaG9sZGVyIHNvIHdlIG5lZWQgdG8gYWRkIGFuIGluaXRpYWwgZW1wdHkgbWVzc2FnZSBwYXJ0LlxuICAgIG1lc3NhZ2VQYXJ0cy5wdXNoKCcnKTtcbiAgfVxuXG4gIGZvciAobGV0IGkgPSAwOyBpIDwgcGllY2VzLmxlbmd0aDsgaSsrKSB7XG4gICAgY29uc3QgcGFydCA9IHBpZWNlc1tpXTtcbiAgICBpZiAocGFydCBpbnN0YW5jZW9mIExpdGVyYWxQaWVjZSkge1xuICAgICAgbWVzc2FnZVBhcnRzLnB1c2gocGFydC50ZXh0KTtcbiAgICB9IGVsc2Uge1xuICAgICAgcGxhY2VIb2xkZXJzLnB1c2gocGFydC50ZXh0KTtcbiAgICAgIGlmIChwaWVjZXNbaSAtIDFdIGluc3RhbmNlb2YgUGxhY2Vob2xkZXJQaWVjZSkge1xuICAgICAgICAvLyBUaGVyZSB3ZXJlIHR3byBwbGFjZWhvbGRlcnMgaW4gYSByb3csIHNvIHdlIG5lZWQgdG8gYWRkIGFuIGVtcHR5IG1lc3NhZ2UgcGFydC5cbiAgICAgICAgbWVzc2FnZVBhcnRzLnB1c2goJycpO1xuICAgICAgfVxuICAgIH1cbiAgfVxuICBpZiAocGllY2VzW3BpZWNlcy5sZW5ndGggLSAxXSBpbnN0YW5jZW9mIFBsYWNlaG9sZGVyUGllY2UpIHtcbiAgICAvLyBUaGUgbGFzdCBwaWVjZSB3YXMgYSBwbGFjZWhvbGRlciBzbyB3ZSBuZWVkIHRvIGFkZCBhIGZpbmFsIGVtcHR5IG1lc3NhZ2UgcGFydC5cbiAgICBtZXNzYWdlUGFydHMucHVzaCgnJyk7XG4gIH1cbiAgcmV0dXJuIHttZXNzYWdlUGFydHMsIHBsYWNlSG9sZGVyc307XG59XG4iXX0=