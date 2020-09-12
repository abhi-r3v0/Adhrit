(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/src/ngtsc/typecheck/src/diagnostics", ["require", "exports", "tslib", "@angular/compiler", "typescript", "@angular/compiler-cli/src/ngtsc/util/src/typescript"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.isTemplateDiagnostic = exports.makeTemplateDiagnostic = exports.findTypeCheckBlock = exports.translateDiagnostic = exports.shouldReportDiagnostic = exports.addTemplateId = exports.addParseSpanInfo = exports.ignoreDiagnostics = exports.wrapForDiagnostics = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var compiler_1 = require("@angular/compiler");
    var ts = require("typescript");
    var typescript_1 = require("@angular/compiler-cli/src/ngtsc/util/src/typescript");
    /**
     * Wraps the node in parenthesis such that inserted span comments become attached to the proper
     * node. This is an alias for `ts.createParen` with the benefit that it signifies that the
     * inserted parenthesis are for diagnostic purposes, not for correctness of the rendered TCB code.
     *
     * Note that it is important that nodes and its attached comment are not wrapped into parenthesis
     * by default, as it prevents correct translation of e.g. diagnostics produced for incorrect method
     * arguments. Such diagnostics would then be produced for the parenthesised node whereas the
     * positional comment would be located within that node, resulting in a mismatch.
     */
    function wrapForDiagnostics(expr) {
        return ts.createParen(expr);
    }
    exports.wrapForDiagnostics = wrapForDiagnostics;
    var IGNORE_MARKER = 'ignore';
    /**
     * Adds a marker to the node that signifies that any errors within the node should not be reported.
     */
    function ignoreDiagnostics(node) {
        ts.addSyntheticTrailingComment(node, ts.SyntaxKind.MultiLineCommentTrivia, IGNORE_MARKER, /* hasTrailingNewLine */ false);
    }
    exports.ignoreDiagnostics = ignoreDiagnostics;
    /**
     * Adds a synthetic comment to the expression that represents the parse span of the provided node.
     * This comment can later be retrieved as trivia of a node to recover original source locations.
     */
    function addParseSpanInfo(node, span) {
        var commentText;
        if (span instanceof compiler_1.AbsoluteSourceSpan) {
            commentText = span.start + "," + span.end;
        }
        else {
            commentText = span.start.offset + "," + span.end.offset;
        }
        ts.addSyntheticTrailingComment(node, ts.SyntaxKind.MultiLineCommentTrivia, commentText, /* hasTrailingNewLine */ false);
    }
    exports.addParseSpanInfo = addParseSpanInfo;
    /**
     * Adds a synthetic comment to the function declaration that contains the template id
     * of the class declaration.
     */
    function addTemplateId(tcb, id) {
        ts.addSyntheticLeadingComment(tcb, ts.SyntaxKind.MultiLineCommentTrivia, id, true);
    }
    exports.addTemplateId = addTemplateId;
    /**
     * Determines if the diagnostic should be reported. Some diagnostics are produced because of the
     * way TCBs are generated; those diagnostics should not be reported as type check errors of the
     * template.
     */
    function shouldReportDiagnostic(diagnostic) {
        var code = diagnostic.code;
        if (code === 6133 /* $var is declared but its value is never read. */) {
            return false;
        }
        else if (code === 6199 /* All variables are unused. */) {
            return false;
        }
        else if (code === 2695 /* Left side of comma operator is unused and has no side effects. */) {
            return false;
        }
        else if (code === 7006 /* Parameter '$event' implicitly has an 'any' type. */) {
            return false;
        }
        return true;
    }
    exports.shouldReportDiagnostic = shouldReportDiagnostic;
    /**
     * Attempts to translate a TypeScript diagnostic produced during template type-checking to their
     * location of origin, based on the comments that are emitted in the TCB code.
     *
     * If the diagnostic could not be translated, `null` is returned to indicate that the diagnostic
     * should not be reported at all. This prevents diagnostics from non-TCB code in a user's source
     * file from being reported as type-check errors.
     */
    function translateDiagnostic(diagnostic, resolver) {
        if (diagnostic.file === undefined || diagnostic.start === undefined) {
            return null;
        }
        // Locate the node that the diagnostic is reported on and determine its location in the source.
        var node = typescript_1.getTokenAtPosition(diagnostic.file, diagnostic.start);
        var sourceLocation = findSourceLocation(node, diagnostic.file);
        if (sourceLocation === null) {
            return null;
        }
        // Now use the external resolver to obtain the full `ParseSourceFile` of the template.
        var span = resolver.toParseSourceSpan(sourceLocation.id, sourceLocation.span);
        if (span === null) {
            return null;
        }
        var mapping = resolver.getSourceMapping(sourceLocation.id);
        return makeTemplateDiagnostic(sourceLocation.id, mapping, span, diagnostic.category, diagnostic.code, diagnostic.messageText);
    }
    exports.translateDiagnostic = translateDiagnostic;
    function findTypeCheckBlock(file, id) {
        var e_1, _a;
        try {
            for (var _b = tslib_1.__values(file.statements), _c = _b.next(); !_c.done; _c = _b.next()) {
                var stmt = _c.value;
                if (ts.isFunctionDeclaration(stmt) && getTemplateId(stmt, file) === id) {
                    return stmt;
                }
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_1) throw e_1.error; }
        }
        return null;
    }
    exports.findTypeCheckBlock = findTypeCheckBlock;
    /**
     * Constructs a `ts.Diagnostic` for a given `ParseSourceSpan` within a template.
     */
    function makeTemplateDiagnostic(templateId, mapping, span, category, code, messageText, relatedMessage) {
        if (mapping.type === 'direct') {
            var relatedInformation = undefined;
            if (relatedMessage !== undefined) {
                relatedInformation = [{
                        category: ts.DiagnosticCategory.Message,
                        code: 0,
                        file: mapping.node.getSourceFile(),
                        start: relatedMessage.span.start.offset,
                        length: relatedMessage.span.end.offset - relatedMessage.span.start.offset,
                        messageText: relatedMessage.text,
                    }];
            }
            // For direct mappings, the error is shown inline as ngtsc was able to pinpoint a string
            // constant within the `@Component` decorator for the template. This allows us to map the error
            // directly into the bytes of the source file.
            return {
                source: 'ngtsc',
                code: code,
                category: category,
                messageText: messageText,
                file: mapping.node.getSourceFile(),
                componentFile: mapping.node.getSourceFile(),
                templateId: templateId,
                start: span.start.offset,
                length: span.end.offset - span.start.offset,
                relatedInformation: relatedInformation,
            };
        }
        else if (mapping.type === 'indirect' || mapping.type === 'external') {
            // For indirect mappings (template was declared inline, but ngtsc couldn't map it directly
            // to a string constant in the decorator), the component's file name is given with a suffix
            // indicating it's not the TS file being displayed, but a template.
            // For external temoplates, the HTML filename is used.
            var componentSf = mapping.componentClass.getSourceFile();
            var componentName = mapping.componentClass.name.text;
            // TODO(alxhub): remove cast when TS in g3 supports this narrowing.
            var fileName = mapping.type === 'indirect' ?
                componentSf.fileName + " (" + componentName + " template)" :
                mapping.templateUrl;
            // TODO(alxhub): investigate creating a fake `ts.SourceFile` here instead of invoking the TS
            // parser against the template (HTML is just really syntactically invalid TypeScript code ;).
            // Also investigate caching the file to avoid running the parser multiple times.
            var sf = ts.createSourceFile(fileName, mapping.template, ts.ScriptTarget.Latest, false, ts.ScriptKind.JSX);
            var relatedInformation = [];
            if (relatedMessage !== undefined) {
                relatedInformation.push({
                    category: ts.DiagnosticCategory.Message,
                    code: 0,
                    file: sf,
                    start: relatedMessage.span.start.offset,
                    length: relatedMessage.span.end.offset - relatedMessage.span.start.offset,
                    messageText: relatedMessage.text,
                });
            }
            relatedInformation.push({
                category: ts.DiagnosticCategory.Message,
                code: 0,
                file: componentSf,
                // mapping.node represents either the 'template' or 'templateUrl' expression. getStart()
                // and getEnd() are used because they don't include surrounding whitespace.
                start: mapping.node.getStart(),
                length: mapping.node.getEnd() - mapping.node.getStart(),
                messageText: "Error occurs in the template of component " + componentName + ".",
            });
            return {
                source: 'ngtsc',
                category: category,
                code: code,
                messageText: messageText,
                file: sf,
                componentFile: componentSf,
                templateId: templateId,
                start: span.start.offset,
                length: span.end.offset - span.start.offset,
                // Show a secondary message indicating the component whose template contains the error.
                relatedInformation: relatedInformation,
            };
        }
        else {
            throw new Error("Unexpected source mapping type: " + mapping.type);
        }
    }
    exports.makeTemplateDiagnostic = makeTemplateDiagnostic;
    /**
     * Traverses up the AST starting from the given node to extract the source location from comments
     * that have been emitted into the TCB. If the node does not exist within a TCB, or if an ignore
     * marker comment is found up the tree, this function returns null.
     */
    function findSourceLocation(node, sourceFile) {
        // Search for comments until the TCB's function declaration is encountered.
        while (node !== undefined && !ts.isFunctionDeclaration(node)) {
            if (hasIgnoreMarker(node, sourceFile)) {
                // There's an ignore marker on this node, so the diagnostic should not be reported.
                return null;
            }
            var span = readSpanComment(sourceFile, node);
            if (span !== null) {
                // Once the positional information has been extracted, search further up the TCB to extract
                // the unique id that is attached with the TCB's function declaration.
                var id = getTemplateId(node, sourceFile);
                if (id === null) {
                    return null;
                }
                return { id: id, span: span };
            }
            node = node.parent;
        }
        return null;
    }
    function getTemplateId(node, sourceFile) {
        // Walk up to the function declaration of the TCB, the file information is attached there.
        while (!ts.isFunctionDeclaration(node)) {
            if (hasIgnoreMarker(node, sourceFile)) {
                // There's an ignore marker on this node, so the diagnostic should not be reported.
                return null;
            }
            node = node.parent;
            // Bail once we have reached the root.
            if (node === undefined) {
                return null;
            }
        }
        var start = node.getFullStart();
        return ts.forEachLeadingCommentRange(sourceFile.text, start, function (pos, end, kind) {
            if (kind !== ts.SyntaxKind.MultiLineCommentTrivia) {
                return null;
            }
            var commentText = sourceFile.text.substring(pos + 2, end - 2);
            return commentText;
        }) || null;
    }
    var parseSpanComment = /^(\d+),(\d+)$/;
    function readSpanComment(sourceFile, node) {
        return ts.forEachTrailingCommentRange(sourceFile.text, node.getEnd(), function (pos, end, kind) {
            if (kind !== ts.SyntaxKind.MultiLineCommentTrivia) {
                return null;
            }
            var commentText = sourceFile.text.substring(pos + 2, end - 2);
            var match = commentText.match(parseSpanComment);
            if (match === null) {
                return null;
            }
            return new compiler_1.AbsoluteSourceSpan(+match[1], +match[2]);
        }) || null;
    }
    function hasIgnoreMarker(node, sourceFile) {
        return ts.forEachTrailingCommentRange(sourceFile.text, node.getEnd(), function (pos, end, kind) {
            if (kind !== ts.SyntaxKind.MultiLineCommentTrivia) {
                return null;
            }
            var commentText = sourceFile.text.substring(pos + 2, end - 2);
            return commentText === IGNORE_MARKER;
        }) === true;
    }
    function isTemplateDiagnostic(diagnostic) {
        return diagnostic.hasOwnProperty('componentFile') &&
            ts.isSourceFile(diagnostic.componentFile);
    }
    exports.isTemplateDiagnostic = isTemplateDiagnostic;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGlhZ25vc3RpY3MuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3R5cGVjaGVjay9zcmMvZGlhZ25vc3RpY3MudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztJQUFBOzs7Ozs7T0FNRztJQUNILDhDQUFzRTtJQUN0RSwrQkFBaUM7SUFFakMsa0ZBQTZEO0lBeUM3RDs7Ozs7Ozs7O09BU0c7SUFDSCxTQUFnQixrQkFBa0IsQ0FBQyxJQUFtQjtRQUNwRCxPQUFPLEVBQUUsQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDOUIsQ0FBQztJQUZELGdEQUVDO0lBRUQsSUFBTSxhQUFhLEdBQUcsUUFBUSxDQUFDO0lBRS9COztPQUVHO0lBQ0gsU0FBZ0IsaUJBQWlCLENBQUMsSUFBYTtRQUM3QyxFQUFFLENBQUMsMkJBQTJCLENBQzFCLElBQUksRUFBRSxFQUFFLENBQUMsVUFBVSxDQUFDLHNCQUFzQixFQUFFLGFBQWEsRUFBRSx3QkFBd0IsQ0FBQyxLQUFLLENBQUMsQ0FBQztJQUNqRyxDQUFDO0lBSEQsOENBR0M7SUFFRDs7O09BR0c7SUFDSCxTQUFnQixnQkFBZ0IsQ0FBQyxJQUFhLEVBQUUsSUFBd0M7UUFDdEYsSUFBSSxXQUFtQixDQUFDO1FBQ3hCLElBQUksSUFBSSxZQUFZLDZCQUFrQixFQUFFO1lBQ3RDLFdBQVcsR0FBTSxJQUFJLENBQUMsS0FBSyxTQUFJLElBQUksQ0FBQyxHQUFLLENBQUM7U0FDM0M7YUFBTTtZQUNMLFdBQVcsR0FBTSxJQUFJLENBQUMsS0FBSyxDQUFDLE1BQU0sU0FBSSxJQUFJLENBQUMsR0FBRyxDQUFDLE1BQVEsQ0FBQztTQUN6RDtRQUNELEVBQUUsQ0FBQywyQkFBMkIsQ0FDMUIsSUFBSSxFQUFFLEVBQUUsQ0FBQyxVQUFVLENBQUMsc0JBQXNCLEVBQUUsV0FBVyxFQUFFLHdCQUF3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LElBQUksQ0FBQzthQUNiO1lBQ0QsSUFBTSxXQUFXLEdBQUcsVUFBVSxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsR0FBRyxHQUFHLENBQUMsRUFBRSxHQUFHLEdBQUcsQ0FBQyxDQUFDLENBQUM7WUFDaEUsT0FBTyxXQUFXLEtBQUssYUFBYSxDQUFDO1FBQ3ZDLENBQUMsQ0FBQyxLQUFLLElBQUksQ0FBQztJQUNkLENBQUM7SUFFRCxTQUFnQixvQkFBb0IsQ0FBQyxVQUF5QjtRQUM1RCxPQUFPLFVBQVUsQ0FBQyxjQUFjLENBQUMsZUFBZSxDQUFDO1lBQzdDLEVBQUUsQ0FBQyxZQUFZLENBQUUsVUFBa0IsQ0FBQyxhQUFhLENBQUMsQ0FBQztJQUN6RCxDQUFDO0lBSEQsb0RBR0MiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCB7QWJzb2x1dGVTb3VyY2VTcGFuLCBQYXJzZVNvdXJjZVNwYW59IGZyb20gJ0Bhbmd1bGFyL2NvbXBpbGVyJztcbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge2dldFRva2VuQXRQb3NpdGlvbn0gZnJvbSAnLi4vLi4vdXRpbC9zcmMvdHlwZXNjcmlwdCc7XG5pbXBvcnQge0V4dGVybmFsVGVtcGxhdGVTb3VyY2VNYXBwaW5nLCBUZW1wbGF0ZUlkLCBUZW1wbGF0ZVNvdXJjZU1hcHBpbmd9IGZyb20gJy4uL2FwaSc7XG5cblxuLyoqXG4gKiBBIGB0cy5EaWFnbm9zdGljYCB3aXRoIGFkZGl0aW9uYWwgaW5mb3JtYXRpb24gYWJvdXQgdGhlIGRpYWdub3N0aWMgcmVsYXRlZCB0byB0ZW1wbGF0ZVxuICogdHlwZS1jaGVja2luZy5cbiAqL1xuZXhwb3J0IGludGVyZmFjZSBUZW1wbGF0ZURpYWdub3N0aWMgZXh0ZW5kcyB0cy5EaWFnbm9zdGljIHtcbiAgLyoqXG4gICAqIFRoZSBjb21wb25lbnQgd2l0aCB0aGUgdGVtcGxhdGUgdGhhdCByZXN1bHRlZCBpbiB0aGlzIGRpYWdub3N0aWMuXG4gICAqL1xuICBjb21wb25lbnRGaWxlOiB0cy5Tb3VyY2VGaWxlO1xuXG4gIC8qKlxuICAgKiBUaGUgdGVtcGxhdGUgaWQgb2YgdGhlIGNvbXBvbmVudCB0aGF0IHJlc3VsdGVkIGluIHRoaXMgZGlhZ25vc3RpYy5cbiAgICovXG4gIHRlbXBsYXRlSWQ6IFRlbXBsYXRlSWQ7XG59XG5cbi8qKlxuICogQWRhcHRlciBpbnRlcmZhY2Ugd2hpY2ggYWxsb3dzIHRoZSB0ZW1wbGF0ZSB0eXBlLWNoZWNraW5nIGRpYWdub3N0aWNzIGNvZGUgdG8gaW50ZXJwcmV0IG9mZnNldHNcbiAqIGluIGEgVENCIGFuZCBtYXAgdGhlbSBiYWNrIHRvIG9yaWdpbmFsIGxvY2F0aW9ucyBpbiB0aGUgdGVtcGxhdGUuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgVGVtcGxhdGVTb3VyY2VSZXNvbHZlciB7XG4gIGdldFRlbXBsYXRlSWQobm9kZTogdHMuQ2xhc3NEZWNsYXJhdGlvbik6IFRlbXBsYXRlSWQ7XG5cbiAgLyoqXG4gICAqIEZvciB0aGUgZ2l2ZW4gdGVtcGxhdGUgaWQsIHJldHJpZXZlIHRoZSBvcmlnaW5hbCBzb3VyY2UgbWFwcGluZyB3aGljaCBkZXNjcmliZXMgaG93IHRoZSBvZmZzZXRzXG4gICAqIGluIHRoZSB0ZW1wbGF0ZSBzaG91bGQgYmUgaW50ZXJwcmV0ZWQuXG4gICAqL1xuICBnZXRTb3VyY2VNYXBwaW5nKGlkOiBUZW1wbGF0ZUlkKTogVGVtcGxhdGVTb3VyY2VNYXBwaW5nO1xuXG4gIC8qKlxuICAgKiBDb252ZXJ0IGFuIGFic29sdXRlIHNvdXJjZSBzcGFuIGFzc29jaWF0ZWQgd2l0aCB0aGUgZ2l2ZW4gdGVtcGxhdGUgaWQgaW50byBhIGZ1bGxcbiAgICogYFBhcnNlU291cmNlU3BhbmAuIFRoZSByZXR1cm5lZCBwYXJzZSBzcGFuIGhhcyBsaW5lIGFuZCBjb2x1bW4gbnVtYmVycyBpbiBhZGRpdGlvbiB0byBvbmx5XG4gICAqIGFic29sdXRlIG9mZnNldHMgYW5kIGdpdmVzIGFjY2VzcyB0byB0aGUgb3JpZ2luYWwgdGVtcGxhdGUgc291cmNlLlxuICAgKi9cbiAgdG9QYXJzZVNvdXJjZVNwYW4oaWQ6IFRlbXBsYXRlSWQsIHNwYW46IEFic29sdXRlU291cmNlU3Bhbik6IFBhcnNlU291cmNlU3BhbnxudWxsO1xufVxuXG4vKipcbiAqIFdyYXBzIHRoZSBub2RlIGluIHBhcmVudGhlc2lzIHN1Y2ggdGhhdCBpbnNlcnRlZCBzcGFuIGNvbW1lbnRzIGJlY29tZSBhdHRhY2hlZCB0byB0aGUgcHJvcGVyXG4gKiBub2RlLiBUaGlzIGlzIGFuIGFsaWFzIGZvciBgdHMuY3JlYXRlUGFyZW5gIHdpdGggdGhlIGJlbmVmaXQgdGhhdCBpdCBzaWduaWZpZXMgdGhhdCB0aGVcbiAqIGluc2VydGVkIHBhcmVudGhlc2lzIGFyZSBmb3IgZGlhZ25vc3RpYyBwdXJwb3Nlcywgbm90IGZvciBjb3JyZWN0bmVzcyBvZiB0aGUgcmVuZGVyZWQgVENCIGNvZGUuXG4gKlxuICogTm90ZSB0aGF0IGl0IGlzIGltcG9ydGFudCB0aGF0IG5vZGVzIGFuZCBpdHMgYXR0YWNoZWQgY29tbWVudCBhcmUgbm90IHdyYXBwZWQgaW50byBwYXJlbnRoZXNpc1xuICogYnkgZGVmYXVsdCwgYXMgaXQgcHJldmVudHMgY29ycmVjdCB0cmFuc2xhdGlvbiBvZiBlLmcuIGRpYWdub3N0aWNzIHByb2R1Y2VkIGZvciBpbmNvcnJlY3QgbWV0aG9kXG4gKiBhcmd1bWVudHMuIFN1Y2ggZGlhZ25vc3RpY3Mgd291bGQgdGhlbiBiZSBwcm9kdWNlZCBmb3IgdGhlIHBhcmVudGhlc2lzZWQgbm9kZSB3aGVyZWFzIHRoZVxuICogcG9zaXRpb25hbCBjb21tZW50IHdvdWxkIGJlIGxvY2F0ZWQgd2l0aGluIHRoYXQgbm9kZSwgcmVzdWx0aW5nIGluIGEgbWlzbWF0Y2guXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiB3cmFwRm9yRGlhZ25vc3RpY3MoZXhwcjogdHMuRXhwcmVzc2lvbik6IHRzLkV4cHJlc3Npb24ge1xuICByZXR1cm4gdHMuY3JlYXRlUGFyZW4oZXhwcik7XG59XG5cbmNvbnN0IElHTk9SRV9NQVJLRVIgPSAnaWdub3JlJztcblxuLyoqXG4gKiBBZGRzIGEgbWFya2VyIHRvIHRoZSBub2RlIHRoYXQgc2lnbmlmaWVzIHRoYXQgYW55IGVycm9ycyB3aXRoaW4gdGhlIG5vZGUgc2hvdWxkIG5vdCBiZSByZXBvcnRlZC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGlnbm9yZURpYWdub3N0aWNzKG5vZGU6IHRzLk5vZGUpOiB2b2lkIHtcbiAgdHMuYWRkU3ludGhldGljVHJhaWxpbmdDb21tZW50KFxuICAgICAgbm9kZSwgdHMuU3ludGF4S2luZC5NdWx0aUxpbmVDb21tZW50VHJpdmlhLCBJR05PUkVfTUFSS0VSLCAvKiBoYXNUcmFpbGluZ05ld0xpbmUgKi8gZmFsc2UpO1xufVxuXG4vKipcbiAqIEFkZHMgYSBzeW50aGV0aWMgY29tbWVudCB0byB0aGUgZXhwcmVzc2lvbiB0aGF0IHJlcHJlc2VudHMgdGhlIHBhcnNlIHNwYW4gb2YgdGhlIHByb3ZpZGVkIG5vZGUuXG4gKiBUaGlzIGNvbW1lbnQgY2FuIGxhdGVyIGJlIHJldHJpZXZlZCBhcyB0cml2aWEgb2YgYSBub2RlIHRvIHJlY292ZXIgb3JpZ2luYWwgc291cmNlIGxvY2F0aW9ucy5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGFkZFBhcnNlU3BhbkluZm8obm9kZTogdHMuTm9kZSwgc3BhbjogQWJzb2x1dGVTb3VyY2VTcGFufFBhcnNlU291cmNlU3Bhbik6IHZvaWQge1xuICBsZXQgY29tbWVudFRleHQ6IHN0cmluZztcbiAgaWYgKHNwYW4gaW5zdGFuY2VvZiBBYnNvbHV0ZVNvdXJjZVNwYW4pIHtcbiAgICBjb21tZW50VGV4dCA9IGAke3NwYW4uc3RhcnR9LCR7c3Bhbi5lbmR9YDtcbiAgfSBlbHNlIHtcbiAgICBjb21tZW50VGV4dCA9IGAke3NwYW4uc3RhcnQub2Zmc2V0fSwke3NwYW4uZW5kLm9mZnNldH1gO1xuICB9XG4gIHRzLmFkZFN5bnRoZXRpY1RyYWlsaW5nQ29tbWVudChcbiAgICAgIG5vZGUsIHRzLlN5bnRheEtpbmQuTXVsdGlMaW5lQ29tbWVudFRyaXZpYSwgY29tbWVudFRleHQsIC8qIGhhc1RyYWlsaW5nTmV3TGluZSAqLyBmYWxzZSk7XG59XG5cbi8qKlxuICogQWRkcyBhIHN5bnRoZXRpYyBjb21tZW50IHRvIHRoZSBmdW5jdGlvbiBkZWNsYXJhdGlvbiB0aGF0IGNvbnRhaW5zIHRoZSB0ZW1wbGF0ZSBpZFxuICogb2YgdGhlIGNsYXNzIGRlY2xhcmF0aW9uLlxuICovXG5leHBvcnQgZnVuY3Rpb24gYWRkVGVtcGxhdGVJZCh0Y2I6IHRzLkZ1bmN0aW9uRGVjbGFyYXRpb24sIGlkOiBUZW1wbGF0ZUlkKTogdm9pZCB7XG4gIHRzLmFkZFN5bnRoZXRpY0xlYWRpbmdDb21tZW50KHRjYiwgdHMuU3ludGF4S2luZC5NdWx0aUxpbmVDb21tZW50VHJpdmlhLCBpZCwgdHJ1ZSk7XG59XG5cbi8qKlxuICogRGV0ZXJtaW5lcyBpZiB0aGUgZGlhZ25vc3RpYyBzaG91bGQgYmUgcmVwb3J0ZWQuIFNvbWUgZGlhZ25vc3RpY3MgYXJlIHByb2R1Y2VkIGJlY2F1c2Ugb2YgdGhlXG4gKiB3YXkgVENCcyBhcmUgZ2VuZXJhdGVkOyB0aG9zZSBkaWFnbm9zdGljcyBzaG91bGQgbm90IGJlIHJlcG9ydGVkIGFzIHR5cGUgY2hlY2sgZXJyb3JzIG9mIHRoZVxuICogdGVtcGxhdGUuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBzaG91bGRSZXBvcnREaWFnbm9zdGljKGRpYWdub3N0aWM6IHRzLkRpYWdub3N0aWMpOiBib29sZWFuIHtcbiAgY29uc3Qge2NvZGV9ID0gZGlhZ25vc3RpYztcbiAgaWYgKGNvZGUgPT09IDYxMzMgLyogJHZhciBpcyBkZWNsYXJlZCBidXQgaXRzIHZhbHVlIGlzIG5ldmVyIHJlYWQuICovKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9IGVsc2UgaWYgKGNvZGUgPT09IDYxOTkgLyogQWxsIHZhcmlhYmxlcyBhcmUgdW51c2VkLiAqLykge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfSBlbHNlIGlmIChjb2RlID09PSAyNjk1IC8qIExlZnQgc2lkZSBvZiBjb21tYSBvcGVyYXRvciBpcyB1bnVzZWQgYW5kIGhhcyBubyBzaWRlIGVmZmVjdHMuICovKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9IGVsc2UgaWYgKGNvZGUgPT09IDcwMDYgLyogUGFyYW1ldGVyICckZXZlbnQnIGltcGxpY2l0bHkgaGFzIGFuICdhbnknIHR5cGUuICovKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG4gIHJldHVybiB0cnVlO1xufVxuXG4vKipcbiAqIEF0dGVtcHRzIHRvIHRyYW5zbGF0ZSBhIFR5cGVTY3JpcHQgZGlhZ25vc3RpYyBwcm9kdWNlZCBkdXJpbmcgdGVtcGxhdGUgdHlwZS1jaGVja2luZyB0byB0aGVpclxuICogbG9jYXRpb24gb2Ygb3JpZ2luLCBiYXNlZCBvbiB0aGUgY29tbWVudHMgdGhhdCBhcmUgZW1pdHRlZCBpbiB0aGUgVENCIGNvZGUuXG4gKlxuICogSWYgdGhlIGRpYWdub3N0aWMgY291bGQgbm90IGJlIHRyYW5zbGF0ZWQsIGBudWxsYCBpcyByZXR1cm5lZCB0byBpbmRpY2F0ZSB0aGF0IHRoZSBkaWFnbm9zdGljXG4gKiBzaG91bGQgbm90IGJlIHJlcG9ydGVkIGF0IGFsbC4gVGhpcyBwcmV2ZW50cyBkaWFnbm9zdGljcyBmcm9tIG5vbi1UQ0IgY29kZSBpbiBhIHVzZXIncyBzb3VyY2VcbiAqIGZpbGUgZnJvbSBiZWluZyByZXBvcnRlZCBhcyB0eXBlLWNoZWNrIGVycm9ycy5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHRyYW5zbGF0ZURpYWdub3N0aWMoXG4gICAgZGlhZ25vc3RpYzogdHMuRGlhZ25vc3RpYywgcmVzb2x2ZXI6IFRlbXBsYXRlU291cmNlUmVzb2x2ZXIpOiBUZW1wbGF0ZURpYWdub3N0aWN8bnVsbCB7XG4gIGlmIChkaWFnbm9zdGljLmZpbGUgPT09IHVuZGVmaW5lZCB8fCBkaWFnbm9zdGljLnN0YXJ0ID09PSB1bmRlZmluZWQpIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIC8vIExvY2F0ZSB0aGUgbm9kZSB0aGF0IHRoZSBkaWFnbm9zdGljIGlzIHJlcG9ydGVkIG9uIGFuZCBkZXRlcm1pbmUgaXRzIGxvY2F0aW9uIGluIHRoZSBzb3VyY2UuXG4gIGNvbnN0IG5vZGUgPSBnZXRUb2tlbkF0UG9zaXRpb24oZGlhZ25vc3RpYy5maWxlLCBkaWFnbm9zdGljLnN0YXJ0KTtcbiAgY29uc3Qgc291cmNlTG9jYXRpb24gPSBmaW5kU291cmNlTG9jYXRpb24obm9kZSwgZGlhZ25vc3RpYy5maWxlKTtcbiAgaWYgKHNvdXJjZUxvY2F0aW9uID09PSBudWxsKSB7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICAvLyBOb3cgdXNlIHRoZSBleHRlcm5hbCByZXNvbHZlciB0byBvYnRhaW4gdGhlIGZ1bGwgYFBhcnNlU291cmNlRmlsZWAgb2YgdGhlIHRlbXBsYXRlLlxuICBjb25zdCBzcGFuID0gcmVzb2x2ZXIudG9QYXJzZVNvdXJjZVNwYW4oc291cmNlTG9jYXRpb24uaWQsIHNvdXJjZUxvY2F0aW9uLnNwYW4pO1xuICBpZiAoc3BhbiA9PT0gbnVsbCkge1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgY29uc3QgbWFwcGluZyA9IHJlc29sdmVyLmdldFNvdXJjZU1hcHBpbmcoc291cmNlTG9jYXRpb24uaWQpO1xuICByZXR1cm4gbWFrZVRlbXBsYXRlRGlhZ25vc3RpYyhcbiAgICAgIHNvdXJjZUxvY2F0aW9uLmlkLCBtYXBwaW5nLCBzcGFuLCBkaWFnbm9zdGljLmNhdGVnb3J5LCBkaWFnbm9zdGljLmNvZGUsXG4gICAgICBkaWFnbm9zdGljLm1lc3NhZ2VUZXh0KTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGZpbmRUeXBlQ2hlY2tCbG9jayhmaWxlOiB0cy5Tb3VyY2VGaWxlLCBpZDogVGVtcGxhdGVJZCk6IHRzLk5vZGV8bnVsbCB7XG4gIGZvciAoY29uc3Qgc3RtdCBvZiBmaWxlLnN0YXRlbWVudHMpIHtcbiAgICBpZiAodHMuaXNGdW5jdGlvbkRlY2xhcmF0aW9uKHN0bXQpICYmIGdldFRlbXBsYXRlSWQoc3RtdCwgZmlsZSkgPT09IGlkKSB7XG4gICAgICByZXR1cm4gc3RtdDtcbiAgICB9XG4gIH1cbiAgcmV0dXJuIG51bGw7XG59XG5cbi8qKlxuICogQ29uc3RydWN0cyBhIGB0cy5EaWFnbm9zdGljYCBmb3IgYSBnaXZlbiBgUGFyc2VTb3VyY2VTcGFuYCB3aXRoaW4gYSB0ZW1wbGF0ZS5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIG1ha2VUZW1wbGF0ZURpYWdub3N0aWMoXG4gICAgdGVtcGxhdGVJZDogVGVtcGxhdGVJZCwgbWFwcGluZzogVGVtcGxhdGVTb3VyY2VNYXBwaW5nLCBzcGFuOiBQYXJzZVNvdXJjZVNwYW4sXG4gICAgY2F0ZWdvcnk6IHRzLkRpYWdub3N0aWNDYXRlZ29yeSwgY29kZTogbnVtYmVyLCBtZXNzYWdlVGV4dDogc3RyaW5nfHRzLkRpYWdub3N0aWNNZXNzYWdlQ2hhaW4sXG4gICAgcmVsYXRlZE1lc3NhZ2U/OiB7XG4gICAgICB0ZXh0OiBzdHJpbmcsXG4gICAgICBzcGFuOiBQYXJzZVNvdXJjZVNwYW4sXG4gICAgfSk6IFRlbXBsYXRlRGlhZ25vc3RpYyB7XG4gIGlmIChtYXBwaW5nLnR5cGUgPT09ICdkaXJlY3QnKSB7XG4gICAgbGV0IHJlbGF0ZWRJbmZvcm1hdGlvbjogdHMuRGlhZ25vc3RpY1JlbGF0ZWRJbmZvcm1hdGlvbltdfHVuZGVmaW5lZCA9IHVuZGVmaW5lZDtcbiAgICBpZiAocmVsYXRlZE1lc3NhZ2UgIT09IHVuZGVmaW5lZCkge1xuICAgICAgcmVsYXRlZEluZm9ybWF0aW9uID0gW3tcbiAgICAgICAgY2F0ZWdvcnk6IHRzLkRpYWdub3N0aWNDYXRlZ29yeS5NZXNzYWdlLFxuICAgICAgICBjb2RlOiAwLFxuICAgICAgICBmaWxlOiBtYXBwaW5nLm5vZGUuZ2V0U291cmNlRmlsZSgpLFxuICAgICAgICBzdGFydDogcmVsYXRlZE1lc3NhZ2Uuc3Bhbi5zdGFydC5vZmZzZXQsXG4gICAgICAgIGxlbmd0aDogcmVsYXRlZE1lc3NhZ2Uuc3Bhbi5lbmQub2Zmc2V0IC0gcmVsYXRlZE1lc3NhZ2Uuc3Bhbi5zdGFydC5vZmZzZXQsXG4gICAgICAgIG1lc3NhZ2VUZXh0OiByZWxhdGVkTWVzc2FnZS50ZXh0LFxuICAgICAgfV07XG4gICAgfVxuICAgIC8vIEZvciBkaXJlY3QgbWFwcGluZ3MsIHRoZSBlcnJvciBpcyBzaG93biBpbmxpbmUgYXMgbmd0c2Mgd2FzIGFibGUgdG8gcGlucG9pbnQgYSBzdHJpbmdcbiAgICAvLyBjb25zdGFudCB3aXRoaW4gdGhlIGBAQ29tcG9uZW50YCBkZWNvcmF0b3IgZm9yIHRoZSB0ZW1wbGF0ZS4gVGhpcyBhbGxvd3MgdXMgdG8gbWFwIHRoZSBlcnJvclxuICAgIC8vIGRpcmVjdGx5IGludG8gdGhlIGJ5dGVzIG9mIHRoZSBzb3VyY2UgZmlsZS5cbiAgICByZXR1cm4ge1xuICAgICAgc291cmNlOiAnbmd0c2MnLFxuICAgICAgY29kZSxcbiAgICAgIGNhdGVnb3J5LFxuICAgICAgbWVzc2FnZVRleHQsXG4gICAgICBmaWxlOiBtYXBwaW5nLm5vZGUuZ2V0U291cmNlRmlsZSgpLFxuICAgICAgY29tcG9uZW50RmlsZTogbWFwcGluZy5ub2RlLmdldFNvdXJjZUZpbGUoKSxcbiAgICAgIHRlbXBsYXRlSWQsXG4gICAgICBzdGFydDogc3Bhbi5zdGFydC5vZmZzZXQsXG4gICAgICBsZW5ndGg6IHNwYW4uZW5kLm9mZnNldCAtIHNwYW4uc3RhcnQub2Zmc2V0LFxuICAgICAgcmVsYXRlZEluZm9ybWF0aW9uLFxuICAgIH07XG4gIH0gZWxzZSBpZiAobWFwcGluZy50eXBlID09PSAnaW5kaXJlY3QnIHx8IG1hcHBpbmcudHlwZSA9PT0gJ2V4dGVybmFsJykge1xuICAgIC8vIEZvciBpbmRpcmVjdCBtYXBwaW5ncyAodGVtcGxhdGUgd2FzIGRlY2xhcmVkIGlubGluZSwgYnV0IG5ndHNjIGNvdWxkbid0IG1hcCBpdCBkaXJlY3RseVxuICAgIC8vIHRvIGEgc3RyaW5nIGNvbnN0YW50IGluIHRoZSBkZWNvcmF0b3IpLCB0aGUgY29tcG9uZW50J3MgZmlsZSBuYW1lIGlzIGdpdmVuIHdpdGggYSBzdWZmaXhcbiAgICAvLyBpbmRpY2F0aW5nIGl0J3Mgbm90IHRoZSBUUyBmaWxlIGJlaW5nIGRpc3BsYXllZCwgYnV0IGEgdGVtcGxhdGUuXG4gICAgLy8gRm9yIGV4dGVybmFsIHRlbW9wbGF0ZXMsIHRoZSBIVE1MIGZpbGVuYW1lIGlzIHVzZWQuXG4gICAgY29uc3QgY29tcG9uZW50U2YgPSBtYXBwaW5nLmNvbXBvbmVudENsYXNzLmdldFNvdXJjZUZpbGUoKTtcbiAgICBjb25zdCBjb21wb25lbnROYW1lID0gbWFwcGluZy5jb21wb25lbnRDbGFzcy5uYW1lLnRleHQ7XG4gICAgLy8gVE9ETyhhbHhodWIpOiByZW1vdmUgY2FzdCB3aGVuIFRTIGluIGczIHN1cHBvcnRzIHRoaXMgbmFycm93aW5nLlxuICAgIGNvbnN0IGZpbGVOYW1lID0gbWFwcGluZy50eXBlID09PSAnaW5kaXJlY3QnID9cbiAgICAgICAgYCR7Y29tcG9uZW50U2YuZmlsZU5hbWV9ICgke2NvbXBvbmVudE5hbWV9IHRlbXBsYXRlKWAgOlxuICAgICAgICAobWFwcGluZyBhcyBFeHRlcm5hbFRlbXBsYXRlU291cmNlTWFwcGluZykudGVtcGxhdGVVcmw7XG4gICAgLy8gVE9ETyhhbHhodWIpOiBpbnZlc3RpZ2F0ZSBjcmVhdGluZyBhIGZha2UgYHRzLlNvdXJjZUZpbGVgIGhlcmUgaW5zdGVhZCBvZiBpbnZva2luZyB0aGUgVFNcbiAgICAvLyBwYXJzZXIgYWdhaW5zdCB0aGUgdGVtcGxhdGUgKEhUTUwgaXMganVzdCByZWFsbHkgc3ludGFjdGljYWxseSBpbnZhbGlkIFR5cGVTY3JpcHQgY29kZSA7KS5cbiAgICAvLyBBbHNvIGludmVzdGlnYXRlIGNhY2hpbmcgdGhlIGZpbGUgdG8gYXZvaWQgcnVubmluZyB0aGUgcGFyc2VyIG11bHRpcGxlIHRpbWVzLlxuICAgIGNvbnN0IHNmID0gdHMuY3JlYXRlU291cmNlRmlsZShcbiAgICAgICAgZmlsZU5hbWUsIG1hcHBpbmcudGVtcGxhdGUsIHRzLlNjcmlwdFRhcmdldC5MYXRlc3QsIGZhbHNlLCB0cy5TY3JpcHRLaW5kLkpTWCk7XG5cbiAgICBsZXQgcmVsYXRlZEluZm9ybWF0aW9uOiB0cy5EaWFnbm9zdGljUmVsYXRlZEluZm9ybWF0aW9uW10gPSBbXTtcbiAgICBpZiAocmVsYXRlZE1lc3NhZ2UgIT09IHVuZGVmaW5lZCkge1xuICAgICAgcmVsYXRlZEluZm9ybWF0aW9uLnB1c2goe1xuICAgICAgICBjYXRlZ29yeTogdHMuRGlhZ25vc3RpY0NhdGVnb3J5Lk1lc3NhZ2UsXG4gICAgICAgIGNvZGU6IDAsXG4gICAgICAgIGZpbGU6IHNmLFxuICAgICAgICBzdGFydDogcmVsYXRlZE1lc3NhZ2Uuc3Bhbi5zdGFydC5vZmZzZXQsXG4gICAgICAgIGxlbmd0aDogcmVsYXRlZE1lc3NhZ2Uuc3Bhbi5lbmQub2Zmc2V0IC0gcmVsYXRlZE1lc3NhZ2Uuc3Bhbi5zdGFydC5vZmZzZXQsXG4gICAgICAgIG1lc3NhZ2VUZXh0OiByZWxhdGVkTWVzc2FnZS50ZXh0LFxuICAgICAgfSk7XG4gICAgfVxuXG4gICAgcmVsYXRlZEluZm9ybWF0aW9uLnB1c2goe1xuICAgICAgY2F0ZWdvcnk6IHRzLkRpYWdub3N0aWNDYXRlZ29yeS5NZXNzYWdlLFxuICAgICAgY29kZTogMCxcbiAgICAgIGZpbGU6IGNvbXBvbmVudFNmLFxuICAgICAgLy8gbWFwcGluZy5ub2RlIHJlcHJlc2VudHMgZWl0aGVyIHRoZSAndGVtcGxhdGUnIG9yICd0ZW1wbGF0ZVVybCcgZXhwcmVzc2lvbi4gZ2V0U3RhcnQoKVxuICAgICAgLy8gYW5kIGdldEVuZCgpIGFyZSB1c2VkIGJlY2F1c2UgdGhleSBkb24ndCBpbmNsdWRlIHN1cnJvdW5kaW5nIHdoaXRlc3BhY2UuXG4gICAgICBzdGFydDogbWFwcGluZy5ub2RlLmdldFN0YXJ0KCksXG4gICAgICBsZW5ndGg6IG1hcHBpbmcubm9kZS5nZXRFbmQoKSAtIG1hcHBpbmcubm9kZS5nZXRTdGFydCgpLFxuICAgICAgbWVzc2FnZVRleHQ6IGBFcnJvciBvY2N1cnMgaW4gdGhlIHRlbXBsYXRlIG9mIGNvbXBvbmVudCAke2NvbXBvbmVudE5hbWV9LmAsXG4gICAgfSk7XG5cbiAgICByZXR1cm4ge1xuICAgICAgc291cmNlOiAnbmd0c2MnLFxuICAgICAgY2F0ZWdvcnksXG4gICAgICBjb2RlLFxuICAgICAgbWVzc2FnZVRleHQsXG4gICAgICBmaWxlOiBzZixcbiAgICAgIGNvbXBvbmVudEZpbGU6IGNvbXBvbmVudFNmLFxuICAgICAgdGVtcGxhdGVJZCxcbiAgICAgIHN0YXJ0OiBzcGFuLnN0YXJ0Lm9mZnNldCxcbiAgICAgIGxlbmd0aDogc3Bhbi5lbmQub2Zmc2V0IC0gc3Bhbi5zdGFydC5vZmZzZXQsXG4gICAgICAvLyBTaG93IGEgc2Vjb25kYXJ5IG1lc3NhZ2UgaW5kaWNhdGluZyB0aGUgY29tcG9uZW50IHdob3NlIHRlbXBsYXRlIGNvbnRhaW5zIHRoZSBlcnJvci5cbiAgICAgIHJlbGF0ZWRJbmZvcm1hdGlvbixcbiAgICB9O1xuICB9IGVsc2Uge1xuICAgIHRocm93IG5ldyBFcnJvcihgVW5leHBlY3RlZCBzb3VyY2UgbWFwcGluZyB0eXBlOiAkeyhtYXBwaW5nIGFzIHt0eXBlOiBzdHJpbmd9KS50eXBlfWApO1xuICB9XG59XG5cbmludGVyZmFjZSBTb3VyY2VMb2NhdGlvbiB7XG4gIGlkOiBUZW1wbGF0ZUlkO1xuICBzcGFuOiBBYnNvbHV0ZVNvdXJjZVNwYW47XG59XG5cbi8qKlxuICogVHJhdmVyc2VzIHVwIHRoZSBBU1Qgc3RhcnRpbmcgZnJvbSB0aGUgZ2l2ZW4gbm9kZSB0byBleHRyYWN0IHRoZSBzb3VyY2UgbG9jYXRpb24gZnJvbSBjb21tZW50c1xuICogdGhhdCBoYXZlIGJlZW4gZW1pdHRlZCBpbnRvIHRoZSBUQ0IuIElmIHRoZSBub2RlIGRvZXMgbm90IGV4aXN0IHdpdGhpbiBhIFRDQiwgb3IgaWYgYW4gaWdub3JlXG4gKiBtYXJrZXIgY29tbWVudCBpcyBmb3VuZCB1cCB0aGUgdHJlZSwgdGhpcyBmdW5jdGlvbiByZXR1cm5zIG51bGwuXG4gKi9cbmZ1bmN0aW9uIGZpbmRTb3VyY2VMb2NhdGlvbihub2RlOiB0cy5Ob2RlLCBzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlKTogU291cmNlTG9jYXRpb258bnVsbCB7XG4gIC8vIFNlYXJjaCBmb3IgY29tbWVudHMgdW50aWwgdGhlIFRDQidzIGZ1bmN0aW9uIGRlY2xhcmF0aW9uIGlzIGVuY291bnRlcmVkLlxuICB3aGlsZSAobm9kZSAhPT0gdW5kZWZpbmVkICYmICF0cy5pc0Z1bmN0aW9uRGVjbGFyYXRpb24obm9kZSkpIHtcbiAgICBpZiAoaGFzSWdub3JlTWFya2VyKG5vZGUsIHNvdXJjZUZpbGUpKSB7XG4gICAgICAvLyBUaGVyZSdzIGFuIGlnbm9yZSBtYXJrZXIgb24gdGhpcyBub2RlLCBzbyB0aGUgZGlhZ25vc3RpYyBzaG91bGQgbm90IGJlIHJlcG9ydGVkLlxuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuXG4gICAgY29uc3Qgc3BhbiA9IHJlYWRTcGFuQ29tbWVudChzb3VyY2VGaWxlLCBub2RlKTtcbiAgICBpZiAoc3BhbiAhPT0gbnVsbCkge1xuICAgICAgLy8gT25jZSB0aGUgcG9zaXRpb25hbCBpbmZvcm1hdGlvbiBoYXMgYmVlbiBleHRyYWN0ZWQsIHNlYXJjaCBmdXJ0aGVyIHVwIHRoZSBUQ0IgdG8gZXh0cmFjdFxuICAgICAgLy8gdGhlIHVuaXF1ZSBpZCB0aGF0IGlzIGF0dGFjaGVkIHdpdGggdGhlIFRDQidzIGZ1bmN0aW9uIGRlY2xhcmF0aW9uLlxuICAgICAgY29uc3QgaWQgPSBnZXRUZW1wbGF0ZUlkKG5vZGUsIHNvdXJjZUZpbGUpO1xuICAgICAgaWYgKGlkID09PSBudWxsKSB7XG4gICAgICAgIHJldHVybiBudWxsO1xuICAgICAgfVxuICAgICAgcmV0dXJuIHtpZCwgc3Bhbn07XG4gICAgfVxuXG4gICAgbm9kZSA9IG5vZGUucGFyZW50O1xuICB9XG5cbiAgcmV0dXJuIG51bGw7XG59XG5cbmZ1bmN0aW9uIGdldFRlbXBsYXRlSWQobm9kZTogdHMuTm9kZSwgc291cmNlRmlsZTogdHMuU291cmNlRmlsZSk6IFRlbXBsYXRlSWR8bnVsbCB7XG4gIC8vIFdhbGsgdXAgdG8gdGhlIGZ1bmN0aW9uIGRlY2xhcmF0aW9uIG9mIHRoZSBUQ0IsIHRoZSBmaWxlIGluZm9ybWF0aW9uIGlzIGF0dGFjaGVkIHRoZXJlLlxuICB3aGlsZSAoIXRzLmlzRnVuY3Rpb25EZWNsYXJhdGlvbihub2RlKSkge1xuICAgIGlmIChoYXNJZ25vcmVNYXJrZXIobm9kZSwgc291cmNlRmlsZSkpIHtcbiAgICAgIC8vIFRoZXJlJ3MgYW4gaWdub3JlIG1hcmtlciBvbiB0aGlzIG5vZGUsIHNvIHRoZSBkaWFnbm9zdGljIHNob3VsZCBub3QgYmUgcmVwb3J0ZWQuXG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gICAgbm9kZSA9IG5vZGUucGFyZW50O1xuXG4gICAgLy8gQmFpbCBvbmNlIHdlIGhhdmUgcmVhY2hlZCB0aGUgcm9vdC5cbiAgICBpZiAobm9kZSA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gIH1cblxuICBjb25zdCBzdGFydCA9IG5vZGUuZ2V0RnVsbFN0YXJ0KCk7XG4gIHJldHVybiB0cy5mb3JFYWNoTGVhZGluZ0NvbW1lbnRSYW5nZShzb3VyY2VGaWxlLnRleHQsIHN0YXJ0LCAocG9zLCBlbmQsIGtpbmQpID0+IHtcbiAgICBpZiAoa2luZCAhPT0gdHMuU3ludGF4S2luZC5NdWx0aUxpbmVDb21tZW50VHJpdmlhKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gICAgY29uc3QgY29tbWVudFRleHQgPSBzb3VyY2VGaWxlLnRleHQuc3Vic3RyaW5nKHBvcyArIDIsIGVuZCAtIDIpO1xuICAgIHJldHVybiBjb21tZW50VGV4dDtcbiAgfSkgYXMgVGVtcGxhdGVJZCB8fCBudWxsO1xufVxuXG5jb25zdCBwYXJzZVNwYW5Db21tZW50ID0gL14oXFxkKyksKFxcZCspJC87XG5cbmZ1bmN0aW9uIHJlYWRTcGFuQ29tbWVudChzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlLCBub2RlOiB0cy5Ob2RlKTogQWJzb2x1dGVTb3VyY2VTcGFufG51bGwge1xuICByZXR1cm4gdHMuZm9yRWFjaFRyYWlsaW5nQ29tbWVudFJhbmdlKHNvdXJjZUZpbGUudGV4dCwgbm9kZS5nZXRFbmQoKSwgKHBvcywgZW5kLCBraW5kKSA9PiB7XG4gICAgaWYgKGtpbmQgIT09IHRzLlN5bnRheEtpbmQuTXVsdGlMaW5lQ29tbWVudFRyaXZpYSkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIGNvbnN0IGNvbW1lbnRUZXh0ID0gc291cmNlRmlsZS50ZXh0LnN1YnN0cmluZyhwb3MgKyAyLCBlbmQgLSAyKTtcbiAgICBjb25zdCBtYXRjaCA9IGNvbW1lbnRUZXh0Lm1hdGNoKHBhcnNlU3BhbkNvbW1lbnQpO1xuICAgIGlmIChtYXRjaCA9PT0gbnVsbCkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuXG4gICAgcmV0dXJuIG5ldyBBYnNvbHV0ZVNvdXJjZVNwYW4oK21hdGNoWzFdLCArbWF0Y2hbMl0pO1xuICB9KSB8fCBudWxsO1xufVxuXG5mdW5jdGlvbiBoYXNJZ25vcmVNYXJrZXIobm9kZTogdHMuTm9kZSwgc291cmNlRmlsZTogdHMuU291cmNlRmlsZSk6IGJvb2xlYW4ge1xuICByZXR1cm4gdHMuZm9yRWFjaFRyYWlsaW5nQ29tbWVudFJhbmdlKHNvdXJjZUZpbGUudGV4dCwgbm9kZS5nZXRFbmQoKSwgKHBvcywgZW5kLCBraW5kKSA9PiB7XG4gICAgaWYgKGtpbmQgIT09IHRzLlN5bnRheEtpbmQuTXVsdGlMaW5lQ29tbWVudFRyaXZpYSkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIGNvbnN0IGNvbW1lbnRUZXh0ID0gc291cmNlRmlsZS50ZXh0LnN1YnN0cmluZyhwb3MgKyAyLCBlbmQgLSAyKTtcbiAgICByZXR1cm4gY29tbWVudFRleHQgPT09IElHTk9SRV9NQVJLRVI7XG4gIH0pID09PSB0cnVlO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaXNUZW1wbGF0ZURpYWdub3N0aWMoZGlhZ25vc3RpYzogdHMuRGlhZ25vc3RpYyk6IGRpYWdub3N0aWMgaXMgVGVtcGxhdGVEaWFnbm9zdGljIHtcbiAgcmV0dXJuIGRpYWdub3N0aWMuaGFzT3duUHJvcGVydHkoJ2NvbXBvbmVudEZpbGUnKSAmJlxuICAgICAgdHMuaXNTb3VyY2VGaWxlKChkaWFnbm9zdGljIGFzIGFueSkuY29tcG9uZW50RmlsZSk7XG59XG4iXX0=