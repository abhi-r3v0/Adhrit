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
        define("@angular/compiler/src/render3/util", ["require", "exports", "@angular/compiler/src/aot/static_symbol", "@angular/compiler/src/output/output_ast"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var static_symbol_1 = require("@angular/compiler/src/aot/static_symbol");
    var o = require("@angular/compiler/src/output/output_ast");
    /**
     * Convert an object map with `Expression` values into a `LiteralMapExpr`.
     */
    function mapToMapExpression(map) {
        var result = Object.keys(map).map(function (key) { return ({
            key: key,
            // The assertion here is because really TypeScript doesn't allow us to express that if the
            // key is present, it will have a value, but this is true in reality.
            value: map[key],
            quoted: false,
        }); });
        return o.literalMap(result);
    }
    exports.mapToMapExpression = mapToMapExpression;
    /**
     * Convert metadata into an `Expression` in the given `OutputContext`.
     *
     * This operation will handle arrays, references to symbols, or literal `null` or `undefined`.
     */
    function convertMetaToOutput(meta, ctx) {
        if (Array.isArray(meta)) {
            return o.literalArr(meta.map(function (entry) { return convertMetaToOutput(entry, ctx); }));
        }
        if (meta instanceof static_symbol_1.StaticSymbol) {
            return ctx.importExpr(meta);
        }
        if (meta == null) {
            return o.literal(meta);
        }
        throw new Error("Internal error: Unsupported or unknown metadata: " + meta);
    }
    exports.convertMetaToOutput = convertMetaToOutput;
    function typeWithParameters(type, numParams) {
        var params = null;
        if (numParams > 0) {
            params = [];
            for (var i = 0; i < numParams; i++) {
                params.push(o.DYNAMIC_TYPE);
            }
        }
        return o.expressionType(type, null, params);
    }
    exports.typeWithParameters = typeWithParameters;
    var ANIMATE_SYMBOL_PREFIX = '@';
    function prepareSyntheticPropertyName(name) {
        return "" + ANIMATE_SYMBOL_PREFIX + name;
    }
    exports.prepareSyntheticPropertyName = prepareSyntheticPropertyName;
    function prepareSyntheticListenerName(name, phase) {
        return "" + ANIMATE_SYMBOL_PREFIX + name + "." + phase;
    }
    exports.prepareSyntheticListenerName = prepareSyntheticListenerName;
    function isSyntheticPropertyOrListener(name) {
        return name.charAt(0) == ANIMATE_SYMBOL_PREFIX;
    }
    exports.isSyntheticPropertyOrListener = isSyntheticPropertyOrListener;
    function getSyntheticPropertyName(name) {
        // this will strip out listener phase values...
        // @foo.start => @foo
        var i = name.indexOf('.');
        name = i > 0 ? name.substring(0, i) : name;
        if (name.charAt(0) !== ANIMATE_SYMBOL_PREFIX) {
            name = ANIMATE_SYMBOL_PREFIX + name;
        }
        return name;
    }
    exports.getSyntheticPropertyName = getSyntheticPropertyName;
    function prepareSyntheticListenerFunctionName(name, phase) {
        return "animation_" + name + "_" + phase;
    }
    exports.prepareSyntheticListenerFunctionName = prepareSyntheticListenerFunctionName;
    function jitOnlyGuardedExpression(expr) {
        var ngJitMode = new o.ExternalExpr({ name: 'ngJitMode', moduleName: null });
        var jitFlagNotDefined = new o.BinaryOperatorExpr(o.BinaryOperator.Identical, new o.TypeofExpr(ngJitMode), o.literal('undefined'));
        var jitFlagUndefinedOrTrue = new o.BinaryOperatorExpr(o.BinaryOperator.Or, jitFlagNotDefined, ngJitMode, /* type */ undefined, 
        /* sourceSpan */ undefined, true);
        return new o.BinaryOperatorExpr(o.BinaryOperator.And, jitFlagUndefinedOrTrue, expr);
    }
    exports.jitOnlyGuardedExpression = jitOnlyGuardedExpression;
    function wrapReference(value) {
        var wrapped = new o.WrappedNodeExpr(value);
        return { value: wrapped, type: wrapped };
    }
    exports.wrapReference = wrapReference;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9yZW5kZXIzL3V0aWwudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7SUFFSCx5RUFBa0Q7SUFDbEQsMkRBQTBDO0lBRzFDOztPQUVHO0lBQ0gsU0FBZ0Isa0JBQWtCLENBQUMsR0FBOEM7UUFFL0UsSUFBTSxNQUFNLEdBQUcsTUFBTSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQyxHQUFHLENBQy9CLFVBQUEsR0FBRyxJQUFJLE9BQUEsQ0FBQztZQUNOLEdBQUcsS0FBQTtZQUNILDBGQUEwRjtZQUMxRixxRUFBcUU7WUFDckUsS0FBSyxFQUFFLEdBQUcsQ0FBQyxHQUFHLENBQUc7WUFDakIsTUFBTSxFQUFFLEtBQUs7U0FDZCxDQUFDLEVBTkssQ0FNTCxDQUFDLENBQUM7UUFDUixPQUFPLENBQUMsQ0FBQyxVQUFVLENBQUMsTUFBTSxDQUFDLENBQUM7SUFDOUIsQ0FBQztJQVhELGdEQVdDO0lBRUQ7Ozs7T0FJRztJQUNILFNBQWdCLG1CQUFtQixDQUFDLElBQVMsRUFBRSxHQUFrQjtRQUMvRCxJQUFJLEtBQUssQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLEVBQUU7WUFDdkIsT0FBTyxDQUFDLENBQUMsVUFBVSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsVUFBQSxLQUFLLElBQUksT0FBQSxtQkFBbUIsQ0FBQyxLQUFLLEVBQUUsR0FBRyxDQUFDLEVBQS9CLENBQStCLENBQUMsQ0FBQyxDQUFDO1NBQ3pFO1FBQ0QsSUFBSSxJQUFJLFlBQVksNEJBQVksRUFBRTtZQUNoQyxPQUFPLEdBQUcsQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLENBQUM7U0FDN0I7UUFDRCxJQUFJLElBQUksSUFBSSxJQUFJLEVBQUU7WUFDaEIsT0FBTyxDQUFDLENBQUMsT0FBTyxDQUFDLElB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UUM7SUFFRCxTQUFnQixhQUFhLENBQUMsS0FBVTtRQUN0QyxJQUFNLE9BQU8sR0FBRyxJQUFJLENBQUMsQ0FBQyxlQUFlLENBQUMsS0FBSyxDQUFDLENBQUM7UUFDN0MsT0FBTyxFQUFDLEtBQUssRUFBRSxPQUFPLEVBQUUsSUFBSSxFQUFFLE9BQU8sRUFBQyxDQUFDO0lBQ3pDLENBQUM7SUFIRCxzQ0FHQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtTdGF0aWNTeW1ib2x9IGZyb20gJy4uL2FvdC9zdGF0aWNfc3ltYm9sJztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi4vb3V0cHV0L291dHB1dF9hc3QnO1xuaW1wb3J0IHtPdXRwdXRDb250ZXh0fSBmcm9tICcuLi91dGlsJztcblxuLyoqXG4gKiBDb252ZXJ0IGFuIG9iamVjdCBtYXAgd2l0aCBgRXhwcmVzc2lvbmAgdmFsdWVzIGludG8gYSBgTGl0ZXJhbE1hcEV4cHJgLlxuICovXG5leHBvcnQgZnVuY3Rpb24gbWFwVG9NYXBFeHByZXNzaW9uKG1hcDoge1trZXk6IHN0cmluZ106IG8uRXhwcmVzc2lvbiB8IHVuZGVmaW5lZH0pOlxuICAgIG8uTGl0ZXJhbE1hcEV4cHIge1xuICBjb25zdCByZXN1bHQgPSBPYmplY3Qua2V5cyhtYXApLm1hcChcbiAgICAgIGtleSA9PiAoe1xuICAgICAgICBrZXksXG4gICAgICAgIC8vIFRoZSBhc3NlcnRpb24gaGVyZSBpcyBiZWNhdXNlIHJlYWxseSBUeXBlU2NyaXB0IGRvZXNuJ3QgYWxsb3cgdXMgdG8gZXhwcmVzcyB0aGF0IGlmIHRoZVxuICAgICAgICAvLyBrZXkgaXMgcHJlc2VudCwgaXQgd2lsbCBoYXZlIGEgdmFsdWUsIGJ1dCB0aGlzIGlzIHRydWUgaW4gcmVhbGl0eS5cbiAgICAgICAgdmFsdWU6IG1hcFtrZXldICEsXG4gICAgICAgIHF1b3RlZDogZmFsc2UsXG4gICAgICB9KSk7XG4gIHJldHVybiBvLmxpdGVyYWxNYXAocmVzdWx0KTtcbn1cblxuLyoqXG4gKiBDb252ZXJ0IG1ldGFkYXRhIGludG8gYW4gYEV4cHJlc3Npb25gIGluIHRoZSBnaXZlbiBgT3V0cHV0Q29udGV4dGAuXG4gKlxuICogVGhpcyBvcGVyYXRpb24gd2lsbCBoYW5kbGUgYXJyYXlzLCByZWZlcmVuY2VzIHRvIHN5bWJvbHMsIG9yIGxpdGVyYWwgYG51bGxgIG9yIGB1bmRlZmluZWRgLlxuICovXG5leHBvcnQgZnVuY3Rpb24gY29udmVydE1ldGFUb091dHB1dChtZXRhOiBhbnksIGN0eDogT3V0cHV0Q29udGV4dCk6IG8uRXhwcmVzc2lvbiB7XG4gIGlmIChBcnJheS5pc0FycmF5KG1ldGEpKSB7XG4gICAgcmV0dXJuIG8ubGl0ZXJhbEFycihtZXRhLm1hcChlbnRyeSA9PiBjb252ZXJ0TWV0YVRvT3V0cHV0KGVudHJ5LCBjdHgpKSk7XG4gIH1cbiAgaWYgKG1ldGEgaW5zdGFuY2VvZiBTdGF0aWNTeW1ib2wpIHtcbiAgICByZXR1cm4gY3R4LmltcG9ydEV4cHIobWV0YSk7XG4gIH1cbiAgaWYgKG1ldGEgPT0gbnVsbCkge1xuICAgIHJldHVybiBvLmxpdGVyYWwobWV0YSk7XG4gIH1cblxuICB0aHJvdyBuZXcgRXJyb3IoYEludGVybmFsIGVycm9yOiBVbnN1cHBvcnRlZCBvciB1bmtub3duIG1ldGFkYXRhOiAke21ldGF9YCk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiB0eXBlV2l0aFBhcmFtZXRlcnModHlwZTogby5FeHByZXNzaW9uLCBudW1QYXJhbXM6IG51bWJlcik6IG8uRXhwcmVzc2lvblR5cGUge1xuICBsZXQgcGFyYW1zOiBvLlR5cGVbXXxudWxsID0gbnVsbDtcbiAgaWYgKG51bVBhcmFtcyA+IDApIHtcbiAgICBwYXJhbXMgPSBbXTtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IG51bVBhcmFtczsgaSsrKSB7XG4gICAgICBwYXJhbXMucHVzaChvLkRZTkFNSUNfVFlQRSk7XG4gICAgfVxuICB9XG4gIHJldHVybiBvLmV4cHJlc3Npb25UeXBlKHR5cGUsIG51bGwsIHBhcmFtcyk7XG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgUjNSZWZlcmVuY2Uge1xuICB2YWx1ZTogby5FeHByZXNzaW9uO1xuICB0eXBlOiBvLkV4cHJlc3Npb247XG59XG5cbmNvbnN0IEFOSU1BVEVfU1lNQk9MX1BSRUZJWCA9ICdAJztcbmV4cG9ydCBmdW5jdGlvbiBwcmVwYXJlU3ludGhldGljUHJvcGVydHlOYW1lKG5hbWU6IHN0cmluZykge1xuICByZXR1cm4gYCR7QU5JTUFURV9TWU1CT0xfUFJFRklYfSR7bmFtZX1gO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gcHJlcGFyZVN5bnRoZXRpY0xpc3RlbmVyTmFtZShuYW1lOiBzdHJpbmcsIHBoYXNlOiBzdHJpbmcpIHtcbiAgcmV0dXJuIGAke0FOSU1BVEVfU1lNQk9MX1BSRUZJWH0ke25hbWV9LiR7cGhhc2V9YDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGlzU3ludGhldGljUHJvcGVydHlPckxpc3RlbmVyKG5hbWU6IHN0cmluZykge1xuICByZXR1cm4gbmFtZS5jaGFyQXQoMCkgPT0gQU5JTUFURV9TWU1CT0xfUFJFRklYO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0U3ludGhldGljUHJvcGVydHlOYW1lKG5hbWU6IHN0cmluZykge1xuICAvLyB0aGlzIHdpbGwgc3RyaXAgb3V0IGxpc3RlbmVyIHBoYXNlIHZhbHVlcy4uLlxuICAvLyBAZm9vLnN0YXJ0ID0+IEBmb29cbiAgY29uc3QgaSA9IG5hbWUuaW5kZXhPZignLicpO1xuICBuYW1lID0gaSA+IDAgPyBuYW1lLnN1YnN0cmluZygwLCBpKSA6IG5hbWU7XG4gIGlmIChuYW1lLmNoYXJBdCgwKSAhPT0gQU5JTUFURV9TWU1CT0xfUFJFRklYKSB7XG4gICAgbmFtZSA9IEFOSU1BVEVfU1lNQk9MX1BSRUZJWCArIG5hbWU7XG4gIH1cbiAgcmV0dXJuIG5hbWU7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBwcmVwYXJlU3ludGhldGljTGlzdGVuZXJGdW5jdGlvbk5hbWUobmFtZTogc3RyaW5nLCBwaGFzZTogc3RyaW5nKSB7XG4gIHJldHVybiBgYW5pbWF0aW9uXyR7bmFtZX1fJHtwaGFzZX1gO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaml0T25seUd1YXJkZWRFeHByZXNzaW9uKGV4cHI6IG8uRXhwcmVzc2lvbik6IG8uRXhwcmVzc2lvbiB7XG4gIGNvbnN0IG5nSml0TW9kZSA9IG5ldyBvLkV4dGVybmFsRXhwcih7bmFtZTogJ25nSml0TW9kZScsIG1vZHVsZU5hbWU6IG51bGx9KTtcbiAgY29uc3Qgaml0RmxhZ05vdERlZmluZWQgPSBuZXcgby5CaW5hcnlPcGVyYXRvckV4cHIoXG4gICAgICBvLkJpbmFyeU9wZXJhdG9yLklkZW50aWNhbCwgbmV3IG8uVHlwZW9mRXhwcihuZ0ppdE1vZGUpLCBvLmxpdGVyYWwoJ3VuZGVmaW5lZCcpKTtcbiAgY29uc3Qgaml0RmxhZ1VuZGVmaW5lZE9yVHJ1ZSA9IG5ldyBvLkJpbmFyeU9wZXJhdG9yRXhwcihcbiAgICAgIG8uQmluYXJ5T3BlcmF0b3IuT3IsIGppdEZsYWdOb3REZWZpbmVkLCBuZ0ppdE1vZGUsIC8qIHR5cGUgKi8gdW5kZWZpbmVkLFxuICAgICAgLyogc291cmNlU3BhbiAqLyB1bmRlZmluZWQsIHRydWUpO1xuICByZXR1cm4gbmV3IG8uQmluYXJ5T3BlcmF0b3JFeHByKG8uQmluYXJ5T3BlcmF0b3IuQW5kLCBqaXRGbGFnVW5kZWZpbmVkT3JUcnVlLCBleHByKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHdyYXBSZWZlcmVuY2UodmFsdWU6IGFueSk6IFIzUmVmZXJlbmNlIHtcbiAgY29uc3Qgd3JhcHBlZCA9IG5ldyBvLldyYXBwZWROb2RlRXhwcih2YWx1ZSk7XG4gIHJldHVybiB7dmFsdWU6IHdyYXBwZWQsIHR5cGU6IHdyYXBwZWR9O1xufSJdfQ==