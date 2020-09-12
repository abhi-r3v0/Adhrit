"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.MethodCallArgumentsMigration = void 0;
const ts = require("typescript");
const migration_1 = require("../../update-tool/migration");
const upgrade_data_1 = require("../upgrade-data");
/**
 * Migration that visits every TypeScript method call expression and checks if the
 * argument count is invalid and needs to be *manually* updated.
 */
class MethodCallArgumentsMigration extends migration_1.Migration {
    constructor() {
        super(...arguments);
        /** Change data that upgrades to the specified target version. */
        this.data = upgrade_data_1.getVersionUpgradeData(this, 'methodCallChecks');
        // Only enable the migration rule if there is upgrade data.
        this.enabled = this.data.length !== 0;
    }
    visitNode(node) {
        if (ts.isCallExpression(node) && ts.isPropertyAccessExpression(node.expression)) {
            this._checkPropertyAccessMethodCall(node);
        }
    }
    _checkPropertyAccessMethodCall(node) {
        const propertyAccess = node.expression;
        if (!ts.isIdentifier(propertyAccess.name)) {
            return;
        }
        const hostType = this.typeChecker.getTypeAtLocation(propertyAccess.expression);
        const hostTypeName = hostType.symbol && hostType.symbol.name;
        const methodName = propertyAccess.name.text;
        if (!hostTypeName) {
            return;
        }
        // TODO(devversion): Revisit the implementation of this upgrade rule. It seems difficult
        // and ambiguous to maintain the data for this rule. e.g. consider a method which has the
        // same amount of arguments but just had a type change. In that case we could still add
        // new entries to the upgrade data that match the current argument length to just show
        // a failure message, but adding that data becomes painful if the method has optional
        // parameters and it would mean that the error message would always show up, even if the
        // argument is in some cases still assignable to the new parameter type. We could re-use
        // the logic we have in the constructor-signature checks to check for assignability and
        // to make the upgrade data less verbose.
        const failure = this.data.filter(data => data.method === methodName && data.className === hostTypeName)
            .map(data => data.invalidArgCounts.find(f => f.count === node.arguments.length))[0];
        if (!failure) {
            return;
        }
        this.createFailureAtNode(node, `Found call to "${hostTypeName + '.' + methodName}" ` +
            `with ${failure.count} arguments. Message: ${failure.message}`);
    }
}
exports.MethodCallArgumentsMigration = MethodCallArgumentsMigration;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWV0aG9kLWNhbGwtYXJndW1lbnRzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9zY2hlbWF0aWNzL25nLXVwZGF0ZS9taWdyYXRpb25zL21ldGhvZC1jYWxsLWFyZ3VtZW50cy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUE7Ozs7OztHQU1HOzs7QUFFSCxpQ0FBaUM7QUFDakMsMkRBQXNEO0FBR3RELGtEQUFtRTtBQUVuRTs7O0dBR0c7QUFDSCxNQUFhLDRCQUE2QixTQUFRLHFCQUFzQjtJQUF4RTs7UUFDRSxpRUFBaUU7UUFDakUsU0FBSSxHQUE0QixvQ0FBcUIsQ0FBQyxJQUFJLEVBQUUsa0JBQWtCLENBQUMsQ0FBQztRQUVoRiwyREFBMkQ7UUFDM0QsWUFBTyxHQUFHLElBQUksQ0FBQyxJQUFJLENBQUMsTUFBTSxLQUFLLENBQUMsQ0FBQztJQTZDbkMsQ0FBQztJQTNDQyxTQUFTLENBQUMsSUFBYTtRQUNyQixJQUFJLEVBQUUsQ0FBQyxnQkFBZ0IsQ0FBQyxJQUFJLENBQUMsSUFBSSxFQUFFLENBQUMsMEJBQTBCLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxFQUFFO1lBQy9FLElBQUksQ0FBQyw4QkFBOEIsQ0FBQyxJQUFJLENBQUMsQ0FBQztTQUMzQztJQUNILENBQUM7SUFFTyw4QkFBOEIsQ0FBQyxJQUF1QjtRQUM1RCxNQUFNLGNBQWMsR0FBRyxJQUFJLENBQUMsVUFBeUMsQ0FBQztRQUV0RSxJQUFJLENBQUMsRUFBRSxDQUFDLFlBQVksQ0FBQyxjQUFjLENBQUMsSUFBSSxDQUFDLEVBQUU7WUFDekMsT0FBTztTQUNSO1FBRUQsTUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLFdBQVcsQ0FBQyxpQkFBaUIsQ0FBQyxjQUFjLENBQUMsVUFBVSxDQUFDLENBQUM7UUFDL0UsTUFBTSxZQUFZLEdBQUcsUUFBUSxDQUFDLE1BQU0sSUFBSSxRQUFRLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQztRQUM3RCxNQUFNLFVBQVUsR0FBRyxjQUFjLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQztRQUU1QyxJQUFJLENBQUMsWUFBWSxFQUFFO1lBQ2pCLE9BQU87U0FDUjtRQUVELHdGQUF3RjtRQUN4Rix5RkFBeUY7UUFDekYsdUZBQXVGO1FBQ3ZGLHNGQUFzRjtRQUN0RixxRkFBcUY7UUFDckYsd0ZBQXdGO1FBQ3hGLHdGQUF3RjtRQUN4Rix1RkFBdUY7UUFDdkYseUNBQXlDO1FBQ3pDLE1BQU0sT0FBTyxHQUNULElBQUksQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLE1BQU0sS0FBSyxVQUFVLElBQUksSUFBSSxDQUFDLFNBQVMsS0FBSyxZQUFZLENBQUM7YUFDbEYsR0FBRyxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLGdCQUFnQixDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQyxLQUFLLEtBQUssSUFBSSxDQUFDLFNBQVMsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBRTVGLElBQUksQ0FBQyxPQUFPLEVBQUU7WUFDWixPQUFPO1NBQ1I7UUFFRCxJQUFJLENBQUMsbUJBQW1CLENBQ3BCLElBQUksRUFDSixrQkFBa0IsWUFBWSxHQUFHLEdBQUcsR0FBRyxVQUFVLElBQUk7WUFDakQsUUFBUSxPQUFPLENBQUMsS0FBSyx3QkFBd0IsT0FBTyxDQUFDLE9BQU8sRUFBRSxDQUFDLENBQUM7SUFDMUUsQ0FBQztDQUNGO0FBbERELG9FQWtEQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcbmltcG9ydCB7TWlncmF0aW9ufSBmcm9tICcuLi8uLi91cGRhdGUtdG9vbC9taWdyYXRpb24nO1xuXG5pbXBvcnQge01ldGhvZENhbGxVcGdyYWRlRGF0YX0gZnJvbSAnLi4vZGF0YSc7XG5pbXBvcnQge2dldFZlcnNpb25VcGdyYWRlRGF0YSwgVXBncmFkZURhdGF9IGZyb20gJy4uL3VwZ3JhZGUtZGF0YSc7XG5cbi8qKlxuICogTWlncmF0aW9uIHRoYXQgdmlzaXRzIGV2ZXJ5IFR5cGVTY3JpcHQgbWV0aG9kIGNhbGwgZXhwcmVzc2lvbiBhbmQgY2hlY2tzIGlmIHRoZVxuICogYXJndW1lbnQgY291bnQgaXMgaW52YWxpZCBhbmQgbmVlZHMgdG8gYmUgKm1hbnVhbGx5KiB1cGRhdGVkLlxuICovXG5leHBvcnQgY2xhc3MgTWV0aG9kQ2FsbEFyZ3VtZW50c01pZ3JhdGlvbiBleHRlbmRzIE1pZ3JhdGlvbjxVcGdyYWRlRGF0YT4ge1xuICAvKiogQ2hhbmdlIGRhdGEgdGhhdCB1cGdyYWRlcyB0byB0aGUgc3BlY2lmaWVkIHRhcmdldCB2ZXJzaW9uLiAqL1xuICBkYXRhOiBNZXRob2RDYWxsVXBncmFkZURhdGFbXSA9IGdldFZlcnNpb25VcGdyYWRlRGF0YSh0aGlzLCAnbWV0aG9kQ2FsbENoZWNrcycpO1xuXG4gIC8vIE9ubHkgZW5hYmxlIHRoZSBtaWdyYXRpb24gcnVsZSBpZiB0aGVyZSBpcyB1cGdyYWRlIGRhdGEuXG4gIGVuYWJsZWQgPSB0aGlzLmRhdGEubGVuZ3RoICE9PSAwO1xuXG4gIHZpc2l0Tm9kZShub2RlOiB0cy5Ob2RlKTogdm9pZCB7XG4gICAgaWYgKHRzLmlzQ2FsbEV4cHJlc3Npb24obm9kZSkgJiYgdHMuaXNQcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24obm9kZS5leHByZXNzaW9uKSkge1xuICAgICAgdGhpcy5fY2hlY2tQcm9wZXJ0eUFjY2Vzc01ldGhvZENhbGwobm9kZSk7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBfY2hlY2tQcm9wZXJ0eUFjY2Vzc01ldGhvZENhbGwobm9kZTogdHMuQ2FsbEV4cHJlc3Npb24pIHtcbiAgICBjb25zdCBwcm9wZXJ0eUFjY2VzcyA9IG5vZGUuZXhwcmVzc2lvbiBhcyB0cy5Qcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb247XG5cbiAgICBpZiAoIXRzLmlzSWRlbnRpZmllcihwcm9wZXJ0eUFjY2Vzcy5uYW1lKSkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIGNvbnN0IGhvc3RUeXBlID0gdGhpcy50eXBlQ2hlY2tlci5nZXRUeXBlQXRMb2NhdGlvbihwcm9wZXJ0eUFjY2Vzcy5leHByZXNzaW9uKTtcbiAgICBjb25zdCBob3N0VHlwZU5hbWUgPSBob3N0VHlwZS5zeW1ib2wgJiYgaG9zdFR5cGUuc3ltYm9sLm5hbWU7XG4gICAgY29uc3QgbWV0aG9kTmFtZSA9IHByb3BlcnR5QWNjZXNzLm5hbWUudGV4dDtcblxuICAgIGlmICghaG9zdFR5cGVOYW1lKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgLy8gVE9ETyhkZXZ2ZXJzaW9uKTogUmV2aXNpdCB0aGUgaW1wbGVtZW50YXRpb24gb2YgdGhpcyB1cGdyYWRlIHJ1bGUuIEl0IHNlZW1zIGRpZmZpY3VsdFxuICAgIC8vIGFuZCBhbWJpZ3VvdXMgdG8gbWFpbnRhaW4gdGhlIGRhdGEgZm9yIHRoaXMgcnVsZS4gZS5nLiBjb25zaWRlciBhIG1ldGhvZCB3aGljaCBoYXMgdGhlXG4gICAgLy8gc2FtZSBhbW91bnQgb2YgYXJndW1lbnRzIGJ1dCBqdXN0IGhhZCBhIHR5cGUgY2hhbmdlLiBJbiB0aGF0IGNhc2Ugd2UgY291bGQgc3RpbGwgYWRkXG4gICAgLy8gbmV3IGVudHJpZXMgdG8gdGhlIHVwZ3JhZGUgZGF0YSB0aGF0IG1hdGNoIHRoZSBjdXJyZW50IGFyZ3VtZW50IGxlbmd0aCB0byBqdXN0IHNob3dcbiAgICAvLyBhIGZhaWx1cmUgbWVzc2FnZSwgYnV0IGFkZGluZyB0aGF0IGRhdGEgYmVjb21lcyBwYWluZnVsIGlmIHRoZSBtZXRob2QgaGFzIG9wdGlvbmFsXG4gICAgLy8gcGFyYW1ldGVycyBhbmQgaXQgd291bGQgbWVhbiB0aGF0IHRoZSBlcnJvciBtZXNzYWdlIHdvdWxkIGFsd2F5cyBzaG93IHVwLCBldmVuIGlmIHRoZVxuICAgIC8vIGFyZ3VtZW50IGlzIGluIHNvbWUgY2FzZXMgc3RpbGwgYXNzaWduYWJsZSB0byB0aGUgbmV3IHBhcmFtZXRlciB0eXBlLiBXZSBjb3VsZCByZS11c2VcbiAgICAvLyB0aGUgbG9naWMgd2UgaGF2ZSBpbiB0aGUgY29uc3RydWN0b3Itc2lnbmF0dXJlIGNoZWNrcyB0byBjaGVjayBmb3IgYXNzaWduYWJpbGl0eSBhbmRcbiAgICAvLyB0byBtYWtlIHRoZSB1cGdyYWRlIGRhdGEgbGVzcyB2ZXJib3NlLlxuICAgIGNvbnN0IGZhaWx1cmUgPVxuICAgICAgICB0aGlzLmRhdGEuZmlsdGVyKGRhdGEgPT4gZGF0YS5tZXRob2QgPT09IG1ldGhvZE5hbWUgJiYgZGF0YS5jbGFzc05hbWUgPT09IGhvc3RUeXBlTmFtZSlcbiAgICAgICAgICAgIC5tYXAoZGF0YSA9PiBkYXRhLmludmFsaWRBcmdDb3VudHMuZmluZChmID0+IGYuY291bnQgPT09IG5vZGUuYXJndW1lbnRzLmxlbmd0aCkpWzBdO1xuXG4gICAgaWYgKCFmYWlsdXJlKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgdGhpcy5jcmVhdGVGYWlsdXJlQXROb2RlKFxuICAgICAgICBub2RlLFxuICAgICAgICBgRm91bmQgY2FsbCB0byBcIiR7aG9zdFR5cGVOYW1lICsgJy4nICsgbWV0aG9kTmFtZX1cIiBgICtcbiAgICAgICAgICAgIGB3aXRoICR7ZmFpbHVyZS5jb3VudH0gYXJndW1lbnRzLiBNZXNzYWdlOiAke2ZhaWx1cmUubWVzc2FnZX1gKTtcbiAgfVxufVxuIl19