import { Platform } from '@angular/cdk/platform';
/** A utility for calling matchMedia queries. */
import * as ɵngcc0 from '@angular/core';
export declare class MediaMatcher {
    private _platform;
    /** The internal matchMedia method to return back a MediaQueryList like object. */
    private _matchMedia;
    constructor(_platform: Platform);
    /**
     * Evaluates the given media query and returns the native MediaQueryList from which results
     * can be retrieved.
     * Confirms the layout engine will trigger for the selector query provided and returns the
     * MediaQueryList for the query provided.
     */
    matchMedia(query: string): MediaQueryList;
    static ɵfac: ɵngcc0.ɵɵFactoryDef<MediaMatcher, never>;
}

//# sourceMappingURL=media-matcher.d.ts.map