/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/**
 * A pending copy-to-clipboard operation.
 *
 * The implementation of copying text to the clipboard modifies the DOM and
 * forces a relayout. This relayout can take too long if the string is large,
 * causing the execCommand('copy') to happen too long after the user clicked.
 * This results in the browser refusing to copy. This object lets the
 * relayout happen in a separate tick from copying by providing a copy function
 * that can be called later.
 *
 * Destroy must be called when no longer in use, regardless of whether `copy` is
 * called.
 */
export class PendingCopy {
    constructor(text, _document) {
        this._document = _document;
        const textarea = this._textarea = this._document.createElement('textarea');
        const styles = textarea.style;
        // Hide the element for display and accessibility. Set a fixed position so the page layout
        // isn't affected. We use `fixed` with `top: 0`, because focus is moved into the textarea
        // for a split second and if it's off-screen, some browsers will attempt to scroll it into view.
        styles.position = 'fixed';
        styles.top = styles.opacity = '0';
        styles.left = '-999em';
        textarea.setAttribute('aria-hidden', 'true');
        textarea.value = text;
        this._document.body.appendChild(textarea);
    }
    /** Finishes copying the text. */
    copy() {
        const textarea = this._textarea;
        let successful = false;
        try { // Older browsers could throw if copy is not supported.
            if (textarea) {
                const currentFocus = this._document.activeElement;
                textarea.select();
                textarea.setSelectionRange(0, textarea.value.length);
                successful = this._document.execCommand('copy');
                if (currentFocus) {
                    currentFocus.focus();
                }
            }
        }
        catch (_a) {
            // Discard error.
            // Initial setting of {@code successful} will represent failure here.
        }
        return successful;
    }
    /** Cleans up DOM changes used to perform the copy operation. */
    destroy() {
        const textarea = this._textarea;
        if (textarea) {
            if (textarea.parentNode) {
                textarea.parentNode.removeChild(textarea);
            }
            this._textarea = undefined;
        }
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicGVuZGluZy1jb3B5LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9jbGlwYm9hcmQvcGVuZGluZy1jb3B5LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVIOzs7Ozs7Ozs7Ozs7R0FZRztBQUNILE1BQU0sT0FBTyxXQUFXO0lBR3RCLFlBQVksSUFBWSxFQUFtQixTQUFtQjtRQUFuQixjQUFTLEdBQVQsU0FBUyxDQUFVO1FBQzVELE1BQU0sUUFBUSxHQUFHLElBQUksQ0FBQyxTQUFTLEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQyxhQUFhLENBQUMsVUFBVSxDQUFDLENBQUM7UUFDM0UsTUFBTSxNQUFNLEdBQUcsUUFBUSxDQUFDLEtBQUssQ0FBQztRQUU5QiwwRkFBMEY7UUFDMUYseUZBQXlGO1FBQ3pGLGdHQUFnRztRQUNoRyxNQUFNLENBQUMsUUFBUSxHQUFHLE9BQU8sQ0FBQztRQUMxQixNQUFNLENBQUMsR0FBRyxHQUFHLE1BQU0sQ0FBQyxPQUFPLEdBQUcsR0FBRyxDQUFDO1FBQ2xDLE1BQU0sQ0FBQyxJQUFJLEdBQUcsUUFBUSxDQUFDO1FBQ3ZCLFFBQVEsQ0FBQyxZQUFZLENBQUMsYUFBYSxFQUFFLE1BQU0sQ0FBQyxDQUFDO1FBQzdDLFFBQVEsQ0FBQyxLQUFLLEdBQUcsSUFBSSxDQUFDO1FBQ3RCLElBQUksQ0FBQyxTQUFTLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxRQUFRLENBQUMsQ0FBQztJQUM1QyxDQUFDO0lBRUQsaUNBQWlDO0lBQ2pDLElBQUk7UUFDRixNQUFNLFFBQVEsR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDO1FBQ2hDLElBQUksVUFBVSxHQUFHLEtBQUssQ0FBQztRQUV2QixJQUFJLEVBQUcsdURBQXVEO1lBQzVELElBQUksUUFBUSxFQUFFO2dCQUNaLE1BQU0sWUFBWSxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsYUFBd0MsQ0FBQztnQkFFN0UsUUFBUSxDQUFDLE1BQU0sRUFBRSxDQUFDO2dCQUNsQixRQUFRLENBQUMsaUJBQWlCLENBQUMsQ0FBQyxFQUFFLFFBQVEsQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDLENBQUM7Z0JBQ3JELFVBQVUsR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDLFdBQVcsQ0FBQyxNQUFNLENBQUMsQ0FBQztnQkFFaEQsSUFBSSxZQUFZLEVBQUU7b0JBQ2hCLFlBQVksQ0FBQyxLQUFLLEVBQUUsQ0FBQztpQkFDdEI7YUFDRjtTQUNGO1FBQUMsV0FBTTtZQUNOLGlCQUFpQjtZQUNqQixxRUFBcUU7U0FDdEU7UUFFRCxPQUFPLFVBQVUsQ0FBQztJQUNwQixDQUFDO0lBRUQsZ0VBQWdFO0lBQ2hFLE9BQU87UUFDTCxNQUFNLFFBQVEsR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDO1FBRWhDLElBQUksUUFBUSxFQUFFO1lBQ1osSUFBSSxRQUFRLENBQUMsVUFBVSxFQUFFO2dCQUN2QixRQUFRLENBQUMsVUFBVSxDQUFDLFdBQVcsQ0FBQyxRQUFRLENBQUMsQ0FBQzthQUMzQztZQUVELElBQUksQ0FBQyxTQUFTLEdBQUcsU0FBUyxDQUFDO1NBQzVCO0lBQ0gsQ0FBQztDQUNGIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbi8qKlxuICogQSBwZW5kaW5nIGNvcHktdG8tY2xpcGJvYXJkIG9wZXJhdGlvbi5cbiAqXG4gKiBUaGUgaW1wbGVtZW50YXRpb24gb2YgY29weWluZyB0ZXh0IHRvIHRoZSBjbGlwYm9hcmQgbW9kaWZpZXMgdGhlIERPTSBhbmRcbiAqIGZvcmNlcyBhIHJlbGF5b3V0LiBUaGlzIHJlbGF5b3V0IGNhbiB0YWtlIHRvbyBsb25nIGlmIHRoZSBzdHJpbmcgaXMgbGFyZ2UsXG4gKiBjYXVzaW5nIHRoZSBleGVjQ29tbWFuZCgnY29weScpIHRvIGhhcHBlbiB0b28gbG9uZyBhZnRlciB0aGUgdXNlciBjbGlja2VkLlxuICogVGhpcyByZXN1bHRzIGluIHRoZSBicm93c2VyIHJlZnVzaW5nIHRvIGNvcHkuIFRoaXMgb2JqZWN0IGxldHMgdGhlXG4gKiByZWxheW91dCBoYXBwZW4gaW4gYSBzZXBhcmF0ZSB0aWNrIGZyb20gY29weWluZyBieSBwcm92aWRpbmcgYSBjb3B5IGZ1bmN0aW9uXG4gKiB0aGF0IGNhbiBiZSBjYWxsZWQgbGF0ZXIuXG4gKlxuICogRGVzdHJveSBtdXN0IGJlIGNhbGxlZCB3aGVuIG5vIGxvbmdlciBpbiB1c2UsIHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciBgY29weWAgaXNcbiAqIGNhbGxlZC5cbiAqL1xuZXhwb3J0IGNsYXNzIFBlbmRpbmdDb3B5IHtcbiAgcHJpdmF0ZSBfdGV4dGFyZWE6IEhUTUxUZXh0QXJlYUVsZW1lbnR8dW5kZWZpbmVkO1xuXG4gIGNvbnN0cnVjdG9yKHRleHQ6IHN0cmluZywgcHJpdmF0ZSByZWFkb25seSBfZG9jdW1lbnQ6IERvY3VtZW50KSB7XG4gICAgY29uc3QgdGV4dGFyZWEgPSB0aGlzLl90ZXh0YXJlYSA9IHRoaXMuX2RvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ3RleHRhcmVhJyk7XG4gICAgY29uc3Qgc3R5bGVzID0gdGV4dGFyZWEuc3R5bGU7XG5cbiAgICAvLyBIaWRlIHRoZSBlbGVtZW50IGZvciBkaXNwbGF5IGFuZCBhY2Nlc3NpYmlsaXR5LiBTZXQgYSBmaXhlZCBwb3NpdGlvbiBzbyB0aGUgcGFnZSBsYXlvdXRcbiAgICAvLyBpc24ndCBhZmZlY3RlZC4gV2UgdXNlIGBmaXhlZGAgd2l0aCBgdG9wOiAwYCwgYmVjYXVzZSBmb2N1cyBpcyBtb3ZlZCBpbnRvIHRoZSB0ZXh0YXJlYVxuICAgIC8vIGZvciBhIHNwbGl0IHNlY29uZCBhbmQgaWYgaXQncyBvZmYtc2NyZWVuLCBzb21lIGJyb3dzZXJzIHdpbGwgYXR0ZW1wdCB0byBzY3JvbGwgaXQgaW50byB2aWV3LlxuICAgIHN0eWxlcy5wb3NpdGlvbiA9ICdmaXhlZCc7XG4gICAgc3R5bGVzLnRvcCA9IHN0eWxlcy5vcGFjaXR5ID0gJzAnO1xuICAgIHN0eWxlcy5sZWZ0ID0gJy05OTllbSc7XG4gICAgdGV4dGFyZWEuc2V0QXR0cmlidXRlKCdhcmlhLWhpZGRlbicsICd0cnVlJyk7XG4gICAgdGV4dGFyZWEudmFsdWUgPSB0ZXh0O1xuICAgIHRoaXMuX2RvY3VtZW50LmJvZHkuYXBwZW5kQ2hpbGQodGV4dGFyZWEpO1xuICB9XG5cbiAgLyoqIEZpbmlzaGVzIGNvcHlpbmcgdGhlIHRleHQuICovXG4gIGNvcHkoKTogYm9vbGVhbiB7XG4gICAgY29uc3QgdGV4dGFyZWEgPSB0aGlzLl90ZXh0YXJlYTtcbiAgICBsZXQgc3VjY2Vzc2Z1bCA9IGZhbHNlO1xuXG4gICAgdHJ5IHsgIC8vIE9sZGVyIGJyb3dzZXJzIGNvdWxkIHRocm93IGlmIGNvcHkgaXMgbm90IHN1cHBvcnRlZC5cbiAgICAgIGlmICh0ZXh0YXJlYSkge1xuICAgICAgICBjb25zdCBjdXJyZW50Rm9jdXMgPSB0aGlzLl9kb2N1bWVudC5hY3RpdmVFbGVtZW50IGFzIEhUTUxPclNWR0VsZW1lbnQgfCBudWxsO1xuXG4gICAgICAgIHRleHRhcmVhLnNlbGVjdCgpO1xuICAgICAgICB0ZXh0YXJlYS5zZXRTZWxlY3Rpb25SYW5nZSgwLCB0ZXh0YXJlYS52YWx1ZS5sZW5ndGgpO1xuICAgICAgICBzdWNjZXNzZnVsID0gdGhpcy5fZG9jdW1lbnQuZXhlY0NvbW1hbmQoJ2NvcHknKTtcblxuICAgICAgICBpZiAoY3VycmVudEZvY3VzKSB7XG4gICAgICAgICAgY3VycmVudEZvY3VzLmZvY3VzKCk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9IGNhdGNoIHtcbiAgICAgIC8vIERpc2NhcmQgZXJyb3IuXG4gICAgICAvLyBJbml0aWFsIHNldHRpbmcgb2Yge0Bjb2RlIHN1Y2Nlc3NmdWx9IHdpbGwgcmVwcmVzZW50IGZhaWx1cmUgaGVyZS5cbiAgICB9XG5cbiAgICByZXR1cm4gc3VjY2Vzc2Z1bDtcbiAgfVxuXG4gIC8qKiBDbGVhbnMgdXAgRE9NIGNoYW5nZXMgdXNlZCB0byBwZXJmb3JtIHRoZSBjb3B5IG9wZXJhdGlvbi4gKi9cbiAgZGVzdHJveSgpIHtcbiAgICBjb25zdCB0ZXh0YXJlYSA9IHRoaXMuX3RleHRhcmVhO1xuXG4gICAgaWYgKHRleHRhcmVhKSB7XG4gICAgICBpZiAodGV4dGFyZWEucGFyZW50Tm9kZSkge1xuICAgICAgICB0ZXh0YXJlYS5wYXJlbnROb2RlLnJlbW92ZUNoaWxkKHRleHRhcmVhKTtcbiAgICAgIH1cblxuICAgICAgdGhpcy5fdGV4dGFyZWEgPSB1bmRlZmluZWQ7XG4gICAgfVxuICB9XG59XG4iXX0=