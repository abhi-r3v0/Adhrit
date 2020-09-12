import { window } from './facade/browser';
export class Utils {
    /* tslint:disable-next-line: no-any */
    static reflow(element) {
        /* tslint:disable-next-line: no-any */
        ((bs) => bs)(element.offsetHeight);
    }
    // source: https://github.com/jquery/jquery/blob/master/src/css/var/getStyles.js
    /* tslint:disable-next-line: no-any */
    static getStyles(elem) {
        // Support: IE <=11 only, Firefox <=30 (#15098, #14150)
        // IE throws on elements created in popups
        // FF meanwhile throws on frame elements through "defaultView.getComputedStyle"
        let view = elem.ownerDocument.defaultView;
        if (!view || !view.opener) {
            view = window;
        }
        return view.getComputedStyle(elem);
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbHMuY2xhc3MuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL3V0aWxpdGllcy91dGlscy5jbGFzcy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQSxPQUFPLEVBQUUsTUFBTSxFQUFFLE1BQU0sa0JBQWtCLENBQUM7QUFFMUMsTUFBTSxPQUFPLEtBQUs7SUFDaEIsc0NBQXNDO0lBQ3RDLE1BQU0sQ0FBQyxNQUFNLENBQUMsT0FBWTtRQUN4QixzQ0FBc0M7UUFDdEMsQ0FBQyxDQUFDLEVBQU8sRUFBUSxFQUFFLENBQUMsRUFBRSxDQUFDLENBQUMsT0FBTyxDQUFDLFlBQVksQ0FBQyxDQUFDO0lBQ2hELENBQUM7SUFFRCxnRkFBZ0Y7SUFDaEYsc0NBQXNDO0lBQ3RDLE1BQU0sQ0FBQyxTQUFTLENBQUMsSUFBUztRQUN4Qix1REFBdUQ7UUFDdkQsMENBQTBDO1FBQzFDLCtFQUErRTtRQUMvRSxJQUFJLElBQUksR0FBRyxJQUFJLENBQUMsYUFBYSxDQUFDLFdBQVcsQ0FBQztRQUUxQyxJQUFJLENBQUMsSUFBSSxJQUFJLENBQUMsSUFBSSxDQUFDLE1BQU0sRUFBRTtZQUN6QixJQUFJLEdBQUcsTUFBTSxDQUFDO1NBQ2Y7UUFFRCxPQUFPLElBQUksQ0FBQyxnQkFBZ0IsQ0FBQyxJQUFJLENBQUMsQ0FBQztJQUNyQyxDQUFDO0NBQ0YiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyB3aW5kb3cgfSBmcm9tICcuL2ZhY2FkZS9icm93c2VyJztcblxuZXhwb3J0IGNsYXNzIFV0aWxzIHtcbiAgLyogdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOiBuby1hbnkgKi9cbiAgc3RhdGljIHJlZmxvdyhlbGVtZW50OiBhbnkpOiB2b2lkIHtcbiAgICAvKiB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6IG5vLWFueSAqL1xuICAgICgoYnM6IGFueSk6IHZvaWQgPT4gYnMpKGVsZW1lbnQub2Zmc2V0SGVpZ2h0KTtcbiAgfVxuXG4gIC8vIHNvdXJjZTogaHR0cHM6Ly9naXRodWIuY29tL2pxdWVyeS9qcXVlcnkvYmxvYi9tYXN0ZXIvc3JjL2Nzcy92YXIvZ2V0U3R5bGVzLmpzXG4gIC8qIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTogbm8tYW55ICovXG4gIHN0YXRpYyBnZXRTdHlsZXMoZWxlbTogYW55KTogYW55IHtcbiAgICAvLyBTdXBwb3J0OiBJRSA8PTExIG9ubHksIEZpcmVmb3ggPD0zMCAoIzE1MDk4LCAjMTQxNTApXG4gICAgLy8gSUUgdGhyb3dzIG9uIGVsZW1lbnRzIGNyZWF0ZWQgaW4gcG9wdXBzXG4gICAgLy8gRkYgbWVhbndoaWxlIHRocm93cyBvbiBmcmFtZSBlbGVtZW50cyB0aHJvdWdoIFwiZGVmYXVsdFZpZXcuZ2V0Q29tcHV0ZWRTdHlsZVwiXG4gICAgbGV0IHZpZXcgPSBlbGVtLm93bmVyRG9jdW1lbnQuZGVmYXVsdFZpZXc7XG5cbiAgICBpZiAoIXZpZXcgfHwgIXZpZXcub3BlbmVyKSB7XG4gICAgICB2aWV3ID0gd2luZG93O1xuICAgIH1cblxuICAgIHJldHVybiB2aWV3LmdldENvbXB1dGVkU3R5bGUoZWxlbSk7XG4gIH1cbn1cbiJdfQ==