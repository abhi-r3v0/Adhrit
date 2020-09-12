"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.NoopAnalytics = void 0;
/**
 * Analytics implementation that does nothing.
 */
class NoopAnalytics {
    event() { }
    screenview() { }
    pageview() { }
    timing() { }
    flush() { return Promise.resolve(); }
}
exports.NoopAnalytics = NoopAnalytics;
