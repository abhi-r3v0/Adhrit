import { __extends } from "tslib";
import * as o from '../../../output/output_ast';
import { serializeIcuNode } from './icu_serializer';
import { formatI18nPlaceholderName } from './util';
export function createLocalizeStatements(variable, message, params) {
    var statements = [];
    var _a = serializeI18nMessageForLocalize(message), messageParts = _a.messageParts, placeHolders = _a.placeHolders;
    statements.push(new o.ExpressionStatement(variable.set(o.localizedString(message, messageParts, placeHolders, placeHolders.map(function (ph) { return params[ph]; })))));
    return statements;
}
var MessagePiece = /** @class */ (function () {
    function MessagePiece(text) {
        this.text = text;
    }
    return MessagePiece;
}());
var LiteralPiece = /** @class */ (function (_super) {
    __extends(LiteralPiece, _super);
    function LiteralPiece() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    return LiteralPiece;
}(MessagePiece));
var PlaceholderPiece = /** @class */ (function (_super) {
    __extends(PlaceholderPiece, _super);
    function PlaceholderPiece(name) {
        return _super.call(this, formatI18nPlaceholderName(name, /* useCamelCase */ false)) || this;
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
        context.push(new LiteralPiece(serializeIcuNode(icu)));
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
export function serializeI18nMessageForLocalize(message) {
    var pieces = [];
    message.nodes.forEach(function (node) { return node.visit(serializerVisitor, pieces); });
    return processMessagePieces(pieces);
}
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibG9jYWxpemVfdXRpbHMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci9zcmMvcmVuZGVyMy92aWV3L2kxOG4vbG9jYWxpemVfdXRpbHMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQVFBLE9BQU8sS0FBSyxDQUFDLE1BQU0sNEJBQTRCLENBQUM7QUFFaEQsT0FBTyxFQUFDLGdCQUFnQixFQUFDLE1BQU0sa0JBQWtCLENBQUM7QUFDbEQsT0FBTyxFQUFDLHlCQUF5QixFQUFDLE1BQU0sUUFBUSxDQUFDO0FBRWpELE1BQU0sVUFBVSx3QkFBd0IsQ0FDcEMsUUFBdUIsRUFBRSxPQUFxQixFQUM5QyxNQUFzQztJQUN4QyxJQUFNLFVBQVUsR0FBRyxFQUFFLENBQUM7SUFFaEIsSUFBQSw2Q0FBdUUsRUFBdEUsOEJBQVksRUFBRSw4QkFBd0QsQ0FBQztJQUM5RSxVQUFVLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDLG1CQUFtQixDQUFDLFFBQVEsQ0FBQyxHQUFHLENBQ2xELENBQUMsQ0FBQyxlQUFlLENBQUMsT0FBTyxFQUFFLFlBQVksRUFBRSxZQUFZLEVBQUUsWUFBWSxDQUFDLEdBQUcsQ0FBQyxVQUFBLEVBQUUsSUFBSSxPQUFBLE1BQU0sQ0FBQyxFQUFFLENBQUMsRUFBVixDQUFVLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO0lBRWxHLE9BQU8sVUFBVSxDQUFDO0FBQ3BCLENBQUM7QUFFRDtJQUNFLHNCQUFtQixJQUFZO1FBQVosU0FBSSxHQUFKLElBQUksQ0FBUTtJQUFHLENBQUM7SUFDckMsbUJBQUM7QUFBRCxDQUFDLEFBRkQsSUFFQztBQUNEO0lBQTJCLGdDQUFZO0lBQXZDOztJQUF5QyxDQUFDO0lBQUQsbUJBQUM7QUFBRCxDQUFDLEFBQTFDLENBQTJCLFlBQVksR0FBRztBQUMxQztJQUErQixvQ0FBWTtJQUN6QywwQkFB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Q0FBQztJQUVsQyxJQUFJLE1BQU0sQ0FBQyxDQUFDLENBQUMsWUFBWSxnQkFBZ0IsRUFBRTtRQUN6QyxxRkFBcUY7UUFDckYsWUFBWSxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsQ0FBQztLQUN2QjtJQUVELEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxNQUFNLENBQUMsTUFBTSxFQUFFLENBQUMsRUFBRSxFQUFFO1FBQ3RDLElBQU0sSUFBSSxHQUFHLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUN2QixJQUFJLElBQUksWUFBWSxZQUFZLEVBQUU7WUFDaEMsWUFBWSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7U0FDOUI7YUFBTTtZQUNMLFlBQVksQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO1lBQzdCLElBQUksTUFBTSxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUMsWUFBWSxnQkFBZ0IsRUFBRTtnQkFDN0MsaUZBQWlGO2dCQUNqRixZQUFZLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxDQUFDO2FBQ3ZCO1NBQ0Y7S0FDRjtJQUNELElBQUksTUFBTSxDQUFDLE1BQU0sQ0FBQyxNQUFNLEdBQUcsQ0FBQyxDQUFDLFlBQVksZ0JBQWdCLEVBQUU7UUFDekQsaUZBQWlGO1FBQ2pGLFlBQVksQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLENBQUM7S0FDdkI7SUFDRCxPQUFPLEVBQUMsWUFBWSxjQUFBLEVBQUUsWUFBWSxjQUFBLEVBQUMsQ0FBQztBQUN0QyxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0ICogYXMgaTE4biBmcm9tICcuLi8uLi8uLi9pMThuL2kxOG5fYXN0JztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi4vLi4vLi4vb3V0cHV0L291dHB1dF9hc3QnO1xuXG5pbXBvcnQge3NlcmlhbGl6ZUljdU5vZGV9IGZyb20gJy4vaWN1X3NlcmlhbGl6ZXInO1xuaW1wb3J0IHtmb3JtYXRJMThuUGxhY2Vob2xkZXJOYW1lfSBmcm9tICcuL3V0aWwnO1xuXG5leHBvcnQgZnVuY3Rpb24gY3JlYXRlTG9jYWxpemVTdGF0ZW1lbnRzKFxuICAgIHZhcmlhYmxlOiBvLlJlYWRWYXJFeHByLCBtZXNzYWdlOiBpMThuLk1lc3NhZ2UsXG4gICAgcGFyYW1zOiB7W25hbWU6IHN0cmluZ106IG8uRXhwcmVzc2lvbn0pOiBvLlN0YXRlbWVudFtdIHtcbiAgY29uc3Qgc3RhdGVtZW50cyA9IFtdO1xuXG4gIGNvbnN0IHttZXNzYWdlUGFydHMsIHBsYWNlSG9sZGVyc30gPSBzZXJpYWxpemVJMThuTWVzc2FnZUZvckxvY2FsaXplKG1lc3NhZ2UpO1xuICBzdGF0ZW1lbnRzLnB1c2gobmV3IG8uRXhwcmVzc2lvblN0YXRlbWVudCh2YXJpYWJsZS5zZXQoXG4gICAgICBvLmxvY2FsaXplZFN0cmluZyhtZXNzYWdlLCBtZXNzYWdlUGFydHMsIHBsYWNlSG9sZGVycywgcGxhY2VIb2xkZXJzLm1hcChwaCA9PiBwYXJhbXNbcGhdKSkpKSk7XG5cbiAgcmV0dXJuIHN0YXRlbWVudHM7XG59XG5cbmNsYXNzIE1lc3NhZ2VQaWVjZSB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyB0ZXh0OiBzdHJpbmcpIHt9XG59XG5jbGFzcyBMaXRlcmFsUGllY2UgZXh0ZW5kcyBNZXNzYWdlUGllY2Uge31cbmNsYXNzIFBsYWNlaG9sZGVyUGllY2UgZXh0ZW5kcyBNZXNzYWdlUGllY2Uge1xuICBjb25zdHJ1Y3RvcihuYW1lOiBzdHJpbmcpIHsgc3VwZXIoZm9ybWF0STE4blBsYWNlaG9sZGVyTmFtZShuYW1lLCAvKiB1c2VDYW1lbENhc2UgKi8gZmFsc2UpKTsgfVxufVxuXG4vKipcbiAqIFRoaXMgdmlzaXRvciB3YWxrcyBvdmVyIGFuIGkxOG4gdHJlZSwgY2FwdHVyaW5nIGxpdGVyYWwgc3RyaW5ncyBhbmQgcGxhY2Vob2xkZXJzLlxuICpcbiAqIFRoZSByZXN1bHQgY2FuIGJlIHVzZWQgZm9yIGdlbmVyYXRpbmcgdGhlIGAkbG9jYWxpemVgIHRhZ2dlZCB0ZW1wbGF0ZSBsaXRlcmFscy5cbiAqL1xuY2xhc3MgTG9jYWxpemVTZXJpYWxpemVyVmlzaXRvciBpbXBsZW1lbnRzIGkxOG4uVmlzaXRvciB7XG4gIHZpc2l0VGV4dCh0ZXh0OiBpMThuLlRleHQsIGNvbnRleHQ6IE1lc3NhZ2VQaWVjZVtdKTogYW55IHtcbiAgICBpZiAoY29udGV4dFtjb250ZXh0Lmxlbmd0aCAtIDFdIGluc3RhbmNlb2YgTGl0ZXJhbFBpZWNlKSB7XG4gICAgICAvLyBUd28gbGl0ZXJhbCBwaWVjZXMgaW4gYSByb3cgbWVhbnMgdGhhdCB0aGVyZSB3YXMgc29tZSBjb21tZW50IG5vZGUgaW4tYmV0d2Vlbi5cbiAgICAgIGNvbnRleHRbY29udGV4dC5sZW5ndGggLSAxXS50ZXh0ICs9IHRleHQudmFsdWU7XG4gICAgfSBlbHNlIHtcbiAgICAgIGNvbnRleHQucHVzaChuZXcgTGl0ZXJhbFBpZWNlKHRleHQudmFsdWUpKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdENvbnRhaW5lcihjb250YWluZXI6IGkxOG4uQ29udGFpbmVyLCBjb250ZXh0OiBNZXNzYWdlUGllY2VbXSk6IGFueSB7XG4gICAgY29udGFpbmVyLmNoaWxkcmVuLmZvckVhY2goY2hpbGQgPT4gY2hpbGQudmlzaXQodGhpcywgY29udGV4dCkpO1xuICB9XG5cbiAgdmlzaXRJY3UoaWN1OiBpMThuLkljdSwgY29udGV4dDogTWVzc2FnZVBpZWNlW10pOiBhbnkge1xuICAgIGNvbnRleHQucHVzaChuZXcgTGl0ZXJhbFBpZWNlKHNlcmlhbGl6ZUljdU5vZGUoaWN1KSkpO1xuICB9XG5cbiAgdmlzaXRUYWdQbGFjZWhvbGRlcihwaDogaTE4bi5UYWdQbGFjZWhvbGRlciwgY29udGV4dDogTWVzc2FnZVBpZWNlW10pOiBhbnkge1xuICAgIGNvbnRleHQucHVzaChuZXcgUGxhY2Vob2xkZXJQaWVjZShwaC5zdGFydE5hbWUpKTtcbiAgICBpZiAoIXBoLmlzVm9pZCkge1xuICAgICAgcGguY2hpbGRyZW4uZm9yRWFjaChjaGlsZCA9PiBjaGlsZC52aXNpdCh0aGlzLCBjb250ZXh0KSk7XG4gICAgICBjb250ZXh0LnB1c2gobmV3IFBsYWNlaG9sZGVyUGllY2UocGguY2xvc2VOYW1lKSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRQbGFjZWhvbGRlcihwaDogaTE4bi5QbGFjZWhvbGRlciwgY29udGV4dDogTWVzc2FnZVBpZWNlW10pOiBhbnkge1xuICAgIGNvbnRleHQucHVzaChuZXcgUGxhY2Vob2xkZXJQaWVjZShwaC5uYW1lKSk7XG4gIH1cblxuICB2aXNpdEljdVBsYWNlaG9sZGVyKHBoOiBpMThuLkljdVBsYWNlaG9sZGVyLCBjb250ZXh0PzogYW55KTogYW55IHtcbiAgICBjb250ZXh0LnB1c2gobmV3IFBsYWNlaG9sZGVyUGllY2UocGgubmFtZSkpO1xuICB9XG59XG5cbmNvbnN0IHNlcmlhbGl6ZXJWaXNpdG9yID0gbmV3IExvY2FsaXplU2VyaWFsaXplclZpc2l0b3IoKTtcblxuLyoqXG4gKiBTZXJpYWxpemUgYW4gaTE4biBtZXNzYWdlIGludG8gdHdvIGFycmF5czogbWVzc2FnZVBhcnRzIGFuZCBwbGFjZWhvbGRlcnMuXG4gKlxuICogVGhlc2UgYXJyYXlzIHdpbGwgYmUgdXNlZCB0byBnZW5lcmF0ZSBgJGxvY2FsaXplYCB0YWdnZWQgdGVtcGxhdGUgbGl0ZXJhbHMuXG4gKlxuICogQHBhcmFtIG1lc3NhZ2UgVGhlIG1lc3NhZ2UgdG8gYmUgc2VyaWFsaXplZC5cbiAqIEByZXR1cm5zIGFuIG9iamVjdCBjb250YWluaW5nIHRoZSBtZXNzYWdlUGFydHMgYW5kIHBsYWNlaG9sZGVycy5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHNlcmlhbGl6ZUkxOG5NZXNzYWdlRm9yTG9jYWxpemUobWVzc2FnZTogaTE4bi5NZXNzYWdlKTpcbiAgICB7bWVzc2FnZVBhcnRzOiBzdHJpbmdbXSwgcGxhY2VIb2xkZXJzOiBzdHJpbmdbXX0ge1xuICBjb25zdCBwaWVjZXM6IE1lc3NhZ2VQaWVjZVtdID0gW107XG4gIG1lc3NhZ2Uubm9kZXMuZm9yRWFjaChub2RlID0+IG5vZGUudmlzaXQoc2VyaWFsaXplclZpc2l0b3IsIHBpZWNlcykpO1xuICByZXR1cm4gcHJvY2Vzc01lc3NhZ2VQaWVjZXMocGllY2VzKTtcbn1cblxuLyoqXG4gKiBDb252ZXJ0IHRoZSBsaXN0IG9mIHNlcmlhbGl6ZWQgTWVzc2FnZVBpZWNlcyBpbnRvIHR3byBhcnJheXMuXG4gKlxuICogT25lIGNvbnRhaW5zIHRoZSBsaXRlcmFsIHN0cmluZyBwaWVjZXMgYW5kIHRoZSBvdGhlciB0aGUgcGxhY2Vob2xkZXJzIHRoYXQgd2lsbCBiZSByZXBsYWNlZCBieVxuICogZXhwcmVzc2lvbnMgd2hlbiByZW5kZXJpbmcgYCRsb2NhbGl6ZWAgdGFnZ2VkIHRlbXBsYXRlIGxpdGVyYWxzLlxuICpcbiAqIEBwYXJhbSBwaWVjZXMgVGhlIHBpZWNlcyB0byBwcm9jZXNzLlxuICogQHJldHVybnMgYW4gb2JqZWN0IGNvbnRhaW5pbmcgdGhlIG1lc3NhZ2VQYXJ0cyBhbmQgcGxhY2Vob2xkZXJzLlxuICovXG5mdW5jdGlvbiBwcm9jZXNzTWVzc2FnZVBpZWNlcyhwaWVjZXM6IE1lc3NhZ2VQaWVjZVtdKTpcbiAgICB7bWVzc2FnZVBhcnRzOiBzdHJpbmdbXSwgcGxhY2VIb2xkZXJzOiBzdHJpbmdbXX0ge1xuICBjb25zdCBtZXNzYWdlUGFydHM6IHN0cmluZ1tdID0gW107XG4gIGNvbnN0IHBsYWNlSG9sZGVyczogc3RyaW5nW10gPSBbXTtcblxuICBpZiAocGllY2VzWzBdIGluc3RhbmNlb2YgUGxhY2Vob2xkZXJQaWVjZSkge1xuICAgIC8vIFRoZSBmaXJzdCBwaWVjZSB3YXMgYSBwbGFjZWhvbGRlciBzbyB3ZSBuZWVkIHRvIGFkZCBhbiBpbml0aWFsIGVtcHR5IG1lc3NhZ2UgcGFydC5cbiAgICBtZXNzYWdlUGFydHMucHVzaCgnJyk7XG4gIH1cblxuICBmb3IgKGxldCBpID0gMDsgaSA8IHBpZWNlcy5sZW5ndGg7IGkrKykge1xuICAgIGNvbnN0IHBhcnQgPSBwaWVjZXNbaV07XG4gICAgaWYgKHBhcnQgaW5zdGFuY2VvZiBMaXRlcmFsUGllY2UpIHtcbiAgICAgIG1lc3NhZ2VQYXJ0cy5wdXNoKHBhcnQudGV4dCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHBsYWNlSG9sZGVycy5wdXNoKHBhcnQudGV4dCk7XG4gICAgICBpZiAocGllY2VzW2kgLSAxXSBpbnN0YW5jZW9mIFBsYWNlaG9sZGVyUGllY2UpIHtcbiAgICAgICAgLy8gVGhlcmUgd2VyZSB0d28gcGxhY2Vob2xkZXJzIGluIGEgcm93LCBzbyB3ZSBuZWVkIHRvIGFkZCBhbiBlbXB0eSBtZXNzYWdlIHBhcnQuXG4gICAgICAgIG1lc3NhZ2VQYXJ0cy5wdXNoKCcnKTtcbiAgICAgIH1cbiAgICB9XG4gIH1cbiAgaWYgKHBpZWNlc1twaWVjZXMubGVuZ3RoIC0gMV0gaW5zdGFuY2VvZiBQbGFjZWhvbGRlclBpZWNlKSB7XG4gICAgLy8gVGhlIGxhc3QgcGllY2Ugd2FzIGEgcGxhY2Vob2xkZXIgc28gd2UgbmVlZCB0byBhZGQgYSBmaW5hbCBlbXB0eSBtZXNzYWdlIHBhcnQuXG4gICAgbWVzc2FnZVBhcnRzLnB1c2goJycpO1xuICB9XG4gIHJldHVybiB7bWVzc2FnZVBhcnRzLCBwbGFjZUhvbGRlcnN9O1xufVxuIl19