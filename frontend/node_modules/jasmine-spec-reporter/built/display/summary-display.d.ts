import { Configuration } from "../configuration";
import { ExecutionMetrics } from "../execution-metrics";
import { ExecutedSpecs } from "../spec-reporter";
import { Logger } from "./logger";
export declare class SummaryDisplay {
    private logger;
    private configuration;
    private specs;
    constructor(logger: Logger, configuration: Configuration, specs: ExecutedSpecs);
    display(metrics: ExecutionMetrics): void;
    private successesSummary;
    private successfulSummary;
    private failuresSummary;
    private failedSummary;
    private pendingsSummary;
    private pendingSummary;
    private errorsSummary;
    private errorSummary;
}
