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
        define("@angular/compiler-cli/src/ngtsc/entry_point/src/reference_graph", ["require", "exports", "tslib"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.ReferenceGraph = void 0;
    var tslib_1 = require("tslib");
    var ReferenceGraph = /** @class */ (function () {
        function ReferenceGraph() {
            this.references = new Map();
        }
        ReferenceGraph.prototype.add = function (from, to) {
            if (!this.references.has(from)) {
                this.references.set(from, new Set());
            }
            this.references.get(from).add(to);
        };
        ReferenceGraph.prototype.transitiveReferencesOf = function (target) {
            var set = new Set();
            this.collectTransitiveReferences(set, target);
            return set;
        };
        ReferenceGraph.prototype.pathFrom = function (source, target) {
            return this.collectPathFrom(source, target, new Set());
        };
        ReferenceGraph.prototype.collectPathFrom = function (source, target, seen) {
            var _this = this;
            if (source === target) {
                // Looking for a path from the target to itself - that path is just the target. This is the
                // "base case" of the search.
                return [target];
            }
            else if (seen.has(source)) {
                // The search has already looked through this source before.
                return null;
            }
            // Consider outgoing edges from `source`.
            seen.add(source);
            if (!this.references.has(source)) {
                // There are no outgoing edges from `source`.
                return null;
            }
            else {
                // Look through the outgoing edges of `source`.
                // TODO(alxhub): use proper iteration when the legacy build is removed. (#27762)
                var candidatePath_1 = null;
                this.references.get(source).forEach(function (edge) {
                    // Early exit if a path has already been found.
                    if (candidatePath_1 !== null) {
                        return;
                    }
                    // Look for a path from this outgoing edge to `target`.
                    var partialPath = _this.collectPathFrom(edge, target, seen);
                    if (partialPath !== null) {
                        // A path exists from `edge` to `target`. Insert `source` at the beginning.
                        candidatePath_1 = tslib_1.__spread([source], partialPath);
                    }
                });
                return candidatePath_1;
            }
        };
        ReferenceGraph.prototype.collectTransitiveReferences = function (set, decl) {
            var _this = this;
            if (this.references.has(decl)) {
                // TODO(alxhub): use proper iteration when the legacy build is removed. (#27762)
                this.references.get(decl).forEach(function (ref) {
                    if (!set.has(ref)) {
                        set.add(ref);
                        _this.collectTransitiveReferences(set, ref);
                    }
                });
            }
        };
        return ReferenceGraph;
    }());
    exports.ReferenceGraph = ReferenceGraph;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicmVmZXJlbmNlX2dyYXBoLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy9uZ3RzYy9lbnRyeV9wb2ludC9zcmMvcmVmZXJlbmNlX2dyYXBoLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFJSDtRQUFBO1lBQ1UsZUFBVSxHQUFHLElBQUksR0FBRyxFQUFhLENBQUM7UUFrRTVDLENBQUM7UUFoRUMsNEJBQUcsR0FBSCxVQUFJLElBQU8sRUFBRSxFQUFLO1lBQ2hCLElBQUksQ0FBQyxJQUFJLENBQUMsVUFBVSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsRUFBRTtnQkFDOUIsSUFBSSxDQUFDLFVBQVUsQ0FBQyxHQUFHLENBQUMsSUFBSSxFQUFFLElBQUksR0FBRyxFQUFFLENBQUMsQ0FBQzthQUN0QztZQUNELElBQUksQ0FBQyxVQUFVLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBRSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsQ0FBQztRQUNyQyxDQUFDO1FBRUQsK0NBQXNCLEdBQXRCLFVBQXVCLE1BQVM7WUFDOUIsSUFBTSxHQUFHLEdBQUcsSUFBSSxHQUFHLEVBQUssQ0FBQztZQUN6QixJQUFJLENBQUMsMkJBQTJCLENBQUMsR0FBRyxFQUFFLE1BQU0sQ0FBQyxDQUFDO1lBQzlDLE9BQU8sR0FBRyxDQUFDO1FBQ2IsQ0FBQztRQUVELGlDQUFRLEdBQVIsVUFBUyxNQUFTLEVBQUUsTUFBUztZQUMzQixPQUFPLElBQUksQ0FBQyxlQUFlLENBQUMsTUFBTSxFQUFFLE1BQU0sRUFBRSxJQUFJLEdBQUcsRUFBRSxDQUFDLENBQUM7UUFDekQsQ0FBQztRQUVPLHdDQUFlLEdBQXZCLFVBQXdCLE1BQVMsRUFBRSxNQUFTLEVBQUUsSUFBWTtZQUExRCxpQkFrQ0M7WUFqQ0MsSUFBSSxNQUFNLEtBQUssTUFBTSxFQUFFO2dCQUNyQiwyRkFBMkY7Z0JBQzNGLDZCQUE2QjtnQkFDN0IsT0FBTyxDQUFDLE1BQU0sQ0FBQyxDQUFDO2FBQ2pCO2lCQUFNLElBQUksSUFBSSxDQUFDLEdBQUcsQ0FBQyxNQUFNLENBQUMsRUFBRTtnQkFDM0IsNERBQTREO2dCQUM1RCxPQUFPLElBQUksQ0FBQzthQUNiO1lBQ0QseUNBQXlDO1lBQ3pDLElBQUksQ0FBQyxHQUFHLENBQUMsTUFBTSxDQUFDLENBQUM7WUFFakIsSUFBSSxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsR0FBRyxDQUFDLE1BQU0sQ0FBQyxFQUFFO2dCQUNoQyw2Q0FBNkM7Z0JBQzdDLE9BQU8sSUFBSSxDQUFDO2FBQ2I7aUJBQU07Z0JBQ0wsK0NBQStDO2dCQUMvQyxnRkFBZ0Y7Z0JBQ2hGLElBQUksZUFBYSxHQUFhLElBQUksQ0FBQztnQkFDbkMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxHQUFHLENBQUMsTUFBTSxDQUFFLENBQUMsT0FBTyxDQUFDLFVBQUEsSUFBSTtvQkFDdkMsK0NBQStDO29CQUMvQyxJQUFJLGVBQWEsS0FBSyxJQUFJLEVBQUU7d0JBQzFCLE9BQU87cUJBQ1I7b0JBQ0QsdURBQXVEO29CQUN2RCxJQUFNLFdBQVcsR0FBRyxLQUFJLENBQUMsZUFBZSxDQUFDLElBQUksRUFBRSxNQUFNLEVBQUUsSUFBSSxDQUFDLENBQUM7b0JBQzdELElBQUksV0FBVyxLQUFLLElBQUksRUFBRTt3QkFDeEIsMkVBQTJFO3dCQUMzRSxlQUFhLHFCQUFJLE1BQU0sR0FBSyxXQUFXLENBQUMsQ0FBQztxQkFDMUM7Z0JBQ0gsQ0FBQyxDQUFDLENBQUM7Z0JBRUgsT0FBTyxlQUFhLENBQUM7YUFDdEI7UUFDSCxDQUFDO1FBRU8sb0RBQTJCLEdBQW5DLFVBQW9DLEdBQVcsRUFBRSxJQUFPO1lBQXhELGlCQVVDO1lBVEMsSUFBSSxJQUFJLENBQUMsVUFBVSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsRUFBRTtnQkFDN0IsZ0ZBQWdGO2dCQUNoRixJQUFJLENBQUMsVUFBVSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUUsQ0FBQyxPQUFPLENBQUMsVUFBQSxHQUFHO29CQUNwQyxJQUFJLENBQUMsR0FBRyxDQUFDLEdBQUcsQ0FBQyxHQUFHLENBQUMsRUFBRTt3QkFDakIsR0FBRyxDQUFDLEdBQUcsQ0FBQyxHQUFHLENBQUMsQ0FBQzt3QkFDYixLQUFJLENBQUMsMkJBQTJCLENBQUMsR0FBRyxFQUFFLEdBQUcsQ0FBQyxDQUFDO3FCQUM1QztnQkFDSCxDQUFDLENBQUMsQ0FBQzthQUNKO1FBQ0gsQ0FBQztRQUNILHFCQUFDO0lBQUQsQ0FBQyxBQW5FRCxJQW1FQztJQW5FWSx3Q0FBYyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuZXhwb3J0IGNsYXNzIFJlZmVyZW5jZUdyYXBoPFQgPSB0cy5EZWNsYXJhdGlvbj4ge1xuICBwcml2YXRlIHJlZmVyZW5jZXMgPSBuZXcgTWFwPFQsIFNldDxUPj4oKTtcblxuICBhZGQoZnJvbTogVCwgdG86IFQpOiB2b2lkIHtcbiAgICBpZiAoIXRoaXMucmVmZXJlbmNlcy5oYXMoZnJvbSkpIHtcbiAgICAgIHRoaXMucmVmZXJlbmNlcy5zZXQoZnJvbSwgbmV3IFNldCgpKTtcbiAgICB9XG4gICAgdGhpcy5yZWZlcmVuY2VzLmdldChmcm9tKSEuYWRkKHRvKTtcbiAgfVxuXG4gIHRyYW5zaXRpdmVSZWZlcmVuY2VzT2YodGFyZ2V0OiBUKTogU2V0PFQ+IHtcbiAgICBjb25zdCBzZXQgPSBuZXcgU2V0PFQ+KCk7XG4gICAgdGhpcy5jb2xsZWN0VHJhbnNpdGl2ZVJlZmVyZW5jZXMoc2V0LCB0YXJnZXQpO1xuICAgIHJldHVybiBzZXQ7XG4gIH1cblxuICBwYXRoRnJvbShzb3VyY2U6IFQsIHRhcmdldDogVCk6IFRbXXxudWxsIHtcbiAgICByZXR1cm4gdGhpcy5jb2xsZWN0UGF0aEZyb20oc291cmNlLCB0YXJnZXQsIG5ldyBTZXQoKSk7XG4gIH1cblxuICBwcml2YXRlIGNvbGxlY3RQYXRoRnJvbShzb3VyY2U6IFQsIHRhcmdldDogVCwgc2VlbjogU2V0PFQ+KTogVFtdfG51bGwge1xuICAgIGlmIChzb3VyY2UgPT09IHRhcmdldCkge1xuICAgICAgLy8gTG9va2luZyBmb3IgYSBwYXRoIGZyb20gdGhlIHRhcmdldCB0byBpdHNlbGYgLSB0aGF0IHBhdGggaXMganVzdCB0aGUgdGFyZ2V0LiBUaGlzIGlzIHRoZVxuICAgICAgLy8gXCJiYXNlIGNhc2VcIiBvZiB0aGUgc2VhcmNoLlxuICAgICAgcmV0dXJuIFt0YXJnZXRdO1xuICAgIH0gZWxzZSBpZiAoc2Vlbi5oYXMoc291cmNlKSkge1xuICAgICAgLy8gVGhlIHNlYXJjaCBoYXMgYWxyZWFkeSBsb29rZWQgdGhyb3VnaCB0aGlzIHNvdXJjZSBiZWZvcmUuXG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gICAgLy8gQ29uc2lkZXIgb3V0Z29pbmcgZWRnZXMgZnJvbSBgc291cmNlYC5cbiAgICBzZWVuLmFkZChzb3VyY2UpO1xuXG4gICAgaWYgKCF0aGlzLnJlZmVyZW5jZXMuaGFzKHNvdXJjZSkpIHtcbiAgICAgIC8vIFRoZXJlIGFyZSBubyBvdXRnb2luZyBlZGdlcyBmcm9tIGBzb3VyY2VgLlxuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIExvb2sgdGhyb3VnaCB0aGUgb3V0Z29pbmcgZWRnZXMgb2YgYHNvdXJjZWAuXG4gICAgICAvLyBUT0RPKGFseGh1Yik6IHVzZSBwcm9wZXIgaXRlcmF0aW9uIHdoZW4gdGhlIGxlZ2FjeSBidWlsZCBpcyByZW1vdmVkLiAoIzI3NzYyKVxuICAgICAgbGV0IGNhbmRpZGF0ZVBhdGg6IFRbXXxudWxsID0gbnVsbDtcbiAgICAgIHRoaXMucmVmZXJlbmNlcy5nZXQoc291cmNlKSEuZm9yRWFjaChlZGdlID0+IHtcbiAgICAgICAgLy8gRWFybHkgZXhpdCBpZiBhIHBhdGggaGFzIGFscmVhZHkgYmVlbiBmb3VuZC5cbiAgICAgICAgaWYgKGNhbmRpZGF0ZVBhdGggIT09IG51bGwpIHtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cbiAgICAgICAgLy8gTG9vayBmb3IgYSBwYXRoIGZyb20gdGhpcyBvdXRnb2luZyBlZGdlIHRvIGB0YXJnZXRgLlxuICAgICAgICBjb25zdCBwYXJ0aWFsUGF0aCA9IHRoaXMuY29sbGVjdFBhdGhGcm9tKGVkZ2UsIHRhcmdldCwgc2Vlbik7XG4gICAgICAgIGlmIChwYXJ0aWFsUGF0aCAhPT0gbnVsbCkge1xuICAgICAgICAgIC8vIEEgcGF0aCBleGlzdHMgZnJvbSBgZWRnZWAgdG8gYHRhcmdldGAuIEluc2VydCBgc291cmNlYCBhdCB0aGUgYmVnaW5uaW5nLlxuICAgICAgICAgIGNhbmRpZGF0ZVBhdGggPSBbc291cmNlLCAuLi5wYXJ0aWFsUGF0aF07XG4gICAgICAgIH1cbiAgICAgIH0pO1xuXG4gICAgICByZXR1cm4gY2FuZGlkYXRlUGF0aDtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIGNvbGxlY3RUcmFuc2l0aXZlUmVmZXJlbmNlcyhzZXQ6IFNldDxUPiwgZGVjbDogVCk6IHZvaWQge1xuICAgIGlmICh0aGlzLnJlZmVyZW5jZXMuaGFzKGRlY2wpKSB7XG4gICAgICAvLyBUT0RPKGFseGh1Yik6IHVzZSBwcm9wZXIgaXRlcmF0aW9uIHdoZW4gdGhlIGxlZ2FjeSBidWlsZCBpcyByZW1vdmVkLiAoIzI3NzYyKVxuICAgICAgdGhpcy5yZWZlcmVuY2VzLmdldChkZWNsKSEuZm9yRWFjaChyZWYgPT4ge1xuICAgICAgICBpZiAoIXNldC5oYXMocmVmKSkge1xuICAgICAgICAgIHNldC5hZGQocmVmKTtcbiAgICAgICAgICB0aGlzLmNvbGxlY3RUcmFuc2l0aXZlUmVmZXJlbmNlcyhzZXQsIHJlZik7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgIH1cbiAgfVxufVxuIl19