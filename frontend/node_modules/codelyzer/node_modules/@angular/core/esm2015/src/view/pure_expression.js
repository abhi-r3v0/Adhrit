/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/view/pure_expression.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { newArray } from '../util/array_utils';
import { asPureExpressionData } from './types';
import { calcBindingFlags, checkAndUpdateBinding } from './util';
/**
 * @param {?} checkIndex
 * @param {?} argCount
 * @return {?}
 */
export function purePipeDef(checkIndex, argCount) {
    // argCount + 1 to include the pipe as first arg
    return _pureExpressionDef(128 /* TypePurePipe */, checkIndex, newArray(argCount + 1));
}
/**
 * @param {?} checkIndex
 * @param {?} argCount
 * @return {?}
 */
export function pureArrayDef(checkIndex, argCount) {
    return _pureExpressionDef(32 /* TypePureArray */, checkIndex, newArray(argCount));
}
/**
 * @param {?} checkIndex
 * @param {?} propToIndex
 * @return {?}
 */
export function pureObjectDef(checkIndex, propToIndex) {
    /** @type {?} */
    const keys = Object.keys(propToIndex);
    /** @type {?} */
    const nbKeys = keys.length;
    /** @type {?} */
    const propertyNames = [];
    for (let i = 0; i < nbKeys; i++) {
        /** @type {?} */
        const key = keys[i];
        /** @type {?} */
        const index = propToIndex[key];
        propertyNames.push(key);
    }
    return _pureExpressionDef(64 /* TypePureObject */, checkIndex, propertyNames);
}
/**
 * @param {?} flags
 * @param {?} checkIndex
 * @param {?} propertyNames
 * @return {?}
 */
function _pureExpressionDef(flags, checkIndex, propertyNames) {
    /** @type {?} */
    const bindings = [];
    for (let i = 0; i < propertyNames.length; i++) {
        /** @type {?} */
        const prop = propertyNames[i];
        bindings.push({
            flags: 8 /* TypeProperty */,
            name: prop,
            ns: null,
            nonMinifiedName: prop,
            securityContext: null,
            suffix: null
        });
    }
    return {
        // will bet set by the view definition
        nodeIndex: -1,
        parent: null,
        renderParent: null,
        bindingIndex: -1,
        outputIndex: -1,
        // regular values
        checkIndex,
        flags,
        childFlags: 0,
        directChildFlags: 0,
        childMatchedQueries: 0,
        matchedQueries: {},
        matchedQueryIds: 0,
        references: {},
        ngContentIndex: -1,
        childCount: 0, bindings,
        bindingFlags: calcBindingFlags(bindings),
        outputs: [],
        element: null,
        provider: null,
        text: null,
        query: null,
        ngContent: null
    };
}
/**
 * @param {?} view
 * @param {?} def
 * @return {?}
 */
export function createPureExpression(view, def) {
    return { value: undefined };
}
/**
 * @param {?} view
 * @param {?} def
 * @param {?} v0
 * @param {?} v1
 * @param {?} v2
 * @param {?} v3
 * @param {?} v4
 * @param {?} v5
 * @param {?} v6
 * @param {?} v7
 * @param {?} v8
 * @param {?} v9
 * @return {?}
 */
export function checkAndUpdatePureExpressionInline(view, def, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9) {
    /** @type {?} */
    const bindings = def.bindings;
    /** @type {?} */
    let changed = false;
    /** @type {?} */
    const bindLen = bindings.length;
    if (bindLen > 0 && checkAndUpdateBinding(view, def, 0, v0))
        changed = true;
    if (bindLen > 1 && checkAndUpdateBinding(view, def, 1, v1))
        changed = true;
    if (bindLen > 2 && checkAndUpdateBinding(view, def, 2, v2))
        changed = true;
    if (bindLen > 3 && checkAndUpdateBinding(view, def, 3, v3))
        changed = true;
    if (bindLen > 4 && checkAndUpdateBinding(view, def, 4, v4))
        changed = true;
    if (bindLen > 5 && checkAndUpdateBinding(view, def, 5, v5))
        changed = true;
    if (bindLen > 6 && checkAndUpdateBinding(view, def, 6, v6))
        changed = true;
    if (bindLen > 7 && checkAndUpdateBinding(view, def, 7, v7))
        changed = true;
    if (bindLen > 8 && checkAndUpdateBinding(view, def, 8, v8))
        changed = true;
    if (bindLen > 9 && checkAndUpdateBinding(view, def, 9, v9))
        changed = true;
    if (changed) {
        /** @type {?} */
        const data = asPureExpressionData(view, def.nodeIndex);
        /** @type {?} */
        let value;
        switch (def.flags & 201347067 /* Types */) {
            case 32 /* TypePureArray */:
                value = [];
                if (bindLen > 0)
                    value.push(v0);
                if (bindLen > 1)
                    value.push(v1);
                if (bindLen > 2)
                    value.push(v2);
                if (bindLen > 3)
                    value.push(v3);
                if (bindLen > 4)
                    value.push(v4);
                if (bindLen > 5)
                    value.push(v5);
                if (bindLen > 6)
                    value.push(v6);
                if (bindLen > 7)
                    value.push(v7);
                if (bindLen > 8)
                    value.push(v8);
                if (bindLen > 9)
                    value.push(v9);
                break;
            case 64 /* TypePureObject */:
                value = {};
                if (bindLen > 0)
                    value[(/** @type {?} */ (bindings[0].name))] = v0;
                if (bindLen > 1)
                    value[(/** @type {?} */ (bindings[1].name))] = v1;
                if (bindLen > 2)
                    value[(/** @type {?} */ (bindings[2].name))] = v2;
                if (bindLen > 3)
                    value[(/** @type {?} */ (bindings[3].name))] = v3;
                if (bindLen > 4)
                    value[(/** @type {?} */ (bindings[4].name))] = v4;
                if (bindLen > 5)
                    value[(/** @type {?} */ (bindings[5].name))] = v5;
                if (bindLen > 6)
                    value[(/** @type {?} */ (bindings[6].name))] = v6;
                if (bindLen > 7)
                    value[(/** @type {?} */ (bindings[7].name))] = v7;
                if (bindLen > 8)
                    value[(/** @type {?} */ (bindings[8].name))] = v8;
                if (bindLen > 9)
                    value[(/** @type {?} */ (bindings[9].name))] = v9;
                break;
            case 128 /* TypePurePipe */:
                /** @type {?} */
                const pipe = v0;
                switch (bindLen) {
                    case 1:
                        value = pipe.transform(v0);
                        break;
                    case 2:
                        value = pipe.transform(v1);
                        break;
                    case 3:
                        value = pipe.transform(v1, v2);
                        break;
                    case 4:
                        value = pipe.transform(v1, v2, v3);
                        break;
                    case 5:
                        value = pipe.transform(v1, v2, v3, v4);
                        break;
                    case 6:
                        value = pipe.transform(v1, v2, v3, v4, v5);
                        break;
                    case 7:
                        value = pipe.transform(v1, v2, v3, v4, v5, v6);
                        break;
                    case 8:
                        value = pipe.transform(v1, v2, v3, v4, v5, v6, v7);
                        break;
                    case 9:
                        value = pipe.transform(v1, v2, v3, v4, v5, v6, v7, v8);
                        break;
                    case 10:
                        value = pipe.transform(v1, v2, v3, v4, v5, v6, v7, v8, v9);
                        break;
                }
                break;
        }
        data.value = value;
    }
    return changed;
}
/**
 * @param {?} view
 * @param {?} def
 * @param {?} values
 * @return {?}
 */
export function checkAndUpdatePureExpressionDynamic(view, def, values) {
    /** @type {?} */
    const bindings = def.bindings;
    /** @type {?} */
    let changed = false;
    for (let i = 0; i < values.length; i++) {
        // Note: We need to loop over all values, so that
        // the old values are updates as well!
        if (checkAndUpdateBinding(view, def, i, values[i])) {
            changed = true;
        }
    }
    if (changed) {
        /** @type {?} */
        const data = asPureExpressionData(view, def.nodeIndex);
        /** @type {?} */
        let value;
        switch (def.flags & 201347067 /* Types */) {
            case 32 /* TypePureArray */:
                value = values;
                break;
            case 64 /* TypePureObject */:
                value = {};
                for (let i = 0; i < values.length; i++) {
                    value[(/** @type {?} */ (bindings[i].name))] = values[i];
                }
                break;
            case 128 /* TypePurePipe */:
                /** @type {?} */
                const pipe = values[0];
                /** @type {?} */
                const params = values.slice(1);
                value = ((/** @type {?} */ (pipe.transform)))(...params);
                break;
        }
        data.value = value;
    }
    return changed;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicHVyZV9leHByZXNzaW9uLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvdmlldy9wdXJlX2V4cHJlc3Npb24udHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBUUEsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLHFCQUFxQixDQUFDO0FBRTdDLE9BQU8sRUFBNkUsb0JBQW9CLEVBQUMsTUFBTSxTQUFTLENBQUM7QUFDekgsT0FBTyxFQUFDLGdCQUFnQixFQUFFLHFCQUFxQixFQUFDLE1BQU0sUUFBUSxDQUFDOzs7Ozs7QUFFL0QsTUFBTSxVQUFVLFdBQVcsQ0FBQyxVQUFrQixFQUFFLFFBQWdCO0lBQzlELGdEQUFnRDtJQUNoRCxPQUFPLGtCQUFrQix5QkFBeUIsVUFBVSxFQUFFLFFBQVEsQ0FBQyxRQUFRLEdBQUcsQ0FBQyxDQUFDLENBQUMsQ0FBQztBQUN4RixDQUFDOzs7Ozs7QUFFRCxNQUFNLFVBQVUsWUFBWSxDQUFDLFVBQWtCLEVBQUUsUUFBZ0I7SUFDL0QsT0FBTyxrQkFBa0IseUJBQTBCLFVBQVUsRUFBRSxRQUFRLENBQUMsUUFBUSxDQUFDLENBQUMsQ0FBQztBQUNyRixDQUFDOzs7Ozs7QUFFRCxNQUFNLFVBQVUsYUFBYSxDQUFDLFVBQWtCLEVBQUUsV0FBa0M7O1VBQzVFLElBQUksR0FBRyxNQUFNLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQzs7VUFDL0IsTUFBTSxHQUFHLElBQUksQ0FBQyxNQUFNOztVQUNwQixhQUFhLEdBQUcsRUFBRTtJQUN4QixLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsTUFBTSxFQUFFLENBQUMsRUFBRSxFQUFFOztjQUN6QixHQUFHLEdBQUcsSUFBSSxDQUFDLENBQUMsQ0FBQzs7Y0FDYixLQUFLLEdBQUcsV0FBVyxDQUFDLEdBQUcsQ0FBQztRQUM5QixhQUFhLENBQUMsSUFBSSxDQUFDLEdB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QUMsRUFBRSxDQUFDLENBQUM7d0JBQzNCLE1BQU07b0JBQ1IsS0FBSyxDQUFDO3dCQUNKLEtBQUssR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDLEVBQUUsRUFBRSxFQUFFLENBQUMsQ0FBQzt3QkFDL0IsTUFBTTtvQkFDUixLQUFLLENBQUM7d0JBQ0osS0FBSyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLENBQUMsQ0FBQzt3QkFDbkMsTUFBTTtvQkFDUixLQUFLLENBQUM7d0JBQ0osS0FBSyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxDQUFDLENBQUM7d0JBQ3ZDLE1BQU07b0JBQ1IsS0FBSyxDQUFDO3dCQUNKLEtBQUssR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLENBQUMsQ0FBQzt3QkFDM0MsTUFBTTtvQkFDUixLQUFLLENBQUM7d0JBQ0osS0FBSyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLENBQUMsQ0FBQzt3QkFDL0MsTUFBTTtvQkFDUixLQUFLLENBQUM7d0JBQ0osS0FBSyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxDQUFDLENBQUM7d0JBQ25ELE1BQU07b0JBQ1IsS0FBSyxDQUFDO3dCQUNKLEtBQUssR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLENBQUMsQ0FBQzt3QkFDdkQsTUFBTTtvQkFDUixLQUFLLEVBQUU7d0JBQ0wsS0FBSyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLEVBQUUsRUFBRSxFQUFFLENBQUMsQ0FBQzt3QkFDM0QsTUFBTTtpQkFDVDtnQkFDRCxNQUFNO1NBQ1Q7UUFDRCxJQUFJLENBQUMsS0FBSyxHQUFHLEtBQUssQ0FBQztLQUNwQjtJQUNELE9BQU8sT0FBTyxDQUFDO0FBQ2pCLENBQUM7Ozs7Ozs7QUFFRCxNQUFNLFVBQVUsbUNBQW1DLENBQy9DLElBQWMsRUFBRSxHQUFZLEVBQUUsTUFBYTs7VUFDdkMsUUFBUSxHQUFHLEdBQUcsQ0FBQyxRQUFROztRQUN6QixPQUFPLEdBQUcsS0FBSztJQUNuQixLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsTUFBTSxDQUFDLE1BQU0sRUFBRSxDQUFDLEVBQUUsRUFBRTtRQUN0QyxpREFBaUQ7UUFDakQsc0NBQXNDO1FBQ3RDLElBQUkscUJBQXFCLENBQUMsSUFBSSxFQUFFLEdBQUcsRUFBRSxDQUFDLEVBQUUsTUFBTSxDQUFDLENBQUMsQ0FBQyxDQUFDLEVBQUU7WUFDbEQsT0FBTyxHQUFHLElBQUksQ0FBQztTQUNoQjtLQUNGO0lBQ0QsSUFBSSxPQUFPLEVBQUU7O2NBQ0wsSUFBSSxHQUFHLG9CQUFvQixDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsU0FBUyxDQUFDOztZQUNsRCxLQUFVO1FBQ2QsUUFBUSxHQUFHLENBQUMsS0FBSyx3QkFBa0IsRUFBRTtZQUNuQztnQkFDRSxLQUFLLEdBQUcsTUFBTSxDQUFDO2dCQUNmLE1BQU07WUFDUjtnQkFDRSxLQUFLLEdBQUcsRUFBRSxDQUFDO2dCQUNYLEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxNQUFNLENBQUMsTUFBTSxFQUFFLENBQUMsRUFBRSxFQUFFO29CQUN0QyxLQUFLLENBQUMsbUJBQUEsUUFBUSxDQUFDLENBQUMsQ0FBQyxDQUFDLElBQUksRUFBRSxDQUFDLEdBQUcsTUFBTSxDQUFDLENBQUMsQ0FBQyxDQUFDO2lCQUN2QztnQkFDRCxNQUFNO1lBQ1I7O3NCQUNRLElBQUksR0FBRyxNQUFNLENBQUMsQ0FBQyxDQUFDOztzQkFDaEIsTUFBTSxHQUFHLE1BQU0sQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDO2dCQUM5QixLQUFLLEdBQUcsQ0FBQyxtQkFBSyxJQUFJLENBQUMsU0FBUyxFQUFBLENBQUMsQ0FBQyxHQUFHLE1BQU0sQ0FBQyxDQUFDO2dCQUN6QyxNQUFNO1NBQ1Q7UUFDRCxJQUFJLENBQUMsS0FBSyxHQUFHLEtBQUssQ0FBQztLQUNwQjtJQUNELE9BQU8sT0FBTyxDQUFDO0FBQ2pCLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7bmV3QXJyYXl9IGZyb20gJy4uL3V0aWwvYXJyYXlfdXRpbHMnO1xuXG5pbXBvcnQge0JpbmRpbmdEZWYsIEJpbmRpbmdGbGFncywgTm9kZURlZiwgTm9kZUZsYWdzLCBQdXJlRXhwcmVzc2lvbkRhdGEsIFZpZXdEYXRhLCBhc1B1cmVFeHByZXNzaW9uRGF0YX0gZnJvbSAnLi90eXBlcyc7XG5pbXBvcnQge2NhbGNCaW5kaW5nRmxhZ3MsIGNoZWNrQW5kVXBkYXRlQmluZGluZ30gZnJvbSAnLi91dGlsJztcblxuZXhwb3J0IGZ1bmN0aW9uIHB1cmVQaXBlRGVmKGNoZWNrSW5kZXg6IG51bWJlciwgYXJnQ291bnQ6IG51bWJlcik6IE5vZGVEZWYge1xuICAvLyBhcmdDb3VudCArIDEgdG8gaW5jbHVkZSB0aGUgcGlwZSBhcyBmaXJzdCBhcmdcbiAgcmV0dXJuIF9wdXJlRXhwcmVzc2lvbkRlZihOb2RlRmxhZ3MuVHlwZVB1cmVQaXBlLCBjaGVja0luZGV4LCBuZXdBcnJheShhcmdDb3VudCArIDEpKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHB1cmVBcnJheURlZihjaGVja0luZGV4OiBudW1iZXIsIGFyZ0NvdW50OiBudW1iZXIpOiBOb2RlRGVmIHtcbiAgcmV0dXJuIF9wdXJlRXhwcmVzc2lvbkRlZihOb2RlRmxhZ3MuVHlwZVB1cmVBcnJheSwgY2hlY2tJbmRleCwgbmV3QXJyYXkoYXJnQ291bnQpKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHB1cmVPYmplY3REZWYoY2hlY2tJbmRleDogbnVtYmVyLCBwcm9wVG9JbmRleDoge1twOiBzdHJpbmddOiBudW1iZXJ9KTogTm9kZURlZiB7XG4gIGNvbnN0IGtleXMgPSBPYmplY3Qua2V5cyhwcm9wVG9JbmRleCk7XG4gIGNvbnN0IG5iS2V5cyA9IGtleXMubGVuZ3RoO1xuICBjb25zdCBwcm9wZXJ0eU5hbWVzID0gW107XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgbmJLZXlzOyBpKyspIHtcbiAgICBjb25zdCBrZXkgPSBrZXlzW2ldO1xuICAgIGNvbnN0IGluZGV4ID0gcHJvcFRvSW5kZXhba2V5XTtcbiAgICBwcm9wZXJ0eU5hbWVzLnB1c2goa2V5KTtcbiAgfVxuXG4gIHJldHVybiBfcHVyZUV4cHJlc3Npb25EZWYoTm9kZUZsYWdzLlR5cGVQdXJlT2JqZWN0LCBjaGVja0luZGV4LCBwcm9wZXJ0eU5hbWVzKTtcbn1cblxuZnVuY3Rpb24gX3B1cmVFeHByZXNzaW9uRGVmKFxuICAgIGZsYWdzOiBOb2RlRmxhZ3MsIGNoZWNrSW5kZXg6IG51bWJlciwgcHJvcGVydHlOYW1lczogc3RyaW5nW10pOiBOb2RlRGVmIHtcbiAgY29uc3QgYmluZGluZ3M6IEJpbmRpbmdEZWZbXSA9IFtdO1xuICBmb3IgKGxldCBpID0gMDsgaSA8IHByb3BlcnR5TmFtZXMubGVuZ3RoOyBpKyspIHtcbiAgICBjb25zdCBwcm9wID0gcHJvcGVydHlOYW1lc1tpXTtcbiAgICBiaW5kaW5ncy5wdXNoKHtcbiAgICAgIGZsYWdzOiBCaW5kaW5nRmxhZ3MuVHlwZVByb3BlcnR5LFxuICAgICAgbmFtZTogcHJvcCxcbiAgICAgIG5zOiBudWxsLFxuICAgICAgbm9uTWluaWZpZWROYW1lOiBwcm9wLFxuICAgICAgc2VjdXJpdHlDb250ZXh0OiBudWxsLFxuICAgICAgc3VmZml4OiBudWxsXG4gICAgfSk7XG4gIH1cbiAgcmV0dXJuIHtcbiAgICAvLyB3aWxsIGJldCBzZXQgYnkgdGhlIHZpZXcgZGVmaW5pdGlvblxuICAgIG5vZGVJbmRleDogLTEsXG4gICAgcGFyZW50OiBudWxsLFxuICAgIHJlbmRlclBhcmVudDogbnVsbCxcbiAgICBiaW5kaW5nSW5kZXg6IC0xLFxuICAgIG91dHB1dEluZGV4OiAtMSxcbiAgICAvLyByZWd1bGFyIHZhbHVlc1xuICAgIGNoZWNrSW5kZXgsXG4gICAgZmxhZ3MsXG4gICAgY2hpbGRGbGFnczogMCxcbiAgICBkaXJlY3RDaGlsZEZsYWdzOiAwLFxuICAgIGNoaWxkTWF0Y2hlZFF1ZXJpZXM6IDAsXG4gICAgbWF0Y2hlZFF1ZXJpZXM6IHt9LFxuICAgIG1hdGNoZWRRdWVyeUlkczogMCxcbiAgICByZWZlcmVuY2VzOiB7fSxcbiAgICBuZ0NvbnRlbnRJbmRleDogLTEsXG4gICAgY2hpbGRDb3VudDogMCwgYmluZGluZ3MsXG4gICAgYmluZGluZ0ZsYWdzOiBjYWxjQmluZGluZ0ZsYWdzKGJpbmRpbmdzKSxcbiAgICBvdXRwdXRzOiBbXSxcbiAgICBlbGVtZW50OiBudWxsLFxuICAgIHByb3ZpZGVyOiBudWxsLFxuICAgIHRleHQ6IG51bGwsXG4gICAgcXVlcnk6IG51bGwsXG4gICAgbmdDb250ZW50OiBudWxsXG4gIH07XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBjcmVhdGVQdXJlRXhwcmVzc2lvbih2aWV3OiBWaWV3RGF0YSwgZGVmOiBOb2RlRGVmKTogUHVyZUV4cHJlc3Npb25EYXRhIHtcbiAgcmV0dXJuIHt2YWx1ZTogdW5kZWZpbmVkfTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGNoZWNrQW5kVXBkYXRlUHVyZUV4cHJlc3Npb25JbmxpbmUoXG4gICAgdmlldzogVmlld0RhdGEsIGRlZjogTm9kZURlZiwgdjA6IGFueSwgdjE6IGFueSwgdjI6IGFueSwgdjM6IGFueSwgdjQ6IGFueSwgdjU6IGFueSwgdjY6IGFueSxcbiAgICB2NzogYW55LCB2ODogYW55LCB2OTogYW55KTogYm9vbGVhbiB7XG4gIGNvbnN0IGJpbmRpbmdzID0gZGVmLmJpbmRpbmdzO1xuICBsZXQgY2hhbmdlZCA9IGZhbHNlO1xuICBjb25zdCBiaW5kTGVuID0gYmluZGluZ3MubGVuZ3RoO1xuICBpZiAoYmluZExlbiA+IDAgJiYgY2hlY2tBbmRVcGRhdGVCaW5kaW5nKHZpZXcsIGRlZiwgMCwgdjApKSBjaGFuZ2VkID0gdHJ1ZTtcbiAgaWYgKGJpbmRMZW4gPiAxICYmIGNoZWNrQW5kVXBkYXRlQmluZGluZyh2aWV3LCBkZWYsIDEsIHYxKSkgY2hhbmdlZCA9IHRydWU7XG4gIGlmIChiaW5kTGVuID4gMiAmJiBjaGVja0FuZFVwZGF0ZUJpbmRpbmcodmlldywgZGVmLCAyLCB2MikpIGNoYW5nZWQgPSB0cnVlO1xuICBpZiAoYmluZExlbiA+IDMgJiYgY2hlY2tBbmRVcGRhdGVCaW5kaW5nKHZpZXcsIGRlZiwgMywgdjMpKSBjaGFuZ2VkID0gdHJ1ZTtcbiAgaWYgKGJpbmRMZW4gPiA0ICYmIGNoZWNrQW5kVXBkYXRlQmluZGluZyh2aWV3LCBkZWYsIDQsIHY0KSkgY2hhbmdlZCA9IHRydWU7XG4gIGlmIChiaW5kTGVuID4gNSAmJiBjaGVja0FuZFVwZGF0ZUJpbmRpbmcodmlldywgZGVmLCA1LCB2NSkpIGNoYW5nZWQgPSB0cnVlO1xuICBpZiAoYmluZExlbiA+IDYgJiYgY2hlY2tBbmRVcGRhdGVCaW5kaW5nKHZpZXcsIGRlZiwgNiwgdjYpKSBjaGFuZ2VkID0gdHJ1ZTtcbiAgaWYgKGJpbmRMZW4gPiA3ICYmIGNoZWNrQW5kVXBkYXRlQmluZGluZyh2aWV3LCBkZWYsIDcsIHY3KSkgY2hhbmdlZCA9IHRydWU7XG4gIGlmIChiaW5kTGVuID4gOCAmJiBjaGVja0FuZFVwZGF0ZUJpbmRpbmcodmlldywgZGVmLCA4LCB2OCkpIGNoYW5nZWQgPSB0cnVlO1xuICBpZiAoYmluZExlbiA+IDkgJiYgY2hlY2tBbmRVcGRhdGVCaW5kaW5nKHZpZXcsIGRlZiwgOSwgdjkpKSBjaGFuZ2VkID0gdHJ1ZTtcblxuICBpZiAoY2hhbmdlZCkge1xuICAgIGNvbnN0IGRhdGEgPSBhc1B1cmVFeHByZXNzaW9uRGF0YSh2aWV3LCBkZWYubm9kZUluZGV4KTtcbiAgICBsZXQgdmFsdWU6IGFueTtcbiAgICBzd2l0Y2ggKGRlZi5mbGFncyAmIE5vZGVGbGFncy5UeXBlcykge1xuICAgICAgY2FzZSBOb2RlRmxhZ3MuVHlwZVB1cmVBcnJheTpcbiAgICAgICAgdmFsdWUgPSBbXTtcbiAgICAgICAgaWYgKGJpbmRMZW4gPiAwKSB2YWx1ZS5wdXNoKHYwKTtcbiAgICAgICAgaWYgKGJpbmRMZW4gPiAxKSB2YWx1ZS5wdXNoKHYxKTtcbiAgICAgICAgaWYgKGJpbmRMZW4gPiAyKSB2YWx1ZS5wdXNoKHYyKTtcbiAgICAgICAgaWYgKGJpbmRMZW4gPiAzKSB2YWx1ZS5wdXNoKHYzKTtcbiAgICAgICAgaWYgKGJpbmRMZW4gPiA0KSB2YWx1ZS5wdXNoKHY0KTtcbiAgICAgICAgaWYgKGJpbmRMZW4gPiA1KSB2YWx1ZS5wdXNoKHY1KTtcbiAgICAgICAgaWYgKGJpbmRMZW4gPiA2KSB2YWx1ZS5wdXNoKHY2KTtcbiAgICAgICAgaWYgKGJpbmRMZW4gPiA3KSB2YWx1ZS5wdXNoKHY3KTtcbiAgICAgICAgaWYgKGJpbmRMZW4gPiA4KSB2YWx1ZS5wdXNoKHY4KTtcbiAgICAgICAgaWYgKGJpbmRMZW4gPiA5KSB2YWx1ZS5wdXNoKHY5KTtcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIE5vZGVGbGFncy5UeXBlUHVyZU9iamVjdDpcbiAgICAgICAgdmFsdWUgPSB7fTtcbiAgICAgICAgaWYgKGJpbmRMZW4gPiAwKSB2YWx1ZVtiaW5kaW5nc1swXS5uYW1lICFdID0gdjA7XG4gICAgICAgIGlmIChiaW5kTGVuID4gMSkgdmFsdWVbYmluZGluZ3NbMV0ubmFtZSAhXSA9IHYxO1xuICAgICAgICBpZiAoYmluZExlbiA+IDIpIHZhbHVlW2JpbmRpbmdzWzJdLm5hbWUgIV0gPSB2MjtcbiAgICAgICAgaWYgKGJpbmRMZW4gPiAzKSB2YWx1ZVtiaW5kaW5nc1szXS5uYW1lICFdID0gdjM7XG4gICAgICAgIGlmIChiaW5kTGVuID4gNCkgdmFsdWVbYmluZGluZ3NbNF0ubmFtZSAhXSA9IHY0O1xuICAgICAgICBpZiAoYmluZExlbiA+IDUpIHZhbHVlW2JpbmRpbmdzWzVdLm5hbWUgIV0gPSB2NTtcbiAgICAgICAgaWYgKGJpbmRMZW4gPiA2KSB2YWx1ZVtiaW5kaW5nc1s2XS5uYW1lICFdID0gdjY7XG4gICAgICAgIGlmIChiaW5kTGVuID4gNykgdmFsdWVbYmluZGluZ3NbN10ubmFtZSAhXSA9IHY3O1xuICAgICAgICBpZiAoYmluZExlbiA+IDgpIHZhbHVlW2JpbmRpbmdzWzhdLm5hbWUgIV0gPSB2ODtcbiAgICAgICAgaWYgKGJpbmRMZW4gPiA5KSB2YWx1ZVtiaW5kaW5nc1s5XS5uYW1lICFdID0gdjk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBOb2RlRmxhZ3MuVHlwZVB1cmVQaXBlOlxuICAgICAgICBjb25zdCBwaXBlID0gdjA7XG4gICAgICAgIHN3aXRjaCAoYmluZExlbikge1xuICAgICAgICAgIGNhc2UgMTpcbiAgICAgICAgICAgIHZhbHVlID0gcGlwZS50cmFuc2Zvcm0odjApO1xuICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgY2FzZSAyOlxuICAgICAgICAgICAgdmFsdWUgPSBwaXBlLnRyYW5zZm9ybSh2MSk7XG4gICAgICAgICAgICBicmVhaztcbiAgICAgICAgICBjYXNlIDM6XG4gICAgICAgICAgICB2YWx1ZSA9IHBpcGUudHJhbnNmb3JtKHYxLCB2Mik7XG4gICAgICAgICAgICBicmVhaztcbiAgICAgICAgICBjYXNlIDQ6XG4gICAgICAgICAgICB2YWx1ZSA9IHBpcGUudHJhbnNmb3JtKHYxLCB2MiwgdjMpO1xuICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgY2FzZSA1OlxuICAgICAgICAgICAgdmFsdWUgPSBwaXBlLnRyYW5zZm9ybSh2MSwgdjIsIHYzLCB2NCk7XG4gICAgICAgICAgICBicmVhaztcbiAgICAgICAgICBjYXNlIDY6XG4gICAgICAgICAgICB2YWx1ZSA9IHBpcGUudHJhbnNmb3JtKHYxLCB2MiwgdjMsIHY0LCB2NSk7XG4gICAgICAgICAgICBicmVhaztcbiAgICAgICAgICBjYXNlIDc6XG4gICAgICAgICAgICB2YWx1ZSA9IHBpcGUudHJhbnNmb3JtKHYxLCB2MiwgdjMsIHY0LCB2NSwgdjYpO1xuICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgY2FzZSA4OlxuICAgICAgICAgICAgdmFsdWUgPSBwaXBlLnRyYW5zZm9ybSh2MSwgdjIsIHYzLCB2NCwgdjUsIHY2LCB2Nyk7XG4gICAgICAgICAgICBicmVhaztcbiAgICAgICAgICBjYXNlIDk6XG4gICAgICAgICAgICB2YWx1ZSA9IHBpcGUudHJhbnNmb3JtKHYxLCB2MiwgdjMsIHY0LCB2NSwgdjYsIHY3LCB2OCk7XG4gICAgICAgICAgICBicmVhaztcbiAgICAgICAgICBjYXNlIDEwOlxuICAgICAgICAgICAgdmFsdWUgPSBwaXBlLnRyYW5zZm9ybSh2MSwgdjIsIHYzLCB2NCwgdjUsIHY2LCB2NywgdjgsIHY5KTtcbiAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICAgIGJyZWFrO1xuICAgIH1cbiAgICBkYXRhLnZhbHVlID0gdmFsdWU7XG4gIH1cbiAgcmV0dXJuIGNoYW5nZWQ7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBjaGVja0FuZFVwZGF0ZVB1cmVFeHByZXNzaW9uRHluYW1pYyhcbiAgICB2aWV3OiBWaWV3RGF0YSwgZGVmOiBOb2RlRGVmLCB2YWx1ZXM6IGFueVtdKTogYm9vbGVhbiB7XG4gIGNvbnN0IGJpbmRpbmdzID0gZGVmLmJpbmRpbmdzO1xuICBsZXQgY2hhbmdlZCA9IGZhbHNlO1xuICBmb3IgKGxldCBpID0gMDsgaSA8IHZhbHVlcy5sZW5ndGg7IGkrKykge1xuICAgIC8vIE5vdGU6IFdlIG5lZWQgdG8gbG9vcCBvdmVyIGFsbCB2YWx1ZXMsIHNvIHRoYXRcbiAgICAvLyB0aGUgb2xkIHZhbHVlcyBhcmUgdXBkYXRlcyBhcyB3ZWxsIVxuICAgIGlmIChjaGVja0FuZFVwZGF0ZUJpbmRpbmcodmlldywgZGVmLCBpLCB2YWx1ZXNbaV0pKSB7XG4gICAgICBjaGFuZ2VkID0gdHJ1ZTtcbiAgICB9XG4gIH1cbiAgaWYgKGNoYW5nZWQpIHtcbiAgICBjb25zdCBkYXRhID0gYXNQdXJlRXhwcmVzc2lvbkRhdGEodmlldywgZGVmLm5vZGVJbmRleCk7XG4gICAgbGV0IHZhbHVlOiBhbnk7XG4gICAgc3dpdGNoIChkZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuVHlwZXMpIHtcbiAgICAgIGNhc2UgTm9kZUZsYWdzLlR5cGVQdXJlQXJyYXk6XG4gICAgICAgIHZhbHVlID0gdmFsdWVzO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2UgTm9kZUZsYWdzLlR5cGVQdXJlT2JqZWN0OlxuICAgICAgICB2YWx1ZSA9IHt9O1xuICAgICAgICBmb3IgKGxldCBpID0gMDsgaSA8IHZhbHVlcy5sZW5ndGg7IGkrKykge1xuICAgICAgICAgIHZhbHVlW2JpbmRpbmdzW2ldLm5hbWUgIV0gPSB2YWx1ZXNbaV07XG4gICAgICAgIH1cbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIE5vZGVGbGFncy5UeXBlUHVyZVBpcGU6XG4gICAgICAgIGNvbnN0IHBpcGUgPSB2YWx1ZXNbMF07XG4gICAgICAgIGNvbnN0IHBhcmFtcyA9IHZhbHVlcy5zbGljZSgxKTtcbiAgICAgICAgdmFsdWUgPSAoPGFueT5waXBlLnRyYW5zZm9ybSkoLi4ucGFyYW1zKTtcbiAgICAgICAgYnJlYWs7XG4gICAgfVxuICAgIGRhdGEudmFsdWUgPSB2YWx1ZTtcbiAgfVxuICByZXR1cm4gY2hhbmdlZDtcbn1cbiJdfQ==