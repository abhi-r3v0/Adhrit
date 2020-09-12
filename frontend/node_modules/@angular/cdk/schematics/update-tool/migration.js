"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.Migration = void 0;
const ts = require("typescript");
class Migration {
    constructor(
    /** TypeScript program for the migration. */
    program, 
    /** TypeChecker instance for the analysis program. */
    typeChecker, 
    /** Version for which the migration rule should run. */
    targetVersion, 
    /** Context data for the migration. */
    context, 
    /** Upgrade data passed to the migration. */
    upgradeData, 
    /** File system that can be used for modifying files. */
    fileSystem, 
    /** Logger that can be used to print messages as part of the migration. */
    logger) {
        this.program = program;
        this.typeChecker = typeChecker;
        this.targetVersion = targetVersion;
        this.context = context;
        this.upgradeData = upgradeData;
        this.fileSystem = fileSystem;
        this.logger = logger;
        /** List of migration failures that need to be reported. */
        this.failures = [];
    }
    /** Method can be used to perform global analysis of the program. */
    init() { }
    /**
     * Method that will be called once all nodes, templates and stylesheets
     * have been visited.
     */
    postAnalysis() { }
    /**
     * Method that will be called for each node in a given source file. Unlike tslint, this
     * function will only retrieve TypeScript nodes that need to be casted manually. This
     * allows us to only walk the program source files once per program and not per
     * migration rule (significant performance boost).
     */
    visitNode(node) { }
    /** Method that will be called for each Angular template in the program. */
    visitTemplate(template) { }
    /** Method that will be called for each stylesheet in the program. */
    visitStylesheet(stylesheet) { }
    /** Creates a failure with a specified message at the given node location. */
    createFailureAtNode(node, message) {
        const sourceFile = node.getSourceFile();
        this.failures.push({
            filePath: this.fileSystem.resolve(sourceFile.fileName),
            position: ts.getLineAndCharacterOfPosition(sourceFile, node.getStart()),
            message: message,
        });
    }
}
exports.Migration = Migration;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWlncmF0aW9uLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9zY2hlbWF0aWNzL3VwZGF0ZS10b29sL21pZ3JhdGlvbi50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUE7Ozs7OztHQU1HOzs7QUFFSCxpQ0FBaUM7QUF1QmpDLE1BQXNCLFNBQVM7SUFPN0I7SUFDSSw0Q0FBNEM7SUFDckMsT0FBbUI7SUFDMUIscURBQXFEO0lBQzlDLFdBQTJCO0lBQ2xDLHVEQUF1RDtJQUNoRCxhQUE0QjtJQUNuQyxzQ0FBc0M7SUFDL0IsT0FBZ0I7SUFDdkIsNENBQTRDO0lBQ3JDLFdBQWlCO0lBQ3hCLHdEQUF3RDtJQUNqRCxVQUFzQjtJQUM3QiwwRUFBMEU7SUFDbkUsTUFBb0I7UUFacEIsWUFBTyxHQUFQLE9BQU8sQ0FBWTtRQUVuQixnQkFBVyxHQUFYLFdBQVcsQ0FBZ0I7UUFFM0Isa0JBQWEsR0FBYixhQUFhLENBQWU7UUFFNUIsWUFBTyxHQUFQLE9BQU8sQ0FBUztRQUVoQixnQkFBVyxHQUFYLFdBQVcsQ0FBTTtRQUVqQixlQUFVLEdBQVYsVUFBVSxDQUFZO1FBRXRCLFdBQU0sR0FBTixNQUFNLENBQWM7UUFwQi9CLDJEQUEyRDtRQUMzRCxhQUFRLEdBQXVCLEVBQUUsQ0FBQztJQW1CQSxDQUFDO0lBRW5DLG9FQUFvRTtJQUNwRSxJQUFJLEtBQVUsQ0FBQztJQUVmOzs7T0FHRztJQUNILFlBQVksS0FBVSxDQUFDO0lBRXZCOzs7OztPQUtHO0lBQ0gsU0FBUyxDQUFDLElBQWEsSUFBUyxDQUFDO0lBRWpDLDJFQUEyRTtJQUMzRSxhQUFhLENBQUMsUUFBMEIsSUFBUyxDQUFDO0lBRWxELHFFQUFxRTtJQUNyRSxlQUFlLENBQUMsVUFBNEIsSUFBUyxDQUFDO0lBRXRELDZFQUE2RTtJQUNuRSxtQkFBbUIsQ0FBQyxJQUFhLEVBQUUsT0FBZTtRQUMxRCxNQUFNLFVBQVUsR0FBRyxJQUFJLENBQUMsYUFBYSxFQUFFLENBQUM7UUFDeEMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUM7WUFDakIsUUFBUSxFQUFFLElBQUksQ0FBQyxVQUFVLENBQUMsT0FBTyxDQUFDLFVBQVUsQ0FBQyxRQUFRLENBQUM7WUFDdEQsUUFBUSxFQUFFLEVBQUUsQ0FBQyw2QkFBNkIsQ0FBQyxVQUFVLEVBQUUsSUFBSSxDQUFDLFFBQVEsRUFBRSxDQUFDO1lBQ3ZFLE9BQU8sRUFBRSxPQUFPO1NBQ2pCLENBQUMsQ0FBQztJQUNMLENBQUM7Q0FDRjtBQXZERCw4QkF1REMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5pbXBvcnQge1Jlc29sdmVkUmVzb3VyY2V9IGZyb20gJy4vY29tcG9uZW50LXJlc291cmNlLWNvbGxlY3Rvcic7XG5pbXBvcnQge0ZpbGVTeXN0ZW0sIFdvcmtzcGFjZVBhdGh9IGZyb20gJy4vZmlsZS1zeXN0ZW0nO1xuaW1wb3J0IHtVcGRhdGVMb2dnZXJ9IGZyb20gJy4vbG9nZ2VyJztcbmltcG9ydCB7VGFyZ2V0VmVyc2lvbn0gZnJvbSAnLi90YXJnZXQtdmVyc2lvbic7XG5pbXBvcnQge0xpbmVBbmRDaGFyYWN0ZXJ9IGZyb20gJy4vdXRpbHMvbGluZS1tYXBwaW5ncyc7XG5cbmV4cG9ydCBpbnRlcmZhY2UgTWlncmF0aW9uRmFpbHVyZSB7XG4gIGZpbGVQYXRoOiBXb3Jrc3BhY2VQYXRoO1xuICBtZXNzYWdlOiBzdHJpbmc7XG4gIHBvc2l0aW9uPzogTGluZUFuZENoYXJhY3Rlcjtcbn1cblxuZXhwb3J0IHR5cGUgUG9zdE1pZ3JhdGlvbkFjdGlvbiA9IHZvaWQgfCB7XG4gIC8qKiBXaGV0aGVyIHRoZSBwYWNrYWdlIG1hbmFnZXIgc2hvdWxkIHJ1biB1cG9uIG1pZ3JhdGlvbiBjb21wbGV0aW9uLiAqL1xuICBydW5QYWNrYWdlTWFuYWdlcjogYm9vbGVhbjtcbn07XG5cbi8qKiBDcmVhdGVzIGEgY29uc3RydWN0b3IgdHlwZSBmb3IgdGhlIHNwZWNpZmllZCB0eXBlLiAqL1xuZXhwb3J0IHR5cGUgQ29uc3RydWN0b3I8VD4gPSAobmV3ICguLi5hcmdzOiBhbnlbXSkgPT4gVCk7XG4vKiogR2V0cyBhIGNvbnN0cnVjdG9yIHR5cGUgZm9yIHRoZSBwYXNzZWQgbWlncmF0aW9uIGRhdGEuICovXG5leHBvcnQgdHlwZSBNaWdyYXRpb25DdG9yPERhdGEsIENvbnRleHQgPSBuZXZlcj4gPSBDb25zdHJ1Y3RvcjxNaWdyYXRpb248RGF0YSwgQ29udGV4dD4+O1xuXG5leHBvcnQgYWJzdHJhY3QgY2xhc3MgTWlncmF0aW9uPERhdGEsIENvbnRleHQgPSBuZXZlcj4ge1xuICAvKiogTGlzdCBvZiBtaWdyYXRpb24gZmFpbHVyZXMgdGhhdCBuZWVkIHRvIGJlIHJlcG9ydGVkLiAqL1xuICBmYWlsdXJlczogTWlncmF0aW9uRmFpbHVyZVtdID0gW107XG5cbiAgLyoqIFdoZXRoZXIgdGhlIG1pZ3JhdGlvbiBpcyBlbmFibGVkIG9yIG5vdC4gKi9cbiAgYWJzdHJhY3QgZW5hYmxlZDogYm9vbGVhbjtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIC8qKiBUeXBlU2NyaXB0IHByb2dyYW0gZm9yIHRoZSBtaWdyYXRpb24uICovXG4gICAgICBwdWJsaWMgcHJvZ3JhbTogdHMuUHJvZ3JhbSxcbiAgICAgIC8qKiBUeXBlQ2hlY2tlciBpbnN0YW5jZSBmb3IgdGhlIGFuYWx5c2lzIHByb2dyYW0uICovXG4gICAgICBwdWJsaWMgdHlwZUNoZWNrZXI6IHRzLlR5cGVDaGVja2VyLFxuICAgICAgLyoqIFZlcnNpb24gZm9yIHdoaWNoIHRoZSBtaWdyYXRpb24gcnVsZSBzaG91bGQgcnVuLiAqL1xuICAgICAgcHVibGljIHRhcmdldFZlcnNpb246IFRhcmdldFZlcnNpb24sXG4gICAgICAvKiogQ29udGV4dCBkYXRhIGZvciB0aGUgbWlncmF0aW9uLiAqL1xuICAgICAgcHVibGljIGNvbnRleHQ6IENvbnRleHQsXG4gICAgICAvKiogVXBncmFkZSBkYXRhIHBhc3NlZCB0byB0aGUgbWlncmF0aW9uLiAqL1xuICAgICAgcHVibGljIHVwZ3JhZGVEYXRhOiBEYXRhLFxuICAgICAgLyoqIEZpbGUgc3lzdGVtIHRoYXQgY2FuIGJlIHVzZWQgZm9yIG1vZGlmeWluZyBmaWxlcy4gKi9cbiAgICAgIHB1YmxpYyBmaWxlU3lzdGVtOiBGaWxlU3lzdGVtLFxuICAgICAgLyoqIExvZ2dlciB0aGF0IGNhbiBiZSB1c2VkIHRvIHByaW50IG1lc3NhZ2VzIGFzIHBhcnQgb2YgdGhlIG1pZ3JhdGlvbi4gKi9cbiAgICAgIHB1YmxpYyBsb2dnZXI6IFVwZGF0ZUxvZ2dlcikge31cblxuICAvKiogTWV0aG9kIGNhbiBiZSB1c2VkIHRvIHBlcmZvcm0gZ2xvYmFsIGFuYWx5c2lzIG9mIHRoZSBwcm9ncmFtLiAqL1xuICBpbml0KCk6IHZvaWQge31cblxuICAvKipcbiAgICogTWV0aG9kIHRoYXQgd2lsbCBiZSBjYWxsZWQgb25jZSBhbGwgbm9kZXMsIHRlbXBsYXRlcyBhbmQgc3R5bGVzaGVldHNcbiAgICogaGF2ZSBiZWVuIHZpc2l0ZWQuXG4gICAqL1xuICBwb3N0QW5hbHlzaXMoKTogdm9pZCB7fVxuXG4gIC8qKlxuICAgKiBNZXRob2QgdGhhdCB3aWxsIGJlIGNhbGxlZCBmb3IgZWFjaCBub2RlIGluIGEgZ2l2ZW4gc291cmNlIGZpbGUuIFVubGlrZSB0c2xpbnQsIHRoaXNcbiAgICogZnVuY3Rpb24gd2lsbCBvbmx5IHJldHJpZXZlIFR5cGVTY3JpcHQgbm9kZXMgdGhhdCBuZWVkIHRvIGJlIGNhc3RlZCBtYW51YWxseS4gVGhpc1xuICAgKiBhbGxvd3MgdXMgdG8gb25seSB3YWxrIHRoZSBwcm9ncmFtIHNvdXJjZSBmaWxlcyBvbmNlIHBlciBwcm9ncmFtIGFuZCBub3QgcGVyXG4gICAqIG1pZ3JhdGlvbiBydWxlIChzaWduaWZpY2FudCBwZXJmb3JtYW5jZSBib29zdCkuXG4gICAqL1xuICB2aXNpdE5vZGUobm9kZTogdHMuTm9kZSk6IHZvaWQge31cblxuICAvKiogTWV0aG9kIHRoYXQgd2lsbCBiZSBjYWxsZWQgZm9yIGVhY2ggQW5ndWxhciB0ZW1wbGF0ZSBpbiB0aGUgcHJvZ3JhbS4gKi9cbiAgdmlzaXRUZW1wbGF0ZSh0ZW1wbGF0ZTogUmVzb2x2ZWRSZXNvdXJjZSk6IHZvaWQge31cblxuICAvKiogTWV0aG9kIHRoYXQgd2lsbCBiZSBjYWxsZWQgZm9yIGVhY2ggc3R5bGVzaGVldCBpbiB0aGUgcHJvZ3JhbS4gKi9cbiAgdmlzaXRTdHlsZXNoZWV0KHN0eWxlc2hlZXQ6IFJlc29sdmVkUmVzb3VyY2UpOiB2b2lkIHt9XG5cbiAgLyoqIENyZWF0ZXMgYSBmYWlsdXJlIHdpdGggYSBzcGVjaWZpZWQgbWVzc2FnZSBhdCB0aGUgZ2l2ZW4gbm9kZSBsb2NhdGlvbi4gKi9cbiAgcHJvdGVjdGVkIGNyZWF0ZUZhaWx1cmVBdE5vZGUobm9kZTogdHMuTm9kZSwgbWVzc2FnZTogc3RyaW5nKSB7XG4gICAgY29uc3Qgc291cmNlRmlsZSA9IG5vZGUuZ2V0U291cmNlRmlsZSgpO1xuICAgIHRoaXMuZmFpbHVyZXMucHVzaCh7XG4gICAgICBmaWxlUGF0aDogdGhpcy5maWxlU3lzdGVtLnJlc29sdmUoc291cmNlRmlsZS5maWxlTmFtZSksXG4gICAgICBwb3NpdGlvbjogdHMuZ2V0TGluZUFuZENoYXJhY3Rlck9mUG9zaXRpb24oc291cmNlRmlsZSwgbm9kZS5nZXRTdGFydCgpKSxcbiAgICAgIG1lc3NhZ2U6IG1lc3NhZ2UsXG4gICAgfSk7XG4gIH1cbn1cbiJdfQ==