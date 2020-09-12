/**
 * @license
 * Copyright Google LLC All Rights Reserved.
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
        define("@angular/compiler-cli/src/ngtsc/scope/src/dependency", ["require", "exports", "tslib"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.MetadataDtsModuleScopeResolver = void 0;
    var tslib_1 = require("tslib");
    /**
     * Reads Angular metadata from classes declared in .d.ts files and computes an `ExportScope`.
     *
     * Given an NgModule declared in a .d.ts file, this resolver can produce a transitive `ExportScope`
     * of all of the directives/pipes it exports. It does this by reading metadata off of Ivy static
     * fields on directives, components, pipes, and NgModules.
     */
    var MetadataDtsModuleScopeResolver = /** @class */ (function () {
        /**
         * @param dtsMetaReader a `MetadataReader` which can read metadata from `.d.ts` files.
         */
        function MetadataDtsModuleScopeResolver(dtsMetaReader, aliasingHost) {
            this.dtsMetaReader = dtsMetaReader;
            this.aliasingHost = aliasingHost;
            /**
             * Cache which holds fully resolved scopes for NgModule classes from .d.ts files.
             */
            this.cache = new Map();
        }
        /**
         * Resolve a `Reference`'d NgModule from a .d.ts file and produce a transitive `ExportScope`
         * listing the directives and pipes which that NgModule exports to others.
         *
         * This operation relies on a `Reference` instead of a direct TypeScrpt node as the `Reference`s
         * produced depend on how the original NgModule was imported.
         */
        MetadataDtsModuleScopeResolver.prototype.resolve = function (ref) {
            var e_1, _a, e_2, _b, e_3, _c, e_4, _d, e_5, _e;
            var clazz = ref.node;
            var sourceFile = clazz.getSourceFile();
            if (!sourceFile.isDeclarationFile) {
                throw new Error("Debug error: DtsModuleScopeResolver.read(" + ref.debugName + " from " + sourceFile.fileName + "), but not a .d.ts file");
            }
            if (this.cache.has(clazz)) {
                return this.cache.get(clazz);
            }
            // Build up the export scope - those directives and pipes made visible by this module.
            var directives = [];
            var pipes = [];
            var ngModules = new Set([clazz]);
            var meta = this.dtsMetaReader.getNgModuleMetadata(ref);
            if (meta === null) {
                this.cache.set(clazz, null);
                return null;
            }
            var declarations = new Set();
            try {
                for (var _f = tslib_1.__values(meta.declarations), _g = _f.next(); !_g.done; _g = _f.next()) {
                    var declRef = _g.value;
                    declarations.add(declRef.node);
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_g && !_g.done && (_a = _f.return)) _a.call(_f);
                }
                finally { if (e_1) throw e_1.error; }
            }
            try {
                // Only the 'exports' field of the NgModule's metadata is important. Imports and declarations
                // don't affect the export scope.
                for (var _h = tslib_1.__values(meta.exports), _j = _h.next(); !_j.done; _j = _h.next()) {
                    var exportRef = _j.value;
                    // Attempt to process the export as a directive.
                    var directive = this.dtsMetaReader.getDirectiveMetadata(exportRef);
                    if (directive !== null) {
                        var isReExport = !declarations.has(exportRef.node);
                        directives.push(this.maybeAlias(directive, sourceFile, isReExport));
                        continue;
                    }
                    // Attempt to process the export as a pipe.
                    var pipe = this.dtsMetaReader.getPipeMetadata(exportRef);
                    if (pipe !== null) {
                        var isReExport = !declarations.has(exportRef.node);
                        pipes.push(this.maybeAlias(pipe, sourceFile, isReExport));
                        continue;
                    }
                    // Attempt to process the export as a module.
                    var exportScope_1 = this.resolve(exportRef);
                    if (exportScope_1 !== null) {
                        // It is a module. Add exported directives and pipes to the current scope. This might
                        // involve rewriting the `Reference`s to those types to have an alias expression if one is
                        // required.
                        if (this.aliasingHost === null) {
                            // Fast path when aliases aren't required.
                            directives.push.apply(directives, tslib_1.__spread(exportScope_1.exported.directives));
                            pipes.push.apply(pipes, tslib_1.__spread(exportScope_1.exported.pipes));
                        }
                        else {
                            try {
                                // It's necessary to rewrite the `Reference`s to add alias expressions. This way, imports
                                // generated to these directives and pipes will use a shallow import to `sourceFile`
                                // instead of a deep import directly to the directive or pipe class.
                                //
                                // One important check here is whether the directive/pipe is declared in the same
                                // source file as the re-exporting NgModule. This can happen if both a directive, its
                                // NgModule, and the re-exporting NgModule are all in the same file. In this case,
                                // no import alias is needed as it would go to the same file anyway.
                                for (var _k = (e_3 = void 0, tslib_1.__values(exportScope_1.exported.directives)), _l = _k.next(); !_l.done; _l = _k.next()) {
                                    var directive_1 = _l.value;
                                    directives.push(this.maybeAlias(directive_1, sourceFile, /* isReExport */ true));
                                }
                            }
                            catch (e_3_1) { e_3 = { error: e_3_1 }; }
                            finally {
                                try {
                                    if (_l && !_l.done && (_c = _k.return)) _c.call(_k);
                                }
                                finally { if (e_3) throw e_3.error; }
                            }
                            try {
                                for (var _m = (e_4 = void 0, tslib_1.__values(exportScope_1.exported.pipes)), _o = _m.next(); !_o.done; _o = _m.next()) {
                                    var pipe_1 = _o.value;
                                    pipes.push(this.maybeAlias(pipe_1, sourceFile, /* isReExport */ true));
                                }
                            }
                            catch (e_4_1) { e_4 = { error: e_4_1 }; }
                            finally {
                                try {
                                    if (_o && !_o.done && (_d = _m.return)) _d.call(_m);
                                }
                                finally { if (e_4) throw e_4.error; }
                            }
                            try {
                                for (var _p = (e_5 = void 0, tslib_1.__values(exportScope_1.exported.ngModules)), _q = _p.next(); !_q.done; _q = _p.next()) {
                                    var ngModule = _q.value;
                                    ngModules.add(ngModule);
                                }
                            }
                            catch (e_5_1) { e_5 = { error: e_5_1 }; }
                            finally {
                                try {
                                    if (_q && !_q.done && (_e = _p.return)) _e.call(_p);
                                }
                                finally { if (e_5) throw e_5.error; }
                            }
                        }
                    }
                    continue;
                    // The export was not a directive, a pipe, or a module. This is an error.
                    // TODO(alxhub): produce a ts.Diagnostic
                    throw new Error("Exported value " + exportRef.debugName + " was not a directive, pipe, or module");
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (_j && !_j.done && (_b = _h.return)) _b.call(_h);
                }
                finally { if (e_2) throw e_2.error; }
            }
            var exportScope = {
                exported: {
                    directives: directives,
                    pipes: pipes,
                    ngModules: Array.from(ngModules),
                },
            };
            this.cache.set(clazz, exportScope);
            return exportScope;
        };
        MetadataDtsModuleScopeResolver.prototype.maybeAlias = function (dirOrPipe, maybeAliasFrom, isReExport) {
            var ref = dirOrPipe.ref;
            if (this.aliasingHost === null || ref.node.getSourceFile() === maybeAliasFrom) {
                return dirOrPipe;
            }
            var alias = this.aliasingHost.getAliasIn(ref.node, maybeAliasFrom, isReExport);
            if (alias === null) {
                return dirOrPipe;
            }
            return tslib_1.__assign(tslib_1.__assign({}, dirOrPipe), { ref: ref.cloneWithAlias(alias) });
        };
        return MetadataDtsModuleScopeResolver;
    }());
    exports.MetadataDtsModuleScopeResolver = MetadataDtsModuleScopeResolver;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGVwZW5kZW5jeS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2Mvc2NvcGUvc3JjL2RlcGVuZGVuY3kudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQWNIOzs7Ozs7T0FNRztJQUNIO1FBTUU7O1dBRUc7UUFDSCx3Q0FBb0IsYUFBNkIsRUFBVSxZQUErQjtZQUF0RSxrQkFBYSxHQUFiLGFBQWEsQ0FBZ0I7WUFBVSxpQkFBWSxHQUFaLFlBQVksQ0FBbUI7WUFSMUY7O2VBRUc7WUFDSyxVQUFLLEdBQUcsSUFBSSxHQUFHLEVBQXNDLENBQUM7UUFLK0IsQ0FBQztRQUU5Rjs7Ozs7O1dBTUc7UUFDSCxnREFBTyxHQUFQLFVBQVEsR0FBZ0M7O1lBQ3RDLElBQU0sS0FBSyxHQUFHLEdBQUcsQ0FBQyxJQUFJLENBQUM7WUFDdkIsSUFBTSxVQUFVLEdBQUcsS0FBSyxDQUFDLGFBQWEsRUFBRSxDQUFDO1lBQ3pDLElBQUksQ0FBQyxVQUFVLENBQUMsaUJBQWlCLEVBQUU7Z0JBQ2pDLE1BQU0sSUFBSSxLQUFLLENBQUMsOENBQTRDLEdBQUcsQ0FBQyxTQUFTLGNBQ3JFLFVBQVUsQ0FBQyxRQUFRLDRCQUF5QixDQUFDLENBQUM7YUFDbkQ7WUFFRCxJQUFJLElBQUksQ0FBQyxLQUFLLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBQyxFQUFFO2dCQUN6QixPQUFPLElBQUksQ0FBQyxLQUFLLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBRSxDQUFDO2FBQy9CO1lBRUQsc0ZBQXNGO1lBQ3RGLElBQU0sVUFBVSxHQUFvQixFQUFFLENBQUM7WUFDdkMsSUFBTSxLQUFLLEdBQWUsRUFBRSxDQUFDO1lBQzdCLElBQU0sU0FBUyxHQUFHLElBQUksR0FBRyxDQUFtQixDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUM7WUFFckQsSUFB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QUFVLENBQUMsR0FBRyxDQUFDLElBQUksRUFBRSxjQUFjLEVBQUUsVUFBVSxDQUFDLENBQUM7WUFDakYsSUFBSSxLQUFLLEtBQUssSUFBSSxFQUFFO2dCQUNsQixPQUFPLFNBQVMsQ0FBQzthQUNsQjtZQUVELDZDQUNLLFNBQVMsS0FDWixHQUFHLEVBQUUsR0FBRyxDQUFDLGNBQWMsQ0FBQyxLQUFLLENBQUMsSUFDOUI7UUFDSixDQUFDO1FBQ0gscUNBQUM7SUFBRCxDQUFDLEFBbElELElBa0lDO0lBbElZLHdFQUE4QiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtBbGlhc2luZ0hvc3QsIFJlZmVyZW5jZX0gZnJvbSAnLi4vLi4vaW1wb3J0cyc7XG5pbXBvcnQge0RpcmVjdGl2ZU1ldGEsIE1ldGFkYXRhUmVhZGVyLCBQaXBlTWV0YX0gZnJvbSAnLi4vLi4vbWV0YWRhdGEnO1xuaW1wb3J0IHtDbGFzc0RlY2xhcmF0aW9ufSBmcm9tICcuLi8uLi9yZWZsZWN0aW9uJztcblxuaW1wb3J0IHtFeHBvcnRTY29wZX0gZnJvbSAnLi9hcGknO1xuXG5leHBvcnQgaW50ZXJmYWNlIER0c01vZHVsZVNjb3BlUmVzb2x2ZXIge1xuICByZXNvbHZlKHJlZjogUmVmZXJlbmNlPENsYXNzRGVjbGFyYXRpb24+KTogRXhwb3J0U2NvcGV8bnVsbDtcbn1cblxuLyoqXG4gKiBSZWFkcyBBbmd1bGFyIG1ldGFkYXRhIGZyb20gY2xhc3NlcyBkZWNsYXJlZCBpbiAuZC50cyBmaWxlcyBhbmQgY29tcHV0ZXMgYW4gYEV4cG9ydFNjb3BlYC5cbiAqXG4gKiBHaXZlbiBhbiBOZ01vZHVsZSBkZWNsYXJlZCBpbiBhIC5kLnRzIGZpbGUsIHRoaXMgcmVzb2x2ZXIgY2FuIHByb2R1Y2UgYSB0cmFuc2l0aXZlIGBFeHBvcnRTY29wZWBcbiAqIG9mIGFsbCBvZiB0aGUgZGlyZWN0aXZlcy9waXBlcyBpdCBleHBvcnRzLiBJdCBkb2VzIHRoaXMgYnkgcmVhZGluZyBtZXRhZGF0YSBvZmYgb2YgSXZ5IHN0YXRpY1xuICogZmllbGRzIG9uIGRpcmVjdGl2ZXMsIGNvbXBvbmVudHMsIHBpcGVzLCBhbmQgTmdNb2R1bGVzLlxuICovXG5leHBvcnQgY2xhc3MgTWV0YWRhdGFEdHNNb2R1bGVTY29wZVJlc29sdmVyIGltcGxlbWVudHMgRHRzTW9kdWxlU2NvcGVSZXNvbHZlciB7XG4gIC8qKlxuICAgKiBDYWNoZSB3aGljaCBob2xkcyBmdWxseSByZXNvbHZlZCBzY29wZXMgZm9yIE5nTW9kdWxlIGNsYXNzZXMgZnJvbSAuZC50cyBmaWxlcy5cbiAgICovXG4gIHByaXZhdGUgY2FjaGUgPSBuZXcgTWFwPENsYXNzRGVjbGFyYXRpb24sIEV4cG9ydFNjb3BlfG51bGw+KCk7XG5cbiAgLyoqXG4gICAqIEBwYXJhbSBkdHNNZXRhUmVhZGVyIGEgYE1ldGFkYXRhUmVhZGVyYCB3aGljaCBjYW4gcmVhZCBtZXRhZGF0YSBmcm9tIGAuZC50c2AgZmlsZXMuXG4gICAqL1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGR0c01ldGFSZWFkZXI6IE1ldGFkYXRhUmVhZGVyLCBwcml2YXRlIGFsaWFzaW5nSG9zdDogQWxpYXNpbmdIb3N0fG51bGwpIHt9XG5cbiAgLyoqXG4gICAqIFJlc29sdmUgYSBgUmVmZXJlbmNlYCdkIE5nTW9kdWxlIGZyb20gYSAuZC50cyBmaWxlIGFuZCBwcm9kdWNlIGEgdHJhbnNpdGl2ZSBgRXhwb3J0U2NvcGVgXG4gICAqIGxpc3RpbmcgdGhlIGRpcmVjdGl2ZXMgYW5kIHBpcGVzIHdoaWNoIHRoYXQgTmdNb2R1bGUgZXhwb3J0cyB0byBvdGhlcnMuXG4gICAqXG4gICAqIFRoaXMgb3BlcmF0aW9uIHJlbGllcyBvbiBhIGBSZWZlcmVuY2VgIGluc3RlYWQgb2YgYSBkaXJlY3QgVHlwZVNjcnB0IG5vZGUgYXMgdGhlIGBSZWZlcmVuY2Vgc1xuICAgKiBwcm9kdWNlZCBkZXBlbmQgb24gaG93IHRoZSBvcmlnaW5hbCBOZ01vZHVsZSB3YXMgaW1wb3J0ZWQuXG4gICAqL1xuICByZXNvbHZlKHJlZjogUmVmZXJlbmNlPENsYXNzRGVjbGFyYXRpb24+KTogRXhwb3J0U2NvcGV8bnVsbCB7XG4gICAgY29uc3QgY2xhenogPSByZWYubm9kZTtcbiAgICBjb25zdCBzb3VyY2VGaWxlID0gY2xhenouZ2V0U291cmNlRmlsZSgpO1xuICAgIGlmICghc291cmNlRmlsZS5pc0RlY2xhcmF0aW9uRmlsZSkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGBEZWJ1ZyBlcnJvcjogRHRzTW9kdWxlU2NvcGVSZXNvbHZlci5yZWFkKCR7cmVmLmRlYnVnTmFtZX0gZnJvbSAke1xuICAgICAgICAgIHNvdXJjZUZpbGUuZmlsZU5hbWV9KSwgYnV0IG5vdCBhIC5kLnRzIGZpbGVgKTtcbiAgICB9XG5cbiAgICBpZiAodGhpcy5jYWNoZS5oYXMoY2xhenopKSB7XG4gICAgICByZXR1cm4gdGhpcy5jYWNoZS5nZXQoY2xhenopITtcbiAgICB9XG5cbiAgICAvLyBCdWlsZCB1cCB0aGUgZXhwb3J0IHNjb3BlIC0gdGhvc2UgZGlyZWN0aXZlcyBhbmQgcGlwZXMgbWFkZSB2aXNpYmxlIGJ5IHRoaXMgbW9kdWxlLlxuICAgIGNvbnN0IGRpcmVjdGl2ZXM6IERpcmVjdGl2ZU1ldGFbXSA9IFtdO1xuICAgIGNvbnN0IHBpcGVzOiBQaXBlTWV0YVtdID0gW107XG4gICAgY29uc3QgbmdNb2R1bGVzID0gbmV3IFNldDxDbGFzc0RlY2xhcmF0aW9uPihbY2xhenpdKTtcblxuICAgIGNvbnN0IG1ldGEgPSB0aGlzLmR0c01ldGFSZWFkZXIuZ2V0TmdNb2R1bGVNZXRhZGF0YShyZWYpO1xuICAgIGlmIChtZXRhID09PSBudWxsKSB7XG4gICAgICB0aGlzLmNhY2hlLnNldChjbGF6eiwgbnVsbCk7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICBjb25zdCBkZWNsYXJhdGlvbnMgPSBuZXcgU2V0PENsYXNzRGVjbGFyYXRpb24+KCk7XG4gICAgZm9yIChjb25zdCBkZWNsUmVmIG9mIG1ldGEuZGVjbGFyYXRpb25zKSB7XG4gICAgICBkZWNsYXJhdGlvbnMuYWRkKGRlY2xSZWYubm9kZSk7XG4gICAgfVxuXG4gICAgLy8gT25seSB0aGUgJ2V4cG9ydHMnIGZpZWxkIG9mIHRoZSBOZ01vZHVsZSdzIG1ldGFkYXRhIGlzIGltcG9ydGFudC4gSW1wb3J0cyBhbmQgZGVjbGFyYXRpb25zXG4gICAgLy8gZG9uJ3QgYWZmZWN0IHRoZSBleHBvcnQgc2NvcGUuXG4gICAgZm9yIChjb25zdCBleHBvcnRSZWYgb2YgbWV0YS5leHBvcnRzKSB7XG4gICAgICAvLyBBdHRlbXB0IHRvIHByb2Nlc3MgdGhlIGV4cG9ydCBhcyBhIGRpcmVjdGl2ZS5cbiAgICAgIGNvbnN0IGRpcmVjdGl2ZSA9IHRoaXMuZHRzTWV0YVJlYWRlci5nZXREaXJlY3RpdmVNZXRhZGF0YShleHBvcnRSZWYpO1xuICAgICAgaWYgKGRpcmVjdGl2ZSAhPT0gbnVsbCkge1xuICAgICAgICBjb25zdCBpc1JlRXhwb3J0ID0gIWRlY2xhcmF0aW9ucy5oYXMoZXhwb3J0UmVmLm5vZGUpO1xuICAgICAgICBkaXJlY3RpdmVzLnB1c2godGhpcy5tYXliZUFsaWFzKGRpcmVjdGl2ZSwgc291cmNlRmlsZSwgaXNSZUV4cG9ydCkpO1xuICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cblxuICAgICAgLy8gQXR0ZW1wdCB0byBwcm9jZXNzIHRoZSBleHBvcnQgYXMgYSBwaXBlLlxuICAgICAgY29uc3QgcGlwZSA9IHRoaXMuZHRzTWV0YVJlYWRlci5nZXRQaXBlTWV0YWRhdGEoZXhwb3J0UmVmKTtcbiAgICAgIGlmIChwaXBlICE9PSBudWxsKSB7XG4gICAgICAgIGNvbnN0IGlzUmVFeHBvcnQgPSAhZGVjbGFyYXRpb25zLmhhcyhleHBvcnRSZWYubm9kZSk7XG4gICAgICAgIHBpcGVzLnB1c2godGhpcy5tYXliZUFsaWFzKHBpcGUsIHNvdXJjZUZpbGUsIGlzUmVFeHBvcnQpKTtcbiAgICAgICAgY29udGludWU7XG4gICAgICB9XG5cbiAgICAgIC8vIEF0dGVtcHQgdG8gcHJvY2VzcyB0aGUgZXhwb3J0IGFzIGEgbW9kdWxlLlxuICAgICAgY29uc3QgZXhwb3J0U2NvcGUgPSB0aGlzLnJlc29sdmUoZXhwb3J0UmVmKTtcbiAgICAgIGlmIChleHBvcnRTY29wZSAhPT0gbnVsbCkge1xuICAgICAgICAvLyBJdCBpcyBhIG1vZHVsZS4gQWRkIGV4cG9ydGVkIGRpcmVjdGl2ZXMgYW5kIHBpcGVzIHRvIHRoZSBjdXJyZW50IHNjb3BlLiBUaGlzIG1pZ2h0XG4gICAgICAgIC8vIGludm9sdmUgcmV3cml0aW5nIHRoZSBgUmVmZXJlbmNlYHMgdG8gdGhvc2UgdHlwZXMgdG8gaGF2ZSBhbiBhbGlhcyBleHByZXNzaW9uIGlmIG9uZSBpc1xuICAgICAgICAvLyByZXF1aXJlZC5cbiAgICAgICAgaWYgKHRoaXMuYWxpYXNpbmdIb3N0ID09PSBudWxsKSB7XG4gICAgICAgICAgLy8gRmFzdCBwYXRoIHdoZW4gYWxpYXNlcyBhcmVuJ3QgcmVxdWlyZWQuXG4gICAgICAgICAgZGlyZWN0aXZlcy5wdXNoKC4uLmV4cG9ydFNjb3BlLmV4cG9ydGVkLmRpcmVjdGl2ZXMpO1xuICAgICAgICAgIHBpcGVzLnB1c2goLi4uZXhwb3J0U2NvcGUuZXhwb3J0ZWQucGlwZXMpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIC8vIEl0J3MgbmVjZXNzYXJ5IHRvIHJld3JpdGUgdGhlIGBSZWZlcmVuY2VgcyB0byBhZGQgYWxpYXMgZXhwcmVzc2lvbnMuIFRoaXMgd2F5LCBpbXBvcnRzXG4gICAgICAgICAgLy8gZ2VuZXJhdGVkIHRvIHRoZXNlIGRpcmVjdGl2ZXMgYW5kIHBpcGVzIHdpbGwgdXNlIGEgc2hhbGxvdyBpbXBvcnQgdG8gYHNvdXJjZUZpbGVgXG4gICAgICAgICAgLy8gaW5zdGVhZCBvZiBhIGRlZXAgaW1wb3J0IGRpcmVjdGx5IHRvIHRoZSBkaXJlY3RpdmUgb3IgcGlwZSBjbGFzcy5cbiAgICAgICAgICAvL1xuICAgICAgICAgIC8vIE9uZSBpbXBvcnRhbnQgY2hlY2sgaGVyZSBpcyB3aGV0aGVyIHRoZSBkaXJlY3RpdmUvcGlwZSBpcyBkZWNsYXJlZCBpbiB0aGUgc2FtZVxuICAgICAgICAgIC8vIHNvdXJjZSBmaWxlIGFzIHRoZSByZS1leHBvcnRpbmcgTmdNb2R1bGUuIFRoaXMgY2FuIGhhcHBlbiBpZiBib3RoIGEgZGlyZWN0aXZlLCBpdHNcbiAgICAgICAgICAvLyBOZ01vZHVsZSwgYW5kIHRoZSByZS1leHBvcnRpbmcgTmdNb2R1bGUgYXJlIGFsbCBpbiB0aGUgc2FtZSBmaWxlLiBJbiB0aGlzIGNhc2UsXG4gICAgICAgICAgLy8gbm8gaW1wb3J0IGFsaWFzIGlzIG5lZWRlZCBhcyBpdCB3b3VsZCBnbyB0byB0aGUgc2FtZSBmaWxlIGFueXdheS5cbiAgICAgICAgICBmb3IgKGNvbnN0IGRpcmVjdGl2ZSBvZiBleHBvcnRTY29wZS5leHBvcnRlZC5kaXJlY3RpdmVzKSB7XG4gICAgICAgICAgICBkaXJlY3RpdmVzLnB1c2godGhpcy5tYXliZUFsaWFzKGRpcmVjdGl2ZSwgc291cmNlRmlsZSwgLyogaXNSZUV4cG9ydCAqLyB0cnVlKSk7XG4gICAgICAgICAgfVxuICAgICAgICAgIGZvciAoY29uc3QgcGlwZSBvZiBleHBvcnRTY29wZS5leHBvcnRlZC5waXBlcykge1xuICAgICAgICAgICAgcGlwZXMucHVzaCh0aGlzLm1heWJlQWxpYXMocGlwZSwgc291cmNlRmlsZSwgLyogaXNSZUV4cG9ydCAqLyB0cnVlKSk7XG4gICAgICAgICAgfVxuICAgICAgICAgIGZvciAoY29uc3QgbmdNb2R1bGUgb2YgZXhwb3J0U2NvcGUuZXhwb3J0ZWQubmdNb2R1bGVzKSB7XG4gICAgICAgICAgICBuZ01vZHVsZXMuYWRkKG5nTW9kdWxlKTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIGNvbnRpbnVlO1xuXG4gICAgICAvLyBUaGUgZXhwb3J0IHdhcyBub3QgYSBkaXJlY3RpdmUsIGEgcGlwZSwgb3IgYSBtb2R1bGUuIFRoaXMgaXMgYW4gZXJyb3IuXG4gICAgICAvLyBUT0RPKGFseGh1Yik6IHByb2R1Y2UgYSB0cy5EaWFnbm9zdGljXG4gICAgICB0aHJvdyBuZXcgRXJyb3IoYEV4cG9ydGVkIHZhbHVlICR7ZXhwb3J0UmVmLmRlYnVnTmFtZX0gd2FzIG5vdCBhIGRpcmVjdGl2ZSwgcGlwZSwgb3IgbW9kdWxlYCk7XG4gICAgfVxuXG4gICAgY29uc3QgZXhwb3J0U2NvcGU6IEV4cG9ydFNjb3BlID0ge1xuICAgICAgZXhwb3J0ZWQ6IHtcbiAgICAgICAgZGlyZWN0aXZlcyxcbiAgICAgICAgcGlwZXMsXG4gICAgICAgIG5nTW9kdWxlczogQXJyYXkuZnJvbShuZ01vZHVsZXMpLFxuICAgICAgfSxcbiAgICB9O1xuICAgIHRoaXMuY2FjaGUuc2V0KGNsYXp6LCBleHBvcnRTY29wZSk7XG4gICAgcmV0dXJuIGV4cG9ydFNjb3BlO1xuICB9XG5cbiAgcHJpdmF0ZSBtYXliZUFsaWFzPFQgZXh0ZW5kcyBEaXJlY3RpdmVNZXRhfFBpcGVNZXRhPihcbiAgICAgIGRpck9yUGlwZTogVCwgbWF5YmVBbGlhc0Zyb206IHRzLlNvdXJjZUZpbGUsIGlzUmVFeHBvcnQ6IGJvb2xlYW4pOiBUIHtcbiAgICBjb25zdCByZWYgPSBkaXJPclBpcGUucmVmO1xuICAgIGlmICh0aGlzLmFsaWFzaW5nSG9zdCA9PT0gbnVsbCB8fCByZWYubm9kZS5nZXRTb3VyY2VGaWxlKCkgPT09IG1heWJlQWxpYXNGcm9tKSB7XG4gICAgICByZXR1cm4gZGlyT3JQaXBlO1xuICAgIH1cblxuICAgIGNvbnN0IGFsaWFzID0gdGhpcy5hbGlhc2luZ0hvc3QuZ2V0QWxpYXNJbihyZWYubm9kZSwgbWF5YmVBbGlhc0Zyb20sIGlzUmVFeHBvcnQpO1xuICAgIGlmIChhbGlhcyA9PT0gbnVsbCkge1xuICAgICAgcmV0dXJuIGRpck9yUGlwZTtcbiAgICB9XG5cbiAgICByZXR1cm4ge1xuICAgICAgLi4uZGlyT3JQaXBlLFxuICAgICAgcmVmOiByZWYuY2xvbmVXaXRoQWxpYXMoYWxpYXMpLFxuICAgIH07XG4gIH1cbn1cbiJdfQ==