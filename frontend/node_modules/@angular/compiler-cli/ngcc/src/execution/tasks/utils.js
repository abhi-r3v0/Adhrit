(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/execution/tasks/utils", ["require", "exports", "tslib", "@angular/compiler-cli/ngcc/src/execution/tasks/api"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.sortTasksByPriority = exports.getBlockedTasks = exports.getDependentsSet = exports.computeTaskDependencies = exports.stringifyTask = void 0;
    var tslib_1 = require("tslib");
    var api_1 = require("@angular/compiler-cli/ngcc/src/execution/tasks/api");
    /** Stringify a task for debugging purposes. */
    exports.stringifyTask = function (task) { return "{entryPoint: " + task.entryPoint.name + ", formatProperty: " + task.formatProperty + ", processDts: " + task.processDts + "}"; };
    /**
     * Compute a mapping of tasks to the tasks that are dependent on them (if any).
     *
     * Task A can depend upon task B, if either:
     *
     * * A and B have the same entry-point _and_ B is generating the typings for that entry-point
     *   (i.e. has `processDts: true`).
     * * A's entry-point depends on B's entry-point _and_ B is also generating typings.
     *
     * NOTE: If a task is not generating typings, then it cannot affect anything which depends on its
     *       entry-point, regardless of the dependency graph. To put this another way, only the task
     *       which produces the typings for a dependency needs to have been completed.
     *
     * As a performance optimization, we take into account the fact that `tasks` are sorted in such a
     * way that a task can only depend on earlier tasks (i.e. dependencies always come before
     * dependents in the list of tasks).
     *
     * @param tasks A (partially ordered) list of tasks.
     * @param graph The dependency graph between entry-points.
     * @return A map from each task to those tasks directly dependent upon it.
     */
    function computeTaskDependencies(tasks, graph) {
        var dependencies = new api_1.TaskDependencies();
        var candidateDependencies = new Map();
        tasks.forEach(function (task) {
            var e_1, _a;
            var entryPointPath = task.entryPoint.path;
            // Find the earlier tasks (`candidateDependencies`) that this task depends upon.
            var deps = graph.dependenciesOf(entryPointPath);
            var taskDependencies = deps.filter(function (dep) { return candidateDependencies.has(dep); })
                .map(function (dep) { return candidateDependencies.get(dep); });
            // If this task has dependencies, add it to the dependencies and dependents maps.
            if (taskDependencies.length > 0) {
                try {
                    for (var taskDependencies_1 = tslib_1.__values(taskDependencies), taskDependencies_1_1 = taskDependencies_1.next(); !taskDependencies_1_1.done; taskDependencies_1_1 = taskDependencies_1.next()) {
                        var dependency = taskDependencies_1_1.value;
                        var taskDependents = getDependentsSet(dependencies, dependency);
                        taskDependents.add(task);
                    }
                }
                catch (e_1_1) { e_1 = { error: e_1_1 }; }
                finally {
                    try {
                        if (taskDependencies_1_1 && !taskDependencies_1_1.done && (_a = taskDependencies_1.return)) _a.call(taskDependencies_1);
                    }
                    finally { if (e_1) throw e_1.error; }
                }
            }
            if (task.processDts) {
                // SANITY CHECK:
                // There should only be one task per entry-point that generates typings (and thus can be a
                // dependency of other tasks), so the following should theoretically never happen, but check
                // just in case.
                if (candidateDependencies.has(entryPointPath)) {
                    var otherTask = candidateDependencies.get(entryPointPath);
                    throw new Error('Invariant violated: Multiple tasks are assigned generating typings for ' +
                        ("'" + entryPointPath + "':\n  - " + exports.stringifyTask(otherTask) + "\n  - " + exports.stringifyTask(task)));
                }
                // This task can potentially be a dependency (i.e. it generates typings), so add it to the
                // list of candidate dependencies for subsequent tasks.
                candidateDependencies.set(entryPointPath, task);
            }
            else {
                // This task is not generating typings so we need to add it to the dependents of the task that
                // does generate typings, if that exists
                if (candidateDependencies.has(entryPointPath)) {
                    var typingsTask = candidateDependencies.get(entryPointPath);
                    var typingsTaskDependents = getDependentsSet(dependencies, typingsTask);
                    typingsTaskDependents.add(task);
                }
            }
        });
        return dependencies;
    }
    exports.computeTaskDependencies = computeTaskDependencies;
    function getDependentsSet(map, task) {
        if (!map.has(task)) {
            map.set(task, new Set());
        }
        return map.get(task);
    }
    exports.getDependentsSet = getDependentsSet;
    /**
     * Invert the given mapping of Task dependencies.
     *
     * @param dependencies The mapping of tasks to the tasks that depend upon them.
     * @returns A mapping of tasks to the tasks that they depend upon.
     */
    function getBlockedTasks(dependencies) {
        var e_2, _a, e_3, _b;
        var blockedTasks = new Map();
        try {
            for (var dependencies_1 = tslib_1.__values(dependencies), dependencies_1_1 = dependencies_1.next(); !dependencies_1_1.done; dependencies_1_1 = dependencies_1.next()) {
                var _c = tslib_1.__read(dependencies_1_1.value, 2), dependency = _c[0], dependents = _c[1];
                try {
                    for (var dependents_1 = (e_3 = void 0, tslib_1.__values(dependents)), dependents_1_1 = dependents_1.next(); !dependents_1_1.done; dependents_1_1 = dependents_1.next()) {
                        var dependent = dependents_1_1.value;
                        var dependentSet = getDependentsSet(blockedTasks, dependent);
                        dependentSet.add(dependency);
                    }
                }
                catch (e_3_1) { e_3 = { error: e_3_1 }; }
                finally {
                    try {
                        if (dependents_1_1 && !dependents_1_1.done && (_b = dependents_1.return)) _b.call(dependents_1);
                    }
                    finally { if (e_3) throw e_3.error; }
                }
            }
        }
        catch (e_2_1) { e_2 = { error: e_2_1 }; }
        finally {
            try {
                if (dependencies_1_1 && !dependencies_1_1.done && (_a = dependencies_1.return)) _a.call(dependencies_1);
            }
            finally { if (e_2) throw e_2.error; }
        }
        return blockedTasks;
    }
    exports.getBlockedTasks = getBlockedTasks;
    /**
     * Sort a list of tasks by priority.
     *
     * Priority is determined by the number of other tasks that a task is (transitively) blocking:
     * The more tasks a task is blocking the higher its priority is, because processing it will
     * potentially unblock more tasks.
     *
     * To keep the behavior predictable, if two tasks block the same number of other tasks, their
     * relative order in the original `tasks` lists is preserved.
     *
     * @param tasks A (partially ordered) list of tasks.
     * @param dependencies The mapping of tasks to the tasks that depend upon them.
     * @return The list of tasks sorted by priority.
     */
    function sortTasksByPriority(tasks, dependencies) {
        var priorityPerTask = new Map();
        var computePriority = function (task, idx) { return [dependencies.has(task) ? dependencies.get(task).size : 0, idx]; };
        tasks.forEach(function (task, i) { return priorityPerTask.set(task, computePriority(task, i)); });
        return tasks.slice().sort(function (task1, task2) {
            var _a = tslib_1.__read(priorityPerTask.get(task1), 2), p1 = _a[0], idx1 = _a[1];
            var _b = tslib_1.__read(priorityPerTask.get(task2), 2), p2 = _b[0], idx2 = _b[1];
            return (p2 - p1) || (idx1 - idx2);
        });
    }
    exports.sortTasksByPriority = sortTasksByPriority;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbHMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvZXhlY3V0aW9uL3Rhc2tzL3V0aWxzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7SUFTQSwwRUFBb0U7SUFFcEUsK0NBQStDO0lBQ2xDLFFBQUEsYUFBYSxHQUFHLFVBQUMsSUFBVSxJQUFhLE9BQUEsa0JBQ2pELElBQUksQ0FBQyxVQUFVLENBQUMsSUFBSSwwQkFBcUIsSUFBSSxDQUFDLGNBQWMsc0JBQWlCLElBQUksQ0FBQyxVQUFVLE1BQUcsRUFEOUMsQ0FDOEMsQ0FBQztJQUVwRzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7T0FvQkc7SUFDSCxTQUFnQix1QkFBdUIsQ0FDbkMsS0FBNEIsRUFBRSxLQUEyQjtRQUMzRCxJQUFNLFlBQVksR0FBRyxJQUFJLHNCQUFnQixFQUFFLENBQUM7UUFDNUMsSUFBTSxxQkFBcUIsR0FBRyxJQUFJLEdBQUcsRUFBZ0IsQ0FBQztRQUV0RCxLQUFLLENBQUMsT0FBTyxDQUFDLFVBQUEsSUFBSTs7WUFDaEIsSUFBTSxjQUFjLEdBQUcsSUFBSSxDQUFDLFVBQVUsQ0FBQyxJQUFJLENBQUM7WUFFNUMsZ0ZBQWdGO1lBQ2hGLElBQU0sSUFBSSxHQUFHLEtBQUssQ0FBQyxjQUFjLENBQUMsY0FBYyxDQUFDLENBQUM7WUFDbEQsSUFBTSxnQkFBZ0IsR0FBRyxJQUFJLENBQUMsTUFBTSxDQUFDLFVBQUEsR0FBRyxJQUFJLE9BQUEscUJBQXFCLENBQUMsR0FBRyxDQUFDLEdBQUcsQ0FBQyxFQUE5QixDQUE4QixDQUFDO2lCQUM3QyxHQUFHLENBQUMsVUFBQSxHQUFHLElBQUksT0FBQSxxQkFBcUIsQ0FBQyxHQUFHLENBQUMsR0FBRyxDQUFFLEVBQS9CLENBQStCLENBQUMsQ0FBQztZQUUxRSxpRkFBaUY7WUFDakYsSUFBSSxnQkFBZ0IsQ0FBQyxN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LENBQUMsQ0FBQyxDQUFDLENBQUMsWUFBWSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUUsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsRUFBRSxHQUFHLENBQUMsRUFBaEUsQ0FBZ0UsQ0FBQztRQUV6RixLQUFLLENBQUMsT0FBTyxDQUFDLFVBQUMsSUFBSSxFQUFFLENBQUMsSUFBSyxPQUFBLGVBQWUsQ0FBQyxHQUFHLENBQUMsSUFBSSxFQUFFLGVBQWUsQ0FBQyxJQUFJLEVBQUUsQ0FBQyxDQUFDLENBQUMsRUFBbkQsQ0FBbUQsQ0FBQyxDQUFDO1FBRWhGLE9BQU8sS0FBSyxDQUFDLEtBQUssRUFBRSxDQUFDLElBQUksQ0FBQyxVQUFDLEtBQUssRUFBRSxLQUFLO1lBQy9CLElBQUEsS0FBQSxlQUFhLGVBQWUsQ0FBQyxHQUFHLENBQUMsS0FBSyxDQUFFLElBQUEsRUFBdkMsRUFBRSxRQUFBLEVBQUUsSUFBSSxRQUErQixDQUFDO1lBQ3pDLElBQUEsS0FBQSxlQUFhLGVBQWUsQ0FBQyxHQUFHLENBQUMsS0FBSyxDQUFFLElBQUEsRUFBdkMsRUFBRSxRQUFBLEVBQUUsSUFBSSxRQUErQixDQUFDO1lBRS9DLE9BQU8sQ0FBQyxFQUFFLEdBQUcsRUFBRSxDQUFDLElBQUksQ0FBQyxJQUFJLEdBQUcsSUFBSSxDQUFDLENBQUM7UUFDcEMsQ0FBQyxDQUFDLENBQUM7SUFDTCxDQUFDO0lBZEQsa0RBY0MiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCB7RGVwR3JhcGh9IGZyb20gJ2RlcGVuZGVuY3ktZ3JhcGgnO1xuaW1wb3J0IHtFbnRyeVBvaW50fSBmcm9tICcuLi8uLi9wYWNrYWdlcy9lbnRyeV9wb2ludCc7XG5pbXBvcnQge1BhcnRpYWxseU9yZGVyZWRUYXNrcywgVGFzaywgVGFza0RlcGVuZGVuY2llc30gZnJvbSAnLi9hcGknO1xuXG4vKiogU3RyaW5naWZ5IGEgdGFzayBmb3IgZGVidWdnaW5nIHB1cnBvc2VzLiAqL1xuZXhwb3J0IGNvbnN0IHN0cmluZ2lmeVRhc2sgPSAodGFzazogVGFzayk6IHN0cmluZyA9PiBge2VudHJ5UG9pbnQ6ICR7XG4gICAgdGFzay5lbnRyeVBvaW50Lm5hbWV9LCBmb3JtYXRQcm9wZXJ0eTogJHt0YXNrLmZvcm1hdFByb3BlcnR5fSwgcHJvY2Vzc0R0czogJHt0YXNrLnByb2Nlc3NEdHN9fWA7XG5cbi8qKlxuICogQ29tcHV0ZSBhIG1hcHBpbmcgb2YgdGFza3MgdG8gdGhlIHRhc2tzIHRoYXQgYXJlIGRlcGVuZGVudCBvbiB0aGVtIChpZiBhbnkpLlxuICpcbiAqIFRhc2sgQSBjYW4gZGVwZW5kIHVwb24gdGFzayBCLCBpZiBlaXRoZXI6XG4gKlxuICogKiBBIGFuZCBCIGhhdmUgdGhlIHNhbWUgZW50cnktcG9pbnQgX2FuZF8gQiBpcyBnZW5lcmF0aW5nIHRoZSB0eXBpbmdzIGZvciB0aGF0IGVudHJ5LXBvaW50XG4gKiAgIChpLmUuIGhhcyBgcHJvY2Vzc0R0czogdHJ1ZWApLlxuICogKiBBJ3MgZW50cnktcG9pbnQgZGVwZW5kcyBvbiBCJ3MgZW50cnktcG9pbnQgX2FuZF8gQiBpcyBhbHNvIGdlbmVyYXRpbmcgdHlwaW5ncy5cbiAqXG4gKiBOT1RFOiBJZiBhIHRhc2sgaXMgbm90IGdlbmVyYXRpbmcgdHlwaW5ncywgdGhlbiBpdCBjYW5ub3QgYWZmZWN0IGFueXRoaW5nIHdoaWNoIGRlcGVuZHMgb24gaXRzXG4gKiAgICAgICBlbnRyeS1wb2ludCwgcmVnYXJkbGVzcyBvZiB0aGUgZGVwZW5kZW5jeSBncmFwaC4gVG8gcHV0IHRoaXMgYW5vdGhlciB3YXksIG9ubHkgdGhlIHRhc2tcbiAqICAgICAgIHdoaWNoIHByb2R1Y2VzIHRoZSB0eXBpbmdzIGZvciBhIGRlcGVuZGVuY3kgbmVlZHMgdG8gaGF2ZSBiZWVuIGNvbXBsZXRlZC5cbiAqXG4gKiBBcyBhIHBlcmZvcm1hbmNlIG9wdGltaXphdGlvbiwgd2UgdGFrZSBpbnRvIGFjY291bnQgdGhlIGZhY3QgdGhhdCBgdGFza3NgIGFyZSBzb3J0ZWQgaW4gc3VjaCBhXG4gKiB3YXkgdGhhdCBhIHRhc2sgY2FuIG9ubHkgZGVwZW5kIG9uIGVhcmxpZXIgdGFza3MgKGkuZS4gZGVwZW5kZW5jaWVzIGFsd2F5cyBjb21lIGJlZm9yZVxuICogZGVwZW5kZW50cyBpbiB0aGUgbGlzdCBvZiB0YXNrcykuXG4gKlxuICogQHBhcmFtIHRhc2tzIEEgKHBhcnRpYWxseSBvcmRlcmVkKSBsaXN0IG9mIHRhc2tzLlxuICogQHBhcmFtIGdyYXBoIFRoZSBkZXBlbmRlbmN5IGdyYXBoIGJldHdlZW4gZW50cnktcG9pbnRzLlxuICogQHJldHVybiBBIG1hcCBmcm9tIGVhY2ggdGFzayB0byB0aG9zZSB0YXNrcyBkaXJlY3RseSBkZXBlbmRlbnQgdXBvbiBpdC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGNvbXB1dGVUYXNrRGVwZW5kZW5jaWVzKFxuICAgIHRhc2tzOiBQYXJ0aWFsbHlPcmRlcmVkVGFza3MsIGdyYXBoOiBEZXBHcmFwaDxFbnRyeVBvaW50Pik6IFRhc2tEZXBlbmRlbmNpZXMge1xuICBjb25zdCBkZXBlbmRlbmNpZXMgPSBuZXcgVGFza0RlcGVuZGVuY2llcygpO1xuICBjb25zdCBjYW5kaWRhdGVEZXBlbmRlbmNpZXMgPSBuZXcgTWFwPHN0cmluZywgVGFzaz4oKTtcblxuICB0YXNrcy5mb3JFYWNoKHRhc2sgPT4ge1xuICAgIGNvbnN0IGVudHJ5UG9pbnRQYXRoID0gdGFzay5lbnRyeVBvaW50LnBhdGg7XG5cbiAgICAvLyBGaW5kIHRoZSBlYXJsaWVyIHRhc2tzIChgY2FuZGlkYXRlRGVwZW5kZW5jaWVzYCkgdGhhdCB0aGlzIHRhc2sgZGVwZW5kcyB1cG9uLlxuICAgIGNvbnN0IGRlcHMgPSBncmFwaC5kZXBlbmRlbmNpZXNPZihlbnRyeVBvaW50UGF0aCk7XG4gICAgY29uc3QgdGFza0RlcGVuZGVuY2llcyA9IGRlcHMuZmlsdGVyKGRlcCA9PiBjYW5kaWRhdGVEZXBlbmRlbmNpZXMuaGFzKGRlcCkpXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAubWFwKGRlcCA9PiBjYW5kaWRhdGVEZXBlbmRlbmNpZXMuZ2V0KGRlcCkhKTtcblxuICAgIC8vIElmIHRoaXMgdGFzayBoYXMgZGVwZW5kZW5jaWVzLCBhZGQgaXQgdG8gdGhlIGRlcGVuZGVuY2llcyBhbmQgZGVwZW5kZW50cyBtYXBzLlxuICAgIGlmICh0YXNrRGVwZW5kZW5jaWVzLmxlbmd0aCA+IDApIHtcbiAgICAgIGZvciAoY29uc3QgZGVwZW5kZW5jeSBvZiB0YXNrRGVwZW5kZW5jaWVzKSB7XG4gICAgICAgIGNvbnN0IHRhc2tEZXBlbmRlbnRzID0gZ2V0RGVwZW5kZW50c1NldChkZXBlbmRlbmNpZXMsIGRlcGVuZGVuY3kpO1xuICAgICAgICB0YXNrRGVwZW5kZW50cy5hZGQodGFzayk7XG4gICAgICB9XG4gICAgfVxuXG4gICAgaWYgKHRhc2sucHJvY2Vzc0R0cykge1xuICAgICAgLy8gU0FOSVRZIENIRUNLOlxuICAgICAgLy8gVGhlcmUgc2hvdWxkIG9ubHkgYmUgb25lIHRhc2sgcGVyIGVudHJ5LXBvaW50IHRoYXQgZ2VuZXJhdGVzIHR5cGluZ3MgKGFuZCB0aHVzIGNhbiBiZSBhXG4gICAgICAvLyBkZXBlbmRlbmN5IG9mIG90aGVyIHRhc2tzKSwgc28gdGhlIGZvbGxvd2luZyBzaG91bGQgdGhlb3JldGljYWxseSBuZXZlciBoYXBwZW4sIGJ1dCBjaGVja1xuICAgICAgLy8ganVzdCBpbiBjYXNlLlxuICAgICAgaWYgKGNhbmRpZGF0ZURlcGVuZGVuY2llcy5oYXMoZW50cnlQb2ludFBhdGgpKSB7XG4gICAgICAgIGNvbnN0IG90aGVyVGFzayA9IGNhbmRpZGF0ZURlcGVuZGVuY2llcy5nZXQoZW50cnlQb2ludFBhdGgpITtcbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKFxuICAgICAgICAgICAgJ0ludmFyaWFudCB2aW9sYXRlZDogTXVsdGlwbGUgdGFza3MgYXJlIGFzc2lnbmVkIGdlbmVyYXRpbmcgdHlwaW5ncyBmb3IgJyArXG4gICAgICAgICAgICBgJyR7ZW50cnlQb2ludFBhdGh9JzpcXG4gIC0gJHtzdHJpbmdpZnlUYXNrKG90aGVyVGFzayl9XFxuICAtICR7c3RyaW5naWZ5VGFzayh0YXNrKX1gKTtcbiAgICAgIH1cbiAgICAgIC8vIFRoaXMgdGFzayBjYW4gcG90ZW50aWFsbHkgYmUgYSBkZXBlbmRlbmN5IChpLmUuIGl0IGdlbmVyYXRlcyB0eXBpbmdzKSwgc28gYWRkIGl0IHRvIHRoZVxuICAgICAgLy8gbGlzdCBvZiBjYW5kaWRhdGUgZGVwZW5kZW5jaWVzIGZvciBzdWJzZXF1ZW50IHRhc2tzLlxuICAgICAgY2FuZGlkYXRlRGVwZW5kZW5jaWVzLnNldChlbnRyeVBvaW50UGF0aCwgdGFzayk7XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIFRoaXMgdGFzayBpcyBub3QgZ2VuZXJhdGluZyB0eXBpbmdzIHNvIHdlIG5lZWQgdG8gYWRkIGl0IHRvIHRoZSBkZXBlbmRlbnRzIG9mIHRoZSB0YXNrIHRoYXRcbiAgICAgIC8vIGRvZXMgZ2VuZXJhdGUgdHlwaW5ncywgaWYgdGhhdCBleGlzdHNcbiAgICAgIGlmIChjYW5kaWRhdGVEZXBlbmRlbmNpZXMuaGFzKGVudHJ5UG9pbnRQYXRoKSkge1xuICAgICAgICBjb25zdCB0eXBpbmdzVGFzayA9IGNhbmRpZGF0ZURlcGVuZGVuY2llcy5nZXQoZW50cnlQb2ludFBhdGgpITtcbiAgICAgICAgY29uc3QgdHlwaW5nc1Rhc2tEZXBlbmRlbnRzID0gZ2V0RGVwZW5kZW50c1NldChkZXBlbmRlbmNpZXMsIHR5cGluZ3NUYXNrKTtcbiAgICAgICAgdHlwaW5nc1Rhc2tEZXBlbmRlbnRzLmFkZCh0YXNrKTtcbiAgICAgIH1cbiAgICB9XG4gIH0pO1xuXG4gIHJldHVybiBkZXBlbmRlbmNpZXM7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXREZXBlbmRlbnRzU2V0KG1hcDogVGFza0RlcGVuZGVuY2llcywgdGFzazogVGFzayk6IFNldDxUYXNrPiB7XG4gIGlmICghbWFwLmhhcyh0YXNrKSkge1xuICAgIG1hcC5zZXQodGFzaywgbmV3IFNldCgpKTtcbiAgfVxuICByZXR1cm4gbWFwLmdldCh0YXNrKSE7XG59XG5cbi8qKlxuICogSW52ZXJ0IHRoZSBnaXZlbiBtYXBwaW5nIG9mIFRhc2sgZGVwZW5kZW5jaWVzLlxuICpcbiAqIEBwYXJhbSBkZXBlbmRlbmNpZXMgVGhlIG1hcHBpbmcgb2YgdGFza3MgdG8gdGhlIHRhc2tzIHRoYXQgZGVwZW5kIHVwb24gdGhlbS5cbiAqIEByZXR1cm5zIEEgbWFwcGluZyBvZiB0YXNrcyB0byB0aGUgdGFza3MgdGhhdCB0aGV5IGRlcGVuZCB1cG9uLlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0QmxvY2tlZFRhc2tzKGRlcGVuZGVuY2llczogVGFza0RlcGVuZGVuY2llcyk6IE1hcDxUYXNrLCBTZXQ8VGFzaz4+IHtcbiAgY29uc3QgYmxvY2tlZFRhc2tzID0gbmV3IE1hcDxUYXNrLCBTZXQ8VGFzaz4+KCk7XG4gIGZvciAoY29uc3QgW2RlcGVuZGVuY3ksIGRlcGVuZGVudHNdIG9mIGRlcGVuZGVuY2llcykge1xuICAgIGZvciAoY29uc3QgZGVwZW5kZW50IG9mIGRlcGVuZGVudHMpIHtcbiAgICAgIGNvbnN0IGRlcGVuZGVudFNldCA9IGdldERlcGVuZGVudHNTZXQoYmxvY2tlZFRhc2tzLCBkZXBlbmRlbnQpO1xuICAgICAgZGVwZW5kZW50U2V0LmFkZChkZXBlbmRlbmN5KTtcbiAgICB9XG4gIH1cbiAgcmV0dXJuIGJsb2NrZWRUYXNrcztcbn1cblxuLyoqXG4gKiBTb3J0IGEgbGlzdCBvZiB0YXNrcyBieSBwcmlvcml0eS5cbiAqXG4gKiBQcmlvcml0eSBpcyBkZXRlcm1pbmVkIGJ5IHRoZSBudW1iZXIgb2Ygb3RoZXIgdGFza3MgdGhhdCBhIHRhc2sgaXMgKHRyYW5zaXRpdmVseSkgYmxvY2tpbmc6XG4gKiBUaGUgbW9yZSB0YXNrcyBhIHRhc2sgaXMgYmxvY2tpbmcgdGhlIGhpZ2hlciBpdHMgcHJpb3JpdHkgaXMsIGJlY2F1c2UgcHJvY2Vzc2luZyBpdCB3aWxsXG4gKiBwb3RlbnRpYWxseSB1bmJsb2NrIG1vcmUgdGFza3MuXG4gKlxuICogVG8ga2VlcCB0aGUgYmVoYXZpb3IgcHJlZGljdGFibGUsIGlmIHR3byB0YXNrcyBibG9jayB0aGUgc2FtZSBudW1iZXIgb2Ygb3RoZXIgdGFza3MsIHRoZWlyXG4gKiByZWxhdGl2ZSBvcmRlciBpbiB0aGUgb3JpZ2luYWwgYHRhc2tzYCBsaXN0cyBpcyBwcmVzZXJ2ZWQuXG4gKlxuICogQHBhcmFtIHRhc2tzIEEgKHBhcnRpYWxseSBvcmRlcmVkKSBsaXN0IG9mIHRhc2tzLlxuICogQHBhcmFtIGRlcGVuZGVuY2llcyBUaGUgbWFwcGluZyBvZiB0YXNrcyB0byB0aGUgdGFza3MgdGhhdCBkZXBlbmQgdXBvbiB0aGVtLlxuICogQHJldHVybiBUaGUgbGlzdCBvZiB0YXNrcyBzb3J0ZWQgYnkgcHJpb3JpdHkuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBzb3J0VGFza3NCeVByaW9yaXR5KFxuICAgIHRhc2tzOiBQYXJ0aWFsbHlPcmRlcmVkVGFza3MsIGRlcGVuZGVuY2llczogVGFza0RlcGVuZGVuY2llcyk6IFBhcnRpYWxseU9yZGVyZWRUYXNrcyB7XG4gIGNvbnN0IHByaW9yaXR5UGVyVGFzayA9IG5ldyBNYXA8VGFzaywgW251bWJlciwgbnVtYmVyXT4oKTtcbiAgY29uc3QgY29tcHV0ZVByaW9yaXR5ID0gKHRhc2s6IFRhc2ssIGlkeDogbnVtYmVyKTpcbiAgICAgIFtudW1iZXIsIG51bWJlcl0gPT4gW2RlcGVuZGVuY2llcy5oYXModGFzaykgPyBkZXBlbmRlbmNpZXMuZ2V0KHRhc2spIS5zaXplIDogMCwgaWR4XTtcblxuICB0YXNrcy5mb3JFYWNoKCh0YXNrLCBpKSA9PiBwcmlvcml0eVBlclRhc2suc2V0KHRhc2ssIGNvbXB1dGVQcmlvcml0eSh0YXNrLCBpKSkpO1xuXG4gIHJldHVybiB0YXNrcy5zbGljZSgpLnNvcnQoKHRhc2sxLCB0YXNrMikgPT4ge1xuICAgIGNvbnN0IFtwMSwgaWR4MV0gPSBwcmlvcml0eVBlclRhc2suZ2V0KHRhc2sxKSE7XG4gICAgY29uc3QgW3AyLCBpZHgyXSA9IHByaW9yaXR5UGVyVGFzay5nZXQodGFzazIpITtcblxuICAgIHJldHVybiAocDIgLSBwMSkgfHwgKGlkeDEgLSBpZHgyKTtcbiAgfSk7XG59XG4iXX0=