import { __decorate } from "tslib";
import { Injectable } from '@angular/core';
/**
 * Configuration service for the Popover directive.
 * You can inject this service, typically in your root component, and customize
 * the values of its properties in order to provide default values for all the
 * popovers used in the application.
 */
let PopoverConfig = class PopoverConfig {
    constructor() {
        /**
         * Placement of a popover. Accepts: "top", "bottom", "left", "right"
         */
        this.placement = 'top';
        /**
         * Specifies events that should trigger. Supports a space separated list of
         * event names.
         */
        this.triggers = 'click';
    }
};
PopoverConfig = __decorate([
    Injectable()
], PopoverConfig);
export { PopoverConfig };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicG9wb3Zlci5jb25maWcuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL3BvcG92ZXIvcG9wb3Zlci5jb25maWcudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxVQUFVLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFFM0M7Ozs7O0dBS0c7QUFFRixJQUFhLGFBQWEsR0FBMUIsTUFBYSxhQUFhO0lBQTFCO1FBQ0M7O1dBRUc7UUFDSyxjQUFTLEdBQUcsS0FBSyxDQUFDO1FBQzFCOzs7V0FHRztRQUNLLGFBQVEsR0FBRyxPQUFPLENBQUM7SUFNNUIsQ0FBQztDQUFBLENBQUE7QUFmWSxhQUFhO0lBRHpCLFVBQVUsRUFBRTtHQUNBLGFBQWEsQ0FlekI7U0FmWSxhQUFhIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgSW5qZWN0YWJsZSB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG4vKipcbiAqIENvbmZpZ3VyYXRpb24gc2VydmljZSBmb3IgdGhlIFBvcG92ZXIgZGlyZWN0aXZlLlxuICogWW91IGNhbiBpbmplY3QgdGhpcyBzZXJ2aWNlLCB0eXBpY2FsbHkgaW4geW91ciByb290IGNvbXBvbmVudCwgYW5kIGN1c3RvbWl6ZVxuICogdGhlIHZhbHVlcyBvZiBpdHMgcHJvcGVydGllcyBpbiBvcmRlciB0byBwcm92aWRlIGRlZmF1bHQgdmFsdWVzIGZvciBhbGwgdGhlXG4gKiBwb3BvdmVycyB1c2VkIGluIHRoZSBhcHBsaWNhdGlvbi5cbiAqL1xuIEBJbmplY3RhYmxlKClcbiBleHBvcnQgY2xhc3MgUG9wb3ZlckNvbmZpZyB7XG4gIC8qKlxuICAgKiBQbGFjZW1lbnQgb2YgYSBwb3BvdmVyLiBBY2NlcHRzOiBcInRvcFwiLCBcImJvdHRvbVwiLCBcImxlZnRcIiwgXCJyaWdodFwiXG4gICAqL1xuICAgcHVibGljIHBsYWNlbWVudCA9ICd0b3AnO1xuICAvKipcbiAgICogU3BlY2lmaWVzIGV2ZW50cyB0aGF0IHNob3VsZCB0cmlnZ2VyLiBTdXBwb3J0cyBhIHNwYWNlIHNlcGFyYXRlZCBsaXN0IG9mXG4gICAqIGV2ZW50IG5hbWVzLlxuICAgKi9cbiAgIHB1YmxpYyB0cmlnZ2VycyA9ICdjbGljayc7XG4gIC8qKlxuICAgKiBBIHNlbGVjdG9yIHNwZWNpZnlpbmcgdGhlIGVsZW1lbnQgdGhlIHBvcG92ZXIgc2hvdWxkIGJlIGFwcGVuZGVkIHRvLlxuICAgKiBDdXJyZW50bHkgb25seSBzdXBwb3J0cyBcImJvZHlcIi5cbiAgICovXG4gICBwdWJsaWMgY29udGFpbmVyOiBzdHJpbmc7XG4gfVxuIl19