import { __decorate, __metadata } from "tslib";
import { Input, HostBinding, ElementRef, Renderer2, OnInit, OnDestroy, Component, ViewEncapsulation, } from '@angular/core';
import { Utils } from '../utils';
var defaultIdNumber = 0;
var MdbSuccessDirective = /** @class */ (function () {
    function MdbSuccessDirective(el, renderer) {
        this.el = el;
        this.renderer = renderer;
        this.id = "mdb-success-" + defaultIdNumber++;
        this.successMsg = true;
        this.messageId = this.id;
        this.utils = new Utils();
    }
    MdbSuccessDirective.prototype._calculateMarginTop = function () {
        var parent = this.el.nativeElement.parentNode.querySelector('.form-check');
        var heightParent = parent ? parent.offsetHeight : null;
        if (heightParent) {
            var margin = heightParent / 12.5;
            this.el.nativeElement.style.top = heightParent + heightParent / margin + "px";
        }
    };
    MdbSuccessDirective.prototype.ngOnInit = function () {
        var _this = this;
        this.prefix = this.el.nativeElement.parentNode.querySelector('.prefix');
        if (this.prefix) {
            this.prefix.classList.add('success-message');
        }
        var textarea = this.utils.getClosestEl(this.el.nativeElement, '.md-textarea');
        this._calculateMarginTop();
        if (textarea) {
            var height_1 = textarea.offsetHeight + 4 + 'px';
            this.renderer.setStyle(this.el.nativeElement, 'top', height_1);
            this.textareaListenFunction = this.renderer.listen(textarea, 'keyup', function () {
                height_1 = textarea.offsetHeight + 4 + 'px';
                _this.renderer.setStyle(_this.el.nativeElement, 'top', height_1);
            });
        }
    };
    MdbSuccessDirective.prototype.ngOnDestroy = function () {
        if (this.textareaListenFunction) {
            this.textareaListenFunction();
        }
        if (this.prefix) {
            this.prefix.classList.remove('success-message');
        }
    };
    MdbSuccessDirective.ctorParameters = function () { return [
        { type: ElementRef },
        { type: Renderer2 }
    ]; };
    __decorate([
        Input(),
        __metadata("design:type", Object)
    ], MdbSuccessDirective.prototype, "id", void 0);
    __decorate([
        HostBinding('class.success-message'),
        __metadata("design:type", Object)
    ], MdbSuccessDirective.prototype, "successMsg", void 0);
    __decorate([
        HostBinding('attr.id'),
        __metadata("design:type", Object)
    ], MdbSuccessDirective.prototype, "messageId", void 0);
    MdbSuccessDirective = __decorate([
        Component({
            selector: 'mdb-success',
            template: '<ng-content></ng-content>',
            encapsulation: ViewEncapsulation.None,
            styles: [".error-message,.success-message{position:absolute;top:40px;left:0;font-size:.8rem}textarea~.error-message,textarea~.success-message{top:unset;bottom:-20px}.error-message{color:#f44336}.success-message{color:#00c851}"]
        })
        // tslint:disable-next-line:component-class-suffix
        ,
        __metadata("design:paramtypes", [ElementRef, Renderer2])
    ], MdbSuccessDirective);
    return MdbSuccessDirective;
}());
export { MdbSuccessDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic3VjY2Vzcy5kaXJlY3RpdmUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL2lucHV0LXV0aWxpdGllcy9zdWNjZXNzLmRpcmVjdGl2ZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUEsT0FBTyxFQUNMLEtBQUssRUFDTCxXQUFXLEVBQ1gsVUFBVSxFQUNWLFNBQVMsRUFDVCxNQUFNLEVBQ04sU0FBUyxFQUNULFNBQVMsRUFDVCxpQkFBaUIsR0FDbEIsTUFBTSxlQUFlLENBQUM7QUFDdkIsT0FBTyxFQUFFLEtBQUssRUFBRSxNQUFNLFVBQVUsQ0FBQztBQUVqQyxJQUFJLGVBQWUsR0FBRyxDQUFDLENBQUM7QUFTeEI7SUFXRSw2QkFBb0IsRUFBYyxFQUFVLFFBQW1CO1FBQTNDLE9BQUUsR0FBRixFQUFFLENBQVk7UUFBVSxhQUFRLEdBQVIsUUFBUSxDQUFXO1FBVHRELE9BQUUsR0FBRyxpQkFBZSxlQUFlLEVBQUksQ0FBQztRQUVYLGVBQVUsR0FBRyxJQUFJLENBQUM7UUFDaEMsY0FBUyxHQUFHLElBQUksQ0FBQyxFQUFFLENBQUM7UUFJcEMsVUFBSyxHQUFVLElBQUksS0FBSyxFQUFFLENBQUM7SUFFK0IsQ0FBQztJQUUzRCxpREFBbUIsR0FBM0I7UUFDRSxJQUFNLE1BQU0sR0FBRyxJQUFJLENBQUMsRUFBRSxDQUFDLGFBQWEsQ0FBQyxVQUFVLENBQUMsYUFBYSxDQUFDLGFBQWEsQ0FBQyxDQUFDO1FBQzdFLElBQU0sWUFBWSxHQUFHLE1BQU0sQ0FBQyxDQUFDLENBQUMsTUFBTSxDQUFDLFlBQVksQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDO1FBQ3pELElBQUksWUFBWSxFQUFFO1lBQ2hCLElBQU0sTUFBTSxHQUFHLFlBQVksR0FBRyxJQUFJLENBQUM7WUFDbkMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxhQUFhLENBQUMsS0FBSyxDQUFDLEdBQUcsR0FBTSxZQUFZLEdBQUcsWUFBWSxHQUFHLE1BQU0sT0FBSSxDQUFDO1NBQy9FO0lBQ0gsQ0FBQztJQUVELHNDQUFRLEdBQVI7UUFBQSxpQkFrQkM7UUFqQkMsSUFBSSxDQUFDLE1BQU0sR0FBRyxJQUFJLENBQUMsRUFBRSxDQUFDLGFBQWEsQ0FBQyxVQUFVLENBQUMsYUFBYSxDQUFDLFNBQVMsQ0FBQyxDQUFDO1FBQ3hFLElBQUksSUFBSSxDQUFDLE1BQU0sRUFBRTtZQUNmLElBQUksQ0FBQyxNQUFNLENBQUMsU0FBUyxDQUFDLEdBQUcsQ0FBQyxpQkFBaUIsQ0FBQyxDQUFDO1NBQzlDO1FBRUQsSUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxZQUFZLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxhQUFhLEVBQUUsY0FBYyxDQUFDLENBQUM7UUFFaEYsSUFBSSxDQUFDLG1CQUFtQixFQUFFLENBQUM7UUFDM0IsSUFBSSxRQUFRLEVBQUU7WUFDWixJQUFJLFFBQU0sR0FBRyxRQUFRLENBQUMsWUFBWSxHQUFHLENBQUMsR0FBRyxJQUFJLENBQUM7WUFDOUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxhQUFhLEVBQUUsS0FBSyxFQUFFLFFBQU0sQ0FBQyxDQUFDO1lBRTdELElBQUksQ0FBQyxzQkFBc0IsR0FBRyxJQUFJLENBQUMsUUFBUSxDQUFDLE1BQU0sQ0FBQyxRQUFRLEVBQUUsT0FBTyxFQUFFO2dCQUNwRSxRQUFNLEdBQUcsUUFBUSxDQUFDLFlBQVksR0FBRyxDQUFDLEdBQUcsSUFBSSxDQUFDO2dCQUMxQyxLQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxLQUFJLENBQUMsRUFBRSxDQUFDLGFBQWEsRUFBRSxLQUFLLEVBQUUsUUFBTSxDQUFDLENBQUM7WUFDL0QsQ0FBQyxDQUFDLENBQUM7U0FDSjtJQUNILENBQUM7SUFFRCx5Q0FBVyxHQUFYO1FBQ0UsSUFBSSxJQUFJLENBQUMsc0JBQXNCLEVBQUU7WUFDL0IsSUFBSSxDQUFDLHNCQUFzQixFQUFFLENBQUM7U0FDL0I7UUFDRCxJQUFJLElBQUksQ0FBQyxNQUFNLEVBQUU7WUFDZixJQUFJLENBQUMsTUFBTSxDQUFDLFNBQVMsQ0FBQyxNQUFNLENBQUMsaUJBQWlCLENBQUMsQ0FBQztTQUNqRDtJQUNILENBQUM7O2dCQXRDdUIsVUFBVTtnQkFBb0IsU0FBUzs7SUFUdEQ7UUFBUixLQUFLLEVBQUU7O21EQUF5QztJQUVYO1FBQXJDLFdBQVcsQ0FBQyx1QkFBdUIsQ0FBQzs7MkRBQW1CO0lBQ2hDO1FBQXZCLFdBQVcsQ0FBQyxTQUFTLENBQUM7OzBEQUFxQjtJQUxqQyxtQkFBbUI7UUFQL0IsU0FBUyxDQUFDO1lBQ1QsUUFBUSxFQUFFLGFBQWE7WUFDdkIsUUFBUSxFQUFFLDJCQUEyQjtZQUVyQyxhQUFhLEVBQUUsaUJBQWlCLENBQUMsSUFBSTs7U0FDdEMsQ0FBQztRQUNGLGtEQUFrRDs7eUNBWXhCLFVBQVUsRUFBb0IsU0FBUztPQVhwRCxtQkFBbUIsQ0FrRC9CO0lBQUQsMEJBQUM7Q0FBQSxBQWxERCxJQWtEQztTQWxEWSxtQkFBbUIiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1xuICBJbnB1dCxcbiAgSG9zdEJpbmRpbmcsXG4gIEVsZW1lbnRSZWYsXG4gIFJlbmRlcmVyMixcbiAgT25Jbml0LFxuICBPbkRlc3Ryb3ksXG4gIENvbXBvbmVudCxcbiAgVmlld0VuY2Fwc3VsYXRpb24sXG59IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgVXRpbHMgfSBmcm9tICcuLi91dGlscyc7XG5cbmxldCBkZWZhdWx0SWROdW1iZXIgPSAwO1xuXG5AQ29tcG9uZW50KHtcbiAgc2VsZWN0b3I6ICdtZGItc3VjY2VzcycsXG4gIHRlbXBsYXRlOiAnPG5nLWNvbnRlbnQ+PC9uZy1jb250ZW50PicsXG4gIHN0eWxlVXJsczogWycuL2lucHV0LXV0aWxpdGllcy1tb2R1bGUuc2NzcyddLFxuICBlbmNhcHN1bGF0aW9uOiBWaWV3RW5jYXBzdWxhdGlvbi5Ob25lLFxufSlcbi8vIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTpjb21wb25lbnQtY2xhc3Mtc3VmZml4XG5leHBvcnQgY2xhc3MgTWRiU3VjY2Vzc0RpcmVjdGl2ZSBpbXBsZW1lbnRzIE9uSW5pdCwgT25EZXN0cm95IHtcbiAgcHJlZml4OiBIVE1MRWxlbWVudDtcbiAgQElucHV0KCkgaWQgPSBgbWRiLXN1Y2Nlc3MtJHtkZWZhdWx0SWROdW1iZXIrK31gO1xuXG4gIEBIb3N0QmluZGluZygnY2xhc3Muc3VjY2Vzcy1tZXNzYWdlJykgc3VjY2Vzc01zZyA9IHRydWU7XG4gIEBIb3N0QmluZGluZygnYXR0ci5pZCcpIG1lc3NhZ2VJZCA9IHRoaXMuaWQ7XG5cbiAgdGV4dGFyZWFMaXN0ZW5GdW5jdGlvbjogRnVuY3Rpb247XG5cbiAgcHJpdmF0ZSB1dGlsczogVXRpbHMgPSBuZXcgVXRpbHMoKTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGVsOiBFbGVtZW50UmVmLCBwcml2YXRlIHJlbmRlcmVyOiBSZW5kZXJlcjIpIHt9XG5cbiAgcHJpdmF0ZSBfY2FsY3VsYXRlTWFyZ2luVG9wKCkge1xuICAgIGNvbnN0IHBhcmVudCA9IHRoaXMuZWwubmF0aXZlRWxlbWVudC5wYXJlbnROb2RlLnF1ZXJ5U2VsZWN0b3IoJy5mb3JtLWNoZWNrJyk7XG4gICAgY29uc3QgaGVpZ2h0UGFyZW50ID0gcGFyZW50ID8gcGFyZW50Lm9mZnNldEhlaWdodCA6IG51bGw7XG4gICAgaWYgKGhlaWdodFBhcmVudCkge1xuICAgICAgY29uc3QgbWFyZ2luID0gaGVpZ2h0UGFyZW50IC8gMTIuNTtcbiAgICAgIHRoaXMuZWwubmF0aXZlRWxlbWVudC5zdHlsZS50b3AgPSBgJHtoZWlnaHRQYXJlbnQgKyBoZWlnaHRQYXJlbnQgLyBtYXJnaW59cHhgO1xuICAgIH1cbiAgfVxuXG4gIG5nT25Jbml0KCkge1xuICAgIHRoaXMucHJlZml4ID0gdGhpcy5lbC5uYXRpdmVFbGVtZW50LnBhcmVudE5vZGUucXVlcnlTZWxlY3RvcignLnByZWZpeCcpO1xuICAgIGlmICh0aGlzLnByZWZpeCkge1xuICAgICAgdGhpcy5wcmVmaXguY2xhc3NMaXN0LmFkZCgnc3VjY2Vzcy1tZXNzYWdlJyk7XG4gICAgfVxuXG4gICAgY29uc3QgdGV4dGFyZWEgPSB0aGlzLnV0aWxzLmdldENsb3Nlc3RFbCh0aGlzLmVsLm5hdGl2ZUVsZW1lbnQsICcubWQtdGV4dGFyZWEnKTtcblxuICAgIHRoaXMuX2NhbGN1bGF0ZU1hcmdpblRvcCgpO1xuICAgIGlmICh0ZXh0YXJlYSkge1xuICAgICAgbGV0IGhlaWdodCA9IHRleHRhcmVhLm9mZnNldEhlaWdodCArIDQgKyAncHgnO1xuICAgICAgdGhpcy5yZW5kZXJlci5zZXRTdHlsZSh0aGlzLmVsLm5hdGl2ZUVsZW1lbnQsICd0b3AnLCBoZWlnaHQpO1xuXG4gICAgICB0aGlzLnRleHRhcmVhTGlzdGVuRnVuY3Rpb24gPSB0aGlzLnJlbmRlcmVyLmxpc3Rlbih0ZXh0YXJlYSwgJ2tleXVwJywgKCkgPT4ge1xuICAgICAgICBoZWlnaHQgPSB0ZXh0YXJlYS5vZmZzZXRIZWlnaHQgKyA0ICsgJ3B4JztcbiAgICAgICAgdGhpcy5yZW5kZXJlci5zZXRTdHlsZSh0aGlzLmVsLm5hdGl2ZUVsZW1lbnQsICd0b3AnLCBoZWlnaHQpO1xuICAgICAgfSk7XG4gICAgfVxuICB9XG5cbiAgbmdPbkRlc3Ryb3koKSB7XG4gICAgaWYgKHRoaXMudGV4dGFyZWFMaXN0ZW5GdW5jdGlvbikge1xuICAgICAgdGhpcy50ZXh0YXJlYUxpc3RlbkZ1bmN0aW9uKCk7XG4gICAgfVxuICAgIGlmICh0aGlzLnByZWZpeCkge1xuICAgICAgdGhpcy5wcmVmaXguY2xhc3NMaXN0LnJlbW92ZSgnc3VjY2Vzcy1tZXNzYWdlJyk7XG4gICAgfVxuICB9XG59XG4iXX0=