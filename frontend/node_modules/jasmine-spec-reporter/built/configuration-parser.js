"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var configuration_1 = require("./configuration");
function parse(conf) {
    return merge(defaultConfiguration, conf);
}
exports.parse = parse;
var isWindows = process && process.platform === "win32";
var defaultConfiguration = {
    colors: {
        enabled: true,
        failed: "red",
        pending: "yellow",
        successful: "green",
        prettyStacktraceFilename: "cyan",
        prettyStacktraceLineNumber: "yellow",
        prettyStacktraceColumnNumber: "yellow",
        prettyStacktraceError: "red",
    },
    customProcessors: [],
    prefixes: {
        failed: isWindows ? "\u00D7 " : "✗ ",
        pending: "* ",
        successful: isWindows ? "\u221A " : "✓ ",
    },
    print: function (stuff) { return console.log(stuff); },
    spec: {
        displayDuration: false,
        displayErrorMessages: true,
        displayFailed: true,
        displayPending: false,
        displayStacktrace: configuration_1.StacktraceOption.NONE,
        displaySuccessful: true,
    },
    stacktrace: {
        filter: function (stacktrace) {
            var lines = stacktrace.split("\n");
            var filtered = [];
            for (var i = 1; i < lines.length; i++) {
                if (!/(jasmine[^\/]*\.js|Timer\.listOnTimeout)/.test(lines[i])) {
                    filtered.push(lines[i]);
                }
            }
            return filtered.join("\n");
        }
    },
    suite: {
        displayNumber: false,
    },
    summary: {
        displayDuration: true,
        displayErrorMessages: true,
        displayFailed: true,
        displayPending: true,
        displayStacktrace: configuration_1.StacktraceOption.NONE,
        displaySuccessful: false,
    },
};
function merge(template, override) {
    var result = {};
    for (var key in template) {
        if (template[key] instanceof Object
            && !(template[key] instanceof Array)
            && !(template[key] instanceof Function)
            && override instanceof Object
            && override[key] instanceof Object
            && !(override[key] instanceof Array)
            && !(override[key] instanceof Function)) {
            result[key] = merge(template[key], override[key]);
        }
        else if (override instanceof Object
            && Object.keys(override).indexOf(key) !== -1) {
            result[key] = override[key];
            if (key === "displayStacktrace" && typeof override[key] === "boolean") {
                console.warn("WARN: jasmine-spec-reporter 'displayStacktrace' option supports value ('none', 'raw', 'pretty'), default to 'none'\n".yellow);
                result[key] = configuration_1.StacktraceOption.NONE;
            }
        }
        else {
            result[key] = template[key];
        }
    }
    if (override instanceof Object && override.customOptions) {
        result.customOptions = override.customOptions;
    }
    return result;
}
//# sourceMappingURL=configuration-parser.js.map