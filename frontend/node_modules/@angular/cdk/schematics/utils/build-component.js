"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.buildComponent = void 0;
const core_1 = require("@angular-devkit/core");
const schematics_1 = require("@angular-devkit/schematics");
const change_1 = require("@schematics/angular/utility/change");
const config_1 = require("@schematics/angular/utility/config");
const find_module_1 = require("@schematics/angular/utility/find-module");
const parse_name_1 = require("@schematics/angular/utility/parse-name");
const validation_1 = require("@schematics/angular/utility/validation");
const workspace_models_1 = require("@schematics/angular/utility/workspace-models");
const fs_1 = require("fs");
const path_1 = require("path");
const ts = require("typescript");
const vendored_ast_utils_1 = require("../utils/vendored-ast-utils");
const get_project_1 = require("./get-project");
const schematic_options_1 = require("./schematic-options");
/**
 * Build a default project path for generating.
 * @param project The project to build the path for.
 */
function buildDefaultPath(project) {
    const root = project.sourceRoot
        ? `/${project.sourceRoot}/`
        : `/${project.root}/src/`;
    const projectDirName = project.projectType === workspace_models_1.ProjectType.Application ? 'app' : 'lib';
    return `${root}${projectDirName}`;
}
/**
 * List of style extensions which are CSS compatible. All supported CLI style extensions can be
 * found here: angular/angular-cli/master/packages/schematics/angular/ng-new/schema.json#L118-L122
 */
const supportedCssExtensions = ['css', 'scss', 'less'];
function readIntoSourceFile(host, modulePath) {
    const text = host.read(modulePath);
    if (text === null) {
        throw new schematics_1.SchematicsException(`File ${modulePath} does not exist.`);
    }
    return ts.createSourceFile(modulePath, text.toString('utf-8'), ts.ScriptTarget.Latest, true);
}
function addDeclarationToNgModule(options) {
    return (host) => {
        if (options.skipImport || !options.module) {
            return host;
        }
        const modulePath = options.module;
        let source = readIntoSourceFile(host, modulePath);
        const componentPath = `/${options.path}/`
            + (options.flat ? '' : core_1.strings.dasherize(options.name) + '/')
            + core_1.strings.dasherize(options.name)
            + '.component';
        const relativePath = find_module_1.buildRelativePath(modulePath, componentPath);
        const classifiedName = core_1.strings.classify(`${options.name}Component`);
        const declarationChanges = vendored_ast_utils_1.addDeclarationToModule(source, modulePath, classifiedName, relativePath);
        const declarationRecorder = host.beginUpdate(modulePath);
        for (const change of declarationChanges) {
            if (change instanceof change_1.InsertChange) {
                declarationRecorder.insertLeft(change.pos, change.toAdd);
            }
        }
        host.commitUpdate(declarationRecorder);
        if (options.export) {
            // Need to refresh the AST because we overwrote the file in the host.
            source = readIntoSourceFile(host, modulePath);
            const exportRecorder = host.beginUpdate(modulePath);
            const exportChanges = vendored_ast_utils_1.addExportToModule(source, modulePath, core_1.strings.classify(`${options.name}Component`), relativePath);
            for (const change of exportChanges) {
                if (change instanceof change_1.InsertChange) {
                    exportRecorder.insertLeft(change.pos, change.toAdd);
                }
            }
            host.commitUpdate(exportRecorder);
        }
        if (options.entryComponent) {
            // Need to refresh the AST because we overwrote the file in the host.
            source = readIntoSourceFile(host, modulePath);
            const entryComponentRecorder = host.beginUpdate(modulePath);
            const entryComponentChanges = vendored_ast_utils_1.addEntryComponentToModule(source, modulePath, core_1.strings.classify(`${options.name}Component`), relativePath);
            for (const change of entryComponentChanges) {
                if (change instanceof change_1.InsertChange) {
                    entryComponentRecorder.insertLeft(change.pos, change.toAdd);
                }
            }
            host.commitUpdate(entryComponentRecorder);
        }
        return host;
    };
}
function buildSelector(options, projectPrefix) {
    let selector = core_1.strings.dasherize(options.name);
    if (options.prefix) {
        selector = `${options.prefix}-${selector}`;
    }
    else if (options.prefix === undefined && projectPrefix) {
        selector = `${projectPrefix}-${selector}`;
    }
    return selector;
}
/**
 * Indents the text content with the amount of specified spaces. The spaces will be added after
 * every line-break. This utility function can be used inside of EJS templates to properly
 * include the additional files.
 */
function indentTextContent(text, numSpaces) {
    // In the Material project there should be only LF line-endings, but the schematic files
    // are not being linted and therefore there can be also CRLF or just CR line-endings.
    return text.replace(/(\r\n|\r|\n)/g, `$1${' '.repeat(numSpaces)}`);
}
/**
 * Rule that copies and interpolates the files that belong to this schematic context. Additionally
 * a list of file paths can be passed to this rule in order to expose them inside the EJS
 * template context.
 *
 * This allows inlining the external template or stylesheet files in EJS without having
 * to manually duplicate the file content.
 */
function buildComponent(options, additionalFiles = {}) {
    return (host, context) => {
        const workspace = config_1.getWorkspace(host);
        const project = get_project_1.getProjectFromWorkspace(workspace, options.project);
        const defaultComponentOptions = schematic_options_1.getDefaultComponentOptions(project);
        // TODO(devversion): Remove if we drop support for older CLI versions.
        // This handles an unreported breaking change from the @angular-devkit/schematics. Previously
        // the description path resolved to the factory file, but starting from 6.2.0, it resolves
        // to the factory directory.
        const schematicPath = fs_1.statSync(context.schematic.description.path).isDirectory() ?
            context.schematic.description.path :
            path_1.dirname(context.schematic.description.path);
        const schematicFilesUrl = './files';
        const schematicFilesPath = path_1.resolve(schematicPath, schematicFilesUrl);
        // Add the default component option values to the options if an option is not explicitly
        // specified but a default component option is available.
        Object.keys(options)
            .filter(optionName => options[optionName] == null && defaultComponentOptions[optionName])
            .forEach(optionName => options[optionName] = defaultComponentOptions[optionName]);
        if (options.path === undefined) {
            // TODO(jelbourn): figure out if the need for this `as any` is a bug due to two different
            // incompatible `WorkspaceProject` classes in @angular-devkit
            options.path = buildDefaultPath(project);
        }
        options.module = find_module_1.findModuleFromOptions(host, options);
        const parsedPath = parse_name_1.parseName(options.path, options.name);
        options.name = parsedPath.name;
        options.path = parsedPath.path;
        options.selector = options.selector || buildSelector(options, project.prefix);
        validation_1.validateName(options.name);
        validation_1.validateHtmlSelector(options.selector);
        // In case the specified style extension is not part of the supported CSS supersets,
        // we generate the stylesheets with the "css" extension. This ensures that we don't
        // accidentally generate invalid stylesheets (e.g. drag-drop-comp.styl) which will
        // break the Angular CLI project. See: https://github.com/angular/components/issues/15164
        if (!supportedCssExtensions.includes(options.style)) {
            // TODO: Cast is necessary as we can't use the Style enum which has been introduced
            // within CLI v7.3.0-rc.0. This would break the schematic for older CLI versions.
            options.style = 'css';
        }
        // Object that will be used as context for the EJS templates.
        const baseTemplateContext = Object.assign(Object.assign(Object.assign({}, core_1.strings), { 'if-flat': (s) => options.flat ? '' : s }), options);
        // Key-value object that includes the specified additional files with their loaded content.
        // The resolved contents can be used inside EJS templates.
        const resolvedFiles = {};
        for (let key in additionalFiles) {
            if (additionalFiles[key]) {
                const fileContent = fs_1.readFileSync(path_1.join(schematicFilesPath, additionalFiles[key]), 'utf-8');
                // Interpolate the additional files with the base EJS template context.
                resolvedFiles[key] = core_1.template(fileContent)(baseTemplateContext);
            }
        }
        const templateSource = schematics_1.apply(schematics_1.url(schematicFilesUrl), [
            options.skipTests ? schematics_1.filter(path => !path.endsWith('.spec.ts.template')) : schematics_1.noop(),
            options.inlineStyle ? schematics_1.filter(path => !path.endsWith('.__style__.template')) : schematics_1.noop(),
            options.inlineTemplate ? schematics_1.filter(path => !path.endsWith('.html.template')) : schematics_1.noop(),
            // Treat the template options as any, because the type definition for the template options
            // is made unnecessarily explicit. Every type of object can be used in the EJS template.
            schematics_1.applyTemplates(Object.assign({ indentTextContent, resolvedFiles }, baseTemplateContext)),
            // TODO(devversion): figure out why we cannot just remove the first parameter
            // See for example: angular-cli#schematics/angular/component/index.ts#L160
            schematics_1.move(null, parsedPath.path),
        ]);
        return schematics_1.chain([
            schematics_1.branchAndMerge(schematics_1.chain([
                addDeclarationToNgModule(options),
                schematics_1.mergeWith(templateSource),
            ])),
        ])(host, context);
    };
}
exports.buildComponent = buildComponent;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYnVpbGQtY29tcG9uZW50LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9zY2hlbWF0aWNzL3V0aWxzL2J1aWxkLWNvbXBvbmVudC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUE7Ozs7OztHQU1HOzs7QUFFSCwrQ0FBOEU7QUFDOUUsMkRBYW9DO0FBR3BDLCtEQUFnRTtBQUNoRSwrREFBZ0U7QUFDaEUseUVBQWlHO0FBQ2pHLHVFQUFpRTtBQUNqRSx1RUFBMEY7QUFDMUYsbUZBQTJGO0FBQzNGLDJCQUEwQztBQUMxQywrQkFBNEM7QUFDNUMsaUNBQWlDO0FBQ2pDLG9FQUlxQztBQUNyQywrQ0FBc0Q7QUFDdEQsMkRBQStEO0FBRS9EOzs7R0FHRztBQUNILFNBQVMsZ0JBQWdCLENBQUMsT0FBeUI7SUFDakQsTUFBTSxJQUFJLEdBQUcsT0FBTyxDQUFDLFVBQVU7UUFDN0IsQ0FBQyxDQUFDLElBQUksT0FBTyxDQUFDLFVBQVUsR0FBRztRQUMzQixDQUFDLENBQUMsSUFBSSxPQUFPLENBQUMsSUFBSSxPQUFPLENBQUM7SUFFNUIsTUFBTSxjQUFjLEdBQUcsT0FBTyxDQUFDLFdBQVcsS0FBSyw4QkFBVyxDQUFDLFdBQVcsQ0FBQyxDQUFDLENBQUMsS0FBSyxDQUFDLENBQUMsQ0FBQyxLQUFLLENBQUM7SUFFdkYsT0FBTyxHQUFHLElBQUksR0FBRyxjQUFjLEVBQUUsQ0FBQztBQUNwQyxDQUFDO0FBRUQ7OztHQUdHO0FBQ0gsTUFBTSxzQkFBc0IsR0FBRyxDQUFDLEtBQUssRUFBRSxNQUFNLEVBQUUsTUFBTSxDQUFDLENBQUM7QUFFdkQsU0FBUyxrQkFBa0IsQ0FBQyxJQUFVLEVBQUUsVUFBa0I7SUFDeEQsTUFBTSxJQUFJLEdBQUcsSUFBSSxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsQ0FBQztJQUNuQyxJQUFJLElBQUksS0FBSyxJQUFJLEVBQUU7UUFDakIsTUFBTSxJQUFJLGdDQUFtQixDQUFDLFFBQVEsVUFBVSxrQkFBa0IsQ0FBQyxDQUFDO0tBQ3JFO0lBRUQsT0FBTyxFQUFFLENBQUMsZ0JBQWdCLENBQUMsVUFBVSxFQUFFLElBQUksQ0FBQyxRQUFRLENBQUMsT0FBTyxDQUFDLEVBQUUsRUFBRSxDQUFDLFlBQVksQ0FBQyxNQUFNLEVBQUUsSUFBSSxDQUFDLENBQUM7QUFDL0YsQ0FBQztBQUVELFNBQVMsd0JBQXdCLENBQUMsT0FBeUI7SUFDekQsT0FBTyxDQUFDLElBQVUsRUFBRSxFQUFFO1FBQ3BCLElBQUksT0FBTyxDQUFDLFVBQVUsSUFBSSxDQUFDLE9BQU8sQ0FBQyxNQUFNLEVBQUU7WUFDekMsT0FBTyxJQUFJLENBQUM7U0FDYjtRQUVELE1BQU0sVUFBVSxHQUFHLE9BQU8sQ0FBQyxNQUFNLENBQUM7UUFDbEMsSUFBSSxNQUFNLEdBQUcsa0JBQWtCLENBQUMsSUFBSSxFQUFFLFVBQVUsQ0FBQyxDQUFDO1FBRWxELE1BQU0sYUFBYSxHQUFHLElBQUksT0FBTyxDQUFDLElBQUksR0FBRztjQUNyQyxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsY0FBTyxDQUFDLFNBQVMsQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLEdBQUcsR0FBRyxDQUFDO2NBQzNELGNBQU8sQ0FBQyxTQUFTLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQztjQUMvQixZQUFZLENBQUM7UUFDakIsTUFBTSxZQUFZLEdBQUcsK0JBQWlCLENBQUMsVUFBVSxFQUFFLGFBQWEsQ0FBQyxDQUFDO1FBQ2xFLE1BQU0sY0FBYyxHQUFHLGNBQU8sQ0FBQyxRQUFRLENBQUMsR0FBRyxPQUFPLENBQUMsSUFBSSxXQUFXLENBQUMsQ0FBQztRQUVwRSxNQUFNLGtCQUFrQixHQUFHLDJDQUFzQixDQUMvQyxNQUFNLEVBQ04sVUFBVSxFQUNWLGNBQWMsRUFDZCxZQUFZLENBQUMsQ0FBQztRQUVoQixNQUFNLG1CQUFtQixHQUFHLElBQUksQ0FBQyxXQUFXLENBQUMsVUFBVSxDQUFDLENBQUM7UUFDekQsS0FBSyxNQUFNLE1BQU0sSUFBSSxrQkFBa0IsRUFBRTtZQUN2QyxJQUFJLE1BQU0sWUFBWSxxQkFBWSxFQUFFO2dCQUNsQyxtQkFBbUIsQ0FBQyxVQUFVLENBQUMsTUFBTSxDQUFDLEdBQUcsRUFBRSxNQUFNLENBQUMsS0FBSyxDQUFDLENBQUM7YUFDMUQ7U0FDRjtRQUNELElBQUksQ0FBQyxZQUFZLENBQUMsbUJBQW1CLENBQUMsQ0FBQztRQUV2QyxJQUFJLE9BQU8sQ0FBQyxNQUFNLEVBQUU7WUFDbEIscUVBQXFFO1lBQ3JFLE1BQU0sR0FBRyxrQkFBa0IsQ0FBQyxJQUFJLEVBQUUsVUFBVSxDQUFDLENBQUM7WUFFOUMsTUFBTSxjQUFjLEdBQUcsSUFBSSxDQUFDLFdBQVcsQ0FBQyxVQUFVLENBQUMsQ0FBQztZQUNwRCxNQUFNLGFBQWEsR0FBRyxzQ0FBaUIsQ0FDckMsTUFBTSxFQUNOLFVBQVUsRUFDVixjQUFPLENBQUMsUUFBUSxDQUFDLEdBQUcsT0FBTyxDQUFDLElBQUksV0FBVyxDQUFDLEVBQzVDLFlBQVksQ0FBQyxDQUFDO1lBRWhCLEtBQUssTUFBTSxNQUFNLElBQUksYUFBYSxFQUFFO2dCQUNsQyxJQUFJLE1BQU0sWUFBWSxxQkFBWSxFQUFFO29CQUNsQyxjQUFjLENBQUMsVUFBVSxDQUFDLE1BQU0sQ0FBQyxHQUFHLEVBQUUsTUFBTSxDQUFDLEtBQUssQ0FBQyxDQUFDO2lCQUNyRDthQUNGO1lBQ0QsSUFBSSxDQUFDLFlBQVksQ0FBQyxjQUFjLENBQUMsQ0FBQztTQUNuQztRQUVELElBQUksT0FBTyxDQUFDLGNBQWMsRUFBRTtZQUMxQixxRUFBcUU7WUFDckUsTUFBTSxHQUFHLGtCQUFrQixDQUFDLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztZQUU5QyxNQUFNLHNCQUFzQixHQUFHLElBQUksQ0FBQyxXQUFXLENBQUMsVUFBVSxDQUFDLENBQUM7WUFDNUQsTUFBTSxxQkFBcUIsR0FBRyw4Q0FBeUIsQ0FDckQsTUFBTSxFQUNOLFVBQVUsRUFDVixjQUFPLENBQUMsUUFBUSxDQUFDLEdBQUcsT0FBTyxDQUFDLElBQUksV0FBVyxDQUFDLEVBQzVDLFlBQVksQ0FBQyxDQUFDO1lBRWhCLEtBQUssTUFBTSxNQUFNLElBQUkscUJBQXFCLEVBQUU7Z0JBQzFDLElBQUksTUFBTSxZQUFZLHFCQUFZLEVBQUU7b0JBQ2xDLHNCQUFzQixDQUFDLFVBQVUsQ0FBQyxNQUFNLENBQUMsR0FBRyxFQUFFLE1BQU0sQ0FBQyxLQUFLLENBQUMsQ0FBQztpQkFDN0Q7YUFDRjtZQUNELElBQUksQ0FBQyxZQUFZLENBQUMsc0JBQXNCLENBQUMsQ0FBQztTQUMzQztRQUdELE9BQU8sSUFBSSxDQUFDO0lBQ2QsQ0FBQyxDQUFDO0FBQ0osQ0FBQztBQUdELFNBQVMsYUFBYSxDQUFDLE9BQXlCLEVBQUUsYUFBcUI7SUFDckUsSUFBSSxRQUFRLEdBQUcsY0FBTyxDQUFDLFNBQVMsQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDL0MsSUFBSSxPQUFPLENBQUMsTUFBTSxFQUFFO1FBQ2xCLFFBQVEsR0FBRyxHQUFHLE9BQU8sQ0FBQyxNQUFNLElBQUksUUFBUSxFQUFFLENBQUM7S0FDNUM7U0FBTSxJQUFJLE9BQU8sQ0FBQyxNQUFNLEtBQUssU0FBUyxJQUFJLGFBQWEsRUFBRTtRQUN4RCxRQUFRLEdBQUcsR0FBRyxhQUFhLElBQUksUUFBUSxFQUFFLENBQUM7S0FDM0M7SUFFRCxPQUFPLFFBQVEsQ0FBQztBQUNsQixDQUFDO0FBRUQ7Ozs7R0FJRztBQUNILFNBQVMsaUJBQWlCLENBQUMsSUFBWSxFQUFFLFNBQWlCO0lBQ3hELHdGQUF3RjtJQUN4RixxRkFBcUY7SUFDckYsT0FBTyxJQUFJLENBQUMsT0FBTyxDQUFDLGVBQWUsRUFBRSxLQUFLLEdBQUcsQ0FBQyxNQUFNLENBQUMsU0FBUyxDQUFDLEVBQUUsQ0FBQyxDQUFDO0FBQ3JFLENBQUM7QUFFRDs7Ozs7OztHQU9HO0FBQ0gsU0FBZ0IsY0FBYyxDQUFDLE9BQXlCLEVBQ3pCLGtCQUEyQyxFQUFFO0lBRTFFLE9BQU8sQ0FBQyxJQUFVLEVBQUUsT0FBbUMsRUFBRSxFQUFFO1FBQ3pELE1BQU0sU0FBUyxHQUFHLHFCQUFZLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDckMsTUFBTSxPQUFPLEdBQUcscUNBQXVCLENBQUMsU0FBUyxFQUFFLE9BQU8sQ0FBQyxPQUFPLENBQUMsQ0FBQztRQUNwRSxNQUFNLHVCQUF1QixHQUFHLDhDQUEwQixDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBRXBFLHNFQUFzRTtRQUN0RSw2RkFBNkY7UUFDN0YsMEZBQTBGO1FBQzFGLDRCQUE0QjtRQUM1QixNQUFNLGFBQWEsR0FBRyxhQUFRLENBQUMsT0FBTyxDQUFDLFNBQVMsQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUFDLENBQUMsV0FBVyxFQUFFLENBQUMsQ0FBQztZQUM5RSxPQUFPLENBQUMsU0FBUyxDQUFDLFdBQVcsQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUNwQyxjQUFPLENBQUMsT0FBTyxDQUFDLFNBQVMsQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUFDLENBQUM7UUFFaEQsTUFBTSxpQkFBaUIsR0FBRyxTQUFTLENBQUM7UUFDcEMsTUFBTSxrQkFBa0IsR0FBRyxjQUFPLENBQUMsYUFBYSxFQUFFLGlCQUFpQixDQUFDLENBQUM7UUFFckUsd0ZBQXdGO1FBQ3hGLHlEQUF5RDtRQUN6RCxNQUFNLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQzthQUNqQixNQUFNLENBQUMsVUFBVSxDQUFDLEVBQUUsQ0FBQyxPQUFPLENBQUMsVUFBVSxDQUFDLElBQUksSUFBSSxJQUFJLHVCQUF1QixDQUFDLFVBQVUsQ0FBQyxDQUFDO2FBQ3hGLE9BQU8sQ0FBQyxVQUFVLENBQUMsRUFBRSxDQUFDLE9BQU8sQ0FBQyxVQUFVLENBQUMsR0FBRyx1QkFBdUIsQ0FBQyxVQUFVLENBQUMsQ0FBQyxDQUFDO1FBRXBGLElBQUksT0FBTyxDQUFDLElBQUksS0FBSyxTQUFTLEVBQUU7WUFDOUIseUZBQXlGO1lBQ3pGLDZEQUE2RDtZQUM3RCxPQUFPLENBQUMsSUFBSSxHQUFHLGdCQUFnQixDQUFDLE9BQWMsQ0FBQyxDQUFDO1NBQ2pEO1FBRUQsT0FBTyxDQUFDLE1BQU0sR0FBRyxtQ0FBcUIsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFFdEQsTUFBTSxVQUFVLEdBQUcsc0JBQVMsQ0FBQyxPQUFPLENBQUMsSUFBSyxFQUFFLE9BQU8sQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUUxRCxPQUFPLENBQUMsSUFBSSxHQUFHLFVBQVUsQ0FBQyxJQUFJLENBQUM7UUFDL0IsT0FBTyxDQUFDLElBQUksR0FBRyxVQUFVLENBQUMsSUFBSSxDQUFDO1FBQy9CLE9BQU8sQ0FBQyxRQUFRLEdBQUcsT0FBTyxDQUFDLFFBQVEsSUFBSSxhQUFhLENBQUMsT0FBTyxFQUFFLE9BQU8sQ0FBQyxNQUFNLENBQUMsQ0FBQztRQUU5RSx5QkFBWSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUMzQixpQ0FBb0IsQ0FBQyxPQUFPLENBQUMsUUFBUyxDQUFDLENBQUM7UUFFeEMsb0ZBQW9GO1FBQ3BGLG1GQUFtRjtRQUNuRixrRkFBa0Y7UUFDbEYseUZBQXlGO1FBQ3pGLElBQUksQ0FBQyxzQkFBc0IsQ0FBQyxRQUFRLENBQUMsT0FBTyxDQUFDLEtBQU0sQ0FBQyxFQUFFO1lBQ3BELG1GQUFtRjtZQUNuRixpRkFBaUY7WUFDakYsT0FBTyxDQUFDLEtBQUssR0FBRyxLQUFjLENBQUM7U0FDaEM7UUFFRCw2REFBNkQ7UUFDN0QsTUFBTSxtQkFBbUIsaURBQ3BCLGNBQU8sS0FDVixTQUFTLEVBQUUsQ0FBQyxDQUFTLEVBQUUsRUFBRSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxLQUM1QyxPQUFPLENBQ1gsQ0FBQztRQUVGLDJGQUEyRjtRQUMzRiwwREFBMEQ7UUFDMUQsTUFBTSxhQUFhLEdBQUcsRUFBRSxDQUFDO1FBRXpCLEtBQUssSUFBSSxHQUFHLElBQUksZUFBZSxFQUFFO1lBQy9CLElBQUksZUFBZSxDQUFDLEdBQUcsQ0FBQyxFQUFFO2dCQUN4QixNQUFNLFdBQVcsR0FBRyxpQkFBWSxDQUFDLFdBQUksQ0FBQyxrQkFBa0IsRUFBRSxlQUFlLENBQUMsR0FBRyxDQUFDLENBQUMsRUFBRSxPQUFPLENBQUMsQ0FBQztnQkFFMUYsdUVBQXVFO2dCQUN2RSxhQUFhLENBQUMsR0FBRyxDQUFDLEdBQUcsZUFBbUIsQ0FBQyxXQUFXLENBQUMsQ0FBQyxtQkFBbUIsQ0FBQyxDQUFDO2FBQzVFO1NBQ0Y7UUFFRCxNQUFNLGNBQWMsR0FBRyxrQkFBSyxDQUFDLGdCQUFHLENBQUMsaUJBQWlCLENBQUMsRUFBRTtZQUNuRCxPQUFPLENBQUMsU0FBUyxDQUFDLENBQUMsQ0FBQyxtQkFBTSxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLG1CQUFtQixDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsaUJBQUksRUFBRTtZQUNoRixPQUFPLENBQUMsV0FBVyxDQUFDLENBQUMsQ0FBQyxtQkFBTSxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLHFCQUFxQixDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsaUJBQUksRUFBRTtZQUNwRixPQUFPLENBQUMsY0FBYyxDQUFDLENBQUMsQ0FBQyxtQkFBTSxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLGdCQUFnQixDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsaUJBQUksRUFBRTtZQUNsRiwwRkFBMEY7WUFDMUYsd0ZBQXdGO1lBQ3hGLDJCQUFjLENBQUMsZ0JBQUMsaUJBQWlCLEVBQUUsYUFBYSxJQUFLLG1CQUFtQixDQUFRLENBQUM7WUFDakYsNkVBQTZFO1lBQzdFLDBFQUEwRTtZQUMxRSxpQkFBSSxDQUFDLElBQVcsRUFBRSxVQUFVLENBQUMsSUFBSSxDQUFDO1NBQ25DLENBQUMsQ0FBQztRQUVILE9BQU8sa0JBQUssQ0FBQztZQUNYLDJCQUFjLENBQUMsa0JBQUssQ0FBQztnQkFDbkIsd0JBQXdCLENBQUMsT0FBTyxDQUFDO2dCQUNqQyxzQkFBUyxDQUFDLGNBQWMsQ0FBQzthQUMxQixDQUFDLENBQUM7U0FDSixDQUFDLENBQUMsSUFBSSxFQUFFLE9BQU8sQ0FBQyxDQUFDO0lBQ3BCLENBQUMsQ0FBQztBQUNKLENBQUM7QUEzRkQsd0NBMkZDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7c3RyaW5ncywgdGVtcGxhdGUgYXMgaW50ZXJwb2xhdGVUZW1wbGF0ZX0gZnJvbSAnQGFuZ3VsYXItZGV2a2l0L2NvcmUnO1xuaW1wb3J0IHtcbiAgYXBwbHksXG4gIGFwcGx5VGVtcGxhdGVzLFxuICBicmFuY2hBbmRNZXJnZSxcbiAgY2hhaW4sXG4gIGZpbHRlcixcbiAgbWVyZ2VXaXRoLFxuICBtb3ZlLFxuICBub29wLFxuICBSdWxlLFxuICBTY2hlbWF0aWNzRXhjZXB0aW9uLFxuICBUcmVlLFxuICB1cmwsXG59IGZyb20gJ0Bhbmd1bGFyLWRldmtpdC9zY2hlbWF0aWNzJztcbmltcG9ydCB7RmlsZVN5c3RlbVNjaGVtYXRpY0NvbnRleHR9IGZyb20gJ0Bhbmd1bGFyLWRldmtpdC9zY2hlbWF0aWNzL3Rvb2xzJztcbmltcG9ydCB7U2NoZW1hIGFzIENvbXBvbmVudE9wdGlvbnMsIFN0eWxlfSBmcm9tICdAc2NoZW1hdGljcy9hbmd1bGFyL2NvbXBvbmVudC9zY2hlbWEnO1xuaW1wb3J0IHtJbnNlcnRDaGFuZ2V9IGZyb20gJ0BzY2hlbWF0aWNzL2FuZ3VsYXIvdXRpbGl0eS9jaGFuZ2UnO1xuaW1wb3J0IHtnZXRXb3Jrc3BhY2V9IGZyb20gJ0BzY2hlbWF0aWNzL2FuZ3VsYXIvdXRpbGl0eS9jb25maWcnO1xuaW1wb3J0IHtidWlsZFJlbGF0aXZlUGF0aCwgZmluZE1vZHVsZUZyb21PcHRpb25zfSBmcm9tICdAc2NoZW1hdGljcy9hbmd1bGFyL3V0aWxpdHkvZmluZC1tb2R1bGUnO1xuaW1wb3J0IHtwYXJzZU5hbWV9IGZyb20gJ0BzY2hlbWF0aWNzL2FuZ3VsYXIvdXRpbGl0eS9wYXJzZS1uYW1lJztcbmltcG9ydCB7dmFsaWRhdGVIdG1sU2VsZWN0b3IsIHZhbGlkYXRlTmFtZX0gZnJvbSAnQHNjaGVtYXRpY3MvYW5ndWxhci91dGlsaXR5L3ZhbGlkYXRpb24nO1xuaW1wb3J0IHtQcm9qZWN0VHlwZSwgV29ya3NwYWNlUHJvamVjdH0gZnJvbSAnQHNjaGVtYXRpY3MvYW5ndWxhci91dGlsaXR5L3dvcmtzcGFjZS1tb2RlbHMnO1xuaW1wb3J0IHtyZWFkRmlsZVN5bmMsIHN0YXRTeW5jfSBmcm9tICdmcyc7XG5pbXBvcnQge2Rpcm5hbWUsIGpvaW4sIHJlc29sdmV9IGZyb20gJ3BhdGgnO1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5pbXBvcnQge1xuICBhZGREZWNsYXJhdGlvblRvTW9kdWxlLFxuICBhZGRFbnRyeUNvbXBvbmVudFRvTW9kdWxlLFxuICBhZGRFeHBvcnRUb01vZHVsZSxcbn0gZnJvbSAnLi4vdXRpbHMvdmVuZG9yZWQtYXN0LXV0aWxzJztcbmltcG9ydCB7Z2V0UHJvamVjdEZyb21Xb3Jrc3BhY2V9IGZyb20gJy4vZ2V0LXByb2plY3QnO1xuaW1wb3J0IHtnZXREZWZhdWx0Q29tcG9uZW50T3B0aW9uc30gZnJvbSAnLi9zY2hlbWF0aWMtb3B0aW9ucyc7XG5cbi8qKlxuICogQnVpbGQgYSBkZWZhdWx0IHByb2plY3QgcGF0aCBmb3IgZ2VuZXJhdGluZy5cbiAqIEBwYXJhbSBwcm9qZWN0IFRoZSBwcm9qZWN0IHRvIGJ1aWxkIHRoZSBwYXRoIGZvci5cbiAqL1xuZnVuY3Rpb24gYnVpbGREZWZhdWx0UGF0aChwcm9qZWN0OiBXb3Jrc3BhY2VQcm9qZWN0KTogc3RyaW5nIHtcbiAgY29uc3Qgcm9vdCA9IHByb2plY3Quc291cmNlUm9vdFxuICAgID8gYC8ke3Byb2plY3Quc291cmNlUm9vdH0vYFxuICAgIDogYC8ke3Byb2plY3Qucm9vdH0vc3JjL2A7XG5cbiAgY29uc3QgcHJvamVjdERpck5hbWUgPSBwcm9qZWN0LnByb2plY3RUeXBlID09PSBQcm9qZWN0VHlwZS5BcHBsaWNhdGlvbiA/ICdhcHAnIDogJ2xpYic7XG5cbiAgcmV0dXJuIGAke3Jvb3R9JHtwcm9qZWN0RGlyTmFtZX1gO1xufVxuXG4vKipcbiAqIExpc3Qgb2Ygc3R5bGUgZXh0ZW5zaW9ucyB3aGljaCBhcmUgQ1NTIGNvbXBhdGlibGUuIEFsbCBzdXBwb3J0ZWQgQ0xJIHN0eWxlIGV4dGVuc2lvbnMgY2FuIGJlXG4gKiBmb3VuZCBoZXJlOiBhbmd1bGFyL2FuZ3VsYXItY2xpL21hc3Rlci9wYWNrYWdlcy9zY2hlbWF0aWNzL2FuZ3VsYXIvbmctbmV3L3NjaGVtYS5qc29uI0wxMTgtTDEyMlxuICovXG5jb25zdCBzdXBwb3J0ZWRDc3NFeHRlbnNpb25zID0gWydjc3MnLCAnc2NzcycsICdsZXNzJ107XG5cbmZ1bmN0aW9uIHJlYWRJbnRvU291cmNlRmlsZShob3N0OiBUcmVlLCBtb2R1bGVQYXRoOiBzdHJpbmcpIHtcbiAgY29uc3QgdGV4dCA9IGhvc3QucmVhZChtb2R1bGVQYXRoKTtcbiAgaWYgKHRleHQgPT09IG51bGwpIHtcbiAgICB0aHJvdyBuZXcgU2NoZW1hdGljc0V4Y2VwdGlvbihgRmlsZSAke21vZHVsZVBhdGh9IGRvZXMgbm90IGV4aXN0LmApO1xuICB9XG5cbiAgcmV0dXJuIHRzLmNyZWF0ZVNvdXJjZUZpbGUobW9kdWxlUGF0aCwgdGV4dC50b1N0cmluZygndXRmLTgnKSwgdHMuU2NyaXB0VGFyZ2V0LkxhdGVzdCwgdHJ1ZSk7XG59XG5cbmZ1bmN0aW9uIGFkZERlY2xhcmF0aW9uVG9OZ01vZHVsZShvcHRpb25zOiBDb21wb25lbnRPcHRpb25zKTogUnVsZSB7XG4gIHJldHVybiAoaG9zdDogVHJlZSkgPT4ge1xuICAgIGlmIChvcHRpb25zLnNraXBJbXBvcnQgfHwgIW9wdGlvbnMubW9kdWxlKSB7XG4gICAgICByZXR1cm4gaG9zdDtcbiAgICB9XG5cbiAgICBjb25zdCBtb2R1bGVQYXRoID0gb3B0aW9ucy5tb2R1bGU7XG4gICAgbGV0IHNvdXJjZSA9IHJlYWRJbnRvU291cmNlRmlsZShob3N0LCBtb2R1bGVQYXRoKTtcblxuICAgIGNvbnN0IGNvbXBvbmVudFBhdGggPSBgLyR7b3B0aW9ucy5wYXRofS9gXG4gICAgICArIChvcHRpb25zLmZsYXQgPyAnJyA6IHN0cmluZ3MuZGFzaGVyaXplKG9wdGlvbnMubmFtZSkgKyAnLycpXG4gICAgICArIHN0cmluZ3MuZGFzaGVyaXplKG9wdGlvbnMubmFtZSlcbiAgICAgICsgJy5jb21wb25lbnQnO1xuICAgIGNvbnN0IHJlbGF0aXZlUGF0aCA9IGJ1aWxkUmVsYXRpdmVQYXRoKG1vZHVsZVBhdGgsIGNvbXBvbmVudFBhdGgpO1xuICAgIGNvbnN0IGNsYXNzaWZpZWROYW1lID0gc3RyaW5ncy5jbGFzc2lmeShgJHtvcHRpb25zLm5hbWV9Q29tcG9uZW50YCk7XG5cbiAgICBjb25zdCBkZWNsYXJhdGlvbkNoYW5nZXMgPSBhZGREZWNsYXJhdGlvblRvTW9kdWxlKFxuICAgICAgc291cmNlLFxuICAgICAgbW9kdWxlUGF0aCxcbiAgICAgIGNsYXNzaWZpZWROYW1lLFxuICAgICAgcmVsYXRpdmVQYXRoKTtcblxuICAgIGNvbnN0IGRlY2xhcmF0aW9uUmVjb3JkZXIgPSBob3N0LmJlZ2luVXBkYXRlKG1vZHVsZVBhdGgpO1xuICAgIGZvciAoY29uc3QgY2hhbmdlIG9mIGRlY2xhcmF0aW9uQ2hhbmdlcykge1xuICAgICAgaWYgKGNoYW5nZSBpbnN0YW5jZW9mIEluc2VydENoYW5nZSkge1xuICAgICAgICBkZWNsYXJhdGlvblJlY29yZGVyLmluc2VydExlZnQoY2hhbmdlLnBvcywgY2hhbmdlLnRvQWRkKTtcbiAgICAgIH1cbiAgICB9XG4gICAgaG9zdC5jb21taXRVcGRhdGUoZGVjbGFyYXRpb25SZWNvcmRlcik7XG5cbiAgICBpZiAob3B0aW9ucy5leHBvcnQpIHtcbiAgICAgIC8vIE5lZWQgdG8gcmVmcmVzaCB0aGUgQVNUIGJlY2F1c2Ugd2Ugb3Zlcndyb3RlIHRoZSBmaWxlIGluIHRoZSBob3N0LlxuICAgICAgc291cmNlID0gcmVhZEludG9Tb3VyY2VGaWxlKGhvc3QsIG1vZHVsZVBhdGgpO1xuXG4gICAgICBjb25zdCBleHBvcnRSZWNvcmRlciA9IGhvc3QuYmVnaW5VcGRhdGUobW9kdWxlUGF0aCk7XG4gICAgICBjb25zdCBleHBvcnRDaGFuZ2VzID0gYWRkRXhwb3J0VG9Nb2R1bGUoXG4gICAgICAgIHNvdXJjZSxcbiAgICAgICAgbW9kdWxlUGF0aCxcbiAgICAgICAgc3RyaW5ncy5jbGFzc2lmeShgJHtvcHRpb25zLm5hbWV9Q29tcG9uZW50YCksXG4gICAgICAgIHJlbGF0aXZlUGF0aCk7XG5cbiAgICAgIGZvciAoY29uc3QgY2hhbmdlIG9mIGV4cG9ydENoYW5nZXMpIHtcbiAgICAgICAgaWYgKGNoYW5nZSBpbnN0YW5jZW9mIEluc2VydENoYW5nZSkge1xuICAgICAgICAgIGV4cG9ydFJlY29yZGVyLmluc2VydExlZnQoY2hhbmdlLnBvcywgY2hhbmdlLnRvQWRkKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgICAgaG9zdC5jb21taXRVcGRhdGUoZXhwb3J0UmVjb3JkZXIpO1xuICAgIH1cblxuICAgIGlmIChvcHRpb25zLmVudHJ5Q29tcG9uZW50KSB7XG4gICAgICAvLyBOZWVkIHRvIHJlZnJlc2ggdGhlIEFTVCBiZWNhdXNlIHdlIG92ZXJ3cm90ZSB0aGUgZmlsZSBpbiB0aGUgaG9zdC5cbiAgICAgIHNvdXJjZSA9IHJlYWRJbnRvU291cmNlRmlsZShob3N0LCBtb2R1bGVQYXRoKTtcblxuICAgICAgY29uc3QgZW50cnlDb21wb25lbnRSZWNvcmRlciA9IGhvc3QuYmVnaW5VcGRhdGUobW9kdWxlUGF0aCk7XG4gICAgICBjb25zdCBlbnRyeUNvbXBvbmVudENoYW5nZXMgPSBhZGRFbnRyeUNvbXBvbmVudFRvTW9kdWxlKFxuICAgICAgICBzb3VyY2UsXG4gICAgICAgIG1vZHVsZVBhdGgsXG4gICAgICAgIHN0cmluZ3MuY2xhc3NpZnkoYCR7b3B0aW9ucy5uYW1lfUNvbXBvbmVudGApLFxuICAgICAgICByZWxhdGl2ZVBhdGgpO1xuXG4gICAgICBmb3IgKGNvbnN0IGNoYW5nZSBvZiBlbnRyeUNvbXBvbmVudENoYW5nZXMpIHtcbiAgICAgICAgaWYgKGNoYW5nZSBpbnN0YW5jZW9mIEluc2VydENoYW5nZSkge1xuICAgICAgICAgIGVudHJ5Q29tcG9uZW50UmVjb3JkZXIuaW5zZXJ0TGVmdChjaGFuZ2UucG9zLCBjaGFuZ2UudG9BZGQpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgICBob3N0LmNvbW1pdFVwZGF0ZShlbnRyeUNvbXBvbmVudFJlY29yZGVyKTtcbiAgICB9XG5cblxuICAgIHJldHVybiBob3N0O1xuICB9O1xufVxuXG5cbmZ1bmN0aW9uIGJ1aWxkU2VsZWN0b3Iob3B0aW9uczogQ29tcG9uZW50T3B0aW9ucywgcHJvamVjdFByZWZpeDogc3RyaW5nKSB7XG4gIGxldCBzZWxlY3RvciA9IHN0cmluZ3MuZGFzaGVyaXplKG9wdGlvbnMubmFtZSk7XG4gIGlmIChvcHRpb25zLnByZWZpeCkge1xuICAgIHNlbGVjdG9yID0gYCR7b3B0aW9ucy5wcmVmaXh9LSR7c2VsZWN0b3J9YDtcbiAgfSBlbHNlIGlmIChvcHRpb25zLnByZWZpeCA9PT0gdW5kZWZpbmVkICYmIHByb2plY3RQcmVmaXgpIHtcbiAgICBzZWxlY3RvciA9IGAke3Byb2plY3RQcmVmaXh9LSR7c2VsZWN0b3J9YDtcbiAgfVxuXG4gIHJldHVybiBzZWxlY3Rvcjtcbn1cblxuLyoqXG4gKiBJbmRlbnRzIHRoZSB0ZXh0IGNvbnRlbnQgd2l0aCB0aGUgYW1vdW50IG9mIHNwZWNpZmllZCBzcGFjZXMuIFRoZSBzcGFjZXMgd2lsbCBiZSBhZGRlZCBhZnRlclxuICogZXZlcnkgbGluZS1icmVhay4gVGhpcyB1dGlsaXR5IGZ1bmN0aW9uIGNhbiBiZSB1c2VkIGluc2lkZSBvZiBFSlMgdGVtcGxhdGVzIHRvIHByb3Blcmx5XG4gKiBpbmNsdWRlIHRoZSBhZGRpdGlvbmFsIGZpbGVzLlxuICovXG5mdW5jdGlvbiBpbmRlbnRUZXh0Q29udGVudCh0ZXh0OiBzdHJpbmcsIG51bVNwYWNlczogbnVtYmVyKTogc3RyaW5nIHtcbiAgLy8gSW4gdGhlIE1hdGVyaWFsIHByb2plY3QgdGhlcmUgc2hvdWxkIGJlIG9ubHkgTEYgbGluZS1lbmRpbmdzLCBidXQgdGhlIHNjaGVtYXRpYyBmaWxlc1xuICAvLyBhcmUgbm90IGJlaW5nIGxpbnRlZCBhbmQgdGhlcmVmb3JlIHRoZXJlIGNhbiBiZSBhbHNvIENSTEYgb3IganVzdCBDUiBsaW5lLWVuZGluZ3MuXG4gIHJldHVybiB0ZXh0LnJlcGxhY2UoLyhcXHJcXG58XFxyfFxcbikvZywgYCQxJHsnICcucmVwZWF0KG51bVNwYWNlcyl9YCk7XG59XG5cbi8qKlxuICogUnVsZSB0aGF0IGNvcGllcyBhbmQgaW50ZXJwb2xhdGVzIHRoZSBmaWxlcyB0aGF0IGJlbG9uZyB0byB0aGlzIHNjaGVtYXRpYyBjb250ZXh0LiBBZGRpdGlvbmFsbHlcbiAqIGEgbGlzdCBvZiBmaWxlIHBhdGhzIGNhbiBiZSBwYXNzZWQgdG8gdGhpcyBydWxlIGluIG9yZGVyIHRvIGV4cG9zZSB0aGVtIGluc2lkZSB0aGUgRUpTXG4gKiB0ZW1wbGF0ZSBjb250ZXh0LlxuICpcbiAqIFRoaXMgYWxsb3dzIGlubGluaW5nIHRoZSBleHRlcm5hbCB0ZW1wbGF0ZSBvciBzdHlsZXNoZWV0IGZpbGVzIGluIEVKUyB3aXRob3V0IGhhdmluZ1xuICogdG8gbWFudWFsbHkgZHVwbGljYXRlIHRoZSBmaWxlIGNvbnRlbnQuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBidWlsZENvbXBvbmVudChvcHRpb25zOiBDb21wb25lbnRPcHRpb25zLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFkZGl0aW9uYWxGaWxlczoge1trZXk6IHN0cmluZ106IHN0cmluZ30gPSB7fSk6IFJ1bGUge1xuXG4gIHJldHVybiAoaG9zdDogVHJlZSwgY29udGV4dDogRmlsZVN5c3RlbVNjaGVtYXRpY0NvbnRleHQpID0+IHtcbiAgICBjb25zdCB3b3Jrc3BhY2UgPSBnZXRXb3Jrc3BhY2UoaG9zdCk7XG4gICAgY29uc3QgcHJvamVjdCA9IGdldFByb2plY3RGcm9tV29ya3NwYWNlKHdvcmtzcGFjZSwgb3B0aW9ucy5wcm9qZWN0KTtcbiAgICBjb25zdCBkZWZhdWx0Q29tcG9uZW50T3B0aW9ucyA9IGdldERlZmF1bHRDb21wb25lbnRPcHRpb25zKHByb2plY3QpO1xuXG4gICAgLy8gVE9ETyhkZXZ2ZXJzaW9uKTogUmVtb3ZlIGlmIHdlIGRyb3Agc3VwcG9ydCBmb3Igb2xkZXIgQ0xJIHZlcnNpb25zLlxuICAgIC8vIFRoaXMgaGFuZGxlcyBhbiB1bnJlcG9ydGVkIGJyZWFraW5nIGNoYW5nZSBmcm9tIHRoZSBAYW5ndWxhci1kZXZraXQvc2NoZW1hdGljcy4gUHJldmlvdXNseVxuICAgIC8vIHRoZSBkZXNjcmlwdGlvbiBwYXRoIHJlc29sdmVkIHRvIHRoZSBmYWN0b3J5IGZpbGUsIGJ1dCBzdGFydGluZyBmcm9tIDYuMi4wLCBpdCByZXNvbHZlc1xuICAgIC8vIHRvIHRoZSBmYWN0b3J5IGRpcmVjdG9yeS5cbiAgICBjb25zdCBzY2hlbWF0aWNQYXRoID0gc3RhdFN5bmMoY29udGV4dC5zY2hlbWF0aWMuZGVzY3JpcHRpb24ucGF0aCkuaXNEaXJlY3RvcnkoKSA/XG4gICAgICAgIGNvbnRleHQuc2NoZW1hdGljLmRlc2NyaXB0aW9uLnBhdGggOlxuICAgICAgICBkaXJuYW1lKGNvbnRleHQuc2NoZW1hdGljLmRlc2NyaXB0aW9uLnBhdGgpO1xuXG4gICAgY29uc3Qgc2NoZW1hdGljRmlsZXNVcmwgPSAnLi9maWxlcyc7XG4gICAgY29uc3Qgc2NoZW1hdGljRmlsZXNQYXRoID0gcmVzb2x2ZShzY2hlbWF0aWNQYXRoLCBzY2hlbWF0aWNGaWxlc1VybCk7XG5cbiAgICAvLyBBZGQgdGhlIGRlZmF1bHQgY29tcG9uZW50IG9wdGlvbiB2YWx1ZXMgdG8gdGhlIG9wdGlvbnMgaWYgYW4gb3B0aW9uIGlzIG5vdCBleHBsaWNpdGx5XG4gICAgLy8gc3BlY2lmaWVkIGJ1dCBhIGRlZmF1bHQgY29tcG9uZW50IG9wdGlvbiBpcyBhdmFpbGFibGUuXG4gICAgT2JqZWN0LmtleXMob3B0aW9ucylcbiAgICAgIC5maWx0ZXIob3B0aW9uTmFtZSA9PiBvcHRpb25zW29wdGlvbk5hbWVdID09IG51bGwgJiYgZGVmYXVsdENvbXBvbmVudE9wdGlvbnNbb3B0aW9uTmFtZV0pXG4gICAgICAuZm9yRWFjaChvcHRpb25OYW1lID0+IG9wdGlvbnNbb3B0aW9uTmFtZV0gPSBkZWZhdWx0Q29tcG9uZW50T3B0aW9uc1tvcHRpb25OYW1lXSk7XG5cbiAgICBpZiAob3B0aW9ucy5wYXRoID09PSB1bmRlZmluZWQpIHtcbiAgICAgIC8vIFRPRE8oamVsYm91cm4pOiBmaWd1cmUgb3V0IGlmIHRoZSBuZWVkIGZvciB0aGlzIGBhcyBhbnlgIGlzIGEgYnVnIGR1ZSB0byB0d28gZGlmZmVyZW50XG4gICAgICAvLyBpbmNvbXBhdGlibGUgYFdvcmtzcGFjZVByb2plY3RgIGNsYXNzZXMgaW4gQGFuZ3VsYXItZGV2a2l0XG4gICAgICBvcHRpb25zLnBhdGggPSBidWlsZERlZmF1bHRQYXRoKHByb2plY3QgYXMgYW55KTtcbiAgICB9XG5cbiAgICBvcHRpb25zLm1vZHVsZSA9IGZpbmRNb2R1bGVGcm9tT3B0aW9ucyhob3N0LCBvcHRpb25zKTtcblxuICAgIGNvbnN0IHBhcnNlZFBhdGggPSBwYXJzZU5hbWUob3B0aW9ucy5wYXRoISwgb3B0aW9ucy5uYW1lKTtcblxuICAgIG9wdGlvbnMubmFtZSA9IHBhcnNlZFBhdGgubmFtZTtcbiAgICBvcHRpb25zLnBhdGggPSBwYXJzZWRQYXRoLnBhdGg7XG4gICAgb3B0aW9ucy5zZWxlY3RvciA9IG9wdGlvbnMuc2VsZWN0b3IgfHwgYnVpbGRTZWxlY3RvcihvcHRpb25zLCBwcm9qZWN0LnByZWZpeCk7XG5cbiAgICB2YWxpZGF0ZU5hbWUob3B0aW9ucy5uYW1lKTtcbiAgICB2YWxpZGF0ZUh0bWxTZWxlY3RvcihvcHRpb25zLnNlbGVjdG9yISk7XG5cbiAgICAvLyBJbiBjYXNlIHRoZSBzcGVjaWZpZWQgc3R5bGUgZXh0ZW5zaW9uIGlzIG5vdCBwYXJ0IG9mIHRoZSBzdXBwb3J0ZWQgQ1NTIHN1cGVyc2V0cyxcbiAgICAvLyB3ZSBnZW5lcmF0ZSB0aGUgc3R5bGVzaGVldHMgd2l0aCB0aGUgXCJjc3NcIiBleHRlbnNpb24uIFRoaXMgZW5zdXJlcyB0aGF0IHdlIGRvbid0XG4gICAgLy8gYWNjaWRlbnRhbGx5IGdlbmVyYXRlIGludmFsaWQgc3R5bGVzaGVldHMgKGUuZy4gZHJhZy1kcm9wLWNvbXAuc3R5bCkgd2hpY2ggd2lsbFxuICAgIC8vIGJyZWFrIHRoZSBBbmd1bGFyIENMSSBwcm9qZWN0LiBTZWU6IGh0dHBzOi8vZ2l0aHViLmNvbS9hbmd1bGFyL2NvbXBvbmVudHMvaXNzdWVzLzE1MTY0XG4gICAgaWYgKCFzdXBwb3J0ZWRDc3NFeHRlbnNpb25zLmluY2x1ZGVzKG9wdGlvbnMuc3R5bGUhKSkge1xuICAgICAgLy8gVE9ETzogQ2FzdCBpcyBuZWNlc3NhcnkgYXMgd2UgY2FuJ3QgdXNlIHRoZSBTdHlsZSBlbnVtIHdoaWNoIGhhcyBiZWVuIGludHJvZHVjZWRcbiAgICAgIC8vIHdpdGhpbiBDTEkgdjcuMy4wLXJjLjAuIFRoaXMgd291bGQgYnJlYWsgdGhlIHNjaGVtYXRpYyBmb3Igb2xkZXIgQ0xJIHZlcnNpb25zLlxuICAgICAgb3B0aW9ucy5zdHlsZSA9ICdjc3MnIGFzIFN0eWxlO1xuICAgIH1cblxuICAgIC8vIE9iamVjdCB0aGF0IHdpbGwgYmUgdXNlZCBhcyBjb250ZXh0IGZvciB0aGUgRUpTIHRlbXBsYXRlcy5cbiAgICBjb25zdCBiYXNlVGVtcGxhdGVDb250ZXh0ID0ge1xuICAgICAgLi4uc3RyaW5ncyxcbiAgICAgICdpZi1mbGF0JzogKHM6IHN0cmluZykgPT4gb3B0aW9ucy5mbGF0ID8gJycgOiBzLFxuICAgICAgLi4ub3B0aW9ucyxcbiAgICB9O1xuXG4gICAgLy8gS2V5LXZhbHVlIG9iamVjdCB0aGF0IGluY2x1ZGVzIHRoZSBzcGVjaWZpZWQgYWRkaXRpb25hbCBmaWxlcyB3aXRoIHRoZWlyIGxvYWRlZCBjb250ZW50LlxuICAgIC8vIFRoZSByZXNvbHZlZCBjb250ZW50cyBjYW4gYmUgdXNlZCBpbnNpZGUgRUpTIHRlbXBsYXRlcy5cbiAgICBjb25zdCByZXNvbHZlZEZpbGVzID0ge307XG5cbiAgICBmb3IgKGxldCBrZXkgaW4gYWRkaXRpb25hbEZpbGVzKSB7XG4gICAgICBpZiAoYWRkaXRpb25hbEZpbGVzW2tleV0pIHtcbiAgICAgICAgY29uc3QgZmlsZUNvbnRlbnQgPSByZWFkRmlsZVN5bmMoam9pbihzY2hlbWF0aWNGaWxlc1BhdGgsIGFkZGl0aW9uYWxGaWxlc1trZXldKSwgJ3V0Zi04Jyk7XG5cbiAgICAgICAgLy8gSW50ZXJwb2xhdGUgdGhlIGFkZGl0aW9uYWwgZmlsZXMgd2l0aCB0aGUgYmFzZSBFSlMgdGVtcGxhdGUgY29udGV4dC5cbiAgICAgICAgcmVzb2x2ZWRGaWxlc1trZXldID0gaW50ZXJwb2xhdGVUZW1wbGF0ZShmaWxlQ29udGVudCkoYmFzZVRlbXBsYXRlQ29udGV4dCk7XG4gICAgICB9XG4gICAgfVxuXG4gICAgY29uc3QgdGVtcGxhdGVTb3VyY2UgPSBhcHBseSh1cmwoc2NoZW1hdGljRmlsZXNVcmwpLCBbXG4gICAgICBvcHRpb25zLnNraXBUZXN0cyA/IGZpbHRlcihwYXRoID0+ICFwYXRoLmVuZHNXaXRoKCcuc3BlYy50cy50ZW1wbGF0ZScpKSA6IG5vb3AoKSxcbiAgICAgIG9wdGlvbnMuaW5saW5lU3R5bGUgPyBmaWx0ZXIocGF0aCA9PiAhcGF0aC5lbmRzV2l0aCgnLl9fc3R5bGVfXy50ZW1wbGF0ZScpKSA6IG5vb3AoKSxcbiAgICAgIG9wdGlvbnMuaW5saW5lVGVtcGxhdGUgPyBmaWx0ZXIocGF0aCA9PiAhcGF0aC5lbmRzV2l0aCgnLmh0bWwudGVtcGxhdGUnKSkgOiBub29wKCksXG4gICAgICAvLyBUcmVhdCB0aGUgdGVtcGxhdGUgb3B0aW9ucyBhcyBhbnksIGJlY2F1c2UgdGhlIHR5cGUgZGVmaW5pdGlvbiBmb3IgdGhlIHRlbXBsYXRlIG9wdGlvbnNcbiAgICAgIC8vIGlzIG1hZGUgdW5uZWNlc3NhcmlseSBleHBsaWNpdC4gRXZlcnkgdHlwZSBvZiBvYmplY3QgY2FuIGJlIHVzZWQgaW4gdGhlIEVKUyB0ZW1wbGF0ZS5cbiAgICAgIGFwcGx5VGVtcGxhdGVzKHtpbmRlbnRUZXh0Q29udGVudCwgcmVzb2x2ZWRGaWxlcywgLi4uYmFzZVRlbXBsYXRlQ29udGV4dH0gYXMgYW55KSxcbiAgICAgIC8vIFRPRE8oZGV2dmVyc2lvbik6IGZpZ3VyZSBvdXQgd2h5IHdlIGNhbm5vdCBqdXN0IHJlbW92ZSB0aGUgZmlyc3QgcGFyYW1ldGVyXG4gICAgICAvLyBTZWUgZm9yIGV4YW1wbGU6IGFuZ3VsYXItY2xpI3NjaGVtYXRpY3MvYW5ndWxhci9jb21wb25lbnQvaW5kZXgudHMjTDE2MFxuICAgICAgbW92ZShudWxsIGFzIGFueSwgcGFyc2VkUGF0aC5wYXRoKSxcbiAgICBdKTtcblxuICAgIHJldHVybiBjaGFpbihbXG4gICAgICBicmFuY2hBbmRNZXJnZShjaGFpbihbXG4gICAgICAgIGFkZERlY2xhcmF0aW9uVG9OZ01vZHVsZShvcHRpb25zKSxcbiAgICAgICAgbWVyZ2VXaXRoKHRlbXBsYXRlU291cmNlKSxcbiAgICAgIF0pKSxcbiAgICBdKShob3N0LCBjb250ZXh0KTtcbiAgfTtcbn1cbiJdfQ==