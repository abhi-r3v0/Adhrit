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
        define("@angular/compiler/src/render3/view/i18n/icu_serializer", ["require", "exports", "@angular/compiler/src/render3/view/i18n/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var util_1 = require("@angular/compiler/src/render3/view/i18n/util");
    var IcuSerializerVisitor = /** @class */ (function () {
        function IcuSerializerVisitor() {
        }
        IcuSerializerVisitor.prototype.visitText = function (text) { return text.value; };
        IcuSerializerVisitor.prototype.visitContainer = function (container) {
            var _this = this;
            return container.children.map(function (child) { return child.visit(_this); }).join('');
        };
        IcuSerializerVisitor.prototype.visitIcu = function (icu) {
            var _this = this;
            var strCases = Object.keys(icu.cases).map(function (k) { return k + " {" + icu.cases[k].visit(_this) + "}"; });
            var result = "{" + icu.expressionPlaceholder + ", " + icu.type + ", " + strCases.join(' ') + "}";
            return result;
        };
        IcuSerializerVisitor.prototype.visitTagPlaceholder = function (ph) {
            var _this = this;
            return ph.isVoid ?
                this.formatPh(ph.startName) :
                "" + this.formatPh(ph.startName) + ph.children.map(function (child) { return child.visit(_this); }).join('') + this.formatPh(ph.closeName);
        };
        IcuSerializerVisitor.prototype.visitPlaceholder = function (ph) { return this.formatPh(ph.name); };
        IcuSerializerVisitor.prototype.visitIcuPlaceholder = function (ph, context) {
            return this.formatPh(ph.name);
        };
        IcuSerializerVisitor.prototype.formatPh = function (value) {
            return "{" + util_1.formatI18nPlaceholderName(value, /* useCamelCase */ false) + "}";
        };
        return IcuSerializerVisitor;
    }());
    var serializer = new IcuSerializerVisitor();
    function serializeIcuNode(icu) {
        return icu.visit(serializer);
    }
    exports.serializeIcuNode = serializeIcuNode;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaWN1X3NlcmlhbGl6ZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci9zcmMvcmVuZGVyMy92aWV3L2kxOG4vaWN1X3NlcmlhbGl6ZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7SUFJSCxxRUFBaUQ7SUFFakQ7UUFBQTtRQTZCQSxDQUFDO1FBNUJDLHdDQUFTLEdBQVQsVUFBVSxJQUFlLElBQVMsT0FBTyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUMsQ0FBQztRQUV0RCw2Q0FBYyxHQUFkLFVBQWUsU0FBeUI7WUFBeEMsaUJBRUM7WUFEQyxPQUFPLFNBQVMsQ0FBQyxRQUFRLENBQUMsR0FBRyxDQUFDLFVBQUEsS0FBSyxJQUFJLE9BQUEsS0FBSyxDQUFDLEtBQUssQ0FBQyxLQUFJLENBQUMsRUFBakIsQ0FBaUIsQ0FBQyxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsQ0FBQztRQUNyRSxDQUFDO1FBRUQsdUNBQVEsR0FBUixVQUFTLEdBQWE7WUFBdEIsaUJBS0M7WUFKQyxJQUFNLFFBQVEsR0FDVixNQUFNLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxLQUFLLENBQUMsQ0FBQyxHQUFHLENBQUMsVUFBQyxDQUFTLElBQUssT0FBRyxDQUFDLFVBQUssR0FBRyxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQyxLQUFLLENBQUMsS0FBSSxDQUFDLE1BQUcsRUFBcEMsQ0FBb0MsQ0FBQyxDQUFDO1lBQ3BGLElBQU0sTUFBTSxHQUFHLE1BQUksR0FBRyxDQUFDLHFCQUFxQixVQUFLLEdBQUcsQ0FBQyxJQUFJLFVBQUssUUFBUSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsTUFBRyxDQUFDO1lBQ3BGLE9BQU8sTUFBTSxDQUFDO1FBQ2hCLENBQUM7UUFFRCxrREFBbUIsR0FBbkIsVUFBb0IsRUFBdUI7WUFBM0MsaUJBSUM7WUFIQyxPQUFPLEVBQUUsQ0FBQyxNQUFNLENBQUMsQ0FBQztnQkFDZCxJQUFJLENBQUMsUUFBUSxDQUFDLEVBQUUsQ0FBQyxTQUFTLENBQUMsQ0FBQyxDQUFDO2dCQUM3QixLQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsRUFBRSxDQUFDLFNBQVMsQ0FBQyxHQUFHLEVBQUUsQ0FBQyxRQUFRLENBQUMsR0FBRyxDQUFDLFVBQUEsS0FBSyxJQUFJLE9BQUEsS0FBSyxDQUFDLEtBQUssQ0FBQyxLQUFJLENBQUMsRUFBakIsQ0FBaUIsQ0FBQyxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsR0FBRyxJQUFJLENBQUMsUUFBUSxDQUFDLEVBQUUsQ0FBQyxTQUFTLENBQUcsQ0FBQztRQUM1SCxDQUFDO1FBRUQsK0NBQWdCLEdBQWhCLFVBQWlCLEVBQW9CLElBQVMsT0FBTyxJQUFJLENBQUMsUUFBUSxDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFFOUUsa0RBQW1CLEdBQW5CLFVBQW9CLEVBQXVCLEVBQUUsT0FBYTtZQUN4RCxPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ2hDLENBQUM7UUFFTyx1Q0FBUSxHQUFoQixVQUFpQixLQUFhO1lBQzVCLE9BQU8sTUFBSSxnQ0FBeUIsQ0FBQyxLQUFLLEVBQUUsa0JBQWtCLENBQUMsS0FBSyxDQUFDLE1BQUcsQ0FBQztRQUMzRSxDQUFDO1FBQ0gsMkJBQUM7SUFBRCxDQUFDLEFBN0JELElBNkJDO0lBRUQsSUFBTSxVQUFVLEdBQUcsSUFBSSxvQkFBb0IsRUFBRSxDQUFDO0lBQzlDLFNBQWdCLGdCQUFnQixDQUFDLEdBQWE7UUFDNUMsT0FBTyxHQUFHLENBQUMsS0FBSyxDQUFDLFVBQVUsQ0FBQyxDQUFDO0lBQy9CLENBQUM7SUFGRCw0Q0FFQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgaTE4biBmcm9tICcuLi8uLi8uLi9pMThuL2kxOG5fYXN0JztcblxuaW1wb3J0IHtmb3JtYXRJMThuUGxhY2Vob2xkZXJOYW1lfSBmcm9tICcuL3V0aWwnO1xuXG5jbGFzcyBJY3VTZXJpYWxpemVyVmlzaXRvciBpbXBsZW1lbnRzIGkxOG4uVmlzaXRvciB7XG4gIHZpc2l0VGV4dCh0ZXh0OiBpMThuLlRleHQpOiBhbnkgeyByZXR1cm4gdGV4dC52YWx1ZTsgfVxuXG4gIHZpc2l0Q29udGFpbmVyKGNvbnRhaW5lcjogaTE4bi5Db250YWluZXIpOiBhbnkge1xuICAgIHJldHVybiBjb250YWluZXIuY2hpbGRyZW4ubWFwKGNoaWxkID0+IGNoaWxkLnZpc2l0KHRoaXMpKS5qb2luKCcnKTtcbiAgfVxuXG4gIHZpc2l0SWN1KGljdTogaTE4bi5JY3UpOiBhbnkge1xuICAgIGNvbnN0IHN0ckNhc2VzID1cbiAgICAgICAgT2JqZWN0LmtleXMoaWN1LmNhc2VzKS5tYXAoKGs6IHN0cmluZykgPT4gYCR7a30geyR7aWN1LmNhc2VzW2tdLnZpc2l0KHRoaXMpfX1gKTtcbiAgICBjb25zdCByZXN1bHQgPSBgeyR7aWN1LmV4cHJlc3Npb25QbGFjZWhvbGRlcn0sICR7aWN1LnR5cGV9LCAke3N0ckNhc2VzLmpvaW4oJyAnKX19YDtcbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgdmlzaXRUYWdQbGFjZWhvbGRlcihwaDogaTE4bi5UYWdQbGFjZWhvbGRlcik6IGFueSB7XG4gICAgcmV0dXJuIHBoLmlzVm9pZCA/XG4gICAgICAgIHRoaXMuZm9ybWF0UGgocGguc3RhcnROYW1lKSA6XG4gICAgICAgIGAke3RoaXMuZm9ybWF0UGgocGguc3RhcnROYW1lKX0ke3BoLmNoaWxkcmVuLm1hcChjaGlsZCA9PiBjaGlsZC52aXNpdCh0aGlzKSkuam9pbignJyl9JHt0aGlzLmZvcm1hdFBoKHBoLmNsb3NlTmFtZSl9YDtcbiAgfVxuXG4gIHZpc2l0UGxhY2Vob2xkZXIocGg6IGkxOG4uUGxhY2Vob2xkZXIpOiBhbnkgeyByZXR1cm4gdGhpcy5mb3JtYXRQaChwaC5uYW1lKTsgfVxuXG4gIHZpc2l0SWN1UGxhY2Vob2xkZXIocGg6IGkxOG4uSWN1UGxhY2Vob2xkZXIsIGNvbnRleHQ/OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLmZvcm1hdFBoKHBoLm5hbWUpO1xuICB9XG5cbiAgcHJpdmF0ZSBmb3JtYXRQaCh2YWx1ZTogc3RyaW5nKTogc3RyaW5nIHtcbiAgICByZXR1cm4gYHske2Zvcm1hdEkxOG5QbGFjZWhvbGRlck5hbWUodmFsdWUsIC8qIHVzZUNhbWVsQ2FzZSAqLyBmYWxzZSl9fWA7XG4gIH1cbn1cblxuY29uc3Qgc2VyaWFsaXplciA9IG5ldyBJY3VTZXJpYWxpemVyVmlzaXRvcigpO1xuZXhwb3J0IGZ1bmN0aW9uIHNlcmlhbGl6ZUljdU5vZGUoaWN1OiBpMThuLkljdSk6IHN0cmluZyB7XG4gIHJldHVybiBpY3UudmlzaXQoc2VyaWFsaXplcik7XG59XG4iXX0=