import { DisplayProcessor } from "../display-processor";
import { CustomReporterResult } from "../spec-reporter";
export declare class PrettyStacktraceProcessor extends DisplayProcessor {
    displaySpecErrorMessages(spec: CustomReporterResult, log: string): string;
    displaySummaryErrorMessages(spec: CustomReporterResult, log: string): string;
    private displayErrorMessages;
    private prettifyStack;
    private retrieveErrorContext;
}
