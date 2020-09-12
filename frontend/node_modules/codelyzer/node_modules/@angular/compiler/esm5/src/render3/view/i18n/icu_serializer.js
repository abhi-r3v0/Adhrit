/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { formatI18nPlaceholderName } from './util';
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
        return "{" + formatI18nPlaceholderName(value, /* useCamelCase */ false) + "}";
    };
    return IcuSerializerVisitor;
}());
var serializer = new IcuSerializerVisitor();
export function serializeIcuNode(icu) {
    return icu.visit(serializer);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaWN1X3NlcmlhbGl6ZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci9zcmMvcmVuZGVyMy92aWV3L2kxOG4vaWN1X3NlcmlhbGl6ZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBSUgsT0FBTyxFQUFDLHlCQUF5QixFQUFDLE1BQU0sUUFBUSxDQUFDO0FBRWpEO0lBQUE7SUE2QkEsQ0FBQztJQTVCQyx3Q0FBUyxHQUFULFVBQVUsSUFBZSxJQUFTLE9BQU8sSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUM7SUFFdEQsNkNBQWMsR0FBZCxVQUFlLFNBQXlCO1FBQXhDLGlCQUVDO1FBREMsT0FBTyxTQUFTLENBQUMsUUFBUSxDQUFDLEdBQUcsQ0FBQyxVQUFBLEtBQUssSUFBSSxPQUFBLEtBQUssQ0FBQyxLQUFLLENBQUMsS0FBSSxDQUFDLEVBQWpCLENBQWlCLENBQUMsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLENBQUM7SUFDckUsQ0FBQztJQUVELHVDQUFRLEdBQVIsVUFBUyxHQUFhO1FBQXRCLGlCQUtDO1FBSkMsSUFBTSxRQUFRLEdBQ1YsTUFBTSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsS0FBSyxDQUFDLENBQUMsR0FBRyxDQUFDLFVBQUMsQ0FBUyxJQUFLLE9BQUcsQ0FBQyxVQUFLLEdBQUcsQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUMsS0FBSyxDQUFDLEtBQUksQ0FBQyxNQUFHLEVBQXBDLENBQW9DLENBQUMsQ0FBQztRQUNwRixJQUFNLE1BQU0sR0FBRyxNQUFJLEdBQUcsQ0FBQyxxQkFBcUIsVUFBSyxHQUFHLENBQUMsSUFBSSxVQUFLLFFBQVEsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLE1BQUcsQ0FBQztRQUNwRixPQUFPLE1BQU0sQ0FBQztJQUNoQixDQUFDO0lBRUQsa0RBQW1CLEdBQW5CLFVBQW9CLEVBQXVCO1FBQTNDLGlCQUlDO1FBSEMsT0FBTyxFQUFFLENBQUMsTUFBTSxDQUFDLENBQUM7WUFDZCxJQUFJLENBQUMsUUFBUSxDQUFDLEVBQUUsQ0FBQyxTQUFTLENBQUMsQ0FBQyxDQUFDO1lBQzdCLEtBQUcsSUFBSSxDQUFDLFFBQVEsQ0FBQyxFQUFFLENBQUMsU0FBUyxDQUFDLEdBQUcsRUFBRSxDQUFDLFFBQVEsQ0FBQyxHQUFHLENBQUMsVUFBQSxLQUFLLElBQUksT0FBQSxLQUFLLENBQUMsS0FBSyxDQUFDLEtBQUksQ0FBQyxFQUFqQixDQUFpQixDQUFDLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsRUFBRSxDQUFDLFNBQVMsQ0FBRyxDQUFDO0lBQzVILENBQUM7SUFFRCwrQ0FBZ0IsR0FBaEIsVUFBaUIsRUFBb0IsSUFBUyxPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUU5RSxrREFBbUIsR0FBbkIsVUFBb0IsRUFBdUIsRUFBRSxPQUFhO1FBQ3hELE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDaEMsQ0FBQztJQUVPLHVDQUFRLEdBQWhCLFVBQWlCLEtBQWE7UUFDNUIsT0FBTyxNQUFJLHlCQUF5QixDQUFDLEtBQUssRUFBRSxrQkFBa0IsQ0FBQyxLQUFLLENBQUMsTUFBRyxDQUFDO0lBQzNFLENBQUM7SUFDSCwyQkFBQztBQUFELENBQUMsQUE3QkQsSUE2QkM7QUFFRCxJQUFNLFVBQVUsR0FBRyxJQUFJLG9CQUFvQixFQUFFLENBQUM7QUFDOUMsTUFBTSxVQUFVLGdCQUFnQixDQUFDLEdBQWE7SUFDNUMsT0FBTyxHQUFHLENBQUMsS0FBSyxDQUFDLFVBQVUsQ0FBQyxDQUFDO0FBQy9CLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCAqIGFzIGkxOG4gZnJvbSAnLi4vLi4vLi4vaTE4bi9pMThuX2FzdCc7XG5cbmltcG9ydCB7Zm9ybWF0STE4blBsYWNlaG9sZGVyTmFtZX0gZnJvbSAnLi91dGlsJztcblxuY2xhc3MgSWN1U2VyaWFsaXplclZpc2l0b3IgaW1wbGVtZW50cyBpMThuLlZpc2l0b3Ige1xuICB2aXNpdFRleHQodGV4dDogaTE4bi5UZXh0KTogYW55IHsgcmV0dXJuIHRleHQudmFsdWU7IH1cblxuICB2aXNpdENvbnRhaW5lcihjb250YWluZXI6IGkxOG4uQ29udGFpbmVyKTogYW55IHtcbiAgICByZXR1cm4gY29udGFpbmVyLmNoaWxkcmVuLm1hcChjaGlsZCA9PiBjaGlsZC52aXNpdCh0aGlzKSkuam9pbignJyk7XG4gIH1cblxuICB2aXNpdEljdShpY3U6IGkxOG4uSWN1KTogYW55IHtcbiAgICBjb25zdCBzdHJDYXNlcyA9XG4gICAgICAgIE9iamVjdC5rZXlzKGljdS5jYXNlcykubWFwKChrOiBzdHJpbmcpID0+IGAke2t9IHske2ljdS5jYXNlc1trXS52aXNpdCh0aGlzKX19YCk7XG4gICAgY29uc3QgcmVzdWx0ID0gYHske2ljdS5leHByZXNzaW9uUGxhY2Vob2xkZXJ9LCAke2ljdS50eXBlfSwgJHtzdHJDYXNlcy5qb2luKCcgJyl9fWA7XG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIHZpc2l0VGFnUGxhY2Vob2xkZXIocGg6IGkxOG4uVGFnUGxhY2Vob2xkZXIpOiBhbnkge1xuICAgIHJldHVybiBwaC5pc1ZvaWQgP1xuICAgICAgICB0aGlzLmZvcm1hdFBoKHBoLnN0YXJ0TmFtZSkgOlxuICAgICAgICBgJHt0aGlzLmZvcm1hdFBoKHBoLnN0YXJ0TmFtZSl9JHtwaC5jaGlsZHJlbi5tYXAoY2hpbGQgPT4gY2hpbGQudmlzaXQodGhpcykpLmpvaW4oJycpfSR7dGhpcy5mb3JtYXRQaChwaC5jbG9zZU5hbWUpfWA7XG4gIH1cblxuICB2aXNpdFBsYWNlaG9sZGVyKHBoOiBpMThuLlBsYWNlaG9sZGVyKTogYW55IHsgcmV0dXJuIHRoaXMuZm9ybWF0UGgocGgubmFtZSk7IH1cblxuICB2aXNpdEljdVBsYWNlaG9sZGVyKHBoOiBpMThuLkljdVBsYWNlaG9sZGVyLCBjb250ZXh0PzogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy5mb3JtYXRQaChwaC5uYW1lKTtcbiAgfVxuXG4gIHByaXZhdGUgZm9ybWF0UGgodmFsdWU6IHN0cmluZyk6IHN0cmluZyB7XG4gICAgcmV0dXJuIGB7JHtmb3JtYXRJMThuUGxhY2Vob2xkZXJOYW1lKHZhbHVlLCAvKiB1c2VDYW1lbENhc2UgKi8gZmFsc2UpfX1gO1xuICB9XG59XG5cbmNvbnN0IHNlcmlhbGl6ZXIgPSBuZXcgSWN1U2VyaWFsaXplclZpc2l0b3IoKTtcbmV4cG9ydCBmdW5jdGlvbiBzZXJpYWxpemVJY3VOb2RlKGljdTogaTE4bi5JY3UpOiBzdHJpbmcge1xuICByZXR1cm4gaWN1LnZpc2l0KHNlcmlhbGl6ZXIpO1xufVxuIl19