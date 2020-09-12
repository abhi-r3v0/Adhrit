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
        define("@angular/compiler/src/i18n/i18n_ast", ["require", "exports"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var Message = /** @class */ (function () {
        /**
         * @param nodes message AST
         * @param placeholders maps placeholder names to static content
         * @param placeholderToMessage maps placeholder names to messages (used for nested ICU messages)
         * @param meaning
         * @param description
         * @param customId
         */
        function Message(nodes, placeholders, placeholderToMessage, meaning, description, customId) {
            this.nodes = nodes;
            this.placeholders = placeholders;
            this.placeholderToMessage = placeholderToMessage;
            this.meaning = meaning;
            this.description = description;
            this.customId = customId;
            this.id = this.customId;
            /** The ids to use if there are no custom id and if `i18nLegacyMessageIdFormat` is not empty */
            this.legacyIds = [];
            if (nodes.length) {
                this.sources = [{
                        filePath: nodes[0].sourceSpan.start.file.url,
                        startLine: nodes[0].sourceSpan.start.line + 1,
                        startCol: nodes[0].sourceSpan.start.col + 1,
                        endLine: nodes[nodes.length - 1].sourceSpan.end.line + 1,
                        endCol: nodes[0].sourceSpan.start.col + 1
                    }];
            }
            else {
                this.sources = [];
            }
        }
        return Message;
    }());
    exports.Message = Message;
    var Text = /** @class */ (function () {
        function Text(value, sourceSpan) {
            this.value = value;
            this.sourceSpan = sourceSpan;
        }
        Text.prototype.visit = function (visitor, context) { return visitor.visitText(this, context); };
        return Text;
    }());
    exports.Text = Text;
    // TODO(vicb): do we really need this node (vs an array) ?
    var Container = /** @class */ (function () {
        function Container(children, sourceSpan) {
            this.children = children;
            this.sourceSpan = sourceSpan;
        }
        Container.prototype.visit = function (visitor, context) { return visitor.visitContainer(this, context); };
        return Container;
    }());
    exports.Container = Container;
    var Icu = /** @class */ (function () {
        function Icu(expression, type, cases, sourceSpan) {
            this.expression = expression;
            this.type = type;
            this.cases = cases;
            this.sourceSpan = sourceSpan;
        }
        Icu.prototype.visit = function (visitor, context) { return visitor.visitIcu(this, context); };
        return Icu;
    }());
    exports.Icu = Icu;
    var TagPlaceholder = /** @class */ (function () {
        function TagPlaceholder(tag, attrs, startName, closeName, children, isVoid, sourceSpan) {
            this.tag = tag;
            this.attrs = attrs;
            this.startName = startName;
            this.closeName = closeName;
            this.children = children;
            this.isVoid = isVoid;
            this.sourceSpan = sourceSpan;
        }
        TagPlaceholder.prototype.visit = function (visitor, context) { return visitor.visitTagPlaceholder(this, context); };
        return TagPlaceholder;
    }());
    exports.TagPlaceholder = TagPlaceholder;
    var Placeholder = /** @class */ (function () {
        function Placeholder(value, name, sourceSpan) {
            this.value = value;
            this.name = name;
            this.sourceSpan = sourceSpan;
        }
        Placeholder.prototype.visit = function (visitor, context) { return visitor.visitPlaceholder(this, context); };
        return Placeholder;
    }());
    exports.Placeholder = Placeholder;
    var IcuPlaceholder = /** @class */ (function () {
        function IcuPlaceholder(value, name, sourceSpan) {
            this.value = value;
            this.name = name;
            this.sourceSpan = sourceSpan;
        }
        IcuPlaceholder.prototype.visit = function (visitor, context) { return visitor.visitIcuPlaceholder(this, context); };
        return IcuPlaceholder;
    }());
    exports.IcuPlaceholder = IcuPlaceholder;
    // Clone the AST
    var CloneVisitor = /** @class */ (function () {
        function CloneVisitor() {
        }
        CloneVisitor.prototype.visitText = function (text, context) { return new Text(text.value, text.sourceSpan); };
        CloneVisitor.prototype.visitContainer = function (container, context) {
            var _this = this;
            var children = container.children.map(function (n) { return n.visit(_this, context); });
            return new Container(children, container.sourceSpan);
        };
        CloneVisitor.prototype.visitIcu = function (icu, context) {
            var _this = this;
            var cases = {};
            Object.keys(icu.cases).forEach(function (key) { return cases[key] = icu.cases[key].visit(_this, context); });
            var msg = new Icu(icu.expression, icu.type, cases, icu.sourceSpan);
            msg.expressionPlaceholder = icu.expressionPlaceholder;
            return msg;
        };
        CloneVisitor.prototype.visitTagPlaceholder = function (ph, context) {
            var _this = this;
            var children = ph.children.map(function (n) { return n.visit(_this, context); });
            return new TagPlaceholder(ph.tag, ph.attrs, ph.startName, ph.closeName, children, ph.isVoid, ph.sourceSpan);
        };
        CloneVisitor.prototype.visitPlaceholder = function (ph, context) {
            return new Placeholder(ph.value, ph.name, ph.sourceSpan);
        };
        CloneVisitor.prototype.visitIcuPlaceholder = function (ph, context) {
            return new IcuPlaceholder(ph.value, ph.name, ph.sourceSpan);
        };
        return CloneVisitor;
    }());
    exports.CloneVisitor = CloneVisitor;
    // Visit all the nodes recursively
    var RecurseVisitor = /** @class */ (function () {
        function RecurseVisitor() {
        }
        RecurseVisitor.prototype.visitText = function (text, context) { };
        RecurseVisitor.prototype.visitContainer = function (container, context) {
            var _this = this;
            container.children.forEach(function (child) { return child.visit(_this); });
        };
        RecurseVisitor.prototype.visitIcu = function (icu, context) {
            var _this = this;
            Object.keys(icu.cases).forEach(function (k) { icu.cases[k].visit(_this); });
        };
        RecurseVisitor.prototype.visitTagPlaceholder = function (ph, context) {
            var _this = this;
            ph.children.forEach(function (child) { return child.visit(_this); });
        };
        RecurseVisitor.prototype.visitPlaceholder = function (ph, context) { };
        RecurseVisitor.prototype.visitIcuPlaceholder = function (ph, context) { };
        return RecurseVisitor;
    }());
    exports.RecurseVisitor = RecurseVisitor;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaTE4bl9hc3QuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci9zcmMvaTE4bi9pMThuX2FzdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7OztJQUlIO1FBTUU7Ozs7Ozs7V0FPRztRQUNILGlCQUNXLEtBQWEsRUFBUyxZQUF3QyxFQUM5RCxvQkFBaUQsRUFBUyxPQUFlLEVBQ3pFLFdBQW1CLEVBQVMsUUFBZ0I7WUFGNUMsVUFBSyxHQUFMLEtBQUssQ0FBUTtZQUFTLGlCQUFZLEdBQVosWUFBWSxDQUE0QjtZQUM5RCx5QkFBb0IsR0FBcEIsb0JBQW9CLENBQTZCO1lBQVMsWUFBTyxHQUFQLE9BQU8sQ0FBUTtZQUN6RSxnQkFBVyxHQUFYLFdBQVcsQ0FBUTtZQUFTLGFBQVEsR0FBUixRQUFRLENBQVE7WUFmdkQsT0FBRSxHQUFXLElBQUksQ0FBQyxRQUFRLENBQUM7WUFDM0IsK0ZBQStGO1lBQy9GLGNBQVMsR0FBYSxFQUFFLENBQUM7WUFjdkIsSUFBSSxLQUFLLENBQUMsTUFBTSxFQUFFO2dCQUNoQixJQUFJLENBQUMsT0FBTyxHQUFHLENBQUM7d0JBQ2QsUUFBUSxFQUFFLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQyxVQUFVLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxHQUFHO3dCQUM1QyxTQUFTLEVBQUUsS0FBSyxDQUFDLENBQUMsQ0FBQyxDQUFDLFVBQVUsQ0FBQyxLQUFLLENBQUMsSUFBSSxHQUFHLENBQUM7d0JBQzdDLFFBQVEsRUFBRSxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUMsVUFBVSxDQUFDLEtBQUssQ0FBQyxHQUFHLEdBQUcsQ0FBQzt3QkFDM0MsT0FBTyxFQUFFLEtBQUssQ0FBQyxLQUFLLENBQUMsTUFBTSxHQUFHLENBQUMsQ0FBQyxDQUFDLFVBQVUsQ0FBQyxHQUFHLENBQUMsSUFBSSxHQUFHLENBQUM7d0JBQ3hE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VUFBVSxJQUFVLEVBQUUsT0FBYSxJQUFRLENBQUM7UUFFNUMsdUNBQWMsR0FBZCxVQUFlLFNBQW9CLEVBQUUsT0FBYTtZQUFsRCxpQkFFQztZQURDLFNBQVMsQ0FBQyxRQUFRLENBQUMsT0FBTyxDQUFDLFVBQUEsS0FBSyxJQUFJLE9BQUEsS0FBSyxDQUFDLEtBQUssQ0FBQyxLQUFJLENBQUMsRUFBakIsQ0FBaUIsQ0FBQyxDQUFDO1FBQ3pELENBQUM7UUFFRCxpQ0FBUSxHQUFSLFVBQVMsR0FBUSxFQUFFLE9BQWE7WUFBaEMsaUJBRUM7WUFEQyxNQUFNLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxLQUFLLENBQUMsQ0FBQyxPQUFPLENBQUMsVUFBQSxDQUFDLElBQU0sR0FBRyxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQyxLQUFLLENBQUMsS0FBSSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNyRSxDQUFDO1FBRUQsNENBQW1CLEdBQW5CLFVBQW9CLEVBQWtCLEVBQUUsT0FBYTtZQUFyRCxpQkFFQztZQURDLEVBQUUsQ0FBQyxRQUFRLENBQUMsT0FBTyxDQUFDLFVBQUEsS0FBSyxJQUFJLE9BQUEsS0FBSyxDQUFDLEtBQUssQ0FBQyxLQUFJLENBQUMsRUFBakIsQ0FBaUIsQ0FBQyxDQUFDO1FBQ2xELENBQUM7UUFFRCx5Q0FBZ0IsR0FBaEIsVUFBaUIsRUFBZSxFQUFFLE9BQWEsSUFBUSxDQUFDO1FBRXhELDRDQUFtQixHQUFuQixVQUFvQixFQUFrQixFQUFFLE9BQWEsSUFBUSxDQUFDO1FBQ2hFLHFCQUFDO0lBQUQsQ0FBQyxBQWxCRCxJQWtCQztJQWxCWSx3Q0FBYyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtQYXJzZVNvdXJjZVNwYW59IGZyb20gJy4uL3BhcnNlX3V0aWwnO1xuXG5leHBvcnQgY2xhc3MgTWVzc2FnZSB7XG4gIHNvdXJjZXM6IE1lc3NhZ2VTcGFuW107XG4gIGlkOiBzdHJpbmcgPSB0aGlzLmN1c3RvbUlkO1xuICAvKiogVGhlIGlkcyB0byB1c2UgaWYgdGhlcmUgYXJlIG5vIGN1c3RvbSBpZCBhbmQgaWYgYGkxOG5MZWdhY3lNZXNzYWdlSWRGb3JtYXRgIGlzIG5vdCBlbXB0eSAqL1xuICBsZWdhY3lJZHM6IHN0cmluZ1tdID0gW107XG5cbiAgLyoqXG4gICAqIEBwYXJhbSBub2RlcyBtZXNzYWdlIEFTVFxuICAgKiBAcGFyYW0gcGxhY2Vob2xkZXJzIG1hcHMgcGxhY2Vob2xkZXIgbmFtZXMgdG8gc3RhdGljIGNvbnRlbnRcbiAgICogQHBhcmFtIHBsYWNlaG9sZGVyVG9NZXNzYWdlIG1hcHMgcGxhY2Vob2xkZXIgbmFtZXMgdG8gbWVzc2FnZXMgKHVzZWQgZm9yIG5lc3RlZCBJQ1UgbWVzc2FnZXMpXG4gICAqIEBwYXJhbSBtZWFuaW5nXG4gICAqIEBwYXJhbSBkZXNjcmlwdGlvblxuICAgKiBAcGFyYW0gY3VzdG9tSWRcbiAgICovXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIG5vZGVzOiBOb2RlW10sIHB1YmxpYyBwbGFjZWhvbGRlcnM6IHtbcGhOYW1lOiBzdHJpbmddOiBzdHJpbmd9LFxuICAgICAgcHVibGljIHBsYWNlaG9sZGVyVG9NZXNzYWdlOiB7W3BoTmFtZTogc3RyaW5nXTogTWVzc2FnZX0sIHB1YmxpYyBtZWFuaW5nOiBzdHJpbmcsXG4gICAgICBwdWJsaWMgZGVzY3JpcHRpb246IHN0cmluZywgcHVibGljIGN1c3RvbUlkOiBzdHJpbmcpIHtcbiAgICBpZiAobm9kZXMubGVuZ3RoKSB7XG4gICAgICB0aGlzLnNvdXJjZXMgPSBbe1xuICAgICAgICBmaWxlUGF0aDogbm9kZXNbMF0uc291cmNlU3Bhbi5zdGFydC5maWxlLnVybCxcbiAgICAgICAgc3RhcnRMaW5lOiBub2Rlc1swXS5zb3VyY2VTcGFuLnN0YXJ0LmxpbmUgKyAxLFxuICAgICAgICBzdGFydENvbDogbm9kZXNbMF0uc291cmNlU3Bhbi5zdGFydC5jb2wgKyAxLFxuICAgICAgICBlbmRMaW5lOiBub2Rlc1tub2Rlcy5sZW5ndGggLSAxXS5zb3VyY2VTcGFuLmVuZC5saW5lICsgMSxcbiAgICAgICAgZW5kQ29sOiBub2Rlc1swXS5zb3VyY2VTcGFuLnN0YXJ0LmNvbCArIDFcbiAgICAgIH1dO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLnNvdXJjZXMgPSBbXTtcbiAgICB9XG4gIH1cbn1cblxuLy8gbGluZSBhbmQgY29sdW1ucyBpbmRleGVzIGFyZSAxIGJhc2VkXG5leHBvcnQgaW50ZXJmYWNlIE1lc3NhZ2VTcGFuIHtcbiAgZmlsZVBhdGg6IHN0cmluZztcbiAgc3RhcnRMaW5lOiBudW1iZXI7XG4gIHN0YXJ0Q29sOiBudW1iZXI7XG4gIGVuZExpbmU6IG51bWJlcjtcbiAgZW5kQ29sOiBudW1iZXI7XG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgTm9kZSB7XG4gIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbjtcbiAgdmlzaXQodmlzaXRvcjogVmlzaXRvciwgY29udGV4dD86IGFueSk6IGFueTtcbn1cblxuZXhwb3J0IGNsYXNzIFRleHQgaW1wbGVtZW50cyBOb2RlIHtcbiAgY29uc3RydWN0b3IocHVibGljIHZhbHVlOiBzdHJpbmcsIHB1YmxpYyBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4pIHt9XG5cbiAgdmlzaXQodmlzaXRvcjogVmlzaXRvciwgY29udGV4dD86IGFueSk6IGFueSB7IHJldHVybiB2aXNpdG9yLnZpc2l0VGV4dCh0aGlzLCBjb250ZXh0KTsgfVxufVxuXG4vLyBUT0RPKHZpY2IpOiBkbyB3ZSByZWFsbHkgbmVlZCB0aGlzIG5vZGUgKHZzIGFuIGFycmF5KSA/XG5leHBvcnQgY2xhc3MgQ29udGFpbmVyIGltcGxlbWVudHMgTm9kZSB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBjaGlsZHJlbjogTm9kZVtdLCBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuKSB7fVxuXG4gIHZpc2l0KHZpc2l0b3I6IFZpc2l0b3IsIGNvbnRleHQ/OiBhbnkpOiBhbnkgeyByZXR1cm4gdmlzaXRvci52aXNpdENvbnRhaW5lcih0aGlzLCBjb250ZXh0KTsgfVxufVxuXG5leHBvcnQgY2xhc3MgSWN1IGltcGxlbWVudHMgTm9kZSB7XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwdWJsaWMgZXhwcmVzc2lvblBsYWNlaG9sZGVyICE6IHN0cmluZztcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgZXhwcmVzc2lvbjogc3RyaW5nLCBwdWJsaWMgdHlwZTogc3RyaW5nLCBwdWJsaWMgY2FzZXM6IHtbazogc3RyaW5nXTogTm9kZX0sXG4gICAgICBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuKSB7fVxuXG4gIHZpc2l0KHZpc2l0b3I6IFZpc2l0b3IsIGNvbnRleHQ/OiBhbnkpOiBhbnkgeyByZXR1cm4gdmlzaXRvci52aXNpdEljdSh0aGlzLCBjb250ZXh0KTsgfVxufVxuXG5leHBvcnQgY2xhc3MgVGFnUGxhY2Vob2xkZXIgaW1wbGVtZW50cyBOb2RlIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgdGFnOiBzdHJpbmcsIHB1YmxpYyBhdHRyczoge1trOiBzdHJpbmddOiBzdHJpbmd9LCBwdWJsaWMgc3RhcnROYW1lOiBzdHJpbmcsXG4gICAgICBwdWJsaWMgY2xvc2VOYW1lOiBzdHJpbmcsIHB1YmxpYyBjaGlsZHJlbjogTm9kZVtdLCBwdWJsaWMgaXNWb2lkOiBib29sZWFuLFxuICAgICAgcHVibGljIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3Bhbikge31cblxuICB2aXNpdCh2aXNpdG9yOiBWaXNpdG9yLCBjb250ZXh0PzogYW55KTogYW55IHsgcmV0dXJuIHZpc2l0b3IudmlzaXRUYWdQbGFjZWhvbGRlcih0aGlzLCBjb250ZXh0KTsgfVxufVxuXG5leHBvcnQgY2xhc3MgUGxhY2Vob2xkZXIgaW1wbGVtZW50cyBOb2RlIHtcbiAgY29uc3RydWN0b3IocHVibGljIHZhbHVlOiBzdHJpbmcsIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHB1YmxpYyBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4pIHt9XG5cbiAgdmlzaXQodmlzaXRvcjogVmlzaXRvciwgY29udGV4dD86IGFueSk6IGFueSB7IHJldHVybiB2aXNpdG9yLnZpc2l0UGxhY2Vob2xkZXIodGhpcywgY29udGV4dCk7IH1cbn1cblxuZXhwb3J0IGNsYXNzIEljdVBsYWNlaG9sZGVyIGltcGxlbWVudHMgTm9kZSB7XG4gIC8qKiBVc2VkIHRvIGNhcHR1cmUgYSBtZXNzYWdlIGNvbXB1dGVkIGZyb20gYSBwcmV2aW91cyBwcm9jZXNzaW5nIHBhc3MgKHNlZSBgc2V0STE4blJlZnMoKWApLiAqL1xuICBwcmV2aW91c01lc3NhZ2U/OiBNZXNzYWdlO1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgdmFsdWU6IEljdSwgcHVibGljIG5hbWU6IHN0cmluZywgcHVibGljIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3Bhbikge31cblxuICB2aXNpdCh2aXNpdG9yOiBWaXNpdG9yLCBjb250ZXh0PzogYW55KTogYW55IHsgcmV0dXJuIHZpc2l0b3IudmlzaXRJY3VQbGFjZWhvbGRlcih0aGlzLCBjb250ZXh0KTsgfVxufVxuXG4vKipcbiAqIEVhY2ggSFRNTCBub2RlIHRoYXQgaXMgYWZmZWN0IGJ5IGFuIGkxOG4gdGFnIHdpbGwgYWxzbyBoYXZlIGFuIGBpMThuYCBwcm9wZXJ0eSB0aGF0IGlzIG9mIHR5cGVcbiAqIGBJMThuTWV0YWAuXG4gKiBUaGlzIGluZm9ybWF0aW9uIGlzIGVpdGhlciBhIGBNZXNzYWdlYCwgd2hpY2ggaW5kaWNhdGVzIGl0IGlzIHRoZSByb290IG9mIGFuIGkxOG4gbWVzc2FnZSwgb3IgYVxuICogYE5vZGVgLCB3aGljaCBpbmRpY2F0ZXMgaXMgaXQgcGFydCBvZiBhIGNvbnRhaW5pbmcgYE1lc3NhZ2VgLlxuICovXG5leHBvcnQgdHlwZSBJMThuTWV0YSA9IE1lc3NhZ2UgfCBOb2RlO1xuXG5leHBvcnQgaW50ZXJmYWNlIFZpc2l0b3Ige1xuICB2aXNpdFRleHQodGV4dDogVGV4dCwgY29udGV4dD86IGFueSk6IGFueTtcbiAgdmlzaXRDb250YWluZXIoY29udGFpbmVyOiBDb250YWluZXIsIGNvbnRleHQ/OiBhbnkpOiBhbnk7XG4gIHZpc2l0SWN1KGljdTogSWN1LCBjb250ZXh0PzogYW55KTogYW55O1xuICB2aXNpdFRhZ1BsYWNlaG9sZGVyKHBoOiBUYWdQbGFjZWhvbGRlciwgY29udGV4dD86IGFueSk6IGFueTtcbiAgdmlzaXRQbGFjZWhvbGRlcihwaDogUGxhY2Vob2xkZXIsIGNvbnRleHQ/OiBhbnkpOiBhbnk7XG4gIHZpc2l0SWN1UGxhY2Vob2xkZXIocGg6IEljdVBsYWNlaG9sZGVyLCBjb250ZXh0PzogYW55KTogYW55O1xufVxuXG4vLyBDbG9uZSB0aGUgQVNUXG5leHBvcnQgY2xhc3MgQ2xvbmVWaXNpdG9yIGltcGxlbWVudHMgVmlzaXRvciB7XG4gIHZpc2l0VGV4dCh0ZXh0OiBUZXh0LCBjb250ZXh0PzogYW55KTogVGV4dCB7IHJldHVybiBuZXcgVGV4dCh0ZXh0LnZhbHVlLCB0ZXh0LnNvdXJjZVNwYW4pOyB9XG5cbiAgdmlzaXRDb250YWluZXIoY29udGFpbmVyOiBDb250YWluZXIsIGNvbnRleHQ/OiBhbnkpOiBDb250YWluZXIge1xuICAgIGNvbnN0IGNoaWxkcmVuID0gY29udGFpbmVyLmNoaWxkcmVuLm1hcChuID0+IG4udmlzaXQodGhpcywgY29udGV4dCkpO1xuICAgIHJldHVybiBuZXcgQ29udGFpbmVyKGNoaWxkcmVuLCBjb250YWluZXIuc291cmNlU3Bhbik7XG4gIH1cblxuICB2aXNpdEljdShpY3U6IEljdSwgY29udGV4dD86IGFueSk6IEljdSB7XG4gICAgY29uc3QgY2FzZXM6IHtbazogc3RyaW5nXTogTm9kZX0gPSB7fTtcbiAgICBPYmplY3Qua2V5cyhpY3UuY2FzZXMpLmZvckVhY2goa2V5ID0+IGNhc2VzW2tleV0gPSBpY3UuY2FzZXNba2V5XS52aXNpdCh0aGlzLCBjb250ZXh0KSk7XG4gICAgY29uc3QgbXNnID0gbmV3IEljdShpY3UuZXhwcmVzc2lvbiwgaWN1LnR5cGUsIGNhc2VzLCBpY3Uuc291cmNlU3Bhbik7XG4gICAgbXNnLmV4cHJlc3Npb25QbGFjZWhvbGRlciA9IGljdS5leHByZXNzaW9uUGxhY2Vob2xkZXI7XG4gICAgcmV0dXJuIG1zZztcbiAgfVxuXG4gIHZpc2l0VGFnUGxhY2Vob2xkZXIocGg6IFRhZ1BsYWNlaG9sZGVyLCBjb250ZXh0PzogYW55KTogVGFnUGxhY2Vob2xkZXIge1xuICAgIGNvbnN0IGNoaWxkcmVuID0gcGguY2hpbGRyZW4ubWFwKG4gPT4gbi52aXNpdCh0aGlzLCBjb250ZXh0KSk7XG4gICAgcmV0dXJuIG5ldyBUYWdQbGFjZWhvbGRlcihcbiAgICAgICAgcGgudGFnLCBwaC5hdHRycywgcGguc3RhcnROYW1lLCBwaC5jbG9zZU5hbWUsIGNoaWxkcmVuLCBwaC5pc1ZvaWQsIHBoLnNvdXJjZVNwYW4pO1xuICB9XG5cbiAgdmlzaXRQbGFjZWhvbGRlcihwaDogUGxhY2Vob2xkZXIsIGNvbnRleHQ/OiBhbnkpOiBQbGFjZWhvbGRlciB7XG4gICAgcmV0dXJuIG5ldyBQbGFjZWhvbGRlcihwaC52YWx1ZSwgcGgubmFtZSwgcGguc291cmNlU3Bhbik7XG4gIH1cblxuICB2aXNpdEljdVBsYWNlaG9sZGVyKHBoOiBJY3VQbGFjZWhvbGRlciwgY29udGV4dD86IGFueSk6IEljdVBsYWNlaG9sZGVyIHtcbiAgICByZXR1cm4gbmV3IEljdVBsYWNlaG9sZGVyKHBoLnZhbHVlLCBwaC5uYW1lLCBwaC5zb3VyY2VTcGFuKTtcbiAgfVxufVxuXG4vLyBWaXNpdCBhbGwgdGhlIG5vZGVzIHJlY3Vyc2l2ZWx5XG5leHBvcnQgY2xhc3MgUmVjdXJzZVZpc2l0b3IgaW1wbGVtZW50cyBWaXNpdG9yIHtcbiAgdmlzaXRUZXh0KHRleHQ6IFRleHQsIGNvbnRleHQ/OiBhbnkpOiBhbnkge31cblxuICB2aXNpdENvbnRhaW5lcihjb250YWluZXI6IENvbnRhaW5lciwgY29udGV4dD86IGFueSk6IGFueSB7XG4gICAgY29udGFpbmVyLmNoaWxkcmVuLmZvckVhY2goY2hpbGQgPT4gY2hpbGQudmlzaXQodGhpcykpO1xuICB9XG5cbiAgdmlzaXRJY3UoaWN1OiBJY3UsIGNvbnRleHQ/OiBhbnkpOiBhbnkge1xuICAgIE9iamVjdC5rZXlzKGljdS5jYXNlcykuZm9yRWFjaChrID0+IHsgaWN1LmNhc2VzW2tdLnZpc2l0KHRoaXMpOyB9KTtcbiAgfVxuXG4gIHZpc2l0VGFnUGxhY2Vob2xkZXIocGg6IFRhZ1BsYWNlaG9sZGVyLCBjb250ZXh0PzogYW55KTogYW55IHtcbiAgICBwaC5jaGlsZHJlbi5mb3JFYWNoKGNoaWxkID0+IGNoaWxkLnZpc2l0KHRoaXMpKTtcbiAgfVxuXG4gIHZpc2l0UGxhY2Vob2xkZXIocGg6IFBsYWNlaG9sZGVyLCBjb250ZXh0PzogYW55KTogYW55IHt9XG5cbiAgdmlzaXRJY3VQbGFjZWhvbGRlcihwaDogSWN1UGxhY2Vob2xkZXIsIGNvbnRleHQ/OiBhbnkpOiBhbnkge31cbn1cbiJdfQ==