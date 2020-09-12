/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/core/schematics/migrations/module-with-providers/collector", ["require", "exports", "typescript", "@angular/core/schematics/utils/ng_decorators", "@angular/core/schematics/migrations/module-with-providers/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const ts = require("typescript");
    const ng_decorators_1 = require("@angular/core/schematics/utils/ng_decorators");
    const util_1 = require("@angular/core/schematics/migrations/module-with-providers/util");
    /**
     * Visitor that walks through specified TypeScript nodes and collects all
     * found NgModule static methods without types and all ModuleWithProviders
     * usages without generic types attached.
     */
    class Collector {
        constructor(typeChecker) {
            this.typeChecker = typeChecker;
            this.resolvedModules = [];
            this.resolvedNonGenerics = [];
        }
        visitNode(node) {
            if (ts.isClassDeclaration(node)) {
                this.visitClassDeclaration(node);
            }
            else if (util_1.isModuleWithProvidersNotGeneric(this.typeChecker, node)) {
                this.resolvedNonGenerics.push(node);
            }
            ts.forEachChild(node, n => this.visitNode(n));
        }
        visitClassDeclaration(node) {
            if (!node.decorators || !node.decorators.length) {
                return;
            }
            const ngDecorators = ng_decorators_1.getAngularDecorators(this.typeChecker, node.decorators);
            const ngModuleDecorator = ngDecorators.find(({ name }) => name === 'NgModule');
            if (ngModuleDecorator) {
                this._visitNgModuleClass(node, ngModuleDecorator);
            }
        }
        _visitNgModuleClass(node, decorator) {
            const decoratorCall = decorator.node.expression;
            const metadata = decoratorCall.arguments[0];
            if (!metadata || !ts.isObjectLiteralExpression(metadata)) {
                return;
            }
            this.resolvedModules.push({
                name: node.name ? node.name.text : 'default',
                node,
                decorator,
                staticMethodsWithoutType: node.members.filter(isStaticMethodNoType),
            });
        }
    }
    exports.Collector = Collector;
    function isStaticMethodNoType(node) {
        return ts.isMethodDeclaration(node) && !!node.modifiers &&
            node.modifiers.findIndex(m => m.kind === ts.SyntaxKind.StaticKeyword) > -1 && !node.type;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29sbGVjdG9yLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zY2hlbWF0aWNzL21pZ3JhdGlvbnMvbW9kdWxlLXdpdGgtcHJvdmlkZXJzL2NvbGxlY3Rvci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7OztJQUVILGlDQUFpQztJQUVqQyxnRkFBNEU7SUFDNUUseUZBQXVEO0lBYXZEOzs7O09BSUc7SUFDSCxNQUFhLFNBQVM7UUFJcEIsWUFBbUIsV0FBMkI7WUFBM0IsZ0JBQVcsR0FBWCxXQUFXLENBQWdCO1lBSDlDLG9CQUFlLEdBQXVCLEVBQUUsQ0FBQztZQUN6Qyx3QkFBbUIsR0FBMkIsRUFBRSxDQUFDO1FBRUEsQ0FBQztRQUVsRCxTQUFTLENBQUMsSUFBYTtZQUNyQixJQUFJLEVBQUUsQ0FBQyxrQkFBa0IsQ0FBQyxJQUFJLENBQUMsRUFBRTtnQkFDL0IsSUFBSSxDQUFDLHFCQUFxQixDQUFDLElBQUksQ0FBQyxDQUFDO2FBQ2xDO2lCQUFNLElBQUksc0NBQStCLENBQUMsSUFBSSxDQUFDLFdBQVcsRUFBRSxJQUFJLENBQUMsRUFBRTtnQkFDbEUsSUFBSSxDQUFDLG1CQUFtQixDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQzthQUNyQztZQUVELEVBQUUsQ0FBQyxZQUFZLENBQUMsSUFBSSxFQUFFLENBQUMsQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQ2hELENBQUM7UUFFTyxxQkFBcUIsQ0FBQyxJQUF5QjtZQUNyRCxJQUFJLENBQUMsSUFBSSxDQUFDLFVBQVUsSUFBSSxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsTUFBTSxFQUFFO2dCQUMvQyxPQUFPO2FBQ1I7WUFFRCxNQUFNLFlBQVksR0FBRyxvQ0FBb0IsQ0FBQyxJQUFJLENBQUMsV0FBVyxFQUFFLElBQUksQ0FBQyxVQUFVLENBQUMsQ0FBQztZQUM3RSxNQUFNLGlCQUFpQixHQUFHLFlBQVksQ0FBQyxJQUFJLENBQUMsQ0FBQyxFQUFDLElBQUksRUFBQyxFQUFFLEVBQUUsQ0FBQyxJQUFJLEtBQUssVUFBVSxDQUFDLENBQUM7WUFFN0UsSUFBSSxpQkFBaUIsRUFBRTtnQkFDckIsSUFBSSxDQUFDLG1CQUFtQixDQUFDLElBQUksRUFBRSxpQkFBaUIsQ0FBQyxDQUFDO2FBQ25EO1FBQ0gsQ0FBQztRQUVPLG1CQUFtQixDQUFDLElBQXlCLEVBQUUsU0FBc0I7WUFDM0UsTUFBTSxhQUFhLEdBQUcsU0FBUyxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUM7WUFDaEQsTUFBTSxRQUFRLEdBQUcsYUFBYSxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUMsQ0FBQztZQUU1QyxJQUFJLENBQUMsUUFBUSxJQUFJLENBQUMsRUFBRSxDQUFDLHlCQUF5QixDQUFDLFFBQVEsQ0FBQyxFQUFFO2dCQUN4RCxPQUFPO2FBQ1I7WUFFRCxJQUFJLENBQUMsZUFBZSxDQUFDLElBQUksQ0FBQztnQkFDeEIsSUFBSSxFQUFFLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxTQUFTO2dCQUM1QyxJQUFJO2dCQUNKLFNBQVM7Z0JBQ1Qsd0JBQXdCLEVBQUUsSUFBSSxDQUFDLE9BQU8sQ0FBQyxNQUFNLENBQUMsb0JBQW9CLENBQUM7YUFDcEUsQ0FBQyxDQUFDO1FBQ0wsQ0FBQztLQUNGO0lBNUNELDhCQTRDQztJQUVELFNBQVMsb0JBQW9CLENBQUMsSUFBcUI7UUFDakQsT0FBTyxFQUFFLENBQUMsbUJBQW1CLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDLElBQUksQ0FBQyxTQUFTO1lBQ25ELElBQUksQ0FBQyxTQUFTLENBQUMsU0FBUyxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLElBQUksS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQztJQUMvRixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtOZ0RlY29yYXRvciwgZ2V0QW5ndWxhckRlY29yYXRvcnN9IGZyb20gJy4uLy4uL3V0aWxzL25nX2RlY29yYXRvcnMnO1xuaW1wb3J0IHtpc01vZHVsZVdpdGhQcm92aWRlcnNOb3RHZW5lcmljfSBmcm9tICcuL3V0aWwnO1xuXG5leHBvcnQgaW50ZXJmYWNlIFJlc29sdmVkTmdNb2R1bGUge1xuICBuYW1lOiBzdHJpbmc7XG4gIG5vZGU6IHRzLkNsYXNzRGVjbGFyYXRpb247XG4gIGRlY29yYXRvcjogTmdEZWNvcmF0b3I7XG4gIC8qKlxuICAgKiBMaXN0IG9mIGZvdW5kIHN0YXRpYyBtZXRob2QgZGVjbGFyYXRpb25zIG9uIHRoZSBtb2R1bGUgd2hpY2ggZG8gbm90XG4gICAqIGRlY2xhcmUgYW4gZXhwbGljaXQgcmV0dXJuIHR5cGUuXG4gICAqL1xuICBzdGF0aWNNZXRob2RzV2l0aG91dFR5cGU6IHRzLk1ldGhvZERlY2xhcmF0aW9uW107XG59XG5cbi8qKlxuICogVmlzaXRvciB0aGF0IHdhbGtzIHRocm91Z2ggc3BlY2lmaWVkIFR5cGVTY3JpcHQgbm9kZXMgYW5kIGNvbGxlY3RzIGFsbFxuICogZm91bmQgTmdNb2R1bGUgc3RhdGljIG1ldGhvZHMgd2l0aG91dCB0eXBlcyBhbmQgYWxsIE1vZHVsZVdpdGhQcm92aWRlcnNcbiAqIHVzYWdlcyB3aXRob3V0IGdlbmVyaWMgdHlwZXMgYXR0YWNoZWQuXG4gKi9cbmV4cG9ydCBjbGFzcyBDb2xsZWN0b3Ige1xuICByZXNvbHZlZE1vZHVsZXM6IFJlc29sdmVkTmdNb2R1bGVbXSA9IFtdO1xuICByZXNvbHZlZE5vbkdlbmVyaWNzOiB0cy5UeXBlUmVmZXJlbmNlTm9kZVtdID0gW107XG5cbiAgY29uc3RydWN0b3IocHVibGljIHR5cGVDaGVja2VyOiB0cy5UeXBlQ2hlY2tlcikge31cblxuICB2aXNpdE5vZGUobm9kZTogdHMuTm9kZSkge1xuICAgIGlmICh0cy5pc0NsYXNzRGVjbGFyYXRpb24obm9kZSkpIHtcbiAgICAgIHRoaXMudmlzaXRDbGFzc0RlY2xhcmF0aW9uKG5vZGUpO1xuICAgIH0gZWxzZSBpZiAoaXNNb2R1bGVXaXRoUHJvdmlkZXJzTm90R2VuZXJpYyh0aGlzLnR5cGVDaGVja2VyLCBub2RlKSkge1xuICAgICAgdGhpcy5yZXNvbHZlZE5vbkdlbmVyaWNzLnB1c2gobm9kZSk7XG4gICAgfVxuXG4gICAgdHMuZm9yRWFjaENoaWxkKG5vZGUsIG4gPT4gdGhpcy52aXNpdE5vZGUobikpO1xuICB9XG5cbiAgcHJpdmF0ZSB2aXNpdENsYXNzRGVjbGFyYXRpb24obm9kZTogdHMuQ2xhc3NEZWNsYXJhdGlvbikge1xuICAgIGlmICghbm9kZS5kZWNvcmF0b3JzIHx8ICFub2RlLmRlY29yYXRvcnMubGVuZ3RoKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3QgbmdEZWNvcmF0b3JzID0gZ2V0QW5ndWxhckRlY29yYXRvcnModGhpcy50eXBlQ2hlY2tlciwgbm9kZS5kZWNvcmF0b3JzKTtcbiAgICBjb25zdCBuZ01vZHVsZURlY29yYXRvciA9IG5nRGVjb3JhdG9ycy5maW5kKCh7bmFtZX0pID0+IG5hbWUgPT09ICdOZ01vZHVsZScpO1xuXG4gICAgaWYgKG5nTW9kdWxlRGVjb3JhdG9yKSB7XG4gICAgICB0aGlzLl92aXNpdE5nTW9kdWxlQ2xhc3Mobm9kZSwgbmdNb2R1bGVEZWNvcmF0b3IpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX3Zpc2l0TmdNb2R1bGVDbGFzcyhub2RlOiB0cy5DbGFzc0RlY2xhcmF0aW9uLCBkZWNvcmF0b3I6IE5nRGVjb3JhdG9yKSB7XG4gICAgY29uc3QgZGVjb3JhdG9yQ2FsbCA9IGRlY29yYXRvci5ub2RlLmV4cHJlc3Npb247XG4gICAgY29uc3QgbWV0YWRhdGEgPSBkZWNvcmF0b3JDYWxsLmFyZ3VtZW50c1swXTtcblxuICAgIGlmICghbWV0YWRhdGEgfHwgIXRzLmlzT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24obWV0YWRhdGEpKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgdGhpcy5yZXNvbHZlZE1vZHVsZXMucHVzaCh7XG4gICAgICBuYW1lOiBub2RlLm5hbWUgPyBub2RlLm5hbWUudGV4dCA6ICdkZWZhdWx0JyxcbiAgICAgIG5vZGUsXG4gICAgICBkZWNvcmF0b3IsXG4gICAgICBzdGF0aWNNZXRob2RzV2l0aG91dFR5cGU6IG5vZGUubWVtYmVycy5maWx0ZXIoaXNTdGF0aWNNZXRob2ROb1R5cGUpLFxuICAgIH0pO1xuICB9XG59XG5cbmZ1bmN0aW9uIGlzU3RhdGljTWV0aG9kTm9UeXBlKG5vZGU6IHRzLkNsYXNzRWxlbWVudCk6IG5vZGUgaXMgdHMuTWV0aG9kRGVjbGFyYXRpb24ge1xuICByZXR1cm4gdHMuaXNNZXRob2REZWNsYXJhdGlvbihub2RlKSAmJiAhIW5vZGUubW9kaWZpZXJzICYmXG4gICAgICBub2RlLm1vZGlmaWVycy5maW5kSW5kZXgobSA9PiBtLmtpbmQgPT09IHRzLlN5bnRheEtpbmQuU3RhdGljS2V5d29yZCkgPiAtMSAmJiAhbm9kZS50eXBlO1xufVxuIl19