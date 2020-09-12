"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.AttributeSelectorsMigration = void 0;
const ts = require("typescript");
const migration_1 = require("../../update-tool/migration");
const literal_1 = require("../typescript/literal");
const upgrade_data_1 = require("../upgrade-data");
/**
 * Migration that walks through every string literal, template and stylesheet
 * in order to switch deprecated attribute selectors to the updated selector.
 */
class AttributeSelectorsMigration extends migration_1.Migration {
    constructor() {
        super(...arguments);
        /** Required upgrade changes for specified target version. */
        this.data = upgrade_data_1.getVersionUpgradeData(this, 'attributeSelectors');
        // Only enable the migration rule if there is upgrade data.
        this.enabled = this.data.length !== 0;
    }
    visitNode(node) {
        if (ts.isStringLiteralLike(node)) {
            this._visitStringLiteralLike(node);
        }
    }
    visitTemplate(template) {
        this.data.forEach(selector => {
            literal_1.findAllSubstringIndices(template.content, selector.replace)
                .map(offset => template.start + offset)
                .forEach(start => this._replaceSelector(template.filePath, start, selector));
        });
    }
    visitStylesheet(stylesheet) {
        this.data.forEach(selector => {
            const currentSelector = `[${selector.replace}]`;
            const updatedSelector = `[${selector.replaceWith}]`;
            literal_1.findAllSubstringIndices(stylesheet.content, currentSelector)
                .map(offset => stylesheet.start + offset)
                .forEach(start => this._replaceSelector(stylesheet.filePath, start, { replace: currentSelector, replaceWith: updatedSelector }));
        });
    }
    _visitStringLiteralLike(literal) {
        if (literal.parent && literal.parent.kind !== ts.SyntaxKind.CallExpression) {
            return;
        }
        const literalText = literal.getText();
        const filePath = this.fileSystem.resolve(literal.getSourceFile().fileName);
        this.data.forEach(selector => {
            literal_1.findAllSubstringIndices(literalText, selector.replace)
                .map(offset => literal.getStart() + offset)
                .forEach(start => this._replaceSelector(filePath, start, selector));
        });
    }
    _replaceSelector(filePath, start, data) {
        this.fileSystem.edit(filePath)
            .remove(start, data.replace.length)
            .insertRight(start, data.replaceWith);
    }
}
exports.AttributeSelectorsMigration = AttributeSelectorsMigration;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXR0cmlidXRlLXNlbGVjdG9ycy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvc2NoZW1hdGljcy9uZy11cGRhdGUvbWlncmF0aW9ucy9hdHRyaWJ1dGUtc2VsZWN0b3JzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQTs7Ozs7O0dBTUc7OztBQUVILGlDQUFpQztBQUdqQywyREFBc0Q7QUFFdEQsbURBQThEO0FBQzlELGtEQUFtRTtBQUVuRTs7O0dBR0c7QUFDSCxNQUFhLDJCQUE0QixTQUFRLHFCQUFzQjtJQUF2RTs7UUFDRSw2REFBNkQ7UUFDN0QsU0FBSSxHQUFHLG9DQUFxQixDQUFDLElBQUksRUFBRSxvQkFBb0IsQ0FBQyxDQUFDO1FBRXpELDJEQUEyRDtRQUMzRCxZQUFPLEdBQUcsSUFBSSxDQUFDLElBQUksQ0FBQyxNQUFNLEtBQUssQ0FBQyxDQUFDO0lBbURuQyxDQUFDO0lBakRDLFNBQVMsQ0FBQyxJQUFhO1FBQ3JCLElBQUksRUFBRSxDQUFDLG1CQUFtQixDQUFDLElBQUksQ0FBQyxFQUFFO1lBQ2hDLElBQUksQ0FBQyx1QkFBdUIsQ0FBQyxJQUFJLENBQUMsQ0FBQztTQUNwQztJQUNILENBQUM7SUFFRCxhQUFhLENBQUMsUUFBMEI7UUFDdEMsSUFBSSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsUUFBUSxDQUFDLEVBQUU7WUFDM0IsaUNBQXVCLENBQUMsUUFBUSxDQUFDLE9BQU8sRUFBRSxRQUFRLENBQUMsT0FBTyxDQUFDO2lCQUN0RCxHQUFHLENBQUMsTUFBTSxDQUFDLEVBQUUsQ0FBQyxRQUFRLENBQUMsS0FBSyxHQUFHLE1BQU0sQ0FBQztpQkFDdEMsT0FBTyxDQUFDLEtBQUssQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLGdCQUFnQixDQUFDLFFBQVEsQ0FBQyxRQUFRLEVBQUUsS0FBSyxFQUFFLFFBQVEsQ0FBQyxDQUFDLENBQUM7UUFDbkYsQ0FBQyxDQUFDLENBQUM7SUFDTCxDQUFDO0lBRUQsZUFBZSxDQUFDLFVBQTRCO1FBQzFDLElBQUksQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLFFBQVEsQ0FBQyxFQUFFO1lBQzNCLE1BQU0sZUFBZSxHQUFHLElBQUksUUFBUSxDQUFDLE9BQU8sR0FBRyxDQUFDO1lBQ2hELE1BQU0sZUFBZSxHQUFHLElBQUksUUFBUSxDQUFDLFdBQVcsR0FBRyxDQUFDO1lBRXBELGlDQUF1QixDQUFDLFVBQVUsQ0FBQyxPQUFPLEVBQUUsZUFBZSxDQUFDO2lCQUN2RCxHQUFHLENBQUMsTUFBTSxDQUFDLEVBQUUsQ0FBQyxVQUFVLENBQUMsS0FBSyxHQUFHLE1BQU0sQ0FBQztpQkFDeEMsT0FBTyxDQUNKLEtBQUssQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLGdCQUFnQixDQUMxQixVQUFVLENBQUMsUUFBUSxFQUFFLEtBQUssRUFDMUIsRUFBQyxPQUFPLEVBQUUsZUFBZSxFQUFFLFdBQVcsRUFBRSxlQUFlLEVBQUMsQ0FBQyxDQUFDLENBQUM7UUFDekUsQ0FBQyxDQUFDLENBQUM7SUFDTCxDQUFDO0lBRU8sdUJBQXVCLENBQUMsT0FBNkI7UUFDM0QsSUFBSSxPQUFPLENBQUMsTUFBTSxJQUFJLE9BQU8sQ0FBQyxNQUFNLENBQUMsSUFBSSxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsY0FBYyxFQUFFO1lBQzFFLE9BQU87U0FDUjtRQUVELE1BQU0sV0FBVyxHQUFHLE9BQU8sQ0FBQyxPQUFPLEVBQUUsQ0FBQztRQUN0QyxNQUFNLFFBQVEsR0FBRyxJQUFJLENBQUMsVUFBVSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsYUFBYSxFQUFFLENBQUMsUUFBUSxDQUFDLENBQUM7UUFFM0UsSUFBSSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsUUFBUSxDQUFDLEVBQUU7WUFDM0IsaUNBQXVCLENBQUMsV0FBVyxFQUFFLFFBQVEsQ0FBQyxPQUFPLENBQUM7aUJBQ2pELEdBQUcsQ0FBQyxNQUFNLENBQUMsRUFBRSxDQUFDLE9BQU8sQ0FBQyxRQUFRLEVBQUUsR0FBRyxNQUFNLENBQUM7aUJBQzFDLE9BQU8sQ0FBQyxLQUFLLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxnQkFBZ0IsQ0FBQyxRQUFRLEVBQUUsS0FBSyxFQUFFLFFBQVEsQ0FBQyxDQUFDLENBQUM7UUFDMUUsQ0FBQyxDQUFDLENBQUM7SUFDTCxDQUFDO0lBRU8sZ0JBQWdCLENBQUMsUUFBdUIsRUFBRSxLQUFhLEVBQ3RDLElBQWtDO1FBQ3pELElBQUksQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQzthQUMzQixNQUFNLENBQUMsS0FBSyxFQUFFLElBQUksQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUFDO2FBQ2xDLFdBQVcsQ0FBQyxLQUFLLEVBQUUsSUFBSSxDQUFDLFdBQVcsQ0FBQyxDQUFDO0lBQzFDLENBQUM7Q0FDRjtBQXhERCxrRUF3REMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5pbXBvcnQge1dvcmtzcGFjZVBhdGh9IGZyb20gJy4uLy4uL3VwZGF0ZS10b29sL2ZpbGUtc3lzdGVtJztcbmltcG9ydCB7UmVzb2x2ZWRSZXNvdXJjZX0gZnJvbSAnLi4vLi4vdXBkYXRlLXRvb2wvY29tcG9uZW50LXJlc291cmNlLWNvbGxlY3Rvcic7XG5pbXBvcnQge01pZ3JhdGlvbn0gZnJvbSAnLi4vLi4vdXBkYXRlLXRvb2wvbWlncmF0aW9uJztcbmltcG9ydCB7QXR0cmlidXRlU2VsZWN0b3JVcGdyYWRlRGF0YX0gZnJvbSAnLi4vZGF0YS9hdHRyaWJ1dGUtc2VsZWN0b3JzJztcbmltcG9ydCB7ZmluZEFsbFN1YnN0cmluZ0luZGljZXN9IGZyb20gJy4uL3R5cGVzY3JpcHQvbGl0ZXJhbCc7XG5pbXBvcnQge2dldFZlcnNpb25VcGdyYWRlRGF0YSwgVXBncmFkZURhdGF9IGZyb20gJy4uL3VwZ3JhZGUtZGF0YSc7XG5cbi8qKlxuICogTWlncmF0aW9uIHRoYXQgd2Fsa3MgdGhyb3VnaCBldmVyeSBzdHJpbmcgbGl0ZXJhbCwgdGVtcGxhdGUgYW5kIHN0eWxlc2hlZXRcbiAqIGluIG9yZGVyIHRvIHN3aXRjaCBkZXByZWNhdGVkIGF0dHJpYnV0ZSBzZWxlY3RvcnMgdG8gdGhlIHVwZGF0ZWQgc2VsZWN0b3IuXG4gKi9cbmV4cG9ydCBjbGFzcyBBdHRyaWJ1dGVTZWxlY3RvcnNNaWdyYXRpb24gZXh0ZW5kcyBNaWdyYXRpb248VXBncmFkZURhdGE+IHtcbiAgLyoqIFJlcXVpcmVkIHVwZ3JhZGUgY2hhbmdlcyBmb3Igc3BlY2lmaWVkIHRhcmdldCB2ZXJzaW9uLiAqL1xuICBkYXRhID0gZ2V0VmVyc2lvblVwZ3JhZGVEYXRhKHRoaXMsICdhdHRyaWJ1dGVTZWxlY3RvcnMnKTtcblxuICAvLyBPbmx5IGVuYWJsZSB0aGUgbWlncmF0aW9uIHJ1bGUgaWYgdGhlcmUgaXMgdXBncmFkZSBkYXRhLlxuICBlbmFibGVkID0gdGhpcy5kYXRhLmxlbmd0aCAhPT0gMDtcblxuICB2aXNpdE5vZGUobm9kZTogdHMuTm9kZSkge1xuICAgIGlmICh0cy5pc1N0cmluZ0xpdGVyYWxMaWtlKG5vZGUpKSB7XG4gICAgICB0aGlzLl92aXNpdFN0cmluZ0xpdGVyYWxMaWtlKG5vZGUpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0VGVtcGxhdGUodGVtcGxhdGU6IFJlc29sdmVkUmVzb3VyY2UpIHtcbiAgICB0aGlzLmRhdGEuZm9yRWFjaChzZWxlY3RvciA9PiB7XG4gICAgICBmaW5kQWxsU3Vic3RyaW5nSW5kaWNlcyh0ZW1wbGF0ZS5jb250ZW50LCBzZWxlY3Rvci5yZXBsYWNlKVxuICAgICAgICAgIC5tYXAob2Zmc2V0ID0+IHRlbXBsYXRlLnN0YXJ0ICsgb2Zmc2V0KVxuICAgICAgICAgIC5mb3JFYWNoKHN0YXJ0ID0+IHRoaXMuX3JlcGxhY2VTZWxlY3Rvcih0ZW1wbGF0ZS5maWxlUGF0aCwgc3RhcnQsIHNlbGVjdG9yKSk7XG4gICAgfSk7XG4gIH1cblxuICB2aXNpdFN0eWxlc2hlZXQoc3R5bGVzaGVldDogUmVzb2x2ZWRSZXNvdXJjZSk6IHZvaWQge1xuICAgIHRoaXMuZGF0YS5mb3JFYWNoKHNlbGVjdG9yID0+IHtcbiAgICAgIGNvbnN0IGN1cnJlbnRTZWxlY3RvciA9IGBbJHtzZWxlY3Rvci5yZXBsYWNlfV1gO1xuICAgICAgY29uc3QgdXBkYXRlZFNlbGVjdG9yID0gYFske3NlbGVjdG9yLnJlcGxhY2VXaXRofV1gO1xuXG4gICAgICBmaW5kQWxsU3Vic3RyaW5nSW5kaWNlcyhzdHlsZXNoZWV0LmNvbnRlbnQsIGN1cnJlbnRTZWxlY3RvcilcbiAgICAgICAgICAubWFwKG9mZnNldCA9PiBzdHlsZXNoZWV0LnN0YXJ0ICsgb2Zmc2V0KVxuICAgICAgICAgIC5mb3JFYWNoKFxuICAgICAgICAgICAgICBzdGFydCA9PiB0aGlzLl9yZXBsYWNlU2VsZWN0b3IoXG4gICAgICAgICAgICAgICAgICBzdHlsZXNoZWV0LmZpbGVQYXRoLCBzdGFydCxcbiAgICAgICAgICAgICAgICAgIHtyZXBsYWNlOiBjdXJyZW50U2VsZWN0b3IsIHJlcGxhY2VXaXRoOiB1cGRhdGVkU2VsZWN0b3J9KSk7XG4gICAgfSk7XG4gIH1cblxuICBwcml2YXRlIF92aXNpdFN0cmluZ0xpdGVyYWxMaWtlKGxpdGVyYWw6IHRzLlN0cmluZ0xpdGVyYWxMaWtlKSB7XG4gICAgaWYgKGxpdGVyYWwucGFyZW50ICYmIGxpdGVyYWwucGFyZW50LmtpbmQgIT09IHRzLlN5bnRheEtpbmQuQ2FsbEV4cHJlc3Npb24pIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG5cbiAgICBjb25zdCBsaXRlcmFsVGV4dCA9IGxpdGVyYWwuZ2V0VGV4dCgpO1xuICAgIGNvbnN0IGZpbGVQYXRoID0gdGhpcy5maWxlU3lzdGVtLnJlc29sdmUobGl0ZXJhbC5nZXRTb3VyY2VGaWxlKCkuZmlsZU5hbWUpO1xuXG4gICAgdGhpcy5kYXRhLmZvckVhY2goc2VsZWN0b3IgPT4ge1xuICAgICAgZmluZEFsbFN1YnN0cmluZ0luZGljZXMobGl0ZXJhbFRleHQsIHNlbGVjdG9yLnJlcGxhY2UpXG4gICAgICAgICAgLm1hcChvZmZzZXQgPT4gbGl0ZXJhbC5nZXRTdGFydCgpICsgb2Zmc2V0KVxuICAgICAgICAgIC5mb3JFYWNoKHN0YXJ0ID0+IHRoaXMuX3JlcGxhY2VTZWxlY3RvcihmaWxlUGF0aCwgc3RhcnQsIHNlbGVjdG9yKSk7XG4gICAgfSk7XG4gIH1cblxuICBwcml2YXRlIF9yZXBsYWNlU2VsZWN0b3IoZmlsZVBhdGg6IFdvcmtzcGFjZVBhdGgsIHN0YXJ0OiBudW1iZXIsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICBkYXRhOiBBdHRyaWJ1dGVTZWxlY3RvclVwZ3JhZGVEYXRhKSB7XG4gICAgdGhpcy5maWxlU3lzdGVtLmVkaXQoZmlsZVBhdGgpXG4gICAgICAucmVtb3ZlKHN0YXJ0LCBkYXRhLnJlcGxhY2UubGVuZ3RoKVxuICAgICAgLmluc2VydFJpZ2h0KHN0YXJ0LCBkYXRhLnJlcGxhY2VXaXRoKTtcbiAgfVxufVxuIl19