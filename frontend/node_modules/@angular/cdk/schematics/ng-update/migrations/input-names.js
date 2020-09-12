"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.InputNamesMigration = void 0;
const angular_1 = require("../html-parsing/angular");
const migration_1 = require("../../update-tool/migration");
const literal_1 = require("../typescript/literal");
const upgrade_data_1 = require("../upgrade-data");
/**
 * Migration that walks through every template or stylesheet and replaces outdated input
 * names to the new input name. Selectors in stylesheets could also target input
 * bindings declared as static attribute. See for example:
 *
 * e.g. `<my-component color="primary">` becomes `my-component[color]`
 */
class InputNamesMigration extends migration_1.Migration {
    constructor() {
        super(...arguments);
        /** Change data that upgrades to the specified target version. */
        this.data = upgrade_data_1.getVersionUpgradeData(this, 'inputNames');
        // Only enable the migration rule if there is upgrade data.
        this.enabled = this.data.length !== 0;
    }
    visitStylesheet(stylesheet) {
        this.data.forEach(name => {
            const currentSelector = `[${name.replace}]`;
            const updatedSelector = `[${name.replaceWith}]`;
            literal_1.findAllSubstringIndices(stylesheet.content, currentSelector)
                .map(offset => stylesheet.start + offset)
                .forEach(start => this._replaceInputName(stylesheet.filePath, start, currentSelector.length, updatedSelector));
        });
    }
    visitTemplate(template) {
        this.data.forEach(name => {
            const whitelist = name.whitelist;
            const relativeOffsets = [];
            if (whitelist.attributes) {
                relativeOffsets.push(...angular_1.findInputsOnElementWithAttr(template.content, name.replace, whitelist.attributes));
            }
            if (whitelist.elements) {
                relativeOffsets.push(...angular_1.findInputsOnElementWithTag(template.content, name.replace, whitelist.elements));
            }
            relativeOffsets.map(offset => template.start + offset)
                .forEach(start => this._replaceInputName(template.filePath, start, name.replace.length, name.replaceWith));
        });
    }
    _replaceInputName(filePath, start, width, newName) {
        this.fileSystem.edit(filePath)
            .remove(start, width)
            .insertRight(start, newName);
    }
}
exports.InputNamesMigration = InputNamesMigration;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5wdXQtbmFtZXMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL3NjaGVtYXRpY3MvbmctdXBkYXRlL21pZ3JhdGlvbnMvaW5wdXQtbmFtZXMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBOzs7Ozs7R0FNRzs7O0FBR0gscURBQWdHO0FBRWhHLDJEQUFzRDtBQUd0RCxtREFBOEQ7QUFDOUQsa0RBQW1FO0FBRW5FOzs7Ozs7R0FNRztBQUNILE1BQWEsbUJBQW9CLFNBQVEscUJBQXNCO0lBQS9EOztRQUNFLGlFQUFpRTtRQUNqRSxTQUFJLEdBQTJCLG9DQUFxQixDQUFDLElBQUksRUFBRSxZQUFZLENBQUMsQ0FBQztRQUV6RSwyREFBMkQ7UUFDM0QsWUFBTyxHQUFHLElBQUksQ0FBQyxJQUFJLENBQUMsTUFBTSxLQUFLLENBQUMsQ0FBQztJQTJDbkMsQ0FBQztJQXpDQyxlQUFlLENBQUMsVUFBNEI7UUFDMUMsSUFBSSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLEVBQUU7WUFDdkIsTUFBTSxlQUFlLEdBQUcsSUFBSSxJQUFJLENBQUMsT0FBTyxHQUFHLENBQUM7WUFDNUMsTUFBTSxlQUFlLEdBQUcsSUFBSSxJQUFJLENBQUMsV0FBVyxHQUFHLENBQUM7WUFFaEQsaUNBQXVCLENBQUMsVUFBVSxDQUFDLE9BQU8sRUFBRSxlQUFlLENBQUM7aUJBQ3ZELEdBQUcsQ0FBQyxNQUFNLENBQUMsRUFBRSxDQUFDLFVBQVUsQ0FBQyxLQUFLLEdBQUcsTUFBTSxDQUFDO2lCQUN4QyxPQUFPLENBQ0osS0FBSyxDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsaUJBQWlCLENBQzNCLFVBQVUsQ0FBQyxRQUFRLEVBQUUsS0FBSyxFQUFFLGVBQWUsQ0FBQyxNQUFNLEVBQUUsZUFBZSxDQUFDLENBQUMsQ0FBQztRQUNwRixDQUFDLENBQUMsQ0FBQztJQUNMLENBQUM7SUFFRCxhQUFhLENBQUMsUUFBMEI7UUFDdEMsSUFBSSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLEVBQUU7WUFDdkIsTUFBTSxTQUFTLEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQztZQUNqQyxNQUFNLGVBQWUsR0FBYSxFQUFFLENBQUM7WUFFckMsSUFBSSxTQUFTLENBQUMsVUFBVSxFQUFFO2dCQUN4QixlQUFlLENBQUMsSUFBSSxDQUNoQixHQUFHLHFDQUEyQixDQUFDLFFBQVEsQ0FBQyxPQUFPLEVBQUUsSUFBSSxDQUFDLE9BQU8sRUFBRSxTQUFTLENBQUMsVUFBVSxDQUFDLENBQUMsQ0FBQzthQUMzRjtZQUVELElBQUksU0FBUyxDQUFDLFFBQVEsRUFBRTtnQkFDdEIsZUFBZSxDQUFDLElBQUksQ0FDaEIsR0FBRyxvQ0FBMEIsQ0FBQyxRQUFRLENBQUMsT0FBTyxFQUFFLElBQUksQ0FBQyxPQUFPLEVBQUUsU0FBUyxDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUM7YUFDeEY7WUFFRCxlQUFlLENBQUMsR0FBRyxDQUFDLE1BQU0sQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLEtBQUssR0FBRyxNQUFNLENBQUM7aUJBQ2pELE9BQU8sQ0FDSixLQUFLLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxpQkFBaUIsQ0FDM0IsUUFBUSxDQUFDLFFBQVEsRUFBRSxLQUFLLEVBQUUsSUFBSSxDQUFDLE9BQU8sQ0FBQyxNQUFNLEVBQUUsSUFBSSxDQUFDLFdBQVcsQ0FBQyxDQUFDLENBQUM7UUFDaEYsQ0FBQyxDQUFDLENBQUM7SUFDTCxDQUFDO0lBRU8saUJBQWlCLENBQUMsUUFBdUIsRUFBRSxLQUFhLEVBQUUsS0FBYSxFQUNyRCxPQUFlO1FBQ3ZDLElBQUksQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQzthQUMzQixNQUFNLENBQUMsS0FBSyxFQUFFLEtBQUssQ0FBQzthQUNwQixXQUFXLENBQUMsS0FBSyxFQUFFLE9BQU8sQ0FBQyxDQUFDO0lBQ2pDLENBQUM7Q0FDRjtBQWhERCxrREFnREMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtXb3Jrc3BhY2VQYXRofSBmcm9tICcuLi8uLi91cGRhdGUtdG9vbC9maWxlLXN5c3RlbSc7XG5pbXBvcnQge2ZpbmRJbnB1dHNPbkVsZW1lbnRXaXRoQXR0ciwgZmluZElucHV0c09uRWxlbWVudFdpdGhUYWd9IGZyb20gJy4uL2h0bWwtcGFyc2luZy9hbmd1bGFyJztcbmltcG9ydCB7UmVzb2x2ZWRSZXNvdXJjZX0gZnJvbSAnLi4vLi4vdXBkYXRlLXRvb2wvY29tcG9uZW50LXJlc291cmNlLWNvbGxlY3Rvcic7XG5pbXBvcnQge01pZ3JhdGlvbn0gZnJvbSAnLi4vLi4vdXBkYXRlLXRvb2wvbWlncmF0aW9uJztcblxuaW1wb3J0IHtJbnB1dE5hbWVVcGdyYWRlRGF0YX0gZnJvbSAnLi4vZGF0YSc7XG5pbXBvcnQge2ZpbmRBbGxTdWJzdHJpbmdJbmRpY2VzfSBmcm9tICcuLi90eXBlc2NyaXB0L2xpdGVyYWwnO1xuaW1wb3J0IHtnZXRWZXJzaW9uVXBncmFkZURhdGEsIFVwZ3JhZGVEYXRhfSBmcm9tICcuLi91cGdyYWRlLWRhdGEnO1xuXG4vKipcbiAqIE1pZ3JhdGlvbiB0aGF0IHdhbGtzIHRocm91Z2ggZXZlcnkgdGVtcGxhdGUgb3Igc3R5bGVzaGVldCBhbmQgcmVwbGFjZXMgb3V0ZGF0ZWQgaW5wdXRcbiAqIG5hbWVzIHRvIHRoZSBuZXcgaW5wdXQgbmFtZS4gU2VsZWN0b3JzIGluIHN0eWxlc2hlZXRzIGNvdWxkIGFsc28gdGFyZ2V0IGlucHV0XG4gKiBiaW5kaW5ncyBkZWNsYXJlZCBhcyBzdGF0aWMgYXR0cmlidXRlLiBTZWUgZm9yIGV4YW1wbGU6XG4gKlxuICogZS5nLiBgPG15LWNvbXBvbmVudCBjb2xvcj1cInByaW1hcnlcIj5gIGJlY29tZXMgYG15LWNvbXBvbmVudFtjb2xvcl1gXG4gKi9cbmV4cG9ydCBjbGFzcyBJbnB1dE5hbWVzTWlncmF0aW9uIGV4dGVuZHMgTWlncmF0aW9uPFVwZ3JhZGVEYXRhPiB7XG4gIC8qKiBDaGFuZ2UgZGF0YSB0aGF0IHVwZ3JhZGVzIHRvIHRoZSBzcGVjaWZpZWQgdGFyZ2V0IHZlcnNpb24uICovXG4gIGRhdGE6IElucHV0TmFtZVVwZ3JhZGVEYXRhW10gPSBnZXRWZXJzaW9uVXBncmFkZURhdGEodGhpcywgJ2lucHV0TmFtZXMnKTtcblxuICAvLyBPbmx5IGVuYWJsZSB0aGUgbWlncmF0aW9uIHJ1bGUgaWYgdGhlcmUgaXMgdXBncmFkZSBkYXRhLlxuICBlbmFibGVkID0gdGhpcy5kYXRhLmxlbmd0aCAhPT0gMDtcblxuICB2aXNpdFN0eWxlc2hlZXQoc3R5bGVzaGVldDogUmVzb2x2ZWRSZXNvdXJjZSk6IHZvaWQge1xuICAgIHRoaXMuZGF0YS5mb3JFYWNoKG5hbWUgPT4ge1xuICAgICAgY29uc3QgY3VycmVudFNlbGVjdG9yID0gYFske25hbWUucmVwbGFjZX1dYDtcbiAgICAgIGNvbnN0IHVwZGF0ZWRTZWxlY3RvciA9IGBbJHtuYW1lLnJlcGxhY2VXaXRofV1gO1xuXG4gICAgICBmaW5kQWxsU3Vic3RyaW5nSW5kaWNlcyhzdHlsZXNoZWV0LmNvbnRlbnQsIGN1cnJlbnRTZWxlY3RvcilcbiAgICAgICAgICAubWFwKG9mZnNldCA9PiBzdHlsZXNoZWV0LnN0YXJ0ICsgb2Zmc2V0KVxuICAgICAgICAgIC5mb3JFYWNoKFxuICAgICAgICAgICAgICBzdGFydCA9PiB0aGlzLl9yZXBsYWNlSW5wdXROYW1lKFxuICAgICAgICAgICAgICAgICAgc3R5bGVzaGVldC5maWxlUGF0aCwgc3RhcnQsIGN1cnJlbnRTZWxlY3Rvci5sZW5ndGgsIHVwZGF0ZWRTZWxlY3RvcikpO1xuICAgIH0pO1xuICB9XG5cbiAgdmlzaXRUZW1wbGF0ZSh0ZW1wbGF0ZTogUmVzb2x2ZWRSZXNvdXJjZSk6IHZvaWQge1xuICAgIHRoaXMuZGF0YS5mb3JFYWNoKG5hbWUgPT4ge1xuICAgICAgY29uc3Qgd2hpdGVsaXN0ID0gbmFtZS53aGl0ZWxpc3Q7XG4gICAgICBjb25zdCByZWxhdGl2ZU9mZnNldHM6IG51bWJlcltdID0gW107XG5cbiAgICAgIGlmICh3aGl0ZWxpc3QuYXR0cmlidXRlcykge1xuICAgICAgICByZWxhdGl2ZU9mZnNldHMucHVzaChcbiAgICAgICAgICAgIC4uLmZpbmRJbnB1dHNPbkVsZW1lbnRXaXRoQXR0cih0ZW1wbGF0ZS5jb250ZW50LCBuYW1lLnJlcGxhY2UsIHdoaXRlbGlzdC5hdHRyaWJ1dGVzKSk7XG4gICAgICB9XG5cbiAgICAgIGlmICh3aGl0ZWxpc3QuZWxlbWVudHMpIHtcbiAgICAgICAgcmVsYXRpdmVPZmZzZXRzLnB1c2goXG4gICAgICAgICAgICAuLi5maW5kSW5wdXRzT25FbGVtZW50V2l0aFRhZyh0ZW1wbGF0ZS5jb250ZW50LCBuYW1lLnJlcGxhY2UsIHdoaXRlbGlzdC5lbGVtZW50cykpO1xuICAgICAgfVxuXG4gICAgICByZWxhdGl2ZU9mZnNldHMubWFwKG9mZnNldCA9PiB0ZW1wbGF0ZS5zdGFydCArIG9mZnNldClcbiAgICAgICAgICAuZm9yRWFjaChcbiAgICAgICAgICAgICAgc3RhcnQgPT4gdGhpcy5fcmVwbGFjZUlucHV0TmFtZShcbiAgICAgICAgICAgICAgICAgIHRlbXBsYXRlLmZpbGVQYXRoLCBzdGFydCwgbmFtZS5yZXBsYWNlLmxlbmd0aCwgbmFtZS5yZXBsYWNlV2l0aCkpO1xuICAgIH0pO1xuICB9XG5cbiAgcHJpdmF0ZSBfcmVwbGFjZUlucHV0TmFtZShmaWxlUGF0aDogV29ya3NwYWNlUGF0aCwgc3RhcnQ6IG51bWJlciwgd2lkdGg6IG51bWJlcixcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBuZXdOYW1lOiBzdHJpbmcpIHtcbiAgICB0aGlzLmZpbGVTeXN0ZW0uZWRpdChmaWxlUGF0aClcbiAgICAgIC5yZW1vdmUoc3RhcnQsIHdpZHRoKVxuICAgICAgLmluc2VydFJpZ2h0KHN0YXJ0LCBuZXdOYW1lKTtcbiAgfVxufVxuIl19