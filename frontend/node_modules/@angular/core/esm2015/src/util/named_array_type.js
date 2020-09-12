/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import './ng_dev_mode';
/**
 * THIS FILE CONTAINS CODE WHICH SHOULD BE TREE SHAKEN AND NEVER CALLED FROM PRODUCTION CODE!!!
 */
/**
 * Creates an `Array` construction with a given name. This is useful when
 * looking for memory consumption to see what time of array it is.
 *
 *
 * @param name Name to give to the constructor
 * @returns A subclass of `Array` if possible. This can only be done in
 *          environments which support `class` construct.
 */
export function createNamedArrayType(name) {
    // This should never be called in prod mode, so let's verify that is the case.
    if (ngDevMode) {
        try {
            // We need to do it this way so that TypeScript does not down-level the below code.
            const FunctionConstructor = createNamedArrayType.constructor;
            return (new FunctionConstructor('Array', `return class ${name} extends Array{}`))(Array);
        }
        catch (e) {
            // If it does not work just give up and fall back to regular Array.
            return Array;
        }
    }
    else {
        throw new Error('Looks like we are in \'prod mode\', but we are creating a named Array type, which is wrong! Check your code');
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmFtZWRfYXJyYXlfdHlwZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3V0aWwvbmFtZWRfYXJyYXlfdHlwZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFDQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLGVBQWUsQ0FBQztBQUV2Qjs7R0FFRztBQUdIOzs7Ozs7OztHQVFHO0FBQ0gsTUFBTSxVQUFVLG9CQUFvQixDQUFDLElBQVk7SUFDL0MsOEVBQThFO0lBQzlFLElBQUksU0FBUyxFQUFFO1FBQ2IsSUFBSTtZQUNGLG1GQUFtRjtZQUNuRixNQUFNLG1CQUFtQixHQUFRLG9CQUFvQixDQUFDLFdBQVcsQ0FBQztZQUNsRSxPQUFPLENBQUMsSUFBSSxtQkFBbUIsQ0FBQyxPQUFPLEVBQUUsZ0JBQWdCLElBQUksa0JBQWtCLENBQUMsQ0FBQyxDQUFDLEtBQUssQ0FBQyxDQUFDO1NBQzFGO1FBQUMsT0FBTyxDQUFDLEVBQUU7WUFDVixtRUFBbUU7WUFDbkUsT0FBTyxLQUFLLENBQUM7U0FDZDtLQUNGO1NBQU07UUFDTCxNQUFNLElBQUksS0FBSyxDQUNYLDZHQUE2RyxDQUFDLENBQUM7S0FDcEg7QUFDSCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiXG4vKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICcuL25nX2Rldl9tb2RlJztcblxuLyoqXG4gKiBUSElTIEZJTEUgQ09OVEFJTlMgQ09ERSBXSElDSCBTSE9VTEQgQkUgVFJFRSBTSEFLRU4gQU5EIE5FVkVSIENBTExFRCBGUk9NIFBST0RVQ1RJT04gQ09ERSEhIVxuICovXG5cblxuLyoqXG4gKiBDcmVhdGVzIGFuIGBBcnJheWAgY29uc3RydWN0aW9uIHdpdGggYSBnaXZlbiBuYW1lLiBUaGlzIGlzIHVzZWZ1bCB3aGVuXG4gKiBsb29raW5nIGZvciBtZW1vcnkgY29uc3VtcHRpb24gdG8gc2VlIHdoYXQgdGltZSBvZiBhcnJheSBpdCBpcy5cbiAqXG4gKlxuICogQHBhcmFtIG5hbWUgTmFtZSB0byBnaXZlIHRvIHRoZSBjb25zdHJ1Y3RvclxuICogQHJldHVybnMgQSBzdWJjbGFzcyBvZiBgQXJyYXlgIGlmIHBvc3NpYmxlLiBUaGlzIGNhbiBvbmx5IGJlIGRvbmUgaW5cbiAqICAgICAgICAgIGVudmlyb25tZW50cyB3aGljaCBzdXBwb3J0IGBjbGFzc2AgY29uc3RydWN0LlxuICovXG5leHBvcnQgZnVuY3Rpb24gY3JlYXRlTmFtZWRBcnJheVR5cGUobmFtZTogc3RyaW5nKTogdHlwZW9mIEFycmF5IHtcbiAgLy8gVGhpcyBzaG91bGQgbmV2ZXIgYmUgY2FsbGVkIGluIHByb2QgbW9kZSwgc28gbGV0J3MgdmVyaWZ5IHRoYXQgaXMgdGhlIGNhc2UuXG4gIGlmIChuZ0Rldk1vZGUpIHtcbiAgICB0cnkge1xuICAgICAgLy8gV2UgbmVlZCB0byBkbyBpdCB0aGlzIHdheSBzbyB0aGF0IFR5cGVTY3JpcHQgZG9lcyBub3QgZG93bi1sZXZlbCB0aGUgYmVsb3cgY29kZS5cbiAgICAgIGNvbnN0IEZ1bmN0aW9uQ29uc3RydWN0b3I6IGFueSA9IGNyZWF0ZU5hbWVkQXJyYXlUeXBlLmNvbnN0cnVjdG9yO1xuICAgICAgcmV0dXJuIChuZXcgRnVuY3Rpb25Db25zdHJ1Y3RvcignQXJyYXknLCBgcmV0dXJuIGNsYXNzICR7bmFtZX0gZXh0ZW5kcyBBcnJheXt9YCkpKEFycmF5KTtcbiAgICB9IGNhdGNoIChlKSB7XG4gICAgICAvLyBJZiBpdCBkb2VzIG5vdCB3b3JrIGp1c3QgZ2l2ZSB1cCBhbmQgZmFsbCBiYWNrIHRvIHJlZ3VsYXIgQXJyYXkuXG4gICAgICByZXR1cm4gQXJyYXk7XG4gICAgfVxuICB9IGVsc2Uge1xuICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgJ0xvb2tzIGxpa2Ugd2UgYXJlIGluIFxcJ3Byb2QgbW9kZVxcJywgYnV0IHdlIGFyZSBjcmVhdGluZyBhIG5hbWVkIEFycmF5IHR5cGUsIHdoaWNoIGlzIHdyb25nISBDaGVjayB5b3VyIGNvZGUnKTtcbiAgfVxufVxuIl19