/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/**
 * A repeater that destroys views when they are removed from a
 * {@link ViewContainerRef}. When new items are inserted into the container,
 * the repeater will always construct a new embedded view for each item.
 *
 * @template T The type for the embedded view's $implicit property.
 * @template R The type for the item in each IterableDiffer change record.
 * @template C The type for the context passed to each embedded view.
 */
export class _DisposeViewRepeaterStrategy {
    applyChanges(changes, viewContainerRef, itemContextFactory, itemValueResolver, itemViewChanged) {
        changes.forEachOperation((record, adjustedPreviousIndex, currentIndex) => {
            let view;
            let operation;
            if (record.previousIndex == null) {
                const insertContext = itemContextFactory(record, adjustedPreviousIndex, currentIndex);
                view = viewContainerRef.createEmbeddedView(insertContext.templateRef, insertContext.context, insertContext.index);
                operation = 1 /* INSERTED */;
            }
            else if (currentIndex == null) {
                viewContainerRef.remove(adjustedPreviousIndex);
                operation = 3 /* REMOVED */;
            }
            else {
                view = viewContainerRef.get(adjustedPreviousIndex);
                viewContainerRef.move(view, currentIndex);
                operation = 2 /* MOVED */;
            }
            if (itemViewChanged) {
                itemViewChanged({
                    context: view === null || view === void 0 ? void 0 : view.context,
                    operation,
                    record,
                });
            }
        });
    }
    detach() {
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGlzcG9zZS12aWV3LXJlcGVhdGVyLXN0cmF0ZWd5LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9jb2xsZWN0aW9ucy9kaXNwb3NlLXZpZXctcmVwZWF0ZXItc3RyYXRlZ3kudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBaUJIOzs7Ozs7OztHQVFHO0FBQ0gsTUFBTSxPQUFPLDRCQUE0QjtJQUV2QyxZQUFZLENBQUMsT0FBMkIsRUFDM0IsZ0JBQWtDLEVBQ2xDLGtCQUE0RCxFQUM1RCxpQkFBdUQsRUFDdkQsZUFBZ0Q7UUFDM0QsT0FBTyxDQUFDLGdCQUFnQixDQUNwQixDQUFDLE1BQStCLEVBQy9CLHFCQUFvQyxFQUNwQyxZQUEyQixFQUFFLEVBQUU7WUFDOUIsSUFBSSxJQUFvQyxDQUFDO1lBQ3pDLElBQUksU0FBaUMsQ0FBQztZQUN0QyxJQUFJLE1BQU0sQ0FBQyxhQUFhLElBQUksSUFBSSxFQUFFO2dCQUNoQyxNQUFNLGFBQWEsR0FBRyxrQkFBa0IsQ0FBQyxNQUFNLEVBQUUscUJBQXFCLEVBQUUsWUFBWSxDQUFDLENBQUM7Z0JBQ3RGLElBQUksR0FBRyxnQkFBZ0IsQ0FBQyxrQkFBa0IsQ0FDdEMsYUFBYSxDQUFDLFdBQVcsRUFBRSxhQUFhLENBQUMsT0FBTyxFQUFFLGFBQWEsQ0FBQyxLQUFLLENBQUMsQ0FBQztnQkFDM0UsU0FBUyxtQkFBa0MsQ0FBQzthQUM3QztpQkFBTSxJQUFJLFlBQVksSUFBSSxJQUFJLEVBQUU7Z0JBQy9CLGdCQUFnQixDQUFDLE1BQU0sQ0FBQyxxQkFBc0IsQ0FBQyxDQUFDO2dCQUNoRCxTQUFTLGtCQUFpQyxDQUFDO2FBQzVDO2lCQUFNO2dCQUNMLElBQUksR0FBRyxnQkFBZ0IsQ0FBQyxHQUFHLENBQUMscUJBQXNCLENBQXVCLENBQUM7Z0JBQzFFLGdCQUFnQixDQUFDLElBQUksQ0FBQyxJQUFLLEVBQUUsWUFBWSxDQUFDLENBQUM7Z0JBQzNDLFNBQVMsZ0JBQStCLENBQUM7YUFDMUM7WUFFRCxJQUFJLGVBQWUsRUFBRTtnQkFDbkIsZUFBZSxDQUFDO29CQUNkLE9BQU8sRUFBRSxJQUFJLGFBQUosSUFBSSx1QkFBSixJQUFJLENBQUUsT0FBTztvQkFDdEIsU0FBUztvQkFDVCxNQUFNO2lCQUNQLENBQUMsQ0FBQzthQUNKO1FBQ0gsQ0FBQyxDQUFDLENBQUM7SUFDVCxDQUFDO0lBRUQsTUFBTTtJQUNOLENBQUM7Q0FDRiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1xuICBFbWJlZGRlZFZpZXdSZWYsXG4gIEl0ZXJhYmxlQ2hhbmdlUmVjb3JkLFxuICBJdGVyYWJsZUNoYW5nZXMsXG4gIFZpZXdDb250YWluZXJSZWZcbn0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge1xuICBfVmlld1JlcGVhdGVyLFxuICBfVmlld1JlcGVhdGVySXRlbUNoYW5nZWQsXG4gIF9WaWV3UmVwZWF0ZXJJdGVtQ29udGV4dCxcbiAgX1ZpZXdSZXBlYXRlckl0ZW1Db250ZXh0RmFjdG9yeSxcbiAgX1ZpZXdSZXBlYXRlckl0ZW1WYWx1ZVJlc29sdmVyLFxuICBfVmlld1JlcGVhdGVyT3BlcmF0aW9uXG59IGZyb20gJy4vdmlldy1yZXBlYXRlcic7XG5cbi8qKlxuICogQSByZXBlYXRlciB0aGF0IGRlc3Ryb3lzIHZpZXdzIHdoZW4gdGhleSBhcmUgcmVtb3ZlZCBmcm9tIGFcbiAqIHtAbGluayBWaWV3Q29udGFpbmVyUmVmfS4gV2hlbiBuZXcgaXRlbXMgYXJlIGluc2VydGVkIGludG8gdGhlIGNvbnRhaW5lcixcbiAqIHRoZSByZXBlYXRlciB3aWxsIGFsd2F5cyBjb25zdHJ1Y3QgYSBuZXcgZW1iZWRkZWQgdmlldyBmb3IgZWFjaCBpdGVtLlxuICpcbiAqIEB0ZW1wbGF0ZSBUIFRoZSB0eXBlIGZvciB0aGUgZW1iZWRkZWQgdmlldydzICRpbXBsaWNpdCBwcm9wZXJ0eS5cbiAqIEB0ZW1wbGF0ZSBSIFRoZSB0eXBlIGZvciB0aGUgaXRlbSBpbiBlYWNoIEl0ZXJhYmxlRGlmZmVyIGNoYW5nZSByZWNvcmQuXG4gKiBAdGVtcGxhdGUgQyBUaGUgdHlwZSBmb3IgdGhlIGNvbnRleHQgcGFzc2VkIHRvIGVhY2ggZW1iZWRkZWQgdmlldy5cbiAqL1xuZXhwb3J0IGNsYXNzIF9EaXNwb3NlVmlld1JlcGVhdGVyU3RyYXRlZ3k8VCwgUiwgQyBleHRlbmRzIF9WaWV3UmVwZWF0ZXJJdGVtQ29udGV4dDxUPj5cbiAgICBpbXBsZW1lbnRzIF9WaWV3UmVwZWF0ZXI8VCwgUiwgQz4ge1xuICBhcHBseUNoYW5nZXMoY2hhbmdlczogSXRlcmFibGVDaGFuZ2VzPFI+LFxuICAgICAgICAgICAgICAgdmlld0NvbnRhaW5lclJlZjogVmlld0NvbnRhaW5lclJlZixcbiAgICAgICAgICAgICAgIGl0ZW1Db250ZXh0RmFjdG9yeTogX1ZpZXdSZXBlYXRlckl0ZW1Db250ZXh0RmFjdG9yeTxULCBSLCBDPixcbiAgICAgICAgICAgICAgIGl0ZW1WYWx1ZVJlc29sdmVyOiBfVmlld1JlcGVhdGVySXRlbVZhbHVlUmVzb2x2ZXI8VCwgUj4sXG4gICAgICAgICAgICAgICBpdGVtVmlld0NoYW5nZWQ/OiBfVmlld1JlcGVhdGVySXRlbUNoYW5nZWQ8UiwgQz4pIHtcbiAgICBjaGFuZ2VzLmZvckVhY2hPcGVyYXRpb24oXG4gICAgICAgIChyZWNvcmQ6IEl0ZXJhYmxlQ2hhbmdlUmVjb3JkPFI+LFxuICAgICAgICAgYWRqdXN0ZWRQcmV2aW91c0luZGV4OiBudW1iZXIgfCBudWxsLFxuICAgICAgICAgY3VycmVudEluZGV4OiBudW1iZXIgfCBudWxsKSA9PiB7XG4gICAgICAgICAgbGV0IHZpZXc6IEVtYmVkZGVkVmlld1JlZjxDPiB8IHVuZGVmaW5lZDtcbiAgICAgICAgICBsZXQgb3BlcmF0aW9uOiBfVmlld1JlcGVhdGVyT3BlcmF0aW9uO1xuICAgICAgICAgIGlmIChyZWNvcmQucHJldmlvdXNJbmRleCA9PSBudWxsKSB7XG4gICAgICAgICAgICBjb25zdCBpbnNlcnRDb250ZXh0ID0gaXRlbUNvbnRleHRGYWN0b3J5KHJlY29yZCwgYWRqdXN0ZWRQcmV2aW91c0luZGV4LCBjdXJyZW50SW5kZXgpO1xuICAgICAgICAgICAgdmlldyA9IHZpZXdDb250YWluZXJSZWYuY3JlYXRlRW1iZWRkZWRWaWV3KFxuICAgICAgICAgICAgICAgIGluc2VydENvbnRleHQudGVtcGxhdGVSZWYsIGluc2VydENvbnRleHQuY29udGV4dCwgaW5zZXJ0Q29udGV4dC5pbmRleCk7XG4gICAgICAgICAgICBvcGVyYXRpb24gPSBfVmlld1JlcGVhdGVyT3BlcmF0aW9uLklOU0VSVEVEO1xuICAgICAgICAgIH0gZWxzZSBpZiAoY3VycmVudEluZGV4ID09IG51bGwpIHtcbiAgICAgICAgICAgIHZpZXdDb250YWluZXJSZWYucmVtb3ZlKGFkanVzdGVkUHJldmlvdXNJbmRleCEpO1xuICAgICAgICAgICAgb3BlcmF0aW9uID0gX1ZpZXdSZXBlYXRlck9wZXJhdGlvbi5SRU1PVkVEO1xuICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICB2aWV3ID0gdmlld0NvbnRhaW5lclJlZi5nZXQoYWRqdXN0ZWRQcmV2aW91c0luZGV4ISkgYXMgRW1iZWRkZWRWaWV3UmVmPEM+O1xuICAgICAgICAgICAgdmlld0NvbnRhaW5lclJlZi5tb3ZlKHZpZXchLCBjdXJyZW50SW5kZXgpO1xuICAgICAgICAgICAgb3BlcmF0aW9uID0gX1ZpZXdSZXBlYXRlck9wZXJhdGlvbi5NT1ZFRDtcbiAgICAgICAgICB9XG5cbiAgICAgICAgICBpZiAoaXRlbVZpZXdDaGFuZ2VkKSB7XG4gICAgICAgICAgICBpdGVtVmlld0NoYW5nZWQoe1xuICAgICAgICAgICAgICBjb250ZXh0OiB2aWV3Py5jb250ZXh0LFxuICAgICAgICAgICAgICBvcGVyYXRpb24sXG4gICAgICAgICAgICAgIHJlY29yZCxcbiAgICAgICAgICAgIH0pO1xuICAgICAgICAgIH1cbiAgICAgICAgfSk7XG4gIH1cblxuICBkZXRhY2goKSB7XG4gIH1cbn1cbiJdfQ==