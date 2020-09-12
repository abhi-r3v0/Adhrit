import { DomSanitizer } from '@angular/platform-browser';
import { Pipe } from '@angular/core';
export class SafeHtmlPipe {
    constructor(_sanitizer) {
        this._sanitizer = _sanitizer;
    }
    transform(v) {
        if (v) {
            return this._sanitizer.bypassSecurityTrustHtml(v);
        }
    }
}
SafeHtmlPipe.decorators = [
    { type: Pipe, args: [{
                name: 'safeHtml'
            },] }
];
SafeHtmlPipe.ctorParameters = () => [
    { type: DomSanitizer }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic2FmZS1odG1sLnBpcGUuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi9wcm9qZWN0cy9uZ3gtc3Bpbm5lci9zcmMvbGliL3NhZmUtaHRtbC5waXBlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBLE9BQU8sRUFBRSxZQUFZLEVBQVksTUFBTSwyQkFBMkIsQ0FBQztBQUNuRSxPQUFPLEVBQUUsSUFBSSxFQUFpQixNQUFNLGVBQWUsQ0FBQztBQUtwRCxNQUFNLE9BQU8sWUFBWTtJQUV2QixZQUFvQixVQUF3QjtRQUF4QixlQUFVLEdBQVYsVUFBVSxDQUFjO0lBQzVDLENBQUM7SUFFRCxTQUFTLENBQUMsQ0FBUztRQUNqQixJQUFJLENBQUMsRUFBRTtZQUNMLE9BQU8sSUFBSSxDQUFDLFVBQVUsQ0FBQyx1QkFBdUIsQ0FBQyxDQUFDLENBQUMsQ0FBQztTQUNuRDtJQUNILENBQUM7OztZQVpGLElBQUksU0FBQztnQkFDSixJQUFJLEVBQUUsVUFBVTthQUNqQjs7O1lBTFEsWUFBWSIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IERvbVNhbml0aXplciwgU2FmZUh0bWwgfSBmcm9tICdAYW5ndWxhci9wbGF0Zm9ybS1icm93c2VyJztcbmltcG9ydCB7IFBpcGUsIFBpcGVUcmFuc2Zvcm0gfSBmcm9tICdAYW5ndWxhci9jb3JlJztcblxuQFBpcGUoe1xuICBuYW1lOiAnc2FmZUh0bWwnXG59KVxuZXhwb3J0IGNsYXNzIFNhZmVIdG1sUGlwZSBpbXBsZW1lbnRzIFBpcGVUcmFuc2Zvcm0ge1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgX3Nhbml0aXplcjogRG9tU2FuaXRpemVyKSB7XG4gIH1cblxuICB0cmFuc2Zvcm0odjogc3RyaW5nKTogU2FmZUh0bWwge1xuICAgIGlmICh2KSB7XG4gICAgICByZXR1cm4gdGhpcy5fc2FuaXRpemVyLmJ5cGFzc1NlY3VyaXR5VHJ1c3RIdG1sKHYpO1xuICAgIH1cbiAgfVxufVxuIl19