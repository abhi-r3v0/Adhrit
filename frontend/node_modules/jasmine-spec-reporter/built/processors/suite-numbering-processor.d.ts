import { DisplayProcessor } from "../display-processor";
import { CustomReporterResult } from "../spec-reporter";
export declare class SuiteNumberingProcessor extends DisplayProcessor {
    private static getParentName;
    private suiteHierarchy;
    displaySuite(suite: CustomReporterResult, log: string): string;
    private computeNumber;
    private computeHierarchy;
    private computeHierarchyNumber;
}
