import { window, document } from './facade/browser';
var Utils = /** @class */ (function () {
    function Utils() {
    }
    Utils.reflow = function (element) {
        (function (bs) { return bs; })(element.offsetHeight);
    };
    // source: https://github.com/jquery/jquery/blob/master/src/css/var/getStyles.js
    Utils.getStyles = function (elem) {
        // Support: IE <=11 only, Firefox <=30 (#15098, #14150)
        // IE throws on elements created in popups
        // FF meanwhile throws on frame elements through "defaultView.getComputedStyle"
        var view = elem.ownerDocument.defaultView;
        if (!view || !view.opener) {
            view = window;
        }
        return view.getComputedStyle(elem);
    };
    Utils.prototype.focusTrapModal = function (event, el) {
        var focusableElements;
        var firstFocusableElement;
        var lastFocusableElement;
        var KEYCODE_TAB = 9;
        /*tslint:disable-next-line:max-line-length */
        focusableElements = el.nativeElement.querySelectorAll('a[href], button, textarea, input, select, form, mdb-select, mdb-auto-completer, mdb-checkbox, mdb-range-input');
        firstFocusableElement = focusableElements[0];
        lastFocusableElement = focusableElements[focusableElements.length - 1];
        if (event.key === 'Tab' || event.keyCode === KEYCODE_TAB) {
            if (event.shiftKey) {
                if (document && document.activeElement === firstFocusableElement) {
                    lastFocusableElement.focus();
                    event.preventDefault();
                }
            }
            else {
                if (document && document.activeElement === lastFocusableElement) {
                    firstFocusableElement.focus();
                    event.preventDefault();
                }
            }
        }
    };
    Utils.prototype.getClosestEl = function (el, selector) {
        for (; el && el !== document; el = el.parentNode) {
            if (el.matches && el.matches(selector)) {
                return el;
            }
        }
        return null;
    };
    Utils.prototype.getCoords = function (elem) {
        var box = elem.getBoundingClientRect();
        var body = document.body;
        var docEl = document.documentElement;
        var scrollTop = window.pageYOffset || docEl.scrollTop || body.scrollTop;
        var scrollLeft = window.pageXOffset || docEl.scrollLeft || body.scrollLeft;
        var clientTop = docEl.clientTop || body.clientTop || 0;
        var clientLeft = docEl.clientLeft || body.clientLeft || 0;
        var top = box.top + scrollTop - clientTop;
        var left = box.left + scrollLeft - clientLeft;
        return { top: Math.round(top), left: Math.round(left) };
    };
    return Utils;
}());
export { Utils };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbHMuY2xhc3MuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL3V0aWxzL3V0aWxzLmNsYXNzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBLE9BQU8sRUFBRSxNQUFNLEVBQUUsUUFBUSxFQUFFLE1BQU0sa0JBQWtCLENBQUM7QUFHcEQ7SUFDRTtJQUVBLENBQUM7SUFDYSxZQUFNLEdBQXBCLFVBQXFCLE9BQVk7UUFDL0IsQ0FBQyxVQUFDLEVBQU8sSUFBVyxPQUFBLEVBQUUsRUFBRixDQUFFLENBQUMsQ0FBQyxPQUFPLENBQUMsWUFBWSxDQUFDLENBQUM7SUFDaEQsQ0FBQztJQUVELGdGQUFnRjtJQUNsRSxlQUFTLEdBQXZCLFVBQXdCLElBQVM7UUFDL0IsdURBQXVEO1FBQ3ZELDBDQUEwQztRQUMxQywrRUFBK0U7UUFDL0UsSUFBSSxJQUFJLEdBQUcsSUFBSSxDQUFDLGFBQWEsQ0FBQyxXQUFXLENBQUM7UUFFMUMsSUFBSSxDQUFDLElBQUksSUFBSSxDQUFDLElBQUksQ0FBQyxNQUFNLEVBQUU7WUFDekIsSUFBSSxHQUFHLE1BQU0sQ0FBQztTQUNmO1FBRUQsT0FBTyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDckMsQ0FBQztJQUVNLDhCQUFjLEdBQXJCLFVBQXNCLEtBQTBCLEVBQUUsRUFBYztRQUM5RCxJQUFJLGlCQUFzQixDQUFDO1FBQzNCLElBQUkscUJBQTBCLENBQUM7UUFDL0IsSUFBSSxvQkFBeUIsQ0FBQztRQUU5QixJQUFNLFdBQVcsR0FBRyxDQUFDLENBQUM7UUFDdEIsNkNBQTZDO1FBQzdDLGlCQUFpQixHQUFHLEVBQUUsQ0FBQyxhQUFhLENBQUMsZ0JBQWdCLENBQUMsK0dBQStHLENBQUMsQ0FBQztRQUN2SyxxQkFBcUIsR0FBRyxpQkFBaUIsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUM3QyxvQkFBb0IsR0FBRyxpQkFBaUIsQ0FBQyxpQkFBaUIsQ0FBQyxNQUFNLEdBQUcsQ0FBQyxDQUFDLENBQUM7UUFFdkUsSUFBSSxLQUFLLENBQUMsR0FBRyxLQUFLLEtBQUssSUFBSSxLQUFLLENBQUMsT0FBTyxLQUFLLFdBQVcsRUFBRTtZQUN4RCxJQUFJLEtBQUssQ0FBQyxRQUFRLEVBQUU7Z0JBQ2xCLElBQUksUUFBUSxJQUFJLFFBQVEsQ0FBQyxhQUFhLEtBQUsscUJBQXFCLEVBQUU7b0JBQ2hFLG9CQUFvQixDQUFDLEtBQUssRUFBRSxDQUFDO29CQUM3QixLQUFLLENBQUMsY0FBYyxFQUFFLENBQUM7aUJBQ3hCO2FBQ0Y7aUJBQU07Z0JBQ0wsSUFBSSxRQUFRLElBQUksUUFBUSxDQUFDLGFBQWEsS0FBSyxvQkFBb0IsRUFBRTtvQkFDL0QscUJBQXFCLENBQUMsS0FBSyxFQUFFLENBQUM7b0JBQzlCLEtBQUssQ0FBQyxjQUFjLEVBQUUsQ0FBQztpQkFDeEI7YUFDRjtTQUNGO0lBQ0gsQ0FBQztJQUVNLDRCQUFZLEdBQW5CLFVBQW9CLEVBQU8sRUFBRSxRQUFnQjtRQUMzQyxPQUFPLEVBQUUsSUFBSSxFQUFFLEtBQUssUUFBUSxFQUFFLEVBQUUsR0FBRyxFQUFFLENBQUMsVUFBVSxFQUFFO1lBQ2hELElBQUksRUFBRSxDQUFDLE9BQU8sSUFBSSxFQUFFLENBQUMsT0FBTyxDQUFDLFFBQVEsQ0FBQyxFQUFFO2dCQUN0QyxPQUFPLEVBQUUsQ0FBQzthQUNYO1NBQ0Y7UUFDRCxPQUFPLElBQUksQ0FBQztJQUNkLENBQUM7SUFFTSx5QkFBUyxHQUFoQixVQUFpQixJQUFTO1FBQ3RCLElBQU0sR0FBRyxHQUFlLElBQUksQ0FBQyxxQkFBcUIsRUFBRSxDQUFDO1FBQ3JELElBQU0sSUFBSSxHQUFRLFFBQVEsQ0FBQyxJQUFJLENBQUM7UUFDaEMsSUFBTSxLQUFLLEdBQVEsUUFBUSxDQUFDLGVBQWUsQ0FBQztRQUU1QyxJQUFNLFNBQVMsR0FBVyxNQUFNLENBQUMsV0FBVyxJQUFJLEtBQUssQ0FBQyxTQUFTLElBQUksSUFBSSxDQUFDLFNBQVMsQ0FBQztRQUNsRixJQUFNLFVBQVUsR0FBVyxNQUFNLENBQUMsV0FBVyxJQUFJLEtBQUssQ0FBQyxVQUFVLElBQUksSUFBSSxDQUFDLFVBQVUsQ0FBQztRQUVyRixJQUFNLFNBQVMsR0FBVyxLQUFLLENBQUMsU0FBUyxJQUFJLElBQUksQ0FBQyxTQUFTLElBQUksQ0FBQyxDQUFDO1FBQ2pFLElBQU0sVUFBVSxHQUFXLEtBQUssQ0FBQyxVQUFVLElBQUksSUFBSSxDQUFDLFVBQVUsSUFBSSxDQUFDLENBQUM7UUFFcEUsSUFBTSxHQUFHLEdBQVcsR0FBRyxDQUFDLEdBQUcsR0FBRyxTQUFTLEdBQUcsU0FBUyxDQUFDO1FBQ3BELElBQU0sSUFBSSxHQUFXLEdBQUcsQ0FBQyxJQUFJLEdBQUcsVUFBVSxHQUFHLFVBQVUsQ0FBQztRQUV4RCxPQUFPLEVBQUMsR0FBRyxFQUFFLElBQUksQ0FBQyxLQUFLLENBQUMsR0FBRyxDQUFDLEVBQUUsSUFBSSxFQUFFLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLEVBQUMsQ0FBQztJQUMxRCxDQUFDO0lBQ0gsWUFBQztBQUFELENBQUMsQUF6RUQsSUF5RUMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyB3aW5kb3csIGRvY3VtZW50IH0gZnJvbSAnLi9mYWNhZGUvYnJvd3Nlcic7XG5pbXBvcnQge0VsZW1lbnRSZWZ9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG5leHBvcnQgY2xhc3MgVXRpbHMge1xuICBjb25zdHJ1Y3RvcigpIHtcblxuICB9XG4gIHB1YmxpYyBzdGF0aWMgcmVmbG93KGVsZW1lbnQ6IGFueSk6IHZvaWQge1xuICAgICgoYnM6IGFueSk6IHZvaWQgPT4gYnMpKGVsZW1lbnQub2Zmc2V0SGVpZ2h0KTtcbiAgfVxuXG4gIC8vIHNvdXJjZTogaHR0cHM6Ly9naXRodWIuY29tL2pxdWVyeS9qcXVlcnkvYmxvYi9tYXN0ZXIvc3JjL2Nzcy92YXIvZ2V0U3R5bGVzLmpzXG4gIHB1YmxpYyBzdGF0aWMgZ2V0U3R5bGVzKGVsZW06IGFueSk6IGFueSB7XG4gICAgLy8gU3VwcG9ydDogSUUgPD0xMSBvbmx5LCBGaXJlZm94IDw9MzAgKCMxNTA5OCwgIzE0MTUwKVxuICAgIC8vIElFIHRocm93cyBvbiBlbGVtZW50cyBjcmVhdGVkIGluIHBvcHVwc1xuICAgIC8vIEZGIG1lYW53aGlsZSB0aHJvd3Mgb24gZnJhbWUgZWxlbWVudHMgdGhyb3VnaCBcImRlZmF1bHRWaWV3LmdldENvbXB1dGVkU3R5bGVcIlxuICAgIGxldCB2aWV3ID0gZWxlbS5vd25lckRvY3VtZW50LmRlZmF1bHRWaWV3O1xuXG4gICAgaWYgKCF2aWV3IHx8ICF2aWV3Lm9wZW5lcikge1xuICAgICAgdmlldyA9IHdpbmRvdztcbiAgICB9XG5cbiAgICByZXR1cm4gdmlldy5nZXRDb21wdXRlZFN0eWxlKGVsZW0pO1xuICB9XG5cbiAgcHVibGljIGZvY3VzVHJhcE1vZGFsKGV2ZW50OiBLZXlib2FyZEV2ZW50IHwgYW55LCBlbDogRWxlbWVudFJlZikge1xuICAgIGxldCBmb2N1c2FibGVFbGVtZW50czogYW55O1xuICAgIGxldCBmaXJzdEZvY3VzYWJsZUVsZW1lbnQ6IGFueTtcbiAgICBsZXQgbGFzdEZvY3VzYWJsZUVsZW1lbnQ6IGFueTtcblxuICAgIGNvbnN0IEtFWUNPREVfVEFCID0gOTtcbiAgICAvKnRzbGludDpkaXNhYmxlLW5leHQtbGluZTptYXgtbGluZS1sZW5ndGggKi9cbiAgICBmb2N1c2FibGVFbGVtZW50cyA9IGVsLm5hdGl2ZUVsZW1lbnQucXVlcnlTZWxlY3RvckFsbCgnYVtocmVmXSwgYnV0dG9uLCB0ZXh0YXJlYSwgaW5wdXQsIHNlbGVjdCwgZm9ybSwgbWRiLXNlbGVjdCwgbWRiLWF1dG8tY29tcGxldGVyLCBtZGItY2hlY2tib3gsIG1kYi1yYW5nZS1pbnB1dCcpO1xuICAgIGZpcnN0Rm9jdXNhYmxlRWxlbWVudCA9IGZvY3VzYWJsZUVsZW1lbnRzWzBdO1xuICAgIGxhc3RGb2N1c2FibGVFbGVtZW50ID0gZm9jdXNhYmxlRWxlbWVudHNbZm9jdXNhYmxlRWxlbWVudHMubGVuZ3RoIC0gMV07XG5cbiAgICBpZiAoZXZlbnQua2V5ID09PSAnVGFiJyB8fCBldmVudC5rZXlDb2RlID09PSBLRVlDT0RFX1RBQikge1xuICAgICAgaWYgKGV2ZW50LnNoaWZ0S2V5KSB7XG4gICAgICAgIGlmIChkb2N1bWVudCAmJiBkb2N1bWVudC5hY3RpdmVFbGVtZW50ID09PSBmaXJzdEZvY3VzYWJsZUVsZW1lbnQpIHtcbiAgICAgICAgICBsYXN0Rm9jdXNhYmxlRWxlbWVudC5mb2N1cygpO1xuICAgICAgICAgIGV2ZW50LnByZXZlbnREZWZhdWx0KCk7XG4gICAgICAgIH1cbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIGlmIChkb2N1bWVudCAmJiBkb2N1bWVudC5hY3RpdmVFbGVtZW50ID09PSBsYXN0Rm9jdXNhYmxlRWxlbWVudCkge1xuICAgICAgICAgIGZpcnN0Rm9jdXNhYmxlRWxlbWVudC5mb2N1cygpO1xuICAgICAgICAgIGV2ZW50LnByZXZlbnREZWZhdWx0KCk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICBwdWJsaWMgZ2V0Q2xvc2VzdEVsKGVsOiBhbnksIHNlbGVjdG9yOiBzdHJpbmcpIHtcbiAgICBmb3IgKDsgZWwgJiYgZWwgIT09IGRvY3VtZW50OyBlbCA9IGVsLnBhcmVudE5vZGUpIHtcbiAgICAgIGlmIChlbC5tYXRjaGVzICYmIGVsLm1hdGNoZXMoc2VsZWN0b3IpKSB7XG4gICAgICAgIHJldHVybiBlbDtcbiAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBwdWJsaWMgZ2V0Q29vcmRzKGVsZW06IGFueSk6IGFueSB7XG4gICAgICBjb25zdCBib3g6IENsaWVudFJlY3QgPSBlbGVtLmdldEJvdW5kaW5nQ2xpZW50UmVjdCgpO1xuICAgICAgY29uc3QgYm9keTogYW55ID0gZG9jdW1lbnQuYm9keTtcbiAgICAgIGNvbnN0IGRvY0VsOiBhbnkgPSBkb2N1bWVudC5kb2N1bWVudEVsZW1lbnQ7XG5cbiAgICAgIGNvbnN0IHNjcm9sbFRvcDogbnVtYmVyID0gd2luZG93LnBhZ2VZT2Zmc2V0IHx8IGRvY0VsLnNjcm9sbFRvcCB8fCBib2R5LnNjcm9sbFRvcDtcbiAgICAgIGNvbnN0IHNjcm9sbExlZnQ6IG51bWJlciA9IHdpbmRvdy5wYWdlWE9mZnNldCB8fCBkb2NFbC5zY3JvbGxMZWZ0IHx8IGJvZHkuc2Nyb2xsTGVmdDtcblxuICAgICAgY29uc3QgY2xpZW50VG9wOiBudW1iZXIgPSBkb2NFbC5jbGllbnRUb3AgfHwgYm9keS5jbGllbnRUb3AgfHwgMDtcbiAgICAgIGNvbnN0IGNsaWVudExlZnQ6IG51bWJlciA9IGRvY0VsLmNsaWVudExlZnQgfHwgYm9keS5jbGllbnRMZWZ0IHx8IDA7XG5cbiAgICAgIGNvbnN0IHRvcDogbnVtYmVyID0gYm94LnRvcCArIHNjcm9sbFRvcCAtIGNsaWVudFRvcDtcbiAgICAgIGNvbnN0IGxlZnQ6IG51bWJlciA9IGJveC5sZWZ0ICsgc2Nyb2xsTGVmdCAtIGNsaWVudExlZnQ7XG5cbiAgICAgIHJldHVybiB7dG9wOiBNYXRoLnJvdW5kKHRvcCksIGxlZnQ6IE1hdGgucm91bmQobGVmdCl9O1xuICB9XG59XG4iXX0=