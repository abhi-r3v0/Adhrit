"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.ConstructorSignatureMigration = void 0;
const ts = require("typescript");
const migration_1 = require("../../update-tool/migration");
const version_changes_1 = require("../../update-tool/version-changes");
/**
 * List of diagnostic codes that refer to pre-emit diagnostics which indicate invalid
 * new expression or super call signatures. See the list of diagnostics here:
 *
 * https://github.com/Microsoft/TypeScript/blob/master/src/compiler/diagnosticMessages.json
 */
const signatureErrorDiagnostics = [
    // Type not assignable error diagnostic.
    2345,
    // Constructor argument length invalid diagnostics
    2554,
    2555,
    2556,
    2557,
];
/**
 * Migration that visits every TypeScript new expression or super call and checks if
 * the parameter type signature is invalid and needs to be updated manually.
 */
class ConstructorSignatureMigration extends migration_1.Migration {
    constructor() {
        super(...arguments);
        // Note that the data for this rule is not distinguished based on the target version because
        // we don't keep track of the new signature and don't want to update incrementally.
        // See: https://github.com/angular/components/pull/12970#issuecomment-418337566
        this.data = version_changes_1.getAllChanges(this.upgradeData.constructorChecks);
        // Only enable the migration rule if there is upgrade data.
        this.enabled = this.data.length !== 0;
    }
    visitNode(node) {
        if (ts.isSourceFile(node)) {
            this._visitSourceFile(node);
        }
    }
    /**
     * Method that will be called for each source file of the upgrade project. In order to
     * properly determine invalid constructor signatures, we take advantage of the pre-emit
     * diagnostics from TypeScript.
     *
     * By using the diagnostics, the migration can handle type assignability. Not using
     * diagnostics would mean that we need to use simple type equality checking which is
     * too strict. See related issue: https://github.com/Microsoft/TypeScript/issues/9879
     */
    _visitSourceFile(sourceFile) {
        // List of classes of which the constructor signature has changed.
        const diagnostics = ts.getPreEmitDiagnostics(this.program, sourceFile)
            .filter(diagnostic => signatureErrorDiagnostics.includes(diagnostic.code))
            .filter(diagnostic => diagnostic.start !== undefined);
        for (const diagnostic of diagnostics) {
            const node = findConstructorNode(diagnostic, sourceFile);
            if (!node) {
                continue;
            }
            const classType = this.typeChecker.getTypeAtLocation(node.expression);
            const className = classType.symbol && classType.symbol.name;
            const isNewExpression = ts.isNewExpression(node);
            // Determine the class names of the actual construct signatures because we cannot assume that
            // the diagnostic refers to a constructor of the actual expression. In case the constructor
            // is inherited, we need to detect that the owner-class of the constructor is added to the
            // constructor checks upgrade data. e.g. `class CustomCalendar extends MatCalendar {}`.
            const signatureClassNames = classType.getConstructSignatures()
                .map(signature => getClassDeclarationOfSignature(signature))
                .map(declaration => declaration && declaration.name ? declaration.name.text : null)
                .filter(Boolean);
            // Besides checking the signature class names, we need to check the actual class name because
            // there can be classes without an explicit constructor.
            if (!this.data.includes(className) &&
                !signatureClassNames.some(name => this.data.includes(name))) {
                continue;
            }
            const classSignatures = classType.getConstructSignatures().map(signature => getParameterTypesFromSignature(signature, this.typeChecker));
            const expressionName = isNewExpression ? `new ${className}` : 'super';
            const signatures = classSignatures.map(signature => signature.map(t => this.typeChecker.typeToString(t)))
                .map(signature => `${expressionName}(${signature.join(', ')})`)
                .join(' or ');
            this.createFailureAtNode(node, `Found "${className}" constructed with ` +
                `an invalid signature. Please manually update the ${expressionName} expression to ` +
                `match the new signature${classSignatures.length > 1 ? 's' : ''}: ${signatures}`);
        }
    }
}
exports.ConstructorSignatureMigration = ConstructorSignatureMigration;
/** Resolves the type for each parameter in the specified signature. */
function getParameterTypesFromSignature(signature, typeChecker) {
    return signature.getParameters().map(param => typeChecker.getTypeAtLocation(param.declarations[0]));
}
/**
 * Walks through each node of a source file in order to find a new-expression node or super-call
 * expression node that is captured by the specified diagnostic.
 */
function findConstructorNode(diagnostic, sourceFile) {
    let resolvedNode = null;
    const _visitNode = (node) => {
        // Check whether the current node contains the diagnostic. If the node contains the diagnostic,
        // walk deeper in order to find all constructor expression nodes.
        if (node.getStart() <= diagnostic.start && node.getEnd() >= diagnostic.start) {
            if (ts.isNewExpression(node) ||
                (ts.isCallExpression(node) && node.expression.kind === ts.SyntaxKind.SuperKeyword)) {
                resolvedNode = node;
            }
            ts.forEachChild(node, _visitNode);
        }
    };
    ts.forEachChild(sourceFile, _visitNode);
    return resolvedNode;
}
/** Determines the class declaration of the specified construct signature. */
function getClassDeclarationOfSignature(signature) {
    let node = signature.getDeclaration();
    // Handle signatures which don't have an actual declaration. This happens if a class
    // does not have an explicitly written constructor.
    if (!node) {
        return null;
    }
    while (!ts.isSourceFile(node = node.parent)) {
        if (ts.isClassDeclaration(node)) {
            return node;
        }
    }
    return null;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29uc3RydWN0b3Itc2lnbmF0dXJlLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9zY2hlbWF0aWNzL25nLXVwZGF0ZS9taWdyYXRpb25zL2NvbnN0cnVjdG9yLXNpZ25hdHVyZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUE7Ozs7OztHQU1HOzs7QUFFSCxpQ0FBaUM7QUFDakMsMkRBQXNEO0FBQ3RELHVFQUFnRTtBQUdoRTs7Ozs7R0FLRztBQUNILE1BQU0seUJBQXlCLEdBQUc7SUFDaEMsd0NBQXdDO0lBQ3hDLElBQUk7SUFDSixrREFBa0Q7SUFDbEQsSUFBSTtJQUNKLElBQUk7SUFDSixJQUFJO0lBQ0osSUFBSTtDQUNMLENBQUM7QUFFRjs7O0dBR0c7QUFDSCxNQUFhLDZCQUE4QixTQUFRLHFCQUFzQjtJQUF6RTs7UUFDRSw0RkFBNEY7UUFDNUYsbUZBQW1GO1FBQ25GLCtFQUErRTtRQUMvRSxTQUFJLEdBQUcsK0JBQWEsQ0FBQyxJQUFJLENBQUMsV0FBVyxDQUFDLGlCQUFpQixDQUFDLENBQUM7UUFFekQsMkRBQTJEO1FBQzNELFlBQU8sR0FBRyxJQUFJLENBQUMsSUFBSSxDQUFDLE1BQU0sS0FBSyxDQUFDLENBQUM7SUFvRW5DLENBQUM7SUFsRUMsU0FBUyxDQUFDLElBQWE7UUFDckIsSUFBSSxFQUFFLENBQUMsWUFBWSxDQUFDLElBQUksQ0FBQyxFQUFFO1lBQ3pCLElBQUksQ0FBQyxnQkFBZ0IsQ0FBQyxJQUFJLENBQUMsQ0FBQztTQUM3QjtJQUNILENBQUM7SUFFRDs7Ozs7Ozs7T0FRRztJQUNLLGdCQUFnQixDQUFDLFVBQXlCO1FBQ2hELGtFQUFrRTtRQUNsRSxNQUFNLFdBQVcsR0FDYixFQUFFLENBQUMscUJBQXFCLENBQUMsSUFBSSxDQUFDLE9BQU8sRUFBRSxVQUFVLENBQUM7YUFDN0MsTUFBTSxDQUFDLFVBQVUsQ0FBQyxFQUFFLENBQUMseUJBQXlCLENBQUMs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O1FBQzNDLElBQUksRUFBRSxDQUFDLGtCQUFrQixDQUFDLElBQUksQ0FBQyxFQUFFO1lBQy9CLE9BQU8sSUFBSSxDQUFDO1NBQ2I7S0FDRjtJQUNELE9BQU8sSUFBSSxDQUFDO0FBQ2QsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcbmltcG9ydCB7TWlncmF0aW9ufSBmcm9tICcuLi8uLi91cGRhdGUtdG9vbC9taWdyYXRpb24nO1xuaW1wb3J0IHtnZXRBbGxDaGFuZ2VzfSBmcm9tICcuLi8uLi91cGRhdGUtdG9vbC92ZXJzaW9uLWNoYW5nZXMnO1xuaW1wb3J0IHtVcGdyYWRlRGF0YX0gZnJvbSAnLi4vdXBncmFkZS1kYXRhJztcblxuLyoqXG4gKiBMaXN0IG9mIGRpYWdub3N0aWMgY29kZXMgdGhhdCByZWZlciB0byBwcmUtZW1pdCBkaWFnbm9zdGljcyB3aGljaCBpbmRpY2F0ZSBpbnZhbGlkXG4gKiBuZXcgZXhwcmVzc2lvbiBvciBzdXBlciBjYWxsIHNpZ25hdHVyZXMuIFNlZSB0aGUgbGlzdCBvZiBkaWFnbm9zdGljcyBoZXJlOlxuICpcbiAqIGh0dHBzOi8vZ2l0aHViLmNvbS9NaWNyb3NvZnQvVHlwZVNjcmlwdC9ibG9iL21hc3Rlci9zcmMvY29tcGlsZXIvZGlhZ25vc3RpY01lc3NhZ2VzLmpzb25cbiAqL1xuY29uc3Qgc2lnbmF0dXJlRXJyb3JEaWFnbm9zdGljcyA9IFtcbiAgLy8gVHlwZSBub3QgYXNzaWduYWJsZSBlcnJvciBkaWFnbm9zdGljLlxuICAyMzQ1LFxuICAvLyBDb25zdHJ1Y3RvciBhcmd1bWVudCBsZW5ndGggaW52YWxpZCBkaWFnbm9zdGljc1xuICAyNTU0LFxuICAyNTU1LFxuICAyNTU2LFxuICAyNTU3LFxuXTtcblxuLyoqXG4gKiBNaWdyYXRpb24gdGhhdCB2aXNpdHMgZXZlcnkgVHlwZVNjcmlwdCBuZXcgZXhwcmVzc2lvbiBvciBzdXBlciBjYWxsIGFuZCBjaGVja3MgaWZcbiAqIHRoZSBwYXJhbWV0ZXIgdHlwZSBzaWduYXR1cmUgaXMgaW52YWxpZCBhbmQgbmVlZHMgdG8gYmUgdXBkYXRlZCBtYW51YWxseS5cbiAqL1xuZXhwb3J0IGNsYXNzIENvbnN0cnVjdG9yU2lnbmF0dXJlTWlncmF0aW9uIGV4dGVuZHMgTWlncmF0aW9uPFVwZ3JhZGVEYXRhPiB7XG4gIC8vIE5vdGUgdGhhdCB0aGUgZGF0YSBmb3IgdGhpcyBydWxlIGlzIG5vdCBkaXN0aW5ndWlzaGVkIGJhc2VkIG9uIHRoZSB0YXJnZXQgdmVyc2lvbiBiZWNhdXNlXG4gIC8vIHdlIGRvbid0IGtlZXAgdHJhY2sgb2YgdGhlIG5ldyBzaWduYXR1cmUgYW5kIGRvbid0IHdhbnQgdG8gdXBkYXRlIGluY3JlbWVudGFsbHkuXG4gIC8vIFNlZTogaHR0cHM6Ly9naXRodWIuY29tL2FuZ3VsYXIvY29tcG9uZW50cy9wdWxsLzEyOTcwI2lzc3VlY29tbWVudC00MTgzMzc1NjZcbiAgZGF0YSA9IGdldEFsbENoYW5nZXModGhpcy51cGdyYWRlRGF0YS5jb25zdHJ1Y3RvckNoZWNrcyk7XG5cbiAgLy8gT25seSBlbmFibGUgdGhlIG1pZ3JhdGlvbiBydWxlIGlmIHRoZXJlIGlzIHVwZ3JhZGUgZGF0YS5cbiAgZW5hYmxlZCA9IHRoaXMuZGF0YS5sZW5ndGggIT09IDA7XG5cbiAgdmlzaXROb2RlKG5vZGU6IHRzLk5vZGUpOiB2b2lkIHtcbiAgICBpZiAodHMuaXNTb3VyY2VGaWxlKG5vZGUpKSB7XG4gICAgICB0aGlzLl92aXNpdFNvdXJjZUZpbGUobm9kZSk7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIE1ldGhvZCB0aGF0IHdpbGwgYmUgY2FsbGVkIGZvciBlYWNoIHNvdXJjZSBmaWxlIG9mIHRoZSB1cGdyYWRlIHByb2plY3QuIEluIG9yZGVyIHRvXG4gICAqIHByb3Blcmx5IGRldGVybWluZSBpbnZhbGlkIGNvbnN0cnVjdG9yIHNpZ25hdHVyZXMsIHdlIHRha2UgYWR2YW50YWdlIG9mIHRoZSBwcmUtZW1pdFxuICAgKiBkaWFnbm9zdGljcyBmcm9tIFR5cGVTY3JpcHQuXG4gICAqXG4gICAqIEJ5IHVzaW5nIHRoZSBkaWFnbm9zdGljcywgdGhlIG1pZ3JhdGlvbiBjYW4gaGFuZGxlIHR5cGUgYXNzaWduYWJpbGl0eS4gTm90IHVzaW5nXG4gICAqIGRpYWdub3N0aWNzIHdvdWxkIG1lYW4gdGhhdCB3ZSBuZWVkIHRvIHVzZSBzaW1wbGUgdHlwZSBlcXVhbGl0eSBjaGVja2luZyB3aGljaCBpc1xuICAgKiB0b28gc3RyaWN0LiBTZWUgcmVsYXRlZCBpc3N1ZTogaHR0cHM6Ly9naXRodWIuY29tL01pY3Jvc29mdC9UeXBlU2NyaXB0L2lzc3Vlcy85ODc5XG4gICAqL1xuICBwcml2YXRlIF92aXNpdFNvdXJjZUZpbGUoc291cmNlRmlsZTogdHMuU291cmNlRmlsZSkge1xuICAgIC8vIExpc3Qgb2YgY2xhc3NlcyBvZiB3aGljaCB0aGUgY29uc3RydWN0b3Igc2lnbmF0dXJlIGhhcyBjaGFuZ2VkLlxuICAgIGNvbnN0IGRpYWdub3N0aWNzID1cbiAgICAgICAgdHMuZ2V0UHJlRW1pdERpYWdub3N0aWNzKHRoaXMucHJvZ3JhbSwgc291cmNlRmlsZSlcbiAgICAgICAgICAgIC5maWx0ZXIoZGlhZ25vc3RpYyA9PiBzaWduYXR1cmVFcnJvckRpYWdub3N0aWNzLmluY2x1ZGVzKGRpYWdub3N0aWMuY29kZSkpXG4gICAgICAgICAgICAuZmlsdGVyKGRpYWdub3N0aWMgPT4gZGlhZ25vc3RpYy5zdGFydCAhPT0gdW5kZWZpbmVkKTtcblxuICAgIGZvciAoY29uc3QgZGlhZ25vc3RpYyBvZiBkaWFnbm9zdGljcykge1xuICAgICAgY29uc3Qgbm9kZSA9IGZpbmRDb25zdHJ1Y3Rvck5vZGUoZGlhZ25vc3RpYywgc291cmNlRmlsZSk7XG5cbiAgICAgIGlmICghbm9kZSkge1xuICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cblxuICAgICAgY29uc3QgY2xhc3NUeXBlID0gdGhpcy50eXBlQ2hlY2tlci5nZXRUeXBlQXRMb2NhdGlvbihub2RlLmV4cHJlc3Npb24pO1xuICAgICAgY29uc3QgY2xhc3NOYW1lID0gY2xhc3NUeXBlLnN5bWJvbCAmJiBjbGFzc1R5cGUuc3ltYm9sLm5hbWU7XG4gICAgICBjb25zdCBpc05ld0V4cHJlc3Npb24gPSB0cy5pc05ld0V4cHJlc3Npb24obm9kZSk7XG5cbiAgICAgIC8vIERldGVybWluZSB0aGUgY2xhc3MgbmFtZXMgb2YgdGhlIGFjdHVhbCBjb25zdHJ1Y3Qgc2lnbmF0dXJlcyBiZWNhdXNlIHdlIGNhbm5vdCBhc3N1bWUgdGhhdFxuICAgICAgLy8gdGhlIGRpYWdub3N0aWMgcmVmZXJzIHRvIGEgY29uc3RydWN0b3Igb2YgdGhlIGFjdHVhbCBleHByZXNzaW9uLiBJbiBjYXNlIHRoZSBjb25zdHJ1Y3RvclxuICAgICAgLy8gaXMgaW5oZXJpdGVkLCB3ZSBuZWVkIHRvIGRldGVjdCB0aGF0IHRoZSBvd25lci1jbGFzcyBvZiB0aGUgY29uc3RydWN0b3IgaXMgYWRkZWQgdG8gdGhlXG4gICAgICAvLyBjb25zdHJ1Y3RvciBjaGVja3MgdXBncmFkZSBkYXRhLiBlLmcuIGBjbGFzcyBDdXN0b21DYWxlbmRhciBleHRlbmRzIE1hdENhbGVuZGFyIHt9YC5cbiAgICAgIGNvbnN0IHNpZ25hdHVyZUNsYXNzTmFtZXMgPVxuICAgICAgICAgIGNsYXNzVHlwZS5nZXRDb25zdHJ1Y3RTaWduYXR1cmVzKClcbiAgICAgICAgICAgICAgLm1hcChzaWduYXR1cmUgPT4gZ2V0Q2xhc3NEZWNsYXJhdGlvbk9mU2lnbmF0dXJlKHNpZ25hdHVyZSkpXG4gICAgICAgICAgICAgIC5tYXAoZGVjbGFyYXRpb24gPT4gZGVjbGFyYXRpb24gJiYgZGVjbGFyYXRpb24ubmFtZSA/IGRlY2xhcmF0aW9uLm5hbWUudGV4dCA6IG51bGwpXG4gICAgICAgICAgICAgIC5maWx0ZXIoQm9vbGVhbik7XG5cbiAgICAgIC8vIEJlc2lkZXMgY2hlY2tpbmcgdGhlIHNpZ25hdHVyZSBjbGFzcyBuYW1lcywgd2UgbmVlZCB0byBjaGVjayB0aGUgYWN0dWFsIGNsYXNzIG5hbWUgYmVjYXVzZVxuICAgICAgLy8gdGhlcmUgY2FuIGJlIGNsYXNzZXMgd2l0aG91dCBhbiBleHBsaWNpdCBjb25zdHJ1Y3Rvci5cbiAgICAgIGlmICghdGhpcy5kYXRhLmluY2x1ZGVzKGNsYXNzTmFtZSkgJiZcbiAgICAgICAgICAhc2lnbmF0dXJlQ2xhc3NOYW1lcy5zb21lKG5hbWUgPT4gdGhpcy5kYXRhLmluY2x1ZGVzKG5hbWUhKSkpIHtcbiAgICAgICAgY29udGludWU7XG4gICAgICB9XG5cbiAgICAgIGNvbnN0IGNsYXNzU2lnbmF0dXJlcyA9IGNsYXNzVHlwZS5nZXRDb25zdHJ1Y3RTaWduYXR1cmVzKCkubWFwKFxuICAgICAgICAgIHNpZ25hdHVyZSA9PiBnZXRQYXJhbWV0ZXJUeXBlc0Zyb21TaWduYXR1cmUoc2lnbmF0dXJlLCB0aGlzLnR5cGVDaGVja2VyKSk7XG5cbiAgICAgIGNvbnN0IGV4cHJlc3Npb25OYW1lID0gaXNOZXdFeHByZXNzaW9uID8gYG5ldyAke2NsYXNzTmFtZX1gIDogJ3N1cGVyJztcbiAgICAgIGNvbnN0IHNpZ25hdHVyZXMgPVxuICAgICAgICAgIGNsYXNzU2lnbmF0dXJlcy5tYXAoc2lnbmF0dXJlID0+IHNpZ25hdHVyZS5tYXAodCA9PiB0aGlzLnR5cGVDaGVja2VyLnR5cGVUb1N0cmluZyh0KSkpXG4gICAgICAgICAgICAgIC5tYXAoc2lnbmF0dXJlID0+IGAke2V4cHJlc3Npb25OYW1lfSgke3NpZ25hdHVyZS5qb2luKCcsICcpfSlgKVxuICAgICAgICAgICAgICAuam9pbignIG9yICcpO1xuXG4gICAgICB0aGlzLmNyZWF0ZUZhaWx1cmVBdE5vZGUoXG4gICAgICAgICAgbm9kZSxcbiAgICAgICAgICBgRm91bmQgXCIke2NsYXNzTmFtZX1cIiBjb25zdHJ1Y3RlZCB3aXRoIGAgK1xuICAgICAgICAgICAgICBgYW4gaW52YWxpZCBzaWduYXR1cmUuIFBsZWFzZSBtYW51YWxseSB1cGRhdGUgdGhlICR7ZXhwcmVzc2lvbk5hbWV9IGV4cHJlc3Npb24gdG8gYCArXG4gICAgICAgICAgICAgIGBtYXRjaCB0aGUgbmV3IHNpZ25hdHVyZSR7Y2xhc3NTaWduYXR1cmVzLmxlbmd0aCA+IDEgPyAncycgOiAnJ306ICR7c2lnbmF0dXJlc31gKTtcbiAgICB9XG4gIH1cbn1cblxuXG4vKiogUmVzb2x2ZXMgdGhlIHR5cGUgZm9yIGVhY2ggcGFyYW1ldGVyIGluIHRoZSBzcGVjaWZpZWQgc2lnbmF0dXJlLiAqL1xuZnVuY3Rpb24gZ2V0UGFyYW1ldGVyVHlwZXNGcm9tU2lnbmF0dXJlKFxuICAgIHNpZ25hdHVyZTogdHMuU2lnbmF0dXJlLCB0eXBlQ2hlY2tlcjogdHMuVHlwZUNoZWNrZXIpOiB0cy5UeXBlW10ge1xuICByZXR1cm4gc2lnbmF0dXJlLmdldFBhcmFtZXRlcnMoKS5tYXAoXG4gICAgICBwYXJhbSA9PiB0eXBlQ2hlY2tlci5nZXRUeXBlQXRMb2NhdGlvbihwYXJhbS5kZWNsYXJhdGlvbnNbMF0pKTtcbn1cblxuLyoqXG4gKiBXYWxrcyB0aHJvdWdoIGVhY2ggbm9kZSBvZiBhIHNvdXJjZSBmaWxlIGluIG9yZGVyIHRvIGZpbmQgYSBuZXctZXhwcmVzc2lvbiBub2RlIG9yIHN1cGVyLWNhbGxcbiAqIGV4cHJlc3Npb24gbm9kZSB0aGF0IGlzIGNhcHR1cmVkIGJ5IHRoZSBzcGVjaWZpZWQgZGlhZ25vc3RpYy5cbiAqL1xuZnVuY3Rpb24gZmluZENvbnN0cnVjdG9yTm9kZShcbiAgICBkaWFnbm9zdGljOiB0cy5EaWFnbm9zdGljLCBzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlKTogdHMuQ2FsbEV4cHJlc3Npb258dHMuTmV3RXhwcmVzc2lvbnxudWxsIHtcbiAgbGV0IHJlc29sdmVkTm9kZTogdHMuTm9kZXxudWxsID0gbnVsbDtcblxuICBjb25zdCBfdmlzaXROb2RlID0gKG5vZGU6IHRzLk5vZGUpID0+IHtcbiAgICAvLyBDaGVjayB3aGV0aGVyIHRoZSBjdXJyZW50IG5vZGUgY29udGFpbnMgdGhlIGRpYWdub3N0aWMuIElmIHRoZSBub2RlIGNvbnRhaW5zIHRoZSBkaWFnbm9zdGljLFxuICAgIC8vIHdhbGsgZGVlcGVyIGluIG9yZGVyIHRvIGZpbmQgYWxsIGNvbnN0cnVjdG9yIGV4cHJlc3Npb24gbm9kZXMuXG4gICAgaWYgKG5vZGUuZ2V0U3RhcnQoKSA8PSBkaWFnbm9zdGljLnN0YXJ0ISAmJiBub2RlLmdldEVuZCgpID49IGRpYWdub3N0aWMuc3RhcnQhKSB7XG4gICAgICBpZiAodHMuaXNOZXdFeHByZXNzaW9uKG5vZGUpIHx8XG4gICAgICAgICAgKHRzLmlzQ2FsbEV4cHJlc3Npb24obm9kZSkgJiYgbm9kZS5leHByZXNzaW9uLmtpbmQgPT09IHRzLlN5bnRheEtpbmQuU3VwZXJLZXl3b3JkKSkge1xuICAgICAgICByZXNvbHZlZE5vZGUgPSBub2RlO1xuICAgICAgfVxuXG4gICAgICB0cy5mb3JFYWNoQ2hpbGQobm9kZSwgX3Zpc2l0Tm9kZSk7XG4gICAgfVxuICB9O1xuXG4gIHRzLmZvckVhY2hDaGlsZChzb3VyY2VGaWxlLCBfdmlzaXROb2RlKTtcblxuICByZXR1cm4gcmVzb2x2ZWROb2RlO1xufVxuXG4vKiogRGV0ZXJtaW5lcyB0aGUgY2xhc3MgZGVjbGFyYXRpb24gb2YgdGhlIHNwZWNpZmllZCBjb25zdHJ1Y3Qgc2lnbmF0dXJlLiAqL1xuZnVuY3Rpb24gZ2V0Q2xhc3NEZWNsYXJhdGlvbk9mU2lnbmF0dXJlKHNpZ25hdHVyZTogdHMuU2lnbmF0dXJlKTogdHMuQ2xhc3NEZWNsYXJhdGlvbnxudWxsIHtcbiAgbGV0IG5vZGU6IHRzLk5vZGUgPSBzaWduYXR1cmUuZ2V0RGVjbGFyYXRpb24oKTtcbiAgLy8gSGFuZGxlIHNpZ25hdHVyZXMgd2hpY2ggZG9uJ3QgaGF2ZSBhbiBhY3R1YWwgZGVjbGFyYXRpb24uIFRoaXMgaGFwcGVucyBpZiBhIGNsYXNzXG4gIC8vIGRvZXMgbm90IGhhdmUgYW4gZXhwbGljaXRseSB3cml0dGVuIGNvbnN0cnVjdG9yLlxuICBpZiAoIW5vZGUpIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuICB3aGlsZSAoIXRzLmlzU291cmNlRmlsZShub2RlID0gbm9kZS5wYXJlbnQpKSB7XG4gICAgaWYgKHRzLmlzQ2xhc3NEZWNsYXJhdGlvbihub2RlKSkge1xuICAgICAgcmV0dXJuIG5vZGU7XG4gICAgfVxuICB9XG4gIHJldHVybiBudWxsO1xufVxuIl19