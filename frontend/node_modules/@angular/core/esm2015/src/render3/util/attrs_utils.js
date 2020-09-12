import { isProceduralRenderer } from '../interfaces/renderer';
/**
 * Assigns all attribute values to the provided element via the inferred renderer.
 *
 * This function accepts two forms of attribute entries:
 *
 * default: (key, value):
 *  attrs = [key1, value1, key2, value2]
 *
 * namespaced: (NAMESPACE_MARKER, uri, name, value)
 *  attrs = [NAMESPACE_MARKER, uri, name, value, NAMESPACE_MARKER, uri, name, value]
 *
 * The `attrs` array can contain a mix of both the default and namespaced entries.
 * The "default" values are set without a marker, but if the function comes across
 * a marker value then it will attempt to set a namespaced value. If the marker is
 * not of a namespaced value then the function will quit and return the index value
 * where it stopped during the iteration of the attrs array.
 *
 * See [AttributeMarker] to understand what the namespace marker value is.
 *
 * Note that this instruction does not support assigning style and class values to
 * an element. See `elementStart` and `elementHostAttrs` to learn how styling values
 * are applied to an element.
 * @param renderer The renderer to be used
 * @param native The element that the attributes will be assigned to
 * @param attrs The attribute array of values that will be assigned to the element
 * @returns the index value that was last accessed in the attributes array
 */
export function setUpAttributes(renderer, native, attrs) {
    const isProc = isProceduralRenderer(renderer);
    let i = 0;
    while (i < attrs.length) {
        const value = attrs[i];
        if (typeof value === 'number') {
            // only namespaces are supported. Other value types (such as style/class
            // entries) are not supported in this function.
            if (value !== 0 /* NamespaceURI */) {
                break;
            }
            // we just landed on the marker value ... therefore
            // we should skip to the next entry
            i++;
            const namespaceURI = attrs[i++];
            const attrName = attrs[i++];
            const attrVal = attrs[i++];
            ngDevMode && ngDevMode.rendererSetAttribute++;
            isProc ?
                renderer.setAttribute(native, attrName, attrVal, namespaceURI) :
                native.setAttributeNS(namespaceURI, attrName, attrVal);
        }
        else {
            // attrName is string;
            const attrName = value;
            const attrVal = attrs[++i];
            // Standard attributes
            ngDevMode && ngDevMode.rendererSetAttribute++;
            if (isAnimationProp(attrName)) {
                if (isProc) {
                    renderer.setProperty(native, attrName, attrVal);
                }
            }
            else {
                isProc ?
                    renderer.setAttribute(native, attrName, attrVal) :
                    native.setAttribute(attrName, attrVal);
            }
            i++;
        }
    }
    // another piece of code may iterate over the same attributes array. Therefore
    // it may be helpful to return the exact spot where the attributes array exited
    // whether by running into an unsupported marker or if all the static values were
    // iterated over.
    return i;
}
/**
 * Test whether the given value is a marker that indicates that the following
 * attribute values in a `TAttributes` array are only the names of attributes,
 * and not name-value pairs.
 * @param marker The attribute marker to test.
 * @returns true if the marker is a "name-only" marker (e.g. `Bindings`, `Template` or `I18n`).
 */
export function isNameOnlyAttributeMarker(marker) {
    return marker === 3 /* Bindings */ || marker === 4 /* Template */ ||
        marker === 6 /* I18n */;
}
export function isAnimationProp(name) {
    // Perf note: accessing charCodeAt to check for the first character of a string is faster as
    // compared to accessing a character at index 0 (ex. name[0]). The main reason for this is that
    // charCodeAt doesn't allocate memory to return a substring.
    return name.charCodeAt(0) === 64 /* AT_SIGN */;
}
/**
 * Merges `src` `TAttributes` into `dst` `TAttributes` removing any duplicates in the process.
 *
 * This merge function keeps the order of attrs same.
 *
 * @param dst Location of where the merged `TAttributes` should end up.
 * @param src `TAttributes` which should be appended to `dst`
 */
export function mergeHostAttrs(dst, src) {
    if (src === null || src.length === 0) {
        // do nothing
    }
    else if (dst === null || dst.length === 0) {
        // We have source, but dst is empty, just make a copy.
        dst = src.slice();
    }
    else {
        let srcMarker = -1 /* ImplicitAttributes */;
        for (let i = 0; i < src.length; i++) {
            const item = src[i];
            if (typeof item === 'number') {
                srcMarker = item;
            }
            else {
                if (srcMarker === 0 /* NamespaceURI */) {
                    // Case where we need to consume `key1`, `key2`, `value` items.
                }
                else if (srcMarker === -1 /* ImplicitAttributes */ ||
                    srcMarker === 2 /* Styles */) {
                    // Case where we have to consume `key1` and `value` only.
                    mergeHostAttribute(dst, srcMarker, item, null, src[++i]);
                }
                else {
                    // Case where we have to consume `key1` only.
                    mergeHostAttribute(dst, srcMarker, item, null, null);
                }
            }
        }
    }
    return dst;
}
/**
 * Append `key`/`value` to existing `TAttributes` taking region marker and duplicates into account.
 *
 * @param dst `TAttributes` to append to.
 * @param marker Region where the `key`/`value` should be added.
 * @param key1 Key to add to `TAttributes`
 * @param key2 Key to add to `TAttributes` (in case of `AttributeMarker.NamespaceURI`)
 * @param value Value to add or to overwrite to `TAttributes` Only used if `marker` is not Class.
 */
export function mergeHostAttribute(dst, marker, key1, key2, value) {
    let i = 0;
    // Assume that new markers will be inserted at the end.
    let markerInsertPosition = dst.length;
    // scan until correct type.
    if (marker === -1 /* ImplicitAttributes */) {
        markerInsertPosition = -1;
    }
    else {
        while (i < dst.length) {
            const dstValue = dst[i++];
            if (typeof dstValue === 'number') {
                if (dstValue === marker) {
                    markerInsertPosition = -1;
                    break;
                }
                else if (dstValue > marker) {
                    // We need to save this as we want the markers to be inserted in specific order.
                    markerInsertPosition = i - 1;
                    break;
                }
            }
        }
    }
    // search until you find place of insertion
    while (i < dst.length) {
        const item = dst[i];
        if (typeof item === 'number') {
            // since `i` started as the index after the marker, we did not find it if we are at the next
            // marker
            break;
        }
        else if (item === key1) {
            // We already have same token
            if (key2 === null) {
                if (value !== null) {
                    dst[i + 1] = value;
                }
                return;
            }
            else if (key2 === dst[i + 1]) {
                dst[i + 2] = value;
                return;
            }
        }
        // Increment counter.
        i++;
        if (key2 !== null)
            i++;
        if (value !== null)
            i++;
    }
    // insert at location.
    if (markerInsertPosition !== -1) {
        dst.splice(markerInsertPosition, 0, marker);
        i = markerInsertPosition + 1;
    }
    dst.splice(i++, 0, key1);
    if (key2 !== null) {
        dst.splice(i++, 0, key2);
    }
    if (value !== null) {
        dst.splice(i++, 0, value);
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXR0cnNfdXRpbHMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL3V0aWwvYXR0cnNfdXRpbHMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBVUEsT0FBTyxFQUFDLG9CQUFvQixFQUEyQyxNQUFNLHdCQUF3QixDQUFDO0FBSXRHOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztHQTBCRztBQUNILE1BQU0sVUFBVSxlQUFlLENBQUMsUUFBbUIsRUFBRSxNQUFnQixFQUFFLEtBQWtCO0lBQ3ZGLE1BQU0sTUFBTSxHQUFHLG9CQUFvQixDQUFDLFFBQVEsQ0FBQyxDQUFDO0lBRTlDLElBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQztJQUNWLE9BQU8sQ0FBQyxHQUFHLEtBQUssQ0FBQyxNQUFNLEVBQUU7UUFDdkIsTUFBTSxLQUFLLEdBQUcsS0FBSyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQ3ZCLElBQUksT0FBTyxLQUFLLEtBQUssUUFBUSxFQUFFO1lBQzdCLHdFQUF3RTtZQUN4RSwrQ0FBK0M7WUFDL0MsSUFBSSxLQUFLLHlCQUFpQyxFQUFFO2dCQUMxQyxNQUFNO2FBQ1A7WUFFRCxtREFBbUQ7WUFDbkQsbUNBQW1DO1lBQ25DLENBQUMsRUFBRSxDQUFDO1lBRUosTUFBTSxZQUFZLEdBQUcsS0FBSyxDQUFDLENBQUMsRUFBRSxDQUFXLENBQUM7WUFDMUMsTUFBTSxRQUFRLEdBQUcsS0FBSyxDQUFDLENBQUMsRUFBRSxDQUFXLENBQUM7WUFDdEMsTUFBTSxPQUFPLEdBQUcsS0FBSyxDQUFDLENBQUMsRUFBRSxDQUFXLENBQUM7WUFDckMsU0FBUyxJQUFJLFNBQVMsQ0FBQyxvQkFBb0IsRUFBRSxDQUFDO1lBQzlDLE1BQU0sQ0FBQyxDQUFDO2dCQUNILFFBQWdDLENBQUMsWUFBWSxDQUFDLE1BQU0sRUFBRSxRQUFRLEVBQUUsT0FBTyxFQUFFLFlBQVksQ0FBQyxDQUFD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RyxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUMsRUFBRTtnQkFDOUIsR0FBRyxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUMsR0FBRyxLQUFNLENBQUM7Z0JBQ3BCLE9BQU87YUFDUjtTQUNGO1FBQ0QscUJBQXFCO1FBQ3JCLENBQUMsRUFBRSxDQUFDO1FBQ0osSUFBSSxJQUFJLEtBQUssSUFBSTtZQUFFLENBQUMsRUFBRSxDQUFDO1FBQ3ZCLElBQUksS0FBSyxLQUFLLElBQUk7WUFBRSxDQUFDLEVBQUUsQ0FBQztLQUN6QjtJQUVELHNCQUFzQjtJQUN0QixJQUFJLG9CQUFvQixLQUFLLENBQUMsQ0FBQyxFQUFFO1FBQy9CLEdBQUcsQ0FBQyxNQUFNLENBQUMsb0JBQW9CLEVBQUUsQ0FBQyxFQUFFLE1BQU0sQ0FBQyxDQUFDO1FBQzVDLENBQUMsR0FBRyxvQkFBb0IsR0FBRyxDQUFDLENBQUM7S0FDOUI7SUFDRCxHQUFHLENBQUMsTUFBTSxDQUFDLENBQUMsRUFBRSxFQUFFLENBQUMsRUFBRSxJQUFJLENBQUMsQ0FBQztJQUN6QixJQUFJLElBQUksS0FBSyxJQUFJLEVBQUU7UUFDakIsR0FBRyxDQUFDLE1BQU0sQ0FBQyxDQUFDLEVBQUUsRUFBRSxDQUFDLEVBQUUsSUFBSSxDQUFDLENBQUM7S0FDMUI7SUFDRCxJQUFJLEtBQUssS0FBSyxJQUFJLEVBQUU7UUFDbEIsR0FBRyxDQUFDLE1BQU0sQ0FBQyxDQUFDLEVBQUUsRUFBRSxDQUFDLEVBQUUsS0FBSyxDQUFDLENBQUM7S0FDM0I7QUFDSCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQge0NoYXJDb2RlfSBmcm9tICcuLi8uLi91dGlsL2NoYXJfY29kZSc7XG5pbXBvcnQge0F0dHJpYnV0ZU1hcmtlciwgVEF0dHJpYnV0ZXN9IGZyb20gJy4uL2ludGVyZmFjZXMvbm9kZSc7XG5pbXBvcnQge0Nzc1NlbGVjdG9yfSBmcm9tICcuLi9pbnRlcmZhY2VzL3Byb2plY3Rpb24nO1xuaW1wb3J0IHtpc1Byb2NlZHVyYWxSZW5kZXJlciwgUHJvY2VkdXJhbFJlbmRlcmVyMywgUkVsZW1lbnQsIFJlbmRlcmVyM30gZnJvbSAnLi4vaW50ZXJmYWNlcy9yZW5kZXJlcic7XG5cblxuXG4vKipcbiAqIEFzc2lnbnMgYWxsIGF0dHJpYnV0ZSB2YWx1ZXMgdG8gdGhlIHByb3ZpZGVkIGVsZW1lbnQgdmlhIHRoZSBpbmZlcnJlZCByZW5kZXJlci5cbiAqXG4gKiBUaGlzIGZ1bmN0aW9uIGFjY2VwdHMgdHdvIGZvcm1zIG9mIGF0dHJpYnV0ZSBlbnRyaWVzOlxuICpcbiAqIGRlZmF1bHQ6IChrZXksIHZhbHVlKTpcbiAqICBhdHRycyA9IFtrZXkxLCB2YWx1ZTEsIGtleTIsIHZhbHVlMl1cbiAqXG4gKiBuYW1lc3BhY2VkOiAoTkFNRVNQQUNFX01BUktFUiwgdXJpLCBuYW1lLCB2YWx1ZSlcbiAqICBhdHRycyA9IFtOQU1FU1BBQ0VfTUFSS0VSLCB1cmksIG5hbWUsIHZhbHVlLCBOQU1FU1BBQ0VfTUFSS0VSLCB1cmksIG5hbWUsIHZhbHVlXVxuICpcbiAqIFRoZSBgYXR0cnNgIGFycmF5IGNhbiBjb250YWluIGEgbWl4IG9mIGJvdGggdGhlIGRlZmF1bHQgYW5kIG5hbWVzcGFjZWQgZW50cmllcy5cbiAqIFRoZSBcImRlZmF1bHRcIiB2YWx1ZXMgYXJlIHNldCB3aXRob3V0IGEgbWFya2VyLCBidXQgaWYgdGhlIGZ1bmN0aW9uIGNvbWVzIGFjcm9zc1xuICogYSBtYXJrZXIgdmFsdWUgdGhlbiBpdCB3aWxsIGF0dGVtcHQgdG8gc2V0IGEgbmFtZXNwYWNlZCB2YWx1ZS4gSWYgdGhlIG1hcmtlciBpc1xuICogbm90IG9mIGEgbmFtZXNwYWNlZCB2YWx1ZSB0aGVuIHRoZSBmdW5jdGlvbiB3aWxsIHF1aXQgYW5kIHJldHVybiB0aGUgaW5kZXggdmFsdWVcbiAqIHdoZXJlIGl0IHN0b3BwZWQgZHVyaW5nIHRoZSBpdGVyYXRpb24gb2YgdGhlIGF0dHJzIGFycmF5LlxuICpcbiAqIFNlZSBbQXR0cmlidXRlTWFya2VyXSB0byB1bmRlcnN0YW5kIHdoYXQgdGhlIG5hbWVzcGFjZSBtYXJrZXIgdmFsdWUgaXMuXG4gKlxuICogTm90ZSB0aGF0IHRoaXMgaW5zdHJ1Y3Rpb24gZG9lcyBub3Qgc3VwcG9ydCBhc3NpZ25pbmcgc3R5bGUgYW5kIGNsYXNzIHZhbHVlcyB0b1xuICogYW4gZWxlbWVudC4gU2VlIGBlbGVtZW50U3RhcnRgIGFuZCBgZWxlbWVudEhvc3RBdHRyc2AgdG8gbGVhcm4gaG93IHN0eWxpbmcgdmFsdWVzXG4gKiBhcmUgYXBwbGllZCB0byBhbiBlbGVtZW50LlxuICogQHBhcmFtIHJlbmRlcmVyIFRoZSByZW5kZXJlciB0byBiZSB1c2VkXG4gKiBAcGFyYW0gbmF0aXZlIFRoZSBlbGVtZW50IHRoYXQgdGhlIGF0dHJpYnV0ZXMgd2lsbCBiZSBhc3NpZ25lZCB0b1xuICogQHBhcmFtIGF0dHJzIFRoZSBhdHRyaWJ1dGUgYXJyYXkgb2YgdmFsdWVzIHRoYXQgd2lsbCBiZSBhc3NpZ25lZCB0byB0aGUgZWxlbWVudFxuICogQHJldHVybnMgdGhlIGluZGV4IHZhbHVlIHRoYXQgd2FzIGxhc3QgYWNjZXNzZWQgaW4gdGhlIGF0dHJpYnV0ZXMgYXJyYXlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHNldFVwQXR0cmlidXRlcyhyZW5kZXJlcjogUmVuZGVyZXIzLCBuYXRpdmU6IFJFbGVtZW50LCBhdHRyczogVEF0dHJpYnV0ZXMpOiBudW1iZXIge1xuICBjb25zdCBpc1Byb2MgPSBpc1Byb2NlZHVyYWxSZW5kZXJlcihyZW5kZXJlcik7XG5cbiAgbGV0IGkgPSAwO1xuICB3aGlsZSAoaSA8IGF0dHJzLmxlbmd0aCkge1xuICAgIGNvbnN0IHZhbHVlID0gYXR0cnNbaV07XG4gICAgaWYgKHR5cGVvZiB2YWx1ZSA9PT0gJ251bWJlcicpIHtcbiAgICAgIC8vIG9ubHkgbmFtZXNwYWNlcyBhcmUgc3VwcG9ydGVkLiBPdGhlciB2YWx1ZSB0eXBlcyAoc3VjaCBhcyBzdHlsZS9jbGFzc1xuICAgICAgLy8gZW50cmllcykgYXJlIG5vdCBzdXBwb3J0ZWQgaW4gdGhpcyBmdW5jdGlvbi5cbiAgICAgIGlmICh2YWx1ZSAhPT0gQXR0cmlidXRlTWFya2VyLk5hbWVzcGFjZVVSSSkge1xuICAgICAgICBicmVhaztcbiAgICAgIH1cblxuICAgICAgLy8gd2UganVzdCBsYW5kZWQgb24gdGhlIG1hcmtlciB2YWx1ZSAuLi4gdGhlcmVmb3JlXG4gICAgICAvLyB3ZSBzaG91bGQgc2tpcCB0byB0aGUgbmV4dCBlbnRyeVxuICAgICAgaSsrO1xuXG4gICAgICBjb25zdCBuYW1lc3BhY2VVUkkgPSBhdHRyc1tpKytdIGFzIHN0cmluZztcbiAgICAgIGNvbnN0IGF0dHJOYW1lID0gYXR0cnNbaSsrXSBhcyBzdHJpbmc7XG4gICAgICBjb25zdCBhdHRyVmFsID0gYXR0cnNbaSsrXSBhcyBzdHJpbmc7XG4gICAgICBuZ0Rldk1vZGUgJiYgbmdEZXZNb2RlLnJlbmRlcmVyU2V0QXR0cmlidXRlKys7XG4gICAgICBpc1Byb2MgP1xuICAgICAgICAgIChyZW5kZXJlciBhcyBQcm9jZWR1cmFsUmVuZGVyZXIzKS5zZXRBdHRyaWJ1dGUobmF0aXZlLCBhdHRyTmFtZSwgYXR0clZhbCwgbmFtZXNwYWNlVVJJKSA6XG4gICAgICAgICAgbmF0aXZlLnNldEF0dHJpYnV0ZU5TKG5hbWVzcGFjZVVSSSwgYXR0ck5hbWUsIGF0dHJWYWwpO1xuICAgIH0gZWxzZSB7XG4gICAgICAvLyBhdHRyTmFtZSBpcyBzdHJpbmc7XG4gICAgICBjb25zdCBhdHRyTmFtZSA9IHZhbHVlIGFzIHN0cmluZztcbiAgICAgIGNvbnN0IGF0dHJWYWwgPSBhdHRyc1srK2ldO1xuICAgICAgLy8gU3RhbmRhcmQgYXR0cmlidXRlc1xuICAgICAgbmdEZXZNb2RlICYmIG5nRGV2TW9kZS5yZW5kZXJlclNldEF0dHJpYnV0ZSsrO1xuICAgICAgaWYgKGlzQW5pbWF0aW9uUHJvcChhdHRyTmFtZSkpIHtcbiAgICAgICAgaWYgKGlzUHJvYykge1xuICAgICAgICAgIChyZW5kZXJlciBhcyBQcm9jZWR1cmFsUmVuZGVyZXIzKS5zZXRQcm9wZXJ0eShuYXRpdmUsIGF0dHJOYW1lLCBhdHRyVmFsKTtcbiAgICAgICAgfVxuICAgICAgfSBlbHNlIHtcbiAgICAgICAgaXNQcm9jID9cbiAgICAgICAgICAgIChyZW5kZXJlciBhcyBQcm9jZWR1cmFsUmVuZGVyZXIzKS5zZXRBdHRyaWJ1dGUobmF0aXZlLCBhdHRyTmFtZSwgYXR0clZhbCBhcyBzdHJpbmcpIDpcbiAgICAgICAgICAgIG5hdGl2ZS5zZXRBdHRyaWJ1dGUoYXR0ck5hbWUsIGF0dHJWYWwgYXMgc3RyaW5nKTtcbiAgICAgIH1cbiAgICAgIGkrKztcbiAgICB9XG4gIH1cblxuICAvLyBhbm90aGVyIHBpZWNlIG9mIGNvZGUgbWF5IGl0ZXJhdGUgb3ZlciB0aGUgc2FtZSBhdHRyaWJ1dGVzIGFycmF5LiBUaGVyZWZvcmVcbiAgLy8gaXQgbWF5IGJlIGhlbHBmdWwgdG8gcmV0dXJuIHRoZSBleGFjdCBzcG90IHdoZXJlIHRoZSBhdHRyaWJ1dGVzIGFycmF5IGV4aXRlZFxuICAvLyB3aGV0aGVyIGJ5IHJ1bm5pbmcgaW50byBhbiB1bnN1cHBvcnRlZCBtYXJrZXIgb3IgaWYgYWxsIHRoZSBzdGF0aWMgdmFsdWVzIHdlcmVcbiAgLy8gaXRlcmF0ZWQgb3Zlci5cbiAgcmV0dXJuIGk7XG59XG5cbi8qKlxuICogVGVzdCB3aGV0aGVyIHRoZSBnaXZlbiB2YWx1ZSBpcyBhIG1hcmtlciB0aGF0IGluZGljYXRlcyB0aGF0IHRoZSBmb2xsb3dpbmdcbiAqIGF0dHJpYnV0ZSB2YWx1ZXMgaW4gYSBgVEF0dHJpYnV0ZXNgIGFycmF5IGFyZSBvbmx5IHRoZSBuYW1lcyBvZiBhdHRyaWJ1dGVzLFxuICogYW5kIG5vdCBuYW1lLXZhbHVlIHBhaXJzLlxuICogQHBhcmFtIG1hcmtlciBUaGUgYXR0cmlidXRlIG1hcmtlciB0byB0ZXN0LlxuICogQHJldHVybnMgdHJ1ZSBpZiB0aGUgbWFya2VyIGlzIGEgXCJuYW1lLW9ubHlcIiBtYXJrZXIgKGUuZy4gYEJpbmRpbmdzYCwgYFRlbXBsYXRlYCBvciBgSTE4bmApLlxuICovXG5leHBvcnQgZnVuY3Rpb24gaXNOYW1lT25seUF0dHJpYnV0ZU1hcmtlcihtYXJrZXI6IHN0cmluZ3xBdHRyaWJ1dGVNYXJrZXJ8Q3NzU2VsZWN0b3IpIHtcbiAgcmV0dXJuIG1hcmtlciA9PT0gQXR0cmlidXRlTWFya2VyLkJpbmRpbmdzIHx8IG1hcmtlciA9PT0gQXR0cmlidXRlTWFya2VyLlRlbXBsYXRlIHx8XG4gICAgICBtYXJrZXIgPT09IEF0dHJpYnV0ZU1hcmtlci5JMThuO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaXNBbmltYXRpb25Qcm9wKG5hbWU6IHN0cmluZyk6IGJvb2xlYW4ge1xuICAvLyBQZXJmIG5vdGU6IGFjY2Vzc2luZyBjaGFyQ29kZUF0IHRvIGNoZWNrIGZvciB0aGUgZmlyc3QgY2hhcmFjdGVyIG9mIGEgc3RyaW5nIGlzIGZhc3RlciBhc1xuICAvLyBjb21wYXJlZCB0byBhY2Nlc3NpbmcgYSBjaGFyYWN0ZXIgYXQgaW5kZXggMCAoZXguIG5hbWVbMF0pLiBUaGUgbWFpbiByZWFzb24gZm9yIHRoaXMgaXMgdGhhdFxuICAvLyBjaGFyQ29kZUF0IGRvZXNuJ3QgYWxsb2NhdGUgbWVtb3J5IHRvIHJldHVybiBhIHN1YnN0cmluZy5cbiAgcmV0dXJuIG5hbWUuY2hhckNvZGVBdCgwKSA9PT0gQ2hhckNvZGUuQVRfU0lHTjtcbn1cblxuLyoqXG4gKiBNZXJnZXMgYHNyY2AgYFRBdHRyaWJ1dGVzYCBpbnRvIGBkc3RgIGBUQXR0cmlidXRlc2AgcmVtb3ZpbmcgYW55IGR1cGxpY2F0ZXMgaW4gdGhlIHByb2Nlc3MuXG4gKlxuICogVGhpcyBtZXJnZSBmdW5jdGlvbiBrZWVwcyB0aGUgb3JkZXIgb2YgYXR0cnMgc2FtZS5cbiAqXG4gKiBAcGFyYW0gZHN0IExvY2F0aW9uIG9mIHdoZXJlIHRoZSBtZXJnZWQgYFRBdHRyaWJ1dGVzYCBzaG91bGQgZW5kIHVwLlxuICogQHBhcmFtIHNyYyBgVEF0dHJpYnV0ZXNgIHdoaWNoIHNob3VsZCBiZSBhcHBlbmRlZCB0byBgZHN0YFxuICovXG5leHBvcnQgZnVuY3Rpb24gbWVyZ2VIb3N0QXR0cnMoZHN0OiBUQXR0cmlidXRlc3xudWxsLCBzcmM6IFRBdHRyaWJ1dGVzfG51bGwpOiBUQXR0cmlidXRlc3xudWxsIHtcbiAgaWYgKHNyYyA9PT0gbnVsbCB8fCBzcmMubGVuZ3RoID09PSAwKSB7XG4gICAgLy8gZG8gbm90aGluZ1xuICB9IGVsc2UgaWYgKGRzdCA9PT0gbnVsbCB8fCBkc3QubGVuZ3RoID09PSAwKSB7XG4gICAgLy8gV2UgaGF2ZSBzb3VyY2UsIGJ1dCBkc3QgaXMgZW1wdHksIGp1c3QgbWFrZSBhIGNvcHkuXG4gICAgZHN0ID0gc3JjLnNsaWNlKCk7XG4gIH0gZWxzZSB7XG4gICAgbGV0IHNyY01hcmtlcjogQXR0cmlidXRlTWFya2VyID0gQXR0cmlidXRlTWFya2VyLkltcGxpY2l0QXR0cmlidXRlcztcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IHNyYy5sZW5ndGg7IGkrKykge1xuICAgICAgY29uc3QgaXRlbSA9IHNyY1tpXTtcbiAgICAgIGlmICh0eXBlb2YgaXRlbSA9PT0gJ251bWJlcicpIHtcbiAgICAgICAgc3JjTWFya2VyID0gaXRlbTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIGlmIChzcmNNYXJrZXIgPT09IEF0dHJpYnV0ZU1hcmtlci5OYW1lc3BhY2VVUkkpIHtcbiAgICAgICAgICAvLyBDYXNlIHdoZXJlIHdlIG5lZWQgdG8gY29uc3VtZSBga2V5MWAsIGBrZXkyYCwgYHZhbHVlYCBpdGVtcy5cbiAgICAgICAgfSBlbHNlIGlmIChcbiAgICAgICAgICAgIHNyY01hcmtlciA9PT0gQXR0cmlidXRlTWFya2VyLkltcGxpY2l0QXR0cmlidXRlcyB8fFxuICAgICAgICAgICAgc3JjTWFya2VyID09PSBBdHRyaWJ1dGVNYXJrZXIuU3R5bGVzKSB7XG4gICAgICAgICAgLy8gQ2FzZSB3aGVyZSB3ZSBoYXZlIHRvIGNvbnN1bWUgYGtleTFgIGFuZCBgdmFsdWVgIG9ubHkuXG4gICAgICAgICAgbWVyZ2VIb3N0QXR0cmlidXRlKGRzdCwgc3JjTWFya2VyLCBpdGVtIGFzIHN0cmluZywgbnVsbCwgc3JjWysraV0gYXMgc3RyaW5nKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAvLyBDYXNlIHdoZXJlIHdlIGhhdmUgdG8gY29uc3VtZSBga2V5MWAgb25seS5cbiAgICAgICAgICBtZXJnZUhvc3RBdHRyaWJ1dGUoZHN0LCBzcmNNYXJrZXIsIGl0ZW0gYXMgc3RyaW5nLCBudWxsLCBudWxsKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuICByZXR1cm4gZHN0O1xufVxuXG4vKipcbiAqIEFwcGVuZCBga2V5YC9gdmFsdWVgIHRvIGV4aXN0aW5nIGBUQXR0cmlidXRlc2AgdGFraW5nIHJlZ2lvbiBtYXJrZXIgYW5kIGR1cGxpY2F0ZXMgaW50byBhY2NvdW50LlxuICpcbiAqIEBwYXJhbSBkc3QgYFRBdHRyaWJ1dGVzYCB0byBhcHBlbmQgdG8uXG4gKiBAcGFyYW0gbWFya2VyIFJlZ2lvbiB3aGVyZSB0aGUgYGtleWAvYHZhbHVlYCBzaG91bGQgYmUgYWRkZWQuXG4gKiBAcGFyYW0ga2V5MSBLZXkgdG8gYWRkIHRvIGBUQXR0cmlidXRlc2BcbiAqIEBwYXJhbSBrZXkyIEtleSB0byBhZGQgdG8gYFRBdHRyaWJ1dGVzYCAoaW4gY2FzZSBvZiBgQXR0cmlidXRlTWFya2VyLk5hbWVzcGFjZVVSSWApXG4gKiBAcGFyYW0gdmFsdWUgVmFsdWUgdG8gYWRkIG9yIHRvIG92ZXJ3cml0ZSB0byBgVEF0dHJpYnV0ZXNgIE9ubHkgdXNlZCBpZiBgbWFya2VyYCBpcyBub3QgQ2xhc3MuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBtZXJnZUhvc3RBdHRyaWJ1dGUoXG4gICAgZHN0OiBUQXR0cmlidXRlcywgbWFya2VyOiBBdHRyaWJ1dGVNYXJrZXIsIGtleTE6IHN0cmluZywga2V5Mjogc3RyaW5nfG51bGwsXG4gICAgdmFsdWU6IHN0cmluZ3xudWxsKTogdm9pZCB7XG4gIGxldCBpID0gMDtcbiAgLy8gQXNzdW1lIHRoYXQgbmV3IG1hcmtlcnMgd2lsbCBiZSBpbnNlcnRlZCBhdCB0aGUgZW5kLlxuICBsZXQgbWFya2VySW5zZXJ0UG9zaXRpb24gPSBkc3QubGVuZ3RoO1xuICAvLyBzY2FuIHVudGlsIGNvcnJlY3QgdHlwZS5cbiAgaWYgKG1hcmtlciA9PT0gQXR0cmlidXRlTWFya2VyLkltcGxpY2l0QXR0cmlidXRlcykge1xuICAgIG1hcmtlckluc2VydFBvc2l0aW9uID0gLTE7XG4gIH0gZWxzZSB7XG4gICAgd2hpbGUgKGkgPCBkc3QubGVuZ3RoKSB7XG4gICAgICBjb25zdCBkc3RWYWx1ZSA9IGRzdFtpKytdO1xuICAgICAgaWYgKHR5cGVvZiBkc3RWYWx1ZSA9PT0gJ251bWJlcicpIHtcbiAgICAgICAgaWYgKGRzdFZhbHVlID09PSBtYXJrZXIpIHtcbiAgICAgICAgICBtYXJrZXJJbnNlcnRQb3NpdGlvbiA9IC0xO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9IGVsc2UgaWYgKGRzdFZhbHVlID4gbWFya2VyKSB7XG4gICAgICAgICAgLy8gV2UgbmVlZCB0byBzYXZlIHRoaXMgYXMgd2Ugd2FudCB0aGUgbWFya2VycyB0byBiZSBpbnNlcnRlZCBpbiBzcGVjaWZpYyBvcmRlci5cbiAgICAgICAgICBtYXJrZXJJbnNlcnRQb3NpdGlvbiA9IGkgLSAxO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLy8gc2VhcmNoIHVudGlsIHlvdSBmaW5kIHBsYWNlIG9mIGluc2VydGlvblxuICB3aGlsZSAoaSA8IGRzdC5sZW5ndGgpIHtcbiAgICBjb25zdCBpdGVtID0gZHN0W2ldO1xuICAgIGlmICh0eXBlb2YgaXRlbSA9PT0gJ251bWJlcicpIHtcbiAgICAgIC8vIHNpbmNlIGBpYCBzdGFydGVkIGFzIHRoZSBpbmRleCBhZnRlciB0aGUgbWFya2VyLCB3ZSBkaWQgbm90IGZpbmQgaXQgaWYgd2UgYXJlIGF0IHRoZSBuZXh0XG4gICAgICAvLyBtYXJrZXJcbiAgICAgIGJyZWFrO1xuICAgIH0gZWxzZSBpZiAoaXRlbSA9PT0ga2V5MSkge1xuICAgICAgLy8gV2UgYWxyZWFkeSBoYXZlIHNhbWUgdG9rZW5cbiAgICAgIGlmIChrZXkyID09PSBudWxsKSB7XG4gICAgICAgIGlmICh2YWx1ZSAhPT0gbnVsbCkge1xuICAgICAgICAgIGRzdFtpICsgMV0gPSB2YWx1ZTtcbiAgICAgICAgfVxuICAgICAgICByZXR1cm47XG4gICAgICB9IGVsc2UgaWYgKGtleTIgPT09IGRzdFtpICsgMV0pIHtcbiAgICAgICAgZHN0W2kgKyAyXSA9IHZhbHVlITtcbiAgICAgICAgcmV0dXJuO1xuICAgICAgfVxuICAgIH1cbiAgICAvLyBJbmNyZW1lbnQgY291bnRlci5cbiAgICBpKys7XG4gICAgaWYgKGtleTIgIT09IG51bGwpIGkrKztcbiAgICBpZiAodmFsdWUgIT09IG51bGwpIGkrKztcbiAgfVxuXG4gIC8vIGluc2VydCBhdCBsb2NhdGlvbi5cbiAgaWYgKG1hcmtlckluc2VydFBvc2l0aW9uICE9PSAtMSkge1xuICAgIGRzdC5zcGxpY2UobWFya2VySW5zZXJ0UG9zaXRpb24sIDAsIG1hcmtlcik7XG4gICAgaSA9IG1hcmtlckluc2VydFBvc2l0aW9uICsgMTtcbiAgfVxuICBkc3Quc3BsaWNlKGkrKywgMCwga2V5MSk7XG4gIGlmIChrZXkyICE9PSBudWxsKSB7XG4gICAgZHN0LnNwbGljZShpKyssIDAsIGtleTIpO1xuICB9XG4gIGlmICh2YWx1ZSAhPT0gbnVsbCkge1xuICAgIGRzdC5zcGxpY2UoaSsrLCAwLCB2YWx1ZSk7XG4gIH1cbn1cbiJdfQ==