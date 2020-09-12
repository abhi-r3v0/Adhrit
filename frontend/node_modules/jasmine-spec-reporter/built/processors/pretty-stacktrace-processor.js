"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
var configuration_1 = require("../configuration");
var display_processor_1 = require("../display-processor");
var STACK_REG_EXP = /\((.*):(\d+):(\d+)\)/;
var CONTEXT = 2;
var PrettyStacktraceProcessor = /** @class */ (function (_super) {
    __extends(PrettyStacktraceProcessor, _super);
    function PrettyStacktraceProcessor() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    PrettyStacktraceProcessor.prototype.displaySpecErrorMessages = function (spec, log) {
        return this.configuration.spec.displayStacktrace === configuration_1.StacktraceOption.PRETTY ? this.displayErrorMessages(spec) : log;
    };
    PrettyStacktraceProcessor.prototype.displaySummaryErrorMessages = function (spec, log) {
        return this.configuration.summary.displayStacktrace === configuration_1.StacktraceOption.PRETTY ? this.displayErrorMessages(spec) : log;
    };
    PrettyStacktraceProcessor.prototype.displayErrorMessages = function (spec) {
        var logs = [];
        for (var _i = 0, _a = spec.failedExpectations; _i < _a.length; _i++) {
            var failedExpectation = _a[_i];
            logs.push("- ".failed + failedExpectation.message.failed);
            if (failedExpectation.stack) {
                logs.push(this.prettifyStack(failedExpectation.stack));
            }
        }
        return logs.join("\n");
    };
    PrettyStacktraceProcessor.prototype.prettifyStack = function (stack) {
        var _this = this;
        var logs = [];
        var filteredStack = this.configuration.stacktrace.filter(stack);
        var stackRegExp = new RegExp(STACK_REG_EXP);
        filteredStack.split("\n").forEach(function (stackLine) {
            if (stackRegExp.test(stackLine)) {
                var _a = stackLine.match(stackRegExp), filename = _a[1], lineNumber = _a[2], columnNumber = _a[3];
                var errorContext = _this.retrieveErrorContext(filename, parseInt(lineNumber, 10), parseInt(columnNumber, 10));
                logs.push(filename.prettyStacktraceFilename + ":" + lineNumber.prettyStacktraceLineNumber + ":" + columnNumber.prettyStacktraceColumnNumber);
                logs.push(errorContext + "\n");
            }
        });
        return "\n" + logs.join("\n");
    };
    PrettyStacktraceProcessor.prototype.retrieveErrorContext = function (filename, lineNb, columnNb) {
        var logs = [];
        var fileLines;
        try {
            fileLines = fs.readFileSync(filename, "utf-8")
                .split("\n");
        }
        catch (error) {
            return "jasmine-spec-reporter: unable to open '" + filename + "'\n" + error;
        }
        for (var i = 0; i < fileLines.length; i++) {
            var errorLine = lineNb - 1;
            if (i >= errorLine - CONTEXT && i <= errorLine + CONTEXT) {
                logs.push(fileLines[i]);
            }
            if (i === errorLine) {
                logs.push(" ".repeat(columnNb - 1) + "~".red);
            }
        }
        return logs.join("\n");
    };
    return PrettyStacktraceProcessor;
}(display_processor_1.DisplayProcessor));
exports.PrettyStacktraceProcessor = PrettyStacktraceProcessor;
//# sourceMappingURL=pretty-stacktrace-processor.js.map