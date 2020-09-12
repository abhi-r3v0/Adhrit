/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __extends, __values } from "tslib";
//// Types
export var TypeModifier;
(function (TypeModifier) {
    TypeModifier[TypeModifier["Const"] = 0] = "Const";
})(TypeModifier || (TypeModifier = {}));
var Type = /** @class */ (function () {
    function Type(modifiers) {
        if (modifiers === void 0) { modifiers = null; }
        this.modifiers = modifiers;
        if (!modifiers) {
            this.modifiers = [];
        }
    }
    Type.prototype.hasModifier = function (modifier) { return this.modifiers.indexOf(modifier) !== -1; };
    return Type;
}());
export { Type };
export var BuiltinTypeName;
(function (BuiltinTypeName) {
    BuiltinTypeName[BuiltinTypeName["Dynamic"] = 0] = "Dynamic";
    BuiltinTypeName[BuiltinTypeName["Bool"] = 1] = "Bool";
    BuiltinTypeName[BuiltinTypeName["String"] = 2] = "String";
    BuiltinTypeName[BuiltinTypeName["Int"] = 3] = "Int";
    BuiltinTypeName[BuiltinTypeName["Number"] = 4] = "Number";
    BuiltinTypeName[BuiltinTypeName["Function"] = 5] = "Function";
    BuiltinTypeName[BuiltinTypeName["Inferred"] = 6] = "Inferred";
    BuiltinTypeName[BuiltinTypeName["None"] = 7] = "None";
})(BuiltinTypeName || (BuiltinTypeName = {}));
var BuiltinType = /** @class */ (function (_super) {
    __extends(BuiltinType, _super);
    function BuiltinType(name, modifiers) {
        if (modifiers === void 0) { modifiers = null; }
        var _this = _super.call(this, modifiers) || this;
        _this.name = name;
        return _this;
    }
    BuiltinType.prototype.visitType = function (visitor, context) {
        return visitor.visitBuiltinType(this, context);
    };
    return BuiltinType;
}(Type));
export { BuiltinType };
var ExpressionType = /** @class */ (function (_super) {
    __extends(ExpressionType, _super);
    function ExpressionType(value, modifiers, typeParams) {
        if (modifiers === void 0) { modifiers = null; }
        if (typeParams === void 0) { typeParams = null; }
        var _this = _super.call(this, modifiers) || this;
        _this.value = value;
        _this.typeParams = typeParams;
        return _this;
    }
    ExpressionType.prototype.visitType = function (visitor, context) {
        return visitor.visitExpressionType(this, context);
    };
    return ExpressionType;
}(Type));
export { ExpressionType };
var ArrayType = /** @class */ (function (_super) {
    __extends(ArrayType, _super);
    function ArrayType(of, modifiers) {
        if (modifiers === void 0) { modifiers = null; }
        var _this = _super.call(this, modifiers) || this;
        _this.of = of;
        return _this;
    }
    ArrayType.prototype.visitType = function (visitor, context) {
        return visitor.visitArrayType(this, context);
    };
    return ArrayType;
}(Type));
export { ArrayType };
var MapType = /** @class */ (function (_super) {
    __extends(MapType, _super);
    function MapType(valueType, modifiers) {
        if (modifiers === void 0) { modifiers = null; }
        var _this = _super.call(this, modifiers) || this;
        _this.valueType = valueType || null;
        return _this;
    }
    MapType.prototype.visitType = function (visitor, context) { return visitor.visitMapType(this, context); };
    return MapType;
}(Type));
export { MapType };
export var DYNAMIC_TYPE = new BuiltinType(BuiltinTypeName.Dynamic);
export var INFERRED_TYPE = new BuiltinType(BuiltinTypeName.Inferred);
export var BOOL_TYPE = new BuiltinType(BuiltinTypeName.Bool);
export var INT_TYPE = new BuiltinType(BuiltinTypeName.Int);
export var NUMBER_TYPE = new BuiltinType(BuiltinTypeName.Number);
export var STRING_TYPE = new BuiltinType(BuiltinTypeName.String);
export var FUNCTION_TYPE = new BuiltinType(BuiltinTypeName.Function);
export var NONE_TYPE = new BuiltinType(BuiltinTypeName.None);
///// Expressions
export var BinaryOperator;
(function (BinaryOperator) {
    BinaryOperator[BinaryOperator["Equals"] = 0] = "Equals";
    BinaryOperator[BinaryOperator["NotEquals"] = 1] = "NotEquals";
    BinaryOperator[BinaryOperator["Identical"] = 2] = "Identical";
    BinaryOperator[BinaryOperator["NotIdentical"] = 3] = "NotIdentical";
    BinaryOperator[BinaryOperator["Minus"] = 4] = "Minus";
    BinaryOperator[BinaryOperator["Plus"] = 5] = "Plus";
    BinaryOperator[BinaryOperator["Divide"] = 6] = "Divide";
    BinaryOperator[BinaryOperator["Multiply"] = 7] = "Multiply";
    BinaryOperator[BinaryOperator["Modulo"] = 8] = "Modulo";
    BinaryOperator[BinaryOperator["And"] = 9] = "And";
    BinaryOperator[BinaryOperator["Or"] = 10] = "Or";
    BinaryOperator[BinaryOperator["BitwiseAnd"] = 11] = "BitwiseAnd";
    BinaryOperator[BinaryOperator["Lower"] = 12] = "Lower";
    BinaryOperator[BinaryOperator["LowerEquals"] = 13] = "LowerEquals";
    BinaryOperator[BinaryOperator["Bigger"] = 14] = "Bigger";
    BinaryOperator[BinaryOperator["BiggerEquals"] = 15] = "BiggerEquals";
})(BinaryOperator || (BinaryOperator = {}));
export function nullSafeIsEquivalent(base, other) {
    if (base == null || other == null) {
        return base == other;
    }
    return base.isEquivalent(other);
}
export function areAllEquivalent(base, other) {
    var len = base.length;
    if (len !== other.length) {
        return false;
    }
    for (var i = 0; i < len; i++) {
        if (!base[i].isEquivalent(other[i])) {
            return false;
        }
    }
    return true;
}
var Expression = /** @class */ (function () {
    function Expression(type, sourceSpan) {
        this.type = type || null;
        this.sourceSpan = sourceSpan || null;
    }
    Expression.prototype.prop = function (name, sourceSpan) {
        return new ReadPropExpr(this, name, null, sourceSpan);
    };
    Expression.prototype.key = function (index, type, sourceSpan) {
        return new ReadKeyExpr(this, index, type, sourceSpan);
    };
    Expression.prototype.callMethod = function (name, params, sourceSpan) {
        return new InvokeMethodExpr(this, name, params, null, sourceSpan);
    };
    Expression.prototype.callFn = function (params, sourceSpan) {
        return new InvokeFunctionExpr(this, params, null, sourceSpan);
    };
    Expression.prototype.instantiate = function (params, type, sourceSpan) {
        return new InstantiateExpr(this, params, type, sourceSpan);
    };
    Expression.prototype.conditional = function (trueCase, falseCase, sourceSpan) {
        if (falseCase === void 0) { falseCase = null; }
        return new ConditionalExpr(this, trueCase, falseCase, null, sourceSpan);
    };
    Expression.prototype.equals = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Equals, this, rhs, null, sourceSpan);
    };
    Expression.prototype.notEquals = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.NotEquals, this, rhs, null, sourceSpan);
    };
    Expression.prototype.identical = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Identical, this, rhs, null, sourceSpan);
    };
    Expression.prototype.notIdentical = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.NotIdentical, this, rhs, null, sourceSpan);
    };
    Expression.prototype.minus = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Minus, this, rhs, null, sourceSpan);
    };
    Expression.prototype.plus = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Plus, this, rhs, null, sourceSpan);
    };
    Expression.prototype.divide = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Divide, this, rhs, null, sourceSpan);
    };
    Expression.prototype.multiply = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Multiply, this, rhs, null, sourceSpan);
    };
    Expression.prototype.modulo = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Modulo, this, rhs, null, sourceSpan);
    };
    Expression.prototype.and = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.And, this, rhs, null, sourceSpan);
    };
    Expression.prototype.bitwiseAnd = function (rhs, sourceSpan, parens) {
        if (parens === void 0) { parens = true; }
        return new BinaryOperatorExpr(BinaryOperator.BitwiseAnd, this, rhs, null, sourceSpan, parens);
    };
    Expression.prototype.or = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Or, this, rhs, null, sourceSpan);
    };
    Expression.prototype.lower = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Lower, this, rhs, null, sourceSpan);
    };
    Expression.prototype.lowerEquals = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.LowerEquals, this, rhs, null, sourceSpan);
    };
    Expression.prototype.bigger = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Bigger, this, rhs, null, sourceSpan);
    };
    Expression.prototype.biggerEquals = function (rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.BiggerEquals, this, rhs, null, sourceSpan);
    };
    Expression.prototype.isBlank = function (sourceSpan) {
        // Note: We use equals by purpose here to compare to null and undefined in JS.
        // We use the typed null to allow strictNullChecks to narrow types.
        return this.equals(TYPED_NULL_EXPR, sourceSpan);
    };
    Expression.prototype.cast = function (type, sourceSpan) {
        return new CastExpr(this, type, sourceSpan);
    };
    Expression.prototype.toStmt = function () { return new ExpressionStatement(this, null); };
    return Expression;
}());
export { Expression };
export var BuiltinVar;
(function (BuiltinVar) {
    BuiltinVar[BuiltinVar["This"] = 0] = "This";
    BuiltinVar[BuiltinVar["Super"] = 1] = "Super";
    BuiltinVar[BuiltinVar["CatchError"] = 2] = "CatchError";
    BuiltinVar[BuiltinVar["CatchStack"] = 3] = "CatchStack";
})(BuiltinVar || (BuiltinVar = {}));
var ReadVarExpr = /** @class */ (function (_super) {
    __extends(ReadVarExpr, _super);
    function ReadVarExpr(name, type, sourceSpan) {
        var _this = _super.call(this, type, sourceSpan) || this;
        if (typeof name === 'string') {
            _this.name = name;
            _this.builtin = null;
        }
        else {
            _this.name = null;
            _this.builtin = name;
        }
        return _this;
    }
    ReadVarExpr.prototype.isEquivalent = function (e) {
        return e instanceof ReadVarExpr && this.name === e.name && this.builtin === e.builtin;
    };
    ReadVarExpr.prototype.isConstant = function () { return false; };
    ReadVarExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitReadVarExpr(this, context);
    };
    ReadVarExpr.prototype.set = function (value) {
        if (!this.name) {
            throw new Error("Built in variable " + this.builtin + " can not be assigned to.");
        }
        return new WriteVarExpr(this.name, value, null, this.sourceSpan);
    };
    return ReadVarExpr;
}(Expression));
export { ReadVarExpr };
var TypeofExpr = /** @class */ (function (_super) {
    __extends(TypeofExpr, _super);
    function TypeofExpr(expr, type, sourceSpan) {
        var _this = _super.call(this, type, sourceSpan) || this;
        _this.expr = expr;
        return _this;
    }
    TypeofExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitTypeofExpr(this, context);
    };
    TypeofExpr.prototype.isEquivalent = function (e) {
        return e instanceof TypeofExpr && e.expr.isEquivalent(this.expr);
    };
    TypeofExpr.prototype.isConstant = function () { return this.expr.isConstant(); };
    return TypeofExpr;
}(Expression));
export { TypeofExpr };
var WrappedNodeExpr = /** @class */ (function (_super) {
    __extends(WrappedNodeExpr, _super);
    function WrappedNodeExpr(node, type, sourceSpan) {
        var _this = _super.call(this, type, sourceSpan) || this;
        _this.node = node;
        return _this;
    }
    WrappedNodeExpr.prototype.isEquivalent = function (e) {
        return e instanceof WrappedNodeExpr && this.node === e.node;
    };
    WrappedNodeExpr.prototype.isConstant = function () { return false; };
    WrappedNodeExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitWrappedNodeExpr(this, context);
    };
    return WrappedNodeExpr;
}(Expression));
export { WrappedNodeExpr };
var WriteVarExpr = /** @class */ (function (_super) {
    __extends(WriteVarExpr, _super);
    function WriteVarExpr(name, value, type, sourceSpan) {
        var _this = _super.call(this, type || value.type, sourceSpan) || this;
        _this.name = name;
        _this.value = value;
        return _this;
    }
    WriteVarExpr.prototype.isEquivalent = function (e) {
        return e instanceof WriteVarExpr && this.name === e.name && this.value.isEquivalent(e.value);
    };
    WriteVarExpr.prototype.isConstant = function () { return false; };
    WriteVarExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitWriteVarExpr(this, context);
    };
    WriteVarExpr.prototype.toDeclStmt = function (type, modifiers) {
        return new DeclareVarStmt(this.name, this.value, type, modifiers, this.sourceSpan);
    };
    WriteVarExpr.prototype.toConstDecl = function () { return this.toDeclStmt(INFERRED_TYPE, [StmtModifier.Final]); };
    return WriteVarExpr;
}(Expression));
export { WriteVarExpr };
var WriteKeyExpr = /** @class */ (function (_super) {
    __extends(WriteKeyExpr, _super);
    function WriteKeyExpr(receiver, index, value, type, sourceSpan) {
        var _this = _super.call(this, type || value.type, sourceSpan) || this;
        _this.receiver = receiver;
        _this.index = index;
        _this.value = value;
        return _this;
    }
    WriteKeyExpr.prototype.isEquivalent = function (e) {
        return e instanceof WriteKeyExpr && this.receiver.isEquivalent(e.receiver) &&
            this.index.isEquivalent(e.index) && this.value.isEquivalent(e.value);
    };
    WriteKeyExpr.prototype.isConstant = function () { return false; };
    WriteKeyExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitWriteKeyExpr(this, context);
    };
    return WriteKeyExpr;
}(Expression));
export { WriteKeyExpr };
var WritePropExpr = /** @class */ (function (_super) {
    __extends(WritePropExpr, _super);
    function WritePropExpr(receiver, name, value, type, sourceSpan) {
        var _this = _super.call(this, type || value.type, sourceSpan) || this;
        _this.receiver = receiver;
        _this.name = name;
        _this.value = value;
        return _this;
    }
    WritePropExpr.prototype.isEquivalent = function (e) {
        return e instanceof WritePropExpr && this.receiver.isEquivalent(e.receiver) &&
            this.name === e.name && this.value.isEquivalent(e.value);
    };
    WritePropExpr.prototype.isConstant = function () { return false; };
    WritePropExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitWritePropExpr(this, context);
    };
    return WritePropExpr;
}(Expression));
export { WritePropExpr };
export var BuiltinMethod;
(function (BuiltinMethod) {
    BuiltinMethod[BuiltinMethod["ConcatArray"] = 0] = "ConcatArray";
    BuiltinMethod[BuiltinMethod["SubscribeObservable"] = 1] = "SubscribeObservable";
    BuiltinMethod[BuiltinMethod["Bind"] = 2] = "Bind";
})(BuiltinMethod || (BuiltinMethod = {}));
var InvokeMethodExpr = /** @class */ (function (_super) {
    __extends(InvokeMethodExpr, _super);
    function InvokeMethodExpr(receiver, method, args, type, sourceSpan) {
        var _this = _super.call(this, type, sourceSpan) || this;
        _this.receiver = receiver;
        _this.args = args;
        if (typeof method === 'string') {
            _this.name = method;
            _this.builtin = null;
        }
        else {
            _this.name = null;
            _this.builtin = method;
        }
        return _this;
    }
    InvokeMethodExpr.prototype.isEquivalent = function (e) {
        return e instanceof InvokeMethodExpr && this.receiver.isEquivalent(e.receiver) &&
            this.name === e.name && this.builtin === e.builtin && areAllEquivalent(this.args, e.args);
    };
    InvokeMethodExpr.prototype.isConstant = function () { return false; };
    InvokeMethodExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitInvokeMethodExpr(this, context);
    };
    return InvokeMethodExpr;
}(Expression));
export { InvokeMethodExpr };
var InvokeFunctionExpr = /** @class */ (function (_super) {
    __extends(InvokeFunctionExpr, _super);
    function InvokeFunctionExpr(fn, args, type, sourceSpan, pure) {
        if (pure === void 0) { pure = false; }
        var _this = _super.call(this, type, sourceSpan) || this;
        _this.fn = fn;
        _this.args = args;
        _this.pure = pure;
        return _this;
    }
    InvokeFunctionExpr.prototype.isEquivalent = function (e) {
        return e instanceof InvokeFunctionExpr && this.fn.isEquivalent(e.fn) &&
            areAllEquivalent(this.args, e.args) && this.pure === e.pure;
    };
    InvokeFunctionExpr.prototype.isConstant = function () { return false; };
    InvokeFunctionExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitInvokeFunctionExpr(this, context);
    };
    return InvokeFunctionExpr;
}(Expression));
export { InvokeFunctionExpr };
var InstantiateExpr = /** @class */ (function (_super) {
    __extends(InstantiateExpr, _super);
    function InstantiateExpr(classExpr, args, type, sourceSpan) {
        var _this = _super.call(this, type, sourceSpan) || this;
        _this.classExpr = classExpr;
        _this.args = args;
        return _this;
    }
    InstantiateExpr.prototype.isEquivalent = function (e) {
        return e instanceof InstantiateExpr && this.classExpr.isEquivalent(e.classExpr) &&
            areAllEquivalent(this.args, e.args);
    };
    InstantiateExpr.prototype.isConstant = function () { return false; };
    InstantiateExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitInstantiateExpr(this, context);
    };
    return InstantiateExpr;
}(Expression));
export { InstantiateExpr };
var LiteralExpr = /** @class */ (function (_super) {
    __extends(LiteralExpr, _super);
    function LiteralExpr(value, type, sourceSpan) {
        var _this = _super.call(this, type, sourceSpan) || this;
        _this.value = value;
        return _this;
    }
    LiteralExpr.prototype.isEquivalent = function (e) {
        return e instanceof LiteralExpr && this.value === e.value;
    };
    LiteralExpr.prototype.isConstant = function () { return true; };
    LiteralExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitLiteralExpr(this, context);
    };
    return LiteralExpr;
}(Expression));
export { LiteralExpr };
var LocalizedString = /** @class */ (function (_super) {
    __extends(LocalizedString, _super);
    function LocalizedString(metaBlock, messageParts, placeHolderNames, expressions, sourceSpan) {
        var _this = _super.call(this, STRING_TYPE, sourceSpan) || this;
        _this.metaBlock = metaBlock;
        _this.messageParts = messageParts;
        _this.placeHolderNames = placeHolderNames;
        _this.expressions = expressions;
        return _this;
    }
    LocalizedString.prototype.isEquivalent = function (e) {
        // return e instanceof LocalizedString && this.message === e.message;
        return false;
    };
    LocalizedString.prototype.isConstant = function () { return false; };
    LocalizedString.prototype.visitExpression = function (visitor, context) {
        return visitor.visitLocalizedString(this, context);
    };
    /**
     * Serialize the given `meta` and `messagePart` into "cooked" and "raw" strings that can be used
     * in a `$localize` tagged string. The format of the metadata is the same as that parsed by
     * `parseI18nMeta()`.
     *
     * @param meta The metadata to serialize
     * @param messagePart The first part of the tagged string
     */
    LocalizedString.prototype.serializeI18nHead = function () {
        var MEANING_SEPARATOR = '|';
        var ID_SEPARATOR = '@@';
        var LEGACY_ID_INDICATOR = '␟';
        var metaBlock = this.metaBlock.description || '';
        if (this.metaBlock.meaning) {
            metaBlock = "" + this.metaBlock.meaning + MEANING_SEPARATOR + metaBlock;
        }
        if (this.metaBlock.customId) {
            metaBlock = "" + metaBlock + ID_SEPARATOR + this.metaBlock.customId;
        }
        if (this.metaBlock.legacyIds) {
            this.metaBlock.legacyIds.forEach(function (legacyId) { metaBlock = "" + metaBlock + LEGACY_ID_INDICATOR + legacyId; });
        }
        return createCookedRawString(metaBlock, this.messageParts[0]);
    };
    /**
     * Serialize the given `placeholderName` and `messagePart` into "cooked" and "raw" strings that
     * can be used in a `$localize` tagged string.
     *
     * @param placeholderName The placeholder name to serialize
     * @param messagePart The following message string after this placeholder
     */
    LocalizedString.prototype.serializeI18nTemplatePart = function (partIndex) {
        var placeholderName = this.placeHolderNames[partIndex - 1];
        var messagePart = this.messageParts[partIndex];
        return createCookedRawString(placeholderName, messagePart);
    };
    return LocalizedString;
}(Expression));
export { LocalizedString };
var escapeSlashes = function (str) { return str.replace(/\\/g, '\\\\'); };
var escapeStartingColon = function (str) { return str.replace(/^:/, '\\:'); };
var escapeColons = function (str) { return str.replace(/:/g, '\\:'); };
var escapeForMessagePart = function (str) {
    return str.replace(/`/g, '\\`').replace(/\${/g, '$\\{');
};
/**
 * Creates a `{cooked, raw}` object from the `metaBlock` and `messagePart`.
 *
 * The `raw` text must have various character sequences escaped:
 * * "\" would otherwise indicate that the next character is a control character.
 * * "`" and "${" are template string control sequences that would otherwise prematurely indicate
 *   the end of a message part.
 * * ":" inside a metablock would prematurely indicate the end of the metablock.
 * * ":" at the start of a messagePart with no metablock would erroneously indicate the start of a
 *   metablock.
 *
 * @param metaBlock Any metadata that should be prepended to the string
 * @param messagePart The message part of the string
 */
function createCookedRawString(metaBlock, messagePart) {
    if (metaBlock === '') {
        return {
            cooked: messagePart,
            raw: escapeForMessagePart(escapeStartingColon(escapeSlashes(messagePart)))
        };
    }
    else {
        return {
            cooked: ":" + metaBlock + ":" + messagePart,
            raw: escapeForMessagePart(":" + escapeColons(escapeSlashes(metaBlock)) + ":" + escapeSlashes(messagePart))
        };
    }
}
var ExternalExpr = /** @class */ (function (_super) {
    __extends(ExternalExpr, _super);
    function ExternalExpr(value, type, typeParams, sourceSpan) {
        if (typeParams === void 0) { typeParams = null; }
        var _this = _super.call(this, type, sourceSpan) || this;
        _this.value = value;
        _this.typeParams = typeParams;
        return _this;
    }
    ExternalExpr.prototype.isEquivalent = function (e) {
        return e instanceof ExternalExpr && this.value.name === e.value.name &&
            this.value.moduleName === e.value.moduleName && this.value.runtime === e.value.runtime;
    };
    ExternalExpr.prototype.isConstant = function () { return false; };
    ExternalExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitExternalExpr(this, context);
    };
    return ExternalExpr;
}(Expression));
export { ExternalExpr };
var ExternalReference = /** @class */ (function () {
    function ExternalReference(moduleName, name, runtime) {
        this.moduleName = moduleName;
        this.name = name;
        this.runtime = runtime;
    }
    return ExternalReference;
}());
export { ExternalReference };
var ConditionalExpr = /** @class */ (function (_super) {
    __extends(ConditionalExpr, _super);
    function ConditionalExpr(condition, trueCase, falseCase, type, sourceSpan) {
        if (falseCase === void 0) { falseCase = null; }
        var _this = _super.call(this, type || trueCase.type, sourceSpan) || this;
        _this.condition = condition;
        _this.falseCase = falseCase;
        _this.trueCase = trueCase;
        return _this;
    }
    ConditionalExpr.prototype.isEquivalent = function (e) {
        return e instanceof ConditionalExpr && this.condition.isEquivalent(e.condition) &&
            this.trueCase.isEquivalent(e.trueCase) && nullSafeIsEquivalent(this.falseCase, e.falseCase);
    };
    ConditionalExpr.prototype.isConstant = function () { return false; };
    ConditionalExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitConditionalExpr(this, context);
    };
    return ConditionalExpr;
}(Expression));
export { ConditionalExpr };
var NotExpr = /** @class */ (function (_super) {
    __extends(NotExpr, _super);
    function NotExpr(condition, sourceSpan) {
        var _this = _super.call(this, BOOL_TYPE, sourceSpan) || this;
        _this.condition = condition;
        return _this;
    }
    NotExpr.prototype.isEquivalent = function (e) {
        return e instanceof NotExpr && this.condition.isEquivalent(e.condition);
    };
    NotExpr.prototype.isConstant = function () { return false; };
    NotExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitNotExpr(this, context);
    };
    return NotExpr;
}(Expression));
export { NotExpr };
var AssertNotNull = /** @class */ (function (_super) {
    __extends(AssertNotNull, _super);
    function AssertNotNull(condition, sourceSpan) {
        var _this = _super.call(this, condition.type, sourceSpan) || this;
        _this.condition = condition;
        return _this;
    }
    AssertNotNull.prototype.isEquivalent = function (e) {
        return e instanceof AssertNotNull && this.condition.isEquivalent(e.condition);
    };
    AssertNotNull.prototype.isConstant = function () { return false; };
    AssertNotNull.prototype.visitExpression = function (visitor, context) {
        return visitor.visitAssertNotNullExpr(this, context);
    };
    return AssertNotNull;
}(Expression));
export { AssertNotNull };
var CastExpr = /** @class */ (function (_super) {
    __extends(CastExpr, _super);
    function CastExpr(value, type, sourceSpan) {
        var _this = _super.call(this, type, sourceSpan) || this;
        _this.value = value;
        return _this;
    }
    CastExpr.prototype.isEquivalent = function (e) {
        return e instanceof CastExpr && this.value.isEquivalent(e.value);
    };
    CastExpr.prototype.isConstant = function () { return false; };
    CastExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitCastExpr(this, context);
    };
    return CastExpr;
}(Expression));
export { CastExpr };
var FnParam = /** @class */ (function () {
    function FnParam(name, type) {
        if (type === void 0) { type = null; }
        this.name = name;
        this.type = type;
    }
    FnParam.prototype.isEquivalent = function (param) { return this.name === param.name; };
    return FnParam;
}());
export { FnParam };
var FunctionExpr = /** @class */ (function (_super) {
    __extends(FunctionExpr, _super);
    function FunctionExpr(params, statements, type, sourceSpan, name) {
        var _this = _super.call(this, type, sourceSpan) || this;
        _this.params = params;
        _this.statements = statements;
        _this.name = name;
        return _this;
    }
    FunctionExpr.prototype.isEquivalent = function (e) {
        return e instanceof FunctionExpr && areAllEquivalent(this.params, e.params) &&
            areAllEquivalent(this.statements, e.statements);
    };
    FunctionExpr.prototype.isConstant = function () { return false; };
    FunctionExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitFunctionExpr(this, context);
    };
    FunctionExpr.prototype.toDeclStmt = function (name, modifiers) {
        if (modifiers === void 0) { modifiers = null; }
        return new DeclareFunctionStmt(name, this.params, this.statements, this.type, modifiers, this.sourceSpan);
    };
    return FunctionExpr;
}(Expression));
export { FunctionExpr };
var BinaryOperatorExpr = /** @class */ (function (_super) {
    __extends(BinaryOperatorExpr, _super);
    function BinaryOperatorExpr(operator, lhs, rhs, type, sourceSpan, parens) {
        if (parens === void 0) { parens = true; }
        var _this = _super.call(this, type || lhs.type, sourceSpan) || this;
        _this.operator = operator;
        _this.rhs = rhs;
        _this.parens = parens;
        _this.lhs = lhs;
        return _this;
    }
    BinaryOperatorExpr.prototype.isEquivalent = function (e) {
        return e instanceof BinaryOperatorExpr && this.operator === e.operator &&
            this.lhs.isEquivalent(e.lhs) && this.rhs.isEquivalent(e.rhs);
    };
    BinaryOperatorExpr.prototype.isConstant = function () { return false; };
    BinaryOperatorExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitBinaryOperatorExpr(this, context);
    };
    return BinaryOperatorExpr;
}(Expression));
export { BinaryOperatorExpr };
var ReadPropExpr = /** @class */ (function (_super) {
    __extends(ReadPropExpr, _super);
    function ReadPropExpr(receiver, name, type, sourceSpan) {
        var _this = _super.call(this, type, sourceSpan) || this;
        _this.receiver = receiver;
        _this.name = name;
        return _this;
    }
    ReadPropExpr.prototype.isEquivalent = function (e) {
        return e instanceof ReadPropExpr && this.receiver.isEquivalent(e.receiver) &&
            this.name === e.name;
    };
    ReadPropExpr.prototype.isConstant = function () { return false; };
    ReadPropExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitReadPropExpr(this, context);
    };
    ReadPropExpr.prototype.set = function (value) {
        return new WritePropExpr(this.receiver, this.name, value, null, this.sourceSpan);
    };
    return ReadPropExpr;
}(Expression));
export { ReadPropExpr };
var ReadKeyExpr = /** @class */ (function (_super) {
    __extends(ReadKeyExpr, _super);
    function ReadKeyExpr(receiver, index, type, sourceSpan) {
        var _this = _super.call(this, type, sourceSpan) || this;
        _this.receiver = receiver;
        _this.index = index;
        return _this;
    }
    ReadKeyExpr.prototype.isEquivalent = function (e) {
        return e instanceof ReadKeyExpr && this.receiver.isEquivalent(e.receiver) &&
            this.index.isEquivalent(e.index);
    };
    ReadKeyExpr.prototype.isConstant = function () { return false; };
    ReadKeyExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitReadKeyExpr(this, context);
    };
    ReadKeyExpr.prototype.set = function (value) {
        return new WriteKeyExpr(this.receiver, this.index, value, null, this.sourceSpan);
    };
    return ReadKeyExpr;
}(Expression));
export { ReadKeyExpr };
var LiteralArrayExpr = /** @class */ (function (_super) {
    __extends(LiteralArrayExpr, _super);
    function LiteralArrayExpr(entries, type, sourceSpan) {
        var _this = _super.call(this, type, sourceSpan) || this;
        _this.entries = entries;
        return _this;
    }
    LiteralArrayExpr.prototype.isConstant = function () { return this.entries.every(function (e) { return e.isConstant(); }); };
    LiteralArrayExpr.prototype.isEquivalent = function (e) {
        return e instanceof LiteralArrayExpr && areAllEquivalent(this.entries, e.entries);
    };
    LiteralArrayExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitLiteralArrayExpr(this, context);
    };
    return LiteralArrayExpr;
}(Expression));
export { LiteralArrayExpr };
var LiteralMapEntry = /** @class */ (function () {
    function LiteralMapEntry(key, value, quoted) {
        this.key = key;
        this.value = value;
        this.quoted = quoted;
    }
    LiteralMapEntry.prototype.isEquivalent = function (e) {
        return this.key === e.key && this.value.isEquivalent(e.value);
    };
    return LiteralMapEntry;
}());
export { LiteralMapEntry };
var LiteralMapExpr = /** @class */ (function (_super) {
    __extends(LiteralMapExpr, _super);
    function LiteralMapExpr(entries, type, sourceSpan) {
        var _this = _super.call(this, type, sourceSpan) || this;
        _this.entries = entries;
        _this.valueType = null;
        if (type) {
            _this.valueType = type.valueType;
        }
        return _this;
    }
    LiteralMapExpr.prototype.isEquivalent = function (e) {
        return e instanceof LiteralMapExpr && areAllEquivalent(this.entries, e.entries);
    };
    LiteralMapExpr.prototype.isConstant = function () { return this.entries.every(function (e) { return e.value.isConstant(); }); };
    LiteralMapExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitLiteralMapExpr(this, context);
    };
    return LiteralMapExpr;
}(Expression));
export { LiteralMapExpr };
var CommaExpr = /** @class */ (function (_super) {
    __extends(CommaExpr, _super);
    function CommaExpr(parts, sourceSpan) {
        var _this = _super.call(this, parts[parts.length - 1].type, sourceSpan) || this;
        _this.parts = parts;
        return _this;
    }
    CommaExpr.prototype.isEquivalent = function (e) {
        return e instanceof CommaExpr && areAllEquivalent(this.parts, e.parts);
    };
    CommaExpr.prototype.isConstant = function () { return false; };
    CommaExpr.prototype.visitExpression = function (visitor, context) {
        return visitor.visitCommaExpr(this, context);
    };
    return CommaExpr;
}(Expression));
export { CommaExpr };
export var THIS_EXPR = new ReadVarExpr(BuiltinVar.This, null, null);
export var SUPER_EXPR = new ReadVarExpr(BuiltinVar.Super, null, null);
export var CATCH_ERROR_VAR = new ReadVarExpr(BuiltinVar.CatchError, null, null);
export var CATCH_STACK_VAR = new ReadVarExpr(BuiltinVar.CatchStack, null, null);
export var NULL_EXPR = new LiteralExpr(null, null, null);
export var TYPED_NULL_EXPR = new LiteralExpr(null, INFERRED_TYPE, null);
//// Statements
export var StmtModifier;
(function (StmtModifier) {
    StmtModifier[StmtModifier["Final"] = 0] = "Final";
    StmtModifier[StmtModifier["Private"] = 1] = "Private";
    StmtModifier[StmtModifier["Exported"] = 2] = "Exported";
    StmtModifier[StmtModifier["Static"] = 3] = "Static";
})(StmtModifier || (StmtModifier = {}));
var Statement = /** @class */ (function () {
    function Statement(modifiers, sourceSpan) {
        this.modifiers = modifiers || [];
        this.sourceSpan = sourceSpan || null;
    }
    Statement.prototype.hasModifier = function (modifier) { return this.modifiers.indexOf(modifier) !== -1; };
    return Statement;
}());
export { Statement };
var DeclareVarStmt = /** @class */ (function (_super) {
    __extends(DeclareVarStmt, _super);
    function DeclareVarStmt(name, value, type, modifiers, sourceSpan) {
        if (modifiers === void 0) { modifiers = null; }
        var _this = _super.call(this, modifiers, sourceSpan) || this;
        _this.name = name;
        _this.value = value;
        _this.type = type || (value && value.type) || null;
        return _this;
    }
    DeclareVarStmt.prototype.isEquivalent = function (stmt) {
        return stmt instanceof DeclareVarStmt && this.name === stmt.name &&
            (this.value ? !!stmt.value && this.value.isEquivalent(stmt.value) : !stmt.value);
    };
    DeclareVarStmt.prototype.visitStatement = function (visitor, context) {
        return visitor.visitDeclareVarStmt(this, context);
    };
    return DeclareVarStmt;
}(Statement));
export { DeclareVarStmt };
var DeclareFunctionStmt = /** @class */ (function (_super) {
    __extends(DeclareFunctionStmt, _super);
    function DeclareFunctionStmt(name, params, statements, type, modifiers, sourceSpan) {
        if (modifiers === void 0) { modifiers = null; }
        var _this = _super.call(this, modifiers, sourceSpan) || this;
        _this.name = name;
        _this.params = params;
        _this.statements = statements;
        _this.type = type || null;
        return _this;
    }
    DeclareFunctionStmt.prototype.isEquivalent = function (stmt) {
        return stmt instanceof DeclareFunctionStmt && areAllEquivalent(this.params, stmt.params) &&
            areAllEquivalent(this.statements, stmt.statements);
    };
    DeclareFunctionStmt.prototype.visitStatement = function (visitor, context) {
        return visitor.visitDeclareFunctionStmt(this, context);
    };
    return DeclareFunctionStmt;
}(Statement));
export { DeclareFunctionStmt };
var ExpressionStatement = /** @class */ (function (_super) {
    __extends(ExpressionStatement, _super);
    function ExpressionStatement(expr, sourceSpan) {
        var _this = _super.call(this, null, sourceSpan) || this;
        _this.expr = expr;
        return _this;
    }
    ExpressionStatement.prototype.isEquivalent = function (stmt) {
        return stmt instanceof ExpressionStatement && this.expr.isEquivalent(stmt.expr);
    };
    ExpressionStatement.prototype.visitStatement = function (visitor, context) {
        return visitor.visitExpressionStmt(this, context);
    };
    return ExpressionStatement;
}(Statement));
export { ExpressionStatement };
var ReturnStatement = /** @class */ (function (_super) {
    __extends(ReturnStatement, _super);
    function ReturnStatement(value, sourceSpan) {
        var _this = _super.call(this, null, sourceSpan) || this;
        _this.value = value;
        return _this;
    }
    ReturnStatement.prototype.isEquivalent = function (stmt) {
        return stmt instanceof ReturnStatement && this.value.isEquivalent(stmt.value);
    };
    ReturnStatement.prototype.visitStatement = function (visitor, context) {
        return visitor.visitReturnStmt(this, context);
    };
    return ReturnStatement;
}(Statement));
export { ReturnStatement };
var AbstractClassPart = /** @class */ (function () {
    function AbstractClassPart(type, modifiers) {
        this.modifiers = modifiers;
        if (!modifiers) {
            this.modifiers = [];
        }
        this.type = type || null;
    }
    AbstractClassPart.prototype.hasModifier = function (modifier) { return this.modifiers.indexOf(modifier) !== -1; };
    return AbstractClassPart;
}());
export { AbstractClassPart };
var ClassField = /** @class */ (function (_super) {
    __extends(ClassField, _super);
    function ClassField(name, type, modifiers, initializer) {
        if (modifiers === void 0) { modifiers = null; }
        var _this = _super.call(this, type, modifiers) || this;
        _this.name = name;
        _this.initializer = initializer;
        return _this;
    }
    ClassField.prototype.isEquivalent = function (f) { return this.name === f.name; };
    return ClassField;
}(AbstractClassPart));
export { ClassField };
var ClassMethod = /** @class */ (function (_super) {
    __extends(ClassMethod, _super);
    function ClassMethod(name, params, body, type, modifiers) {
        if (modifiers === void 0) { modifiers = null; }
        var _this = _super.call(this, type, modifiers) || this;
        _this.name = name;
        _this.params = params;
        _this.body = body;
        return _this;
    }
    ClassMethod.prototype.isEquivalent = function (m) {
        return this.name === m.name && areAllEquivalent(this.body, m.body);
    };
    return ClassMethod;
}(AbstractClassPart));
export { ClassMethod };
var ClassGetter = /** @class */ (function (_super) {
    __extends(ClassGetter, _super);
    function ClassGetter(name, body, type, modifiers) {
        if (modifiers === void 0) { modifiers = null; }
        var _this = _super.call(this, type, modifiers) || this;
        _this.name = name;
        _this.body = body;
        return _this;
    }
    ClassGetter.prototype.isEquivalent = function (m) {
        return this.name === m.name && areAllEquivalent(this.body, m.body);
    };
    return ClassGetter;
}(AbstractClassPart));
export { ClassGetter };
var ClassStmt = /** @class */ (function (_super) {
    __extends(ClassStmt, _super);
    function ClassStmt(name, parent, fields, getters, constructorMethod, methods, modifiers, sourceSpan) {
        if (modifiers === void 0) { modifiers = null; }
        var _this = _super.call(this, modifiers, sourceSpan) || this;
        _this.name = name;
        _this.parent = parent;
        _this.fields = fields;
        _this.getters = getters;
        _this.constructorMethod = constructorMethod;
        _this.methods = methods;
        return _this;
    }
    ClassStmt.prototype.isEquivalent = function (stmt) {
        return stmt instanceof ClassStmt && this.name === stmt.name &&
            nullSafeIsEquivalent(this.parent, stmt.parent) &&
            areAllEquivalent(this.fields, stmt.fields) &&
            areAllEquivalent(this.getters, stmt.getters) &&
            this.constructorMethod.isEquivalent(stmt.constructorMethod) &&
            areAllEquivalent(this.methods, stmt.methods);
    };
    ClassStmt.prototype.visitStatement = function (visitor, context) {
        return visitor.visitDeclareClassStmt(this, context);
    };
    return ClassStmt;
}(Statement));
export { ClassStmt };
var IfStmt = /** @class */ (function (_super) {
    __extends(IfStmt, _super);
    function IfStmt(condition, trueCase, falseCase, sourceSpan) {
        if (falseCase === void 0) { falseCase = []; }
        var _this = _super.call(this, null, sourceSpan) || this;
        _this.condition = condition;
        _this.trueCase = trueCase;
        _this.falseCase = falseCase;
        return _this;
    }
    IfStmt.prototype.isEquivalent = function (stmt) {
        return stmt instanceof IfStmt && this.condition.isEquivalent(stmt.condition) &&
            areAllEquivalent(this.trueCase, stmt.trueCase) &&
            areAllEquivalent(this.falseCase, stmt.falseCase);
    };
    IfStmt.prototype.visitStatement = function (visitor, context) {
        return visitor.visitIfStmt(this, context);
    };
    return IfStmt;
}(Statement));
export { IfStmt };
var CommentStmt = /** @class */ (function (_super) {
    __extends(CommentStmt, _super);
    function CommentStmt(comment, multiline, sourceSpan) {
        if (multiline === void 0) { multiline = false; }
        var _this = _super.call(this, null, sourceSpan) || this;
        _this.comment = comment;
        _this.multiline = multiline;
        return _this;
    }
    CommentStmt.prototype.isEquivalent = function (stmt) { return stmt instanceof CommentStmt; };
    CommentStmt.prototype.visitStatement = function (visitor, context) {
        return visitor.visitCommentStmt(this, context);
    };
    return CommentStmt;
}(Statement));
export { CommentStmt };
var JSDocCommentStmt = /** @class */ (function (_super) {
    __extends(JSDocCommentStmt, _super);
    function JSDocCommentStmt(tags, sourceSpan) {
        if (tags === void 0) { tags = []; }
        var _this = _super.call(this, null, sourceSpan) || this;
        _this.tags = tags;
        return _this;
    }
    JSDocCommentStmt.prototype.isEquivalent = function (stmt) {
        return stmt instanceof JSDocCommentStmt && this.toString() === stmt.toString();
    };
    JSDocCommentStmt.prototype.visitStatement = function (visitor, context) {
        return visitor.visitJSDocCommentStmt(this, context);
    };
    JSDocCommentStmt.prototype.toString = function () { return serializeTags(this.tags); };
    return JSDocCommentStmt;
}(Statement));
export { JSDocCommentStmt };
var TryCatchStmt = /** @class */ (function (_super) {
    __extends(TryCatchStmt, _super);
    function TryCatchStmt(bodyStmts, catchStmts, sourceSpan) {
        var _this = _super.call(this, null, sourceSpan) || this;
        _this.bodyStmts = bodyStmts;
        _this.catchStmts = catchStmts;
        return _this;
    }
    TryCatchStmt.prototype.isEquivalent = function (stmt) {
        return stmt instanceof TryCatchStmt && areAllEquivalent(this.bodyStmts, stmt.bodyStmts) &&
            areAllEquivalent(this.catchStmts, stmt.catchStmts);
    };
    TryCatchStmt.prototype.visitStatement = function (visitor, context) {
        return visitor.visitTryCatchStmt(this, context);
    };
    return TryCatchStmt;
}(Statement));
export { TryCatchStmt };
var ThrowStmt = /** @class */ (function (_super) {
    __extends(ThrowStmt, _super);
    function ThrowStmt(error, sourceSpan) {
        var _this = _super.call(this, null, sourceSpan) || this;
        _this.error = error;
        return _this;
    }
    ThrowStmt.prototype.isEquivalent = function (stmt) {
        return stmt instanceof TryCatchStmt && this.error.isEquivalent(stmt.error);
    };
    ThrowStmt.prototype.visitStatement = function (visitor, context) {
        return visitor.visitThrowStmt(this, context);
    };
    return ThrowStmt;
}(Statement));
export { ThrowStmt };
var AstTransformer = /** @class */ (function () {
    function AstTransformer() {
    }
    AstTransformer.prototype.transformExpr = function (expr, context) { return expr; };
    AstTransformer.prototype.transformStmt = function (stmt, context) { return stmt; };
    AstTransformer.prototype.visitReadVarExpr = function (ast, context) { return this.transformExpr(ast, context); };
    AstTransformer.prototype.visitWrappedNodeExpr = function (ast, context) {
        return this.transformExpr(ast, context);
    };
    AstTransformer.prototype.visitTypeofExpr = function (expr, context) {
        return this.transformExpr(new TypeofExpr(expr.expr.visitExpression(this, context), expr.type, expr.sourceSpan), context);
    };
    AstTransformer.prototype.visitWriteVarExpr = function (expr, context) {
        return this.transformExpr(new WriteVarExpr(expr.name, expr.value.visitExpression(this, context), expr.type, expr.sourceSpan), context);
    };
    AstTransformer.prototype.visitWriteKeyExpr = function (expr, context) {
        return this.transformExpr(new WriteKeyExpr(expr.receiver.visitExpression(this, context), expr.index.visitExpression(this, context), expr.value.visitExpression(this, context), expr.type, expr.sourceSpan), context);
    };
    AstTransformer.prototype.visitWritePropExpr = function (expr, context) {
        return this.transformExpr(new WritePropExpr(expr.receiver.visitExpression(this, context), expr.name, expr.value.visitExpression(this, context), expr.type, expr.sourceSpan), context);
    };
    AstTransformer.prototype.visitInvokeMethodExpr = function (ast, context) {
        var method = ast.builtin || ast.name;
        return this.transformExpr(new InvokeMethodExpr(ast.receiver.visitExpression(this, context), method, this.visitAllExpressions(ast.args, context), ast.type, ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitInvokeFunctionExpr = function (ast, context) {
        return this.transformExpr(new InvokeFunctionExpr(ast.fn.visitExpression(this, context), this.visitAllExpressions(ast.args, context), ast.type, ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitInstantiateExpr = function (ast, context) {
        return this.transformExpr(new InstantiateExpr(ast.classExpr.visitExpression(this, context), this.visitAllExpressions(ast.args, context), ast.type, ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitLiteralExpr = function (ast, context) { return this.transformExpr(ast, context); };
    AstTransformer.prototype.visitLocalizedString = function (ast, context) {
        return this.transformExpr(new LocalizedString(ast.metaBlock, ast.messageParts, ast.placeHolderNames, this.visitAllExpressions(ast.expressions, context), ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitExternalExpr = function (ast, context) {
        return this.transformExpr(ast, context);
    };
    AstTransformer.prototype.visitConditionalExpr = function (ast, context) {
        return this.transformExpr(new ConditionalExpr(ast.condition.visitExpression(this, context), ast.trueCase.visitExpression(this, context), ast.falseCase.visitExpression(this, context), ast.type, ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitNotExpr = function (ast, context) {
        return this.transformExpr(new NotExpr(ast.condition.visitExpression(this, context), ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitAssertNotNullExpr = function (ast, context) {
        return this.transformExpr(new AssertNotNull(ast.condition.visitExpression(this, context), ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitCastExpr = function (ast, context) {
        return this.transformExpr(new CastExpr(ast.value.visitExpression(this, context), ast.type, ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitFunctionExpr = function (ast, context) {
        return this.transformExpr(new FunctionExpr(ast.params, this.visitAllStatements(ast.statements, context), ast.type, ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitBinaryOperatorExpr = function (ast, context) {
        return this.transformExpr(new BinaryOperatorExpr(ast.operator, ast.lhs.visitExpression(this, context), ast.rhs.visitExpression(this, context), ast.type, ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitReadPropExpr = function (ast, context) {
        return this.transformExpr(new ReadPropExpr(ast.receiver.visitExpression(this, context), ast.name, ast.type, ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitReadKeyExpr = function (ast, context) {
        return this.transformExpr(new ReadKeyExpr(ast.receiver.visitExpression(this, context), ast.index.visitExpression(this, context), ast.type, ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitLiteralArrayExpr = function (ast, context) {
        return this.transformExpr(new LiteralArrayExpr(this.visitAllExpressions(ast.entries, context), ast.type, ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitLiteralMapExpr = function (ast, context) {
        var _this = this;
        var entries = ast.entries.map(function (entry) { return new LiteralMapEntry(entry.key, entry.value.visitExpression(_this, context), entry.quoted); });
        var mapType = new MapType(ast.valueType, null);
        return this.transformExpr(new LiteralMapExpr(entries, mapType, ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitCommaExpr = function (ast, context) {
        return this.transformExpr(new CommaExpr(this.visitAllExpressions(ast.parts, context), ast.sourceSpan), context);
    };
    AstTransformer.prototype.visitAllExpressions = function (exprs, context) {
        var _this = this;
        return exprs.map(function (expr) { return expr.visitExpression(_this, context); });
    };
    AstTransformer.prototype.visitDeclareVarStmt = function (stmt, context) {
        var value = stmt.value && stmt.value.visitExpression(this, context);
        return this.transformStmt(new DeclareVarStmt(stmt.name, value, stmt.type, stmt.modifiers, stmt.sourceSpan), context);
    };
    AstTransformer.prototype.visitDeclareFunctionStmt = function (stmt, context) {
        return this.transformStmt(new DeclareFunctionStmt(stmt.name, stmt.params, this.visitAllStatements(stmt.statements, context), stmt.type, stmt.modifiers, stmt.sourceSpan), context);
    };
    AstTransformer.prototype.visitExpressionStmt = function (stmt, context) {
        return this.transformStmt(new ExpressionStatement(stmt.expr.visitExpression(this, context), stmt.sourceSpan), context);
    };
    AstTransformer.prototype.visitReturnStmt = function (stmt, context) {
        return this.transformStmt(new ReturnStatement(stmt.value.visitExpression(this, context), stmt.sourceSpan), context);
    };
    AstTransformer.prototype.visitDeclareClassStmt = function (stmt, context) {
        var _this = this;
        var parent = stmt.parent.visitExpression(this, context);
        var getters = stmt.getters.map(function (getter) { return new ClassGetter(getter.name, _this.visitAllStatements(getter.body, context), getter.type, getter.modifiers); });
        var ctorMethod = stmt.constructorMethod &&
            new ClassMethod(stmt.constructorMethod.name, stmt.constructorMethod.params, this.visitAllStatements(stmt.constructorMethod.body, context), stmt.constructorMethod.type, stmt.constructorMethod.modifiers);
        var methods = stmt.methods.map(function (method) { return new ClassMethod(method.name, method.params, _this.visitAllStatements(method.body, context), method.type, method.modifiers); });
        return this.transformStmt(new ClassStmt(stmt.name, parent, stmt.fields, getters, ctorMethod, methods, stmt.modifiers, stmt.sourceSpan), context);
    };
    AstTransformer.prototype.visitIfStmt = function (stmt, context) {
        return this.transformStmt(new IfStmt(stmt.condition.visitExpression(this, context), this.visitAllStatements(stmt.trueCase, context), this.visitAllStatements(stmt.falseCase, context), stmt.sourceSpan), context);
    };
    AstTransformer.prototype.visitTryCatchStmt = function (stmt, context) {
        return this.transformStmt(new TryCatchStmt(this.visitAllStatements(stmt.bodyStmts, context), this.visitAllStatements(stmt.catchStmts, context), stmt.sourceSpan), context);
    };
    AstTransformer.prototype.visitThrowStmt = function (stmt, context) {
        return this.transformStmt(new ThrowStmt(stmt.error.visitExpression(this, context), stmt.sourceSpan), context);
    };
    AstTransformer.prototype.visitCommentStmt = function (stmt, context) {
        return this.transformStmt(stmt, context);
    };
    AstTransformer.prototype.visitJSDocCommentStmt = function (stmt, context) {
        return this.transformStmt(stmt, context);
    };
    AstTransformer.prototype.visitAllStatements = function (stmts, context) {
        var _this = this;
        return stmts.map(function (stmt) { return stmt.visitStatement(_this, context); });
    };
    return AstTransformer;
}());
export { AstTransformer };
var RecursiveAstVisitor = /** @class */ (function () {
    function RecursiveAstVisitor() {
    }
    RecursiveAstVisitor.prototype.visitType = function (ast, context) { return ast; };
    RecursiveAstVisitor.prototype.visitExpression = function (ast, context) {
        if (ast.type) {
            ast.type.visitType(this, context);
        }
        return ast;
    };
    RecursiveAstVisitor.prototype.visitBuiltinType = function (type, context) { return this.visitType(type, context); };
    RecursiveAstVisitor.prototype.visitExpressionType = function (type, context) {
        var _this = this;
        type.value.visitExpression(this, context);
        if (type.typeParams !== null) {
            type.typeParams.forEach(function (param) { return _this.visitType(param, context); });
        }
        return this.visitType(type, context);
    };
    RecursiveAstVisitor.prototype.visitArrayType = function (type, context) { return this.visitType(type, context); };
    RecursiveAstVisitor.prototype.visitMapType = function (type, context) { return this.visitType(type, context); };
    RecursiveAstVisitor.prototype.visitWrappedNodeExpr = function (ast, context) { return ast; };
    RecursiveAstVisitor.prototype.visitTypeofExpr = function (ast, context) { return this.visitExpression(ast, context); };
    RecursiveAstVisitor.prototype.visitReadVarExpr = function (ast, context) {
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitWriteVarExpr = function (ast, context) {
        ast.value.visitExpression(this, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitWriteKeyExpr = function (ast, context) {
        ast.receiver.visitExpression(this, context);
        ast.index.visitExpression(this, context);
        ast.value.visitExpression(this, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitWritePropExpr = function (ast, context) {
        ast.receiver.visitExpression(this, context);
        ast.value.visitExpression(this, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitInvokeMethodExpr = function (ast, context) {
        ast.receiver.visitExpression(this, context);
        this.visitAllExpressions(ast.args, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitInvokeFunctionExpr = function (ast, context) {
        ast.fn.visitExpression(this, context);
        this.visitAllExpressions(ast.args, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitInstantiateExpr = function (ast, context) {
        ast.classExpr.visitExpression(this, context);
        this.visitAllExpressions(ast.args, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitLiteralExpr = function (ast, context) {
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitLocalizedString = function (ast, context) {
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitExternalExpr = function (ast, context) {
        var _this = this;
        if (ast.typeParams) {
            ast.typeParams.forEach(function (type) { return type.visitType(_this, context); });
        }
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitConditionalExpr = function (ast, context) {
        ast.condition.visitExpression(this, context);
        ast.trueCase.visitExpression(this, context);
        ast.falseCase.visitExpression(this, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitNotExpr = function (ast, context) {
        ast.condition.visitExpression(this, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitAssertNotNullExpr = function (ast, context) {
        ast.condition.visitExpression(this, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitCastExpr = function (ast, context) {
        ast.value.visitExpression(this, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitFunctionExpr = function (ast, context) {
        this.visitAllStatements(ast.statements, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitBinaryOperatorExpr = function (ast, context) {
        ast.lhs.visitExpression(this, context);
        ast.rhs.visitExpression(this, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitReadPropExpr = function (ast, context) {
        ast.receiver.visitExpression(this, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitReadKeyExpr = function (ast, context) {
        ast.receiver.visitExpression(this, context);
        ast.index.visitExpression(this, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitLiteralArrayExpr = function (ast, context) {
        this.visitAllExpressions(ast.entries, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitLiteralMapExpr = function (ast, context) {
        var _this = this;
        ast.entries.forEach(function (entry) { return entry.value.visitExpression(_this, context); });
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitCommaExpr = function (ast, context) {
        this.visitAllExpressions(ast.parts, context);
        return this.visitExpression(ast, context);
    };
    RecursiveAstVisitor.prototype.visitAllExpressions = function (exprs, context) {
        var _this = this;
        exprs.forEach(function (expr) { return expr.visitExpression(_this, context); });
    };
    RecursiveAstVisitor.prototype.visitDeclareVarStmt = function (stmt, context) {
        if (stmt.value) {
            stmt.value.visitExpression(this, context);
        }
        if (stmt.type) {
            stmt.type.visitType(this, context);
        }
        return stmt;
    };
    RecursiveAstVisitor.prototype.visitDeclareFunctionStmt = function (stmt, context) {
        this.visitAllStatements(stmt.statements, context);
        if (stmt.type) {
            stmt.type.visitType(this, context);
        }
        return stmt;
    };
    RecursiveAstVisitor.prototype.visitExpressionStmt = function (stmt, context) {
        stmt.expr.visitExpression(this, context);
        return stmt;
    };
    RecursiveAstVisitor.prototype.visitReturnStmt = function (stmt, context) {
        stmt.value.visitExpression(this, context);
        return stmt;
    };
    RecursiveAstVisitor.prototype.visitDeclareClassStmt = function (stmt, context) {
        var _this = this;
        stmt.parent.visitExpression(this, context);
        stmt.getters.forEach(function (getter) { return _this.visitAllStatements(getter.body, context); });
        if (stmt.constructorMethod) {
            this.visitAllStatements(stmt.constructorMethod.body, context);
        }
        stmt.methods.forEach(function (method) { return _this.visitAllStatements(method.body, context); });
        return stmt;
    };
    RecursiveAstVisitor.prototype.visitIfStmt = function (stmt, context) {
        stmt.condition.visitExpression(this, context);
        this.visitAllStatements(stmt.trueCase, context);
        this.visitAllStatements(stmt.falseCase, context);
        return stmt;
    };
    RecursiveAstVisitor.prototype.visitTryCatchStmt = function (stmt, context) {
        this.visitAllStatements(stmt.bodyStmts, context);
        this.visitAllStatements(stmt.catchStmts, context);
        return stmt;
    };
    RecursiveAstVisitor.prototype.visitThrowStmt = function (stmt, context) {
        stmt.error.visitExpression(this, context);
        return stmt;
    };
    RecursiveAstVisitor.prototype.visitCommentStmt = function (stmt, context) { return stmt; };
    RecursiveAstVisitor.prototype.visitJSDocCommentStmt = function (stmt, context) { return stmt; };
    RecursiveAstVisitor.prototype.visitAllStatements = function (stmts, context) {
        var _this = this;
        stmts.forEach(function (stmt) { return stmt.visitStatement(_this, context); });
    };
    return RecursiveAstVisitor;
}());
export { RecursiveAstVisitor };
export function findReadVarNames(stmts) {
    var visitor = new _ReadVarVisitor();
    visitor.visitAllStatements(stmts, null);
    return visitor.varNames;
}
var _ReadVarVisitor = /** @class */ (function (_super) {
    __extends(_ReadVarVisitor, _super);
    function _ReadVarVisitor() {
        var _this = _super !== null && _super.apply(this, arguments) || this;
        _this.varNames = new Set();
        return _this;
    }
    _ReadVarVisitor.prototype.visitDeclareFunctionStmt = function (stmt, context) {
        // Don't descend into nested functions
        return stmt;
    };
    _ReadVarVisitor.prototype.visitDeclareClassStmt = function (stmt, context) {
        // Don't descend into nested classes
        return stmt;
    };
    _ReadVarVisitor.prototype.visitReadVarExpr = function (ast, context) {
        if (ast.name) {
            this.varNames.add(ast.name);
        }
        return null;
    };
    return _ReadVarVisitor;
}(RecursiveAstVisitor));
export function collectExternalReferences(stmts) {
    var visitor = new _FindExternalReferencesVisitor();
    visitor.visitAllStatements(stmts, null);
    return visitor.externalReferences;
}
var _FindExternalReferencesVisitor = /** @class */ (function (_super) {
    __extends(_FindExternalReferencesVisitor, _super);
    function _FindExternalReferencesVisitor() {
        var _this = _super !== null && _super.apply(this, arguments) || this;
        _this.externalReferences = [];
        return _this;
    }
    _FindExternalReferencesVisitor.prototype.visitExternalExpr = function (e, context) {
        this.externalReferences.push(e.value);
        return _super.prototype.visitExternalExpr.call(this, e, context);
    };
    return _FindExternalReferencesVisitor;
}(RecursiveAstVisitor));
export function applySourceSpanToStatementIfNeeded(stmt, sourceSpan) {
    if (!sourceSpan) {
        return stmt;
    }
    var transformer = new _ApplySourceSpanTransformer(sourceSpan);
    return stmt.visitStatement(transformer, null);
}
export function applySourceSpanToExpressionIfNeeded(expr, sourceSpan) {
    if (!sourceSpan) {
        return expr;
    }
    var transformer = new _ApplySourceSpanTransformer(sourceSpan);
    return expr.visitExpression(transformer, null);
}
var _ApplySourceSpanTransformer = /** @class */ (function (_super) {
    __extends(_ApplySourceSpanTransformer, _super);
    function _ApplySourceSpanTransformer(sourceSpan) {
        var _this = _super.call(this) || this;
        _this.sourceSpan = sourceSpan;
        return _this;
    }
    _ApplySourceSpanTransformer.prototype._clone = function (obj) {
        var e_1, _a;
        var clone = Object.create(obj.constructor.prototype);
        try {
            for (var _b = __values(Object.keys(obj)), _c = _b.next(); !_c.done; _c = _b.next()) {
                var prop = _c.value;
                clone[prop] = obj[prop];
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_1) throw e_1.error; }
        }
        return clone;
    };
    _ApplySourceSpanTransformer.prototype.transformExpr = function (expr, context) {
        if (!expr.sourceSpan) {
            expr = this._clone(expr);
            expr.sourceSpan = this.sourceSpan;
        }
        return expr;
    };
    _ApplySourceSpanTransformer.prototype.transformStmt = function (stmt, context) {
        if (!stmt.sourceSpan) {
            stmt = this._clone(stmt);
            stmt.sourceSpan = this.sourceSpan;
        }
        return stmt;
    };
    return _ApplySourceSpanTransformer;
}(AstTransformer));
export function variable(name, type, sourceSpan) {
    return new ReadVarExpr(name, type, sourceSpan);
}
export function importExpr(id, typeParams, sourceSpan) {
    if (typeParams === void 0) { typeParams = null; }
    return new ExternalExpr(id, null, typeParams, sourceSpan);
}
export function importType(id, typeParams, typeModifiers) {
    if (typeParams === void 0) { typeParams = null; }
    if (typeModifiers === void 0) { typeModifiers = null; }
    return id != null ? expressionType(importExpr(id, typeParams, null), typeModifiers) : null;
}
export function expressionType(expr, typeModifiers, typeParams) {
    if (typeModifiers === void 0) { typeModifiers = null; }
    if (typeParams === void 0) { typeParams = null; }
    return new ExpressionType(expr, typeModifiers, typeParams);
}
export function typeofExpr(expr) {
    return new TypeofExpr(expr);
}
export function literalArr(values, type, sourceSpan) {
    return new LiteralArrayExpr(values, type, sourceSpan);
}
export function literalMap(values, type) {
    if (type === void 0) { type = null; }
    return new LiteralMapExpr(values.map(function (e) { return new LiteralMapEntry(e.key, e.value, e.quoted); }), type, null);
}
export function not(expr, sourceSpan) {
    return new NotExpr(expr, sourceSpan);
}
export function assertNotNull(expr, sourceSpan) {
    return new AssertNotNull(expr, sourceSpan);
}
export function fn(params, body, type, sourceSpan, name) {
    return new FunctionExpr(params, body, type, sourceSpan, name);
}
export function ifStmt(condition, thenClause, elseClause) {
    return new IfStmt(condition, thenClause, elseClause);
}
export function literal(value, type, sourceSpan) {
    return new LiteralExpr(value, type, sourceSpan);
}
export function localizedString(metaBlock, messageParts, placeholderNames, expressions, sourceSpan) {
    return new LocalizedString(metaBlock, messageParts, placeholderNames, expressions, sourceSpan);
}
export function isNull(exp) {
    return exp instanceof LiteralExpr && exp.value === null;
}
/*
 * Serializes a `Tag` into a string.
 * Returns a string like " @foo {bar} baz" (note the leading whitespace before `@foo`).
 */
function tagToString(tag) {
    var out = '';
    if (tag.tagName) {
        out += " @" + tag.tagName;
    }
    if (tag.text) {
        if (tag.text.match(/\/\*|\*\//)) {
            throw new Error('JSDoc text cannot contain "/*" and "*/"');
        }
        out += ' ' + tag.text.replace(/@/g, '\\@');
    }
    return out;
}
function serializeTags(tags) {
    var e_2, _a;
    if (tags.length === 0)
        return '';
    var out = '*\n';
    try {
        for (var tags_1 = __values(tags), tags_1_1 = tags_1.next(); !tags_1_1.done; tags_1_1 = tags_1.next()) {
            var tag = tags_1_1.value;
            out += ' *';
            // If the tagToString is multi-line, insert " * " prefixes on subsequent lines.
            out += tagToString(tag).replace(/\n/g, '\n * ');
            out += '\n';
        }
    }
    catch (e_2_1) { e_2 = { error: e_2_1 }; }
    finally {
        try {
            if (tags_1_1 && !tags_1_1.done && (_a = tags_1.return)) _a.call(tags_1);
        }
        finally { if (e_2) throw e_2.error; }
    }
    out += ' ';
    return out;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoib3V0cHV0X2FzdC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9vdXRwdXQvb3V0cHV0X2FzdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7O0FBT0gsVUFBVTtBQUNWLE1BQU0sQ0FBTixJQUFZLFlBRVg7QUFGRCxXQUFZLFlBQVk7SUFDdEIsaURBQUssQ0FBQTtBQUNQLENBQUMsRUFGVyxZQUFZLEtBQVosWUFBWSxRQUV2QjtBQUVEO0lBQ0UsY0FBbUIsU0FBcUM7UUFBckMsMEJBQUEsRUFBQSxnQkFBcUM7UUFBckMsY0FBUyxHQUFULFNBQVMsQ0FBNEI7UUFDdEQsSUFBSSxDQUFDLFNBQVMsRUFBRTtZQUNkLElBQUksQ0FBQyxTQUFTLEdBQUcsRUFBRSxDQUFDO1NBQ3JCO0lBQ0gsQ0FBQztJQUdELDBCQUFXLEdBQVgsVUFBWSxRQUFzQixJQUFhLE9BQU8sSUFBSSxDQUFDLFNBQVcsQ0FBQyxPQUFPLENBQUMsUUFBUSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQ3BHLFdBQUM7QUFBRCxDQUFDLEFBVEQsSUFTQzs7QUFFRCxNQUFNLENBQU4sSUFBWSxlQVNYO0FBVEQsV0FBWSxlQUFlO0lBQ3pCLDJEQUFPLENBQUE7SUFDUCxxREFBSSxDQUFBO0lBQ0oseURBQU0sQ0FBQTtJQUNOLG1EQUFHLENBQUE7SUFDSCx5REFBTSxDQUFBO0lBQ04sNkRBQVEsQ0FBQTtJQUNSLDZEQUFRLENBQUE7SUFDUixxREFBSSxDQUFBO0FBQ04sQ0FBQyxFQVRXLGVBQWUsS0FBZixlQUFlLFFBUzFCO0FBRUQ7SUFBaUMsK0JBQUk7SUFDbkMscUJBQW1CLElBQXFCLEVBQUUsU0FBcUM7UUFBckMsMEJBQUEsRUFBQSxnQkFBcUM7UUFBL0UsWUFDRSxrQkFBTSxTQUFTLENBQUMsU0FDakI7UUFGa0IsVUFBSSxHQUFKLElBQUks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YyxDQUFDLE1BQU0sRUFBRSxJQUFJLEVBQUUsR0FBRyxFQUFFLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztJQUNwRixDQUFDO0lBQ0QsOEJBQVMsR0FBVCxVQUFVLEdBQWUsRUFBRSxVQUFpQztRQUMxRCxPQUFPLElBQUksa0JBQWtCLENBQUMsY0FBYyxDQUFDLFNBQVMsRUFBRSxJQUFJLEVBQUUsR0FBRyxFQUFFLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztJQUN2RixDQUFDO0lBQ0QsOEJBQVMsR0FBVCxVQUFVLEdBQWUsRUFBRSxVQUFpQztRQUMxRCxPQUFPLElBQUksa0JBQWtCLENBQUMsY0FBYyxDQUFDLFNBQVMsRUFBRSxJQUFJLEVBQUUsR0FBRyxFQUFFLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztJQUN2RixDQUFDO0lBQ0QsaUNBQVksR0FBWixVQUFhLEdBQWUsRUFBRSxVQUFpQztRQUM3RCxPQUFPLElBQUksa0JBQWtCLENBQUMsY0FBYyxDQUFDLFlBQVksRUFBRSxJQUFJLEVBQUUsR0FBRyxFQUFFLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztJQUMxRixDQUFDO0lBQ0QsMEJBQUssR0FBTCxVQUFNLEdBQWUsRUFBRSxVQUFpQztRQUN0RCxPQUFPLElBQUksa0JBQWtCLENBQUMsY0FBYyxDQUFDLEtBQUssRUFBRSxJQUFJLEVBQUUsR0FBRyxFQUFFLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztJQUNuRixDQUFDO0lBQ0QseUJBQUksR0FBSixVQUFLLEdBQWUsRUFBRSxVQUFpQztRQUNyRCxPQUFPLElBQUksa0JBQWtCLENBQUMsY0FBYyxDQUFDLElBQUksRUFBRSxJQUFJLEVBQUUsR0FBRyxFQUFFLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztJQUNsRixDQUFDO0lBQ0QsMkJBQU0sR0FBTixVQUFPLEdBQWUsRUFBRSxVQUFpQztRQUN2RCxPQUFPLElBQUksa0JBQWtCLENBQUMsY0FBYyxDQUFDLE1BQU0sRUFBRSxJQUFJLEVBQUUsR0FBRyxFQUFFLElBQUksRUFBRSxVQUFVLENB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QUFHLENBQUMsT0FBUyxDQUFDO0tBQzNCO0lBQ0QsSUFBSSxHQUFHLENBQUMsSUFBSSxFQUFFO1FBQ1osSUFBSSxHQUFHLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxXQUFXLENBQUMsRUFBRTtZQUMvQixNQUFNLElBQUksS0FBSyxDQUFDLHlDQUF5QyxDQUFDLENBQUM7U0FDNUQ7UUFDRCxHQUFHLElBQUksR0FBRyxHQUFHLEdBQUcsQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLElBQUksRUFBRSxLQUFLLENBQUMsQ0FBQztLQUM1QztJQUNELE9BQU8sR0FBRyxDQUFDO0FBQ2IsQ0FBQztBQUVELFNBQVMsYUFBYSxDQUFDLElBQWdCOztJQUNyQyxJQUFJLElBQUksQ0FBQyxNQUFNLEtBQUssQ0FBQztRQUFFLE9BQU8sRUFBRSxDQUFDO0lBRWpDLElBQUksR0FBRyxHQUFHLEtBQUssQ0FBQzs7UUFDaEIsS0FBa0IsSUFBQSxTQUFBLFNBQUEsSUFBSSxDQUFBLDBCQUFBLDRDQUFFO1lBQW5CLElBQU0sR0FBRyxpQkFBQTtZQUNaLEdBQUcsSUFBSSxJQUFJLENBQUM7WUFDWiwrRUFBK0U7WUFDL0UsR0FBRyxJQUFJLFdBQVcsQ0FBQyxHQUFHLENBQUMsQ0FBQyxPQUFPLENBQUMsS0FBSyxFQUFFLE9BQU8sQ0FBQyxDQUFDO1lBQ2hELEdBQUcsSUFBSSxJQUFJLENBQUM7U0FDYjs7Ozs7Ozs7O0lBQ0QsR0FBRyxJQUFJLEdBQUcsQ0FBQztJQUNYLE9BQU8sR0FBRyxDQUFDO0FBQ2IsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuXG5pbXBvcnQge1BhcnNlU291cmNlU3Bhbn0gZnJvbSAnLi4vcGFyc2VfdXRpbCc7XG5pbXBvcnQge0kxOG5NZXRhfSBmcm9tICcuLi9yZW5kZXIzL3ZpZXcvaTE4bi9tZXRhJztcbmltcG9ydCB7ZXJyb3J9IGZyb20gJy4uL3V0aWwnO1xuXG4vLy8vIFR5cGVzXG5leHBvcnQgZW51bSBUeXBlTW9kaWZpZXIge1xuICBDb25zdFxufVxuXG5leHBvcnQgYWJzdHJhY3QgY2xhc3MgVHlwZSB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBtb2RpZmllcnM6IFR5cGVNb2RpZmllcltdfG51bGwgPSBudWxsKSB7XG4gICAgaWYgKCFtb2RpZmllcnMpIHtcbiAgICAgIHRoaXMubW9kaWZpZXJzID0gW107XG4gICAgfVxuICB9XG4gIGFic3RyYWN0IHZpc2l0VHlwZSh2aXNpdG9yOiBUeXBlVmlzaXRvciwgY29udGV4dDogYW55KTogYW55O1xuXG4gIGhhc01vZGlmaWVyKG1vZGlmaWVyOiBUeXBlTW9kaWZpZXIpOiBib29sZWFuIHsgcmV0dXJuIHRoaXMubW9kaWZpZXJzICEuaW5kZXhPZihtb2RpZmllcikgIT09IC0xOyB9XG59XG5cbmV4cG9ydCBlbnVtIEJ1aWx0aW5UeXBlTmFtZSB7XG4gIER5bmFtaWMsXG4gIEJvb2wsXG4gIFN0cmluZyxcbiAgSW50LFxuICBOdW1iZXIsXG4gIEZ1bmN0aW9uLFxuICBJbmZlcnJlZCxcbiAgTm9uZSxcbn1cblxuZXhwb3J0IGNsYXNzIEJ1aWx0aW5UeXBlIGV4dGVuZHMgVHlwZSB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBuYW1lOiBCdWlsdGluVHlwZU5hbWUsIG1vZGlmaWVyczogVHlwZU1vZGlmaWVyW118bnVsbCA9IG51bGwpIHtcbiAgICBzdXBlcihtb2RpZmllcnMpO1xuICB9XG4gIHZpc2l0VHlwZSh2aXNpdG9yOiBUeXBlVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdEJ1aWx0aW5UeXBlKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBFeHByZXNzaW9uVHlwZSBleHRlbmRzIFR5cGUge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyB2YWx1ZTogRXhwcmVzc2lvbiwgbW9kaWZpZXJzOiBUeXBlTW9kaWZpZXJbXXxudWxsID0gbnVsbCxcbiAgICAgIHB1YmxpYyB0eXBlUGFyYW1zOiBUeXBlW118bnVsbCA9IG51bGwpIHtcbiAgICBzdXBlcihtb2RpZmllcnMpO1xuICB9XG4gIHZpc2l0VHlwZSh2aXNpdG9yOiBUeXBlVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdEV4cHJlc3Npb25UeXBlKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIEFycmF5VHlwZSBleHRlbmRzIFR5cGUge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgb2YgOiBUeXBlLCBtb2RpZmllcnM6IFR5cGVNb2RpZmllcltdfG51bGwgPSBudWxsKSB7IHN1cGVyKG1vZGlmaWVycyk7IH1cbiAgdmlzaXRUeXBlKHZpc2l0b3I6IFR5cGVWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0QXJyYXlUeXBlKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIE1hcFR5cGUgZXh0ZW5kcyBUeXBlIHtcbiAgcHVibGljIHZhbHVlVHlwZTogVHlwZXxudWxsO1xuICBjb25zdHJ1Y3Rvcih2YWx1ZVR5cGU6IFR5cGV8bnVsbHx1bmRlZmluZWQsIG1vZGlmaWVyczogVHlwZU1vZGlmaWVyW118bnVsbCA9IG51bGwpIHtcbiAgICBzdXBlcihtb2RpZmllcnMpO1xuICAgIHRoaXMudmFsdWVUeXBlID0gdmFsdWVUeXBlIHx8IG51bGw7XG4gIH1cbiAgdmlzaXRUeXBlKHZpc2l0b3I6IFR5cGVWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkgeyByZXR1cm4gdmlzaXRvci52aXNpdE1hcFR5cGUodGhpcywgY29udGV4dCk7IH1cbn1cblxuZXhwb3J0IGNvbnN0IERZTkFNSUNfVFlQRSA9IG5ldyBCdWlsdGluVHlwZShCdWlsdGluVHlwZU5hbWUuRHluYW1pYyk7XG5leHBvcnQgY29uc3QgSU5GRVJSRURfVFlQRSA9IG5ldyBCdWlsdGluVHlwZShCdWlsdGluVHlwZU5hbWUuSW5mZXJyZWQpO1xuZXhwb3J0IGNvbnN0IEJPT0xfVFlQRSA9IG5ldyBCdWlsdGluVHlwZShCdWlsdGluVHlwZU5hbWUuQm9vbCk7XG5leHBvcnQgY29uc3QgSU5UX1RZUEUgPSBuZXcgQnVpbHRpblR5cGUoQnVpbHRpblR5cGVOYW1lLkludCk7XG5leHBvcnQgY29uc3QgTlVNQkVSX1RZUEUgPSBuZXcgQnVpbHRpblR5cGUoQnVpbHRpblR5cGVOYW1lLk51bWJlcik7XG5leHBvcnQgY29uc3QgU1RSSU5HX1RZUEUgPSBuZXcgQnVpbHRpblR5cGUoQnVpbHRpblR5cGVOYW1lLlN0cmluZyk7XG5leHBvcnQgY29uc3QgRlVOQ1RJT05fVFlQRSA9IG5ldyBCdWlsdGluVHlwZShCdWlsdGluVHlwZU5hbWUuRnVuY3Rpb24pO1xuZXhwb3J0IGNvbnN0IE5PTkVfVFlQRSA9IG5ldyBCdWlsdGluVHlwZShCdWlsdGluVHlwZU5hbWUuTm9uZSk7XG5cbmV4cG9ydCBpbnRlcmZhY2UgVHlwZVZpc2l0b3Ige1xuICB2aXNpdEJ1aWx0aW5UeXBlKHR5cGU6IEJ1aWx0aW5UeXBlLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0RXhwcmVzc2lvblR5cGUodHlwZTogRXhwcmVzc2lvblR5cGUsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRBcnJheVR5cGUodHlwZTogQXJyYXlUeXBlLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0TWFwVHlwZSh0eXBlOiBNYXBUeXBlLCBjb250ZXh0OiBhbnkpOiBhbnk7XG59XG5cbi8vLy8vIEV4cHJlc3Npb25zXG5cbmV4cG9ydCBlbnVtIEJpbmFyeU9wZXJhdG9yIHtcbiAgRXF1YWxzLFxuICBOb3RFcXVhbHMsXG4gIElkZW50aWNhbCxcbiAgTm90SWRlbnRpY2FsLFxuICBNaW51cyxcbiAgUGx1cyxcbiAgRGl2aWRlLFxuICBNdWx0aXBseSxcbiAgTW9kdWxvLFxuICBBbmQsXG4gIE9yLFxuICBCaXR3aXNlQW5kLFxuICBMb3dlcixcbiAgTG93ZXJFcXVhbHMsXG4gIEJpZ2dlcixcbiAgQmlnZ2VyRXF1YWxzXG59XG5cbmV4cG9ydCBmdW5jdGlvbiBudWxsU2FmZUlzRXF1aXZhbGVudDxUIGV4dGVuZHN7aXNFcXVpdmFsZW50KG90aGVyOiBUKTogYm9vbGVhbn0+KFxuICAgIGJhc2U6IFQgfCBudWxsLCBvdGhlcjogVCB8IG51bGwpIHtcbiAgaWYgKGJhc2UgPT0gbnVsbCB8fCBvdGhlciA9PSBudWxsKSB7XG4gICAgcmV0dXJuIGJhc2UgPT0gb3RoZXI7XG4gIH1cbiAgcmV0dXJuIGJhc2UuaXNFcXVpdmFsZW50KG90aGVyKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGFyZUFsbEVxdWl2YWxlbnQ8VCBleHRlbmRze2lzRXF1aXZhbGVudChvdGhlcjogVCk6IGJvb2xlYW59PihcbiAgICBiYXNlOiBUW10sIG90aGVyOiBUW10pIHtcbiAgY29uc3QgbGVuID0gYmFzZS5sZW5ndGg7XG4gIGlmIChsZW4gIT09IG90aGVyLmxlbmd0aCkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuICBmb3IgKGxldCBpID0gMDsgaSA8IGxlbjsgaSsrKSB7XG4gICAgaWYgKCFiYXNlW2ldLmlzRXF1aXZhbGVudChvdGhlcltpXSkpIHtcbiAgICAgIHJldHVybiBmYWxzZTtcbiAgICB9XG4gIH1cbiAgcmV0dXJuIHRydWU7XG59XG5cbmV4cG9ydCBhYnN0cmFjdCBjbGFzcyBFeHByZXNzaW9uIHtcbiAgcHVibGljIHR5cGU6IFR5cGV8bnVsbDtcbiAgcHVibGljIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbnxudWxsO1xuXG4gIGNvbnN0cnVjdG9yKHR5cGU6IFR5cGV8bnVsbHx1bmRlZmluZWQsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHRoaXMudHlwZSA9IHR5cGUgfHwgbnVsbDtcbiAgICB0aGlzLnNvdXJjZVNwYW4gPSBzb3VyY2VTcGFuIHx8IG51bGw7XG4gIH1cblxuICBhYnN0cmFjdCB2aXNpdEV4cHJlc3Npb24odmlzaXRvcjogRXhwcmVzc2lvblZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueTtcblxuICAvKipcbiAgICogQ2FsY3VsYXRlcyB3aGV0aGVyIHRoaXMgZXhwcmVzc2lvbiBwcm9kdWNlcyB0aGUgc2FtZSB2YWx1ZSBhcyB0aGUgZ2l2ZW4gZXhwcmVzc2lvbi5cbiAgICogTm90ZTogV2UgZG9uJ3QgY2hlY2sgVHlwZXMgbm9yIFBhcnNlU291cmNlU3BhbnMgbm9yIGZ1bmN0aW9uIGFyZ3VtZW50cy5cbiAgICovXG4gIGFic3RyYWN0IGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbjtcblxuICAvKipcbiAgICogUmV0dXJuIHRydWUgaWYgdGhlIGV4cHJlc3Npb24gaXMgY29uc3RhbnQuXG4gICAqL1xuICBhYnN0cmFjdCBpc0NvbnN0YW50KCk6IGJvb2xlYW47XG5cbiAgcHJvcChuYW1lOiBzdHJpbmcsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IFJlYWRQcm9wRXhwciB7XG4gICAgcmV0dXJuIG5ldyBSZWFkUHJvcEV4cHIodGhpcywgbmFtZSwgbnVsbCwgc291cmNlU3Bhbik7XG4gIH1cblxuICBrZXkoaW5kZXg6IEV4cHJlc3Npb24sIHR5cGU/OiBUeXBlfG51bGwsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IFJlYWRLZXlFeHByIHtcbiAgICByZXR1cm4gbmV3IFJlYWRLZXlFeHByKHRoaXMsIGluZGV4LCB0eXBlLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGNhbGxNZXRob2QobmFtZTogc3RyaW5nfEJ1aWx0aW5NZXRob2QsIHBhcmFtczogRXhwcmVzc2lvbltdLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOlxuICAgICAgSW52b2tlTWV0aG9kRXhwciB7XG4gICAgcmV0dXJuIG5ldyBJbnZva2VNZXRob2RFeHByKHRoaXMsIG5hbWUsIHBhcmFtcywgbnVsbCwgc291cmNlU3Bhbik7XG4gIH1cblxuICBjYWxsRm4ocGFyYW1zOiBFeHByZXNzaW9uW10sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEludm9rZUZ1bmN0aW9uRXhwciB7XG4gICAgcmV0dXJuIG5ldyBJbnZva2VGdW5jdGlvbkV4cHIodGhpcywgcGFyYW1zLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGluc3RhbnRpYXRlKHBhcmFtczogRXhwcmVzc2lvbltdLCB0eXBlPzogVHlwZXxudWxsLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOlxuICAgICAgSW5zdGFudGlhdGVFeHByIHtcbiAgICByZXR1cm4gbmV3IEluc3RhbnRpYXRlRXhwcih0aGlzLCBwYXJhbXMsIHR5cGUsIHNvdXJjZVNwYW4pO1xuICB9XG5cbiAgY29uZGl0aW9uYWwoXG4gICAgICB0cnVlQ2FzZTogRXhwcmVzc2lvbiwgZmFsc2VDYXNlOiBFeHByZXNzaW9ufG51bGwgPSBudWxsLFxuICAgICAgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogQ29uZGl0aW9uYWxFeHByIHtcbiAgICByZXR1cm4gbmV3IENvbmRpdGlvbmFsRXhwcih0aGlzLCB0cnVlQ2FzZSwgZmFsc2VDYXNlLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGVxdWFscyhyaHM6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEJpbmFyeU9wZXJhdG9yRXhwciB7XG4gICAgcmV0dXJuIG5ldyBCaW5hcnlPcGVyYXRvckV4cHIoQmluYXJ5T3BlcmF0b3IuRXF1YWxzLCB0aGlzLCByaHMsIG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIG5vdEVxdWFscyhyaHM6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEJpbmFyeU9wZXJhdG9yRXhwciB7XG4gICAgcmV0dXJuIG5ldyBCaW5hcnlPcGVyYXRvckV4cHIoQmluYXJ5T3BlcmF0b3IuTm90RXF1YWxzLCB0aGlzLCByaHMsIG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIGlkZW50aWNhbChyaHM6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEJpbmFyeU9wZXJhdG9yRXhwciB7XG4gICAgcmV0dXJuIG5ldyBCaW5hcnlPcGVyYXRvckV4cHIoQmluYXJ5T3BlcmF0b3IuSWRlbnRpY2FsLCB0aGlzLCByaHMsIG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIG5vdElkZW50aWNhbChyaHM6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEJpbmFyeU9wZXJhdG9yRXhwciB7XG4gICAgcmV0dXJuIG5ldyBCaW5hcnlPcGVyYXRvckV4cHIoQmluYXJ5T3BlcmF0b3IuTm90SWRlbnRpY2FsLCB0aGlzLCByaHMsIG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIG1pbnVzKHJoczogRXhwcmVzc2lvbiwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogQmluYXJ5T3BlcmF0b3JFeHByIHtcbiAgICByZXR1cm4gbmV3IEJpbmFyeU9wZXJhdG9yRXhwcihCaW5hcnlPcGVyYXRvci5NaW51cywgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBwbHVzKHJoczogRXhwcmVzc2lvbiwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogQmluYXJ5T3BlcmF0b3JFeHByIHtcbiAgICByZXR1cm4gbmV3IEJpbmFyeU9wZXJhdG9yRXhwcihCaW5hcnlPcGVyYXRvci5QbHVzLCB0aGlzLCByaHMsIG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIGRpdmlkZShyaHM6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEJpbmFyeU9wZXJhdG9yRXhwciB7XG4gICAgcmV0dXJuIG5ldyBCaW5hcnlPcGVyYXRvckV4cHIoQmluYXJ5T3BlcmF0b3IuRGl2aWRlLCB0aGlzLCByaHMsIG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIG11bHRpcGx5KHJoczogRXhwcmVzc2lvbiwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogQmluYXJ5T3BlcmF0b3JFeHByIHtcbiAgICByZXR1cm4gbmV3IEJpbmFyeU9wZXJhdG9yRXhwcihCaW5hcnlPcGVyYXRvci5NdWx0aXBseSwgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBtb2R1bG8ocmhzOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOiBCaW5hcnlPcGVyYXRvckV4cHIge1xuICAgIHJldHVybiBuZXcgQmluYXJ5T3BlcmF0b3JFeHByKEJpbmFyeU9wZXJhdG9yLk1vZHVsbywgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBhbmQocmhzOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOiBCaW5hcnlPcGVyYXRvckV4cHIge1xuICAgIHJldHVybiBuZXcgQmluYXJ5T3BlcmF0b3JFeHByKEJpbmFyeU9wZXJhdG9yLkFuZCwgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBiaXR3aXNlQW5kKHJoczogRXhwcmVzc2lvbiwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsLCBwYXJlbnM6IGJvb2xlYW4gPSB0cnVlKTpcbiAgICAgIEJpbmFyeU9wZXJhdG9yRXhwciB7XG4gICAgcmV0dXJuIG5ldyBCaW5hcnlPcGVyYXRvckV4cHIoQmluYXJ5T3BlcmF0b3IuQml0d2lzZUFuZCwgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuLCBwYXJlbnMpO1xuICB9XG4gIG9yKHJoczogRXhwcmVzc2lvbiwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogQmluYXJ5T3BlcmF0b3JFeHByIHtcbiAgICByZXR1cm4gbmV3IEJpbmFyeU9wZXJhdG9yRXhwcihCaW5hcnlPcGVyYXRvci5PciwgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBsb3dlcihyaHM6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEJpbmFyeU9wZXJhdG9yRXhwciB7XG4gICAgcmV0dXJuIG5ldyBCaW5hcnlPcGVyYXRvckV4cHIoQmluYXJ5T3BlcmF0b3IuTG93ZXIsIHRoaXMsIHJocywgbnVsbCwgc291cmNlU3Bhbik7XG4gIH1cbiAgbG93ZXJFcXVhbHMocmhzOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOiBCaW5hcnlPcGVyYXRvckV4cHIge1xuICAgIHJldHVybiBuZXcgQmluYXJ5T3BlcmF0b3JFeHByKEJpbmFyeU9wZXJhdG9yLkxvd2VyRXF1YWxzLCB0aGlzLCByaHMsIG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIGJpZ2dlcihyaHM6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEJpbmFyeU9wZXJhdG9yRXhwciB7XG4gICAgcmV0dXJuIG5ldyBCaW5hcnlPcGVyYXRvckV4cHIoQmluYXJ5T3BlcmF0b3IuQmlnZ2VyLCB0aGlzLCByaHMsIG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIGJpZ2dlckVxdWFscyhyaHM6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEJpbmFyeU9wZXJhdG9yRXhwciB7XG4gICAgcmV0dXJuIG5ldyBCaW5hcnlPcGVyYXRvckV4cHIoQmluYXJ5T3BlcmF0b3IuQmlnZ2VyRXF1YWxzLCB0aGlzLCByaHMsIG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIGlzQmxhbmsoc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogRXhwcmVzc2lvbiB7XG4gICAgLy8gTm90ZTogV2UgdXNlIGVxdWFscyBieSBwdXJwb3NlIGhlcmUgdG8gY29tcGFyZSB0byBudWxsIGFuZCB1bmRlZmluZWQgaW4gSlMuXG4gICAgLy8gV2UgdXNlIHRoZSB0eXBlZCBudWxsIHRvIGFsbG93IHN0cmljdE51bGxDaGVja3MgdG8gbmFycm93IHR5cGVzLlxuICAgIHJldHVybiB0aGlzLmVxdWFscyhUWVBFRF9OVUxMX0VYUFIsIHNvdXJjZVNwYW4pO1xuICB9XG4gIGNhc3QodHlwZTogVHlwZSwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogRXhwcmVzc2lvbiB7XG4gICAgcmV0dXJuIG5ldyBDYXN0RXhwcih0aGlzLCB0eXBlLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIHRvU3RtdCgpOiBTdGF0ZW1lbnQgeyByZXR1cm4gbmV3IEV4cHJlc3Npb25TdGF0ZW1lbnQodGhpcywgbnVsbCk7IH1cbn1cblxuZXhwb3J0IGVudW0gQnVpbHRpblZhciB7XG4gIFRoaXMsXG4gIFN1cGVyLFxuICBDYXRjaEVycm9yLFxuICBDYXRjaFN0YWNrXG59XG5cbmV4cG9ydCBjbGFzcyBSZWFkVmFyRXhwciBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBwdWJsaWMgbmFtZTogc3RyaW5nfG51bGw7XG4gIHB1YmxpYyBidWlsdGluOiBCdWlsdGluVmFyfG51bGw7XG5cbiAgY29uc3RydWN0b3IobmFtZTogc3RyaW5nfEJ1aWx0aW5WYXIsIHR5cGU/OiBUeXBlfG51bGwsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKHR5cGUsIHNvdXJjZVNwYW4pO1xuICAgIGlmICh0eXBlb2YgbmFtZSA9PT0gJ3N0cmluZycpIHtcbiAgICAgIHRoaXMubmFtZSA9IG5hbWU7XG4gICAgICB0aGlzLmJ1aWx0aW4gPSBudWxsO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLm5hbWUgPSBudWxsO1xuICAgICAgdGhpcy5idWlsdGluID0gbmFtZTtcbiAgICB9XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgUmVhZFZhckV4cHIgJiYgdGhpcy5uYW1lID09PSBlLm5hbWUgJiYgdGhpcy5idWlsdGluID09PSBlLmJ1aWx0aW47XG4gIH1cblxuICBpc0NvbnN0YW50KCkgeyByZXR1cm4gZmFsc2U7IH1cblxuICB2aXNpdEV4cHJlc3Npb24odmlzaXRvcjogRXhwcmVzc2lvblZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRSZWFkVmFyRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxuXG4gIHNldCh2YWx1ZTogRXhwcmVzc2lvbik6IFdyaXRlVmFyRXhwciB7XG4gICAgaWYgKCF0aGlzLm5hbWUpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihgQnVpbHQgaW4gdmFyaWFibGUgJHt0aGlzLmJ1aWx0aW59IGNhbiBub3QgYmUgYXNzaWduZWQgdG8uYCk7XG4gICAgfVxuICAgIHJldHVybiBuZXcgV3JpdGVWYXJFeHByKHRoaXMubmFtZSwgdmFsdWUsIG51bGwsIHRoaXMuc291cmNlU3Bhbik7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIFR5cGVvZkV4cHIgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgY29uc3RydWN0b3IocHVibGljIGV4cHI6IEV4cHJlc3Npb24sIHR5cGU/OiBUeXBlfG51bGwsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKHR5cGUsIHNvdXJjZVNwYW4pO1xuICB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpIHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdFR5cGVvZkV4cHIodGhpcywgY29udGV4dCk7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgVHlwZW9mRXhwciAmJiBlLmV4cHIuaXNFcXVpdmFsZW50KHRoaXMuZXhwcik7XG4gIH1cblxuICBpc0NvbnN0YW50KCk6IGJvb2xlYW4geyByZXR1cm4gdGhpcy5leHByLmlzQ29uc3RhbnQoKTsgfVxufVxuXG5leHBvcnQgY2xhc3MgV3JhcHBlZE5vZGVFeHByPFQ+IGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBub2RlOiBULCB0eXBlPzogVHlwZXxudWxsLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcih0eXBlLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGUgaW5zdGFuY2VvZiBXcmFwcGVkTm9kZUV4cHIgJiYgdGhpcy5ub2RlID09PSBlLm5vZGU7XG4gIH1cblxuICBpc0NvbnN0YW50KCkgeyByZXR1cm4gZmFsc2U7IH1cblxuICB2aXNpdEV4cHJlc3Npb24odmlzaXRvcjogRXhwcmVzc2lvblZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRXcmFwcGVkTm9kZUV4cHIodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIFdyaXRlVmFyRXhwciBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBwdWJsaWMgdmFsdWU6IEV4cHJlc3Npb247XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIG5hbWU6IHN0cmluZywgdmFsdWU6IEV4cHJlc3Npb24sIHR5cGU/OiBUeXBlfG51bGwsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKHR5cGUgfHwgdmFsdWUudHlwZSwgc291cmNlU3Bhbik7XG4gICAgdGhpcy52YWx1ZSA9IHZhbHVlO1xuICB9XG5cbiAgaXNFcXVpdmFsZW50KGU6IEV4cHJlc3Npb24pOiBib29sZWFuIHtcbiAgICByZXR1cm4gZSBpbnN0YW5jZW9mIFdyaXRlVmFyRXhwciAmJiB0aGlzLm5hbWUgPT09IGUubmFtZSAmJiB0aGlzLnZhbHVlLmlzRXF1aXZhbGVudChlLnZhbHVlKTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7IHJldHVybiBmYWxzZTsgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdFdyaXRlVmFyRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxuXG4gIHRvRGVjbFN0bXQodHlwZT86IFR5cGV8bnVsbCwgbW9kaWZpZXJzPzogU3RtdE1vZGlmaWVyW118bnVsbCk6IERlY2xhcmVWYXJTdG10IHtcbiAgICByZXR1cm4gbmV3IERlY2xhcmVWYXJTdG10KHRoaXMubmFtZSwgdGhpcy52YWx1ZSwgdHlwZSwgbW9kaWZpZXJzLCB0aGlzLnNvdXJjZVNwYW4pO1xuICB9XG5cbiAgdG9Db25zdERlY2woKTogRGVjbGFyZVZhclN0bXQgeyByZXR1cm4gdGhpcy50b0RlY2xTdG10KElORkVSUkVEX1RZUEUsIFtTdG10TW9kaWZpZXIuRmluYWxdKTsgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBXcml0ZUtleUV4cHIgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgcHVibGljIHZhbHVlOiBFeHByZXNzaW9uO1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyByZWNlaXZlcjogRXhwcmVzc2lvbiwgcHVibGljIGluZGV4OiBFeHByZXNzaW9uLCB2YWx1ZTogRXhwcmVzc2lvbiwgdHlwZT86IFR5cGV8bnVsbCxcbiAgICAgIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKHR5cGUgfHwgdmFsdWUudHlwZSwgc291cmNlU3Bhbik7XG4gICAgdGhpcy52YWx1ZSA9IHZhbHVlO1xuICB9XG5cbiAgaXNFcXVpdmFsZW50KGU6IEV4cHJlc3Npb24pOiBib29sZWFuIHtcbiAgICByZXR1cm4gZSBpbnN0YW5jZW9mIFdyaXRlS2V5RXhwciAmJiB0aGlzLnJlY2VpdmVyLmlzRXF1aXZhbGVudChlLnJlY2VpdmVyKSAmJlxuICAgICAgICB0aGlzLmluZGV4LmlzRXF1aXZhbGVudChlLmluZGV4KSAmJiB0aGlzLnZhbHVlLmlzRXF1aXZhbGVudChlLnZhbHVlKTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7IHJldHVybiBmYWxzZTsgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdFdyaXRlS2V5RXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBXcml0ZVByb3BFeHByIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIHB1YmxpYyB2YWx1ZTogRXhwcmVzc2lvbjtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgcmVjZWl2ZXI6IEV4cHJlc3Npb24sIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHZhbHVlOiBFeHByZXNzaW9uLCB0eXBlPzogVHlwZXxudWxsLFxuICAgICAgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIodHlwZSB8fCB2YWx1ZS50eXBlLCBzb3VyY2VTcGFuKTtcbiAgICB0aGlzLnZhbHVlID0gdmFsdWU7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgV3JpdGVQcm9wRXhwciAmJiB0aGlzLnJlY2VpdmVyLmlzRXF1aXZhbGVudChlLnJlY2VpdmVyKSAmJlxuICAgICAgICB0aGlzLm5hbWUgPT09IGUubmFtZSAmJiB0aGlzLnZhbHVlLmlzRXF1aXZhbGVudChlLnZhbHVlKTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7IHJldHVybiBmYWxzZTsgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdFdyaXRlUHJvcEV4cHIodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGVudW0gQnVpbHRpbk1ldGhvZCB7XG4gIENvbmNhdEFycmF5LFxuICBTdWJzY3JpYmVPYnNlcnZhYmxlLFxuICBCaW5kXG59XG5cbmV4cG9ydCBjbGFzcyBJbnZva2VNZXRob2RFeHByIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIHB1YmxpYyBuYW1lOiBzdHJpbmd8bnVsbDtcbiAgcHVibGljIGJ1aWx0aW46IEJ1aWx0aW5NZXRob2R8bnVsbDtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgcmVjZWl2ZXI6IEV4cHJlc3Npb24sIG1ldGhvZDogc3RyaW5nfEJ1aWx0aW5NZXRob2QsIHB1YmxpYyBhcmdzOiBFeHByZXNzaW9uW10sXG4gICAgICB0eXBlPzogVHlwZXxudWxsLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcih0eXBlLCBzb3VyY2VTcGFuKTtcbiAgICBpZiAodHlwZW9mIG1ldGhvZCA9PT0gJ3N0cmluZycpIHtcbiAgICAgIHRoaXMubmFtZSA9IG1ldGhvZDtcbiAgICAgIHRoaXMuYnVpbHRpbiA9IG51bGw7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMubmFtZSA9IG51bGw7XG4gICAgICB0aGlzLmJ1aWx0aW4gPSA8QnVpbHRpbk1ldGhvZD5tZXRob2Q7XG4gICAgfVxuICB9XG5cbiAgaXNFcXVpdmFsZW50KGU6IEV4cHJlc3Npb24pOiBib29sZWFuIHtcbiAgICByZXR1cm4gZSBpbnN0YW5jZW9mIEludm9rZU1ldGhvZEV4cHIgJiYgdGhpcy5yZWNlaXZlci5pc0VxdWl2YWxlbnQoZS5yZWNlaXZlcikgJiZcbiAgICAgICAgdGhpcy5uYW1lID09PSBlLm5hbWUgJiYgdGhpcy5idWlsdGluID09PSBlLmJ1aWx0aW4gJiYgYXJlQWxsRXF1aXZhbGVudCh0aGlzLmFyZ3MsIGUuYXJncyk7XG4gIH1cblxuICBpc0NvbnN0YW50KCkgeyByZXR1cm4gZmFsc2U7IH1cblxuICB2aXNpdEV4cHJlc3Npb24odmlzaXRvcjogRXhwcmVzc2lvblZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRJbnZva2VNZXRob2RFeHByKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIEludm9rZUZ1bmN0aW9uRXhwciBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBmbjogRXhwcmVzc2lvbiwgcHVibGljIGFyZ3M6IEV4cHJlc3Npb25bXSwgdHlwZT86IFR5cGV8bnVsbCxcbiAgICAgIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCwgcHVibGljIHB1cmUgPSBmYWxzZSkge1xuICAgIHN1cGVyKHR5cGUsIHNvdXJjZVNwYW4pO1xuICB9XG5cbiAgaXNFcXVpdmFsZW50KGU6IEV4cHJlc3Npb24pOiBib29sZWFuIHtcbiAgICByZXR1cm4gZSBpbnN0YW5jZW9mIEludm9rZUZ1bmN0aW9uRXhwciAmJiB0aGlzLmZuLmlzRXF1aXZhbGVudChlLmZuKSAmJlxuICAgICAgICBhcmVBbGxFcXVpdmFsZW50KHRoaXMuYXJncywgZS5hcmdzKSAmJiB0aGlzLnB1cmUgPT09IGUucHVyZTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7IHJldHVybiBmYWxzZTsgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdEludm9rZUZ1bmN0aW9uRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBJbnN0YW50aWF0ZUV4cHIgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgY2xhc3NFeHByOiBFeHByZXNzaW9uLCBwdWJsaWMgYXJnczogRXhwcmVzc2lvbltdLCB0eXBlPzogVHlwZXxudWxsLFxuICAgICAgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIodHlwZSwgc291cmNlU3Bhbik7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgSW5zdGFudGlhdGVFeHByICYmIHRoaXMuY2xhc3NFeHByLmlzRXF1aXZhbGVudChlLmNsYXNzRXhwcikgJiZcbiAgICAgICAgYXJlQWxsRXF1aXZhbGVudCh0aGlzLmFyZ3MsIGUuYXJncyk7XG4gIH1cblxuICBpc0NvbnN0YW50KCkgeyByZXR1cm4gZmFsc2U7IH1cblxuICB2aXNpdEV4cHJlc3Npb24odmlzaXRvcjogRXhwcmVzc2lvblZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRJbnN0YW50aWF0ZUV4cHIodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuXG5leHBvcnQgY2xhc3MgTGl0ZXJhbEV4cHIgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgdmFsdWU6IG51bWJlcnxzdHJpbmd8Ym9vbGVhbnxudWxsfHVuZGVmaW5lZCwgdHlwZT86IFR5cGV8bnVsbCxcbiAgICAgIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKHR5cGUsIHNvdXJjZVNwYW4pO1xuICB9XG5cbiAgaXNFcXVpdmFsZW50KGU6IEV4cHJlc3Npb24pOiBib29sZWFuIHtcbiAgICByZXR1cm4gZSBpbnN0YW5jZW9mIExpdGVyYWxFeHByICYmIHRoaXMudmFsdWUgPT09IGUudmFsdWU7XG4gIH1cblxuICBpc0NvbnN0YW50KCkgeyByZXR1cm4gdHJ1ZTsgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdExpdGVyYWxFeHByKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIExvY2FsaXplZFN0cmluZyBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHJlYWRvbmx5IG1ldGFCbG9jazogSTE4bk1ldGEsIHJlYWRvbmx5IG1lc3NhZ2VQYXJ0czogc3RyaW5nW10sXG4gICAgICByZWFkb25seSBwbGFjZUhvbGRlck5hbWVzOiBzdHJpbmdbXSwgcmVhZG9ubHkgZXhwcmVzc2lvbnM6IEV4cHJlc3Npb25bXSxcbiAgICAgIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKFNUUklOR19UWVBFLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgLy8gcmV0dXJuIGUgaW5zdGFuY2VvZiBMb2NhbGl6ZWRTdHJpbmcgJiYgdGhpcy5tZXNzYWdlID09PSBlLm1lc3NhZ2U7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgaXNDb25zdGFudCgpIHsgcmV0dXJuIGZhbHNlOyB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0TG9jYWxpemVkU3RyaW5nKHRoaXMsIGNvbnRleHQpO1xuICB9XG5cbiAgLyoqXG4gICAqIFNlcmlhbGl6ZSB0aGUgZ2l2ZW4gYG1ldGFgIGFuZCBgbWVzc2FnZVBhcnRgIGludG8gXCJjb29rZWRcIiBhbmQgXCJyYXdcIiBzdHJpbmdzIHRoYXQgY2FuIGJlIHVzZWRcbiAgICogaW4gYSBgJGxvY2FsaXplYCB0YWdnZWQgc3RyaW5nLiBUaGUgZm9ybWF0IG9mIHRoZSBtZXRhZGF0YSBpcyB0aGUgc2FtZSBhcyB0aGF0IHBhcnNlZCBieVxuICAgKiBgcGFyc2VJMThuTWV0YSgpYC5cbiAgICpcbiAgICogQHBhcmFtIG1ldGEgVGhlIG1ldGFkYXRhIHRvIHNlcmlhbGl6ZVxuICAgKiBAcGFyYW0gbWVzc2FnZVBhcnQgVGhlIGZpcnN0IHBhcnQgb2YgdGhlIHRhZ2dlZCBzdHJpbmdcbiAgICovXG4gIHNlcmlhbGl6ZUkxOG5IZWFkKCk6IHtjb29rZWQ6IHN0cmluZywgcmF3OiBzdHJpbmd9IHtcbiAgICBjb25zdCBNRUFOSU5HX1NFUEFSQVRPUiA9ICd8JztcbiAgICBjb25zdCBJRF9TRVBBUkFUT1IgPSAnQEAnO1xuICAgIGNvbnN0IExFR0FDWV9JRF9JTkRJQ0FUT1IgPSAn4pCfJztcblxuICAgIGxldCBtZXRhQmxvY2sgPSB0aGlzLm1ldGFCbG9jay5kZXNjcmlwdGlvbiB8fCAnJztcbiAgICBpZiAodGhpcy5tZXRhQmxvY2subWVhbmluZykge1xuICAgICAgbWV0YUJsb2NrID0gYCR7dGhpcy5tZXRhQmxvY2subWVhbmluZ30ke01FQU5JTkdfU0VQQVJBVE9SfSR7bWV0YUJsb2NrfWA7XG4gICAgfVxuICAgIGlmICh0aGlzLm1ldGFCbG9jay5jdXN0b21JZCkge1xuICAgICAgbWV0YUJsb2NrID0gYCR7bWV0YUJsb2NrfSR7SURfU0VQQVJBVE9SfSR7dGhpcy5tZXRhQmxvY2suY3VzdG9tSWR9YDtcbiAgICB9XG4gICAgaWYgKHRoaXMubWV0YUJsb2NrLmxlZ2FjeUlkcykge1xuICAgICAgdGhpcy5tZXRhQmxvY2subGVnYWN5SWRzLmZvckVhY2goXG4gICAgICAgICAgbGVnYWN5SWQgPT4geyBtZXRhQmxvY2sgPSBgJHttZXRhQmxvY2t9JHtMRUdBQ1lfSURfSU5ESUNBVE9SfSR7bGVnYWN5SWR9YDsgfSk7XG4gICAgfVxuICAgIHJldHVybiBjcmVhdGVDb29rZWRSYXdTdHJpbmcobWV0YUJsb2NrLCB0aGlzLm1lc3NhZ2VQYXJ0c1swXSk7XG4gIH1cblxuICAvKipcbiAgICogU2VyaWFsaXplIHRoZSBnaXZlbiBgcGxhY2Vob2xkZXJOYW1lYCBhbmQgYG1lc3NhZ2VQYXJ0YCBpbnRvIFwiY29va2VkXCIgYW5kIFwicmF3XCIgc3RyaW5ncyB0aGF0XG4gICAqIGNhbiBiZSB1c2VkIGluIGEgYCRsb2NhbGl6ZWAgdGFnZ2VkIHN0cmluZy5cbiAgICpcbiAgICogQHBhcmFtIHBsYWNlaG9sZGVyTmFtZSBUaGUgcGxhY2Vob2xkZXIgbmFtZSB0byBzZXJpYWxpemVcbiAgICogQHBhcmFtIG1lc3NhZ2VQYXJ0IFRoZSBmb2xsb3dpbmcgbWVzc2FnZSBzdHJpbmcgYWZ0ZXIgdGhpcyBwbGFjZWhvbGRlclxuICAgKi9cbiAgc2VyaWFsaXplSTE4blRlbXBsYXRlUGFydChwYXJ0SW5kZXg6IG51bWJlcik6IHtjb29rZWQ6IHN0cmluZywgcmF3OiBzdHJpbmd9IHtcbiAgICBjb25zdCBwbGFjZWhvbGRlck5hbWUgPSB0aGlzLnBsYWNlSG9sZGVyTmFtZXNbcGFydEluZGV4IC0gMV07XG4gICAgY29uc3QgbWVzc2FnZVBhcnQgPSB0aGlzLm1lc3NhZ2VQYXJ0c1twYXJ0SW5kZXhdO1xuICAgIHJldHVybiBjcmVhdGVDb29rZWRSYXdTdHJpbmcocGxhY2Vob2xkZXJOYW1lLCBtZXNzYWdlUGFydCk7XG4gIH1cbn1cblxuY29uc3QgZXNjYXBlU2xhc2hlcyA9IChzdHI6IHN0cmluZyk6IHN0cmluZyA9PiBzdHIucmVwbGFjZSgvXFxcXC9nLCAnXFxcXFxcXFwnKTtcbmNvbnN0IGVzY2FwZVN0YXJ0aW5nQ29sb24gPSAoc3RyOiBzdHJpbmcpOiBzdHJpbmcgPT4gc3RyLnJlcGxhY2UoL146LywgJ1xcXFw6Jyk7XG5jb25zdCBlc2NhcGVDb2xvbnMgPSAoc3RyOiBzdHJpbmcpOiBzdHJpbmcgPT4gc3RyLnJlcGxhY2UoLzovZywgJ1xcXFw6Jyk7XG5jb25zdCBlc2NhcGVGb3JNZXNzYWdlUGFydCA9IChzdHI6IHN0cmluZyk6IHN0cmluZyA9PlxuICAgIHN0ci5yZXBsYWNlKC9gL2csICdcXFxcYCcpLnJlcGxhY2UoL1xcJHsvZywgJyRcXFxceycpO1xuXG4vKipcbiAqIENyZWF0ZXMgYSBge2Nvb2tlZCwgcmF3fWAgb2JqZWN0IGZyb20gdGhlIGBtZXRhQmxvY2tgIGFuZCBgbWVzc2FnZVBhcnRgLlxuICpcbiAqIFRoZSBgcmF3YCB0ZXh0IG11c3QgaGF2ZSB2YXJpb3VzIGNoYXJhY3RlciBzZXF1ZW5jZXMgZXNjYXBlZDpcbiAqICogXCJcXFwiIHdvdWxkIG90aGVyd2lzZSBpbmRpY2F0ZSB0aGF0IHRoZSBuZXh0IGNoYXJhY3RlciBpcyBhIGNvbnRyb2wgY2hhcmFjdGVyLlxuICogKiBcImBcIiBhbmQgXCIke1wiIGFyZSB0ZW1wbGF0ZSBzdHJpbmcgY29udHJvbCBzZXF1ZW5jZXMgdGhhdCB3b3VsZCBvdGhlcndpc2UgcHJlbWF0dXJlbHkgaW5kaWNhdGVcbiAqICAgdGhlIGVuZCBvZiBhIG1lc3NhZ2UgcGFydC5cbiAqICogXCI6XCIgaW5zaWRlIGEgbWV0YWJsb2NrIHdvdWxkIHByZW1hdHVyZWx5IGluZGljYXRlIHRoZSBlbmQgb2YgdGhlIG1ldGFibG9jay5cbiAqICogXCI6XCIgYXQgdGhlIHN0YXJ0IG9mIGEgbWVzc2FnZVBhcnQgd2l0aCBubyBtZXRhYmxvY2sgd291bGQgZXJyb25lb3VzbHkgaW5kaWNhdGUgdGhlIHN0YXJ0IG9mIGFcbiAqICAgbWV0YWJsb2NrLlxuICpcbiAqIEBwYXJhbSBtZXRhQmxvY2sgQW55IG1ldGFkYXRhIHRoYXQgc2hvdWxkIGJlIHByZXBlbmRlZCB0byB0aGUgc3RyaW5nXG4gKiBAcGFyYW0gbWVzc2FnZVBhcnQgVGhlIG1lc3NhZ2UgcGFydCBvZiB0aGUgc3RyaW5nXG4gKi9cbmZ1bmN0aW9uIGNyZWF0ZUNvb2tlZFJhd1N0cmluZyhtZXRhQmxvY2s6IHN0cmluZywgbWVzc2FnZVBhcnQ6IHN0cmluZykge1xuICBpZiAobWV0YUJsb2NrID09PSAnJykge1xuICAgIHJldHVybiB7XG4gICAgICBjb29rZWQ6IG1lc3NhZ2VQYXJ0LFxuICAgICAgcmF3OiBlc2NhcGVGb3JNZXNzYWdlUGFydChlc2NhcGVTdGFydGluZ0NvbG9uKGVzY2FwZVNsYXNoZXMobWVzc2FnZVBhcnQpKSlcbiAgICB9O1xuICB9IGVsc2Uge1xuICAgIHJldHVybiB7XG4gICAgICBjb29rZWQ6IGA6JHttZXRhQmxvY2t9OiR7bWVzc2FnZVBhcnR9YCxcbiAgICAgIHJhdzogZXNjYXBlRm9yTWVzc2FnZVBhcnQoXG4gICAgICAgICAgYDoke2VzY2FwZUNvbG9ucyhlc2NhcGVTbGFzaGVzKG1ldGFCbG9jaykpfToke2VzY2FwZVNsYXNoZXMobWVzc2FnZVBhcnQpfWApXG4gICAgfTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgRXh0ZXJuYWxFeHByIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIHZhbHVlOiBFeHRlcm5hbFJlZmVyZW5jZSwgdHlwZT86IFR5cGV8bnVsbCwgcHVibGljIHR5cGVQYXJhbXM6IFR5cGVbXXxudWxsID0gbnVsbCxcbiAgICAgIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKHR5cGUsIHNvdXJjZVNwYW4pO1xuICB9XG5cbiAgaXNFcXVpdmFsZW50KGU6IEV4cHJlc3Npb24pOiBib29sZWFuIHtcbiAgICByZXR1cm4gZSBpbnN0YW5jZW9mIEV4dGVybmFsRXhwciAmJiB0aGlzLnZhbHVlLm5hbWUgPT09IGUudmFsdWUubmFtZSAmJlxuICAgICAgICB0aGlzLnZhbHVlLm1vZHVsZU5hbWUgPT09IGUudmFsdWUubW9kdWxlTmFtZSAmJiB0aGlzLnZhbHVlLnJ1bnRpbWUgPT09IGUudmFsdWUucnVudGltZTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7IHJldHVybiBmYWxzZTsgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdEV4dGVybmFsRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgRXh0ZXJuYWxSZWZlcmVuY2Uge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgbW9kdWxlTmFtZTogc3RyaW5nfG51bGwsIHB1YmxpYyBuYW1lOiBzdHJpbmd8bnVsbCwgcHVibGljIHJ1bnRpbWU/OiBhbnl8bnVsbCkge1xuICB9XG4gIC8vIE5vdGU6IG5vIGlzRXF1aXZhbGVudCBtZXRob2QgaGVyZSBhcyB3ZSB1c2UgdGhpcyBhcyBhbiBpbnRlcmZhY2UgdG9vLlxufVxuXG5leHBvcnQgY2xhc3MgQ29uZGl0aW9uYWxFeHByIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIHB1YmxpYyB0cnVlQ2FzZTogRXhwcmVzc2lvbjtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBjb25kaXRpb246IEV4cHJlc3Npb24sIHRydWVDYXNlOiBFeHByZXNzaW9uLCBwdWJsaWMgZmFsc2VDYXNlOiBFeHByZXNzaW9ufG51bGwgPSBudWxsLFxuICAgICAgdHlwZT86IFR5cGV8bnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIodHlwZSB8fCB0cnVlQ2FzZS50eXBlLCBzb3VyY2VTcGFuKTtcbiAgICB0aGlzLnRydWVDYXNlID0gdHJ1ZUNhc2U7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgQ29uZGl0aW9uYWxFeHByICYmIHRoaXMuY29uZGl0aW9uLmlzRXF1aXZhbGVudChlLmNvbmRpdGlvbikgJiZcbiAgICAgICAgdGhpcy50cnVlQ2FzZS5pc0VxdWl2YWxlbnQoZS50cnVlQ2FzZSkgJiYgbnVsbFNhZmVJc0VxdWl2YWxlbnQodGhpcy5mYWxzZUNhc2UsIGUuZmFsc2VDYXNlKTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7IHJldHVybiBmYWxzZTsgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdENvbmRpdGlvbmFsRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBOb3RFeHByIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBjb25kaXRpb246IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKEJPT0xfVFlQRSwgc291cmNlU3Bhbik7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgTm90RXhwciAmJiB0aGlzLmNvbmRpdGlvbi5pc0VxdWl2YWxlbnQoZS5jb25kaXRpb24pO1xuICB9XG5cbiAgaXNDb25zdGFudCgpIHsgcmV0dXJuIGZhbHNlOyB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0Tm90RXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgQXNzZXJ0Tm90TnVsbCBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgY29uZGl0aW9uOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcihjb25kaXRpb24udHlwZSwgc291cmNlU3Bhbik7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgQXNzZXJ0Tm90TnVsbCAmJiB0aGlzLmNvbmRpdGlvbi5pc0VxdWl2YWxlbnQoZS5jb25kaXRpb24pO1xuICB9XG5cbiAgaXNDb25zdGFudCgpIHsgcmV0dXJuIGZhbHNlOyB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0QXNzZXJ0Tm90TnVsbEV4cHIodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIENhc3RFeHByIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyB2YWx1ZTogRXhwcmVzc2lvbiwgdHlwZT86IFR5cGV8bnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIodHlwZSwgc291cmNlU3Bhbik7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgQ2FzdEV4cHIgJiYgdGhpcy52YWx1ZS5pc0VxdWl2YWxlbnQoZS52YWx1ZSk7XG4gIH1cblxuICBpc0NvbnN0YW50KCkgeyByZXR1cm4gZmFsc2U7IH1cblxuICB2aXNpdEV4cHJlc3Npb24odmlzaXRvcjogRXhwcmVzc2lvblZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRDYXN0RXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBGblBhcmFtIHtcbiAgY29uc3RydWN0b3IocHVibGljIG5hbWU6IHN0cmluZywgcHVibGljIHR5cGU6IFR5cGV8bnVsbCA9IG51bGwpIHt9XG5cbiAgaXNFcXVpdmFsZW50KHBhcmFtOiBGblBhcmFtKTogYm9vbGVhbiB7IHJldHVybiB0aGlzLm5hbWUgPT09IHBhcmFtLm5hbWU7IH1cbn1cblxuXG5leHBvcnQgY2xhc3MgRnVuY3Rpb25FeHByIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIHBhcmFtczogRm5QYXJhbVtdLCBwdWJsaWMgc3RhdGVtZW50czogU3RhdGVtZW50W10sIHR5cGU/OiBUeXBlfG51bGwsXG4gICAgICBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwsIHB1YmxpYyBuYW1lPzogc3RyaW5nfG51bGwpIHtcbiAgICBzdXBlcih0eXBlLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGUgaW5zdGFuY2VvZiBGdW5jdGlvbkV4cHIgJiYgYXJlQWxsRXF1aXZhbGVudCh0aGlzLnBhcmFtcywgZS5wYXJhbXMpICYmXG4gICAgICAgIGFyZUFsbEVxdWl2YWxlbnQodGhpcy5zdGF0ZW1lbnRzLCBlLnN0YXRlbWVudHMpO1xuICB9XG5cbiAgaXNDb25zdGFudCgpIHsgcmV0dXJuIGZhbHNlOyB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0RnVuY3Rpb25FeHByKHRoaXMsIGNvbnRleHQpO1xuICB9XG5cbiAgdG9EZWNsU3RtdChuYW1lOiBzdHJpbmcsIG1vZGlmaWVyczogU3RtdE1vZGlmaWVyW118bnVsbCA9IG51bGwpOiBEZWNsYXJlRnVuY3Rpb25TdG10IHtcbiAgICByZXR1cm4gbmV3IERlY2xhcmVGdW5jdGlvblN0bXQoXG4gICAgICAgIG5hbWUsIHRoaXMucGFyYW1zLCB0aGlzLnN0YXRlbWVudHMsIHRoaXMudHlwZSwgbW9kaWZpZXJzLCB0aGlzLnNvdXJjZVNwYW4pO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIEJpbmFyeU9wZXJhdG9yRXhwciBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBwdWJsaWMgbGhzOiBFeHByZXNzaW9uO1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBvcGVyYXRvcjogQmluYXJ5T3BlcmF0b3IsIGxoczogRXhwcmVzc2lvbiwgcHVibGljIHJoczogRXhwcmVzc2lvbiwgdHlwZT86IFR5cGV8bnVsbCxcbiAgICAgIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCwgcHVibGljIHBhcmVuczogYm9vbGVhbiA9IHRydWUpIHtcbiAgICBzdXBlcih0eXBlIHx8IGxocy50eXBlLCBzb3VyY2VTcGFuKTtcbiAgICB0aGlzLmxocyA9IGxocztcbiAgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGUgaW5zdGFuY2VvZiBCaW5hcnlPcGVyYXRvckV4cHIgJiYgdGhpcy5vcGVyYXRvciA9PT0gZS5vcGVyYXRvciAmJlxuICAgICAgICB0aGlzLmxocy5pc0VxdWl2YWxlbnQoZS5saHMpICYmIHRoaXMucmhzLmlzRXF1aXZhbGVudChlLnJocyk7XG4gIH1cblxuICBpc0NvbnN0YW50KCkgeyByZXR1cm4gZmFsc2U7IH1cblxuICB2aXNpdEV4cHJlc3Npb24odmlzaXRvcjogRXhwcmVzc2lvblZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRCaW5hcnlPcGVyYXRvckV4cHIodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuXG5leHBvcnQgY2xhc3MgUmVhZFByb3BFeHByIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIHJlY2VpdmVyOiBFeHByZXNzaW9uLCBwdWJsaWMgbmFtZTogc3RyaW5nLCB0eXBlPzogVHlwZXxudWxsLFxuICAgICAgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIodHlwZSwgc291cmNlU3Bhbik7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgUmVhZFByb3BFeHByICYmIHRoaXMucmVjZWl2ZXIuaXNFcXVpdmFsZW50KGUucmVjZWl2ZXIpICYmXG4gICAgICAgIHRoaXMubmFtZSA9PT0gZS5uYW1lO1xuICB9XG5cbiAgaXNDb25zdGFudCgpIHsgcmV0dXJuIGZhbHNlOyB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0UmVhZFByb3BFeHByKHRoaXMsIGNvbnRleHQpO1xuICB9XG5cbiAgc2V0KHZhbHVlOiBFeHByZXNzaW9uKTogV3JpdGVQcm9wRXhwciB7XG4gICAgcmV0dXJuIG5ldyBXcml0ZVByb3BFeHByKHRoaXMucmVjZWl2ZXIsIHRoaXMubmFtZSwgdmFsdWUsIG51bGwsIHRoaXMuc291cmNlU3Bhbik7XG4gIH1cbn1cblxuXG5leHBvcnQgY2xhc3MgUmVhZEtleUV4cHIgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgcmVjZWl2ZXI6IEV4cHJlc3Npb24sIHB1YmxpYyBpbmRleDogRXhwcmVzc2lvbiwgdHlwZT86IFR5cGV8bnVsbCxcbiAgICAgIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKHR5cGUsIHNvdXJjZVNwYW4pO1xuICB9XG5cbiAgaXNFcXVpdmFsZW50KGU6IEV4cHJlc3Npb24pOiBib29sZWFuIHtcbiAgICByZXR1cm4gZSBpbnN0YW5jZW9mIFJlYWRLZXlFeHByICYmIHRoaXMucmVjZWl2ZXIuaXNFcXVpdmFsZW50KGUucmVjZWl2ZXIpICYmXG4gICAgICAgIHRoaXMuaW5kZXguaXNFcXVpdmFsZW50KGUuaW5kZXgpO1xuICB9XG5cbiAgaXNDb25zdGFudCgpIHsgcmV0dXJuIGZhbHNlOyB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0UmVhZEtleUV4cHIodGhpcywgY29udGV4dCk7XG4gIH1cblxuICBzZXQodmFsdWU6IEV4cHJlc3Npb24pOiBXcml0ZUtleUV4cHIge1xuICAgIHJldHVybiBuZXcgV3JpdGVLZXlFeHByKHRoaXMucmVjZWl2ZXIsIHRoaXMuaW5kZXgsIHZhbHVlLCBudWxsLCB0aGlzLnNvdXJjZVNwYW4pO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIExpdGVyYWxBcnJheUV4cHIgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgcHVibGljIGVudHJpZXM6IEV4cHJlc3Npb25bXTtcbiAgY29uc3RydWN0b3IoZW50cmllczogRXhwcmVzc2lvbltdLCB0eXBlPzogVHlwZXxudWxsLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcih0eXBlLCBzb3VyY2VTcGFuKTtcbiAgICB0aGlzLmVudHJpZXMgPSBlbnRyaWVzO1xuICB9XG5cbiAgaXNDb25zdGFudCgpIHsgcmV0dXJuIHRoaXMuZW50cmllcy5ldmVyeShlID0+IGUuaXNDb25zdGFudCgpKTsgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGUgaW5zdGFuY2VvZiBMaXRlcmFsQXJyYXlFeHByICYmIGFyZUFsbEVxdWl2YWxlbnQodGhpcy5lbnRyaWVzLCBlLmVudHJpZXMpO1xuICB9XG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdExpdGVyYWxBcnJheUV4cHIodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIExpdGVyYWxNYXBFbnRyeSB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBrZXk6IHN0cmluZywgcHVibGljIHZhbHVlOiBFeHByZXNzaW9uLCBwdWJsaWMgcXVvdGVkOiBib29sZWFuKSB7fVxuICBpc0VxdWl2YWxlbnQoZTogTGl0ZXJhbE1hcEVudHJ5KTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRoaXMua2V5ID09PSBlLmtleSAmJiB0aGlzLnZhbHVlLmlzRXF1aXZhbGVudChlLnZhbHVlKTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgTGl0ZXJhbE1hcEV4cHIgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgcHVibGljIHZhbHVlVHlwZTogVHlwZXxudWxsID0gbnVsbDtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgZW50cmllczogTGl0ZXJhbE1hcEVudHJ5W10sIHR5cGU/OiBNYXBUeXBlfG51bGwsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKHR5cGUsIHNvdXJjZVNwYW4pO1xuICAgIGlmICh0eXBlKSB7XG4gICAgICB0aGlzLnZhbHVlVHlwZSA9IHR5cGUudmFsdWVUeXBlO1xuICAgIH1cbiAgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGUgaW5zdGFuY2VvZiBMaXRlcmFsTWFwRXhwciAmJiBhcmVBbGxFcXVpdmFsZW50KHRoaXMuZW50cmllcywgZS5lbnRyaWVzKTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7IHJldHVybiB0aGlzLmVudHJpZXMuZXZlcnkoZSA9PiBlLnZhbHVlLmlzQ29uc3RhbnQoKSk7IH1cblxuICB2aXNpdEV4cHJlc3Npb24odmlzaXRvcjogRXhwcmVzc2lvblZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRMaXRlcmFsTWFwRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgQ29tbWFFeHByIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBwYXJ0czogRXhwcmVzc2lvbltdLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcihwYXJ0c1twYXJ0cy5sZW5ndGggLSAxXS50eXBlLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGUgaW5zdGFuY2VvZiBDb21tYUV4cHIgJiYgYXJlQWxsRXF1aXZhbGVudCh0aGlzLnBhcnRzLCBlLnBhcnRzKTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7IHJldHVybiBmYWxzZTsgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdENvbW1hRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgaW50ZXJmYWNlIEV4cHJlc3Npb25WaXNpdG9yIHtcbiAgdmlzaXRSZWFkVmFyRXhwcihhc3Q6IFJlYWRWYXJFeHByLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0V3JpdGVWYXJFeHByKGV4cHI6IFdyaXRlVmFyRXhwciwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdFdyaXRlS2V5RXhwcihleHByOiBXcml0ZUtleUV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRXcml0ZVByb3BFeHByKGV4cHI6IFdyaXRlUHJvcEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRJbnZva2VNZXRob2RFeHByKGFzdDogSW52b2tlTWV0aG9kRXhwciwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdEludm9rZUZ1bmN0aW9uRXhwcihhc3Q6IEludm9rZUZ1bmN0aW9uRXhwciwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdEluc3RhbnRpYXRlRXhwcihhc3Q6IEluc3RhbnRpYXRlRXhwciwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdExpdGVyYWxFeHByKGFzdDogTGl0ZXJhbEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRMb2NhbGl6ZWRTdHJpbmcoYXN0OiBMb2NhbGl6ZWRTdHJpbmcsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRFeHRlcm5hbEV4cHIoYXN0OiBFeHRlcm5hbEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRDb25kaXRpb25hbEV4cHIoYXN0OiBDb25kaXRpb25hbEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXROb3RFeHByKGFzdDogTm90RXhwciwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdEFzc2VydE5vdE51bGxFeHByKGFzdDogQXNzZXJ0Tm90TnVsbCwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdENhc3RFeHByKGFzdDogQ2FzdEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRGdW5jdGlvbkV4cHIoYXN0OiBGdW5jdGlvbkV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRCaW5hcnlPcGVyYXRvckV4cHIoYXN0OiBCaW5hcnlPcGVyYXRvckV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRSZWFkUHJvcEV4cHIoYXN0OiBSZWFkUHJvcEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRSZWFkS2V5RXhwcihhc3Q6IFJlYWRLZXlFeHByLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0TGl0ZXJhbEFycmF5RXhwcihhc3Q6IExpdGVyYWxBcnJheUV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRMaXRlcmFsTWFwRXhwcihhc3Q6IExpdGVyYWxNYXBFeHByLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0Q29tbWFFeHByKGFzdDogQ29tbWFFeHByLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0V3JhcHBlZE5vZGVFeHByKGFzdDogV3JhcHBlZE5vZGVFeHByPGFueT4sIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRUeXBlb2ZFeHByKGFzdDogVHlwZW9mRXhwciwgY29udGV4dDogYW55KTogYW55O1xufVxuXG5leHBvcnQgY29uc3QgVEhJU19FWFBSID0gbmV3IFJlYWRWYXJFeHByKEJ1aWx0aW5WYXIuVGhpcywgbnVsbCwgbnVsbCk7XG5leHBvcnQgY29uc3QgU1VQRVJfRVhQUiA9IG5ldyBSZWFkVmFyRXhwcihCdWlsdGluVmFyLlN1cGVyLCBudWxsLCBudWxsKTtcbmV4cG9ydCBjb25zdCBDQVRDSF9FUlJPUl9WQVIgPSBuZXcgUmVhZFZhckV4cHIoQnVpbHRpblZhci5DYXRjaEVycm9yLCBudWxsLCBudWxsKTtcbmV4cG9ydCBjb25zdCBDQVRDSF9TVEFDS19WQVIgPSBuZXcgUmVhZFZhckV4cHIoQnVpbHRpblZhci5DYXRjaFN0YWNrLCBudWxsLCBudWxsKTtcbmV4cG9ydCBjb25zdCBOVUxMX0VYUFIgPSBuZXcgTGl0ZXJhbEV4cHIobnVsbCwgbnVsbCwgbnVsbCk7XG5leHBvcnQgY29uc3QgVFlQRURfTlVMTF9FWFBSID0gbmV3IExpdGVyYWxFeHByKG51bGwsIElORkVSUkVEX1RZUEUsIG51bGwpO1xuXG4vLy8vIFN0YXRlbWVudHNcbmV4cG9ydCBlbnVtIFN0bXRNb2RpZmllciB7XG4gIEZpbmFsLFxuICBQcml2YXRlLFxuICBFeHBvcnRlZCxcbiAgU3RhdGljLFxufVxuXG5leHBvcnQgYWJzdHJhY3QgY2xhc3MgU3RhdGVtZW50IHtcbiAgcHVibGljIG1vZGlmaWVyczogU3RtdE1vZGlmaWVyW107XG4gIHB1YmxpYyBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW58bnVsbDtcbiAgY29uc3RydWN0b3IobW9kaWZpZXJzPzogU3RtdE1vZGlmaWVyW118bnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgdGhpcy5tb2RpZmllcnMgPSBtb2RpZmllcnMgfHwgW107XG4gICAgdGhpcy5zb3VyY2VTcGFuID0gc291cmNlU3BhbiB8fCBudWxsO1xuICB9XG4gIC8qKlxuICAgKiBDYWxjdWxhdGVzIHdoZXRoZXIgdGhpcyBzdGF0ZW1lbnQgcHJvZHVjZXMgdGhlIHNhbWUgdmFsdWUgYXMgdGhlIGdpdmVuIHN0YXRlbWVudC5cbiAgICogTm90ZTogV2UgZG9uJ3QgY2hlY2sgVHlwZXMgbm9yIFBhcnNlU291cmNlU3BhbnMgbm9yIGZ1bmN0aW9uIGFyZ3VtZW50cy5cbiAgICovXG4gIGFic3RyYWN0IGlzRXF1aXZhbGVudChzdG10OiBTdGF0ZW1lbnQpOiBib29sZWFuO1xuXG4gIGFic3RyYWN0IHZpc2l0U3RhdGVtZW50KHZpc2l0b3I6IFN0YXRlbWVudFZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueTtcblxuICBoYXNNb2RpZmllcihtb2RpZmllcjogU3RtdE1vZGlmaWVyKTogYm9vbGVhbiB7IHJldHVybiB0aGlzLm1vZGlmaWVycyAhLmluZGV4T2YobW9kaWZpZXIpICE9PSAtMTsgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBEZWNsYXJlVmFyU3RtdCBleHRlbmRzIFN0YXRlbWVudCB7XG4gIHB1YmxpYyB0eXBlOiBUeXBlfG51bGw7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIG5hbWU6IHN0cmluZywgcHVibGljIHZhbHVlPzogRXhwcmVzc2lvbiwgdHlwZT86IFR5cGV8bnVsbCxcbiAgICAgIG1vZGlmaWVyczogU3RtdE1vZGlmaWVyW118bnVsbCA9IG51bGwsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKG1vZGlmaWVycywgc291cmNlU3Bhbik7XG4gICAgdGhpcy50eXBlID0gdHlwZSB8fCAodmFsdWUgJiYgdmFsdWUudHlwZSkgfHwgbnVsbDtcbiAgfVxuICBpc0VxdWl2YWxlbnQoc3RtdDogU3RhdGVtZW50KTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHN0bXQgaW5zdGFuY2VvZiBEZWNsYXJlVmFyU3RtdCAmJiB0aGlzLm5hbWUgPT09IHN0bXQubmFtZSAmJlxuICAgICAgICAodGhpcy52YWx1ZSA/ICEhc3RtdC52YWx1ZSAmJiB0aGlzLnZhbHVlLmlzRXF1aXZhbGVudChzdG10LnZhbHVlKSA6ICFzdG10LnZhbHVlKTtcbiAgfVxuICB2aXNpdFN0YXRlbWVudCh2aXNpdG9yOiBTdGF0ZW1lbnRWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0RGVjbGFyZVZhclN0bXQodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIERlY2xhcmVGdW5jdGlvblN0bXQgZXh0ZW5kcyBTdGF0ZW1lbnQge1xuICBwdWJsaWMgdHlwZTogVHlwZXxudWxsO1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHB1YmxpYyBwYXJhbXM6IEZuUGFyYW1bXSwgcHVibGljIHN0YXRlbWVudHM6IFN0YXRlbWVudFtdLFxuICAgICAgdHlwZT86IFR5cGV8bnVsbCwgbW9kaWZpZXJzOiBTdG10TW9kaWZpZXJbXXxudWxsID0gbnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIobW9kaWZpZXJzLCBzb3VyY2VTcGFuKTtcbiAgICB0aGlzLnR5cGUgPSB0eXBlIHx8IG51bGw7XG4gIH1cbiAgaXNFcXVpdmFsZW50KHN0bXQ6IFN0YXRlbWVudCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBzdG10IGluc3RhbmNlb2YgRGVjbGFyZUZ1bmN0aW9uU3RtdCAmJiBhcmVBbGxFcXVpdmFsZW50KHRoaXMucGFyYW1zLCBzdG10LnBhcmFtcykgJiZcbiAgICAgICAgYXJlQWxsRXF1aXZhbGVudCh0aGlzLnN0YXRlbWVudHMsIHN0bXQuc3RhdGVtZW50cyk7XG4gIH1cblxuICB2aXNpdFN0YXRlbWVudCh2aXNpdG9yOiBTdGF0ZW1lbnRWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0RGVjbGFyZUZ1bmN0aW9uU3RtdCh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgRXhwcmVzc2lvblN0YXRlbWVudCBleHRlbmRzIFN0YXRlbWVudCB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBleHByOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcihudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBpc0VxdWl2YWxlbnQoc3RtdDogU3RhdGVtZW50KTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHN0bXQgaW5zdGFuY2VvZiBFeHByZXNzaW9uU3RhdGVtZW50ICYmIHRoaXMuZXhwci5pc0VxdWl2YWxlbnQoc3RtdC5leHByKTtcbiAgfVxuXG4gIHZpc2l0U3RhdGVtZW50KHZpc2l0b3I6IFN0YXRlbWVudFZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRFeHByZXNzaW9uU3RtdCh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBSZXR1cm5TdGF0ZW1lbnQgZXh0ZW5kcyBTdGF0ZW1lbnQge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgdmFsdWU6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIGlzRXF1aXZhbGVudChzdG10OiBTdGF0ZW1lbnQpOiBib29sZWFuIHtcbiAgICByZXR1cm4gc3RtdCBpbnN0YW5jZW9mIFJldHVyblN0YXRlbWVudCAmJiB0aGlzLnZhbHVlLmlzRXF1aXZhbGVudChzdG10LnZhbHVlKTtcbiAgfVxuICB2aXNpdFN0YXRlbWVudCh2aXNpdG9yOiBTdGF0ZW1lbnRWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0UmV0dXJuU3RtdCh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgQWJzdHJhY3RDbGFzc1BhcnQge1xuICBwdWJsaWMgdHlwZTogVHlwZXxudWxsO1xuICBjb25zdHJ1Y3Rvcih0eXBlOiBUeXBlfG51bGx8dW5kZWZpbmVkLCBwdWJsaWMgbW9kaWZpZXJzOiBTdG10TW9kaWZpZXJbXXxudWxsKSB7XG4gICAgaWYgKCFtb2RpZmllcnMpIHtcbiAgICAgIHRoaXMubW9kaWZpZXJzID0gW107XG4gICAgfVxuICAgIHRoaXMudHlwZSA9IHR5cGUgfHwgbnVsbDtcbiAgfVxuICBoYXNNb2RpZmllcihtb2RpZmllcjogU3RtdE1vZGlmaWVyKTogYm9vbGVhbiB7IHJldHVybiB0aGlzLm1vZGlmaWVycyAhLmluZGV4T2YobW9kaWZpZXIpICE9PSAtMTsgfVxufVxuXG5leHBvcnQgY2xhc3MgQ2xhc3NGaWVsZCBleHRlbmRzIEFic3RyYWN0Q2xhc3NQYXJ0IHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgbmFtZTogc3RyaW5nLCB0eXBlPzogVHlwZXxudWxsLCBtb2RpZmllcnM6IFN0bXRNb2RpZmllcltdfG51bGwgPSBudWxsLFxuICAgICAgcHVibGljIGluaXRpYWxpemVyPzogRXhwcmVzc2lvbikge1xuICAgIHN1cGVyKHR5cGUsIG1vZGlmaWVycyk7XG4gIH1cbiAgaXNFcXVpdmFsZW50KGY6IENsYXNzRmllbGQpIHsgcmV0dXJuIHRoaXMubmFtZSA9PT0gZi5uYW1lOyB9XG59XG5cblxuZXhwb3J0IGNsYXNzIENsYXNzTWV0aG9kIGV4dGVuZHMgQWJzdHJhY3RDbGFzc1BhcnQge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBuYW1lOiBzdHJpbmd8bnVsbCwgcHVibGljIHBhcmFtczogRm5QYXJhbVtdLCBwdWJsaWMgYm9keTogU3RhdGVtZW50W10sXG4gICAgICB0eXBlPzogVHlwZXxudWxsLCBtb2RpZmllcnM6IFN0bXRNb2RpZmllcltdfG51bGwgPSBudWxsKSB7XG4gICAgc3VwZXIodHlwZSwgbW9kaWZpZXJzKTtcbiAgfVxuICBpc0VxdWl2YWxlbnQobTogQ2xhc3NNZXRob2QpIHtcbiAgICByZXR1cm4gdGhpcy5uYW1lID09PSBtLm5hbWUgJiYgYXJlQWxsRXF1aXZhbGVudCh0aGlzLmJvZHksIG0uYm9keSk7XG4gIH1cbn1cblxuXG5leHBvcnQgY2xhc3MgQ2xhc3NHZXR0ZXIgZXh0ZW5kcyBBYnN0cmFjdENsYXNzUGFydCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIG5hbWU6IHN0cmluZywgcHVibGljIGJvZHk6IFN0YXRlbWVudFtdLCB0eXBlPzogVHlwZXxudWxsLFxuICAgICAgbW9kaWZpZXJzOiBTdG10TW9kaWZpZXJbXXxudWxsID0gbnVsbCkge1xuICAgIHN1cGVyKHR5cGUsIG1vZGlmaWVycyk7XG4gIH1cbiAgaXNFcXVpdmFsZW50KG06IENsYXNzR2V0dGVyKSB7XG4gICAgcmV0dXJuIHRoaXMubmFtZSA9PT0gbS5uYW1lICYmIGFyZUFsbEVxdWl2YWxlbnQodGhpcy5ib2R5LCBtLmJvZHkpO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIENsYXNzU3RtdCBleHRlbmRzIFN0YXRlbWVudCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIG5hbWU6IHN0cmluZywgcHVibGljIHBhcmVudDogRXhwcmVzc2lvbnxudWxsLCBwdWJsaWMgZmllbGRzOiBDbGFzc0ZpZWxkW10sXG4gICAgICBwdWJsaWMgZ2V0dGVyczogQ2xhc3NHZXR0ZXJbXSwgcHVibGljIGNvbnN0cnVjdG9yTWV0aG9kOiBDbGFzc01ldGhvZCxcbiAgICAgIHB1YmxpYyBtZXRob2RzOiBDbGFzc01ldGhvZFtdLCBtb2RpZmllcnM6IFN0bXRNb2RpZmllcltdfG51bGwgPSBudWxsLFxuICAgICAgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIobW9kaWZpZXJzLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBpc0VxdWl2YWxlbnQoc3RtdDogU3RhdGVtZW50KTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHN0bXQgaW5zdGFuY2VvZiBDbGFzc1N0bXQgJiYgdGhpcy5uYW1lID09PSBzdG10Lm5hbWUgJiZcbiAgICAgICAgbnVsbFNhZmVJc0VxdWl2YWxlbnQodGhpcy5wYXJlbnQsIHN0bXQucGFyZW50KSAmJlxuICAgICAgICBhcmVBbGxFcXVpdmFsZW50KHRoaXMuZmllbGRzLCBzdG10LmZpZWxkcykgJiZcbiAgICAgICAgYXJlQWxsRXF1aXZhbGVudCh0aGlzLmdldHRlcnMsIHN0bXQuZ2V0dGVycykgJiZcbiAgICAgICAgdGhpcy5jb25zdHJ1Y3Rvck1ldGhvZC5pc0VxdWl2YWxlbnQoc3RtdC5jb25zdHJ1Y3Rvck1ldGhvZCkgJiZcbiAgICAgICAgYXJlQWxsRXF1aXZhbGVudCh0aGlzLm1ldGhvZHMsIHN0bXQubWV0aG9kcyk7XG4gIH1cbiAgdmlzaXRTdGF0ZW1lbnQodmlzaXRvcjogU3RhdGVtZW50VmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdERlY2xhcmVDbGFzc1N0bXQodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuXG5leHBvcnQgY2xhc3MgSWZTdG10IGV4dGVuZHMgU3RhdGVtZW50IHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgY29uZGl0aW9uOiBFeHByZXNzaW9uLCBwdWJsaWMgdHJ1ZUNhc2U6IFN0YXRlbWVudFtdLFxuICAgICAgcHVibGljIGZhbHNlQ2FzZTogU3RhdGVtZW50W10gPSBbXSwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIobnVsbCwgc291cmNlU3Bhbik7XG4gIH1cbiAgaXNFcXVpdmFsZW50KHN0bXQ6IFN0YXRlbWVudCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBzdG10IGluc3RhbmNlb2YgSWZTdG10ICYmIHRoaXMuY29uZGl0aW9uLmlzRXF1aXZhbGVudChzdG10LmNvbmRpdGlvbikgJiZcbiAgICAgICAgYXJlQWxsRXF1aXZhbGVudCh0aGlzLnRydWVDYXNlLCBzdG10LnRydWVDYXNlKSAmJlxuICAgICAgICBhcmVBbGxFcXVpdmFsZW50KHRoaXMuZmFsc2VDYXNlLCBzdG10LmZhbHNlQ2FzZSk7XG4gIH1cbiAgdmlzaXRTdGF0ZW1lbnQodmlzaXRvcjogU3RhdGVtZW50VmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdElmU3RtdCh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgQ29tbWVudFN0bXQgZXh0ZW5kcyBTdGF0ZW1lbnQge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgY29tbWVudDogc3RyaW5nLCBwdWJsaWMgbXVsdGlsaW5lID0gZmFsc2UsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIGlzRXF1aXZhbGVudChzdG10OiBTdGF0ZW1lbnQpOiBib29sZWFuIHsgcmV0dXJuIHN0bXQgaW5zdGFuY2VvZiBDb21tZW50U3RtdDsgfVxuICB2aXNpdFN0YXRlbWVudCh2aXNpdG9yOiBTdGF0ZW1lbnRWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0Q29tbWVudFN0bXQodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIEpTRG9jQ29tbWVudFN0bXQgZXh0ZW5kcyBTdGF0ZW1lbnQge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgdGFnczogSlNEb2NUYWdbXSA9IFtdLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcihudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBpc0VxdWl2YWxlbnQoc3RtdDogU3RhdGVtZW50KTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHN0bXQgaW5zdGFuY2VvZiBKU0RvY0NvbW1lbnRTdG10ICYmIHRoaXMudG9TdHJpbmcoKSA9PT0gc3RtdC50b1N0cmluZygpO1xuICB9XG4gIHZpc2l0U3RhdGVtZW50KHZpc2l0b3I6IFN0YXRlbWVudFZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRKU0RvY0NvbW1lbnRTdG10KHRoaXMsIGNvbnRleHQpO1xuICB9XG4gIHRvU3RyaW5nKCk6IHN0cmluZyB7IHJldHVybiBzZXJpYWxpemVUYWdzKHRoaXMudGFncyk7IH1cbn1cblxuZXhwb3J0IGNsYXNzIFRyeUNhdGNoU3RtdCBleHRlbmRzIFN0YXRlbWVudCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIGJvZHlTdG10czogU3RhdGVtZW50W10sIHB1YmxpYyBjYXRjaFN0bXRzOiBTdGF0ZW1lbnRbXSxcbiAgICAgIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIGlzRXF1aXZhbGVudChzdG10OiBTdGF0ZW1lbnQpOiBib29sZWFuIHtcbiAgICByZXR1cm4gc3RtdCBpbnN0YW5jZW9mIFRyeUNhdGNoU3RtdCAmJiBhcmVBbGxFcXVpdmFsZW50KHRoaXMuYm9keVN0bXRzLCBzdG10LmJvZHlTdG10cykgJiZcbiAgICAgICAgYXJlQWxsRXF1aXZhbGVudCh0aGlzLmNhdGNoU3RtdHMsIHN0bXQuY2F0Y2hTdG10cyk7XG4gIH1cbiAgdmlzaXRTdGF0ZW1lbnQodmlzaXRvcjogU3RhdGVtZW50VmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdFRyeUNhdGNoU3RtdCh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBUaHJvd1N0bXQgZXh0ZW5kcyBTdGF0ZW1lbnQge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgZXJyb3I6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIGlzRXF1aXZhbGVudChzdG10OiBUaHJvd1N0bXQpOiBib29sZWFuIHtcbiAgICByZXR1cm4gc3RtdCBpbnN0YW5jZW9mIFRyeUNhdGNoU3RtdCAmJiB0aGlzLmVycm9yLmlzRXF1aXZhbGVudChzdG10LmVycm9yKTtcbiAgfVxuICB2aXNpdFN0YXRlbWVudCh2aXNpdG9yOiBTdGF0ZW1lbnRWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0VGhyb3dTdG10KHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgU3RhdGVtZW50VmlzaXRvciB7XG4gIHZpc2l0RGVjbGFyZVZhclN0bXQoc3RtdDogRGVjbGFyZVZhclN0bXQsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXREZWNsYXJlRnVuY3Rpb25TdG10KHN0bXQ6IERlY2xhcmVGdW5jdGlvblN0bXQsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRFeHByZXNzaW9uU3RtdChzdG10OiBFeHByZXNzaW9uU3RhdGVtZW50LCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0UmV0dXJuU3RtdChzdG10OiBSZXR1cm5TdGF0ZW1lbnQsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXREZWNsYXJlQ2xhc3NTdG10KHN0bXQ6IENsYXNzU3RtdCwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdElmU3RtdChzdG10OiBJZlN0bXQsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRUcnlDYXRjaFN0bXQoc3RtdDogVHJ5Q2F0Y2hTdG10LCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0VGhyb3dTdG10KHN0bXQ6IFRocm93U3RtdCwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdENvbW1lbnRTdG10KHN0bXQ6IENvbW1lbnRTdG10LCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0SlNEb2NDb21tZW50U3RtdChzdG10OiBKU0RvY0NvbW1lbnRTdG10LCBjb250ZXh0OiBhbnkpOiBhbnk7XG59XG5cbmV4cG9ydCBjbGFzcyBBc3RUcmFuc2Zvcm1lciBpbXBsZW1lbnRzIFN0YXRlbWVudFZpc2l0b3IsIEV4cHJlc3Npb25WaXNpdG9yIHtcbiAgdHJhbnNmb3JtRXhwcihleHByOiBFeHByZXNzaW9uLCBjb250ZXh0OiBhbnkpOiBFeHByZXNzaW9uIHsgcmV0dXJuIGV4cHI7IH1cblxuICB0cmFuc2Zvcm1TdG10KHN0bXQ6IFN0YXRlbWVudCwgY29udGV4dDogYW55KTogU3RhdGVtZW50IHsgcmV0dXJuIHN0bXQ7IH1cblxuICB2aXNpdFJlYWRWYXJFeHByKGFzdDogUmVhZFZhckV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7IHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoYXN0LCBjb250ZXh0KTsgfVxuXG4gIHZpc2l0V3JhcHBlZE5vZGVFeHByKGFzdDogV3JhcHBlZE5vZGVFeHByPGFueT4sIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtRXhwcihhc3QsIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRUeXBlb2ZFeHByKGV4cHI6IFR5cGVvZkV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtRXhwcihcbiAgICAgICAgbmV3IFR5cGVvZkV4cHIoZXhwci5leHByLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSwgZXhwci50eXBlLCBleHByLnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0V3JpdGVWYXJFeHByKGV4cHI6IFdyaXRlVmFyRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgV3JpdGVWYXJFeHByKFxuICAgICAgICAgICAgZXhwci5uYW1lLCBleHByLnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSwgZXhwci50eXBlLCBleHByLnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0V3JpdGVLZXlFeHByKGV4cHI6IFdyaXRlS2V5RXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgV3JpdGVLZXlFeHByKFxuICAgICAgICAgICAgZXhwci5yZWNlaXZlci52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksIGV4cHIuaW5kZXgudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLFxuICAgICAgICAgICAgZXhwci52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksIGV4cHIudHlwZSwgZXhwci5zb3VyY2VTcGFuKSxcbiAgICAgICAgY29udGV4dCk7XG4gIH1cblxuICB2aXNpdFdyaXRlUHJvcEV4cHIoZXhwcjogV3JpdGVQcm9wRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgV3JpdGVQcm9wRXhwcihcbiAgICAgICAgICAgIGV4cHIucmVjZWl2ZXIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLCBleHByLm5hbWUsXG4gICAgICAgICAgICBleHByLnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSwgZXhwci50eXBlLCBleHByLnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0SW52b2tlTWV0aG9kRXhwcihhc3Q6IEludm9rZU1ldGhvZEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgY29uc3QgbWV0aG9kID0gYXN0LmJ1aWx0aW4gfHwgYXN0Lm5hbWU7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtRXhwcihcbiAgICAgICAgbmV3IEludm9rZU1ldGhvZEV4cHIoXG4gICAgICAgICAgICBhc3QucmVjZWl2ZXIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLCBtZXRob2QgISxcbiAgICAgICAgICAgIHRoaXMudmlzaXRBbGxFeHByZXNzaW9ucyhhc3QuYXJncywgY29udGV4dCksIGFzdC50eXBlLCBhc3Quc291cmNlU3BhbiksXG4gICAgICAgIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRJbnZva2VGdW5jdGlvbkV4cHIoYXN0OiBJbnZva2VGdW5jdGlvbkV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtRXhwcihcbiAgICAgICAgbmV3IEludm9rZUZ1bmN0aW9uRXhwcihcbiAgICAgICAgICAgIGFzdC5mbi52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksIHRoaXMudmlzaXRBbGxFeHByZXNzaW9ucyhhc3QuYXJncywgY29udGV4dCksXG4gICAgICAgICAgICBhc3QudHlwZSwgYXN0LnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0SW5zdGFudGlhdGVFeHByKGFzdDogSW5zdGFudGlhdGVFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoXG4gICAgICAgIG5ldyBJbnN0YW50aWF0ZUV4cHIoXG4gICAgICAgICAgICBhc3QuY2xhc3NFeHByLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSxcbiAgICAgICAgICAgIHRoaXMudmlzaXRBbGxFeHByZXNzaW9ucyhhc3QuYXJncywgY29udGV4dCksIGFzdC50eXBlLCBhc3Quc291cmNlU3BhbiksXG4gICAgICAgIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRMaXRlcmFsRXhwcihhc3Q6IExpdGVyYWxFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkgeyByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKGFzdCwgY29udGV4dCk7IH1cblxuICB2aXNpdExvY2FsaXplZFN0cmluZyhhc3Q6IExvY2FsaXplZFN0cmluZywgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgTG9jYWxpemVkU3RyaW5nKFxuICAgICAgICAgICAgYXN0Lm1ldGFCbG9jaywgYXN0Lm1lc3NhZ2VQYXJ0cywgYXN0LnBsYWNlSG9sZGVyTmFtZXMsXG4gICAgICAgICAgICB0aGlzLnZpc2l0QWxsRXhwcmVzc2lvbnMoYXN0LmV4cHJlc3Npb25zLCBjb250ZXh0KSwgYXN0LnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0RXh0ZXJuYWxFeHByKGFzdDogRXh0ZXJuYWxFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoYXN0LCBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0Q29uZGl0aW9uYWxFeHByKGFzdDogQ29uZGl0aW9uYWxFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoXG4gICAgICAgIG5ldyBDb25kaXRpb25hbEV4cHIoXG4gICAgICAgICAgICBhc3QuY29uZGl0aW9uLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSxcbiAgICAgICAgICAgIGFzdC50cnVlQ2FzZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksXG4gICAgICAgICAgICBhc3QuZmFsc2VDYXNlICEudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLCBhc3QudHlwZSwgYXN0LnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0Tm90RXhwcihhc3Q6IE5vdEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtRXhwcihcbiAgICAgICAgbmV3IE5vdEV4cHIoYXN0LmNvbmRpdGlvbi52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksIGFzdC5zb3VyY2VTcGFuKSwgY29udGV4dCk7XG4gIH1cblxuICB2aXNpdEFzc2VydE5vdE51bGxFeHByKGFzdDogQXNzZXJ0Tm90TnVsbCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgQXNzZXJ0Tm90TnVsbChhc3QuY29uZGl0aW9uLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSwgYXN0LnNvdXJjZVNwYW4pLCBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0Q2FzdEV4cHIoYXN0OiBDYXN0RXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgQ2FzdEV4cHIoYXN0LnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSwgYXN0LnR5cGUsIGFzdC5zb3VyY2VTcGFuKSwgY29udGV4dCk7XG4gIH1cblxuICB2aXNpdEZ1bmN0aW9uRXhwcihhc3Q6IEZ1bmN0aW9uRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgRnVuY3Rpb25FeHByKFxuICAgICAgICAgICAgYXN0LnBhcmFtcywgdGhpcy52aXNpdEFsbFN0YXRlbWVudHMoYXN0LnN0YXRlbWVudHMsIGNvbnRleHQpLCBhc3QudHlwZSwgYXN0LnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0QmluYXJ5T3BlcmF0b3JFeHByKGFzdDogQmluYXJ5T3BlcmF0b3JFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoXG4gICAgICAgIG5ldyBCaW5hcnlPcGVyYXRvckV4cHIoXG4gICAgICAgICAgICBhc3Qub3BlcmF0b3IsIGFzdC5saHMudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLFxuICAgICAgICAgICAgYXN0LnJocy52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksIGFzdC50eXBlLCBhc3Quc291cmNlU3BhbiksXG4gICAgICAgIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRSZWFkUHJvcEV4cHIoYXN0OiBSZWFkUHJvcEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtRXhwcihcbiAgICAgICAgbmV3IFJlYWRQcm9wRXhwcihcbiAgICAgICAgICAgIGFzdC5yZWNlaXZlci52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksIGFzdC5uYW1lLCBhc3QudHlwZSwgYXN0LnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0UmVhZEtleUV4cHIoYXN0OiBSZWFkS2V5RXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgUmVhZEtleUV4cHIoXG4gICAgICAgICAgICBhc3QucmVjZWl2ZXIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLCBhc3QuaW5kZXgudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLFxuICAgICAgICAgICAgYXN0LnR5cGUsIGFzdC5zb3VyY2VTcGFuKSxcbiAgICAgICAgY29udGV4dCk7XG4gIH1cblxuICB2aXNpdExpdGVyYWxBcnJheUV4cHIoYXN0OiBMaXRlcmFsQXJyYXlFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoXG4gICAgICAgIG5ldyBMaXRlcmFsQXJyYXlFeHByKFxuICAgICAgICAgICAgdGhpcy52aXNpdEFsbEV4cHJlc3Npb25zKGFzdC5lbnRyaWVzLCBjb250ZXh0KSwgYXN0LnR5cGUsIGFzdC5zb3VyY2VTcGFuKSxcbiAgICAgICAgY29udGV4dCk7XG4gIH1cblxuICB2aXNpdExpdGVyYWxNYXBFeHByKGFzdDogTGl0ZXJhbE1hcEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgY29uc3QgZW50cmllcyA9IGFzdC5lbnRyaWVzLm1hcChcbiAgICAgICAgKGVudHJ5KTogTGl0ZXJhbE1hcEVudHJ5ID0+IG5ldyBMaXRlcmFsTWFwRW50cnkoXG4gICAgICAgICAgICBlbnRyeS5rZXksIGVudHJ5LnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSwgZW50cnkucXVvdGVkKSk7XG4gICAgY29uc3QgbWFwVHlwZSA9IG5ldyBNYXBUeXBlKGFzdC52YWx1ZVR5cGUsIG51bGwpO1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIobmV3IExpdGVyYWxNYXBFeHByKGVudHJpZXMsIG1hcFR5cGUsIGFzdC5zb3VyY2VTcGFuKSwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRDb21tYUV4cHIoYXN0OiBDb21tYUV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtRXhwcihcbiAgICAgICAgbmV3IENvbW1hRXhwcih0aGlzLnZpc2l0QWxsRXhwcmVzc2lvbnMoYXN0LnBhcnRzLCBjb250ZXh0KSwgYXN0LnNvdXJjZVNwYW4pLCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdEFsbEV4cHJlc3Npb25zKGV4cHJzOiBFeHByZXNzaW9uW10sIGNvbnRleHQ6IGFueSk6IEV4cHJlc3Npb25bXSB7XG4gICAgcmV0dXJuIGV4cHJzLm1hcChleHByID0+IGV4cHIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpKTtcbiAgfVxuXG4gIHZpc2l0RGVjbGFyZVZhclN0bXQoc3RtdDogRGVjbGFyZVZhclN0bXQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgY29uc3QgdmFsdWUgPSBzdG10LnZhbHVlICYmIHN0bXQudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybVN0bXQoXG4gICAgICAgIG5ldyBEZWNsYXJlVmFyU3RtdChzdG10Lm5hbWUsIHZhbHVlLCBzdG10LnR5cGUsIHN0bXQubW9kaWZpZXJzLCBzdG10LnNvdXJjZVNwYW4pLCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdERlY2xhcmVGdW5jdGlvblN0bXQoc3RtdDogRGVjbGFyZUZ1bmN0aW9uU3RtdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1TdG10KFxuICAgICAgICBuZXcgRGVjbGFyZUZ1bmN0aW9uU3RtdChcbiAgICAgICAgICAgIHN0bXQubmFtZSwgc3RtdC5wYXJhbXMsIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXQuc3RhdGVtZW50cywgY29udGV4dCksIHN0bXQudHlwZSxcbiAgICAgICAgICAgIHN0bXQubW9kaWZpZXJzLCBzdG10LnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0RXhwcmVzc2lvblN0bXQoc3RtdDogRXhwcmVzc2lvblN0YXRlbWVudCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1TdG10KFxuICAgICAgICBuZXcgRXhwcmVzc2lvblN0YXRlbWVudChzdG10LmV4cHIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLCBzdG10LnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0UmV0dXJuU3RtdChzdG10OiBSZXR1cm5TdGF0ZW1lbnQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtU3RtdChcbiAgICAgICAgbmV3IFJldHVyblN0YXRlbWVudChzdG10LnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSwgc3RtdC5zb3VyY2VTcGFuKSwgY29udGV4dCk7XG4gIH1cblxuICB2aXNpdERlY2xhcmVDbGFzc1N0bXQoc3RtdDogQ2xhc3NTdG10LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGNvbnN0IHBhcmVudCA9IHN0bXQucGFyZW50ICEudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIGNvbnN0IGdldHRlcnMgPSBzdG10LmdldHRlcnMubWFwKFxuICAgICAgICBnZXR0ZXIgPT4gbmV3IENsYXNzR2V0dGVyKFxuICAgICAgICAgICAgZ2V0dGVyLm5hbWUsIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKGdldHRlci5ib2R5LCBjb250ZXh0KSwgZ2V0dGVyLnR5cGUsXG4gICAgICAgICAgICBnZXR0ZXIubW9kaWZpZXJzKSk7XG4gICAgY29uc3QgY3Rvck1ldGhvZCA9IHN0bXQuY29uc3RydWN0b3JNZXRob2QgJiZcbiAgICAgICAgbmV3IENsYXNzTWV0aG9kKHN0bXQuY29uc3RydWN0b3JNZXRob2QubmFtZSwgc3RtdC5jb25zdHJ1Y3Rvck1ldGhvZC5wYXJhbXMsXG4gICAgICAgICAgICAgICAgICAgICAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LmNvbnN0cnVjdG9yTWV0aG9kLmJvZHksIGNvbnRleHQpLFxuICAgICAgICAgICAgICAgICAgICAgICAgc3RtdC5jb25zdHJ1Y3Rvck1ldGhvZC50eXBlLCBzdG10LmNvbnN0cnVjdG9yTWV0aG9kLm1vZGlmaWVycyk7XG4gICAgY29uc3QgbWV0aG9kcyA9IHN0bXQubWV0aG9kcy5tYXAoXG4gICAgICAgIG1ldGhvZCA9PiBuZXcgQ2xhc3NNZXRob2QoXG4gICAgICAgICAgICBtZXRob2QubmFtZSwgbWV0aG9kLnBhcmFtcywgdGhpcy52aXNpdEFsbFN0YXRlbWVudHMobWV0aG9kLmJvZHksIGNvbnRleHQpLCBtZXRob2QudHlwZSxcbiAgICAgICAgICAgIG1ldGhvZC5tb2RpZmllcnMpKTtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1TdG10KFxuICAgICAgICBuZXcgQ2xhc3NTdG10KFxuICAgICAgICAgICAgc3RtdC5uYW1lLCBwYXJlbnQsIHN0bXQuZmllbGRzLCBnZXR0ZXJzLCBjdG9yTWV0aG9kLCBtZXRob2RzLCBzdG10Lm1vZGlmaWVycyxcbiAgICAgICAgICAgIHN0bXQuc291cmNlU3BhbiksXG4gICAgICAgIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRJZlN0bXQoc3RtdDogSWZTdG10LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybVN0bXQoXG4gICAgICAgIG5ldyBJZlN0bXQoXG4gICAgICAgICAgICBzdG10LmNvbmRpdGlvbi52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksXG4gICAgICAgICAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LnRydWVDYXNlLCBjb250ZXh0KSxcbiAgICAgICAgICAgIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXQuZmFsc2VDYXNlLCBjb250ZXh0KSwgc3RtdC5zb3VyY2VTcGFuKSxcbiAgICAgICAgY29udGV4dCk7XG4gIH1cblxuICB2aXNpdFRyeUNhdGNoU3RtdChzdG10OiBUcnlDYXRjaFN0bXQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtU3RtdChcbiAgICAgICAgbmV3IFRyeUNhdGNoU3RtdChcbiAgICAgICAgICAgIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXQuYm9keVN0bXRzLCBjb250ZXh0KSxcbiAgICAgICAgICAgIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXQuY2F0Y2hTdG10cywgY29udGV4dCksIHN0bXQuc291cmNlU3BhbiksXG4gICAgICAgIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRUaHJvd1N0bXQoc3RtdDogVGhyb3dTdG10LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybVN0bXQoXG4gICAgICAgIG5ldyBUaHJvd1N0bXQoc3RtdC5lcnJvci52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksIHN0bXQuc291cmNlU3BhbiksIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRDb21tZW50U3RtdChzdG10OiBDb21tZW50U3RtdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1TdG10KHN0bXQsIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRKU0RvY0NvbW1lbnRTdG10KHN0bXQ6IEpTRG9jQ29tbWVudFN0bXQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtU3RtdChzdG10LCBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0QWxsU3RhdGVtZW50cyhzdG10czogU3RhdGVtZW50W10sIGNvbnRleHQ6IGFueSk6IFN0YXRlbWVudFtdIHtcbiAgICByZXR1cm4gc3RtdHMubWFwKHN0bXQgPT4gc3RtdC52aXNpdFN0YXRlbWVudCh0aGlzLCBjb250ZXh0KSk7XG4gIH1cbn1cblxuXG5leHBvcnQgY2xhc3MgUmVjdXJzaXZlQXN0VmlzaXRvciBpbXBsZW1lbnRzIFN0YXRlbWVudFZpc2l0b3IsIEV4cHJlc3Npb25WaXNpdG9yIHtcbiAgdmlzaXRUeXBlKGFzdDogVHlwZSwgY29udGV4dDogYW55KTogYW55IHsgcmV0dXJuIGFzdDsgfVxuICB2aXNpdEV4cHJlc3Npb24oYXN0OiBFeHByZXNzaW9uLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGlmIChhc3QudHlwZSkge1xuICAgICAgYXN0LnR5cGUudmlzaXRUeXBlKHRoaXMsIGNvbnRleHQpO1xuICAgIH1cbiAgICByZXR1cm4gYXN0O1xuICB9XG4gIHZpc2l0QnVpbHRpblR5cGUodHlwZTogQnVpbHRpblR5cGUsIGNvbnRleHQ6IGFueSk6IGFueSB7IHJldHVybiB0aGlzLnZpc2l0VHlwZSh0eXBlLCBjb250ZXh0KTsgfVxuICB2aXNpdEV4cHJlc3Npb25UeXBlKHR5cGU6IEV4cHJlc3Npb25UeXBlLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHR5cGUudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIGlmICh0eXBlLnR5cGVQYXJhbXMgIT09IG51bGwpIHtcbiAgICAgIHR5cGUudHlwZVBhcmFtcy5mb3JFYWNoKHBhcmFtID0+IHRoaXMudmlzaXRUeXBlKHBhcmFtLCBjb250ZXh0KSk7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLnZpc2l0VHlwZSh0eXBlLCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdEFycmF5VHlwZSh0eXBlOiBBcnJheVR5cGUsIGNvbnRleHQ6IGFueSk6IGFueSB7IHJldHVybiB0aGlzLnZpc2l0VHlwZSh0eXBlLCBjb250ZXh0KTsgfVxuICB2aXNpdE1hcFR5cGUodHlwZTogTWFwVHlwZSwgY29udGV4dDogYW55KTogYW55IHsgcmV0dXJuIHRoaXMudmlzaXRUeXBlKHR5cGUsIGNvbnRleHQpOyB9XG4gIHZpc2l0V3JhcHBlZE5vZGVFeHByKGFzdDogV3JhcHBlZE5vZGVFeHByPGFueT4sIGNvbnRleHQ6IGFueSk6IGFueSB7IHJldHVybiBhc3Q7IH1cbiAgdmlzaXRUeXBlb2ZFeHByKGFzdDogVHlwZW9mRXhwciwgY29udGV4dDogYW55KTogYW55IHsgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7IH1cbiAgdmlzaXRSZWFkVmFyRXhwcihhc3Q6IFJlYWRWYXJFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0V3JpdGVWYXJFeHByKGFzdDogV3JpdGVWYXJFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRXcml0ZUtleUV4cHIoYXN0OiBXcml0ZUtleUV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgYXN0LnJlY2VpdmVyLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KTtcbiAgICBhc3QuaW5kZXgudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIGFzdC52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRXcml0ZVByb3BFeHByKGFzdDogV3JpdGVQcm9wRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBhc3QucmVjZWl2ZXIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIGFzdC52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRJbnZva2VNZXRob2RFeHByKGFzdDogSW52b2tlTWV0aG9kRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBhc3QucmVjZWl2ZXIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHRoaXMudmlzaXRBbGxFeHByZXNzaW9ucyhhc3QuYXJncywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRJbnZva2VGdW5jdGlvbkV4cHIoYXN0OiBJbnZva2VGdW5jdGlvbkV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgYXN0LmZuLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KTtcbiAgICB0aGlzLnZpc2l0QWxsRXhwcmVzc2lvbnMoYXN0LmFyZ3MsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0SW5zdGFudGlhdGVFeHByKGFzdDogSW5zdGFudGlhdGVFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC5jbGFzc0V4cHIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHRoaXMudmlzaXRBbGxFeHByZXNzaW9ucyhhc3QuYXJncywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRMaXRlcmFsRXhwcihhc3Q6IExpdGVyYWxFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0TG9jYWxpemVkU3RyaW5nKGFzdDogTG9jYWxpemVkU3RyaW5nLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0RXh0ZXJuYWxFeHByKGFzdDogRXh0ZXJuYWxFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGlmIChhc3QudHlwZVBhcmFtcykge1xuICAgICAgYXN0LnR5cGVQYXJhbXMuZm9yRWFjaCh0eXBlID0+IHR5cGUudmlzaXRUeXBlKHRoaXMsIGNvbnRleHQpKTtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRDb25kaXRpb25hbEV4cHIoYXN0OiBDb25kaXRpb25hbEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgYXN0LmNvbmRpdGlvbi52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgYXN0LnRydWVDYXNlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KTtcbiAgICBhc3QuZmFsc2VDYXNlICEudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0Tm90RXhwcihhc3Q6IE5vdEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgYXN0LmNvbmRpdGlvbi52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRBc3NlcnROb3ROdWxsRXhwcihhc3Q6IEFzc2VydE5vdE51bGwsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgYXN0LmNvbmRpdGlvbi52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRDYXN0RXhwcihhc3Q6IENhc3RFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRGdW5jdGlvbkV4cHIoYXN0OiBGdW5jdGlvbkV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgdGhpcy52aXNpdEFsbFN0YXRlbWVudHMoYXN0LnN0YXRlbWVudHMsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0QmluYXJ5T3BlcmF0b3JFeHByKGFzdDogQmluYXJ5T3BlcmF0b3JFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC5saHMudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIGFzdC5yaHMudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0UmVhZFByb3BFeHByKGFzdDogUmVhZFByb3BFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC5yZWNlaXZlci52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRSZWFkS2V5RXhwcihhc3Q6IFJlYWRLZXlFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC5yZWNlaXZlci52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgYXN0LmluZGV4LnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KTtcbiAgICByZXR1cm4gdGhpcy52aXNpdEV4cHJlc3Npb24oYXN0LCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdExpdGVyYWxBcnJheUV4cHIoYXN0OiBMaXRlcmFsQXJyYXlFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHRoaXMudmlzaXRBbGxFeHByZXNzaW9ucyhhc3QuZW50cmllcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRMaXRlcmFsTWFwRXhwcihhc3Q6IExpdGVyYWxNYXBFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC5lbnRyaWVzLmZvckVhY2goKGVudHJ5KSA9PiBlbnRyeS52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCkpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0Q29tbWFFeHByKGFzdDogQ29tbWFFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHRoaXMudmlzaXRBbGxFeHByZXNzaW9ucyhhc3QucGFydHMsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0QWxsRXhwcmVzc2lvbnMoZXhwcnM6IEV4cHJlc3Npb25bXSwgY29udGV4dDogYW55KTogdm9pZCB7XG4gICAgZXhwcnMuZm9yRWFjaChleHByID0+IGV4cHIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpKTtcbiAgfVxuXG4gIHZpc2l0RGVjbGFyZVZhclN0bXQoc3RtdDogRGVjbGFyZVZhclN0bXQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgaWYgKHN0bXQudmFsdWUpIHtcbiAgICAgIHN0bXQudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIH1cbiAgICBpZiAoc3RtdC50eXBlKSB7XG4gICAgICBzdG10LnR5cGUudmlzaXRUeXBlKHRoaXMsIGNvbnRleHQpO1xuICAgIH1cbiAgICByZXR1cm4gc3RtdDtcbiAgfVxuICB2aXNpdERlY2xhcmVGdW5jdGlvblN0bXQoc3RtdDogRGVjbGFyZUZ1bmN0aW9uU3RtdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LnN0YXRlbWVudHMsIGNvbnRleHQpO1xuICAgIGlmIChzdG10LnR5cGUpIHtcbiAgICAgIHN0bXQudHlwZS52aXNpdFR5cGUodGhpcywgY29udGV4dCk7XG4gICAgfVxuICAgIHJldHVybiBzdG10O1xuICB9XG4gIHZpc2l0RXhwcmVzc2lvblN0bXQoc3RtdDogRXhwcmVzc2lvblN0YXRlbWVudCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBzdG10LmV4cHIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHJldHVybiBzdG10O1xuICB9XG4gIHZpc2l0UmV0dXJuU3RtdChzdG10OiBSZXR1cm5TdGF0ZW1lbnQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgc3RtdC52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHN0bXQ7XG4gIH1cbiAgdmlzaXREZWNsYXJlQ2xhc3NTdG10KHN0bXQ6IENsYXNzU3RtdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBzdG10LnBhcmVudCAhLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KTtcbiAgICBzdG10LmdldHRlcnMuZm9yRWFjaChnZXR0ZXIgPT4gdGhpcy52aXNpdEFsbFN0YXRlbWVudHMoZ2V0dGVyLmJvZHksIGNvbnRleHQpKTtcbiAgICBpZiAoc3RtdC5jb25zdHJ1Y3Rvck1ldGhvZCkge1xuICAgICAgdGhpcy52aXNpdEFsbFN0YXRlbWVudHMoc3RtdC5jb25zdHJ1Y3Rvck1ldGhvZC5ib2R5LCBjb250ZXh0KTtcbiAgICB9XG4gICAgc3RtdC5tZXRob2RzLmZvckVhY2gobWV0aG9kID0+IHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKG1ldGhvZC5ib2R5LCBjb250ZXh0KSk7XG4gICAgcmV0dXJuIHN0bXQ7XG4gIH1cbiAgdmlzaXRJZlN0bXQoc3RtdDogSWZTdG10LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHN0bXQuY29uZGl0aW9uLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KTtcbiAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LnRydWVDYXNlLCBjb250ZXh0KTtcbiAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LmZhbHNlQ2FzZSwgY29udGV4dCk7XG4gICAgcmV0dXJuIHN0bXQ7XG4gIH1cbiAgdmlzaXRUcnlDYXRjaFN0bXQoc3RtdDogVHJ5Q2F0Y2hTdG10LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXQuYm9keVN0bXRzLCBjb250ZXh0KTtcbiAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LmNhdGNoU3RtdHMsIGNvbnRleHQpO1xuICAgIHJldHVybiBzdG10O1xuICB9XG4gIHZpc2l0VGhyb3dTdG10KHN0bXQ6IFRocm93U3RtdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBzdG10LmVycm9yLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KTtcbiAgICByZXR1cm4gc3RtdDtcbiAgfVxuICB2aXNpdENvbW1lbnRTdG10KHN0bXQ6IENvbW1lbnRTdG10LCBjb250ZXh0OiBhbnkpOiBhbnkgeyByZXR1cm4gc3RtdDsgfVxuICB2aXNpdEpTRG9jQ29tbWVudFN0bXQoc3RtdDogSlNEb2NDb21tZW50U3RtdCwgY29udGV4dDogYW55KTogYW55IHsgcmV0dXJuIHN0bXQ7IH1cbiAgdmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXRzOiBTdGF0ZW1lbnRbXSwgY29udGV4dDogYW55KTogdm9pZCB7XG4gICAgc3RtdHMuZm9yRWFjaChzdG10ID0+IHN0bXQudmlzaXRTdGF0ZW1lbnQodGhpcywgY29udGV4dCkpO1xuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBmaW5kUmVhZFZhck5hbWVzKHN0bXRzOiBTdGF0ZW1lbnRbXSk6IFNldDxzdHJpbmc+IHtcbiAgY29uc3QgdmlzaXRvciA9IG5ldyBfUmVhZFZhclZpc2l0b3IoKTtcbiAgdmlzaXRvci52aXNpdEFsbFN0YXRlbWVudHMoc3RtdHMsIG51bGwpO1xuICByZXR1cm4gdmlzaXRvci52YXJOYW1lcztcbn1cblxuY2xhc3MgX1JlYWRWYXJWaXNpdG9yIGV4dGVuZHMgUmVjdXJzaXZlQXN0VmlzaXRvciB7XG4gIHZhck5hbWVzID0gbmV3IFNldDxzdHJpbmc+KCk7XG4gIHZpc2l0RGVjbGFyZUZ1bmN0aW9uU3RtdChzdG10OiBEZWNsYXJlRnVuY3Rpb25TdG10LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIC8vIERvbid0IGRlc2NlbmQgaW50byBuZXN0ZWQgZnVuY3Rpb25zXG4gICAgcmV0dXJuIHN0bXQ7XG4gIH1cbiAgdmlzaXREZWNsYXJlQ2xhc3NTdG10KHN0bXQ6IENsYXNzU3RtdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICAvLyBEb24ndCBkZXNjZW5kIGludG8gbmVzdGVkIGNsYXNzZXNcbiAgICByZXR1cm4gc3RtdDtcbiAgfVxuICB2aXNpdFJlYWRWYXJFeHByKGFzdDogUmVhZFZhckV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgaWYgKGFzdC5uYW1lKSB7XG4gICAgICB0aGlzLnZhck5hbWVzLmFkZChhc3QubmFtZSk7XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBjb2xsZWN0RXh0ZXJuYWxSZWZlcmVuY2VzKHN0bXRzOiBTdGF0ZW1lbnRbXSk6IEV4dGVybmFsUmVmZXJlbmNlW10ge1xuICBjb25zdCB2aXNpdG9yID0gbmV3IF9GaW5kRXh0ZXJuYWxSZWZlcmVuY2VzVmlzaXRvcigpO1xuICB2aXNpdG9yLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10cywgbnVsbCk7XG4gIHJldHVybiB2aXNpdG9yLmV4dGVybmFsUmVmZXJlbmNlcztcbn1cblxuY2xhc3MgX0ZpbmRFeHRlcm5hbFJlZmVyZW5jZXNWaXNpdG9yIGV4dGVuZHMgUmVjdXJzaXZlQXN0VmlzaXRvciB7XG4gIGV4dGVybmFsUmVmZXJlbmNlczogRXh0ZXJuYWxSZWZlcmVuY2VbXSA9IFtdO1xuICB2aXNpdEV4dGVybmFsRXhwcihlOiBFeHRlcm5hbEV4cHIsIGNvbnRleHQ6IGFueSkge1xuICAgIHRoaXMuZXh0ZXJuYWxSZWZlcmVuY2VzLnB1c2goZS52YWx1ZSk7XG4gICAgcmV0dXJuIHN1cGVyLnZpc2l0RXh0ZXJuYWxFeHByKGUsIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBhcHBseVNvdXJjZVNwYW5Ub1N0YXRlbWVudElmTmVlZGVkKFxuICAgIHN0bXQ6IFN0YXRlbWVudCwgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuIHwgbnVsbCk6IFN0YXRlbWVudCB7XG4gIGlmICghc291cmNlU3Bhbikge1xuICAgIHJldHVybiBzdG10O1xuICB9XG4gIGNvbnN0IHRyYW5zZm9ybWVyID0gbmV3IF9BcHBseVNvdXJjZVNwYW5UcmFuc2Zvcm1lcihzb3VyY2VTcGFuKTtcbiAgcmV0dXJuIHN0bXQudmlzaXRTdGF0ZW1lbnQodHJhbnNmb3JtZXIsIG51bGwpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gYXBwbHlTb3VyY2VTcGFuVG9FeHByZXNzaW9uSWZOZWVkZWQoXG4gICAgZXhwcjogRXhwcmVzc2lvbiwgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuIHwgbnVsbCk6IEV4cHJlc3Npb24ge1xuICBpZiAoIXNvdXJjZVNwYW4pIHtcbiAgICByZXR1cm4gZXhwcjtcbiAgfVxuICBjb25zdCB0cmFuc2Zvcm1lciA9IG5ldyBfQXBwbHlTb3VyY2VTcGFuVHJhbnNmb3JtZXIoc291cmNlU3Bhbik7XG4gIHJldHVybiBleHByLnZpc2l0RXhwcmVzc2lvbih0cmFuc2Zvcm1lciwgbnVsbCk7XG59XG5cbmNsYXNzIF9BcHBseVNvdXJjZVNwYW5UcmFuc2Zvcm1lciBleHRlbmRzIEFzdFRyYW5zZm9ybWVyIHtcbiAgY29uc3RydWN0b3IocHJpdmF0ZSBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4pIHsgc3VwZXIoKTsgfVxuICBwcml2YXRlIF9jbG9uZShvYmo6IGFueSk6IGFueSB7XG4gICAgY29uc3QgY2xvbmUgPSBPYmplY3QuY3JlYXRlKG9iai5jb25zdHJ1Y3Rvci5wcm90b3R5cGUpO1xuICAgIGZvciAobGV0IHByb3Agb2YgT2JqZWN0LmtleXMob2JqKSkge1xuICAgICAgY2xvbmVbcHJvcF0gPSBvYmpbcHJvcF07XG4gICAgfVxuICAgIHJldHVybiBjbG9uZTtcbiAgfVxuXG4gIHRyYW5zZm9ybUV4cHIoZXhwcjogRXhwcmVzc2lvbiwgY29udGV4dDogYW55KTogRXhwcmVzc2lvbiB7XG4gICAgaWYgKCFleHByLnNvdXJjZVNwYW4pIHtcbiAgICAgIGV4cHIgPSB0aGlzLl9jbG9uZShleHByKTtcbiAgICAgIGV4cHIuc291cmNlU3BhbiA9IHRoaXMuc291cmNlU3BhbjtcbiAgICB9XG4gICAgcmV0dXJuIGV4cHI7XG4gIH1cblxuICB0cmFuc2Zvcm1TdG10KHN0bXQ6IFN0YXRlbWVudCwgY29udGV4dDogYW55KTogU3RhdGVtZW50IHtcbiAgICBpZiAoIXN0bXQuc291cmNlU3Bhbikge1xuICAgICAgc3RtdCA9IHRoaXMuX2Nsb25lKHN0bXQpO1xuICAgICAgc3RtdC5zb3VyY2VTcGFuID0gdGhpcy5zb3VyY2VTcGFuO1xuICAgIH1cbiAgICByZXR1cm4gc3RtdDtcbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gdmFyaWFibGUoXG4gICAgbmFtZTogc3RyaW5nLCB0eXBlPzogVHlwZSB8IG51bGwsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW4gfCBudWxsKTogUmVhZFZhckV4cHIge1xuICByZXR1cm4gbmV3IFJlYWRWYXJFeHByKG5hbWUsIHR5cGUsIHNvdXJjZVNwYW4pO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaW1wb3J0RXhwcihcbiAgICBpZDogRXh0ZXJuYWxSZWZlcmVuY2UsIHR5cGVQYXJhbXM6IFR5cGVbXSB8IG51bGwgPSBudWxsLFxuICAgIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW4gfCBudWxsKTogRXh0ZXJuYWxFeHByIHtcbiAgcmV0dXJuIG5ldyBFeHRlcm5hbEV4cHIoaWQsIG51bGwsIHR5cGVQYXJhbXMsIHNvdXJjZVNwYW4pO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaW1wb3J0VHlwZShcbiAgICBpZDogRXh0ZXJuYWxSZWZlcmVuY2UsIHR5cGVQYXJhbXM6IFR5cGVbXSB8IG51bGwgPSBudWxsLFxuICAgIHR5cGVNb2RpZmllcnM6IFR5cGVNb2RpZmllcltdIHwgbnVsbCA9IG51bGwpOiBFeHByZXNzaW9uVHlwZXxudWxsIHtcbiAgcmV0dXJuIGlkICE9IG51bGwgPyBleHByZXNzaW9uVHlwZShpbXBvcnRFeHByKGlkLCB0eXBlUGFyYW1zLCBudWxsKSwgdHlwZU1vZGlmaWVycykgOiBudWxsO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZXhwcmVzc2lvblR5cGUoXG4gICAgZXhwcjogRXhwcmVzc2lvbiwgdHlwZU1vZGlmaWVyczogVHlwZU1vZGlmaWVyW10gfCBudWxsID0gbnVsbCxcbiAgICB0eXBlUGFyYW1zOiBUeXBlW10gfCBudWxsID0gbnVsbCk6IEV4cHJlc3Npb25UeXBlIHtcbiAgcmV0dXJuIG5ldyBFeHByZXNzaW9uVHlwZShleHByLCB0eXBlTW9kaWZpZXJzLCB0eXBlUGFyYW1zKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHR5cGVvZkV4cHIoZXhwcjogRXhwcmVzc2lvbikge1xuICByZXR1cm4gbmV3IFR5cGVvZkV4cHIoZXhwcik7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBsaXRlcmFsQXJyKFxuICAgIHZhbHVlczogRXhwcmVzc2lvbltdLCB0eXBlPzogVHlwZSB8IG51bGwsXG4gICAgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbiB8IG51bGwpOiBMaXRlcmFsQXJyYXlFeHByIHtcbiAgcmV0dXJuIG5ldyBMaXRlcmFsQXJyYXlFeHByKHZhbHVlcywgdHlwZSwgc291cmNlU3Bhbik7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBsaXRlcmFsTWFwKFxuICAgIHZhbHVlczoge2tleTogc3RyaW5nLCBxdW90ZWQ6IGJvb2xlYW4sIHZhbHVlOiBFeHByZXNzaW9ufVtdLFxuICAgIHR5cGU6IE1hcFR5cGUgfCBudWxsID0gbnVsbCk6IExpdGVyYWxNYXBFeHByIHtcbiAgcmV0dXJuIG5ldyBMaXRlcmFsTWFwRXhwcihcbiAgICAgIHZhbHVlcy5tYXAoZSA9PiBuZXcgTGl0ZXJhbE1hcEVudHJ5KGUua2V5LCBlLnZhbHVlLCBlLnF1b3RlZCkpLCB0eXBlLCBudWxsKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIG5vdChleHByOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFuIHwgbnVsbCk6IE5vdEV4cHIge1xuICByZXR1cm4gbmV3IE5vdEV4cHIoZXhwciwgc291cmNlU3Bhbik7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBhc3NlcnROb3ROdWxsKFxuICAgIGV4cHI6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW4gfCBudWxsKTogQXNzZXJ0Tm90TnVsbCB7XG4gIHJldHVybiBuZXcgQXNzZXJ0Tm90TnVsbChleHByLCBzb3VyY2VTcGFuKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGZuKFxuICAgIHBhcmFtczogRm5QYXJhbVtdLCBib2R5OiBTdGF0ZW1lbnRbXSwgdHlwZT86IFR5cGUgfCBudWxsLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFuIHwgbnVsbCxcbiAgICBuYW1lPzogc3RyaW5nIHwgbnVsbCk6IEZ1bmN0aW9uRXhwciB7XG4gIHJldHVybiBuZXcgRnVuY3Rpb25FeHByKHBhcmFtcywgYm9keSwgdHlwZSwgc291cmNlU3BhbiwgbmFtZSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpZlN0bXQoY29uZGl0aW9uOiBFeHByZXNzaW9uLCB0aGVuQ2xhdXNlOiBTdGF0ZW1lbnRbXSwgZWxzZUNsYXVzZT86IFN0YXRlbWVudFtdKSB7XG4gIHJldHVybiBuZXcgSWZTdG10KGNvbmRpdGlvbiwgdGhlbkNsYXVzZSwgZWxzZUNsYXVzZSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBsaXRlcmFsKFxuICAgIHZhbHVlOiBhbnksIHR5cGU/OiBUeXBlIHwgbnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbiB8IG51bGwpOiBMaXRlcmFsRXhwciB7XG4gIHJldHVybiBuZXcgTGl0ZXJhbEV4cHIodmFsdWUsIHR5cGUsIHNvdXJjZVNwYW4pO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gbG9jYWxpemVkU3RyaW5nKFxuICAgIG1ldGFCbG9jazogSTE4bk1ldGEsIG1lc3NhZ2VQYXJ0czogc3RyaW5nW10sIHBsYWNlaG9sZGVyTmFtZXM6IHN0cmluZ1tdLFxuICAgIGV4cHJlc3Npb25zOiBFeHByZXNzaW9uW10sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW4gfCBudWxsKTogTG9jYWxpemVkU3RyaW5nIHtcbiAgcmV0dXJuIG5ldyBMb2NhbGl6ZWRTdHJpbmcobWV0YUJsb2NrLCBtZXNzYWdlUGFydHMsIHBsYWNlaG9sZGVyTmFtZXMsIGV4cHJlc3Npb25zLCBzb3VyY2VTcGFuKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGlzTnVsbChleHA6IEV4cHJlc3Npb24pOiBib29sZWFuIHtcbiAgcmV0dXJuIGV4cCBpbnN0YW5jZW9mIExpdGVyYWxFeHByICYmIGV4cC52YWx1ZSA9PT0gbnVsbDtcbn1cblxuLy8gVGhlIGxpc3Qgb2YgSlNEb2MgdGFncyB0aGF0IHdlIGN1cnJlbnRseSBzdXBwb3J0LiBFeHRlbmQgaXQgaWYgbmVlZGVkLlxuZXhwb3J0IGNvbnN0IGVudW0gSlNEb2NUYWdOYW1lIHtcbiAgRGVzYyA9ICdkZXNjJyxcbiAgSWQgPSAnaWQnLFxuICBNZWFuaW5nID0gJ21lYW5pbmcnLFxufVxuXG4vKlxuICogVHlwZVNjcmlwdCBoYXMgYW4gQVBJIGZvciBKU0RvYyBhbHJlYWR5LCBidXQgaXQncyBub3QgZXhwb3NlZC5cbiAqIGh0dHBzOi8vZ2l0aHViLmNvbS9NaWNyb3NvZnQvVHlwZVNjcmlwdC9pc3N1ZXMvNzM5M1xuICogRm9yIG5vdyB3ZSBjcmVhdGUgdHlwZXMgdGhhdCBhcmUgc2ltaWxhciB0byB0aGVpcnMgc28gdGhhdCBtaWdyYXRpbmdcbiAqIHRvIHRoZWlyIEFQSSB3aWxsIGJlIGVhc2llci4gU2VlIGUuZy4gYHRzLkpTRG9jVGFnYCBhbmQgYHRzLkpTRG9jQ29tbWVudGAuXG4gKi9cbmV4cG9ydCB0eXBlIEpTRG9jVGFnID0ge1xuICAvLyBgdGFnTmFtZWAgaXMgZS5nLiBcInBhcmFtXCIgaW4gYW4gYEBwYXJhbWAgZGVjbGFyYXRpb25cbiAgdGFnTmFtZTogSlNEb2NUYWdOYW1lIHwgc3RyaW5nLFxuICAvLyBBbnkgcmVtYWluaW5nIHRleHQgb24gdGhlIHRhZywgZS5nLiB0aGUgZGVzY3JpcHRpb25cbiAgdGV4dD86IHN0cmluZyxcbn0gfCB7XG4gIC8vIG5vIGB0YWdOYW1lYCBmb3IgcGxhaW4gdGV4dCBkb2N1bWVudGF0aW9uIHRoYXQgb2NjdXJzIGJlZm9yZSBhbnkgYEBwYXJhbWAgbGluZXNcbiAgdGFnTmFtZT86IHVuZGVmaW5lZCxcbiAgdGV4dDogc3RyaW5nLFxufTtcblxuLypcbiAqIFNlcmlhbGl6ZXMgYSBgVGFnYCBpbnRvIGEgc3RyaW5nLlxuICogUmV0dXJucyBhIHN0cmluZyBsaWtlIFwiIEBmb28ge2Jhcn0gYmF6XCIgKG5vdGUgdGhlIGxlYWRpbmcgd2hpdGVzcGFjZSBiZWZvcmUgYEBmb29gKS5cbiAqL1xuZnVuY3Rpb24gdGFnVG9TdHJpbmcodGFnOiBKU0RvY1RhZyk6IHN0cmluZyB7XG4gIGxldCBvdXQgPSAnJztcbiAgaWYgKHRhZy50YWdOYW1lKSB7XG4gICAgb3V0ICs9IGAgQCR7dGFnLnRhZ05hbWV9YDtcbiAgfVxuICBpZiAodGFnLnRleHQpIHtcbiAgICBpZiAodGFnLnRleHQubWF0Y2goL1xcL1xcKnxcXCpcXC8vKSkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKCdKU0RvYyB0ZXh0IGNhbm5vdCBjb250YWluIFwiLypcIiBhbmQgXCIqL1wiJyk7XG4gICAgfVxuICAgIG91dCArPSAnICcgKyB0YWcudGV4dC5yZXBsYWNlKC9AL2csICdcXFxcQCcpO1xuICB9XG4gIHJldHVybiBvdXQ7XG59XG5cbmZ1bmN0aW9uIHNlcmlhbGl6ZVRhZ3ModGFnczogSlNEb2NUYWdbXSk6IHN0cmluZyB7XG4gIGlmICh0YWdzLmxlbmd0aCA9PT0gMCkgcmV0dXJuICcnO1xuXG4gIGxldCBvdXQgPSAnKlxcbic7XG4gIGZvciAoY29uc3QgdGFnIG9mIHRhZ3MpIHtcbiAgICBvdXQgKz0gJyAqJztcbiAgICAvLyBJZiB0aGUgdGFnVG9TdHJpbmcgaXMgbXVsdGktbGluZSwgaW5zZXJ0IFwiICogXCIgcHJlZml4ZXMgb24gc3Vic2VxdWVudCBsaW5lcy5cbiAgICBvdXQgKz0gdGFnVG9TdHJpbmcodGFnKS5yZXBsYWNlKC9cXG4vZywgJ1xcbiAqICcpO1xuICAgIG91dCArPSAnXFxuJztcbiAgfVxuICBvdXQgKz0gJyAnO1xuICByZXR1cm4gb3V0O1xufVxuIl19