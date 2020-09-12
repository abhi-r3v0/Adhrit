import { __decorate } from "tslib";
import { Injectable } from '@angular/core';
let CarouselConfig = class CarouselConfig {
    constructor() {
        /** Default interval of auto changing of slides */
        this.interval = 5000;
        /** Is loop of auto changing of slides can be paused */
        this.noPause = false;
        /** Is slides can wrap from the last to the first slide */
        this.noWrap = false;
        this.keyboard = false;
    }
};
CarouselConfig = __decorate([
    Injectable()
], CarouselConfig);
export { CarouselConfig };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY2Fyb3VzZWwuY29uZmlnLmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9jYXJvdXNlbC9jYXJvdXNlbC5jb25maWcudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxVQUFVLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFHM0MsSUFBYSxjQUFjLEdBQTNCLE1BQWEsY0FBYztJQUEzQjtRQUNFLGtEQUFrRDtRQUMzQyxhQUFRLEdBQUcsSUFBSSxDQUFDO1FBRXZCLHVEQUF1RDtRQUNoRCxZQUFPLEdBQUcsS0FBSyxDQUFDO1FBRXZCLDBEQUEwRDtRQUNuRCxXQUFNLEdBQUcsS0FBSyxDQUFDO1FBRWYsYUFBUSxHQUFHLEtBQUssQ0FBQztJQUMxQixDQUFDO0NBQUEsQ0FBQTtBQVhZLGNBQWM7SUFEMUIsVUFBVSxFQUFFO0dBQ0EsY0FBYyxDQVcxQjtTQVhZLGNBQWMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBJbmplY3RhYmxlIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbkBJbmplY3RhYmxlKClcbmV4cG9ydCBjbGFzcyBDYXJvdXNlbENvbmZpZyB7XG4gIC8qKiBEZWZhdWx0IGludGVydmFsIG9mIGF1dG8gY2hhbmdpbmcgb2Ygc2xpZGVzICovXG4gIHB1YmxpYyBpbnRlcnZhbCA9IDUwMDA7XG5cbiAgLyoqIElzIGxvb3Agb2YgYXV0byBjaGFuZ2luZyBvZiBzbGlkZXMgY2FuIGJlIHBhdXNlZCAqL1xuICBwdWJsaWMgbm9QYXVzZSA9IGZhbHNlO1xuXG4gIC8qKiBJcyBzbGlkZXMgY2FuIHdyYXAgZnJvbSB0aGUgbGFzdCB0byB0aGUgZmlyc3Qgc2xpZGUgKi9cbiAgcHVibGljIG5vV3JhcCA9IGZhbHNlO1xuXG4gIHB1YmxpYyBrZXlib2FyZCA9IGZhbHNlO1xufVxuIl19