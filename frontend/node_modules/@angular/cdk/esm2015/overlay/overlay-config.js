/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { NoopScrollStrategy } from './scroll/index';
/** Initial configuration used when creating an overlay. */
export class OverlayConfig {
    constructor(config) {
        /** Strategy to be used when handling scroll events while the overlay is open. */
        this.scrollStrategy = new NoopScrollStrategy();
        /** Custom class to add to the overlay pane. */
        this.panelClass = '';
        /** Whether the overlay has a backdrop. */
        this.hasBackdrop = false;
        /** Custom class to add to the backdrop */
        this.backdropClass = 'cdk-overlay-dark-backdrop';
        /**
         * Whether the overlay should be disposed of when the user goes backwards/forwards in history.
         * Note that this usually doesn't include clicking on links (unless the user is using
         * the `HashLocationStrategy`).
         */
        this.disposeOnNavigation = false;
        if (config) {
            // Use `Iterable` instead of `Array` because TypeScript, as of 3.6.3,
            // loses the array generic type in the `for of`. But we *also* have to use `Array` because
            // typescript won't iterate over an `Iterable` unless you compile with `--downlevelIteration`
            const configKeys = Object.keys(config);
            for (const key of configKeys) {
                if (config[key] !== undefined) {
                    // TypeScript, as of version 3.5, sees the left-hand-side of this expression
                    // as "I don't know *which* key this is, so the only valid value is the intersection
                    // of all the posible values." In this case, that happens to be `undefined`. TypeScript
                    // is not smart enough to see that the right-hand-side is actually an access of the same
                    // exact type with the same exact key, meaning that the value type must be identical.
                    // So we use `any` to work around this.
                    this[key] = config[key];
                }
            }
        }
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoib3ZlcmxheS1jb25maWcuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL292ZXJsYXkvb3ZlcmxheS1jb25maWcudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBSUgsT0FBTyxFQUFpQixrQkFBa0IsRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBR2xFLDJEQUEyRDtBQUMzRCxNQUFNLE9BQU8sYUFBYTtJQStDeEIsWUFBWSxNQUFzQjtRQTNDbEMsaUZBQWlGO1FBQ2pGLG1CQUFjLEdBQW9CLElBQUksa0JBQWtCLEVBQUUsQ0FBQztRQUUzRCwrQ0FBK0M7UUFDL0MsZUFBVSxHQUF1QixFQUFFLENBQUM7UUFFcEMsMENBQTBDO1FBQzFDLGdCQUFXLEdBQWEsS0FBSyxDQUFDO1FBRTlCLDBDQUEwQztRQUMxQyxrQkFBYSxHQUF1QiwyQkFBMkIsQ0FBQztRQTBCaEU7Ozs7V0FJRztRQUNILHdCQUFtQixHQUFhLEtBQUssQ0FBQztRQUdwQyxJQUFJLE1BQU0sRUFBRTtZQUNWLHFFQUFxRTtZQUNyRSwwRkFBMEY7WUFDMUYsNkZBQTZGO1lBQzdGLE1BQU0sVUFBVSxHQUNaLE1BQU0sQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUE0RCxDQUFDO1lBQ25GLEtBQUssTUFBTSxHQUFHLElBQUksVUFBVSxFQUFFO2dCQUM1QixJQUFJLE1BQU0sQ0FBQyxHQUFHLENBQUMsS0FBSyxTQUFTLEVBQUU7b0JBQzdCLDRFQUE0RTtvQkFDNUUsb0ZBQW9GO29CQUNwRix1RkFBdUY7b0JBQ3ZGLHdGQUF3RjtvQkFDeEYscUZBQXFGO29CQUNyRix1Q0FBdUM7b0JBQ3ZDLElBQUksQ0FBQyxHQUFHLENBQUMsR0FBRyxNQUFNLENBQUMsR0FBRyxDQUFRLENBQUM7aUJBQ2hDO2FBQ0Y7U0FDRjtJQUNILENBQUM7Q0FDRiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1Bvc2l0aW9uU3RyYXRlZ3l9IGZyb20gJy4vcG9zaXRpb24vcG9zaXRpb24tc3RyYXRlZ3knO1xuaW1wb3J0IHtEaXJlY3Rpb24sIERpcmVjdGlvbmFsaXR5fSBmcm9tICdAYW5ndWxhci9jZGsvYmlkaSc7XG5pbXBvcnQge1Njcm9sbFN0cmF0ZWd5LCBOb29wU2Nyb2xsU3RyYXRlZ3l9IGZyb20gJy4vc2Nyb2xsL2luZGV4JztcblxuXG4vKiogSW5pdGlhbCBjb25maWd1cmF0aW9uIHVzZWQgd2hlbiBjcmVhdGluZyBhbiBvdmVybGF5LiAqL1xuZXhwb3J0IGNsYXNzIE92ZXJsYXlDb25maWcge1xuICAvKiogU3RyYXRlZ3kgd2l0aCB3aGljaCB0byBwb3NpdGlvbiB0aGUgb3ZlcmxheS4gKi9cbiAgcG9zaXRpb25TdHJhdGVneT86IFBvc2l0aW9uU3RyYXRlZ3k7XG5cbiAgLyoqIFN0cmF0ZWd5IHRvIGJlIHVzZWQgd2hlbiBoYW5kbGluZyBzY3JvbGwgZXZlbnRzIHdoaWxlIHRoZSBvdmVybGF5IGlzIG9wZW4uICovXG4gIHNjcm9sbFN0cmF0ZWd5PzogU2Nyb2xsU3RyYXRlZ3kgPSBuZXcgTm9vcFNjcm9sbFN0cmF0ZWd5KCk7XG5cbiAgLyoqIEN1c3RvbSBjbGFzcyB0byBhZGQgdG8gdGhlIG92ZXJsYXkgcGFuZS4gKi9cbiAgcGFuZWxDbGFzcz86IHN0cmluZyB8IHN0cmluZ1tdID0gJyc7XG5cbiAgLyoqIFdoZXRoZXIgdGhlIG92ZXJsYXkgaGFzIGEgYmFja2Ryb3AuICovXG4gIGhhc0JhY2tkcm9wPzogYm9vbGVhbiA9IGZhbHNlO1xuXG4gIC8qKiBDdXN0b20gY2xhc3MgdG8gYWRkIHRvIHRoZSBiYWNrZHJvcCAqL1xuICBiYWNrZHJvcENsYXNzPzogc3RyaW5nIHwgc3RyaW5nW10gPSAnY2RrLW92ZXJsYXktZGFyay1iYWNrZHJvcCc7XG5cbiAgLyoqIFRoZSB3aWR0aCBvZiB0aGUgb3ZlcmxheSBwYW5lbC4gSWYgYSBudW1iZXIgaXMgcHJvdmlkZWQsIHBpeGVsIHVuaXRzIGFyZSBhc3N1bWVkLiAqL1xuICB3aWR0aD86IG51bWJlciB8IHN0cmluZztcblxuICAvKiogVGhlIGhlaWdodCBvZiB0aGUgb3ZlcmxheSBwYW5lbC4gSWYgYSBudW1iZXIgaXMgcHJvdmlkZWQsIHBpeGVsIHVuaXRzIGFyZSBhc3N1bWVkLiAqL1xuICBoZWlnaHQ/OiBudW1iZXIgfCBzdHJpbmc7XG5cbiAgLyoqIFRoZSBtaW4td2lkdGggb2YgdGhlIG92ZXJsYXkgcGFuZWwuIElmIGEgbnVtYmVyIGlzIHByb3ZpZGVkLCBwaXhlbCB1bml0cyBhcmUgYXNzdW1lZC4gKi9cbiAgbWluV2lkdGg/OiBudW1iZXIgfCBzdHJpbmc7XG5cbiAgLyoqIFRoZSBtaW4taGVpZ2h0IG9mIHRoZSBvdmVybGF5IHBhbmVsLiBJZiBhIG51bWJlciBpcyBwcm92aWRlZCwgcGl4ZWwgdW5pdHMgYXJlIGFzc3VtZWQuICovXG4gIG1pbkhlaWdodD86IG51bWJlciB8IHN0cmluZztcblxuICAvKiogVGhlIG1heC13aWR0aCBvZiB0aGUgb3ZlcmxheSBwYW5lbC4gSWYgYSBudW1iZXIgaXMgcHJvdmlkZWQsIHBpeGVsIHVuaXRzIGFyZSBhc3N1bWVkLiAqL1xuICBtYXhXaWR0aD86IG51bWJlciB8IHN0cmluZztcblxuICAvKiogVGhlIG1heC1oZWlnaHQgb2YgdGhlIG92ZXJsYXkgcGFuZWwuIElmIGEgbnVtYmVyIGlzIHByb3ZpZGVkLCBwaXhlbCB1bml0cyBhcmUgYXNzdW1lZC4gKi9cbiAgbWF4SGVpZ2h0PzogbnVtYmVyIHwgc3RyaW5nO1xuXG4gIC8qKlxuICAgKiBEaXJlY3Rpb24gb2YgdGhlIHRleHQgaW4gdGhlIG92ZXJsYXkgcGFuZWwuIElmIGEgYERpcmVjdGlvbmFsaXR5YCBpbnN0YW5jZVxuICAgKiBpcyBwYXNzZWQgaW4sIHRoZSBvdmVybGF5IHdpbGwgaGFuZGxlIGNoYW5nZXMgdG8gaXRzIHZhbHVlIGF1dG9tYXRpY2FsbHkuXG4gICAqL1xuICBkaXJlY3Rpb24/OiBEaXJlY3Rpb24gfCBEaXJlY3Rpb25hbGl0eTtcblxuICAvKipcbiAgICogV2hldGhlciB0aGUgb3ZlcmxheSBzaG91bGQgYmUgZGlzcG9zZWQgb2Ygd2hlbiB0aGUgdXNlciBnb2VzIGJhY2t3YXJkcy9mb3J3YXJkcyBpbiBoaXN0b3J5LlxuICAgKiBOb3RlIHRoYXQgdGhpcyB1c3VhbGx5IGRvZXNuJ3QgaW5jbHVkZSBjbGlja2luZyBvbiBsaW5rcyAodW5sZXNzIHRoZSB1c2VyIGlzIHVzaW5nXG4gICAqIHRoZSBgSGFzaExvY2F0aW9uU3RyYXRlZ3lgKS5cbiAgICovXG4gIGRpc3Bvc2VPbk5hdmlnYXRpb24/OiBib29sZWFuID0gZmFsc2U7XG5cbiAgY29uc3RydWN0b3IoY29uZmlnPzogT3ZlcmxheUNvbmZpZykge1xuICAgIGlmIChjb25maWcpIHtcbiAgICAgIC8vIFVzZSBgSXRlcmFibGVgIGluc3RlYWQgb2YgYEFycmF5YCBiZWNhdXNlIFR5cGVTY3JpcHQsIGFzIG9mIDMuNi4zLFxuICAgICAgLy8gbG9zZXMgdGhlIGFycmF5IGdlbmVyaWMgdHlwZSBpbiB0aGUgYGZvciBvZmAuIEJ1dCB3ZSAqYWxzbyogaGF2ZSB0byB1c2UgYEFycmF5YCBiZWNhdXNlXG4gICAgICAvLyB0eXBlc2NyaXB0IHdvbid0IGl0ZXJhdGUgb3ZlciBhbiBgSXRlcmFibGVgIHVubGVzcyB5b3UgY29tcGlsZSB3aXRoIGAtLWRvd25sZXZlbEl0ZXJhdGlvbmBcbiAgICAgIGNvbnN0IGNvbmZpZ0tleXMgPVxuICAgICAgICAgIE9iamVjdC5rZXlzKGNvbmZpZykgYXMgSXRlcmFibGU8a2V5b2YgT3ZlcmxheUNvbmZpZz4gJiAoa2V5b2YgT3ZlcmxheUNvbmZpZylbXTtcbiAgICAgIGZvciAoY29uc3Qga2V5IG9mIGNvbmZpZ0tleXMpIHtcbiAgICAgICAgaWYgKGNvbmZpZ1trZXldICE9PSB1bmRlZmluZWQpIHtcbiAgICAgICAgICAvLyBUeXBlU2NyaXB0LCBhcyBvZiB2ZXJzaW9uIDMuNSwgc2VlcyB0aGUgbGVmdC1oYW5kLXNpZGUgb2YgdGhpcyBleHByZXNzaW9uXG4gICAgICAgICAgLy8gYXMgXCJJIGRvbid0IGtub3cgKndoaWNoKiBrZXkgdGhpcyBpcywgc28gdGhlIG9ubHkgdmFsaWQgdmFsdWUgaXMgdGhlIGludGVyc2VjdGlvblxuICAgICAgICAgIC8vIG9mIGFsbCB0aGUgcG9zaWJsZSB2YWx1ZXMuXCIgSW4gdGhpcyBjYXNlLCB0aGF0IGhhcHBlbnMgdG8gYmUgYHVuZGVmaW5lZGAuIFR5cGVTY3JpcHRcbiAgICAgICAgICAvLyBpcyBub3Qgc21hcnQgZW5vdWdoIHRvIHNlZSB0aGF0IHRoZSByaWdodC1oYW5kLXNpZGUgaXMgYWN0dWFsbHkgYW4gYWNjZXNzIG9mIHRoZSBzYW1lXG4gICAgICAgICAgLy8gZXhhY3QgdHlwZSB3aXRoIHRoZSBzYW1lIGV4YWN0IGtleSwgbWVhbmluZyB0aGF0IHRoZSB2YWx1ZSB0eXBlIG11c3QgYmUgaWRlbnRpY2FsLlxuICAgICAgICAgIC8vIFNvIHdlIHVzZSBgYW55YCB0byB3b3JrIGFyb3VuZCB0aGlzLlxuICAgICAgICAgIHRoaXNba2V5XSA9IGNvbmZpZ1trZXldIGFzIGFueTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxufVxuIl19