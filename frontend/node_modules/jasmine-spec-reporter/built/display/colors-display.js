"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var colors = require("colors");
function init(configuration) {
    colors.enabled = configuration.colors.enabled;
    colors.setTheme({
        failed: configuration.colors.failed,
        pending: configuration.colors.pending,
        successful: configuration.colors.successful,
        prettyStacktraceFilename: configuration.colors.prettyStacktraceFilename,
        prettyStacktraceLineNumber: configuration.colors.prettyStacktraceLineNumber,
        prettyStacktraceColumnNumber: configuration.colors.prettyStacktraceColumnNumber,
        prettyStacktraceError: configuration.colors.prettyStacktraceError,
    });
}
exports.init = init;
//# sourceMappingURL=colors-display.js.map