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
        define("@angular/compiler/src/util", ["require", "exports"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.partitionArray = exports.newArray = exports.global = exports.Version = exports.isPromise = exports.resolveForwardRef = exports.stringify = exports.utf8Encode = exports.escapeRegExp = exports.getParseErrors = exports.isSyntaxError = exports.syntaxError = exports.error = exports.SyncAsync = exports.ValueTransformer = exports.noUndefined = exports.isDefined = exports.visitValue = exports.splitAtPeriod = exports.splitAtColon = exports.dashCaseToCamelCase = void 0;
    var DASH_CASE_REGEXP = /-+([a-z0-9])/g;
    function dashCaseToCamelCase(input) {
        return input.replace(DASH_CASE_REGEXP, function () {
            var m = [];
            for (var _i = 0; _i < arguments.length; _i++) {
                m[_i] = arguments[_i];
            }
            return m[1].toUpperCase();
        });
    }
    exports.dashCaseToCamelCase = dashCaseToCamelCase;
    function splitAtColon(input, defaultValues) {
        return _splitAt(input, ':', defaultValues);
    }
    exports.splitAtColon = splitAtColon;
    function splitAtPeriod(input, defaultValues) {
        return _splitAt(input, '.', defaultValues);
    }
    exports.splitAtPeriod = splitAtPeriod;
    function _splitAt(input, character, defaultValues) {
        var characterIndex = input.indexOf(character);
        if (characterIndex == -1)
            return defaultValues;
        return [input.slice(0, characterIndex).trim(), input.slice(characterIndex + 1).trim()];
    }
    function visitValue(value, visitor, context) {
        if (Array.isArray(value)) {
            return visitor.visitArray(value, context);
        }
        if (isStrictStringMap(value)) {
            return visitor.visitStringMap(value, context);
        }
        if (value == null || typeof value == 'string' || typeof value == 'number' ||
            typeof value == 'boolean') {
            return visitor.visitPrimitive(value, context);
        }
        return visitor.visitOther(value, context);
    }
    exports.visitValue = visitValue;
    function isDefined(val) {
        return val !== null && val !== undefined;
    }
    exports.isDefined = isDefined;
    function noUndefined(val) {
        return val === undefined ? null : val;
    }
    exports.noUndefined = noUndefined;
    var ValueTransformer = /** @class */ (function () {
        function ValueTransformer() {
        }
        ValueTransformer.prototype.visitArray = function (arr, context) {
            var _this = this;
            return arr.map(function (value) { return visitValue(value, _this, context); });
        };
        ValueTransformer.prototype.visitStringMap = function (map, context) {
            var _this = this;
            var result = {};
            Object.keys(map).forEach(function (key) {
                result[key] = visitValue(map[key], _this, context);
            });
            return result;
        };
        ValueTransformer.prototype.visitPrimitive = function (value, context) {
            return value;
        };
        ValueTransformer.prototype.visitOther = function (value, context) {
            return value;
        };
        return ValueTransformer;
    }());
    exports.ValueTransformer = ValueTransformer;
    exports.SyncAsync = {
        assertSync: function (value) {
            if (isPromise(value)) {
                throw new Error("Illegal state: value cannot be a promise");
            }
            return value;
        },
        then: function (value, cb) {
            return isPromise(value) ? value.then(cb) : cb(value);
        },
        all: function (syncAsyncValues) {
            return syncAsyncValues.some(isPromise) ? Promise.all(syncAsyncValues) : syncAsyncValues;
        }
    };
    function error(msg) {
        throw new Error("Internal Error: " + msg);
    }
    exports.error = error;
    function syntaxError(msg, parseErrors) {
        var error = Error(msg);
        error[ERROR_SYNTAX_ERROR] = true;
        if (parseErrors)
            error[ERROR_PARSE_ERRORS] = parseErrors;
        return error;
    }
    exports.syntaxError = syntaxError;
    var ERROR_SYNTAX_ERROR = 'ngSyntaxError';
    var ERROR_PARSE_ERRORS = 'ngParseErrors';
    function isSyntaxError(error) {
        return error[ERROR_SYNTAX_ERROR];
    }
    exports.isSyntaxError = isSyntaxError;
    function getParseErrors(error) {
        return error[ERROR_PARSE_ERRORS] || [];
    }
    exports.getParseErrors = getParseErrors;
    // Escape characters that have a special meaning in Regular Expressions
    function escapeRegExp(s) {
        return s.replace(/([.*+?^=!:${}()|[\]\/\\])/g, '\\$1');
    }
    exports.escapeRegExp = escapeRegExp;
    var STRING_MAP_PROTO = Object.getPrototypeOf({});
    function isStrictStringMap(obj) {
        return typeof obj === 'object' && obj !== null && Object.getPrototypeOf(obj) === STRING_MAP_PROTO;
    }
    function utf8Encode(str) {
        var encoded = '';
        for (var index = 0; index < str.length; index++) {
            var codePoint = str.charCodeAt(index);
            // decode surrogate
            // see https://mathiasbynens.be/notes/javascript-encoding#surrogate-formulae
            if (codePoint >= 0xd800 && codePoint <= 0xdbff && str.length > (index + 1)) {
                var low = str.charCodeAt(index + 1);
                if (low >= 0xdc00 && low <= 0xdfff) {
                    index++;
                    codePoint = ((codePoint - 0xd800) << 10) + low - 0xdc00 + 0x10000;
                }
            }
            if (codePoint <= 0x7f) {
                encoded += String.fromCharCode(codePoint);
            }
            else if (codePoint <= 0x7ff) {
                encoded += String.fromCharCode(((codePoint >> 6) & 0x1F) | 0xc0, (codePoint & 0x3f) | 0x80);
            }
            else if (codePoint <= 0xffff) {
                encoded += String.fromCharCode((codePoint >> 12) | 0xe0, ((codePoint >> 6) & 0x3f) | 0x80, (codePoint & 0x3f) | 0x80);
            }
            else if (codePoint <= 0x1fffff) {
                encoded += String.fromCharCode(((codePoint >> 18) & 0x07) | 0xf0, ((codePoint >> 12) & 0x3f) | 0x80, ((codePoint >> 6) & 0x3f) | 0x80, (codePoint & 0x3f) | 0x80);
            }
        }
        return encoded;
    }
    exports.utf8Encode = utf8Encode;
    function stringify(token) {
        if (typeof token === 'string') {
            return token;
        }
        if (Array.isArray(token)) {
            return '[' + token.map(stringify).join(', ') + ']';
        }
        if (token == null) {
            return '' + token;
        }
        if (token.overriddenName) {
            return "" + token.overriddenName;
        }
        if (token.name) {
            return "" + token.name;
        }
        if (!token.toString) {
            return 'object';
        }
        // WARNING: do not try to `JSON.stringify(token)` here
        // see https://github.com/angular/angular/issues/23440
        var res = token.toString();
        if (res == null) {
            return '' + res;
        }
        var newLineIndex = res.indexOf('\n');
        return newLineIndex === -1 ? res : res.substring(0, newLineIndex);
    }
    exports.stringify = stringify;
    /**
     * Lazily retrieves the reference value from a forwardRef.
     */
    function resolveForwardRef(type) {
        if (typeof type === 'function' && type.hasOwnProperty('__forward_ref__')) {
            return type();
        }
        else {
            return type;
        }
    }
    exports.resolveForwardRef = resolveForwardRef;
    /**
     * Determine if the argument is shaped like a Promise
     */
    function isPromise(obj) {
        // allow any Promise/A+ compliant thenable.
        // It's up to the caller to ensure that obj.then conforms to the spec
        return !!obj && typeof obj.then === 'function';
    }
    exports.isPromise = isPromise;
    var Version = /** @class */ (function () {
        function Version(full) {
            this.full = full;
            var splits = full.split('.');
            this.major = splits[0];
            this.minor = splits[1];
            this.patch = splits.slice(2).join('.');
        }
        return Version;
    }());
    exports.Version = Version;
    var __window = typeof window !== 'undefined' && window;
    var __self = typeof self !== 'undefined' && typeof WorkerGlobalScope !== 'undefined' &&
        self instanceof WorkerGlobalScope && self;
    var __global = typeof global !== 'undefined' && global;
    // Check __global first, because in Node tests both __global and __window may be defined and _global
    // should be __global in that case.
    var _global = __global || __window || __self;
    exports.global = _global;
    function newArray(size, value) {
        var list = [];
        for (var i = 0; i < size; i++) {
            list.push(value);
        }
        return list;
    }
    exports.newArray = newArray;
    /**
     * Partitions a given array into 2 arrays, based on a boolean value returned by the condition
     * function.
     *
     * @param arr Input array that should be partitioned
     * @param conditionFn Condition function that is called for each item in a given array and returns a
     * boolean value.
     */
    function partitionArray(arr, conditionFn) {
        var truthy = [];
        var falsy = [];
        arr.forEach(function (item) {
            (conditionFn(item) ? truthy : falsy).push(item);
        });
        return [truthy, falsy];
    }
    exports.partitionArray = partitionArray;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy91dGlsLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQU9ILElBQU0sZ0JBQWdCLEdBQUcsZUFBZSxDQUFDO0lBRXpDLFNBQWdCLG1CQUFtQixDQUFDLEtBQWE7UUFDL0MsT0FBTyxLQUFLLENBQUMsT0FBTyxDQUFDLGdCQUFnQixFQUFFO1lBQUMsV0FBVztpQkFBWCxVQUFXLEVBQVgscUJBQVcsRUFBWCxJQUFXO2dCQUFYLHNCQUFXOztZQUFLLE9BQUEsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLFdBQVcsRUFBRTtRQUFsQixDQUFrQixDQUFDLENBQUM7SUFDOUUsQ0FBQztJQUZELGtEQUVDO0lBRUQsU0FBZ0IsWUFBWSxDQUFDLEtBQWEsRUFBRSxhQUF1QjtRQUNqRSxPQUFPLFFBQVEsQ0FBQyxLQUFLLEVBQUUsR0FBRyxFQUFFLGFBQWEsQ0FBQyxDQUFDO0lBQzdDLENBQUM7SUFGRCxvQ0FFQztJQUVELFNBQWdCLGFBQWEsQ0FBQyxLQUFhLEVBQUUsYUFBdUI7UUFDbEUsT0FBTyxRQUFRLENBQUMsS0FBSyxFQUFFLEdBQUcsRUFBRSxhQUFhLENBQUMsQ0FBQztJQUM3QyxDQUFDO0lBRkQsc0NBRUM7SUFFRCxTQUFTLFFBQVEsQ0FBQyxLQUFhLEVBQUUsU0FBaUIsRUFBRSxhQUF1QjtRQUN6RSxJQUFNLGNBQWMsR0FBRyxLQUFLLENBQUMsT0FBTyxDQUFDLFNBQVMsQ0FBQyxDQUFDO1FBQ2hELElBQUksY0FBYyxJQUFJLENBQUMsQ0FBQztZQUFFLE9BQU8sYUFBYSxDQUFDO1FBQy9DLE9BQU8sQ0FBQyxLQUFLLENBQUMsS0FBSyxDQUFDLENBQUMsRUFBRSxjQUFjLENBQUMsQ0FBQyxJQUFJLEVBQUUsRUFBRSxLQUFLLENBQUMsS0FBSyxDQUFDLGNBQWMsR0FBRyxDQUFD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RUFBRSxXQUErQztRQUMzRCxJQUFNLE1BQU0sR0FBUSxFQUFFLENBQUM7UUFDdkIsSUFBTSxLQUFLLEdBQVEsRUFBRSxDQUFDO1FBQ3RCLEdBQUcsQ0FBQyxPQUFPLENBQUMsVUFBQSxJQUFJO1lBQ2QsQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsS0FBSyxDQUFDLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ2xELENBQUMsQ0FBQyxDQUFDO1FBQ0gsT0FBTyxDQUFDLE1BQU0sRUFBRSxLQUFLLENBQUMsQ0FBQztJQUN6QixDQUFDO0lBUkQsd0NBUUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtDb25zdGFudFBvb2x9IGZyb20gJy4vY29uc3RhbnRfcG9vbCc7XG5cbmltcG9ydCAqIGFzIG8gZnJvbSAnLi9vdXRwdXQvb3V0cHV0X2FzdCc7XG5pbXBvcnQge1BhcnNlRXJyb3J9IGZyb20gJy4vcGFyc2VfdXRpbCc7XG5cbmNvbnN0IERBU0hfQ0FTRV9SRUdFWFAgPSAvLSsoW2EtejAtOV0pL2c7XG5cbmV4cG9ydCBmdW5jdGlvbiBkYXNoQ2FzZVRvQ2FtZWxDYXNlKGlucHV0OiBzdHJpbmcpOiBzdHJpbmcge1xuICByZXR1cm4gaW5wdXQucmVwbGFjZShEQVNIX0NBU0VfUkVHRVhQLCAoLi4ubTogYW55W10pID0+IG1bMV0udG9VcHBlckNhc2UoKSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBzcGxpdEF0Q29sb24oaW5wdXQ6IHN0cmluZywgZGVmYXVsdFZhbHVlczogc3RyaW5nW10pOiBzdHJpbmdbXSB7XG4gIHJldHVybiBfc3BsaXRBdChpbnB1dCwgJzonLCBkZWZhdWx0VmFsdWVzKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHNwbGl0QXRQZXJpb2QoaW5wdXQ6IHN0cmluZywgZGVmYXVsdFZhbHVlczogc3RyaW5nW10pOiBzdHJpbmdbXSB7XG4gIHJldHVybiBfc3BsaXRBdChpbnB1dCwgJy4nLCBkZWZhdWx0VmFsdWVzKTtcbn1cblxuZnVuY3Rpb24gX3NwbGl0QXQoaW5wdXQ6IHN0cmluZywgY2hhcmFjdGVyOiBzdHJpbmcsIGRlZmF1bHRWYWx1ZXM6IHN0cmluZ1tdKTogc3RyaW5nW10ge1xuICBjb25zdCBjaGFyYWN0ZXJJbmRleCA9IGlucHV0LmluZGV4T2YoY2hhcmFjdGVyKTtcbiAgaWYgKGNoYXJhY3RlckluZGV4ID09IC0xKSByZXR1cm4gZGVmYXVsdFZhbHVlcztcbiAgcmV0dXJuIFtpbnB1dC5zbGljZSgwLCBjaGFyYWN0ZXJJbmRleCkudHJpbSgpLCBpbnB1dC5zbGljZShjaGFyYWN0ZXJJbmRleCArIDEpLnRyaW0oKV07XG59XG5cbmV4cG9ydCBmdW5jdGlvbiB2aXNpdFZhbHVlKHZhbHVlOiBhbnksIHZpc2l0b3I6IFZhbHVlVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgaWYgKEFycmF5LmlzQXJyYXkodmFsdWUpKSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRBcnJheSg8YW55W10+dmFsdWUsIGNvbnRleHQpO1xuICB9XG5cbiAgaWYgKGlzU3RyaWN0U3RyaW5nTWFwKHZhbHVlKSkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0U3RyaW5nTWFwKDx7W2tleTogc3RyaW5nXTogYW55fT52YWx1ZSwgY29udGV4dCk7XG4gIH1cblxuICBpZiAodmFsdWUgPT0gbnVsbCB8fCB0eXBlb2YgdmFsdWUgPT0gJ3N0cmluZycgfHwgdHlwZW9mIHZhbHVlID09ICdudW1iZXInIHx8XG4gICAgICB0eXBlb2YgdmFsdWUgPT0gJ2Jvb2xlYW4nKSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRQcmltaXRpdmUodmFsdWUsIGNvbnRleHQpO1xuICB9XG5cbiAgcmV0dXJuIHZpc2l0b3IudmlzaXRPdGhlcih2YWx1ZSwgY29udGV4dCk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpc0RlZmluZWQodmFsOiBhbnkpOiBib29sZWFuIHtcbiAgcmV0dXJuIHZhbCAhPT0gbnVsbCAmJiB2YWwgIT09IHVuZGVmaW5lZDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIG5vVW5kZWZpbmVkPFQ+KHZhbDogVHx1bmRlZmluZWQpOiBUIHtcbiAgcmV0dXJuIHZhbCA9PT0gdW5kZWZpbmVkID8gbnVsbCEgOiB2YWw7XG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgVmFsdWVWaXNpdG9yIHtcbiAgdmlzaXRBcnJheShhcnI6IGFueVtdLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0U3RyaW5nTWFwKG1hcDoge1trZXk6IHN0cmluZ106IGFueX0sIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRQcmltaXRpdmUodmFsdWU6IGFueSwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdE90aGVyKHZhbHVlOiBhbnksIGNvbnRleHQ6IGFueSk6IGFueTtcbn1cblxuZXhwb3J0IGNsYXNzIFZhbHVlVHJhbnNmb3JtZXIgaW1wbGVtZW50cyBWYWx1ZVZpc2l0b3Ige1xuICB2aXNpdEFycmF5KGFycjogYW55W10sIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIGFyci5tYXAodmFsdWUgPT4gdmlzaXRWYWx1ZSh2YWx1ZSwgdGhpcywgY29udGV4dCkpO1xuICB9XG4gIHZpc2l0U3RyaW5nTWFwKG1hcDoge1trZXk6IHN0cmluZ106IGFueX0sIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgY29uc3QgcmVzdWx0OiB7W2tleTogc3RyaW5nXTogYW55fSA9IHt9O1xuICAgIE9iamVjdC5rZXlzKG1hcCkuZm9yRWFjaChrZXkgPT4ge1xuICAgICAgcmVzdWx0W2tleV0gPSB2aXNpdFZhbHVlKG1hcFtrZXldLCB0aGlzLCBjb250ZXh0KTtcbiAgICB9KTtcbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG4gIHZpc2l0UHJpbWl0aXZlKHZhbHVlOiBhbnksIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZhbHVlO1xuICB9XG4gIHZpc2l0T3RoZXIodmFsdWU6IGFueSwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmFsdWU7XG4gIH1cbn1cblxuZXhwb3J0IHR5cGUgU3luY0FzeW5jPFQ+ID0gVHxQcm9taXNlPFQ+O1xuXG5leHBvcnQgY29uc3QgU3luY0FzeW5jID0ge1xuICBhc3NlcnRTeW5jOiA8VD4odmFsdWU6IFN5bmNBc3luYzxUPik6IFQgPT4ge1xuICAgIGlmIChpc1Byb21pc2UodmFsdWUpKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoYElsbGVnYWwgc3RhdGU6IHZhbHVlIGNhbm5vdCBiZSBhIHByb21pc2VgKTtcbiAgICB9XG4gICAgcmV0dXJuIHZhbHVlO1xuICB9LFxuICB0aGVuOiA8VCwgUj4odmFsdWU6IFN5bmNBc3luYzxUPiwgY2I6ICh2YWx1ZTogVCkgPT4gUiB8IFByb21pc2U8Uj58IFN5bmNBc3luYzxSPik6XG4gICAgICBTeW5jQXN5bmM8Uj4gPT4ge1xuICAgICAgICByZXR1cm4gaXNQcm9taXNlKHZhbHVlKSA/IHZhbHVlLnRoZW4oY2IpIDogY2IodmFsdWUpO1xuICAgICAgfSxcbiAgYWxsOiA8VD4oc3luY0FzeW5jVmFsdWVzOiBTeW5jQXN5bmM8VD5bXSk6IFN5bmNBc3luYzxUW10+ID0+IHtcbiAgICByZXR1cm4gc3luY0FzeW5jVmFsdWVzLnNvbWUoaXNQcm9taXNlKSA/IFByb21pc2UuYWxsKHN5bmNBc3luY1ZhbHVlcykgOiBzeW5jQXN5bmNWYWx1ZXMgYXMgVFtdO1xuICB9XG59O1xuXG5leHBvcnQgZnVuY3Rpb24gZXJyb3IobXNnOiBzdHJpbmcpOiBuZXZlciB7XG4gIHRocm93IG5ldyBFcnJvcihgSW50ZXJuYWwgRXJyb3I6ICR7bXNnfWApO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gc3ludGF4RXJyb3IobXNnOiBzdHJpbmcsIHBhcnNlRXJyb3JzPzogUGFyc2VFcnJvcltdKTogRXJyb3Ige1xuICBjb25zdCBlcnJvciA9IEVycm9yKG1zZyk7XG4gIChlcnJvciBhcyBhbnkpW0VSUk9SX1NZTlRBWF9FUlJPUl0gPSB0cnVlO1xuICBpZiAocGFyc2VFcnJvcnMpIChlcnJvciBhcyBhbnkpW0VSUk9SX1BBUlNFX0VSUk9SU10gPSBwYXJzZUVycm9ycztcbiAgcmV0dXJuIGVycm9yO1xufVxuXG5jb25zdCBFUlJPUl9TWU5UQVhfRVJST1IgPSAnbmdTeW50YXhFcnJvcic7XG5jb25zdCBFUlJPUl9QQVJTRV9FUlJPUlMgPSAnbmdQYXJzZUVycm9ycyc7XG5cbmV4cG9ydCBmdW5jdGlvbiBpc1N5bnRheEVycm9yKGVycm9yOiBFcnJvcik6IGJvb2xlYW4ge1xuICByZXR1cm4gKGVycm9yIGFzIGFueSlbRVJST1JfU1lOVEFYX0VSUk9SXTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdldFBhcnNlRXJyb3JzKGVycm9yOiBFcnJvcik6IFBhcnNlRXJyb3JbXSB7XG4gIHJldHVybiAoZXJyb3IgYXMgYW55KVtFUlJPUl9QQVJTRV9FUlJPUlNdIHx8IFtdO1xufVxuXG4vLyBFc2NhcGUgY2hhcmFjdGVycyB0aGF0IGhhdmUgYSBzcGVjaWFsIG1lYW5pbmcgaW4gUmVndWxhciBFeHByZXNzaW9uc1xuZXhwb3J0IGZ1bmN0aW9uIGVzY2FwZVJlZ0V4cChzOiBzdHJpbmcpOiBzdHJpbmcge1xuICByZXR1cm4gcy5yZXBsYWNlKC8oWy4qKz9ePSE6JHt9KCl8W1xcXVxcL1xcXFxdKS9nLCAnXFxcXCQxJyk7XG59XG5cbmNvbnN0IFNUUklOR19NQVBfUFJPVE8gPSBPYmplY3QuZ2V0UHJvdG90eXBlT2Yoe30pO1xuZnVuY3Rpb24gaXNTdHJpY3RTdHJpbmdNYXAob2JqOiBhbnkpOiBib29sZWFuIHtcbiAgcmV0dXJuIHR5cGVvZiBvYmogPT09ICdvYmplY3QnICYmIG9iaiAhPT0gbnVsbCAmJiBPYmplY3QuZ2V0UHJvdG90eXBlT2Yob2JqKSA9PT0gU1RSSU5HX01BUF9QUk9UTztcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHV0ZjhFbmNvZGUoc3RyOiBzdHJpbmcpOiBzdHJpbmcge1xuICBsZXQgZW5jb2RlZCA9ICcnO1xuICBmb3IgKGxldCBpbmRleCA9IDA7IGluZGV4IDwgc3RyLmxlbmd0aDsgaW5kZXgrKykge1xuICAgIGxldCBjb2RlUG9pbnQgPSBzdHIuY2hhckNvZGVBdChpbmRleCk7XG5cbiAgICAvLyBkZWNvZGUgc3Vycm9nYXRlXG4gICAgLy8gc2VlIGh0dHBzOi8vbWF0aGlhc2J5bmVucy5iZS9ub3Rlcy9qYXZhc2NyaXB0LWVuY29kaW5nI3N1cnJvZ2F0ZS1mb3JtdWxhZVxuICAgIGlmIChjb2RlUG9pbnQgPj0gMHhkODAwICYmIGNvZGVQb2ludCA8PSAweGRiZmYgJiYgc3RyLmxlbmd0aCA+IChpbmRleCArIDEpKSB7XG4gICAgICBjb25zdCBsb3cgPSBzdHIuY2hhckNvZGVBdChpbmRleCArIDEpO1xuICAgICAgaWYgKGxvdyA+PSAweGRjMDAgJiYgbG93IDw9IDB4ZGZmZikge1xuICAgICAgICBpbmRleCsrO1xuICAgICAgICBjb2RlUG9pbnQgPSAoKGNvZGVQb2ludCAtIDB4ZDgwMCkgPDwgMTApICsgbG93IC0gMHhkYzAwICsgMHgxMDAwMDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICBpZiAoY29kZVBvaW50IDw9IDB4N2YpIHtcbiAgICAgIGVuY29kZWQgKz0gU3RyaW5nLmZyb21DaGFyQ29kZShjb2RlUG9pbnQpO1xuICAgIH0gZWxzZSBpZiAoY29kZVBvaW50IDw9IDB4N2ZmKSB7XG4gICAgICBlbmNvZGVkICs9IFN0cmluZy5mcm9tQ2hhckNvZGUoKChjb2RlUG9pbnQgPj4gNikgJiAweDFGKSB8IDB4YzAsIChjb2RlUG9pbnQgJiAweDNmKSB8IDB4ODApO1xuICAgIH0gZWxzZSBpZiAoY29kZVBvaW50IDw9IDB4ZmZmZikge1xuICAgICAgZW5jb2RlZCArPSBTdHJpbmcuZnJvbUNoYXJDb2RlKFxuICAgICAgICAgIChjb2RlUG9pbnQgPj4gMTIpIHwgMHhlMCwgKChjb2RlUG9pbnQgPj4gNikgJiAweDNmKSB8IDB4ODAsIChjb2RlUG9pbnQgJiAweDNmKSB8IDB4ODApO1xuICAgIH0gZWxzZSBpZiAoY29kZVBvaW50IDw9IDB4MWZmZmZmKSB7XG4gICAgICBlbmNvZGVkICs9IFN0cmluZy5mcm9tQ2hhckNvZGUoXG4gICAgICAgICAgKChjb2RlUG9pbnQgPj4gMTgpICYgMHgwNykgfCAweGYwLCAoKGNvZGVQb2ludCA+PiAxMikgJiAweDNmKSB8IDB4ODAsXG4gICAgICAgICAgKChjb2RlUG9pbnQgPj4gNikgJiAweDNmKSB8IDB4ODAsIChjb2RlUG9pbnQgJiAweDNmKSB8IDB4ODApO1xuICAgIH1cbiAgfVxuXG4gIHJldHVybiBlbmNvZGVkO1xufVxuXG5leHBvcnQgaW50ZXJmYWNlIE91dHB1dENvbnRleHQge1xuICBnZW5GaWxlUGF0aDogc3RyaW5nO1xuICBzdGF0ZW1lbnRzOiBvLlN0YXRlbWVudFtdO1xuICBjb25zdGFudFBvb2w6IENvbnN0YW50UG9vbDtcbiAgaW1wb3J0RXhwcihyZWZlcmVuY2U6IGFueSwgdHlwZVBhcmFtcz86IG8uVHlwZVtdfG51bGwsIHVzZVN1bW1hcmllcz86IGJvb2xlYW4pOiBvLkV4cHJlc3Npb247XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBzdHJpbmdpZnkodG9rZW46IGFueSk6IHN0cmluZyB7XG4gIGlmICh0eXBlb2YgdG9rZW4gPT09ICdzdHJpbmcnKSB7XG4gICAgcmV0dXJuIHRva2VuO1xuICB9XG5cbiAgaWYgKEFycmF5LmlzQXJyYXkodG9rZW4pKSB7XG4gICAgcmV0dXJuICdbJyArIHRva2VuLm1hcChzdHJpbmdpZnkpLmpvaW4oJywgJykgKyAnXSc7XG4gIH1cblxuICBpZiAodG9rZW4gPT0gbnVsbCkge1xuICAgIHJldHVybiAnJyArIHRva2VuO1xuICB9XG5cbiAgaWYgKHRva2VuLm92ZXJyaWRkZW5OYW1lKSB7XG4gICAgcmV0dXJuIGAke3Rva2VuLm92ZXJyaWRkZW5OYW1lfWA7XG4gIH1cblxuICBpZiAodG9rZW4ubmFtZSkge1xuICAgIHJldHVybiBgJHt0b2tlbi5uYW1lfWA7XG4gIH1cblxuICBpZiAoIXRva2VuLnRvU3RyaW5nKSB7XG4gICAgcmV0dXJuICdvYmplY3QnO1xuICB9XG5cbiAgLy8gV0FSTklORzogZG8gbm90IHRyeSB0byBgSlNPTi5zdHJpbmdpZnkodG9rZW4pYCBoZXJlXG4gIC8vIHNlZSBodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9hbmd1bGFyL2lzc3Vlcy8yMzQ0MFxuICBjb25zdCByZXMgPSB0b2tlbi50b1N0cmluZygpO1xuXG4gIGlmIChyZXMgPT0gbnVsbCkge1xuICAgIHJldHVybiAnJyArIHJlcztcbiAgfVxuXG4gIGNvbnN0IG5ld0xpbmVJbmRleCA9IHJlcy5pbmRleE9mKCdcXG4nKTtcbiAgcmV0dXJuIG5ld0xpbmVJbmRleCA9PT0gLTEgPyByZXMgOiByZXMuc3Vic3RyaW5nKDAsIG5ld0xpbmVJbmRleCk7XG59XG5cbi8qKlxuICogTGF6aWx5IHJldHJpZXZlcyB0aGUgcmVmZXJlbmNlIHZhbHVlIGZyb20gYSBmb3J3YXJkUmVmLlxuICovXG5leHBvcnQgZnVuY3Rpb24gcmVzb2x2ZUZvcndhcmRSZWYodHlwZTogYW55KTogYW55IHtcbiAgaWYgKHR5cGVvZiB0eXBlID09PSAnZnVuY3Rpb24nICYmIHR5cGUuaGFzT3duUHJvcGVydHkoJ19fZm9yd2FyZF9yZWZfXycpKSB7XG4gICAgcmV0dXJuIHR5cGUoKTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gdHlwZTtcbiAgfVxufVxuXG4vKipcbiAqIERldGVybWluZSBpZiB0aGUgYXJndW1lbnQgaXMgc2hhcGVkIGxpa2UgYSBQcm9taXNlXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBpc1Byb21pc2U8VCA9IGFueT4ob2JqOiBhbnkpOiBvYmogaXMgUHJvbWlzZTxUPiB7XG4gIC8vIGFsbG93IGFueSBQcm9taXNlL0ErIGNvbXBsaWFudCB0aGVuYWJsZS5cbiAgLy8gSXQncyB1cCB0byB0aGUgY2FsbGVyIHRvIGVuc3VyZSB0aGF0IG9iai50aGVuIGNvbmZvcm1zIHRvIHRoZSBzcGVjXG4gIHJldHVybiAhIW9iaiAmJiB0eXBlb2Ygb2JqLnRoZW4gPT09ICdmdW5jdGlvbic7XG59XG5cbmV4cG9ydCBjbGFzcyBWZXJzaW9uIHtcbiAgcHVibGljIHJlYWRvbmx5IG1ham9yOiBzdHJpbmc7XG4gIHB1YmxpYyByZWFkb25seSBtaW5vcjogc3RyaW5nO1xuICBwdWJsaWMgcmVhZG9ubHkgcGF0Y2g6IHN0cmluZztcblxuICBjb25zdHJ1Y3RvcihwdWJsaWMgZnVsbDogc3RyaW5nKSB7XG4gICAgY29uc3Qgc3BsaXRzID0gZnVsbC5zcGxpdCgnLicpO1xuICAgIHRoaXMubWFqb3IgPSBzcGxpdHNbMF07XG4gICAgdGhpcy5taW5vciA9IHNwbGl0c1sxXTtcbiAgICB0aGlzLnBhdGNoID0gc3BsaXRzLnNsaWNlKDIpLmpvaW4oJy4nKTtcbiAgfVxufVxuXG5leHBvcnQgaW50ZXJmYWNlIENvbnNvbGUge1xuICBsb2cobWVzc2FnZTogc3RyaW5nKTogdm9pZDtcbiAgd2FybihtZXNzYWdlOiBzdHJpbmcpOiB2b2lkO1xufVxuXG5cbmRlY2xhcmUgdmFyIFdvcmtlckdsb2JhbFNjb3BlOiBhbnk7XG4vLyBDb21tb25KUyAvIE5vZGUgaGF2ZSBnbG9iYWwgY29udGV4dCBleHBvc2VkIGFzIFwiZ2xvYmFsXCIgdmFyaWFibGUuXG4vLyBXZSBkb24ndCB3YW50IHRvIGluY2x1ZGUgdGhlIHdob2xlIG5vZGUuZC50cyB0aGlzIHRoaXMgY29tcGlsYXRpb24gdW5pdCBzbyB3ZSdsbCBqdXN0IGZha2Vcbi8vIHRoZSBnbG9iYWwgXCJnbG9iYWxcIiB2YXIgZm9yIG5vdy5cbmRlY2xhcmUgdmFyIGdsb2JhbDogYW55O1xuY29uc3QgX193aW5kb3cgPSB0eXBlb2Ygd2luZG93ICE9PSAndW5kZWZpbmVkJyAmJiB3aW5kb3c7XG5jb25zdCBfX3NlbGYgPSB0eXBlb2Ygc2VsZiAhPT0gJ3VuZGVmaW5lZCcgJiYgdHlwZW9mIFdvcmtlckdsb2JhbFNjb3BlICE9PSAndW5kZWZpbmVkJyAmJlxuICAgIHNlbGYgaW5zdGFuY2VvZiBXb3JrZXJHbG9iYWxTY29wZSAmJiBzZWxmO1xuY29uc3QgX19nbG9iYWwgPSB0eXBlb2YgZ2xvYmFsICE9PSAndW5kZWZpbmVkJyAmJiBnbG9iYWw7XG5cbi8vIENoZWNrIF9fZ2xvYmFsIGZpcnN0LCBiZWNhdXNlIGluIE5vZGUgdGVzdHMgYm90aCBfX2dsb2JhbCBhbmQgX193aW5kb3cgbWF5IGJlIGRlZmluZWQgYW5kIF9nbG9iYWxcbi8vIHNob3VsZCBiZSBfX2dsb2JhbCBpbiB0aGF0IGNhc2UuXG5jb25zdCBfZ2xvYmFsOiB7W25hbWU6IHN0cmluZ106IGFueX0gPSBfX2dsb2JhbCB8fCBfX3dpbmRvdyB8fCBfX3NlbGY7XG5leHBvcnQge19nbG9iYWwgYXMgZ2xvYmFsfTtcblxuZXhwb3J0IGZ1bmN0aW9uIG5ld0FycmF5PFQgPSBhbnk+KHNpemU6IG51bWJlcik6IFRbXTtcbmV4cG9ydCBmdW5jdGlvbiBuZXdBcnJheTxUPihzaXplOiBudW1iZXIsIHZhbHVlOiBUKTogVFtdO1xuZXhwb3J0IGZ1bmN0aW9uIG5ld0FycmF5PFQ+KHNpemU6IG51bWJlciwgdmFsdWU/OiBUKTogVFtdIHtcbiAgY29uc3QgbGlzdDogVFtdID0gW107XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgc2l6ZTsgaSsrKSB7XG4gICAgbGlzdC5wdXNoKHZhbHVlISk7XG4gIH1cbiAgcmV0dXJuIGxpc3Q7XG59XG5cbi8qKlxuICogUGFydGl0aW9ucyBhIGdpdmVuIGFycmF5IGludG8gMiBhcnJheXMsIGJhc2VkIG9uIGEgYm9vbGVhbiB2YWx1ZSByZXR1cm5lZCBieSB0aGUgY29uZGl0aW9uXG4gKiBmdW5jdGlvbi5cbiAqXG4gKiBAcGFyYW0gYXJyIElucHV0IGFycmF5IHRoYXQgc2hvdWxkIGJlIHBhcnRpdGlvbmVkXG4gKiBAcGFyYW0gY29uZGl0aW9uRm4gQ29uZGl0aW9uIGZ1bmN0aW9uIHRoYXQgaXMgY2FsbGVkIGZvciBlYWNoIGl0ZW0gaW4gYSBnaXZlbiBhcnJheSBhbmQgcmV0dXJucyBhXG4gKiBib29sZWFuIHZhbHVlLlxuICovXG5leHBvcnQgZnVuY3Rpb24gcGFydGl0aW9uQXJyYXk8VD4oXG4gICAgYXJyOiBUW10sIGNvbmRpdGlvbkZuOiA8SyBleHRlbmRzIFQ+KHZhbHVlOiBLKSA9PiBib29sZWFuKTogW1RbXSwgVFtdXSB7XG4gIGNvbnN0IHRydXRoeTogVFtdID0gW107XG4gIGNvbnN0IGZhbHN5OiBUW10gPSBbXTtcbiAgYXJyLmZvckVhY2goaXRlbSA9PiB7XG4gICAgKGNvbmRpdGlvbkZuKGl0ZW0pID8gdHJ1dGh5IDogZmFsc3kpLnB1c2goaXRlbSk7XG4gIH0pO1xuICByZXR1cm4gW3RydXRoeSwgZmFsc3ldO1xufVxuIl19