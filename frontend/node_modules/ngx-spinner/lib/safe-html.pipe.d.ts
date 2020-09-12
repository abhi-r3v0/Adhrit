import { DomSanitizer, SafeHtml } from '@angular/platform-browser';
import { PipeTransform } from '@angular/core';
import * as ɵngcc0 from '@angular/core';
export declare class SafeHtmlPipe implements PipeTransform {
    private _sanitizer;
    constructor(_sanitizer: DomSanitizer);
    transform(v: string): SafeHtml;
    static ɵfac: ɵngcc0.ɵɵFactoryDef<SafeHtmlPipe, never>;
    static ɵpipe: ɵngcc0.ɵɵPipeDefWithMeta<SafeHtmlPipe, "safeHtml">;
}

//# sourceMappingURL=safe-html.pipe.d.ts.map