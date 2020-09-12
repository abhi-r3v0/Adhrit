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
        define("@angular/compiler/src/render3/util", ["require", "exports", "@angular/compiler/src/aot/static_symbol", "@angular/compiler/src/output/output_ast"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.wrapReference = exports.jitOnlyGuardedExpression = exports.prepareSyntheticListenerFunctionName = exports.getSyntheticPropertyName = exports.isSyntheticPropertyOrListener = exports.prepareSyntheticListenerName = exports.prepareSyntheticPropertyName = exports.typeWithParameters = exports.convertMetaToOutput = exports.mapToMapExpression = void 0;
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9yZW5kZXIzL3V0aWwudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7O0lBRUgseUVBQWtEO0lBQ2xELDJEQUEwQztJQUcxQzs7T0FFRztJQUNILFNBQWdCLGtCQUFrQixDQUFDLEdBQTRDO1FBQzdFLElBQU0sTUFBTSxHQUFHLE1BQU0sQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLENBQUMsR0FBRyxDQUMvQixVQUFBLEdBQUcsSUFBSSxPQUFBLENBQUM7WUFDTixHQUFHLEtBQUE7WUFDSCwwRkFBMEY7WUFDMUYscUVBQXFFO1lBQ3JFLEtBQUssRUFBRSxHQUFHLENBQUMsR0FBRyxDQUFFO1lBQ2hCLE1BQU0sRUFBRSxLQUFLO1NBQ2QsQ0FBQyxFQU5LLENBTUwsQ0FBQyxDQUFDO1FBQ1IsT0FBTyxDQUFDLENBQUMsVUFBVSxDQUFDLE1BQU0sQ0FBQyxDQUFDO0lBQzlCLENBQUM7SUFWRCxnREFVQztJQUVEOzs7O09BSUc7SUFDSCxTQUFnQixtQkFBbUIsQ0FBQyxJQUFTLEVBQUUsR0FBa0I7UUFDL0QsSUFBSSxLQUFLLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxFQUFFO1lBQ3ZCLE9BQU8sQ0FBQyxDQUFDLFVBQVUsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLFVBQUEsS0FBSyxJQUFJLE9BQUEsbUJBQW1CLENBQUMsS0FBSyxFQUFFLEdBQUcsQ0FBQyxFQUEvQixDQUErQixDQUFDLENBQUMsQ0FBQztTQUN6RTtRQUNELElBQUksSUFBSSxZQUFZLDRCQUFZLEVBQUU7WUFDaEMsT0FBTyxHQUFHLENBQUMsVUFBVSxDQUFDLElBQUksQ0FBQyxDQUFDO1NBQzdCO1FBQ0QsSUFBSSxJQUFJLElBQUksSUFBSSxFQUFFO1lBQ2hCLE9BQU8sQ0FBQyxDQUFDLE9BQU8sQ0FBQyxJ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QVFDO0lBRUQsU0FBZ0IsYUFBYSxDQUFDLEtBQVU7UUFDdEMsSUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLENBQUMsZUFBZSxDQUFDLEtBQUssQ0FBQyxDQUFDO1FBQzdDLE9BQU8sRUFBQyxLQUFLLEVBQUUsT0FBTyxFQUFFLElBQUksRUFBRSxPQUFPLEVBQUMsQ0FBQztJQUN6QyxDQUFDO0lBSEQsc0NBR0MiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtTdGF0aWNTeW1ib2x9IGZyb20gJy4uL2FvdC9zdGF0aWNfc3ltYm9sJztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi4vb3V0cHV0L291dHB1dF9hc3QnO1xuaW1wb3J0IHtPdXRwdXRDb250ZXh0fSBmcm9tICcuLi91dGlsJztcblxuLyoqXG4gKiBDb252ZXJ0IGFuIG9iamVjdCBtYXAgd2l0aCBgRXhwcmVzc2lvbmAgdmFsdWVzIGludG8gYSBgTGl0ZXJhbE1hcEV4cHJgLlxuICovXG5leHBvcnQgZnVuY3Rpb24gbWFwVG9NYXBFeHByZXNzaW9uKG1hcDoge1trZXk6IHN0cmluZ106IG8uRXhwcmVzc2lvbnx1bmRlZmluZWR9KTogby5MaXRlcmFsTWFwRXhwciB7XG4gIGNvbnN0IHJlc3VsdCA9IE9iamVjdC5rZXlzKG1hcCkubWFwKFxuICAgICAga2V5ID0+ICh7XG4gICAgICAgIGtleSxcbiAgICAgICAgLy8gVGhlIGFzc2VydGlvbiBoZXJlIGlzIGJlY2F1c2UgcmVhbGx5IFR5cGVTY3JpcHQgZG9lc24ndCBhbGxvdyB1cyB0byBleHByZXNzIHRoYXQgaWYgdGhlXG4gICAgICAgIC8vIGtleSBpcyBwcmVzZW50LCBpdCB3aWxsIGhhdmUgYSB2YWx1ZSwgYnV0IHRoaXMgaXMgdHJ1ZSBpbiByZWFsaXR5LlxuICAgICAgICB2YWx1ZTogbWFwW2tleV0hLFxuICAgICAgICBxdW90ZWQ6IGZhbHNlLFxuICAgICAgfSkpO1xuICByZXR1cm4gby5saXRlcmFsTWFwKHJlc3VsdCk7XG59XG5cbi8qKlxuICogQ29udmVydCBtZXRhZGF0YSBpbnRvIGFuIGBFeHByZXNzaW9uYCBpbiB0aGUgZ2l2ZW4gYE91dHB1dENvbnRleHRgLlxuICpcbiAqIFRoaXMgb3BlcmF0aW9uIHdpbGwgaGFuZGxlIGFycmF5cywgcmVmZXJlbmNlcyB0byBzeW1ib2xzLCBvciBsaXRlcmFsIGBudWxsYCBvciBgdW5kZWZpbmVkYC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGNvbnZlcnRNZXRhVG9PdXRwdXQobWV0YTogYW55LCBjdHg6IE91dHB1dENvbnRleHQpOiBvLkV4cHJlc3Npb24ge1xuICBpZiAoQXJyYXkuaXNBcnJheShtZXRhKSkge1xuICAgIHJldHVybiBvLmxpdGVyYWxBcnIobWV0YS5tYXAoZW50cnkgPT4gY29udmVydE1ldGFUb091dHB1dChlbnRyeSwgY3R4KSkpO1xuICB9XG4gIGlmIChtZXRhIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB7XG4gICAgcmV0dXJuIGN0eC5pbXBvcnRFeHByKG1ldGEpO1xuICB9XG4gIGlmIChtZXRhID09IG51bGwpIHtcbiAgICByZXR1cm4gby5saXRlcmFsKG1ldGEpO1xuICB9XG5cbiAgdGhyb3cgbmV3IEVycm9yKGBJbnRlcm5hbCBlcnJvcjogVW5zdXBwb3J0ZWQgb3IgdW5rbm93biBtZXRhZGF0YTogJHttZXRhfWApO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gdHlwZVdpdGhQYXJhbWV0ZXJzKHR5cGU6IG8uRXhwcmVzc2lvbiwgbnVtUGFyYW1zOiBudW1iZXIpOiBvLkV4cHJlc3Npb25UeXBlIHtcbiAgbGV0IHBhcmFtczogby5UeXBlW118bnVsbCA9IG51bGw7XG4gIGlmIChudW1QYXJhbXMgPiAwKSB7XG4gICAgcGFyYW1zID0gW107XG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCBudW1QYXJhbXM7IGkrKykge1xuICAgICAgcGFyYW1zLnB1c2goby5EWU5BTUlDX1RZUEUpO1xuICAgIH1cbiAgfVxuICByZXR1cm4gby5leHByZXNzaW9uVHlwZSh0eXBlLCBudWxsLCBwYXJhbXMpO1xufVxuXG5leHBvcnQgaW50ZXJmYWNlIFIzUmVmZXJlbmNlIHtcbiAgdmFsdWU6IG8uRXhwcmVzc2lvbjtcbiAgdHlwZTogby5FeHByZXNzaW9uO1xufVxuXG5jb25zdCBBTklNQVRFX1NZTUJPTF9QUkVGSVggPSAnQCc7XG5leHBvcnQgZnVuY3Rpb24gcHJlcGFyZVN5bnRoZXRpY1Byb3BlcnR5TmFtZShuYW1lOiBzdHJpbmcpIHtcbiAgcmV0dXJuIGAke0FOSU1BVEVfU1lNQk9MX1BSRUZJWH0ke25hbWV9YDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHByZXBhcmVTeW50aGV0aWNMaXN0ZW5lck5hbWUobmFtZTogc3RyaW5nLCBwaGFzZTogc3RyaW5nKSB7XG4gIHJldHVybiBgJHtBTklNQVRFX1NZTUJPTF9QUkVGSVh9JHtuYW1lfS4ke3BoYXNlfWA7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpc1N5bnRoZXRpY1Byb3BlcnR5T3JMaXN0ZW5lcihuYW1lOiBzdHJpbmcpIHtcbiAgcmV0dXJuIG5hbWUuY2hhckF0KDApID09IEFOSU1BVEVfU1lNQk9MX1BSRUZJWDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdldFN5bnRoZXRpY1Byb3BlcnR5TmFtZShuYW1lOiBzdHJpbmcpIHtcbiAgLy8gdGhpcyB3aWxsIHN0cmlwIG91dCBsaXN0ZW5lciBwaGFzZSB2YWx1ZXMuLi5cbiAgLy8gQGZvby5zdGFydCA9PiBAZm9vXG4gIGNvbnN0IGkgPSBuYW1lLmluZGV4T2YoJy4nKTtcbiAgbmFtZSA9IGkgPiAwID8gbmFtZS5zdWJzdHJpbmcoMCwgaSkgOiBuYW1lO1xuICBpZiAobmFtZS5jaGFyQXQoMCkgIT09IEFOSU1BVEVfU1lNQk9MX1BSRUZJWCkge1xuICAgIG5hbWUgPSBBTklNQVRFX1NZTUJPTF9QUkVGSVggKyBuYW1lO1xuICB9XG4gIHJldHVybiBuYW1lO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gcHJlcGFyZVN5bnRoZXRpY0xpc3RlbmVyRnVuY3Rpb25OYW1lKG5hbWU6IHN0cmluZywgcGhhc2U6IHN0cmluZykge1xuICByZXR1cm4gYGFuaW1hdGlvbl8ke25hbWV9XyR7cGhhc2V9YDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGppdE9ubHlHdWFyZGVkRXhwcmVzc2lvbihleHByOiBvLkV4cHJlc3Npb24pOiBvLkV4cHJlc3Npb24ge1xuICBjb25zdCBuZ0ppdE1vZGUgPSBuZXcgby5FeHRlcm5hbEV4cHIoe25hbWU6ICduZ0ppdE1vZGUnLCBtb2R1bGVOYW1lOiBudWxsfSk7XG4gIGNvbnN0IGppdEZsYWdOb3REZWZpbmVkID0gbmV3IG8uQmluYXJ5T3BlcmF0b3JFeHByKFxuICAgICAgby5CaW5hcnlPcGVyYXRvci5JZGVudGljYWwsIG5ldyBvLlR5cGVvZkV4cHIobmdKaXRNb2RlKSwgby5saXRlcmFsKCd1bmRlZmluZWQnKSk7XG4gIGNvbnN0IGppdEZsYWdVbmRlZmluZWRPclRydWUgPSBuZXcgby5CaW5hcnlPcGVyYXRvckV4cHIoXG4gICAgICBvLkJpbmFyeU9wZXJhdG9yLk9yLCBqaXRGbGFnTm90RGVmaW5lZCwgbmdKaXRNb2RlLCAvKiB0eXBlICovIHVuZGVmaW5lZCxcbiAgICAgIC8qIHNvdXJjZVNwYW4gKi8gdW5kZWZpbmVkLCB0cnVlKTtcbiAgcmV0dXJuIG5ldyBvLkJpbmFyeU9wZXJhdG9yRXhwcihvLkJpbmFyeU9wZXJhdG9yLkFuZCwgaml0RmxhZ1VuZGVmaW5lZE9yVHJ1ZSwgZXhwcik7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiB3cmFwUmVmZXJlbmNlKHZhbHVlOiBhbnkpOiBSM1JlZmVyZW5jZSB7XG4gIGNvbnN0IHdyYXBwZWQgPSBuZXcgby5XcmFwcGVkTm9kZUV4cHIodmFsdWUpO1xuICByZXR1cm4ge3ZhbHVlOiB3cmFwcGVkLCB0eXBlOiB3cmFwcGVkfTtcbn1cbiJdfQ==