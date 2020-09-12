"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.isDevkitMigration = exports.createMigrationSchematicRule = exports.cdkMigrations = void 0;
const tasks_1 = require("@angular-devkit/schematics/tasks");
const update_tool_1 = require("../update-tool");
const project_tsconfig_paths_1 = require("../utils/project-tsconfig-paths");
const devkit_file_system_1 = require("./devkit-file-system");
const devkit_migration_1 = require("./devkit-migration");
const find_stylesheets_1 = require("./find-stylesheets");
const attribute_selectors_1 = require("./migrations/attribute-selectors");
const class_inheritance_1 = require("./migrations/class-inheritance");
const class_names_1 = require("./migrations/class-names");
const constructor_signature_1 = require("./migrations/constructor-signature");
const css_selectors_1 = require("./migrations/css-selectors");
const element_selectors_1 = require("./migrations/element-selectors");
const input_names_1 = require("./migrations/input-names");
const method_call_arguments_1 = require("./migrations/method-call-arguments");
const misc_template_1 = require("./migrations/misc-template");
const output_names_1 = require("./migrations/output-names");
const property_names_1 = require("./migrations/property-names");
/** List of migrations which run for the CDK update. */
exports.cdkMigrations = [
    attribute_selectors_1.AttributeSelectorsMigration,
    class_inheritance_1.ClassInheritanceMigration,
    class_names_1.ClassNamesMigration,
    constructor_signature_1.ConstructorSignatureMigration,
    css_selectors_1.CssSelectorsMigration,
    element_selectors_1.ElementSelectorsMigration,
    input_names_1.InputNamesMigration,
    method_call_arguments_1.MethodCallArgumentsMigration,
    misc_template_1.MiscTemplateMigration,
    output_names_1.OutputNamesMigration,
    property_names_1.PropertyNamesMigration,
];
/**
 * Creates a Angular schematic rule that runs the upgrade for the
 * specified target version.
 */
function createMigrationSchematicRule(targetVersion, extraMigrations, upgradeData, onMigrationCompleteFn) {
    return (tree, context) => __awaiter(this, void 0, void 0, function* () {
        const logger = context.logger;
        const workspace = project_tsconfig_paths_1.getWorkspaceConfigGracefully(tree);
        if (workspace === null) {
            logger.error('Could not find workspace configuration file.');
            return;
        }
        // Keep track of all project source files which have been checked/migrated. This is
        // necessary because multiple TypeScript projects can contain the same source file and
        // we don't want to check these again, as this would result in duplicated failure messages.
        const analyzedFiles = new Set();
        const fileSystem = new devkit_file_system_1.DevkitFileSystem(tree);
        const projectNames = Object.keys(workspace.projects);
        const migrations = [...exports.cdkMigrations, ...extraMigrations];
        let hasFailures = false;
        for (const projectName of projectNames) {
            const project = workspace.projects[projectName];
            const buildTsconfigPath = project_tsconfig_paths_1.getTargetTsconfigPath(project, 'build');
            const testTsconfigPath = project_tsconfig_paths_1.getTargetTsconfigPath(project, 'test');
            if (!buildTsconfigPath && !testTsconfigPath) {
                logger.warn(`Could not find TypeScript project for project: ${projectName}`);
                continue;
            }
            // In some applications, developers will have global stylesheets which are not
            // specified in any Angular component. Therefore we glob up all CSS and SCSS files
            // in the project and migrate them if needed.
            // TODO: rework this to collect global stylesheets from the workspace config. COMP-280.
            const additionalStylesheetPaths = find_stylesheets_1.findStylesheetFiles(tree, project.root);
            if (buildTsconfigPath !== null) {
                runMigrations(project, projectName, buildTsconfigPath, additionalStylesheetPaths, false);
            }
            if (testTsconfigPath !== null) {
                runMigrations(project, projectName, testTsconfigPath, additionalStylesheetPaths, true);
            }
        }
        let runPackageManager = false;
        // Run the global post migration static members for all
        // registered devkit migrations.
        migrations.forEach(m => {
            const actionResult = isDevkitMigration(m) && m.globalPostMigration !== undefined ?
                m.globalPostMigration(tree, context) : null;
            if (actionResult) {
                runPackageManager = runPackageManager || actionResult.runPackageManager;
            }
        });
        // If a migration requested the package manager to run, we run it as an
        // asynchronous post migration task. We cannot run it synchronously,
        // as file changes from the current migration task are not applied to
        // the file system yet.
        if (runPackageManager) {
            context.addTask(new tasks_1.NodePackageInstallTask({ quiet: false }));
        }
        if (onMigrationCompleteFn) {
            onMigrationCompleteFn(context, targetVersion, hasFailures);
        }
        /** Runs the migrations for the specified workspace project. */
        function runMigrations(project, projectName, tsconfigPath, additionalStylesheetPaths, isTestTarget) {
            const program = update_tool_1.UpdateProject.createProgramFromTsconfig(tsconfigPath, fileSystem);
            const updateContext = {
                isTestTarget,
                projectName,
                project,
                tree,
            };
            const updateProject = new update_tool_1.UpdateProject(updateContext, program, fileSystem, analyzedFiles, context.logger);
            const result = updateProject.migrate(migrations, targetVersion, upgradeData, additionalStylesheetPaths);
            // Commit all recorded edits in the update recorder. We apply the edits after all
            // migrations ran because otherwise offsets in the TypeScript program would be
            // shifted and individual migrations could no longer update the same source file.
            fileSystem.commitEdits();
            hasFailures = hasFailures || result.hasFailures;
        }
    });
}
exports.createMigrationSchematicRule = createMigrationSchematicRule;
/** Whether the given migration type refers to a devkit migration */
function isDevkitMigration(value) {
    return devkit_migration_1.DevkitMigration.isPrototypeOf(value);
}
exports.isDevkitMigration = isDevkitMigration;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGV2a2l0LW1pZ3JhdGlvbi1ydWxlLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9zY2hlbWF0aWNzL25nLXVwZGF0ZS9kZXZraXQtbWlncmF0aW9uLXJ1bGUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7O0FBR0gsNERBQXdFO0FBR3hFLGdEQUE2QztBQUk3Qyw0RUFBb0c7QUFFcEcsNkRBQXNEO0FBQ3RELHlEQUF1RjtBQUN2Rix5REFBdUQ7QUFDdkQsMEVBQTZFO0FBQzdFLHNFQUF5RTtBQUN6RSwwREFBNkQ7QUFDN0QsOEVBQWlGO0FBQ2pGLDhEQUFpRTtBQUNqRSxzRUFBeUU7QUFDekUsMERBQTZEO0FBQzdELDhFQUFnRjtBQUNoRiw4REFBaUU7QUFDakUsNERBQStEO0FBQy9ELGdFQUFtRTtBQUluRSx1REFBdUQ7QUFDMUMsUUFBQSxhQUFhLEdBQWlDO0lBQ3pELGlEQUEyQjtJQUMzQiw2Q0FBeUI7SUFDekIsaUNBQW1CO0lBQ25CLHFEQUE2QjtJQUM3QixxQ0FBcUI7SUFDckIsNkNBQXlCO0lBQ3pCLGlDQUFtQjtJQUNuQixvREFBNEI7SUFDNUIscUNBQXFCO0lBQ3JCLG1DQUFvQjtJQUNwQix1Q0FBc0I7Q0FDdkIsQ0FBQztBQU9GOzs7R0FHRztBQUNILFNBQWdCLDRCQUE0QixDQUN4QyxhQUE0QixFQUFFLGVBQTBDLEVBQ3hFLFdBQXdCLEVBQUUscUJBQXVDO0lBQ25FLE9BQU8sQ0FBTyxJQUFVLEVBQUUsT0FBeUIsRUFBRSxFQUFFO1FBQ3JELE1BQU0sTUFBTSxHQUFHLE9BQU8sQ0FBQyxNQUFNLENBQUM7UUFDOUIsTUFBTSxTQUFTLEdBQUcscURBQTRCLENBQUMsSUFBSSxDQUFDLENBQUM7UUFFckQsSUFBSSxTQUFTLEtBQUssSUFBSSxFQUFFO1lBQ3RCLE1BQU0sQ0FBQyxLQUFLLENBQUMsOENBQThDLENBQUMsQ0FBQztZQUM3RCxPQUFPO1NBQ1I7UUFFRCxtRkFBbUY7UUFDbkYsc0ZBQXNGO1FBQ3RGLDJGQUEyRjtRQUMzRixNQUFNLGFBQWEsR0FBRyxJQUFJLEdBQUcsRUFBaUIsQ0FBQztRQUMvQyxNQUFNLFVBQVUsR0FBRyxJQUFJLHFDQUFnQixDQUFDLElBQUksQ0FBQyxDQUFDO1FBQzlDLE1BQU0sWUFBWSxHQUFHLE1BQU0sQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLFFBQVEsQ0FBQyxDQUFDO1FBQ3JELE1BQU0sVUFBVSxHQUE4QixDQUFDLEdBQUcscUJBQWEsRUFBRSxHQUFHLGVBQWUsQ0FBQyxDQUFDO1FBQ3JGLElBQUksV0FBVyxHQUFHLEtBQUssQ0FBQztRQUV4QixLQUFLLE1BQU0sV0FBVyxJQUFJLFlBQVksRUFBRTtZQUN0QyxNQUFNLE9BQU8sR0FBRyxTQUFTLENBQUMsUUFBUSxDQUFDLFdBQVcsQ0FBQyxDQUFDO1lBQ2hELE1BQU0saUJBQWlCLEdBQUcsOENBQXFCLENBQUMsT0FBTyxFQUFFLE9BQU8sQ0FBQyxDQUFDO1lBQ2xFLE1BQU0sZ0JBQWdCLEdBQUcsOENBQXFCLENBQUMsT0FBTyxFQUFFLE1BQU0sQ0FBQyxDQUFDO1lBRWhFLElBQUksQ0FBQyxpQkFBaUIsSUFBSSxDQUFDLGdCQUFnQixFQUFFO2dCQUMzQyxNQUFNLENBQUMsSUFBSSxDQUFDLGtEQUFrRCxXQUFXLEVBQUUsQ0FBQyxDQUFDO2dCQUM3RSxTQUFTO2FBQ1Y7WUFFRCw4RUFBOEU7WUFDOUUsa0ZBQWtGO1lBQ2xGLDZDQUE2QztZQUM3Qyx1RkFBdUY7WUFDdkYsTUFBTSx5QkFBeUIsR0FBRyxzQ0FBbUIsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLElBQUksQ0FBQyxDQUFDO1lBRTFFLElBQUksaUJBQWlCLEtBQUssSUFBSSxFQUFFO2dCQUM5QixhQUFhLENBQUMsT0FBTyxFQUFFLFdBQVcsRUFBRSxpQkFBaUIsRUFBRSx5QkFBeUIsRUFBRSxLQUFLLENBQUMsQ0FBQzthQUMxRjtZQUNELElBQUksZ0JBQWdCLEtBQUssSUFBSSxFQUFFO2dCQUM3QixhQUFhLENBQUMsT0FBTyxFQUFFLFdBQVcsRUFBRSxnQkFBZ0IsRUFBRSx5QkFBeUIsRUFBRSxJQUFJLENBQUMsQ0FBQzthQUN4RjtTQUNGO1FBRUQsSUFBSSxpQkFBaUIsR0FBRyxLQUFLLENBQUM7UUFDOUIsdURBQXVEO1FBQ3ZELGdDQUFnQztRQUNoQyxVQUFVLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxFQUFFO1lBQ3JCLE1BQU0sWUFBWSxHQUFHLGlCQUFpQixDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQyxtQkFBbUIsS0FBSyxTQUFTLENBQUMsQ0FBQztnQkFDOUUsQ0FBQyxDQUFDLG1CQUFtQixDQUFDLElBQUksRUFBRSxPQUFPLENBQUMsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDO1lBQ2hELElBQUksWUFBWSxFQUFFO2dCQUNoQixpQkFBaUIsR0FBRyxpQkFBaUIsSUFBSSxZQUFZLENBQUMsaUJBQWlCLENBQUM7YUFDekU7UUFDSCxDQUFDLENBQUMsQ0FBQztRQUVILHVFQUF1RTtRQUN2RSxvRUFBb0U7UUFDcEUscUVBQXFFO1FBQ3JFLHVCQUF1QjtRQUN2QixJQUFJLGlCQUFpQixFQUFFO1lBQ3JCLE9BQU8sQ0FBQyxPQUFPLENBQUMsSUFBSSw4QkFBc0IsQ0FBQyxFQUFDLEtBQUssRUFBRSxLQUFLLEVBQUMsQ0FBQyxDQUFDLENBQUM7U0FDN0Q7UUFFRCxJQUFJLHFCQUFxQixFQUFFO1lBQ3pCLHFCQUFxQixDQUFDLE9BQU8sRUFBRSxhQUFhLEVBQUUsV0FBVyxDQUFDLENBQUM7U0FDNUQ7UUFFRCwrREFBK0Q7UUFDL0QsU0FBUyxhQUFhLENBQUMsT0FBeUIsRUFBRSxXQUFtQixFQUM5QyxZQUEyQixFQUFFLHlCQUFtQyxFQUNoRSxZQUFxQjtZQUMxQyxNQUFNLE9BQU8sR0FBRywyQkFBYSxDQUFDLHlCQUF5QixDQUFDLFlBQVksRUFBRSxVQUFVLENBQUMsQ0FBQztZQUNsRixNQUFNLGFBQWEsR0FBa0I7Z0JBQ25DLFlBQVk7Z0JBQ1osV0FBVztnQkFDWCxPQUFPO2dCQUNQLElBQUk7YUFDTCxDQUFDO1lBRUYsTUFBTSxhQUFhLEdBQUcsSUFBSSwyQkFBYSxDQUNyQyxhQUFhLEVBQ2IsT0FBTyxFQUNQLFVBQVUsRUFDVixhQUFhLEVBQ2IsT0FBTyxDQUFDLE1BQU0sQ0FDZixDQUFDO1lBRUYsTUFBTSxNQUFNLEdBQ1YsYUFBYSxDQUFDLE9BQU8sQ0FBQyxVQUFVLEVBQUUsYUFBYSxFQUFFLFdBQVcsRUFBRSx5QkFBeUIsQ0FBQyxDQUFDO1lBRTNGLGlGQUFpRjtZQUNqRiw4RUFBOEU7WUFDOUUsaUZBQWlGO1lBQ2pGLFVBQVUsQ0FBQyxXQUFXLEVBQUUsQ0FBQztZQUV6QixXQUFXLEdBQUcsV0FBVyxJQUFJLE1BQU0sQ0FBQyxXQUFXLENBQUM7UUFDbEQsQ0FBQztJQUNILENBQUMsQ0FBQSxDQUFDO0FBQ0osQ0FBQztBQW5HRCxvRUFtR0M7QUFFRCxvRUFBb0U7QUFDcEUsU0FBZ0IsaUJBQWlCLENBQUMsS0FBOEI7SUFFOUQsT0FBTyxrQ0FBZSxDQUFDLGFBQWEsQ0FBQyxLQUFLLENBQUMsQ0FBQztBQUM5QyxDQUFDO0FBSEQsOENBR0MiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtSdWxlLCBTY2hlbWF0aWNDb250ZXh0LCBUcmVlfSBmcm9tICdAYW5ndWxhci1kZXZraXQvc2NoZW1hdGljcyc7XG5pbXBvcnQge05vZGVQYWNrYWdlSW5zdGFsbFRhc2t9IGZyb20gJ0Bhbmd1bGFyLWRldmtpdC9zY2hlbWF0aWNzL3Rhc2tzJztcbmltcG9ydCB7V29ya3NwYWNlUHJvamVjdH0gZnJvbSAnQHNjaGVtYXRpY3MvYW5ndWxhci91dGlsaXR5L3dvcmtzcGFjZS1tb2RlbHMnO1xuXG5pbXBvcnQge1VwZGF0ZVByb2plY3R9IGZyb20gJy4uL3VwZGF0ZS10b29sJztcbmltcG9ydCB7V29ya3NwYWNlUGF0aH0gZnJvbSAnLi4vdXBkYXRlLXRvb2wvZmlsZS1zeXN0ZW0nO1xuaW1wb3J0IHtNaWdyYXRpb25DdG9yfSBmcm9tICcuLi91cGRhdGUtdG9vbC9taWdyYXRpb24nO1xuaW1wb3J0IHtUYXJnZXRWZXJzaW9ufSBmcm9tICcuLi91cGRhdGUtdG9vbC90YXJnZXQtdmVyc2lvbic7XG5pbXBvcnQge2dldFRhcmdldFRzY29uZmlnUGF0aCwgZ2V0V29ya3NwYWNlQ29uZmlnR3JhY2VmdWxseX0gZnJvbSAnLi4vdXRpbHMvcHJvamVjdC10c2NvbmZpZy1wYXRocyc7XG5cbmltcG9ydCB7RGV2a2l0RmlsZVN5c3RlbX0gZnJvbSAnLi9kZXZraXQtZmlsZS1zeXN0ZW0nO1xuaW1wb3J0IHtEZXZraXRDb250ZXh0LCBEZXZraXRNaWdyYXRpb24sIERldmtpdE1pZ3JhdGlvbkN0b3J9IGZyb20gJy4vZGV2a2l0LW1pZ3JhdGlvbic7XG5pbXBvcnQge2ZpbmRTdHlsZXNoZWV0RmlsZXN9IGZyb20gJy4vZmluZC1zdHlsZXNoZWV0cyc7XG5pbXBvcnQge0F0dHJpYnV0ZVNlbGVjdG9yc01pZ3JhdGlvbn0gZnJvbSAnLi9taWdyYXRpb25zL2F0dHJpYnV0ZS1zZWxlY3RvcnMnO1xuaW1wb3J0IHtDbGFzc0luaGVyaXRhbmNlTWlncmF0aW9ufSBmcm9tICcuL21pZ3JhdGlvbnMvY2xhc3MtaW5oZXJpdGFuY2UnO1xuaW1wb3J0IHtDbGFzc05hbWVzTWlncmF0aW9ufSBmcm9tICcuL21pZ3JhdGlvbnMvY2xhc3MtbmFtZXMnO1xuaW1wb3J0IHtDb25zdHJ1Y3RvclNpZ25hdHVyZU1pZ3JhdGlvbn0gZnJvbSAnLi9taWdyYXRpb25zL2NvbnN0cnVjdG9yLXNpZ25hdHVyZSc7XG5pbXBvcnQge0Nzc1NlbGVjdG9yc01pZ3JhdGlvbn0gZnJvbSAnLi9taWdyYXRpb25zL2Nzcy1zZWxlY3RvcnMnO1xuaW1wb3J0IHtFbGVtZW50U2VsZWN0b3JzTWlncmF0aW9ufSBmcm9tICcuL21pZ3JhdGlvbnMvZWxlbWVudC1zZWxlY3RvcnMnO1xuaW1wb3J0IHtJbnB1dE5hbWVzTWlncmF0aW9ufSBmcm9tICcuL21pZ3JhdGlvbnMvaW5wdXQtbmFtZXMnO1xuaW1wb3J0IHtNZXRob2RDYWxsQXJndW1lbnRzTWlncmF0aW9ufSBmcm9tICcuL21pZ3JhdGlvbnMvbWV0aG9kLWNhbGwtYXJndW1lbnRzJztcbmltcG9ydCB7TWlzY1RlbXBsYXRlTWlncmF0aW9ufSBmcm9tICcuL21pZ3JhdGlvbnMvbWlzYy10ZW1wbGF0ZSc7XG5pbXBvcnQge091dHB1dE5hbWVzTWlncmF0aW9ufSBmcm9tICcuL21pZ3JhdGlvbnMvb3V0cHV0LW5hbWVzJztcbmltcG9ydCB7UHJvcGVydHlOYW1lc01pZ3JhdGlvbn0gZnJvbSAnLi9taWdyYXRpb25zL3Byb3BlcnR5LW5hbWVzJztcbmltcG9ydCB7VXBncmFkZURhdGF9IGZyb20gJy4vdXBncmFkZS1kYXRhJztcblxuXG4vKiogTGlzdCBvZiBtaWdyYXRpb25zIHdoaWNoIHJ1biBmb3IgdGhlIENESyB1cGRhdGUuICovXG5leHBvcnQgY29uc3QgY2RrTWlncmF0aW9uczogTWlncmF0aW9uQ3RvcjxVcGdyYWRlRGF0YT5bXSA9IFtcbiAgQXR0cmlidXRlU2VsZWN0b3JzTWlncmF0aW9uLFxuICBDbGFzc0luaGVyaXRhbmNlTWlncmF0aW9uLFxuICBDbGFzc05hbWVzTWlncmF0aW9uLFxuICBDb25zdHJ1Y3RvclNpZ25hdHVyZU1pZ3JhdGlvbixcbiAgQ3NzU2VsZWN0b3JzTWlncmF0aW9uLFxuICBFbGVtZW50U2VsZWN0b3JzTWlncmF0aW9uLFxuICBJbnB1dE5hbWVzTWlncmF0aW9uLFxuICBNZXRob2RDYWxsQXJndW1lbnRzTWlncmF0aW9uLFxuICBNaXNjVGVtcGxhdGVNaWdyYXRpb24sXG4gIE91dHB1dE5hbWVzTWlncmF0aW9uLFxuICBQcm9wZXJ0eU5hbWVzTWlncmF0aW9uLFxuXTtcblxuZXhwb3J0IHR5cGUgTnVsbGFibGVEZXZraXRNaWdyYXRpb24gPSBNaWdyYXRpb25DdG9yPFVwZ3JhZGVEYXRhfG51bGwsIERldmtpdENvbnRleHQ+O1xuXG50eXBlIFBvc3RNaWdyYXRpb25GbiA9XG4gICAgKGNvbnRleHQ6IFNjaGVtYXRpY0NvbnRleHQsIHRhcmdldFZlcnNpb246IFRhcmdldFZlcnNpb24sIGhhc0ZhaWx1cmU6IGJvb2xlYW4pID0+IHZvaWQ7XG5cbi8qKlxuICogQ3JlYXRlcyBhIEFuZ3VsYXIgc2NoZW1hdGljIHJ1bGUgdGhhdCBydW5zIHRoZSB1cGdyYWRlIGZvciB0aGVcbiAqIHNwZWNpZmllZCB0YXJnZXQgdmVyc2lvbi5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGNyZWF0ZU1pZ3JhdGlvblNjaGVtYXRpY1J1bGUoXG4gICAgdGFyZ2V0VmVyc2lvbjogVGFyZ2V0VmVyc2lvbiwgZXh0cmFNaWdyYXRpb25zOiBOdWxsYWJsZURldmtpdE1pZ3JhdGlvbltdLFxuICAgIHVwZ3JhZGVEYXRhOiBVcGdyYWRlRGF0YSwgb25NaWdyYXRpb25Db21wbGV0ZUZuPzogUG9zdE1pZ3JhdGlvbkZuKTogUnVsZSB7XG4gIHJldHVybiBhc3luYyAodHJlZTogVHJlZSwgY29udGV4dDogU2NoZW1hdGljQ29udGV4dCkgPT4ge1xuICAgIGNvbnN0IGxvZ2dlciA9IGNvbnRleHQubG9nZ2VyO1xuICAgIGNvbnN0IHdvcmtzcGFjZSA9IGdldFdvcmtzcGFjZUNvbmZpZ0dyYWNlZnVsbHkodHJlZSk7XG5cbiAgICBpZiAod29ya3NwYWNlID09PSBudWxsKSB7XG4gICAgICBsb2dnZXIuZXJyb3IoJ0NvdWxkIG5vdCBmaW5kIHdvcmtzcGFjZSBjb25maWd1cmF0aW9uIGZpbGUuJyk7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgLy8gS2VlcCB0cmFjayBvZiBhbGwgcHJvamVjdCBzb3VyY2UgZmlsZXMgd2hpY2ggaGF2ZSBiZWVuIGNoZWNrZWQvbWlncmF0ZWQuIFRoaXMgaXNcbiAgICAvLyBuZWNlc3NhcnkgYmVjYXVzZSBtdWx0aXBsZSBUeXBlU2NyaXB0IHByb2plY3RzIGNhbiBjb250YWluIHRoZSBzYW1lIHNvdXJjZSBmaWxlIGFuZFxuICAgIC8vIHdlIGRvbid0IHdhbnQgdG8gY2hlY2sgdGhlc2UgYWdhaW4sIGFzIHRoaXMgd291bGQgcmVzdWx0IGluIGR1cGxpY2F0ZWQgZmFpbHVyZSBtZXNzYWdlcy5cbiAgICBjb25zdCBhbmFseXplZEZpbGVzID0gbmV3IFNldDxXb3Jrc3BhY2VQYXRoPigpO1xuICAgIGNvbnN0IGZpbGVTeXN0ZW0gPSBuZXcgRGV2a2l0RmlsZVN5c3RlbSh0cmVlKTtcbiAgICBjb25zdCBwcm9qZWN0TmFtZXMgPSBPYmplY3Qua2V5cyh3b3Jrc3BhY2UucHJvamVjdHMpO1xuICAgIGNvbnN0IG1pZ3JhdGlvbnM6IE51bGxhYmxlRGV2a2l0TWlncmF0aW9uW10gPSBbLi4uY2RrTWlncmF0aW9ucywgLi4uZXh0cmFNaWdyYXRpb25zXTtcbiAgICBsZXQgaGFzRmFpbHVyZXMgPSBmYWxzZTtcblxuICAgIGZvciAoY29uc3QgcHJvamVjdE5hbWUgb2YgcHJvamVjdE5hbWVzKSB7XG4gICAgICBjb25zdCBwcm9qZWN0ID0gd29ya3NwYWNlLnByb2plY3RzW3Byb2plY3ROYW1lXTtcbiAgICAgIGNvbnN0IGJ1aWxkVHNjb25maWdQYXRoID0gZ2V0VGFyZ2V0VHNjb25maWdQYXRoKHByb2plY3QsICdidWlsZCcpO1xuICAgICAgY29uc3QgdGVzdFRzY29uZmlnUGF0aCA9IGdldFRhcmdldFRzY29uZmlnUGF0aChwcm9qZWN0LCAndGVzdCcpO1xuXG4gICAgICBpZiAoIWJ1aWxkVHNjb25maWdQYXRoICYmICF0ZXN0VHNjb25maWdQYXRoKSB7XG4gICAgICAgIGxvZ2dlci53YXJuKGBDb3VsZCBub3QgZmluZCBUeXBlU2NyaXB0IHByb2plY3QgZm9yIHByb2plY3Q6ICR7cHJvamVjdE5hbWV9YCk7XG4gICAgICAgIGNvbnRpbnVlO1xuICAgICAgfVxuXG4gICAgICAvLyBJbiBzb21lIGFwcGxpY2F0aW9ucywgZGV2ZWxvcGVycyB3aWxsIGhhdmUgZ2xvYmFsIHN0eWxlc2hlZXRzIHdoaWNoIGFyZSBub3RcbiAgICAgIC8vIHNwZWNpZmllZCBpbiBhbnkgQW5ndWxhciBjb21wb25lbnQuIFRoZXJlZm9yZSB3ZSBnbG9iIHVwIGFsbCBDU1MgYW5kIFNDU1MgZmlsZXNcbiAgICAgIC8vIGluIHRoZSBwcm9qZWN0IGFuZCBtaWdyYXRlIHRoZW0gaWYgbmVlZGVkLlxuICAgICAgLy8gVE9ETzogcmV3b3JrIHRoaXMgdG8gY29sbGVjdCBnbG9iYWwgc3R5bGVzaGVldHMgZnJvbSB0aGUgd29ya3NwYWNlIGNvbmZpZy4gQ09NUC0yODAuXG4gICAgICBjb25zdCBhZGRpdGlvbmFsU3R5bGVzaGVldFBhdGhzID0gZmluZFN0eWxlc2hlZXRGaWxlcyh0cmVlLCBwcm9qZWN0LnJvb3QpO1xuXG4gICAgICBpZiAoYnVpbGRUc2NvbmZpZ1BhdGggIT09IG51bGwpIHtcbiAgICAgICAgcnVuTWlncmF0aW9ucyhwcm9qZWN0LCBwcm9qZWN0TmFtZSwgYnVpbGRUc2NvbmZpZ1BhdGgsIGFkZGl0aW9uYWxTdHlsZXNoZWV0UGF0aHMsIGZhbHNlKTtcbiAgICAgIH1cbiAgICAgIGlmICh0ZXN0VHNjb25maWdQYXRoICE9PSBudWxsKSB7XG4gICAgICAgIHJ1bk1pZ3JhdGlvbnMocHJvamVjdCwgcHJvamVjdE5hbWUsIHRlc3RUc2NvbmZpZ1BhdGgsIGFkZGl0aW9uYWxTdHlsZXNoZWV0UGF0aHMsIHRydWUpO1xuICAgICAgfVxuICAgIH1cblxuICAgIGxldCBydW5QYWNrYWdlTWFuYWdlciA9IGZhbHNlO1xuICAgIC8vIFJ1biB0aGUgZ2xvYmFsIHBvc3QgbWlncmF0aW9uIHN0YXRpYyBtZW1iZXJzIGZvciBhbGxcbiAgICAvLyByZWdpc3RlcmVkIGRldmtpdCBtaWdyYXRpb25zLlxuICAgIG1pZ3JhdGlvbnMuZm9yRWFjaChtID0+IHtcbiAgICAgIGNvbnN0IGFjdGlvblJlc3VsdCA9IGlzRGV2a2l0TWlncmF0aW9uKG0pICYmIG0uZ2xvYmFsUG9zdE1pZ3JhdGlvbiAhPT0gdW5kZWZpbmVkID9cbiAgICAgICAgICBtLmdsb2JhbFBvc3RNaWdyYXRpb24odHJlZSwgY29udGV4dCkgOiBudWxsO1xuICAgICAgaWYgKGFjdGlvblJlc3VsdCkge1xuICAgICAgICBydW5QYWNrYWdlTWFuYWdlciA9IHJ1blBhY2thZ2VNYW5hZ2VyIHx8IGFjdGlvblJlc3VsdC5ydW5QYWNrYWdlTWFuYWdlcjtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIC8vIElmIGEgbWlncmF0aW9uIHJlcXVlc3RlZCB0aGUgcGFja2FnZSBtYW5hZ2VyIHRvIHJ1biwgd2UgcnVuIGl0IGFzIGFuXG4gICAgLy8gYXN5bmNocm9ub3VzIHBvc3QgbWlncmF0aW9uIHRhc2suIFdlIGNhbm5vdCBydW4gaXQgc3luY2hyb25vdXNseSxcbiAgICAvLyBhcyBmaWxlIGNoYW5nZXMgZnJvbSB0aGUgY3VycmVudCBtaWdyYXRpb24gdGFzayBhcmUgbm90IGFwcGxpZWQgdG9cbiAgICAvLyB0aGUgZmlsZSBzeXN0ZW0geWV0LlxuICAgIGlmIChydW5QYWNrYWdlTWFuYWdlcikge1xuICAgICAgY29udGV4dC5hZGRUYXNrKG5ldyBOb2RlUGFja2FnZUluc3RhbGxUYXNrKHtxdWlldDogZmFsc2V9KSk7XG4gICAgfVxuXG4gICAgaWYgKG9uTWlncmF0aW9uQ29tcGxldGVGbikge1xuICAgICAgb25NaWdyYXRpb25Db21wbGV0ZUZuKGNvbnRleHQsIHRhcmdldFZlcnNpb24sIGhhc0ZhaWx1cmVzKTtcbiAgICB9XG5cbiAgICAvKiogUnVucyB0aGUgbWlncmF0aW9ucyBmb3IgdGhlIHNwZWNpZmllZCB3b3Jrc3BhY2UgcHJvamVjdC4gKi9cbiAgICBmdW5jdGlvbiBydW5NaWdyYXRpb25zKHByb2plY3Q6IFdvcmtzcGFjZVByb2plY3QsIHByb2plY3ROYW1lOiBzdHJpbmcsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICB0c2NvbmZpZ1BhdGg6IFdvcmtzcGFjZVBhdGgsIGFkZGl0aW9uYWxTdHlsZXNoZWV0UGF0aHM6IHN0cmluZ1tdLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgaXNUZXN0VGFyZ2V0OiBib29sZWFuKSB7XG4gICAgICBjb25zdCBwcm9ncmFtID0gVXBkYXRlUHJvamVjdC5jcmVhdGVQcm9ncmFtRnJvbVRzY29uZmlnKHRzY29uZmlnUGF0aCwgZmlsZVN5c3RlbSk7XG4gICAgICBjb25zdCB1cGRhdGVDb250ZXh0OiBEZXZraXRDb250ZXh0ID0ge1xuICAgICAgICBpc1Rlc3RUYXJnZXQsXG4gICAgICAgIHByb2plY3ROYW1lLFxuICAgICAgICBwcm9qZWN0LFxuICAgICAgICB0cmVlLFxuICAgICAgfTtcblxuICAgICAgY29uc3QgdXBkYXRlUHJvamVjdCA9IG5ldyBVcGRhdGVQcm9qZWN0KFxuICAgICAgICB1cGRhdGVDb250ZXh0LFxuICAgICAgICBwcm9ncmFtLFxuICAgICAgICBmaWxlU3lzdGVtLFxuICAgICAgICBhbmFseXplZEZpbGVzLFxuICAgICAgICBjb250ZXh0LmxvZ2dlcixcbiAgICAgICk7XG5cbiAgICAgIGNvbnN0IHJlc3VsdCA9XG4gICAgICAgIHVwZGF0ZVByb2plY3QubWlncmF0ZShtaWdyYXRpb25zLCB0YXJnZXRWZXJzaW9uLCB1cGdyYWRlRGF0YSwgYWRkaXRpb25hbFN0eWxlc2hlZXRQYXRocyk7XG5cbiAgICAgIC8vIENvbW1pdCBhbGwgcmVjb3JkZWQgZWRpdHMgaW4gdGhlIHVwZGF0ZSByZWNvcmRlci4gV2UgYXBwbHkgdGhlIGVkaXRzIGFmdGVyIGFsbFxuICAgICAgLy8gbWlncmF0aW9ucyByYW4gYmVjYXVzZSBvdGhlcndpc2Ugb2Zmc2V0cyBpbiB0aGUgVHlwZVNjcmlwdCBwcm9ncmFtIHdvdWxkIGJlXG4gICAgICAvLyBzaGlmdGVkIGFuZCBpbmRpdmlkdWFsIG1pZ3JhdGlvbnMgY291bGQgbm8gbG9uZ2VyIHVwZGF0ZSB0aGUgc2FtZSBzb3VyY2UgZmlsZS5cbiAgICAgIGZpbGVTeXN0ZW0uY29tbWl0RWRpdHMoKTtcblxuICAgICAgaGFzRmFpbHVyZXMgPSBoYXNGYWlsdXJlcyB8fCByZXN1bHQuaGFzRmFpbHVyZXM7XG4gICAgfVxuICB9O1xufVxuXG4vKiogV2hldGhlciB0aGUgZ2l2ZW4gbWlncmF0aW9uIHR5cGUgcmVmZXJzIHRvIGEgZGV2a2l0IG1pZ3JhdGlvbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGlzRGV2a2l0TWlncmF0aW9uKHZhbHVlOiBNaWdyYXRpb25DdG9yPGFueSwgYW55PilcbiAgICA6IHZhbHVlIGlzIERldmtpdE1pZ3JhdGlvbkN0b3I8YW55PiB7XG4gIHJldHVybiBEZXZraXRNaWdyYXRpb24uaXNQcm90b3R5cGVPZih2YWx1ZSk7XG59XG4iXX0=