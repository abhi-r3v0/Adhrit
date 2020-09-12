/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { assertEqual, assertLessThanOrEqual } from './assert';
/**
 * Equivalent to ES6 spread, add each item to an array.
 *
 * @param items The items to add
 * @param arr The array to which you want to add the items
 */
export function addAllToArray(items, arr) {
    for (let i = 0; i < items.length; i++) {
        arr.push(items[i]);
    }
}
/**
 * Flattens an array.
 */
export function flatten(list, dst) {
    if (dst === undefined)
        dst = list;
    for (let i = 0; i < list.length; i++) {
        let item = list[i];
        if (Array.isArray(item)) {
            // we need to inline it.
            if (dst === list) {
                // Our assumption that the list was already flat was wrong and
                // we need to clone flat since we need to write to it.
                dst = list.slice(0, i);
            }
            flatten(item, dst);
        }
        else if (dst !== list) {
            dst.push(item);
        }
    }
    return dst;
}
export function deepForEach(input, fn) {
    input.forEach(value => Array.isArray(value) ? deepForEach(value, fn) : fn(value));
}
export function addToArray(arr, index, value) {
    // perf: array.push is faster than array.splice!
    if (index >= arr.length) {
        arr.push(value);
    }
    else {
        arr.splice(index, 0, value);
    }
}
export function removeFromArray(arr, index) {
    // perf: array.pop is faster than array.splice!
    if (index >= arr.length - 1) {
        return arr.pop();
    }
    else {
        return arr.splice(index, 1)[0];
    }
}
export function newArray(size, value) {
    const list = [];
    for (let i = 0; i < size; i++) {
        list.push(value);
    }
    return list;
}
/**
 * Remove item from array (Same as `Array.splice()` but faster.)
 *
 * `Array.splice()` is not as fast because it has to allocate an array for the elements which were
 * removed. This causes memory pressure and slows down code when most of the time we don't
 * care about the deleted items array.
 *
 * https://jsperf.com/fast-array-splice (About 20x faster)
 *
 * @param array Array to splice
 * @param index Index of element in array to remove.
 * @param count Number of items to remove.
 */
export function arraySplice(array, index, count) {
    const length = array.length - count;
    while (index < length) {
        array[index] = array[index + count];
        index++;
    }
    while (count--) {
        array.pop(); // shrink the array
    }
}
/**
 * Same as `Array.splice(index, 0, value)` but faster.
 *
 * `Array.splice()` is not fast because it has to allocate an array for the elements which were
 * removed. This causes memory pressure and slows down code when most of the time we don't
 * care about the deleted items array.
 *
 * @param array Array to splice.
 * @param index Index in array where the `value` should be added.
 * @param value Value to add to array.
 */
export function arrayInsert(array, index, value) {
    ngDevMode && assertLessThanOrEqual(index, array.length, 'Can\'t insert past array end.');
    let end = array.length;
    while (end > index) {
        const previousEnd = end - 1;
        array[end] = array[previousEnd];
        end = previousEnd;
    }
    array[index] = value;
}
/**
 * Same as `Array.splice2(index, 0, value1, value2)` but faster.
 *
 * `Array.splice()` is not fast because it has to allocate an array for the elements which were
 * removed. This causes memory pressure and slows down code when most of the time we don't
 * care about the deleted items array.
 *
 * @param array Array to splice.
 * @param index Index in array where the `value` should be added.
 * @param value1 Value to add to array.
 * @param value2 Value to add to array.
 */
export function arrayInsert2(array, index, value1, value2) {
    ngDevMode && assertLessThanOrEqual(index, array.length, 'Can\'t insert past array end.');
    let end = array.length;
    if (end == index) {
        // inserting at the end.
        array.push(value1, value2);
    }
    else if (end === 1) {
        // corner case when we have less items in array than we have items to insert.
        array.push(value2, array[0]);
        array[0] = value1;
    }
    else {
        end--;
        array.push(array[end - 1], array[end]);
        while (end > index) {
            const previousEnd = end - 2;
            array[end] = array[previousEnd];
            end--;
        }
        array[index] = value1;
        array[index + 1] = value2;
    }
}
/**
 * Insert a `value` into an `array` so that the array remains sorted.
 *
 * NOTE:
 * - Duplicates are not allowed, and are ignored.
 * - This uses binary search algorithm for fast inserts.
 *
 * @param array A sorted array to insert into.
 * @param value The value to insert.
 * @returns index of the inserted value.
 */
export function arrayInsertSorted(array, value) {
    let index = arrayIndexOfSorted(array, value);
    if (index < 0) {
        // if we did not find it insert it.
        index = ~index;
        arrayInsert(array, index, value);
    }
    return index;
}
/**
 * Remove `value` from a sorted `array`.
 *
 * NOTE:
 * - This uses binary search algorithm for fast removals.
 *
 * @param array A sorted array to remove from.
 * @param value The value to remove.
 * @returns index of the removed value.
 *   - positive index if value found and removed.
 *   - negative index if value not found. (`~index` to get the value where it should have been
 *     inserted)
 */
export function arrayRemoveSorted(array, value) {
    const index = arrayIndexOfSorted(array, value);
    if (index >= 0) {
        arraySplice(array, index, 1);
    }
    return index;
}
/**
 * Get an index of an `value` in a sorted `array`.
 *
 * NOTE:
 * - This uses binary search algorithm for fast removals.
 *
 * @param array A sorted array to binary search.
 * @param value The value to look for.
 * @returns index of the value.
 *   - positive index if value found.
 *   - negative index if value not found. (`~index` to get the value where it should have been
 *     located)
 */
export function arrayIndexOfSorted(array, value) {
    return _arrayIndexOfSorted(array, value, 0);
}
/**
 * Set a `value` for a `key`.
 *
 * @param keyValueArray to modify.
 * @param key The key to locate or create.
 * @param value The value to set for a `key`.
 * @returns index (always even) of where the value vas set.
 */
export function keyValueArraySet(keyValueArray, key, value) {
    let index = keyValueArrayIndexOf(keyValueArray, key);
    if (index >= 0) {
        // if we found it set it.
        keyValueArray[index | 1] = value;
    }
    else {
        index = ~index;
        arrayInsert2(keyValueArray, index, key, value);
    }
    return index;
}
/**
 * Retrieve a `value` for a `key` (on `undefined` if not found.)
 *
 * @param keyValueArray to search.
 * @param key The key to locate.
 * @return The `value` stored at the `key` location or `undefined if not found.
 */
export function keyValueArrayGet(keyValueArray, key) {
    const index = keyValueArrayIndexOf(keyValueArray, key);
    if (index >= 0) {
        // if we found it retrieve it.
        return keyValueArray[index | 1];
    }
    return undefined;
}
/**
 * Retrieve a `key` index value in the array or `-1` if not found.
 *
 * @param keyValueArray to search.
 * @param key The key to locate.
 * @returns index of where the key is (or should have been.)
 *   - positive (even) index if key found.
 *   - negative index if key not found. (`~index` (even) to get the index where it should have
 *     been inserted.)
 */
export function keyValueArrayIndexOf(keyValueArray, key) {
    return _arrayIndexOfSorted(keyValueArray, key, 1);
}
/**
 * Delete a `key` (and `value`) from the `KeyValueArray`.
 *
 * @param keyValueArray to modify.
 * @param key The key to locate or delete (if exist).
 * @returns index of where the key was (or should have been.)
 *   - positive (even) index if key found and deleted.
 *   - negative index if key not found. (`~index` (even) to get the index where it should have
 *     been.)
 */
export function keyValueArrayDelete(keyValueArray, key) {
    const index = keyValueArrayIndexOf(keyValueArray, key);
    if (index >= 0) {
        // if we found it remove it.
        arraySplice(keyValueArray, index, 2);
    }
    return index;
}
/**
 * INTERNAL: Get an index of an `value` in a sorted `array` by grouping search by `shift`.
 *
 * NOTE:
 * - This uses binary search algorithm for fast removals.
 *
 * @param array A sorted array to binary search.
 * @param value The value to look for.
 * @param shift grouping shift.
 *   - `0` means look at every location
 *   - `1` means only look at every other (even) location (the odd locations are to be ignored as
 *         they are values.)
 * @returns index of the value.
 *   - positive index if value found.
 *   - negative index if value not found. (`~index` to get the value where it should have been
 * inserted)
 */
function _arrayIndexOfSorted(array, value, shift) {
    ngDevMode && assertEqual(Array.isArray(array), true, 'Expecting an array');
    let start = 0;
    let end = array.length >> shift;
    while (end !== start) {
        const middle = start + ((end - start) >> 1); // find the middle.
        const current = array[middle << shift];
        if (value === current) {
            return (middle << shift);
        }
        else if (current > value) {
            end = middle;
        }
        else {
            start = middle + 1; // We already searched middle so make it non-inclusive by adding 1
        }
    }
    return ~(end << shift);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXJyYXlfdXRpbHMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy91dGlsL2FycmF5X3V0aWxzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBQyxXQUFXLEVBQUUscUJBQXFCLEVBQUMsTUFBTSxVQUFVLENBQUM7QUFFNUQ7Ozs7O0dBS0c7QUFDSCxNQUFNLFVBQVUsYUFBYSxDQUFDLEtBQVksRUFBRSxHQUFVO0lBQ3BELEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxLQUFLLENBQUMsTUFBTSxFQUFFLENBQUMsRUFBRSxFQUFFO1FBQ3JDLEdBQUcsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7S0FDcEI7QUFDSCxDQUFDO0FBRUQ7O0dBRUc7QUFDSCxNQUFNLFVBQVUsT0FBTyxDQUFDLElBQVcsRUFBRSxHQUFXO0lBQzlDLElBQUksR0FBRyxLQUFLLFNBQVM7UUFBRSxHQUFHLEdBQUcsSUFBSSxDQUFDO0lBQ2xDLEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxJQUFJLENBQUMsTUFBTSxFQUFFLENBQUMsRUFBRSxFQUFFO1FBQ3BDLElBQUksSUFBSSxHQUFHLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNuQixJQUFJLEtBQUssQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLEVBQUU7WUFDdkIsd0JBQXdCO1lBQ3hCLElBQUksR0FBRyxLQUFLLElBQUksRUFBRTtnQkFDaEIsOERBQThEO2dCQUM5RCxzREFBc0Q7Z0JBQ3RELEdBQUcsR0FBRyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQzthQUN4QjtZQUNELE9BQU8sQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLENBQUM7U0FDcEI7YUFBTSxJQUFJLEdBQUcs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QyxHQUFHLEdBQUcsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBRSxtQkFBbUI7UUFDakUsTUFBTSxPQUFPLEdBQUcsS0FBSyxDQUFDLE1BQU0sSUFBSSxLQUFLLENBQUMsQ0FBQztRQUN2QyxJQUFJLEtBQUssS0FBSyxPQUFPLEVBQUU7WUFDckIsT0FBTyxDQUFDLE1BQU0sSUFBSSxLQUFLLENBQUMsQ0FBQztTQUMxQjthQUFNLElBQUksT0FBTyxHQUFHLEtBQUssRUFBRTtZQUMxQixHQUFHLEdBQUcsTUFBTSxDQUFDO1NBQ2Q7YUFBTTtZQUNMLEtBQUssR0FBRyxNQUFNLEdBQUcsQ0FBQyxDQUFDLENBQUUsa0VBQWtFO1NBQ3hGO0tBQ0Y7SUFDRCxPQUFPLENBQUMsQ0FBQyxHQUFHLElBQUksS0FBSyxDQUFDLENBQUM7QUFDekIsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge2Fzc2VydEVxdWFsLCBhc3NlcnRMZXNzVGhhbk9yRXF1YWx9IGZyb20gJy4vYXNzZXJ0JztcblxuLyoqXG4gKiBFcXVpdmFsZW50IHRvIEVTNiBzcHJlYWQsIGFkZCBlYWNoIGl0ZW0gdG8gYW4gYXJyYXkuXG4gKlxuICogQHBhcmFtIGl0ZW1zIFRoZSBpdGVtcyB0byBhZGRcbiAqIEBwYXJhbSBhcnIgVGhlIGFycmF5IHRvIHdoaWNoIHlvdSB3YW50IHRvIGFkZCB0aGUgaXRlbXNcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGFkZEFsbFRvQXJyYXkoaXRlbXM6IGFueVtdLCBhcnI6IGFueVtdKSB7XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgaXRlbXMubGVuZ3RoOyBpKyspIHtcbiAgICBhcnIucHVzaChpdGVtc1tpXSk7XG4gIH1cbn1cblxuLyoqXG4gKiBGbGF0dGVucyBhbiBhcnJheS5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGZsYXR0ZW4obGlzdDogYW55W10sIGRzdD86IGFueVtdKTogYW55W10ge1xuICBpZiAoZHN0ID09PSB1bmRlZmluZWQpIGRzdCA9IGxpc3Q7XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgbGlzdC5sZW5ndGg7IGkrKykge1xuICAgIGxldCBpdGVtID0gbGlzdFtpXTtcbiAgICBpZiAoQXJyYXkuaXNBcnJheShpdGVtKSkge1xuICAgICAgLy8gd2UgbmVlZCB0byBpbmxpbmUgaXQuXG4gICAgICBpZiAoZHN0ID09PSBsaXN0KSB7XG4gICAgICAgIC8vIE91ciBhc3N1bXB0aW9uIHRoYXQgdGhlIGxpc3Qgd2FzIGFscmVhZHkgZmxhdCB3YXMgd3JvbmcgYW5kXG4gICAgICAgIC8vIHdlIG5lZWQgdG8gY2xvbmUgZmxhdCBzaW5jZSB3ZSBuZWVkIHRvIHdyaXRlIHRvIGl0LlxuICAgICAgICBkc3QgPSBsaXN0LnNsaWNlKDAsIGkpO1xuICAgICAgfVxuICAgICAgZmxhdHRlbihpdGVtLCBkc3QpO1xuICAgIH0gZWxzZSBpZiAoZHN0ICE9PSBsaXN0KSB7XG4gICAgICBkc3QucHVzaChpdGVtKTtcbiAgICB9XG4gIH1cbiAgcmV0dXJuIGRzdDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGRlZXBGb3JFYWNoPFQ+KGlucHV0OiAoVHxhbnlbXSlbXSwgZm46ICh2YWx1ZTogVCkgPT4gdm9pZCk6IHZvaWQge1xuICBpbnB1dC5mb3JFYWNoKHZhbHVlID0+IEFycmF5LmlzQXJyYXkodmFsdWUpID8gZGVlcEZvckVhY2godmFsdWUsIGZuKSA6IGZuKHZhbHVlKSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBhZGRUb0FycmF5KGFycjogYW55W10sIGluZGV4OiBudW1iZXIsIHZhbHVlOiBhbnkpOiB2b2lkIHtcbiAgLy8gcGVyZjogYXJyYXkucHVzaCBpcyBmYXN0ZXIgdGhhbiBhcnJheS5zcGxpY2UhXG4gIGlmIChpbmRleCA+PSBhcnIubGVuZ3RoKSB7XG4gICAgYXJyLnB1c2godmFsdWUpO1xuICB9IGVsc2Uge1xuICAgIGFyci5zcGxpY2UoaW5kZXgsIDAsIHZhbHVlKTtcbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gcmVtb3ZlRnJvbUFycmF5KGFycjogYW55W10sIGluZGV4OiBudW1iZXIpOiBhbnkge1xuICAvLyBwZXJmOiBhcnJheS5wb3AgaXMgZmFzdGVyIHRoYW4gYXJyYXkuc3BsaWNlIVxuICBpZiAoaW5kZXggPj0gYXJyLmxlbmd0aCAtIDEpIHtcbiAgICByZXR1cm4gYXJyLnBvcCgpO1xuICB9IGVsc2Uge1xuICAgIHJldHVybiBhcnIuc3BsaWNlKGluZGV4LCAxKVswXTtcbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gbmV3QXJyYXk8VCA9IGFueT4oc2l6ZTogbnVtYmVyKTogVFtdO1xuZXhwb3J0IGZ1bmN0aW9uIG5ld0FycmF5PFQ+KHNpemU6IG51bWJlciwgdmFsdWU6IFQpOiBUW107XG5leHBvcnQgZnVuY3Rpb24gbmV3QXJyYXk8VD4oc2l6ZTogbnVtYmVyLCB2YWx1ZT86IFQpOiBUW10ge1xuICBjb25zdCBsaXN0OiBUW10gPSBbXTtcbiAgZm9yIChsZXQgaSA9IDA7IGkgPCBzaXplOyBpKyspIHtcbiAgICBsaXN0LnB1c2godmFsdWUhKTtcbiAgfVxuICByZXR1cm4gbGlzdDtcbn1cblxuLyoqXG4gKiBSZW1vdmUgaXRlbSBmcm9tIGFycmF5IChTYW1lIGFzIGBBcnJheS5zcGxpY2UoKWAgYnV0IGZhc3Rlci4pXG4gKlxuICogYEFycmF5LnNwbGljZSgpYCBpcyBub3QgYXMgZmFzdCBiZWNhdXNlIGl0IGhhcyB0byBhbGxvY2F0ZSBhbiBhcnJheSBmb3IgdGhlIGVsZW1lbnRzIHdoaWNoIHdlcmVcbiAqIHJlbW92ZWQuIFRoaXMgY2F1c2VzIG1lbW9yeSBwcmVzc3VyZSBhbmQgc2xvd3MgZG93biBjb2RlIHdoZW4gbW9zdCBvZiB0aGUgdGltZSB3ZSBkb24ndFxuICogY2FyZSBhYm91dCB0aGUgZGVsZXRlZCBpdGVtcyBhcnJheS5cbiAqXG4gKiBodHRwczovL2pzcGVyZi5jb20vZmFzdC1hcnJheS1zcGxpY2UgKEFib3V0IDIweCBmYXN0ZXIpXG4gKlxuICogQHBhcmFtIGFycmF5IEFycmF5IHRvIHNwbGljZVxuICogQHBhcmFtIGluZGV4IEluZGV4IG9mIGVsZW1lbnQgaW4gYXJyYXkgdG8gcmVtb3ZlLlxuICogQHBhcmFtIGNvdW50IE51bWJlciBvZiBpdGVtcyB0byByZW1vdmUuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBhcnJheVNwbGljZShhcnJheTogYW55W10sIGluZGV4OiBudW1iZXIsIGNvdW50OiBudW1iZXIpOiB2b2lkIHtcbiAgY29uc3QgbGVuZ3RoID0gYXJyYXkubGVuZ3RoIC0gY291bnQ7XG4gIHdoaWxlIChpbmRleCA8IGxlbmd0aCkge1xuICAgIGFycmF5W2luZGV4XSA9IGFycmF5W2luZGV4ICsgY291bnRdO1xuICAgIGluZGV4Kys7XG4gIH1cbiAgd2hpbGUgKGNvdW50LS0pIHtcbiAgICBhcnJheS5wb3AoKTsgIC8vIHNocmluayB0aGUgYXJyYXlcbiAgfVxufVxuXG4vKipcbiAqIFNhbWUgYXMgYEFycmF5LnNwbGljZShpbmRleCwgMCwgdmFsdWUpYCBidXQgZmFzdGVyLlxuICpcbiAqIGBBcnJheS5zcGxpY2UoKWAgaXMgbm90IGZhc3QgYmVjYXVzZSBpdCBoYXMgdG8gYWxsb2NhdGUgYW4gYXJyYXkgZm9yIHRoZSBlbGVtZW50cyB3aGljaCB3ZXJlXG4gKiByZW1vdmVkLiBUaGlzIGNhdXNlcyBtZW1vcnkgcHJlc3N1cmUgYW5kIHNsb3dzIGRvd24gY29kZSB3aGVuIG1vc3Qgb2YgdGhlIHRpbWUgd2UgZG9uJ3RcbiAqIGNhcmUgYWJvdXQgdGhlIGRlbGV0ZWQgaXRlbXMgYXJyYXkuXG4gKlxuICogQHBhcmFtIGFycmF5IEFycmF5IHRvIHNwbGljZS5cbiAqIEBwYXJhbSBpbmRleCBJbmRleCBpbiBhcnJheSB3aGVyZSB0aGUgYHZhbHVlYCBzaG91bGQgYmUgYWRkZWQuXG4gKiBAcGFyYW0gdmFsdWUgVmFsdWUgdG8gYWRkIHRvIGFycmF5LlxuICovXG5leHBvcnQgZnVuY3Rpb24gYXJyYXlJbnNlcnQoYXJyYXk6IGFueVtdLCBpbmRleDogbnVtYmVyLCB2YWx1ZTogYW55KTogdm9pZCB7XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnRMZXNzVGhhbk9yRXF1YWwoaW5kZXgsIGFycmF5Lmxlbmd0aCwgJ0NhblxcJ3QgaW5zZXJ0IHBhc3QgYXJyYXkgZW5kLicpO1xuICBsZXQgZW5kID0gYXJyYXkubGVuZ3RoO1xuICB3aGlsZSAoZW5kID4gaW5kZXgpIHtcbiAgICBjb25zdCBwcmV2aW91c0VuZCA9IGVuZCAtIDE7XG4gICAgYXJyYXlbZW5kXSA9IGFycmF5W3ByZXZpb3VzRW5kXTtcbiAgICBlbmQgPSBwcmV2aW91c0VuZDtcbiAgfVxuICBhcnJheVtpbmRleF0gPSB2YWx1ZTtcbn1cblxuLyoqXG4gKiBTYW1lIGFzIGBBcnJheS5zcGxpY2UyKGluZGV4LCAwLCB2YWx1ZTEsIHZhbHVlMilgIGJ1dCBmYXN0ZXIuXG4gKlxuICogYEFycmF5LnNwbGljZSgpYCBpcyBub3QgZmFzdCBiZWNhdXNlIGl0IGhhcyB0byBhbGxvY2F0ZSBhbiBhcnJheSBmb3IgdGhlIGVsZW1lbnRzIHdoaWNoIHdlcmVcbiAqIHJlbW92ZWQuIFRoaXMgY2F1c2VzIG1lbW9yeSBwcmVzc3VyZSBhbmQgc2xvd3MgZG93biBjb2RlIHdoZW4gbW9zdCBvZiB0aGUgdGltZSB3ZSBkb24ndFxuICogY2FyZSBhYm91dCB0aGUgZGVsZXRlZCBpdGVtcyBhcnJheS5cbiAqXG4gKiBAcGFyYW0gYXJyYXkgQXJyYXkgdG8gc3BsaWNlLlxuICogQHBhcmFtIGluZGV4IEluZGV4IGluIGFycmF5IHdoZXJlIHRoZSBgdmFsdWVgIHNob3VsZCBiZSBhZGRlZC5cbiAqIEBwYXJhbSB2YWx1ZTEgVmFsdWUgdG8gYWRkIHRvIGFycmF5LlxuICogQHBhcmFtIHZhbHVlMiBWYWx1ZSB0byBhZGQgdG8gYXJyYXkuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBhcnJheUluc2VydDIoYXJyYXk6IGFueVtdLCBpbmRleDogbnVtYmVyLCB2YWx1ZTE6IGFueSwgdmFsdWUyOiBhbnkpOiB2b2lkIHtcbiAgbmdEZXZNb2RlICYmIGFzc2VydExlc3NUaGFuT3JFcXVhbChpbmRleCwgYXJyYXkubGVuZ3RoLCAnQ2FuXFwndCBpbnNlcnQgcGFzdCBhcnJheSBlbmQuJyk7XG4gIGxldCBlbmQgPSBhcnJheS5sZW5ndGg7XG4gIGlmIChlbmQgPT0gaW5kZXgpIHtcbiAgICAvLyBpbnNlcnRpbmcgYXQgdGhlIGVuZC5cbiAgICBhcnJheS5wdXNoKHZhbHVlMSwgdmFsdWUyKTtcbiAgfSBlbHNlIGlmIChlbmQgPT09IDEpIHtcbiAgICAvLyBjb3JuZXIgY2FzZSB3aGVuIHdlIGhhdmUgbGVzcyBpdGVtcyBpbiBhcnJheSB0aGFuIHdlIGhhdmUgaXRlbXMgdG8gaW5zZXJ0LlxuICAgIGFycmF5LnB1c2godmFsdWUyLCBhcnJheVswXSk7XG4gICAgYXJyYXlbMF0gPSB2YWx1ZTE7XG4gIH0gZWxzZSB7XG4gICAgZW5kLS07XG4gICAgYXJyYXkucHVzaChhcnJheVtlbmQgLSAxXSwgYXJyYXlbZW5kXSk7XG4gICAgd2hpbGUgKGVuZCA+IGluZGV4KSB7XG4gICAgICBjb25zdCBwcmV2aW91c0VuZCA9IGVuZCAtIDI7XG4gICAgICBhcnJheVtlbmRdID0gYXJyYXlbcHJldmlvdXNFbmRdO1xuICAgICAgZW5kLS07XG4gICAgfVxuICAgIGFycmF5W2luZGV4XSA9IHZhbHVlMTtcbiAgICBhcnJheVtpbmRleCArIDFdID0gdmFsdWUyO1xuICB9XG59XG5cbi8qKlxuICogSW5zZXJ0IGEgYHZhbHVlYCBpbnRvIGFuIGBhcnJheWAgc28gdGhhdCB0aGUgYXJyYXkgcmVtYWlucyBzb3J0ZWQuXG4gKlxuICogTk9URTpcbiAqIC0gRHVwbGljYXRlcyBhcmUgbm90IGFsbG93ZWQsIGFuZCBhcmUgaWdub3JlZC5cbiAqIC0gVGhpcyB1c2VzIGJpbmFyeSBzZWFyY2ggYWxnb3JpdGhtIGZvciBmYXN0IGluc2VydHMuXG4gKlxuICogQHBhcmFtIGFycmF5IEEgc29ydGVkIGFycmF5IHRvIGluc2VydCBpbnRvLlxuICogQHBhcmFtIHZhbHVlIFRoZSB2YWx1ZSB0byBpbnNlcnQuXG4gKiBAcmV0dXJucyBpbmRleCBvZiB0aGUgaW5zZXJ0ZWQgdmFsdWUuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBhcnJheUluc2VydFNvcnRlZChhcnJheTogc3RyaW5nW10sIHZhbHVlOiBzdHJpbmcpOiBudW1iZXIge1xuICBsZXQgaW5kZXggPSBhcnJheUluZGV4T2ZTb3J0ZWQoYXJyYXksIHZhbHVlKTtcbiAgaWYgKGluZGV4IDwgMCkge1xuICAgIC8vIGlmIHdlIGRpZCBub3QgZmluZCBpdCBpbnNlcnQgaXQuXG4gICAgaW5kZXggPSB+aW5kZXg7XG4gICAgYXJyYXlJbnNlcnQoYXJyYXksIGluZGV4LCB2YWx1ZSk7XG4gIH1cbiAgcmV0dXJuIGluZGV4O1xufVxuXG4vKipcbiAqIFJlbW92ZSBgdmFsdWVgIGZyb20gYSBzb3J0ZWQgYGFycmF5YC5cbiAqXG4gKiBOT1RFOlxuICogLSBUaGlzIHVzZXMgYmluYXJ5IHNlYXJjaCBhbGdvcml0aG0gZm9yIGZhc3QgcmVtb3ZhbHMuXG4gKlxuICogQHBhcmFtIGFycmF5IEEgc29ydGVkIGFycmF5IHRvIHJlbW92ZSBmcm9tLlxuICogQHBhcmFtIHZhbHVlIFRoZSB2YWx1ZSB0byByZW1vdmUuXG4gKiBAcmV0dXJucyBpbmRleCBvZiB0aGUgcmVtb3ZlZCB2YWx1ZS5cbiAqICAgLSBwb3NpdGl2ZSBpbmRleCBpZiB2YWx1ZSBmb3VuZCBhbmQgcmVtb3ZlZC5cbiAqICAgLSBuZWdhdGl2ZSBpbmRleCBpZiB2YWx1ZSBub3QgZm91bmQuIChgfmluZGV4YCB0byBnZXQgdGhlIHZhbHVlIHdoZXJlIGl0IHNob3VsZCBoYXZlIGJlZW5cbiAqICAgICBpbnNlcnRlZClcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGFycmF5UmVtb3ZlU29ydGVkKGFycmF5OiBzdHJpbmdbXSwgdmFsdWU6IHN0cmluZyk6IG51bWJlciB7XG4gIGNvbnN0IGluZGV4ID0gYXJyYXlJbmRleE9mU29ydGVkKGFycmF5LCB2YWx1ZSk7XG4gIGlmIChpbmRleCA+PSAwKSB7XG4gICAgYXJyYXlTcGxpY2UoYXJyYXksIGluZGV4LCAxKTtcbiAgfVxuICByZXR1cm4gaW5kZXg7XG59XG5cblxuLyoqXG4gKiBHZXQgYW4gaW5kZXggb2YgYW4gYHZhbHVlYCBpbiBhIHNvcnRlZCBgYXJyYXlgLlxuICpcbiAqIE5PVEU6XG4gKiAtIFRoaXMgdXNlcyBiaW5hcnkgc2VhcmNoIGFsZ29yaXRobSBmb3IgZmFzdCByZW1vdmFscy5cbiAqXG4gKiBAcGFyYW0gYXJyYXkgQSBzb3J0ZWQgYXJyYXkgdG8gYmluYXJ5IHNlYXJjaC5cbiAqIEBwYXJhbSB2YWx1ZSBUaGUgdmFsdWUgdG8gbG9vayBmb3IuXG4gKiBAcmV0dXJucyBpbmRleCBvZiB0aGUgdmFsdWUuXG4gKiAgIC0gcG9zaXRpdmUgaW5kZXggaWYgdmFsdWUgZm91bmQuXG4gKiAgIC0gbmVnYXRpdmUgaW5kZXggaWYgdmFsdWUgbm90IGZvdW5kLiAoYH5pbmRleGAgdG8gZ2V0IHRoZSB2YWx1ZSB3aGVyZSBpdCBzaG91bGQgaGF2ZSBiZWVuXG4gKiAgICAgbG9jYXRlZClcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGFycmF5SW5kZXhPZlNvcnRlZChhcnJheTogc3RyaW5nW10sIHZhbHVlOiBzdHJpbmcpOiBudW1iZXIge1xuICByZXR1cm4gX2FycmF5SW5kZXhPZlNvcnRlZChhcnJheSwgdmFsdWUsIDApO1xufVxuXG5cbi8qKlxuICogYEtleVZhbHVlQXJyYXlgIGlzIGFuIGFycmF5IHdoZXJlIGV2ZW4gcG9zaXRpb25zIGNvbnRhaW4ga2V5cyBhbmQgb2RkIHBvc2l0aW9ucyBjb250YWluIHZhbHVlcy5cbiAqXG4gKiBgS2V5VmFsdWVBcnJheWAgcHJvdmlkZXMgYSB2ZXJ5IGVmZmljaWVudCB3YXkgb2YgaXRlcmF0aW5nIG92ZXIgaXRzIGNvbnRlbnRzLiBGb3Igc21hbGxcbiAqIHNldHMgKH4xMCkgdGhlIGNvc3Qgb2YgYmluYXJ5IHNlYXJjaGluZyBhbiBgS2V5VmFsdWVBcnJheWAgaGFzIGFib3V0IHRoZSBzYW1lIHBlcmZvcm1hbmNlXG4gKiBjaGFyYWN0ZXJpc3RpY3MgdGhhdCBvZiBhIGBNYXBgIHdpdGggc2lnbmlmaWNhbnRseSBiZXR0ZXIgbWVtb3J5IGZvb3RwcmludC5cbiAqXG4gKiBJZiB1c2VkIGFzIGEgYE1hcGAgdGhlIGtleXMgYXJlIHN0b3JlZCBpbiBhbHBoYWJldGljYWwgb3JkZXIgc28gdGhhdCB0aGV5IGNhbiBiZSBiaW5hcnkgc2VhcmNoZWRcbiAqIGZvciByZXRyaWV2YWwuXG4gKlxuICogU2VlOiBga2V5VmFsdWVBcnJheVNldGAsIGBrZXlWYWx1ZUFycmF5R2V0YCwgYGtleVZhbHVlQXJyYXlJbmRleE9mYCwgYGtleVZhbHVlQXJyYXlEZWxldGVgLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIEtleVZhbHVlQXJyYXk8VkFMVUU+IGV4dGVuZHMgQXJyYXk8VkFMVUV8c3RyaW5nPiB7XG4gIF9fYnJhbmRfXzogJ2FycmF5LW1hcCc7XG59XG5cbi8qKlxuICogU2V0IGEgYHZhbHVlYCBmb3IgYSBga2V5YC5cbiAqXG4gKiBAcGFyYW0ga2V5VmFsdWVBcnJheSB0byBtb2RpZnkuXG4gKiBAcGFyYW0ga2V5IFRoZSBrZXkgdG8gbG9jYXRlIG9yIGNyZWF0ZS5cbiAqIEBwYXJhbSB2YWx1ZSBUaGUgdmFsdWUgdG8gc2V0IGZvciBhIGBrZXlgLlxuICogQHJldHVybnMgaW5kZXggKGFsd2F5cyBldmVuKSBvZiB3aGVyZSB0aGUgdmFsdWUgdmFzIHNldC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGtleVZhbHVlQXJyYXlTZXQ8Vj4oXG4gICAga2V5VmFsdWVBcnJheTogS2V5VmFsdWVBcnJheTxWPiwga2V5OiBzdHJpbmcsIHZhbHVlOiBWKTogbnVtYmVyIHtcbiAgbGV0IGluZGV4ID0ga2V5VmFsdWVBcnJheUluZGV4T2Yoa2V5VmFsdWVBcnJheSwga2V5KTtcbiAgaWYgKGluZGV4ID49IDApIHtcbiAgICAvLyBpZiB3ZSBmb3VuZCBpdCBzZXQgaXQuXG4gICAga2V5VmFsdWVBcnJheVtpbmRleCB8IDFdID0gdmFsdWU7XG4gIH0gZWxzZSB7XG4gICAgaW5kZXggPSB+aW5kZXg7XG4gICAgYXJyYXlJbnNlcnQyKGtleVZhbHVlQXJyYXksIGluZGV4LCBrZXksIHZhbHVlKTtcbiAgfVxuICByZXR1cm4gaW5kZXg7XG59XG5cbi8qKlxuICogUmV0cmlldmUgYSBgdmFsdWVgIGZvciBhIGBrZXlgIChvbiBgdW5kZWZpbmVkYCBpZiBub3QgZm91bmQuKVxuICpcbiAqIEBwYXJhbSBrZXlWYWx1ZUFycmF5IHRvIHNlYXJjaC5cbiAqIEBwYXJhbSBrZXkgVGhlIGtleSB0byBsb2NhdGUuXG4gKiBAcmV0dXJuIFRoZSBgdmFsdWVgIHN0b3JlZCBhdCB0aGUgYGtleWAgbG9jYXRpb24gb3IgYHVuZGVmaW5lZCBpZiBub3QgZm91bmQuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBrZXlWYWx1ZUFycmF5R2V0PFY+KGtleVZhbHVlQXJyYXk6IEtleVZhbHVlQXJyYXk8Vj4sIGtleTogc3RyaW5nKTogVnx1bmRlZmluZWQge1xuICBjb25zdCBpbmRleCA9IGtleVZhbHVlQXJyYXlJbmRleE9mKGtleVZhbHVlQXJyYXksIGtleSk7XG4gIGlmIChpbmRleCA+PSAwKSB7XG4gICAgLy8gaWYgd2UgZm91bmQgaXQgcmV0cmlldmUgaXQuXG4gICAgcmV0dXJuIGtleVZhbHVlQXJyYXlbaW5kZXggfCAxXSBhcyBWO1xuICB9XG4gIHJldHVybiB1bmRlZmluZWQ7XG59XG5cbi8qKlxuICogUmV0cmlldmUgYSBga2V5YCBpbmRleCB2YWx1ZSBpbiB0aGUgYXJyYXkgb3IgYC0xYCBpZiBub3QgZm91bmQuXG4gKlxuICogQHBhcmFtIGtleVZhbHVlQXJyYXkgdG8gc2VhcmNoLlxuICogQHBhcmFtIGtleSBUaGUga2V5IHRvIGxvY2F0ZS5cbiAqIEByZXR1cm5zIGluZGV4IG9mIHdoZXJlIHRoZSBrZXkgaXMgKG9yIHNob3VsZCBoYXZlIGJlZW4uKVxuICogICAtIHBvc2l0aXZlIChldmVuKSBpbmRleCBpZiBrZXkgZm91bmQuXG4gKiAgIC0gbmVnYXRpdmUgaW5kZXggaWYga2V5IG5vdCBmb3VuZC4gKGB+aW5kZXhgIChldmVuKSB0byBnZXQgdGhlIGluZGV4IHdoZXJlIGl0IHNob3VsZCBoYXZlXG4gKiAgICAgYmVlbiBpbnNlcnRlZC4pXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBrZXlWYWx1ZUFycmF5SW5kZXhPZjxWPihrZXlWYWx1ZUFycmF5OiBLZXlWYWx1ZUFycmF5PFY+LCBrZXk6IHN0cmluZyk6IG51bWJlciB7XG4gIHJldHVybiBfYXJyYXlJbmRleE9mU29ydGVkKGtleVZhbHVlQXJyYXkgYXMgc3RyaW5nW10sIGtleSwgMSk7XG59XG5cbi8qKlxuICogRGVsZXRlIGEgYGtleWAgKGFuZCBgdmFsdWVgKSBmcm9tIHRoZSBgS2V5VmFsdWVBcnJheWAuXG4gKlxuICogQHBhcmFtIGtleVZhbHVlQXJyYXkgdG8gbW9kaWZ5LlxuICogQHBhcmFtIGtleSBUaGUga2V5IHRvIGxvY2F0ZSBvciBkZWxldGUgKGlmIGV4aXN0KS5cbiAqIEByZXR1cm5zIGluZGV4IG9mIHdoZXJlIHRoZSBrZXkgd2FzIChvciBzaG91bGQgaGF2ZSBiZWVuLilcbiAqICAgLSBwb3NpdGl2ZSAoZXZlbikgaW5kZXggaWYga2V5IGZvdW5kIGFuZCBkZWxldGVkLlxuICogICAtIG5lZ2F0aXZlIGluZGV4IGlmIGtleSBub3QgZm91bmQuIChgfmluZGV4YCAoZXZlbikgdG8gZ2V0IHRoZSBpbmRleCB3aGVyZSBpdCBzaG91bGQgaGF2ZVxuICogICAgIGJlZW4uKVxuICovXG5leHBvcnQgZnVuY3Rpb24ga2V5VmFsdWVBcnJheURlbGV0ZTxWPihrZXlWYWx1ZUFycmF5OiBLZXlWYWx1ZUFycmF5PFY+LCBrZXk6IHN0cmluZyk6IG51bWJlciB7XG4gIGNvbnN0IGluZGV4ID0ga2V5VmFsdWVBcnJheUluZGV4T2Yoa2V5VmFsdWVBcnJheSwga2V5KTtcbiAgaWYgKGluZGV4ID49IDApIHtcbiAgICAvLyBpZiB3ZSBmb3VuZCBpdCByZW1vdmUgaXQuXG4gICAgYXJyYXlTcGxpY2Uoa2V5VmFsdWVBcnJheSwgaW5kZXgsIDIpO1xuICB9XG4gIHJldHVybiBpbmRleDtcbn1cblxuXG4vKipcbiAqIElOVEVSTkFMOiBHZXQgYW4gaW5kZXggb2YgYW4gYHZhbHVlYCBpbiBhIHNvcnRlZCBgYXJyYXlgIGJ5IGdyb3VwaW5nIHNlYXJjaCBieSBgc2hpZnRgLlxuICpcbiAqIE5PVEU6XG4gKiAtIFRoaXMgdXNlcyBiaW5hcnkgc2VhcmNoIGFsZ29yaXRobSBmb3IgZmFzdCByZW1vdmFscy5cbiAqXG4gKiBAcGFyYW0gYXJyYXkgQSBzb3J0ZWQgYXJyYXkgdG8gYmluYXJ5IHNlYXJjaC5cbiAqIEBwYXJhbSB2YWx1ZSBUaGUgdmFsdWUgdG8gbG9vayBmb3IuXG4gKiBAcGFyYW0gc2hpZnQgZ3JvdXBpbmcgc2hpZnQuXG4gKiAgIC0gYDBgIG1lYW5zIGxvb2sgYXQgZXZlcnkgbG9jYXRpb25cbiAqICAgLSBgMWAgbWVhbnMgb25seSBsb29rIGF0IGV2ZXJ5IG90aGVyIChldmVuKSBsb2NhdGlvbiAodGhlIG9kZCBsb2NhdGlvbnMgYXJlIHRvIGJlIGlnbm9yZWQgYXNcbiAqICAgICAgICAgdGhleSBhcmUgdmFsdWVzLilcbiAqIEByZXR1cm5zIGluZGV4IG9mIHRoZSB2YWx1ZS5cbiAqICAgLSBwb3NpdGl2ZSBpbmRleCBpZiB2YWx1ZSBmb3VuZC5cbiAqICAgLSBuZWdhdGl2ZSBpbmRleCBpZiB2YWx1ZSBub3QgZm91bmQuIChgfmluZGV4YCB0byBnZXQgdGhlIHZhbHVlIHdoZXJlIGl0IHNob3VsZCBoYXZlIGJlZW5cbiAqIGluc2VydGVkKVxuICovXG5mdW5jdGlvbiBfYXJyYXlJbmRleE9mU29ydGVkKGFycmF5OiBzdHJpbmdbXSwgdmFsdWU6IHN0cmluZywgc2hpZnQ6IG51bWJlcik6IG51bWJlciB7XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnRFcXVhbChBcnJheS5pc0FycmF5KGFycmF5KSwgdHJ1ZSwgJ0V4cGVjdGluZyBhbiBhcnJheScpO1xuICBsZXQgc3RhcnQgPSAwO1xuICBsZXQgZW5kID0gYXJyYXkubGVuZ3RoID4+IHNoaWZ0O1xuICB3aGlsZSAoZW5kICE9PSBzdGFydCkge1xuICAgIGNvbnN0IG1pZGRsZSA9IHN0YXJ0ICsgKChlbmQgLSBzdGFydCkgPj4gMSk7ICAvLyBmaW5kIHRoZSBtaWRkbGUuXG4gICAgY29uc3QgY3VycmVudCA9IGFycmF5W21pZGRsZSA8PCBzaGlmdF07XG4gICAgaWYgKHZhbHVlID09PSBjdXJyZW50KSB7XG4gICAgICByZXR1cm4gKG1pZGRsZSA8PCBzaGlmdCk7XG4gICAgfSBlbHNlIGlmIChjdXJyZW50ID4gdmFsdWUpIHtcbiAgICAgIGVuZCA9IG1pZGRsZTtcbiAgICB9IGVsc2Uge1xuICAgICAgc3RhcnQgPSBtaWRkbGUgKyAxOyAgLy8gV2UgYWxyZWFkeSBzZWFyY2hlZCBtaWRkbGUgc28gbWFrZSBpdCBub24taW5jbHVzaXZlIGJ5IGFkZGluZyAxXG4gICAgfVxuICB9XG4gIHJldHVybiB+KGVuZCA8PCBzaGlmdCk7XG59XG4iXX0=