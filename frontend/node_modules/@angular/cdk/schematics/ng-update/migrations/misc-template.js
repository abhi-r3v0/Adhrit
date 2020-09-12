"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.MiscTemplateMigration = void 0;
const target_version_1 = require("../../update-tool/target-version");
const migration_1 = require("../../update-tool/migration");
const literal_1 = require("../typescript/literal");
/**
 * Migration that walks through every template and reports if there are
 * instances of outdated Angular CDK API that can't be migrated automatically.
 */
class MiscTemplateMigration extends migration_1.Migration {
    constructor() {
        super(...arguments);
        // Only enable this rule if the migration targets version 6. The rule
        // currently only includes migrations for V6 deprecations.
        this.enabled = this.targetVersion === target_version_1.TargetVersion.V6;
    }
    visitTemplate(template) {
        // Migration for https://github.com/angular/components/pull/10325 (v6)
        literal_1.findAllSubstringIndices(template.content, 'cdk-focus-trap').forEach(offset => {
            this.failures.push({
                filePath: template.filePath,
                position: template.getCharacterAndLineOfPosition(template.start + offset),
                message: `Found deprecated element selector "cdk-focus-trap" which has been ` +
                    `changed to an attribute selector "[cdkTrapFocus]".`
            });
        });
    }
}
exports.MiscTemplateMigration = MiscTemplateMigration;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWlzYy10ZW1wbGF0ZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvc2NoZW1hdGljcy9uZy11cGRhdGUvbWlncmF0aW9ucy9taXNjLXRlbXBsYXRlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQTs7Ozs7O0dBTUc7OztBQUVILHFFQUErRDtBQUUvRCwyREFBc0Q7QUFDdEQsbURBQThEO0FBRzlEOzs7R0FHRztBQUNILE1BQWEscUJBQXNCLFNBQVEscUJBQXNCO0lBQWpFOztRQUVFLHFFQUFxRTtRQUNyRSwwREFBMEQ7UUFDMUQsWUFBTyxHQUFHLElBQUksQ0FBQyxhQUFhLEtBQUssOEJBQWEsQ0FBQyxFQUFFLENBQUM7SUFhcEQsQ0FBQztJQVhDLGFBQWEsQ0FBQyxRQUEwQjtRQUN0QyxzRUFBc0U7UUFDdEUsaUNBQXVCLENBQUMsUUFBUSxDQUFDLE9BQU8sRUFBRSxnQkFBZ0IsQ0FBQyxDQUFDLE9BQU8sQ0FBQyxNQUFNLENBQUMsRUFBRTtZQUMzRSxJQUFJLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQztnQkFDakIsUUFBUSxFQUFFLFFBQVEsQ0FBQyxRQUFRO2dCQUMzQixRQUFRLEVBQUUsUUFBUSxDQUFDLDZCQUE2QixDQUFDLFFBQVEsQ0FBQyxLQUFLLEdBQUcsTUFBTSxDQUFDO2dCQUN6RSxPQUFPLEVBQUUsb0VBQW9FO29CQUN6RSxvREFBb0Q7YUFDekQsQ0FBQyxDQUFDO1FBQ0wsQ0FBQyxDQUFDLENBQUM7SUFDTCxDQUFDO0NBQ0Y7QUFqQkQsc0RBaUJDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7VGFyZ2V0VmVyc2lvbn0gZnJvbSAnLi4vLi4vdXBkYXRlLXRvb2wvdGFyZ2V0LXZlcnNpb24nO1xuaW1wb3J0IHtSZXNvbHZlZFJlc291cmNlfSBmcm9tICcuLi8uLi91cGRhdGUtdG9vbC9jb21wb25lbnQtcmVzb3VyY2UtY29sbGVjdG9yJztcbmltcG9ydCB7TWlncmF0aW9ufSBmcm9tICcuLi8uLi91cGRhdGUtdG9vbC9taWdyYXRpb24nO1xuaW1wb3J0IHtmaW5kQWxsU3Vic3RyaW5nSW5kaWNlc30gZnJvbSAnLi4vdHlwZXNjcmlwdC9saXRlcmFsJztcbmltcG9ydCB7VXBncmFkZURhdGF9IGZyb20gJy4uL3VwZ3JhZGUtZGF0YSc7XG5cbi8qKlxuICogTWlncmF0aW9uIHRoYXQgd2Fsa3MgdGhyb3VnaCBldmVyeSB0ZW1wbGF0ZSBhbmQgcmVwb3J0cyBpZiB0aGVyZSBhcmVcbiAqIGluc3RhbmNlcyBvZiBvdXRkYXRlZCBBbmd1bGFyIENESyBBUEkgdGhhdCBjYW4ndCBiZSBtaWdyYXRlZCBhdXRvbWF0aWNhbGx5LlxuICovXG5leHBvcnQgY2xhc3MgTWlzY1RlbXBsYXRlTWlncmF0aW9uIGV4dGVuZHMgTWlncmF0aW9uPFVwZ3JhZGVEYXRhPiB7XG5cbiAgLy8gT25seSBlbmFibGUgdGhpcyBydWxlIGlmIHRoZSBtaWdyYXRpb24gdGFyZ2V0cyB2ZXJzaW9uIDYuIFRoZSBydWxlXG4gIC8vIGN1cnJlbnRseSBvbmx5IGluY2x1ZGVzIG1pZ3JhdGlvbnMgZm9yIFY2IGRlcHJlY2F0aW9ucy5cbiAgZW5hYmxlZCA9IHRoaXMudGFyZ2V0VmVyc2lvbiA9PT0gVGFyZ2V0VmVyc2lvbi5WNjtcblxuICB2aXNpdFRlbXBsYXRlKHRlbXBsYXRlOiBSZXNvbHZlZFJlc291cmNlKTogdm9pZCB7XG4gICAgLy8gTWlncmF0aW9uIGZvciBodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9jb21wb25lbnRzL3B1bGwvMTAzMjUgKHY2KVxuICAgIGZpbmRBbGxTdWJzdHJpbmdJbmRpY2VzKHRlbXBsYXRlLmNvbnRlbnQsICdjZGstZm9jdXMtdHJhcCcpLmZvckVhY2gob2Zmc2V0ID0+IHtcbiAgICAgIHRoaXMuZmFpbHVyZXMucHVzaCh7XG4gICAgICAgIGZpbGVQYXRoOiB0ZW1wbGF0ZS5maWxlUGF0aCxcbiAgICAgICAgcG9zaXRpb246IHRlbXBsYXRlLmdldENoYXJhY3RlckFuZExpbmVPZlBvc2l0aW9uKHRlbXBsYXRlLnN0YXJ0ICsgb2Zmc2V0KSxcbiAgICAgICAgbWVzc2FnZTogYEZvdW5kIGRlcHJlY2F0ZWQgZWxlbWVudCBzZWxlY3RvciBcImNkay1mb2N1cy10cmFwXCIgd2hpY2ggaGFzIGJlZW4gYCArXG4gICAgICAgICAgICBgY2hhbmdlZCB0byBhbiBhdHRyaWJ1dGUgc2VsZWN0b3IgXCJbY2RrVHJhcEZvY3VzXVwiLmBcbiAgICAgIH0pO1xuICAgIH0pO1xuICB9XG59XG4iXX0=