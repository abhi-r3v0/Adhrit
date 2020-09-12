/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
//// Types
export var TypeModifier;
(function (TypeModifier) {
    TypeModifier[TypeModifier["Const"] = 0] = "Const";
})(TypeModifier || (TypeModifier = {}));
export class Type {
    constructor(modifiers = null) {
        this.modifiers = modifiers;
        if (!modifiers) {
            this.modifiers = [];
        }
    }
    hasModifier(modifier) {
        return this.modifiers.indexOf(modifier) !== -1;
    }
}
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
export class BuiltinType extends Type {
    constructor(name, modifiers = null) {
        super(modifiers);
        this.name = name;
    }
    visitType(visitor, context) {
        return visitor.visitBuiltinType(this, context);
    }
}
export class ExpressionType extends Type {
    constructor(value, modifiers = null, typeParams = null) {
        super(modifiers);
        this.value = value;
        this.typeParams = typeParams;
    }
    visitType(visitor, context) {
        return visitor.visitExpressionType(this, context);
    }
}
export class ArrayType extends Type {
    constructor(of, modifiers = null) {
        super(modifiers);
        this.of = of;
    }
    visitType(visitor, context) {
        return visitor.visitArrayType(this, context);
    }
}
export class MapType extends Type {
    constructor(valueType, modifiers = null) {
        super(modifiers);
        this.valueType = valueType || null;
    }
    visitType(visitor, context) {
        return visitor.visitMapType(this, context);
    }
}
export const DYNAMIC_TYPE = new BuiltinType(BuiltinTypeName.Dynamic);
export const INFERRED_TYPE = new BuiltinType(BuiltinTypeName.Inferred);
export const BOOL_TYPE = new BuiltinType(BuiltinTypeName.Bool);
export const INT_TYPE = new BuiltinType(BuiltinTypeName.Int);
export const NUMBER_TYPE = new BuiltinType(BuiltinTypeName.Number);
export const STRING_TYPE = new BuiltinType(BuiltinTypeName.String);
export const FUNCTION_TYPE = new BuiltinType(BuiltinTypeName.Function);
export const NONE_TYPE = new BuiltinType(BuiltinTypeName.None);
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
    const len = base.length;
    if (len !== other.length) {
        return false;
    }
    for (let i = 0; i < len; i++) {
        if (!base[i].isEquivalent(other[i])) {
            return false;
        }
    }
    return true;
}
export class Expression {
    constructor(type, sourceSpan) {
        this.type = type || null;
        this.sourceSpan = sourceSpan || null;
    }
    prop(name, sourceSpan) {
        return new ReadPropExpr(this, name, null, sourceSpan);
    }
    key(index, type, sourceSpan) {
        return new ReadKeyExpr(this, index, type, sourceSpan);
    }
    callMethod(name, params, sourceSpan) {
        return new InvokeMethodExpr(this, name, params, null, sourceSpan);
    }
    callFn(params, sourceSpan, pure) {
        return new InvokeFunctionExpr(this, params, null, sourceSpan, pure);
    }
    instantiate(params, type, sourceSpan) {
        return new InstantiateExpr(this, params, type, sourceSpan);
    }
    conditional(trueCase, falseCase = null, sourceSpan) {
        return new ConditionalExpr(this, trueCase, falseCase, null, sourceSpan);
    }
    equals(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Equals, this, rhs, null, sourceSpan);
    }
    notEquals(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.NotEquals, this, rhs, null, sourceSpan);
    }
    identical(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Identical, this, rhs, null, sourceSpan);
    }
    notIdentical(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.NotIdentical, this, rhs, null, sourceSpan);
    }
    minus(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Minus, this, rhs, null, sourceSpan);
    }
    plus(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Plus, this, rhs, null, sourceSpan);
    }
    divide(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Divide, this, rhs, null, sourceSpan);
    }
    multiply(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Multiply, this, rhs, null, sourceSpan);
    }
    modulo(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Modulo, this, rhs, null, sourceSpan);
    }
    and(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.And, this, rhs, null, sourceSpan);
    }
    bitwiseAnd(rhs, sourceSpan, parens = true) {
        return new BinaryOperatorExpr(BinaryOperator.BitwiseAnd, this, rhs, null, sourceSpan, parens);
    }
    or(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Or, this, rhs, null, sourceSpan);
    }
    lower(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Lower, this, rhs, null, sourceSpan);
    }
    lowerEquals(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.LowerEquals, this, rhs, null, sourceSpan);
    }
    bigger(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.Bigger, this, rhs, null, sourceSpan);
    }
    biggerEquals(rhs, sourceSpan) {
        return new BinaryOperatorExpr(BinaryOperator.BiggerEquals, this, rhs, null, sourceSpan);
    }
    isBlank(sourceSpan) {
        // Note: We use equals by purpose here to compare to null and undefined in JS.
        // We use the typed null to allow strictNullChecks to narrow types.
        return this.equals(TYPED_NULL_EXPR, sourceSpan);
    }
    cast(type, sourceSpan) {
        return new CastExpr(this, type, sourceSpan);
    }
    toStmt() {
        return new ExpressionStatement(this, null);
    }
}
export var BuiltinVar;
(function (BuiltinVar) {
    BuiltinVar[BuiltinVar["This"] = 0] = "This";
    BuiltinVar[BuiltinVar["Super"] = 1] = "Super";
    BuiltinVar[BuiltinVar["CatchError"] = 2] = "CatchError";
    BuiltinVar[BuiltinVar["CatchStack"] = 3] = "CatchStack";
})(BuiltinVar || (BuiltinVar = {}));
export class ReadVarExpr extends Expression {
    constructor(name, type, sourceSpan) {
        super(type, sourceSpan);
        if (typeof name === 'string') {
            this.name = name;
            this.builtin = null;
        }
        else {
            this.name = null;
            this.builtin = name;
        }
    }
    isEquivalent(e) {
        return e instanceof ReadVarExpr && this.name === e.name && this.builtin === e.builtin;
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitReadVarExpr(this, context);
    }
    set(value) {
        if (!this.name) {
            throw new Error(`Built in variable ${this.builtin} can not be assigned to.`);
        }
        return new WriteVarExpr(this.name, value, null, this.sourceSpan);
    }
}
export class TypeofExpr extends Expression {
    constructor(expr, type, sourceSpan) {
        super(type, sourceSpan);
        this.expr = expr;
    }
    visitExpression(visitor, context) {
        return visitor.visitTypeofExpr(this, context);
    }
    isEquivalent(e) {
        return e instanceof TypeofExpr && e.expr.isEquivalent(this.expr);
    }
    isConstant() {
        return this.expr.isConstant();
    }
}
export class WrappedNodeExpr extends Expression {
    constructor(node, type, sourceSpan) {
        super(type, sourceSpan);
        this.node = node;
    }
    isEquivalent(e) {
        return e instanceof WrappedNodeExpr && this.node === e.node;
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitWrappedNodeExpr(this, context);
    }
}
export class WriteVarExpr extends Expression {
    constructor(name, value, type, sourceSpan) {
        super(type || value.type, sourceSpan);
        this.name = name;
        this.value = value;
    }
    isEquivalent(e) {
        return e instanceof WriteVarExpr && this.name === e.name && this.value.isEquivalent(e.value);
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitWriteVarExpr(this, context);
    }
    toDeclStmt(type, modifiers) {
        return new DeclareVarStmt(this.name, this.value, type, modifiers, this.sourceSpan);
    }
    toConstDecl() {
        return this.toDeclStmt(INFERRED_TYPE, [StmtModifier.Final]);
    }
}
export class WriteKeyExpr extends Expression {
    constructor(receiver, index, value, type, sourceSpan) {
        super(type || value.type, sourceSpan);
        this.receiver = receiver;
        this.index = index;
        this.value = value;
    }
    isEquivalent(e) {
        return e instanceof WriteKeyExpr && this.receiver.isEquivalent(e.receiver) &&
            this.index.isEquivalent(e.index) && this.value.isEquivalent(e.value);
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitWriteKeyExpr(this, context);
    }
}
export class WritePropExpr extends Expression {
    constructor(receiver, name, value, type, sourceSpan) {
        super(type || value.type, sourceSpan);
        this.receiver = receiver;
        this.name = name;
        this.value = value;
    }
    isEquivalent(e) {
        return e instanceof WritePropExpr && this.receiver.isEquivalent(e.receiver) &&
            this.name === e.name && this.value.isEquivalent(e.value);
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitWritePropExpr(this, context);
    }
}
export var BuiltinMethod;
(function (BuiltinMethod) {
    BuiltinMethod[BuiltinMethod["ConcatArray"] = 0] = "ConcatArray";
    BuiltinMethod[BuiltinMethod["SubscribeObservable"] = 1] = "SubscribeObservable";
    BuiltinMethod[BuiltinMethod["Bind"] = 2] = "Bind";
})(BuiltinMethod || (BuiltinMethod = {}));
export class InvokeMethodExpr extends Expression {
    constructor(receiver, method, args, type, sourceSpan) {
        super(type, sourceSpan);
        this.receiver = receiver;
        this.args = args;
        if (typeof method === 'string') {
            this.name = method;
            this.builtin = null;
        }
        else {
            this.name = null;
            this.builtin = method;
        }
    }
    isEquivalent(e) {
        return e instanceof InvokeMethodExpr && this.receiver.isEquivalent(e.receiver) &&
            this.name === e.name && this.builtin === e.builtin && areAllEquivalent(this.args, e.args);
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitInvokeMethodExpr(this, context);
    }
}
export class InvokeFunctionExpr extends Expression {
    constructor(fn, args, type, sourceSpan, pure = false) {
        super(type, sourceSpan);
        this.fn = fn;
        this.args = args;
        this.pure = pure;
    }
    isEquivalent(e) {
        return e instanceof InvokeFunctionExpr && this.fn.isEquivalent(e.fn) &&
            areAllEquivalent(this.args, e.args) && this.pure === e.pure;
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitInvokeFunctionExpr(this, context);
    }
}
export class InstantiateExpr extends Expression {
    constructor(classExpr, args, type, sourceSpan) {
        super(type, sourceSpan);
        this.classExpr = classExpr;
        this.args = args;
    }
    isEquivalent(e) {
        return e instanceof InstantiateExpr && this.classExpr.isEquivalent(e.classExpr) &&
            areAllEquivalent(this.args, e.args);
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitInstantiateExpr(this, context);
    }
}
export class LiteralExpr extends Expression {
    constructor(value, type, sourceSpan) {
        super(type, sourceSpan);
        this.value = value;
    }
    isEquivalent(e) {
        return e instanceof LiteralExpr && this.value === e.value;
    }
    isConstant() {
        return true;
    }
    visitExpression(visitor, context) {
        return visitor.visitLiteralExpr(this, context);
    }
}
export class LocalizedString extends Expression {
    constructor(metaBlock, messageParts, placeHolderNames, expressions, sourceSpan) {
        super(STRING_TYPE, sourceSpan);
        this.metaBlock = metaBlock;
        this.messageParts = messageParts;
        this.placeHolderNames = placeHolderNames;
        this.expressions = expressions;
    }
    isEquivalent(e) {
        // return e instanceof LocalizedString && this.message === e.message;
        return false;
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitLocalizedString(this, context);
    }
    /**
     * Serialize the given `meta` and `messagePart` into "cooked" and "raw" strings that can be used
     * in a `$localize` tagged string. The format of the metadata is the same as that parsed by
     * `parseI18nMeta()`.
     *
     * @param meta The metadata to serialize
     * @param messagePart The first part of the tagged string
     */
    serializeI18nHead() {
        const MEANING_SEPARATOR = '|';
        const ID_SEPARATOR = '@@';
        const LEGACY_ID_INDICATOR = '␟';
        let metaBlock = this.metaBlock.description || '';
        if (this.metaBlock.meaning) {
            metaBlock = `${this.metaBlock.meaning}${MEANING_SEPARATOR}${metaBlock}`;
        }
        if (this.metaBlock.customId) {
            metaBlock = `${metaBlock}${ID_SEPARATOR}${this.metaBlock.customId}`;
        }
        if (this.metaBlock.legacyIds) {
            this.metaBlock.legacyIds.forEach(legacyId => {
                metaBlock = `${metaBlock}${LEGACY_ID_INDICATOR}${legacyId}`;
            });
        }
        return createCookedRawString(metaBlock, this.messageParts[0]);
    }
    /**
     * Serialize the given `placeholderName` and `messagePart` into "cooked" and "raw" strings that
     * can be used in a `$localize` tagged string.
     *
     * @param placeholderName The placeholder name to serialize
     * @param messagePart The following message string after this placeholder
     */
    serializeI18nTemplatePart(partIndex) {
        const placeholderName = this.placeHolderNames[partIndex - 1];
        const messagePart = this.messageParts[partIndex];
        return createCookedRawString(placeholderName, messagePart);
    }
}
const escapeSlashes = (str) => str.replace(/\\/g, '\\\\');
const escapeStartingColon = (str) => str.replace(/^:/, '\\:');
const escapeColons = (str) => str.replace(/:/g, '\\:');
const escapeForMessagePart = (str) => str.replace(/`/g, '\\`').replace(/\${/g, '$\\{');
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
            cooked: `:${metaBlock}:${messagePart}`,
            raw: escapeForMessagePart(`:${escapeColons(escapeSlashes(metaBlock))}:${escapeSlashes(messagePart)}`)
        };
    }
}
export class ExternalExpr extends Expression {
    constructor(value, type, typeParams = null, sourceSpan) {
        super(type, sourceSpan);
        this.value = value;
        this.typeParams = typeParams;
    }
    isEquivalent(e) {
        return e instanceof ExternalExpr && this.value.name === e.value.name &&
            this.value.moduleName === e.value.moduleName && this.value.runtime === e.value.runtime;
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitExternalExpr(this, context);
    }
}
export class ExternalReference {
    constructor(moduleName, name, runtime) {
        this.moduleName = moduleName;
        this.name = name;
        this.runtime = runtime;
    }
}
export class ConditionalExpr extends Expression {
    constructor(condition, trueCase, falseCase = null, type, sourceSpan) {
        super(type || trueCase.type, sourceSpan);
        this.condition = condition;
        this.falseCase = falseCase;
        this.trueCase = trueCase;
    }
    isEquivalent(e) {
        return e instanceof ConditionalExpr && this.condition.isEquivalent(e.condition) &&
            this.trueCase.isEquivalent(e.trueCase) && nullSafeIsEquivalent(this.falseCase, e.falseCase);
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitConditionalExpr(this, context);
    }
}
export class NotExpr extends Expression {
    constructor(condition, sourceSpan) {
        super(BOOL_TYPE, sourceSpan);
        this.condition = condition;
    }
    isEquivalent(e) {
        return e instanceof NotExpr && this.condition.isEquivalent(e.condition);
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitNotExpr(this, context);
    }
}
export class AssertNotNull extends Expression {
    constructor(condition, sourceSpan) {
        super(condition.type, sourceSpan);
        this.condition = condition;
    }
    isEquivalent(e) {
        return e instanceof AssertNotNull && this.condition.isEquivalent(e.condition);
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitAssertNotNullExpr(this, context);
    }
}
export class CastExpr extends Expression {
    constructor(value, type, sourceSpan) {
        super(type, sourceSpan);
        this.value = value;
    }
    isEquivalent(e) {
        return e instanceof CastExpr && this.value.isEquivalent(e.value);
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitCastExpr(this, context);
    }
}
export class FnParam {
    constructor(name, type = null) {
        this.name = name;
        this.type = type;
    }
    isEquivalent(param) {
        return this.name === param.name;
    }
}
export class FunctionExpr extends Expression {
    constructor(params, statements, type, sourceSpan, name) {
        super(type, sourceSpan);
        this.params = params;
        this.statements = statements;
        this.name = name;
    }
    isEquivalent(e) {
        return e instanceof FunctionExpr && areAllEquivalent(this.params, e.params) &&
            areAllEquivalent(this.statements, e.statements);
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitFunctionExpr(this, context);
    }
    toDeclStmt(name, modifiers = null) {
        return new DeclareFunctionStmt(name, this.params, this.statements, this.type, modifiers, this.sourceSpan);
    }
}
export class BinaryOperatorExpr extends Expression {
    constructor(operator, lhs, rhs, type, sourceSpan, parens = true) {
        super(type || lhs.type, sourceSpan);
        this.operator = operator;
        this.rhs = rhs;
        this.parens = parens;
        this.lhs = lhs;
    }
    isEquivalent(e) {
        return e instanceof BinaryOperatorExpr && this.operator === e.operator &&
            this.lhs.isEquivalent(e.lhs) && this.rhs.isEquivalent(e.rhs);
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitBinaryOperatorExpr(this, context);
    }
}
export class ReadPropExpr extends Expression {
    constructor(receiver, name, type, sourceSpan) {
        super(type, sourceSpan);
        this.receiver = receiver;
        this.name = name;
    }
    isEquivalent(e) {
        return e instanceof ReadPropExpr && this.receiver.isEquivalent(e.receiver) &&
            this.name === e.name;
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitReadPropExpr(this, context);
    }
    set(value) {
        return new WritePropExpr(this.receiver, this.name, value, null, this.sourceSpan);
    }
}
export class ReadKeyExpr extends Expression {
    constructor(receiver, index, type, sourceSpan) {
        super(type, sourceSpan);
        this.receiver = receiver;
        this.index = index;
    }
    isEquivalent(e) {
        return e instanceof ReadKeyExpr && this.receiver.isEquivalent(e.receiver) &&
            this.index.isEquivalent(e.index);
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitReadKeyExpr(this, context);
    }
    set(value) {
        return new WriteKeyExpr(this.receiver, this.index, value, null, this.sourceSpan);
    }
}
export class LiteralArrayExpr extends Expression {
    constructor(entries, type, sourceSpan) {
        super(type, sourceSpan);
        this.entries = entries;
    }
    isConstant() {
        return this.entries.every(e => e.isConstant());
    }
    isEquivalent(e) {
        return e instanceof LiteralArrayExpr && areAllEquivalent(this.entries, e.entries);
    }
    visitExpression(visitor, context) {
        return visitor.visitLiteralArrayExpr(this, context);
    }
}
export class LiteralMapEntry {
    constructor(key, value, quoted) {
        this.key = key;
        this.value = value;
        this.quoted = quoted;
    }
    isEquivalent(e) {
        return this.key === e.key && this.value.isEquivalent(e.value);
    }
}
export class LiteralMapExpr extends Expression {
    constructor(entries, type, sourceSpan) {
        super(type, sourceSpan);
        this.entries = entries;
        this.valueType = null;
        if (type) {
            this.valueType = type.valueType;
        }
    }
    isEquivalent(e) {
        return e instanceof LiteralMapExpr && areAllEquivalent(this.entries, e.entries);
    }
    isConstant() {
        return this.entries.every(e => e.value.isConstant());
    }
    visitExpression(visitor, context) {
        return visitor.visitLiteralMapExpr(this, context);
    }
}
export class CommaExpr extends Expression {
    constructor(parts, sourceSpan) {
        super(parts[parts.length - 1].type, sourceSpan);
        this.parts = parts;
    }
    isEquivalent(e) {
        return e instanceof CommaExpr && areAllEquivalent(this.parts, e.parts);
    }
    isConstant() {
        return false;
    }
    visitExpression(visitor, context) {
        return visitor.visitCommaExpr(this, context);
    }
}
export const THIS_EXPR = new ReadVarExpr(BuiltinVar.This, null, null);
export const SUPER_EXPR = new ReadVarExpr(BuiltinVar.Super, null, null);
export const CATCH_ERROR_VAR = new ReadVarExpr(BuiltinVar.CatchError, null, null);
export const CATCH_STACK_VAR = new ReadVarExpr(BuiltinVar.CatchStack, null, null);
export const NULL_EXPR = new LiteralExpr(null, null, null);
export const TYPED_NULL_EXPR = new LiteralExpr(null, INFERRED_TYPE, null);
//// Statements
export var StmtModifier;
(function (StmtModifier) {
    StmtModifier[StmtModifier["Final"] = 0] = "Final";
    StmtModifier[StmtModifier["Private"] = 1] = "Private";
    StmtModifier[StmtModifier["Exported"] = 2] = "Exported";
    StmtModifier[StmtModifier["Static"] = 3] = "Static";
})(StmtModifier || (StmtModifier = {}));
export class Statement {
    constructor(modifiers, sourceSpan) {
        this.modifiers = modifiers || [];
        this.sourceSpan = sourceSpan || null;
    }
    hasModifier(modifier) {
        return this.modifiers.indexOf(modifier) !== -1;
    }
}
export class DeclareVarStmt extends Statement {
    constructor(name, value, type, modifiers = null, sourceSpan) {
        super(modifiers, sourceSpan);
        this.name = name;
        this.value = value;
        this.type = type || (value && value.type) || null;
    }
    isEquivalent(stmt) {
        return stmt instanceof DeclareVarStmt && this.name === stmt.name &&
            (this.value ? !!stmt.value && this.value.isEquivalent(stmt.value) : !stmt.value);
    }
    visitStatement(visitor, context) {
        return visitor.visitDeclareVarStmt(this, context);
    }
}
export class DeclareFunctionStmt extends Statement {
    constructor(name, params, statements, type, modifiers = null, sourceSpan) {
        super(modifiers, sourceSpan);
        this.name = name;
        this.params = params;
        this.statements = statements;
        this.type = type || null;
    }
    isEquivalent(stmt) {
        return stmt instanceof DeclareFunctionStmt && areAllEquivalent(this.params, stmt.params) &&
            areAllEquivalent(this.statements, stmt.statements);
    }
    visitStatement(visitor, context) {
        return visitor.visitDeclareFunctionStmt(this, context);
    }
}
export class ExpressionStatement extends Statement {
    constructor(expr, sourceSpan) {
        super(null, sourceSpan);
        this.expr = expr;
    }
    isEquivalent(stmt) {
        return stmt instanceof ExpressionStatement && this.expr.isEquivalent(stmt.expr);
    }
    visitStatement(visitor, context) {
        return visitor.visitExpressionStmt(this, context);
    }
}
export class ReturnStatement extends Statement {
    constructor(value, sourceSpan) {
        super(null, sourceSpan);
        this.value = value;
    }
    isEquivalent(stmt) {
        return stmt instanceof ReturnStatement && this.value.isEquivalent(stmt.value);
    }
    visitStatement(visitor, context) {
        return visitor.visitReturnStmt(this, context);
    }
}
export class AbstractClassPart {
    constructor(type, modifiers) {
        this.modifiers = modifiers;
        if (!modifiers) {
            this.modifiers = [];
        }
        this.type = type || null;
    }
    hasModifier(modifier) {
        return this.modifiers.indexOf(modifier) !== -1;
    }
}
export class ClassField extends AbstractClassPart {
    constructor(name, type, modifiers = null, initializer) {
        super(type, modifiers);
        this.name = name;
        this.initializer = initializer;
    }
    isEquivalent(f) {
        return this.name === f.name;
    }
}
export class ClassMethod extends AbstractClassPart {
    constructor(name, params, body, type, modifiers = null) {
        super(type, modifiers);
        this.name = name;
        this.params = params;
        this.body = body;
    }
    isEquivalent(m) {
        return this.name === m.name && areAllEquivalent(this.body, m.body);
    }
}
export class ClassGetter extends AbstractClassPart {
    constructor(name, body, type, modifiers = null) {
        super(type, modifiers);
        this.name = name;
        this.body = body;
    }
    isEquivalent(m) {
        return this.name === m.name && areAllEquivalent(this.body, m.body);
    }
}
export class ClassStmt extends Statement {
    constructor(name, parent, fields, getters, constructorMethod, methods, modifiers = null, sourceSpan) {
        super(modifiers, sourceSpan);
        this.name = name;
        this.parent = parent;
        this.fields = fields;
        this.getters = getters;
        this.constructorMethod = constructorMethod;
        this.methods = methods;
    }
    isEquivalent(stmt) {
        return stmt instanceof ClassStmt && this.name === stmt.name &&
            nullSafeIsEquivalent(this.parent, stmt.parent) &&
            areAllEquivalent(this.fields, stmt.fields) &&
            areAllEquivalent(this.getters, stmt.getters) &&
            this.constructorMethod.isEquivalent(stmt.constructorMethod) &&
            areAllEquivalent(this.methods, stmt.methods);
    }
    visitStatement(visitor, context) {
        return visitor.visitDeclareClassStmt(this, context);
    }
}
export class IfStmt extends Statement {
    constructor(condition, trueCase, falseCase = [], sourceSpan) {
        super(null, sourceSpan);
        this.condition = condition;
        this.trueCase = trueCase;
        this.falseCase = falseCase;
    }
    isEquivalent(stmt) {
        return stmt instanceof IfStmt && this.condition.isEquivalent(stmt.condition) &&
            areAllEquivalent(this.trueCase, stmt.trueCase) &&
            areAllEquivalent(this.falseCase, stmt.falseCase);
    }
    visitStatement(visitor, context) {
        return visitor.visitIfStmt(this, context);
    }
}
export class CommentStmt extends Statement {
    constructor(comment, multiline = false, sourceSpan) {
        super(null, sourceSpan);
        this.comment = comment;
        this.multiline = multiline;
    }
    isEquivalent(stmt) {
        return stmt instanceof CommentStmt;
    }
    visitStatement(visitor, context) {
        return visitor.visitCommentStmt(this, context);
    }
}
export class JSDocCommentStmt extends Statement {
    constructor(tags = [], sourceSpan) {
        super(null, sourceSpan);
        this.tags = tags;
    }
    isEquivalent(stmt) {
        return stmt instanceof JSDocCommentStmt && this.toString() === stmt.toString();
    }
    visitStatement(visitor, context) {
        return visitor.visitJSDocCommentStmt(this, context);
    }
    toString() {
        return serializeTags(this.tags);
    }
}
export class TryCatchStmt extends Statement {
    constructor(bodyStmts, catchStmts, sourceSpan) {
        super(null, sourceSpan);
        this.bodyStmts = bodyStmts;
        this.catchStmts = catchStmts;
    }
    isEquivalent(stmt) {
        return stmt instanceof TryCatchStmt && areAllEquivalent(this.bodyStmts, stmt.bodyStmts) &&
            areAllEquivalent(this.catchStmts, stmt.catchStmts);
    }
    visitStatement(visitor, context) {
        return visitor.visitTryCatchStmt(this, context);
    }
}
export class ThrowStmt extends Statement {
    constructor(error, sourceSpan) {
        super(null, sourceSpan);
        this.error = error;
    }
    isEquivalent(stmt) {
        return stmt instanceof TryCatchStmt && this.error.isEquivalent(stmt.error);
    }
    visitStatement(visitor, context) {
        return visitor.visitThrowStmt(this, context);
    }
}
export class AstTransformer {
    transformExpr(expr, context) {
        return expr;
    }
    transformStmt(stmt, context) {
        return stmt;
    }
    visitReadVarExpr(ast, context) {
        return this.transformExpr(ast, context);
    }
    visitWrappedNodeExpr(ast, context) {
        return this.transformExpr(ast, context);
    }
    visitTypeofExpr(expr, context) {
        return this.transformExpr(new TypeofExpr(expr.expr.visitExpression(this, context), expr.type, expr.sourceSpan), context);
    }
    visitWriteVarExpr(expr, context) {
        return this.transformExpr(new WriteVarExpr(expr.name, expr.value.visitExpression(this, context), expr.type, expr.sourceSpan), context);
    }
    visitWriteKeyExpr(expr, context) {
        return this.transformExpr(new WriteKeyExpr(expr.receiver.visitExpression(this, context), expr.index.visitExpression(this, context), expr.value.visitExpression(this, context), expr.type, expr.sourceSpan), context);
    }
    visitWritePropExpr(expr, context) {
        return this.transformExpr(new WritePropExpr(expr.receiver.visitExpression(this, context), expr.name, expr.value.visitExpression(this, context), expr.type, expr.sourceSpan), context);
    }
    visitInvokeMethodExpr(ast, context) {
        const method = ast.builtin || ast.name;
        return this.transformExpr(new InvokeMethodExpr(ast.receiver.visitExpression(this, context), method, this.visitAllExpressions(ast.args, context), ast.type, ast.sourceSpan), context);
    }
    visitInvokeFunctionExpr(ast, context) {
        return this.transformExpr(new InvokeFunctionExpr(ast.fn.visitExpression(this, context), this.visitAllExpressions(ast.args, context), ast.type, ast.sourceSpan), context);
    }
    visitInstantiateExpr(ast, context) {
        return this.transformExpr(new InstantiateExpr(ast.classExpr.visitExpression(this, context), this.visitAllExpressions(ast.args, context), ast.type, ast.sourceSpan), context);
    }
    visitLiteralExpr(ast, context) {
        return this.transformExpr(ast, context);
    }
    visitLocalizedString(ast, context) {
        return this.transformExpr(new LocalizedString(ast.metaBlock, ast.messageParts, ast.placeHolderNames, this.visitAllExpressions(ast.expressions, context), ast.sourceSpan), context);
    }
    visitExternalExpr(ast, context) {
        return this.transformExpr(ast, context);
    }
    visitConditionalExpr(ast, context) {
        return this.transformExpr(new ConditionalExpr(ast.condition.visitExpression(this, context), ast.trueCase.visitExpression(this, context), ast.falseCase.visitExpression(this, context), ast.type, ast.sourceSpan), context);
    }
    visitNotExpr(ast, context) {
        return this.transformExpr(new NotExpr(ast.condition.visitExpression(this, context), ast.sourceSpan), context);
    }
    visitAssertNotNullExpr(ast, context) {
        return this.transformExpr(new AssertNotNull(ast.condition.visitExpression(this, context), ast.sourceSpan), context);
    }
    visitCastExpr(ast, context) {
        return this.transformExpr(new CastExpr(ast.value.visitExpression(this, context), ast.type, ast.sourceSpan), context);
    }
    visitFunctionExpr(ast, context) {
        return this.transformExpr(new FunctionExpr(ast.params, this.visitAllStatements(ast.statements, context), ast.type, ast.sourceSpan), context);
    }
    visitBinaryOperatorExpr(ast, context) {
        return this.transformExpr(new BinaryOperatorExpr(ast.operator, ast.lhs.visitExpression(this, context), ast.rhs.visitExpression(this, context), ast.type, ast.sourceSpan), context);
    }
    visitReadPropExpr(ast, context) {
        return this.transformExpr(new ReadPropExpr(ast.receiver.visitExpression(this, context), ast.name, ast.type, ast.sourceSpan), context);
    }
    visitReadKeyExpr(ast, context) {
        return this.transformExpr(new ReadKeyExpr(ast.receiver.visitExpression(this, context), ast.index.visitExpression(this, context), ast.type, ast.sourceSpan), context);
    }
    visitLiteralArrayExpr(ast, context) {
        return this.transformExpr(new LiteralArrayExpr(this.visitAllExpressions(ast.entries, context), ast.type, ast.sourceSpan), context);
    }
    visitLiteralMapExpr(ast, context) {
        const entries = ast.entries.map((entry) => new LiteralMapEntry(entry.key, entry.value.visitExpression(this, context), entry.quoted));
        const mapType = new MapType(ast.valueType, null);
        return this.transformExpr(new LiteralMapExpr(entries, mapType, ast.sourceSpan), context);
    }
    visitCommaExpr(ast, context) {
        return this.transformExpr(new CommaExpr(this.visitAllExpressions(ast.parts, context), ast.sourceSpan), context);
    }
    visitAllExpressions(exprs, context) {
        return exprs.map(expr => expr.visitExpression(this, context));
    }
    visitDeclareVarStmt(stmt, context) {
        const value = stmt.value && stmt.value.visitExpression(this, context);
        return this.transformStmt(new DeclareVarStmt(stmt.name, value, stmt.type, stmt.modifiers, stmt.sourceSpan), context);
    }
    visitDeclareFunctionStmt(stmt, context) {
        return this.transformStmt(new DeclareFunctionStmt(stmt.name, stmt.params, this.visitAllStatements(stmt.statements, context), stmt.type, stmt.modifiers, stmt.sourceSpan), context);
    }
    visitExpressionStmt(stmt, context) {
        return this.transformStmt(new ExpressionStatement(stmt.expr.visitExpression(this, context), stmt.sourceSpan), context);
    }
    visitReturnStmt(stmt, context) {
        return this.transformStmt(new ReturnStatement(stmt.value.visitExpression(this, context), stmt.sourceSpan), context);
    }
    visitDeclareClassStmt(stmt, context) {
        const parent = stmt.parent.visitExpression(this, context);
        const getters = stmt.getters.map(getter => new ClassGetter(getter.name, this.visitAllStatements(getter.body, context), getter.type, getter.modifiers));
        const ctorMethod = stmt.constructorMethod &&
            new ClassMethod(stmt.constructorMethod.name, stmt.constructorMethod.params, this.visitAllStatements(stmt.constructorMethod.body, context), stmt.constructorMethod.type, stmt.constructorMethod.modifiers);
        const methods = stmt.methods.map(method => new ClassMethod(method.name, method.params, this.visitAllStatements(method.body, context), method.type, method.modifiers));
        return this.transformStmt(new ClassStmt(stmt.name, parent, stmt.fields, getters, ctorMethod, methods, stmt.modifiers, stmt.sourceSpan), context);
    }
    visitIfStmt(stmt, context) {
        return this.transformStmt(new IfStmt(stmt.condition.visitExpression(this, context), this.visitAllStatements(stmt.trueCase, context), this.visitAllStatements(stmt.falseCase, context), stmt.sourceSpan), context);
    }
    visitTryCatchStmt(stmt, context) {
        return this.transformStmt(new TryCatchStmt(this.visitAllStatements(stmt.bodyStmts, context), this.visitAllStatements(stmt.catchStmts, context), stmt.sourceSpan), context);
    }
    visitThrowStmt(stmt, context) {
        return this.transformStmt(new ThrowStmt(stmt.error.visitExpression(this, context), stmt.sourceSpan), context);
    }
    visitCommentStmt(stmt, context) {
        return this.transformStmt(stmt, context);
    }
    visitJSDocCommentStmt(stmt, context) {
        return this.transformStmt(stmt, context);
    }
    visitAllStatements(stmts, context) {
        return stmts.map(stmt => stmt.visitStatement(this, context));
    }
}
export class RecursiveAstVisitor {
    visitType(ast, context) {
        return ast;
    }
    visitExpression(ast, context) {
        if (ast.type) {
            ast.type.visitType(this, context);
        }
        return ast;
    }
    visitBuiltinType(type, context) {
        return this.visitType(type, context);
    }
    visitExpressionType(type, context) {
        type.value.visitExpression(this, context);
        if (type.typeParams !== null) {
            type.typeParams.forEach(param => this.visitType(param, context));
        }
        return this.visitType(type, context);
    }
    visitArrayType(type, context) {
        return this.visitType(type, context);
    }
    visitMapType(type, context) {
        return this.visitType(type, context);
    }
    visitWrappedNodeExpr(ast, context) {
        return ast;
    }
    visitTypeofExpr(ast, context) {
        return this.visitExpression(ast, context);
    }
    visitReadVarExpr(ast, context) {
        return this.visitExpression(ast, context);
    }
    visitWriteVarExpr(ast, context) {
        ast.value.visitExpression(this, context);
        return this.visitExpression(ast, context);
    }
    visitWriteKeyExpr(ast, context) {
        ast.receiver.visitExpression(this, context);
        ast.index.visitExpression(this, context);
        ast.value.visitExpression(this, context);
        return this.visitExpression(ast, context);
    }
    visitWritePropExpr(ast, context) {
        ast.receiver.visitExpression(this, context);
        ast.value.visitExpression(this, context);
        return this.visitExpression(ast, context);
    }
    visitInvokeMethodExpr(ast, context) {
        ast.receiver.visitExpression(this, context);
        this.visitAllExpressions(ast.args, context);
        return this.visitExpression(ast, context);
    }
    visitInvokeFunctionExpr(ast, context) {
        ast.fn.visitExpression(this, context);
        this.visitAllExpressions(ast.args, context);
        return this.visitExpression(ast, context);
    }
    visitInstantiateExpr(ast, context) {
        ast.classExpr.visitExpression(this, context);
        this.visitAllExpressions(ast.args, context);
        return this.visitExpression(ast, context);
    }
    visitLiteralExpr(ast, context) {
        return this.visitExpression(ast, context);
    }
    visitLocalizedString(ast, context) {
        return this.visitExpression(ast, context);
    }
    visitExternalExpr(ast, context) {
        if (ast.typeParams) {
            ast.typeParams.forEach(type => type.visitType(this, context));
        }
        return this.visitExpression(ast, context);
    }
    visitConditionalExpr(ast, context) {
        ast.condition.visitExpression(this, context);
        ast.trueCase.visitExpression(this, context);
        ast.falseCase.visitExpression(this, context);
        return this.visitExpression(ast, context);
    }
    visitNotExpr(ast, context) {
        ast.condition.visitExpression(this, context);
        return this.visitExpression(ast, context);
    }
    visitAssertNotNullExpr(ast, context) {
        ast.condition.visitExpression(this, context);
        return this.visitExpression(ast, context);
    }
    visitCastExpr(ast, context) {
        ast.value.visitExpression(this, context);
        return this.visitExpression(ast, context);
    }
    visitFunctionExpr(ast, context) {
        this.visitAllStatements(ast.statements, context);
        return this.visitExpression(ast, context);
    }
    visitBinaryOperatorExpr(ast, context) {
        ast.lhs.visitExpression(this, context);
        ast.rhs.visitExpression(this, context);
        return this.visitExpression(ast, context);
    }
    visitReadPropExpr(ast, context) {
        ast.receiver.visitExpression(this, context);
        return this.visitExpression(ast, context);
    }
    visitReadKeyExpr(ast, context) {
        ast.receiver.visitExpression(this, context);
        ast.index.visitExpression(this, context);
        return this.visitExpression(ast, context);
    }
    visitLiteralArrayExpr(ast, context) {
        this.visitAllExpressions(ast.entries, context);
        return this.visitExpression(ast, context);
    }
    visitLiteralMapExpr(ast, context) {
        ast.entries.forEach((entry) => entry.value.visitExpression(this, context));
        return this.visitExpression(ast, context);
    }
    visitCommaExpr(ast, context) {
        this.visitAllExpressions(ast.parts, context);
        return this.visitExpression(ast, context);
    }
    visitAllExpressions(exprs, context) {
        exprs.forEach(expr => expr.visitExpression(this, context));
    }
    visitDeclareVarStmt(stmt, context) {
        if (stmt.value) {
            stmt.value.visitExpression(this, context);
        }
        if (stmt.type) {
            stmt.type.visitType(this, context);
        }
        return stmt;
    }
    visitDeclareFunctionStmt(stmt, context) {
        this.visitAllStatements(stmt.statements, context);
        if (stmt.type) {
            stmt.type.visitType(this, context);
        }
        return stmt;
    }
    visitExpressionStmt(stmt, context) {
        stmt.expr.visitExpression(this, context);
        return stmt;
    }
    visitReturnStmt(stmt, context) {
        stmt.value.visitExpression(this, context);
        return stmt;
    }
    visitDeclareClassStmt(stmt, context) {
        stmt.parent.visitExpression(this, context);
        stmt.getters.forEach(getter => this.visitAllStatements(getter.body, context));
        if (stmt.constructorMethod) {
            this.visitAllStatements(stmt.constructorMethod.body, context);
        }
        stmt.methods.forEach(method => this.visitAllStatements(method.body, context));
        return stmt;
    }
    visitIfStmt(stmt, context) {
        stmt.condition.visitExpression(this, context);
        this.visitAllStatements(stmt.trueCase, context);
        this.visitAllStatements(stmt.falseCase, context);
        return stmt;
    }
    visitTryCatchStmt(stmt, context) {
        this.visitAllStatements(stmt.bodyStmts, context);
        this.visitAllStatements(stmt.catchStmts, context);
        return stmt;
    }
    visitThrowStmt(stmt, context) {
        stmt.error.visitExpression(this, context);
        return stmt;
    }
    visitCommentStmt(stmt, context) {
        return stmt;
    }
    visitJSDocCommentStmt(stmt, context) {
        return stmt;
    }
    visitAllStatements(stmts, context) {
        stmts.forEach(stmt => stmt.visitStatement(this, context));
    }
}
export function findReadVarNames(stmts) {
    const visitor = new _ReadVarVisitor();
    visitor.visitAllStatements(stmts, null);
    return visitor.varNames;
}
class _ReadVarVisitor extends RecursiveAstVisitor {
    constructor() {
        super(...arguments);
        this.varNames = new Set();
    }
    visitDeclareFunctionStmt(stmt, context) {
        // Don't descend into nested functions
        return stmt;
    }
    visitDeclareClassStmt(stmt, context) {
        // Don't descend into nested classes
        return stmt;
    }
    visitReadVarExpr(ast, context) {
        if (ast.name) {
            this.varNames.add(ast.name);
        }
        return null;
    }
}
export function collectExternalReferences(stmts) {
    const visitor = new _FindExternalReferencesVisitor();
    visitor.visitAllStatements(stmts, null);
    return visitor.externalReferences;
}
class _FindExternalReferencesVisitor extends RecursiveAstVisitor {
    constructor() {
        super(...arguments);
        this.externalReferences = [];
    }
    visitExternalExpr(e, context) {
        this.externalReferences.push(e.value);
        return super.visitExternalExpr(e, context);
    }
}
export function applySourceSpanToStatementIfNeeded(stmt, sourceSpan) {
    if (!sourceSpan) {
        return stmt;
    }
    const transformer = new _ApplySourceSpanTransformer(sourceSpan);
    return stmt.visitStatement(transformer, null);
}
export function applySourceSpanToExpressionIfNeeded(expr, sourceSpan) {
    if (!sourceSpan) {
        return expr;
    }
    const transformer = new _ApplySourceSpanTransformer(sourceSpan);
    return expr.visitExpression(transformer, null);
}
class _ApplySourceSpanTransformer extends AstTransformer {
    constructor(sourceSpan) {
        super();
        this.sourceSpan = sourceSpan;
    }
    _clone(obj) {
        const clone = Object.create(obj.constructor.prototype);
        for (let prop of Object.keys(obj)) {
            clone[prop] = obj[prop];
        }
        return clone;
    }
    transformExpr(expr, context) {
        if (!expr.sourceSpan) {
            expr = this._clone(expr);
            expr.sourceSpan = this.sourceSpan;
        }
        return expr;
    }
    transformStmt(stmt, context) {
        if (!stmt.sourceSpan) {
            stmt = this._clone(stmt);
            stmt.sourceSpan = this.sourceSpan;
        }
        return stmt;
    }
}
export function variable(name, type, sourceSpan) {
    return new ReadVarExpr(name, type, sourceSpan);
}
export function importExpr(id, typeParams = null, sourceSpan) {
    return new ExternalExpr(id, null, typeParams, sourceSpan);
}
export function importType(id, typeParams = null, typeModifiers = null) {
    return id != null ? expressionType(importExpr(id, typeParams, null), typeModifiers) : null;
}
export function expressionType(expr, typeModifiers = null, typeParams = null) {
    return new ExpressionType(expr, typeModifiers, typeParams);
}
export function typeofExpr(expr) {
    return new TypeofExpr(expr);
}
export function literalArr(values, type, sourceSpan) {
    return new LiteralArrayExpr(values, type, sourceSpan);
}
export function literalMap(values, type = null) {
    return new LiteralMapExpr(values.map(e => new LiteralMapEntry(e.key, e.value, e.quoted)), type, null);
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
    let out = '';
    if (tag.tagName) {
        out += ` @${tag.tagName}`;
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
    if (tags.length === 0)
        return '';
    let out = '*\n';
    for (const tag of tags) {
        out += ' *';
        // If the tagToString is multi-line, insert " * " prefixes on subsequent lines.
        out += tagToString(tag).replace(/\n/g, '\n * ');
        out += '\n';
    }
    out += ' ';
    return out;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoib3V0cHV0X2FzdC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9vdXRwdXQvb3V0cHV0X2FzdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFPSCxVQUFVO0FBQ1YsTUFBTSxDQUFOLElBQVksWUFFWDtBQUZELFdBQVksWUFBWTtJQUN0QixpREFBSyxDQUFBO0FBQ1AsQ0FBQyxFQUZXLFlBQVksS0FBWixZQUFZLFFBRXZCO0FBRUQsTUFBTSxPQUFnQixJQUFJO0lBQ3hCLFlBQW1CLFlBQWlDLElBQUk7UUFBckMsY0FBUyxHQUFULFNBQVMsQ0FBNEI7UUFDdEQsSUFBSSxDQUFDLFNBQVMsRUFBRTtZQUNkLElBQUksQ0FBQyxTQUFTLEdBQUcsRUFBRSxDQUFDO1NBQ3JCO0lBQ0gsQ0FBQztJQUdELFdBQVcsQ0FBQyxRQUFzQjtRQUNoQyxPQUFPLElBQUksQ0FBQyxTQUFVLENBQUMsT0FBTyxDQUFDLFFBQVEsQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDO0lBQ2xELENBQUM7Q0FDRjtBQUVELE1BQU0sQ0FBTixJQUFZLGVBU1g7QUFURCxXQUFZLGVBQWU7SUFDekIsMkRBQU8sQ0FBQTtJQUNQLHFEQUFJLENBQUE7SUFDSix5REFBTSxDQUFBO0lBQ04sbURBQUcsQ0FBQTtJQUNILHlEQUFNLENBQUE7SUFDTiw2REFBUSxDQUFBO0lBQ1IsNkRBQVEsQ0FBQTtJQUNSLHFEQUFJLENBQUE7QUFDTixDQUFDLEVBVFcsZUFBZSxLQUFmLGVBQWUsUUFTMUI7QUFFRCxNQUFNLE9BQU8sV0FBWSxTQUFRLElBQUk7SUFDbkMsWUFBbUIsSUFBcUIsRUFBRSxZQUFpQyxJQUFJO1FBQzdFLEtBQUssQ0FBQyxTQUFTLENBQUMsQ0FBQztRQURBLFNBQUksR0FBSixJQUFJLENBQWlCO0lBRXhDLENBQUM7SUFDRCxTQUFTLENBQUMsT0FBb0IsRUFBRSxPQUFZO1FBQzFD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LElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztJQUN2RixDQUFDO0lBQ0QsWUFBWSxDQUFDLEdBQWUsRUFBRSxVQUFpQztRQUM3RCxPQUFPLElBQUksa0JBQWtCLENBQUMsY0FBYyxDQUFDLFlBQVksRUFBRSxJQUFJLEVBQUUsR0FBRyxFQUFFLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztJQUMxRixDQUFDO0lBQ0QsS0FBSyxDQUFDLEdBQWUsRUFBRSxVQUFpQztRQUN0RCxPQUFPLElBQUksa0JBQWtCLENBQUMsY0FBYyxDQUFDLEtBQUssRUFBRSxJQUFJLEVBQUUsR0FBRyxFQUFFLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztJQUNuRixDQUFDO0lBQ0QsSUFBSSxDQUFDLEdBQWUsRUFBRSxVQUFpQztRQUNyRCxPQUFPLElBQUksa0JBQWtCLENBQUMsY0FBYyxDQUFDLElBQUksRUFBRSxJQUFJLEVBQUUsR0FBRyxFQUFFLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztJQUNsRixDQUFDO0lBQ0QsTUFBTSxDQUFDLEdBQWUsRUFBRSxVQUFpQztRQUN2RCxPQUFPLElBQUksa0JBQWtCLENBQUMsY0FBYyxDQUFDLE1BQU0sRUFBRSxJQUFJLEVBQUUsR0FBRyxFQUFFLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztJQUNwRixDQUFDO0lBQ0QsUUFBUSxDQUFDLEdBQWUsRUFBRSxVQUFpQztRQUN6RCxPQUFPLElBQUksa0JBQWtCLENBQUMsY0FBYyxDQUFDLFFBQVEsRUFBRSxJQUFJLEVBQUUsR0FBRyxFQUFFLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztJQUN0RixDQUFDO0lBQ0QsTUFBTSxDQUFDLEdBQWUsRUFBRSxVQUFpQztRQUN2RCxPQUFPLElBQUksa0JBQWtCLENBQUMsY0FBYyxDQUFDLE1BQU0sRUFBRSxJQUFJLEVBQUUsR0FBRyxFQUFFLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztJQUNwRixDQUFDO0lBQ0QsR0FBRyxDQUFDLEdBQWUsRUFBRSxVQUFpQztRQUNwRCxPQUFPLElBQUksa0JBQWtC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LHlDQUF5QyxDQUFDLENBQUM7U0FDNUQ7UUFDRCxHQUFHLElBQUksR0FBRyxHQUFHLEdBQUcsQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLElBQUksRUFBRSxLQUFLLENBQUMsQ0FBQztLQUM1QztJQUNELE9BQU8sR0FBRyxDQUFDO0FBQ2IsQ0FBQztBQUVELFNBQVMsYUFBYSxDQUFDLElBQWdCO0lBQ3JDLElBQUksSUFBSSxDQUFDLE1BQU0sS0FBSyxDQUFDO1FBQUUsT0FBTyxFQUFFLENBQUM7SUFFakMsSUFBSSxHQUFHLEdBQUcsS0FBSyxDQUFDO0lBQ2hCLEtBQUssTUFBTSxHQUFHLElBQUksSUFBSSxFQUFFO1FBQ3RCLEdBQUcsSUFBSSxJQUFJLENBQUM7UUFDWiwrRUFBK0U7UUFDL0UsR0FBRyxJQUFJLFdBQVcsQ0FBQyxHQUFHLENBQUMsQ0FBQyxPQUFPLENBQUMsS0FBSyxFQUFFLE9BQU8sQ0FBQyxDQUFDO1FBQ2hELEdBQUcsSUFBSSxJQUFJLENBQUM7S0FDYjtJQUNELEdBQUcsSUFBSSxHQUFHLENBQUM7SUFDWCxPQUFPLEdBQUcsQ0FBQztBQUNiLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuXG5pbXBvcnQge1BhcnNlU291cmNlU3Bhbn0gZnJvbSAnLi4vcGFyc2VfdXRpbCc7XG5pbXBvcnQge0kxOG5NZXRhfSBmcm9tICcuLi9yZW5kZXIzL3ZpZXcvaTE4bi9tZXRhJztcbmltcG9ydCB7ZXJyb3J9IGZyb20gJy4uL3V0aWwnO1xuXG4vLy8vIFR5cGVzXG5leHBvcnQgZW51bSBUeXBlTW9kaWZpZXIge1xuICBDb25zdFxufVxuXG5leHBvcnQgYWJzdHJhY3QgY2xhc3MgVHlwZSB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBtb2RpZmllcnM6IFR5cGVNb2RpZmllcltdfG51bGwgPSBudWxsKSB7XG4gICAgaWYgKCFtb2RpZmllcnMpIHtcbiAgICAgIHRoaXMubW9kaWZpZXJzID0gW107XG4gICAgfVxuICB9XG4gIGFic3RyYWN0IHZpc2l0VHlwZSh2aXNpdG9yOiBUeXBlVmlzaXRvciwgY29udGV4dDogYW55KTogYW55O1xuXG4gIGhhc01vZGlmaWVyKG1vZGlmaWVyOiBUeXBlTW9kaWZpZXIpOiBib29sZWFuIHtcbiAgICByZXR1cm4gdGhpcy5tb2RpZmllcnMhLmluZGV4T2YobW9kaWZpZXIpICE9PSAtMTtcbiAgfVxufVxuXG5leHBvcnQgZW51bSBCdWlsdGluVHlwZU5hbWUge1xuICBEeW5hbWljLFxuICBCb29sLFxuICBTdHJpbmcsXG4gIEludCxcbiAgTnVtYmVyLFxuICBGdW5jdGlvbixcbiAgSW5mZXJyZWQsXG4gIE5vbmUsXG59XG5cbmV4cG9ydCBjbGFzcyBCdWlsdGluVHlwZSBleHRlbmRzIFR5cGUge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgbmFtZTogQnVpbHRpblR5cGVOYW1lLCBtb2RpZmllcnM6IFR5cGVNb2RpZmllcltdfG51bGwgPSBudWxsKSB7XG4gICAgc3VwZXIobW9kaWZpZXJzKTtcbiAgfVxuICB2aXNpdFR5cGUodmlzaXRvcjogVHlwZVZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRCdWlsdGluVHlwZSh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgRXhwcmVzc2lvblR5cGUgZXh0ZW5kcyBUeXBlIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgdmFsdWU6IEV4cHJlc3Npb24sIG1vZGlmaWVyczogVHlwZU1vZGlmaWVyW118bnVsbCA9IG51bGwsXG4gICAgICBwdWJsaWMgdHlwZVBhcmFtczogVHlwZVtdfG51bGwgPSBudWxsKSB7XG4gICAgc3VwZXIobW9kaWZpZXJzKTtcbiAgfVxuICB2aXNpdFR5cGUodmlzaXRvcjogVHlwZVZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRFeHByZXNzaW9uVHlwZSh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBBcnJheVR5cGUgZXh0ZW5kcyBUeXBlIHtcbiAgY29uc3RydWN0b3IocHVibGljIG9mOiBUeXBlLCBtb2RpZmllcnM6IFR5cGVNb2RpZmllcltdfG51bGwgPSBudWxsKSB7XG4gICAgc3VwZXIobW9kaWZpZXJzKTtcbiAgfVxuICB2aXNpdFR5cGUodmlzaXRvcjogVHlwZVZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRBcnJheVR5cGUodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuXG5leHBvcnQgY2xhc3MgTWFwVHlwZSBleHRlbmRzIFR5cGUge1xuICBwdWJsaWMgdmFsdWVUeXBlOiBUeXBlfG51bGw7XG4gIGNvbnN0cnVjdG9yKHZhbHVlVHlwZTogVHlwZXxudWxsfHVuZGVmaW5lZCwgbW9kaWZpZXJzOiBUeXBlTW9kaWZpZXJbXXxudWxsID0gbnVsbCkge1xuICAgIHN1cGVyKG1vZGlmaWVycyk7XG4gICAgdGhpcy52YWx1ZVR5cGUgPSB2YWx1ZVR5cGUgfHwgbnVsbDtcbiAgfVxuICB2aXNpdFR5cGUodmlzaXRvcjogVHlwZVZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRNYXBUeXBlKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCBjb25zdCBEWU5BTUlDX1RZUEUgPSBuZXcgQnVpbHRpblR5cGUoQnVpbHRpblR5cGVOYW1lLkR5bmFtaWMpO1xuZXhwb3J0IGNvbnN0IElORkVSUkVEX1RZUEUgPSBuZXcgQnVpbHRpblR5cGUoQnVpbHRpblR5cGVOYW1lLkluZmVycmVkKTtcbmV4cG9ydCBjb25zdCBCT09MX1RZUEUgPSBuZXcgQnVpbHRpblR5cGUoQnVpbHRpblR5cGVOYW1lLkJvb2wpO1xuZXhwb3J0IGNvbnN0IElOVF9UWVBFID0gbmV3IEJ1aWx0aW5UeXBlKEJ1aWx0aW5UeXBlTmFtZS5JbnQpO1xuZXhwb3J0IGNvbnN0IE5VTUJFUl9UWVBFID0gbmV3IEJ1aWx0aW5UeXBlKEJ1aWx0aW5UeXBlTmFtZS5OdW1iZXIpO1xuZXhwb3J0IGNvbnN0IFNUUklOR19UWVBFID0gbmV3IEJ1aWx0aW5UeXBlKEJ1aWx0aW5UeXBlTmFtZS5TdHJpbmcpO1xuZXhwb3J0IGNvbnN0IEZVTkNUSU9OX1RZUEUgPSBuZXcgQnVpbHRpblR5cGUoQnVpbHRpblR5cGVOYW1lLkZ1bmN0aW9uKTtcbmV4cG9ydCBjb25zdCBOT05FX1RZUEUgPSBuZXcgQnVpbHRpblR5cGUoQnVpbHRpblR5cGVOYW1lLk5vbmUpO1xuXG5leHBvcnQgaW50ZXJmYWNlIFR5cGVWaXNpdG9yIHtcbiAgdmlzaXRCdWlsdGluVHlwZSh0eXBlOiBCdWlsdGluVHlwZSwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdEV4cHJlc3Npb25UeXBlKHR5cGU6IEV4cHJlc3Npb25UeXBlLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0QXJyYXlUeXBlKHR5cGU6IEFycmF5VHlwZSwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdE1hcFR5cGUodHlwZTogTWFwVHlwZSwgY29udGV4dDogYW55KTogYW55O1xufVxuXG4vLy8vLyBFeHByZXNzaW9uc1xuXG5leHBvcnQgZW51bSBCaW5hcnlPcGVyYXRvciB7XG4gIEVxdWFscyxcbiAgTm90RXF1YWxzLFxuICBJZGVudGljYWwsXG4gIE5vdElkZW50aWNhbCxcbiAgTWludXMsXG4gIFBsdXMsXG4gIERpdmlkZSxcbiAgTXVsdGlwbHksXG4gIE1vZHVsbyxcbiAgQW5kLFxuICBPcixcbiAgQml0d2lzZUFuZCxcbiAgTG93ZXIsXG4gIExvd2VyRXF1YWxzLFxuICBCaWdnZXIsXG4gIEJpZ2dlckVxdWFsc1xufVxuXG5leHBvcnQgZnVuY3Rpb24gbnVsbFNhZmVJc0VxdWl2YWxlbnQ8VCBleHRlbmRzIHtpc0VxdWl2YWxlbnQob3RoZXI6IFQpOiBib29sZWFufT4oXG4gICAgYmFzZTogVHxudWxsLCBvdGhlcjogVHxudWxsKSB7XG4gIGlmIChiYXNlID09IG51bGwgfHwgb3RoZXIgPT0gbnVsbCkge1xuICAgIHJldHVybiBiYXNlID09IG90aGVyO1xuICB9XG4gIHJldHVybiBiYXNlLmlzRXF1aXZhbGVudChvdGhlcik7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBhcmVBbGxFcXVpdmFsZW50PFQgZXh0ZW5kcyB7aXNFcXVpdmFsZW50KG90aGVyOiBUKTogYm9vbGVhbn0+KFxuICAgIGJhc2U6IFRbXSwgb3RoZXI6IFRbXSkge1xuICBjb25zdCBsZW4gPSBiYXNlLmxlbmd0aDtcbiAgaWYgKGxlbiAhPT0gb3RoZXIubGVuZ3RoKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgbGVuOyBpKyspIHtcbiAgICBpZiAoIWJhc2VbaV0uaXNFcXVpdmFsZW50KG90aGVyW2ldKSkge1xuICAgICAgcmV0dXJuIGZhbHNlO1xuICAgIH1cbiAgfVxuICByZXR1cm4gdHJ1ZTtcbn1cblxuZXhwb3J0IGFic3RyYWN0IGNsYXNzIEV4cHJlc3Npb24ge1xuICBwdWJsaWMgdHlwZTogVHlwZXxudWxsO1xuICBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFufG51bGw7XG5cbiAgY29uc3RydWN0b3IodHlwZTogVHlwZXxudWxsfHVuZGVmaW5lZCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgdGhpcy50eXBlID0gdHlwZSB8fCBudWxsO1xuICAgIHRoaXMuc291cmNlU3BhbiA9IHNvdXJjZVNwYW4gfHwgbnVsbDtcbiAgfVxuXG4gIGFic3RyYWN0IHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55O1xuXG4gIC8qKlxuICAgKiBDYWxjdWxhdGVzIHdoZXRoZXIgdGhpcyBleHByZXNzaW9uIHByb2R1Y2VzIHRoZSBzYW1lIHZhbHVlIGFzIHRoZSBnaXZlbiBleHByZXNzaW9uLlxuICAgKiBOb3RlOiBXZSBkb24ndCBjaGVjayBUeXBlcyBub3IgUGFyc2VTb3VyY2VTcGFucyBub3IgZnVuY3Rpb24gYXJndW1lbnRzLlxuICAgKi9cbiAgYWJzdHJhY3QgaXNFcXVpdmFsZW50KGU6IEV4cHJlc3Npb24pOiBib29sZWFuO1xuXG4gIC8qKlxuICAgKiBSZXR1cm4gdHJ1ZSBpZiB0aGUgZXhwcmVzc2lvbiBpcyBjb25zdGFudC5cbiAgICovXG4gIGFic3RyYWN0IGlzQ29uc3RhbnQoKTogYm9vbGVhbjtcblxuICBwcm9wKG5hbWU6IHN0cmluZywgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogUmVhZFByb3BFeHByIHtcbiAgICByZXR1cm4gbmV3IFJlYWRQcm9wRXhwcih0aGlzLCBuYW1lLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGtleShpbmRleDogRXhwcmVzc2lvbiwgdHlwZT86IFR5cGV8bnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogUmVhZEtleUV4cHIge1xuICAgIHJldHVybiBuZXcgUmVhZEtleUV4cHIodGhpcywgaW5kZXgsIHR5cGUsIHNvdXJjZVNwYW4pO1xuICB9XG5cbiAgY2FsbE1ldGhvZChuYW1lOiBzdHJpbmd8QnVpbHRpbk1ldGhvZCwgcGFyYW1zOiBFeHByZXNzaW9uW10sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6XG4gICAgICBJbnZva2VNZXRob2RFeHByIHtcbiAgICByZXR1cm4gbmV3IEludm9rZU1ldGhvZEV4cHIodGhpcywgbmFtZSwgcGFyYW1zLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGNhbGxGbihwYXJhbXM6IEV4cHJlc3Npb25bXSwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsLCBwdXJlPzogYm9vbGVhbik6XG4gICAgICBJbnZva2VGdW5jdGlvbkV4cHIge1xuICAgIHJldHVybiBuZXcgSW52b2tlRnVuY3Rpb25FeHByKHRoaXMsIHBhcmFtcywgbnVsbCwgc291cmNlU3BhbiwgcHVyZSk7XG4gIH1cblxuICBpbnN0YW50aWF0ZShwYXJhbXM6IEV4cHJlc3Npb25bXSwgdHlwZT86IFR5cGV8bnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTpcbiAgICAgIEluc3RhbnRpYXRlRXhwciB7XG4gICAgcmV0dXJuIG5ldyBJbnN0YW50aWF0ZUV4cHIodGhpcywgcGFyYW1zLCB0eXBlLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGNvbmRpdGlvbmFsKFxuICAgICAgdHJ1ZUNhc2U6IEV4cHJlc3Npb24sIGZhbHNlQ2FzZTogRXhwcmVzc2lvbnxudWxsID0gbnVsbCxcbiAgICAgIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IENvbmRpdGlvbmFsRXhwciB7XG4gICAgcmV0dXJuIG5ldyBDb25kaXRpb25hbEV4cHIodGhpcywgdHJ1ZUNhc2UsIGZhbHNlQ2FzZSwgbnVsbCwgc291cmNlU3Bhbik7XG4gIH1cblxuICBlcXVhbHMocmhzOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOiBCaW5hcnlPcGVyYXRvckV4cHIge1xuICAgIHJldHVybiBuZXcgQmluYXJ5T3BlcmF0b3JFeHByKEJpbmFyeU9wZXJhdG9yLkVxdWFscywgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBub3RFcXVhbHMocmhzOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOiBCaW5hcnlPcGVyYXRvckV4cHIge1xuICAgIHJldHVybiBuZXcgQmluYXJ5T3BlcmF0b3JFeHByKEJpbmFyeU9wZXJhdG9yLk5vdEVxdWFscywgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBpZGVudGljYWwocmhzOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOiBCaW5hcnlPcGVyYXRvckV4cHIge1xuICAgIHJldHVybiBuZXcgQmluYXJ5T3BlcmF0b3JFeHByKEJpbmFyeU9wZXJhdG9yLklkZW50aWNhbCwgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBub3RJZGVudGljYWwocmhzOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOiBCaW5hcnlPcGVyYXRvckV4cHIge1xuICAgIHJldHVybiBuZXcgQmluYXJ5T3BlcmF0b3JFeHByKEJpbmFyeU9wZXJhdG9yLk5vdElkZW50aWNhbCwgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBtaW51cyhyaHM6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEJpbmFyeU9wZXJhdG9yRXhwciB7XG4gICAgcmV0dXJuIG5ldyBCaW5hcnlPcGVyYXRvckV4cHIoQmluYXJ5T3BlcmF0b3IuTWludXMsIHRoaXMsIHJocywgbnVsbCwgc291cmNlU3Bhbik7XG4gIH1cbiAgcGx1cyhyaHM6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEJpbmFyeU9wZXJhdG9yRXhwciB7XG4gICAgcmV0dXJuIG5ldyBCaW5hcnlPcGVyYXRvckV4cHIoQmluYXJ5T3BlcmF0b3IuUGx1cywgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBkaXZpZGUocmhzOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOiBCaW5hcnlPcGVyYXRvckV4cHIge1xuICAgIHJldHVybiBuZXcgQmluYXJ5T3BlcmF0b3JFeHByKEJpbmFyeU9wZXJhdG9yLkRpdmlkZSwgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBtdWx0aXBseShyaHM6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEJpbmFyeU9wZXJhdG9yRXhwciB7XG4gICAgcmV0dXJuIG5ldyBCaW5hcnlPcGVyYXRvckV4cHIoQmluYXJ5T3BlcmF0b3IuTXVsdGlwbHksIHRoaXMsIHJocywgbnVsbCwgc291cmNlU3Bhbik7XG4gIH1cbiAgbW9kdWxvKHJoczogRXhwcmVzc2lvbiwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogQmluYXJ5T3BlcmF0b3JFeHByIHtcbiAgICByZXR1cm4gbmV3IEJpbmFyeU9wZXJhdG9yRXhwcihCaW5hcnlPcGVyYXRvci5Nb2R1bG8sIHRoaXMsIHJocywgbnVsbCwgc291cmNlU3Bhbik7XG4gIH1cbiAgYW5kKHJoczogRXhwcmVzc2lvbiwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogQmluYXJ5T3BlcmF0b3JFeHByIHtcbiAgICByZXR1cm4gbmV3IEJpbmFyeU9wZXJhdG9yRXhwcihCaW5hcnlPcGVyYXRvci5BbmQsIHRoaXMsIHJocywgbnVsbCwgc291cmNlU3Bhbik7XG4gIH1cbiAgYml0d2lzZUFuZChyaHM6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCwgcGFyZW5zOiBib29sZWFuID0gdHJ1ZSk6XG4gICAgICBCaW5hcnlPcGVyYXRvckV4cHIge1xuICAgIHJldHVybiBuZXcgQmluYXJ5T3BlcmF0b3JFeHByKEJpbmFyeU9wZXJhdG9yLkJpdHdpc2VBbmQsIHRoaXMsIHJocywgbnVsbCwgc291cmNlU3BhbiwgcGFyZW5zKTtcbiAgfVxuICBvcihyaHM6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEJpbmFyeU9wZXJhdG9yRXhwciB7XG4gICAgcmV0dXJuIG5ldyBCaW5hcnlPcGVyYXRvckV4cHIoQmluYXJ5T3BlcmF0b3IuT3IsIHRoaXMsIHJocywgbnVsbCwgc291cmNlU3Bhbik7XG4gIH1cbiAgbG93ZXIocmhzOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOiBCaW5hcnlPcGVyYXRvckV4cHIge1xuICAgIHJldHVybiBuZXcgQmluYXJ5T3BlcmF0b3JFeHByKEJpbmFyeU9wZXJhdG9yLkxvd2VyLCB0aGlzLCByaHMsIG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIGxvd2VyRXF1YWxzKHJoczogRXhwcmVzc2lvbiwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogQmluYXJ5T3BlcmF0b3JFeHByIHtcbiAgICByZXR1cm4gbmV3IEJpbmFyeU9wZXJhdG9yRXhwcihCaW5hcnlPcGVyYXRvci5Mb3dlckVxdWFscywgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBiaWdnZXIocmhzOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOiBCaW5hcnlPcGVyYXRvckV4cHIge1xuICAgIHJldHVybiBuZXcgQmluYXJ5T3BlcmF0b3JFeHByKEJpbmFyeU9wZXJhdG9yLkJpZ2dlciwgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBiaWdnZXJFcXVhbHMocmhzOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOiBCaW5hcnlPcGVyYXRvckV4cHIge1xuICAgIHJldHVybiBuZXcgQmluYXJ5T3BlcmF0b3JFeHByKEJpbmFyeU9wZXJhdG9yLkJpZ2dlckVxdWFscywgdGhpcywgcmhzLCBudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBpc0JsYW5rKHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEV4cHJlc3Npb24ge1xuICAgIC8vIE5vdGU6IFdlIHVzZSBlcXVhbHMgYnkgcHVycG9zZSBoZXJlIHRvIGNvbXBhcmUgdG8gbnVsbCBhbmQgdW5kZWZpbmVkIGluIEpTLlxuICAgIC8vIFdlIHVzZSB0aGUgdHlwZWQgbnVsbCB0byBhbGxvdyBzdHJpY3ROdWxsQ2hlY2tzIHRvIG5hcnJvdyB0eXBlcy5cbiAgICByZXR1cm4gdGhpcy5lcXVhbHMoVFlQRURfTlVMTF9FWFBSLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBjYXN0KHR5cGU6IFR5cGUsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IEV4cHJlc3Npb24ge1xuICAgIHJldHVybiBuZXcgQ2FzdEV4cHIodGhpcywgdHlwZSwgc291cmNlU3Bhbik7XG4gIH1cblxuICB0b1N0bXQoKTogU3RhdGVtZW50IHtcbiAgICByZXR1cm4gbmV3IEV4cHJlc3Npb25TdGF0ZW1lbnQodGhpcywgbnVsbCk7XG4gIH1cbn1cblxuZXhwb3J0IGVudW0gQnVpbHRpblZhciB7XG4gIFRoaXMsXG4gIFN1cGVyLFxuICBDYXRjaEVycm9yLFxuICBDYXRjaFN0YWNrXG59XG5cbmV4cG9ydCBjbGFzcyBSZWFkVmFyRXhwciBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBwdWJsaWMgbmFtZTogc3RyaW5nfG51bGw7XG4gIHB1YmxpYyBidWlsdGluOiBCdWlsdGluVmFyfG51bGw7XG5cbiAgY29uc3RydWN0b3IobmFtZTogc3RyaW5nfEJ1aWx0aW5WYXIsIHR5cGU/OiBUeXBlfG51bGwsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKHR5cGUsIHNvdXJjZVNwYW4pO1xuICAgIGlmICh0eXBlb2YgbmFtZSA9PT0gJ3N0cmluZycpIHtcbiAgICAgIHRoaXMubmFtZSA9IG5hbWU7XG4gICAgICB0aGlzLmJ1aWx0aW4gPSBudWxsO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLm5hbWUgPSBudWxsO1xuICAgICAgdGhpcy5idWlsdGluID0gbmFtZTtcbiAgICB9XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgUmVhZFZhckV4cHIgJiYgdGhpcy5uYW1lID09PSBlLm5hbWUgJiYgdGhpcy5idWlsdGluID09PSBlLmJ1aWx0aW47XG4gIH1cblxuICBpc0NvbnN0YW50KCkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdFJlYWRWYXJFeHByKHRoaXMsIGNvbnRleHQpO1xuICB9XG5cbiAgc2V0KHZhbHVlOiBFeHByZXNzaW9uKTogV3JpdGVWYXJFeHByIHtcbiAgICBpZiAoIXRoaXMubmFtZSkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGBCdWlsdCBpbiB2YXJpYWJsZSAke3RoaXMuYnVpbHRpbn0gY2FuIG5vdCBiZSBhc3NpZ25lZCB0by5gKTtcbiAgICB9XG4gICAgcmV0dXJuIG5ldyBXcml0ZVZhckV4cHIodGhpcy5uYW1lLCB2YWx1ZSwgbnVsbCwgdGhpcy5zb3VyY2VTcGFuKTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgVHlwZW9mRXhwciBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgZXhwcjogRXhwcmVzc2lvbiwgdHlwZT86IFR5cGV8bnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIodHlwZSwgc291cmNlU3Bhbik7XG4gIH1cblxuICB2aXNpdEV4cHJlc3Npb24odmlzaXRvcjogRXhwcmVzc2lvblZpc2l0b3IsIGNvbnRleHQ6IGFueSkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0VHlwZW9mRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGUgaW5zdGFuY2VvZiBUeXBlb2ZFeHByICYmIGUuZXhwci5pc0VxdWl2YWxlbnQodGhpcy5leHByKTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRoaXMuZXhwci5pc0NvbnN0YW50KCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIFdyYXBwZWROb2RlRXhwcjxUPiBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgbm9kZTogVCwgdHlwZT86IFR5cGV8bnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIodHlwZSwgc291cmNlU3Bhbik7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgV3JhcHBlZE5vZGVFeHByICYmIHRoaXMubm9kZSA9PT0gZS5ub2RlO1xuICB9XG5cbiAgaXNDb25zdGFudCgpIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cblxuICB2aXNpdEV4cHJlc3Npb24odmlzaXRvcjogRXhwcmVzc2lvblZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRXcmFwcGVkTm9kZUV4cHIodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIFdyaXRlVmFyRXhwciBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBwdWJsaWMgdmFsdWU6IEV4cHJlc3Npb247XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIG5hbWU6IHN0cmluZywgdmFsdWU6IEV4cHJlc3Npb24sIHR5cGU/OiBUeXBlfG51bGwsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKHR5cGUgfHwgdmFsdWUudHlwZSwgc291cmNlU3Bhbik7XG4gICAgdGhpcy52YWx1ZSA9IHZhbHVlO1xuICB9XG5cbiAgaXNFcXVpdmFsZW50KGU6IEV4cHJlc3Npb24pOiBib29sZWFuIHtcbiAgICByZXR1cm4gZSBpbnN0YW5jZW9mIFdyaXRlVmFyRXhwciAmJiB0aGlzLm5hbWUgPT09IGUubmFtZSAmJiB0aGlzLnZhbHVlLmlzRXF1aXZhbGVudChlLnZhbHVlKTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0V3JpdGVWYXJFeHByKHRoaXMsIGNvbnRleHQpO1xuICB9XG5cbiAgdG9EZWNsU3RtdCh0eXBlPzogVHlwZXxudWxsLCBtb2RpZmllcnM/OiBTdG10TW9kaWZpZXJbXXxudWxsKTogRGVjbGFyZVZhclN0bXQge1xuICAgIHJldHVybiBuZXcgRGVjbGFyZVZhclN0bXQodGhpcy5uYW1lLCB0aGlzLnZhbHVlLCB0eXBlLCBtb2RpZmllcnMsIHRoaXMuc291cmNlU3Bhbik7XG4gIH1cblxuICB0b0NvbnN0RGVjbCgpOiBEZWNsYXJlVmFyU3RtdCB7XG4gICAgcmV0dXJuIHRoaXMudG9EZWNsU3RtdChJTkZFUlJFRF9UWVBFLCBbU3RtdE1vZGlmaWVyLkZpbmFsXSk7XG4gIH1cbn1cblxuXG5leHBvcnQgY2xhc3MgV3JpdGVLZXlFeHByIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIHB1YmxpYyB2YWx1ZTogRXhwcmVzc2lvbjtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgcmVjZWl2ZXI6IEV4cHJlc3Npb24sIHB1YmxpYyBpbmRleDogRXhwcmVzc2lvbiwgdmFsdWU6IEV4cHJlc3Npb24sIHR5cGU/OiBUeXBlfG51bGwsXG4gICAgICBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcih0eXBlIHx8IHZhbHVlLnR5cGUsIHNvdXJjZVNwYW4pO1xuICAgIHRoaXMudmFsdWUgPSB2YWx1ZTtcbiAgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGUgaW5zdGFuY2VvZiBXcml0ZUtleUV4cHIgJiYgdGhpcy5yZWNlaXZlci5pc0VxdWl2YWxlbnQoZS5yZWNlaXZlcikgJiZcbiAgICAgICAgdGhpcy5pbmRleC5pc0VxdWl2YWxlbnQoZS5pbmRleCkgJiYgdGhpcy52YWx1ZS5pc0VxdWl2YWxlbnQoZS52YWx1ZSk7XG4gIH1cblxuICBpc0NvbnN0YW50KCkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdFdyaXRlS2V5RXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBXcml0ZVByb3BFeHByIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIHB1YmxpYyB2YWx1ZTogRXhwcmVzc2lvbjtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgcmVjZWl2ZXI6IEV4cHJlc3Npb24sIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHZhbHVlOiBFeHByZXNzaW9uLCB0eXBlPzogVHlwZXxudWxsLFxuICAgICAgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIodHlwZSB8fCB2YWx1ZS50eXBlLCBzb3VyY2VTcGFuKTtcbiAgICB0aGlzLnZhbHVlID0gdmFsdWU7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgV3JpdGVQcm9wRXhwciAmJiB0aGlzLnJlY2VpdmVyLmlzRXF1aXZhbGVudChlLnJlY2VpdmVyKSAmJlxuICAgICAgICB0aGlzLm5hbWUgPT09IGUubmFtZSAmJiB0aGlzLnZhbHVlLmlzRXF1aXZhbGVudChlLnZhbHVlKTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0V3JpdGVQcm9wRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgZW51bSBCdWlsdGluTWV0aG9kIHtcbiAgQ29uY2F0QXJyYXksXG4gIFN1YnNjcmliZU9ic2VydmFibGUsXG4gIEJpbmRcbn1cblxuZXhwb3J0IGNsYXNzIEludm9rZU1ldGhvZEV4cHIgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgcHVibGljIG5hbWU6IHN0cmluZ3xudWxsO1xuICBwdWJsaWMgYnVpbHRpbjogQnVpbHRpbk1ldGhvZHxudWxsO1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyByZWNlaXZlcjogRXhwcmVzc2lvbiwgbWV0aG9kOiBzdHJpbmd8QnVpbHRpbk1ldGhvZCwgcHVibGljIGFyZ3M6IEV4cHJlc3Npb25bXSxcbiAgICAgIHR5cGU/OiBUeXBlfG51bGwsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKHR5cGUsIHNvdXJjZVNwYW4pO1xuICAgIGlmICh0eXBlb2YgbWV0aG9kID09PSAnc3RyaW5nJykge1xuICAgICAgdGhpcy5uYW1lID0gbWV0aG9kO1xuICAgICAgdGhpcy5idWlsdGluID0gbnVsbDtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5uYW1lID0gbnVsbDtcbiAgICAgIHRoaXMuYnVpbHRpbiA9IDxCdWlsdGluTWV0aG9kPm1ldGhvZDtcbiAgICB9XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgSW52b2tlTWV0aG9kRXhwciAmJiB0aGlzLnJlY2VpdmVyLmlzRXF1aXZhbGVudChlLnJlY2VpdmVyKSAmJlxuICAgICAgICB0aGlzLm5hbWUgPT09IGUubmFtZSAmJiB0aGlzLmJ1aWx0aW4gPT09IGUuYnVpbHRpbiAmJiBhcmVBbGxFcXVpdmFsZW50KHRoaXMuYXJncywgZS5hcmdzKTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0SW52b2tlTWV0aG9kRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBJbnZva2VGdW5jdGlvbkV4cHIgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgZm46IEV4cHJlc3Npb24sIHB1YmxpYyBhcmdzOiBFeHByZXNzaW9uW10sIHR5cGU/OiBUeXBlfG51bGwsXG4gICAgICBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwsIHB1YmxpYyBwdXJlID0gZmFsc2UpIHtcbiAgICBzdXBlcih0eXBlLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGUgaW5zdGFuY2VvZiBJbnZva2VGdW5jdGlvbkV4cHIgJiYgdGhpcy5mbi5pc0VxdWl2YWxlbnQoZS5mbikgJiZcbiAgICAgICAgYXJlQWxsRXF1aXZhbGVudCh0aGlzLmFyZ3MsIGUuYXJncykgJiYgdGhpcy5wdXJlID09PSBlLnB1cmU7XG4gIH1cblxuICBpc0NvbnN0YW50KCkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdEludm9rZUZ1bmN0aW9uRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBJbnN0YW50aWF0ZUV4cHIgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgY2xhc3NFeHByOiBFeHByZXNzaW9uLCBwdWJsaWMgYXJnczogRXhwcmVzc2lvbltdLCB0eXBlPzogVHlwZXxudWxsLFxuICAgICAgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIodHlwZSwgc291cmNlU3Bhbik7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgSW5zdGFudGlhdGVFeHByICYmIHRoaXMuY2xhc3NFeHByLmlzRXF1aXZhbGVudChlLmNsYXNzRXhwcikgJiZcbiAgICAgICAgYXJlQWxsRXF1aXZhbGVudCh0aGlzLmFyZ3MsIGUuYXJncyk7XG4gIH1cblxuICBpc0NvbnN0YW50KCkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdEluc3RhbnRpYXRlRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBMaXRlcmFsRXhwciBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyB2YWx1ZTogbnVtYmVyfHN0cmluZ3xib29sZWFufG51bGx8dW5kZWZpbmVkLCB0eXBlPzogVHlwZXxudWxsLFxuICAgICAgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIodHlwZSwgc291cmNlU3Bhbik7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgTGl0ZXJhbEV4cHIgJiYgdGhpcy52YWx1ZSA9PT0gZS52YWx1ZTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7XG4gICAgcmV0dXJuIHRydWU7XG4gIH1cblxuICB2aXNpdEV4cHJlc3Npb24odmlzaXRvcjogRXhwcmVzc2lvblZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRMaXRlcmFsRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBMb2NhbGl6ZWRTdHJpbmcgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICByZWFkb25seSBtZXRhQmxvY2s6IEkxOG5NZXRhLCByZWFkb25seSBtZXNzYWdlUGFydHM6IHN0cmluZ1tdLFxuICAgICAgcmVhZG9ubHkgcGxhY2VIb2xkZXJOYW1lczogc3RyaW5nW10sIHJlYWRvbmx5IGV4cHJlc3Npb25zOiBFeHByZXNzaW9uW10sXG4gICAgICBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcihTVFJJTkdfVFlQRSwgc291cmNlU3Bhbik7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIC8vIHJldHVybiBlIGluc3RhbmNlb2YgTG9jYWxpemVkU3RyaW5nICYmIHRoaXMubWVzc2FnZSA9PT0gZS5tZXNzYWdlO1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0TG9jYWxpemVkU3RyaW5nKHRoaXMsIGNvbnRleHQpO1xuICB9XG5cbiAgLyoqXG4gICAqIFNlcmlhbGl6ZSB0aGUgZ2l2ZW4gYG1ldGFgIGFuZCBgbWVzc2FnZVBhcnRgIGludG8gXCJjb29rZWRcIiBhbmQgXCJyYXdcIiBzdHJpbmdzIHRoYXQgY2FuIGJlIHVzZWRcbiAgICogaW4gYSBgJGxvY2FsaXplYCB0YWdnZWQgc3RyaW5nLiBUaGUgZm9ybWF0IG9mIHRoZSBtZXRhZGF0YSBpcyB0aGUgc2FtZSBhcyB0aGF0IHBhcnNlZCBieVxuICAgKiBgcGFyc2VJMThuTWV0YSgpYC5cbiAgICpcbiAgICogQHBhcmFtIG1ldGEgVGhlIG1ldGFkYXRhIHRvIHNlcmlhbGl6ZVxuICAgKiBAcGFyYW0gbWVzc2FnZVBhcnQgVGhlIGZpcnN0IHBhcnQgb2YgdGhlIHRhZ2dlZCBzdHJpbmdcbiAgICovXG4gIHNlcmlhbGl6ZUkxOG5IZWFkKCk6IHtjb29rZWQ6IHN0cmluZywgcmF3OiBzdHJpbmd9IHtcbiAgICBjb25zdCBNRUFOSU5HX1NFUEFSQVRPUiA9ICd8JztcbiAgICBjb25zdCBJRF9TRVBBUkFUT1IgPSAnQEAnO1xuICAgIGNvbnN0IExFR0FDWV9JRF9JTkRJQ0FUT1IgPSAn4pCfJztcblxuICAgIGxldCBtZXRhQmxvY2sgPSB0aGlzLm1ldGFCbG9jay5kZXNjcmlwdGlvbiB8fCAnJztcbiAgICBpZiAodGhpcy5tZXRhQmxvY2subWVhbmluZykge1xuICAgICAgbWV0YUJsb2NrID0gYCR7dGhpcy5tZXRhQmxvY2subWVhbmluZ30ke01FQU5JTkdfU0VQQVJBVE9SfSR7bWV0YUJsb2NrfWA7XG4gICAgfVxuICAgIGlmICh0aGlzLm1ldGFCbG9jay5jdXN0b21JZCkge1xuICAgICAgbWV0YUJsb2NrID0gYCR7bWV0YUJsb2NrfSR7SURfU0VQQVJBVE9SfSR7dGhpcy5tZXRhQmxvY2suY3VzdG9tSWR9YDtcbiAgICB9XG4gICAgaWYgKHRoaXMubWV0YUJsb2NrLmxlZ2FjeUlkcykge1xuICAgICAgdGhpcy5tZXRhQmxvY2subGVnYWN5SWRzLmZvckVhY2gobGVnYWN5SWQgPT4ge1xuICAgICAgICBtZXRhQmxvY2sgPSBgJHttZXRhQmxvY2t9JHtMRUdBQ1lfSURfSU5ESUNBVE9SfSR7bGVnYWN5SWR9YDtcbiAgICAgIH0pO1xuICAgIH1cbiAgICByZXR1cm4gY3JlYXRlQ29va2VkUmF3U3RyaW5nKG1ldGFCbG9jaywgdGhpcy5tZXNzYWdlUGFydHNbMF0pO1xuICB9XG5cbiAgLyoqXG4gICAqIFNlcmlhbGl6ZSB0aGUgZ2l2ZW4gYHBsYWNlaG9sZGVyTmFtZWAgYW5kIGBtZXNzYWdlUGFydGAgaW50byBcImNvb2tlZFwiIGFuZCBcInJhd1wiIHN0cmluZ3MgdGhhdFxuICAgKiBjYW4gYmUgdXNlZCBpbiBhIGAkbG9jYWxpemVgIHRhZ2dlZCBzdHJpbmcuXG4gICAqXG4gICAqIEBwYXJhbSBwbGFjZWhvbGRlck5hbWUgVGhlIHBsYWNlaG9sZGVyIG5hbWUgdG8gc2VyaWFsaXplXG4gICAqIEBwYXJhbSBtZXNzYWdlUGFydCBUaGUgZm9sbG93aW5nIG1lc3NhZ2Ugc3RyaW5nIGFmdGVyIHRoaXMgcGxhY2Vob2xkZXJcbiAgICovXG4gIHNlcmlhbGl6ZUkxOG5UZW1wbGF0ZVBhcnQocGFydEluZGV4OiBudW1iZXIpOiB7Y29va2VkOiBzdHJpbmcsIHJhdzogc3RyaW5nfSB7XG4gICAgY29uc3QgcGxhY2Vob2xkZXJOYW1lID0gdGhpcy5wbGFjZUhvbGRlck5hbWVzW3BhcnRJbmRleCAtIDFdO1xuICAgIGNvbnN0IG1lc3NhZ2VQYXJ0ID0gdGhpcy5tZXNzYWdlUGFydHNbcGFydEluZGV4XTtcbiAgICByZXR1cm4gY3JlYXRlQ29va2VkUmF3U3RyaW5nKHBsYWNlaG9sZGVyTmFtZSwgbWVzc2FnZVBhcnQpO1xuICB9XG59XG5cbmNvbnN0IGVzY2FwZVNsYXNoZXMgPSAoc3RyOiBzdHJpbmcpOiBzdHJpbmcgPT4gc3RyLnJlcGxhY2UoL1xcXFwvZywgJ1xcXFxcXFxcJyk7XG5jb25zdCBlc2NhcGVTdGFydGluZ0NvbG9uID0gKHN0cjogc3RyaW5nKTogc3RyaW5nID0+IHN0ci5yZXBsYWNlKC9eOi8sICdcXFxcOicpO1xuY29uc3QgZXNjYXBlQ29sb25zID0gKHN0cjogc3RyaW5nKTogc3RyaW5nID0+IHN0ci5yZXBsYWNlKC86L2csICdcXFxcOicpO1xuY29uc3QgZXNjYXBlRm9yTWVzc2FnZVBhcnQgPSAoc3RyOiBzdHJpbmcpOiBzdHJpbmcgPT5cbiAgICBzdHIucmVwbGFjZSgvYC9nLCAnXFxcXGAnKS5yZXBsYWNlKC9cXCR7L2csICckXFxcXHsnKTtcblxuLyoqXG4gKiBDcmVhdGVzIGEgYHtjb29rZWQsIHJhd31gIG9iamVjdCBmcm9tIHRoZSBgbWV0YUJsb2NrYCBhbmQgYG1lc3NhZ2VQYXJ0YC5cbiAqXG4gKiBUaGUgYHJhd2AgdGV4dCBtdXN0IGhhdmUgdmFyaW91cyBjaGFyYWN0ZXIgc2VxdWVuY2VzIGVzY2FwZWQ6XG4gKiAqIFwiXFxcIiB3b3VsZCBvdGhlcndpc2UgaW5kaWNhdGUgdGhhdCB0aGUgbmV4dCBjaGFyYWN0ZXIgaXMgYSBjb250cm9sIGNoYXJhY3Rlci5cbiAqICogXCJgXCIgYW5kIFwiJHtcIiBhcmUgdGVtcGxhdGUgc3RyaW5nIGNvbnRyb2wgc2VxdWVuY2VzIHRoYXQgd291bGQgb3RoZXJ3aXNlIHByZW1hdHVyZWx5IGluZGljYXRlXG4gKiAgIHRoZSBlbmQgb2YgYSBtZXNzYWdlIHBhcnQuXG4gKiAqIFwiOlwiIGluc2lkZSBhIG1ldGFibG9jayB3b3VsZCBwcmVtYXR1cmVseSBpbmRpY2F0ZSB0aGUgZW5kIG9mIHRoZSBtZXRhYmxvY2suXG4gKiAqIFwiOlwiIGF0IHRoZSBzdGFydCBvZiBhIG1lc3NhZ2VQYXJ0IHdpdGggbm8gbWV0YWJsb2NrIHdvdWxkIGVycm9uZW91c2x5IGluZGljYXRlIHRoZSBzdGFydCBvZiBhXG4gKiAgIG1ldGFibG9jay5cbiAqXG4gKiBAcGFyYW0gbWV0YUJsb2NrIEFueSBtZXRhZGF0YSB0aGF0IHNob3VsZCBiZSBwcmVwZW5kZWQgdG8gdGhlIHN0cmluZ1xuICogQHBhcmFtIG1lc3NhZ2VQYXJ0IFRoZSBtZXNzYWdlIHBhcnQgb2YgdGhlIHN0cmluZ1xuICovXG5mdW5jdGlvbiBjcmVhdGVDb29rZWRSYXdTdHJpbmcobWV0YUJsb2NrOiBzdHJpbmcsIG1lc3NhZ2VQYXJ0OiBzdHJpbmcpIHtcbiAgaWYgKG1ldGFCbG9jayA9PT0gJycpIHtcbiAgICByZXR1cm4ge1xuICAgICAgY29va2VkOiBtZXNzYWdlUGFydCxcbiAgICAgIHJhdzogZXNjYXBlRm9yTWVzc2FnZVBhcnQoZXNjYXBlU3RhcnRpbmdDb2xvbihlc2NhcGVTbGFzaGVzKG1lc3NhZ2VQYXJ0KSkpXG4gICAgfTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4ge1xuICAgICAgY29va2VkOiBgOiR7bWV0YUJsb2NrfToke21lc3NhZ2VQYXJ0fWAsXG4gICAgICByYXc6IGVzY2FwZUZvck1lc3NhZ2VQYXJ0KFxuICAgICAgICAgIGA6JHtlc2NhcGVDb2xvbnMoZXNjYXBlU2xhc2hlcyhtZXRhQmxvY2spKX06JHtlc2NhcGVTbGFzaGVzKG1lc3NhZ2VQYXJ0KX1gKVxuICAgIH07XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIEV4dGVybmFsRXhwciBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyB2YWx1ZTogRXh0ZXJuYWxSZWZlcmVuY2UsIHR5cGU/OiBUeXBlfG51bGwsIHB1YmxpYyB0eXBlUGFyYW1zOiBUeXBlW118bnVsbCA9IG51bGwsXG4gICAgICBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcih0eXBlLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGUgaW5zdGFuY2VvZiBFeHRlcm5hbEV4cHIgJiYgdGhpcy52YWx1ZS5uYW1lID09PSBlLnZhbHVlLm5hbWUgJiZcbiAgICAgICAgdGhpcy52YWx1ZS5tb2R1bGVOYW1lID09PSBlLnZhbHVlLm1vZHVsZU5hbWUgJiYgdGhpcy52YWx1ZS5ydW50aW1lID09PSBlLnZhbHVlLnJ1bnRpbWU7XG4gIH1cblxuICBpc0NvbnN0YW50KCkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdEV4dGVybmFsRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgRXh0ZXJuYWxSZWZlcmVuY2Uge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgbW9kdWxlTmFtZTogc3RyaW5nfG51bGwsIHB1YmxpYyBuYW1lOiBzdHJpbmd8bnVsbCwgcHVibGljIHJ1bnRpbWU/OiBhbnl8bnVsbCkge1xuICB9XG4gIC8vIE5vdGU6IG5vIGlzRXF1aXZhbGVudCBtZXRob2QgaGVyZSBhcyB3ZSB1c2UgdGhpcyBhcyBhbiBpbnRlcmZhY2UgdG9vLlxufVxuXG5leHBvcnQgY2xhc3MgQ29uZGl0aW9uYWxFeHByIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIHB1YmxpYyB0cnVlQ2FzZTogRXhwcmVzc2lvbjtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBjb25kaXRpb246IEV4cHJlc3Npb24sIHRydWVDYXNlOiBFeHByZXNzaW9uLCBwdWJsaWMgZmFsc2VDYXNlOiBFeHByZXNzaW9ufG51bGwgPSBudWxsLFxuICAgICAgdHlwZT86IFR5cGV8bnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIodHlwZSB8fCB0cnVlQ2FzZS50eXBlLCBzb3VyY2VTcGFuKTtcbiAgICB0aGlzLnRydWVDYXNlID0gdHJ1ZUNhc2U7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgQ29uZGl0aW9uYWxFeHByICYmIHRoaXMuY29uZGl0aW9uLmlzRXF1aXZhbGVudChlLmNvbmRpdGlvbikgJiZcbiAgICAgICAgdGhpcy50cnVlQ2FzZS5pc0VxdWl2YWxlbnQoZS50cnVlQ2FzZSkgJiYgbnVsbFNhZmVJc0VxdWl2YWxlbnQodGhpcy5mYWxzZUNhc2UsIGUuZmFsc2VDYXNlKTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0Q29uZGl0aW9uYWxFeHByKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIE5vdEV4cHIgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgY29uc3RydWN0b3IocHVibGljIGNvbmRpdGlvbjogRXhwcmVzc2lvbiwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIoQk9PTF9UWVBFLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGUgaW5zdGFuY2VvZiBOb3RFeHByICYmIHRoaXMuY29uZGl0aW9uLmlzRXF1aXZhbGVudChlLmNvbmRpdGlvbik7XG4gIH1cblxuICBpc0NvbnN0YW50KCkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdE5vdEV4cHIodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIEFzc2VydE5vdE51bGwgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgY29uc3RydWN0b3IocHVibGljIGNvbmRpdGlvbjogRXhwcmVzc2lvbiwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIoY29uZGl0aW9uLnR5cGUsIHNvdXJjZVNwYW4pO1xuICB9XG5cbiAgaXNFcXVpdmFsZW50KGU6IEV4cHJlc3Npb24pOiBib29sZWFuIHtcbiAgICByZXR1cm4gZSBpbnN0YW5jZW9mIEFzc2VydE5vdE51bGwgJiYgdGhpcy5jb25kaXRpb24uaXNFcXVpdmFsZW50KGUuY29uZGl0aW9uKTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0QXNzZXJ0Tm90TnVsbEV4cHIodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIENhc3RFeHByIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyB2YWx1ZTogRXhwcmVzc2lvbiwgdHlwZT86IFR5cGV8bnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIodHlwZSwgc291cmNlU3Bhbik7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgQ2FzdEV4cHIgJiYgdGhpcy52YWx1ZS5pc0VxdWl2YWxlbnQoZS52YWx1ZSk7XG4gIH1cblxuICBpc0NvbnN0YW50KCkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdENhc3RFeHByKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIEZuUGFyYW0ge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgbmFtZTogc3RyaW5nLCBwdWJsaWMgdHlwZTogVHlwZXxudWxsID0gbnVsbCkge31cblxuICBpc0VxdWl2YWxlbnQocGFyYW06IEZuUGFyYW0pOiBib29sZWFuIHtcbiAgICByZXR1cm4gdGhpcy5uYW1lID09PSBwYXJhbS5uYW1lO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIEZ1bmN0aW9uRXhwciBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBwYXJhbXM6IEZuUGFyYW1bXSwgcHVibGljIHN0YXRlbWVudHM6IFN0YXRlbWVudFtdLCB0eXBlPzogVHlwZXxudWxsLFxuICAgICAgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsLCBwdWJsaWMgbmFtZT86IHN0cmluZ3xudWxsKSB7XG4gICAgc3VwZXIodHlwZSwgc291cmNlU3Bhbik7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgRnVuY3Rpb25FeHByICYmIGFyZUFsbEVxdWl2YWxlbnQodGhpcy5wYXJhbXMsIGUucGFyYW1zKSAmJlxuICAgICAgICBhcmVBbGxFcXVpdmFsZW50KHRoaXMuc3RhdGVtZW50cywgZS5zdGF0ZW1lbnRzKTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0RnVuY3Rpb25FeHByKHRoaXMsIGNvbnRleHQpO1xuICB9XG5cbiAgdG9EZWNsU3RtdChuYW1lOiBzdHJpbmcsIG1vZGlmaWVyczogU3RtdE1vZGlmaWVyW118bnVsbCA9IG51bGwpOiBEZWNsYXJlRnVuY3Rpb25TdG10IHtcbiAgICByZXR1cm4gbmV3IERlY2xhcmVGdW5jdGlvblN0bXQoXG4gICAgICAgIG5hbWUsIHRoaXMucGFyYW1zLCB0aGlzLnN0YXRlbWVudHMsIHRoaXMudHlwZSwgbW9kaWZpZXJzLCB0aGlzLnNvdXJjZVNwYW4pO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIEJpbmFyeU9wZXJhdG9yRXhwciBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBwdWJsaWMgbGhzOiBFeHByZXNzaW9uO1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBvcGVyYXRvcjogQmluYXJ5T3BlcmF0b3IsIGxoczogRXhwcmVzc2lvbiwgcHVibGljIHJoczogRXhwcmVzc2lvbiwgdHlwZT86IFR5cGV8bnVsbCxcbiAgICAgIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCwgcHVibGljIHBhcmVuczogYm9vbGVhbiA9IHRydWUpIHtcbiAgICBzdXBlcih0eXBlIHx8IGxocy50eXBlLCBzb3VyY2VTcGFuKTtcbiAgICB0aGlzLmxocyA9IGxocztcbiAgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGUgaW5zdGFuY2VvZiBCaW5hcnlPcGVyYXRvckV4cHIgJiYgdGhpcy5vcGVyYXRvciA9PT0gZS5vcGVyYXRvciAmJlxuICAgICAgICB0aGlzLmxocy5pc0VxdWl2YWxlbnQoZS5saHMpICYmIHRoaXMucmhzLmlzRXF1aXZhbGVudChlLnJocyk7XG4gIH1cblxuICBpc0NvbnN0YW50KCkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdEJpbmFyeU9wZXJhdG9yRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBSZWFkUHJvcEV4cHIgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgcmVjZWl2ZXI6IEV4cHJlc3Npb24sIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHR5cGU/OiBUeXBlfG51bGwsXG4gICAgICBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcih0eXBlLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGUgaW5zdGFuY2VvZiBSZWFkUHJvcEV4cHIgJiYgdGhpcy5yZWNlaXZlci5pc0VxdWl2YWxlbnQoZS5yZWNlaXZlcikgJiZcbiAgICAgICAgdGhpcy5uYW1lID09PSBlLm5hbWU7XG4gIH1cblxuICBpc0NvbnN0YW50KCkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdFJlYWRQcm9wRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxuXG4gIHNldCh2YWx1ZTogRXhwcmVzc2lvbik6IFdyaXRlUHJvcEV4cHIge1xuICAgIHJldHVybiBuZXcgV3JpdGVQcm9wRXhwcih0aGlzLnJlY2VpdmVyLCB0aGlzLm5hbWUsIHZhbHVlLCBudWxsLCB0aGlzLnNvdXJjZVNwYW4pO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIFJlYWRLZXlFeHByIGV4dGVuZHMgRXhwcmVzc2lvbiB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIHJlY2VpdmVyOiBFeHByZXNzaW9uLCBwdWJsaWMgaW5kZXg6IEV4cHJlc3Npb24sIHR5cGU/OiBUeXBlfG51bGwsXG4gICAgICBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcih0eXBlLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIGlzRXF1aXZhbGVudChlOiBFeHByZXNzaW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGUgaW5zdGFuY2VvZiBSZWFkS2V5RXhwciAmJiB0aGlzLnJlY2VpdmVyLmlzRXF1aXZhbGVudChlLnJlY2VpdmVyKSAmJlxuICAgICAgICB0aGlzLmluZGV4LmlzRXF1aXZhbGVudChlLmluZGV4KTtcbiAgfVxuXG4gIGlzQ29uc3RhbnQoKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0UmVhZEtleUV4cHIodGhpcywgY29udGV4dCk7XG4gIH1cblxuICBzZXQodmFsdWU6IEV4cHJlc3Npb24pOiBXcml0ZUtleUV4cHIge1xuICAgIHJldHVybiBuZXcgV3JpdGVLZXlFeHByKHRoaXMucmVjZWl2ZXIsIHRoaXMuaW5kZXgsIHZhbHVlLCBudWxsLCB0aGlzLnNvdXJjZVNwYW4pO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIExpdGVyYWxBcnJheUV4cHIgZXh0ZW5kcyBFeHByZXNzaW9uIHtcbiAgcHVibGljIGVudHJpZXM6IEV4cHJlc3Npb25bXTtcbiAgY29uc3RydWN0b3IoZW50cmllczogRXhwcmVzc2lvbltdLCB0eXBlPzogVHlwZXxudWxsLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcih0eXBlLCBzb3VyY2VTcGFuKTtcbiAgICB0aGlzLmVudHJpZXMgPSBlbnRyaWVzO1xuICB9XG5cbiAgaXNDb25zdGFudCgpIHtcbiAgICByZXR1cm4gdGhpcy5lbnRyaWVzLmV2ZXJ5KGUgPT4gZS5pc0NvbnN0YW50KCkpO1xuICB9XG5cbiAgaXNFcXVpdmFsZW50KGU6IEV4cHJlc3Npb24pOiBib29sZWFuIHtcbiAgICByZXR1cm4gZSBpbnN0YW5jZW9mIExpdGVyYWxBcnJheUV4cHIgJiYgYXJlQWxsRXF1aXZhbGVudCh0aGlzLmVudHJpZXMsIGUuZW50cmllcyk7XG4gIH1cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0TGl0ZXJhbEFycmF5RXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgTGl0ZXJhbE1hcEVudHJ5IHtcbiAgY29uc3RydWN0b3IocHVibGljIGtleTogc3RyaW5nLCBwdWJsaWMgdmFsdWU6IEV4cHJlc3Npb24sIHB1YmxpYyBxdW90ZWQ6IGJvb2xlYW4pIHt9XG4gIGlzRXF1aXZhbGVudChlOiBMaXRlcmFsTWFwRW50cnkpOiBib29sZWFuIHtcbiAgICByZXR1cm4gdGhpcy5rZXkgPT09IGUua2V5ICYmIHRoaXMudmFsdWUuaXNFcXVpdmFsZW50KGUudmFsdWUpO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBMaXRlcmFsTWFwRXhwciBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBwdWJsaWMgdmFsdWVUeXBlOiBUeXBlfG51bGwgPSBudWxsO1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBlbnRyaWVzOiBMaXRlcmFsTWFwRW50cnlbXSwgdHlwZT86IE1hcFR5cGV8bnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIodHlwZSwgc291cmNlU3Bhbik7XG4gICAgaWYgKHR5cGUpIHtcbiAgICAgIHRoaXMudmFsdWVUeXBlID0gdHlwZS52YWx1ZVR5cGU7XG4gICAgfVxuICB9XG5cbiAgaXNFcXVpdmFsZW50KGU6IEV4cHJlc3Npb24pOiBib29sZWFuIHtcbiAgICByZXR1cm4gZSBpbnN0YW5jZW9mIExpdGVyYWxNYXBFeHByICYmIGFyZUFsbEVxdWl2YWxlbnQodGhpcy5lbnRyaWVzLCBlLmVudHJpZXMpO1xuICB9XG5cbiAgaXNDb25zdGFudCgpIHtcbiAgICByZXR1cm4gdGhpcy5lbnRyaWVzLmV2ZXJ5KGUgPT4gZS52YWx1ZS5pc0NvbnN0YW50KCkpO1xuICB9XG5cbiAgdmlzaXRFeHByZXNzaW9uKHZpc2l0b3I6IEV4cHJlc3Npb25WaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0TGl0ZXJhbE1hcEV4cHIodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIENvbW1hRXhwciBleHRlbmRzIEV4cHJlc3Npb24ge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgcGFydHM6IEV4cHJlc3Npb25bXSwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIocGFydHNbcGFydHMubGVuZ3RoIC0gMV0udHlwZSwgc291cmNlU3Bhbik7XG4gIH1cblxuICBpc0VxdWl2YWxlbnQoZTogRXhwcmVzc2lvbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBlIGluc3RhbmNlb2YgQ29tbWFFeHByICYmIGFyZUFsbEVxdWl2YWxlbnQodGhpcy5wYXJ0cywgZS5wYXJ0cyk7XG4gIH1cblxuICBpc0NvbnN0YW50KCkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHZpc2l0RXhwcmVzc2lvbih2aXNpdG9yOiBFeHByZXNzaW9uVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdENvbW1hRXhwcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgaW50ZXJmYWNlIEV4cHJlc3Npb25WaXNpdG9yIHtcbiAgdmlzaXRSZWFkVmFyRXhwcihhc3Q6IFJlYWRWYXJFeHByLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0V3JpdGVWYXJFeHByKGV4cHI6IFdyaXRlVmFyRXhwciwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdFdyaXRlS2V5RXhwcihleHByOiBXcml0ZUtleUV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRXcml0ZVByb3BFeHByKGV4cHI6IFdyaXRlUHJvcEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRJbnZva2VNZXRob2RFeHByKGFzdDogSW52b2tlTWV0aG9kRXhwciwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdEludm9rZUZ1bmN0aW9uRXhwcihhc3Q6IEludm9rZUZ1bmN0aW9uRXhwciwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdEluc3RhbnRpYXRlRXhwcihhc3Q6IEluc3RhbnRpYXRlRXhwciwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdExpdGVyYWxFeHByKGFzdDogTGl0ZXJhbEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRMb2NhbGl6ZWRTdHJpbmcoYXN0OiBMb2NhbGl6ZWRTdHJpbmcsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRFeHRlcm5hbEV4cHIoYXN0OiBFeHRlcm5hbEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRDb25kaXRpb25hbEV4cHIoYXN0OiBDb25kaXRpb25hbEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXROb3RFeHByKGFzdDogTm90RXhwciwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdEFzc2VydE5vdE51bGxFeHByKGFzdDogQXNzZXJ0Tm90TnVsbCwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdENhc3RFeHByKGFzdDogQ2FzdEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRGdW5jdGlvbkV4cHIoYXN0OiBGdW5jdGlvbkV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRCaW5hcnlPcGVyYXRvckV4cHIoYXN0OiBCaW5hcnlPcGVyYXRvckV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRSZWFkUHJvcEV4cHIoYXN0OiBSZWFkUHJvcEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRSZWFkS2V5RXhwcihhc3Q6IFJlYWRLZXlFeHByLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0TGl0ZXJhbEFycmF5RXhwcihhc3Q6IExpdGVyYWxBcnJheUV4cHIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRMaXRlcmFsTWFwRXhwcihhc3Q6IExpdGVyYWxNYXBFeHByLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0Q29tbWFFeHByKGFzdDogQ29tbWFFeHByLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0V3JhcHBlZE5vZGVFeHByKGFzdDogV3JhcHBlZE5vZGVFeHByPGFueT4sIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRUeXBlb2ZFeHByKGFzdDogVHlwZW9mRXhwciwgY29udGV4dDogYW55KTogYW55O1xufVxuXG5leHBvcnQgY29uc3QgVEhJU19FWFBSID0gbmV3IFJlYWRWYXJFeHByKEJ1aWx0aW5WYXIuVGhpcywgbnVsbCwgbnVsbCk7XG5leHBvcnQgY29uc3QgU1VQRVJfRVhQUiA9IG5ldyBSZWFkVmFyRXhwcihCdWlsdGluVmFyLlN1cGVyLCBudWxsLCBudWxsKTtcbmV4cG9ydCBjb25zdCBDQVRDSF9FUlJPUl9WQVIgPSBuZXcgUmVhZFZhckV4cHIoQnVpbHRpblZhci5DYXRjaEVycm9yLCBudWxsLCBudWxsKTtcbmV4cG9ydCBjb25zdCBDQVRDSF9TVEFDS19WQVIgPSBuZXcgUmVhZFZhckV4cHIoQnVpbHRpblZhci5DYXRjaFN0YWNrLCBudWxsLCBudWxsKTtcbmV4cG9ydCBjb25zdCBOVUxMX0VYUFIgPSBuZXcgTGl0ZXJhbEV4cHIobnVsbCwgbnVsbCwgbnVsbCk7XG5leHBvcnQgY29uc3QgVFlQRURfTlVMTF9FWFBSID0gbmV3IExpdGVyYWxFeHByKG51bGwsIElORkVSUkVEX1RZUEUsIG51bGwpO1xuXG4vLy8vIFN0YXRlbWVudHNcbmV4cG9ydCBlbnVtIFN0bXRNb2RpZmllciB7XG4gIEZpbmFsLFxuICBQcml2YXRlLFxuICBFeHBvcnRlZCxcbiAgU3RhdGljLFxufVxuXG5leHBvcnQgYWJzdHJhY3QgY2xhc3MgU3RhdGVtZW50IHtcbiAgcHVibGljIG1vZGlmaWVyczogU3RtdE1vZGlmaWVyW107XG4gIHB1YmxpYyBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW58bnVsbDtcbiAgY29uc3RydWN0b3IobW9kaWZpZXJzPzogU3RtdE1vZGlmaWVyW118bnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgdGhpcy5tb2RpZmllcnMgPSBtb2RpZmllcnMgfHwgW107XG4gICAgdGhpcy5zb3VyY2VTcGFuID0gc291cmNlU3BhbiB8fCBudWxsO1xuICB9XG4gIC8qKlxuICAgKiBDYWxjdWxhdGVzIHdoZXRoZXIgdGhpcyBzdGF0ZW1lbnQgcHJvZHVjZXMgdGhlIHNhbWUgdmFsdWUgYXMgdGhlIGdpdmVuIHN0YXRlbWVudC5cbiAgICogTm90ZTogV2UgZG9uJ3QgY2hlY2sgVHlwZXMgbm9yIFBhcnNlU291cmNlU3BhbnMgbm9yIGZ1bmN0aW9uIGFyZ3VtZW50cy5cbiAgICovXG4gIGFic3RyYWN0IGlzRXF1aXZhbGVudChzdG10OiBTdGF0ZW1lbnQpOiBib29sZWFuO1xuXG4gIGFic3RyYWN0IHZpc2l0U3RhdGVtZW50KHZpc2l0b3I6IFN0YXRlbWVudFZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueTtcblxuICBoYXNNb2RpZmllcihtb2RpZmllcjogU3RtdE1vZGlmaWVyKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRoaXMubW9kaWZpZXJzIS5pbmRleE9mKG1vZGlmaWVyKSAhPT0gLTE7XG4gIH1cbn1cblxuXG5leHBvcnQgY2xhc3MgRGVjbGFyZVZhclN0bXQgZXh0ZW5kcyBTdGF0ZW1lbnQge1xuICBwdWJsaWMgdHlwZTogVHlwZXxudWxsO1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHB1YmxpYyB2YWx1ZT86IEV4cHJlc3Npb24sIHR5cGU/OiBUeXBlfG51bGwsXG4gICAgICBtb2RpZmllcnM6IFN0bXRNb2RpZmllcltdfG51bGwgPSBudWxsLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcihtb2RpZmllcnMsIHNvdXJjZVNwYW4pO1xuICAgIHRoaXMudHlwZSA9IHR5cGUgfHwgKHZhbHVlICYmIHZhbHVlLnR5cGUpIHx8IG51bGw7XG4gIH1cbiAgaXNFcXVpdmFsZW50KHN0bXQ6IFN0YXRlbWVudCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBzdG10IGluc3RhbmNlb2YgRGVjbGFyZVZhclN0bXQgJiYgdGhpcy5uYW1lID09PSBzdG10Lm5hbWUgJiZcbiAgICAgICAgKHRoaXMudmFsdWUgPyAhIXN0bXQudmFsdWUgJiYgdGhpcy52YWx1ZS5pc0VxdWl2YWxlbnQoc3RtdC52YWx1ZSkgOiAhc3RtdC52YWx1ZSk7XG4gIH1cbiAgdmlzaXRTdGF0ZW1lbnQodmlzaXRvcjogU3RhdGVtZW50VmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdERlY2xhcmVWYXJTdG10KHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBEZWNsYXJlRnVuY3Rpb25TdG10IGV4dGVuZHMgU3RhdGVtZW50IHtcbiAgcHVibGljIHR5cGU6IFR5cGV8bnVsbDtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgbmFtZTogc3RyaW5nLCBwdWJsaWMgcGFyYW1zOiBGblBhcmFtW10sIHB1YmxpYyBzdGF0ZW1lbnRzOiBTdGF0ZW1lbnRbXSxcbiAgICAgIHR5cGU/OiBUeXBlfG51bGwsIG1vZGlmaWVyczogU3RtdE1vZGlmaWVyW118bnVsbCA9IG51bGwsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKG1vZGlmaWVycywgc291cmNlU3Bhbik7XG4gICAgdGhpcy50eXBlID0gdHlwZSB8fCBudWxsO1xuICB9XG4gIGlzRXF1aXZhbGVudChzdG10OiBTdGF0ZW1lbnQpOiBib29sZWFuIHtcbiAgICByZXR1cm4gc3RtdCBpbnN0YW5jZW9mIERlY2xhcmVGdW5jdGlvblN0bXQgJiYgYXJlQWxsRXF1aXZhbGVudCh0aGlzLnBhcmFtcywgc3RtdC5wYXJhbXMpICYmXG4gICAgICAgIGFyZUFsbEVxdWl2YWxlbnQodGhpcy5zdGF0ZW1lbnRzLCBzdG10LnN0YXRlbWVudHMpO1xuICB9XG5cbiAgdmlzaXRTdGF0ZW1lbnQodmlzaXRvcjogU3RhdGVtZW50VmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdERlY2xhcmVGdW5jdGlvblN0bXQodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIEV4cHJlc3Npb25TdGF0ZW1lbnQgZXh0ZW5kcyBTdGF0ZW1lbnQge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgZXhwcjogRXhwcmVzc2lvbiwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIobnVsbCwgc291cmNlU3Bhbik7XG4gIH1cbiAgaXNFcXVpdmFsZW50KHN0bXQ6IFN0YXRlbWVudCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBzdG10IGluc3RhbmNlb2YgRXhwcmVzc2lvblN0YXRlbWVudCAmJiB0aGlzLmV4cHIuaXNFcXVpdmFsZW50KHN0bXQuZXhwcik7XG4gIH1cblxuICB2aXNpdFN0YXRlbWVudCh2aXNpdG9yOiBTdGF0ZW1lbnRWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0RXhwcmVzc2lvblN0bXQodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuXG5leHBvcnQgY2xhc3MgUmV0dXJuU3RhdGVtZW50IGV4dGVuZHMgU3RhdGVtZW50IHtcbiAgY29uc3RydWN0b3IocHVibGljIHZhbHVlOiBFeHByZXNzaW9uLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcihudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBpc0VxdWl2YWxlbnQoc3RtdDogU3RhdGVtZW50KTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHN0bXQgaW5zdGFuY2VvZiBSZXR1cm5TdGF0ZW1lbnQgJiYgdGhpcy52YWx1ZS5pc0VxdWl2YWxlbnQoc3RtdC52YWx1ZSk7XG4gIH1cbiAgdmlzaXRTdGF0ZW1lbnQodmlzaXRvcjogU3RhdGVtZW50VmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdFJldHVyblN0bXQodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIEFic3RyYWN0Q2xhc3NQYXJ0IHtcbiAgcHVibGljIHR5cGU6IFR5cGV8bnVsbDtcbiAgY29uc3RydWN0b3IodHlwZTogVHlwZXxudWxsfHVuZGVmaW5lZCwgcHVibGljIG1vZGlmaWVyczogU3RtdE1vZGlmaWVyW118bnVsbCkge1xuICAgIGlmICghbW9kaWZpZXJzKSB7XG4gICAgICB0aGlzLm1vZGlmaWVycyA9IFtdO1xuICAgIH1cbiAgICB0aGlzLnR5cGUgPSB0eXBlIHx8IG51bGw7XG4gIH1cbiAgaGFzTW9kaWZpZXIobW9kaWZpZXI6IFN0bXRNb2RpZmllcik6IGJvb2xlYW4ge1xuICAgIHJldHVybiB0aGlzLm1vZGlmaWVycyEuaW5kZXhPZihtb2RpZmllcikgIT09IC0xO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBDbGFzc0ZpZWxkIGV4dGVuZHMgQWJzdHJhY3RDbGFzc1BhcnQge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHR5cGU/OiBUeXBlfG51bGwsIG1vZGlmaWVyczogU3RtdE1vZGlmaWVyW118bnVsbCA9IG51bGwsXG4gICAgICBwdWJsaWMgaW5pdGlhbGl6ZXI/OiBFeHByZXNzaW9uKSB7XG4gICAgc3VwZXIodHlwZSwgbW9kaWZpZXJzKTtcbiAgfVxuICBpc0VxdWl2YWxlbnQoZjogQ2xhc3NGaWVsZCkge1xuICAgIHJldHVybiB0aGlzLm5hbWUgPT09IGYubmFtZTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBDbGFzc01ldGhvZCBleHRlbmRzIEFic3RyYWN0Q2xhc3NQYXJ0IHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgbmFtZTogc3RyaW5nfG51bGwsIHB1YmxpYyBwYXJhbXM6IEZuUGFyYW1bXSwgcHVibGljIGJvZHk6IFN0YXRlbWVudFtdLFxuICAgICAgdHlwZT86IFR5cGV8bnVsbCwgbW9kaWZpZXJzOiBTdG10TW9kaWZpZXJbXXxudWxsID0gbnVsbCkge1xuICAgIHN1cGVyKHR5cGUsIG1vZGlmaWVycyk7XG4gIH1cbiAgaXNFcXVpdmFsZW50KG06IENsYXNzTWV0aG9kKSB7XG4gICAgcmV0dXJuIHRoaXMubmFtZSA9PT0gbS5uYW1lICYmIGFyZUFsbEVxdWl2YWxlbnQodGhpcy5ib2R5LCBtLmJvZHkpO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIENsYXNzR2V0dGVyIGV4dGVuZHMgQWJzdHJhY3RDbGFzc1BhcnQge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHB1YmxpYyBib2R5OiBTdGF0ZW1lbnRbXSwgdHlwZT86IFR5cGV8bnVsbCxcbiAgICAgIG1vZGlmaWVyczogU3RtdE1vZGlmaWVyW118bnVsbCA9IG51bGwpIHtcbiAgICBzdXBlcih0eXBlLCBtb2RpZmllcnMpO1xuICB9XG4gIGlzRXF1aXZhbGVudChtOiBDbGFzc0dldHRlcikge1xuICAgIHJldHVybiB0aGlzLm5hbWUgPT09IG0ubmFtZSAmJiBhcmVBbGxFcXVpdmFsZW50KHRoaXMuYm9keSwgbS5ib2R5KTtcbiAgfVxufVxuXG5cbmV4cG9ydCBjbGFzcyBDbGFzc1N0bXQgZXh0ZW5kcyBTdGF0ZW1lbnQge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHB1YmxpYyBwYXJlbnQ6IEV4cHJlc3Npb258bnVsbCwgcHVibGljIGZpZWxkczogQ2xhc3NGaWVsZFtdLFxuICAgICAgcHVibGljIGdldHRlcnM6IENsYXNzR2V0dGVyW10sIHB1YmxpYyBjb25zdHJ1Y3Rvck1ldGhvZDogQ2xhc3NNZXRob2QsXG4gICAgICBwdWJsaWMgbWV0aG9kczogQ2xhc3NNZXRob2RbXSwgbW9kaWZpZXJzOiBTdG10TW9kaWZpZXJbXXxudWxsID0gbnVsbCxcbiAgICAgIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKG1vZGlmaWVycywgc291cmNlU3Bhbik7XG4gIH1cbiAgaXNFcXVpdmFsZW50KHN0bXQ6IFN0YXRlbWVudCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBzdG10IGluc3RhbmNlb2YgQ2xhc3NTdG10ICYmIHRoaXMubmFtZSA9PT0gc3RtdC5uYW1lICYmXG4gICAgICAgIG51bGxTYWZlSXNFcXVpdmFsZW50KHRoaXMucGFyZW50LCBzdG10LnBhcmVudCkgJiZcbiAgICAgICAgYXJlQWxsRXF1aXZhbGVudCh0aGlzLmZpZWxkcywgc3RtdC5maWVsZHMpICYmXG4gICAgICAgIGFyZUFsbEVxdWl2YWxlbnQodGhpcy5nZXR0ZXJzLCBzdG10LmdldHRlcnMpICYmXG4gICAgICAgIHRoaXMuY29uc3RydWN0b3JNZXRob2QuaXNFcXVpdmFsZW50KHN0bXQuY29uc3RydWN0b3JNZXRob2QpICYmXG4gICAgICAgIGFyZUFsbEVxdWl2YWxlbnQodGhpcy5tZXRob2RzLCBzdG10Lm1ldGhvZHMpO1xuICB9XG4gIHZpc2l0U3RhdGVtZW50KHZpc2l0b3I6IFN0YXRlbWVudFZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXREZWNsYXJlQ2xhc3NTdG10KHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIElmU3RtdCBleHRlbmRzIFN0YXRlbWVudCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIGNvbmRpdGlvbjogRXhwcmVzc2lvbiwgcHVibGljIHRydWVDYXNlOiBTdGF0ZW1lbnRbXSxcbiAgICAgIHB1YmxpYyBmYWxzZUNhc2U6IFN0YXRlbWVudFtdID0gW10sIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCkge1xuICAgIHN1cGVyKG51bGwsIHNvdXJjZVNwYW4pO1xuICB9XG4gIGlzRXF1aXZhbGVudChzdG10OiBTdGF0ZW1lbnQpOiBib29sZWFuIHtcbiAgICByZXR1cm4gc3RtdCBpbnN0YW5jZW9mIElmU3RtdCAmJiB0aGlzLmNvbmRpdGlvbi5pc0VxdWl2YWxlbnQoc3RtdC5jb25kaXRpb24pICYmXG4gICAgICAgIGFyZUFsbEVxdWl2YWxlbnQodGhpcy50cnVlQ2FzZSwgc3RtdC50cnVlQ2FzZSkgJiZcbiAgICAgICAgYXJlQWxsRXF1aXZhbGVudCh0aGlzLmZhbHNlQ2FzZSwgc3RtdC5mYWxzZUNhc2UpO1xuICB9XG4gIHZpc2l0U3RhdGVtZW50KHZpc2l0b3I6IFN0YXRlbWVudFZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRJZlN0bXQodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIENvbW1lbnRTdG10IGV4dGVuZHMgU3RhdGVtZW50IHtcbiAgY29uc3RydWN0b3IocHVibGljIGNvbW1lbnQ6IHN0cmluZywgcHVibGljIG11bHRpbGluZSA9IGZhbHNlLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcihudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBpc0VxdWl2YWxlbnQoc3RtdDogU3RhdGVtZW50KTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHN0bXQgaW5zdGFuY2VvZiBDb21tZW50U3RtdDtcbiAgfVxuICB2aXNpdFN0YXRlbWVudCh2aXNpdG9yOiBTdGF0ZW1lbnRWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0Q29tbWVudFN0bXQodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIEpTRG9jQ29tbWVudFN0bXQgZXh0ZW5kcyBTdGF0ZW1lbnQge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgdGFnczogSlNEb2NUYWdbXSA9IFtdLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpIHtcbiAgICBzdXBlcihudWxsLCBzb3VyY2VTcGFuKTtcbiAgfVxuICBpc0VxdWl2YWxlbnQoc3RtdDogU3RhdGVtZW50KTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHN0bXQgaW5zdGFuY2VvZiBKU0RvY0NvbW1lbnRTdG10ICYmIHRoaXMudG9TdHJpbmcoKSA9PT0gc3RtdC50b1N0cmluZygpO1xuICB9XG4gIHZpc2l0U3RhdGVtZW50KHZpc2l0b3I6IFN0YXRlbWVudFZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRKU0RvY0NvbW1lbnRTdG10KHRoaXMsIGNvbnRleHQpO1xuICB9XG4gIHRvU3RyaW5nKCk6IHN0cmluZyB7XG4gICAgcmV0dXJuIHNlcmlhbGl6ZVRhZ3ModGhpcy50YWdzKTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgVHJ5Q2F0Y2hTdG10IGV4dGVuZHMgU3RhdGVtZW50IHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgYm9keVN0bXRzOiBTdGF0ZW1lbnRbXSwgcHVibGljIGNhdGNoU3RtdHM6IFN0YXRlbWVudFtdLFxuICAgICAgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIobnVsbCwgc291cmNlU3Bhbik7XG4gIH1cbiAgaXNFcXVpdmFsZW50KHN0bXQ6IFN0YXRlbWVudCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBzdG10IGluc3RhbmNlb2YgVHJ5Q2F0Y2hTdG10ICYmIGFyZUFsbEVxdWl2YWxlbnQodGhpcy5ib2R5U3RtdHMsIHN0bXQuYm9keVN0bXRzKSAmJlxuICAgICAgICBhcmVBbGxFcXVpdmFsZW50KHRoaXMuY2F0Y2hTdG10cywgc3RtdC5jYXRjaFN0bXRzKTtcbiAgfVxuICB2aXNpdFN0YXRlbWVudCh2aXNpdG9yOiBTdGF0ZW1lbnRWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0VHJ5Q2F0Y2hTdG10KHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIFRocm93U3RtdCBleHRlbmRzIFN0YXRlbWVudCB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBlcnJvcjogRXhwcmVzc2lvbiwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKSB7XG4gICAgc3VwZXIobnVsbCwgc291cmNlU3Bhbik7XG4gIH1cbiAgaXNFcXVpdmFsZW50KHN0bXQ6IFRocm93U3RtdCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBzdG10IGluc3RhbmNlb2YgVHJ5Q2F0Y2hTdG10ICYmIHRoaXMuZXJyb3IuaXNFcXVpdmFsZW50KHN0bXQuZXJyb3IpO1xuICB9XG4gIHZpc2l0U3RhdGVtZW50KHZpc2l0b3I6IFN0YXRlbWVudFZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRUaHJvd1N0bXQodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGludGVyZmFjZSBTdGF0ZW1lbnRWaXNpdG9yIHtcbiAgdmlzaXREZWNsYXJlVmFyU3RtdChzdG10OiBEZWNsYXJlVmFyU3RtdCwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdERlY2xhcmVGdW5jdGlvblN0bXQoc3RtdDogRGVjbGFyZUZ1bmN0aW9uU3RtdCwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdEV4cHJlc3Npb25TdG10KHN0bXQ6IEV4cHJlc3Npb25TdGF0ZW1lbnQsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRSZXR1cm5TdG10KHN0bXQ6IFJldHVyblN0YXRlbWVudCwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdERlY2xhcmVDbGFzc1N0bXQoc3RtdDogQ2xhc3NTdG10LCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0SWZTdG10KHN0bXQ6IElmU3RtdCwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdFRyeUNhdGNoU3RtdChzdG10OiBUcnlDYXRjaFN0bXQsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRUaHJvd1N0bXQoc3RtdDogVGhyb3dTdG10LCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0Q29tbWVudFN0bXQoc3RtdDogQ29tbWVudFN0bXQsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRKU0RvY0NvbW1lbnRTdG10KHN0bXQ6IEpTRG9jQ29tbWVudFN0bXQsIGNvbnRleHQ6IGFueSk6IGFueTtcbn1cblxuZXhwb3J0IGNsYXNzIEFzdFRyYW5zZm9ybWVyIGltcGxlbWVudHMgU3RhdGVtZW50VmlzaXRvciwgRXhwcmVzc2lvblZpc2l0b3Ige1xuICB0cmFuc2Zvcm1FeHByKGV4cHI6IEV4cHJlc3Npb24sIGNvbnRleHQ6IGFueSk6IEV4cHJlc3Npb24ge1xuICAgIHJldHVybiBleHByO1xuICB9XG5cbiAgdHJhbnNmb3JtU3RtdChzdG10OiBTdGF0ZW1lbnQsIGNvbnRleHQ6IGFueSk6IFN0YXRlbWVudCB7XG4gICAgcmV0dXJuIHN0bXQ7XG4gIH1cblxuICB2aXNpdFJlYWRWYXJFeHByKGFzdDogUmVhZFZhckV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtRXhwcihhc3QsIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRXcmFwcGVkTm9kZUV4cHIoYXN0OiBXcmFwcGVkTm9kZUV4cHI8YW55PiwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKGFzdCwgY29udGV4dCk7XG4gIH1cblxuICB2aXNpdFR5cGVvZkV4cHIoZXhwcjogVHlwZW9mRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgVHlwZW9mRXhwcihleHByLmV4cHIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLCBleHByLnR5cGUsIGV4cHIuc291cmNlU3BhbiksXG4gICAgICAgIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRXcml0ZVZhckV4cHIoZXhwcjogV3JpdGVWYXJFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoXG4gICAgICAgIG5ldyBXcml0ZVZhckV4cHIoXG4gICAgICAgICAgICBleHByLm5hbWUsIGV4cHIudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLCBleHByLnR5cGUsIGV4cHIuc291cmNlU3BhbiksXG4gICAgICAgIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRXcml0ZUtleUV4cHIoZXhwcjogV3JpdGVLZXlFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoXG4gICAgICAgIG5ldyBXcml0ZUtleUV4cHIoXG4gICAgICAgICAgICBleHByLnJlY2VpdmVyLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSwgZXhwci5pbmRleC52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksXG4gICAgICAgICAgICBleHByLnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSwgZXhwci50eXBlLCBleHByLnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0V3JpdGVQcm9wRXhwcihleHByOiBXcml0ZVByb3BFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoXG4gICAgICAgIG5ldyBXcml0ZVByb3BFeHByKFxuICAgICAgICAgICAgZXhwci5yZWNlaXZlci52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksIGV4cHIubmFtZSxcbiAgICAgICAgICAgIGV4cHIudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLCBleHByLnR5cGUsIGV4cHIuc291cmNlU3BhbiksXG4gICAgICAgIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRJbnZva2VNZXRob2RFeHByKGFzdDogSW52b2tlTWV0aG9kRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBjb25zdCBtZXRob2QgPSBhc3QuYnVpbHRpbiB8fCBhc3QubmFtZTtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgSW52b2tlTWV0aG9kRXhwcihcbiAgICAgICAgICAgIGFzdC5yZWNlaXZlci52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksIG1ldGhvZCEsXG4gICAgICAgICAgICB0aGlzLnZpc2l0QWxsRXhwcmVzc2lvbnMoYXN0LmFyZ3MsIGNvbnRleHQpLCBhc3QudHlwZSwgYXN0LnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0SW52b2tlRnVuY3Rpb25FeHByKGFzdDogSW52b2tlRnVuY3Rpb25FeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoXG4gICAgICAgIG5ldyBJbnZva2VGdW5jdGlvbkV4cHIoXG4gICAgICAgICAgICBhc3QuZm4udmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLCB0aGlzLnZpc2l0QWxsRXhwcmVzc2lvbnMoYXN0LmFyZ3MsIGNvbnRleHQpLFxuICAgICAgICAgICAgYXN0LnR5cGUsIGFzdC5zb3VyY2VTcGFuKSxcbiAgICAgICAgY29udGV4dCk7XG4gIH1cblxuICB2aXNpdEluc3RhbnRpYXRlRXhwcihhc3Q6IEluc3RhbnRpYXRlRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgSW5zdGFudGlhdGVFeHByKFxuICAgICAgICAgICAgYXN0LmNsYXNzRXhwci52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksXG4gICAgICAgICAgICB0aGlzLnZpc2l0QWxsRXhwcmVzc2lvbnMoYXN0LmFyZ3MsIGNvbnRleHQpLCBhc3QudHlwZSwgYXN0LnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0TGl0ZXJhbEV4cHIoYXN0OiBMaXRlcmFsRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKGFzdCwgY29udGV4dCk7XG4gIH1cblxuICB2aXNpdExvY2FsaXplZFN0cmluZyhhc3Q6IExvY2FsaXplZFN0cmluZywgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgTG9jYWxpemVkU3RyaW5nKFxuICAgICAgICAgICAgYXN0Lm1ldGFCbG9jaywgYXN0Lm1lc3NhZ2VQYXJ0cywgYXN0LnBsYWNlSG9sZGVyTmFtZXMsXG4gICAgICAgICAgICB0aGlzLnZpc2l0QWxsRXhwcmVzc2lvbnMoYXN0LmV4cHJlc3Npb25zLCBjb250ZXh0KSwgYXN0LnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0RXh0ZXJuYWxFeHByKGFzdDogRXh0ZXJuYWxFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoYXN0LCBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0Q29uZGl0aW9uYWxFeHByKGFzdDogQ29uZGl0aW9uYWxFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoXG4gICAgICAgIG5ldyBDb25kaXRpb25hbEV4cHIoXG4gICAgICAgICAgICBhc3QuY29uZGl0aW9uLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSxcbiAgICAgICAgICAgIGFzdC50cnVlQ2FzZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksXG4gICAgICAgICAgICBhc3QuZmFsc2VDYXNlIS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksIGFzdC50eXBlLCBhc3Quc291cmNlU3BhbiksXG4gICAgICAgIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXROb3RFeHByKGFzdDogTm90RXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgTm90RXhwcihhc3QuY29uZGl0aW9uLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSwgYXN0LnNvdXJjZVNwYW4pLCBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0QXNzZXJ0Tm90TnVsbEV4cHIoYXN0OiBBc3NlcnROb3ROdWxsLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoXG4gICAgICAgIG5ldyBBc3NlcnROb3ROdWxsKGFzdC5jb25kaXRpb24udmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLCBhc3Quc291cmNlU3BhbiksIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRDYXN0RXhwcihhc3Q6IENhc3RFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoXG4gICAgICAgIG5ldyBDYXN0RXhwcihhc3QudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLCBhc3QudHlwZSwgYXN0LnNvdXJjZVNwYW4pLCBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0RnVuY3Rpb25FeHByKGFzdDogRnVuY3Rpb25FeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoXG4gICAgICAgIG5ldyBGdW5jdGlvbkV4cHIoXG4gICAgICAgICAgICBhc3QucGFyYW1zLCB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhhc3Quc3RhdGVtZW50cywgY29udGV4dCksIGFzdC50eXBlLCBhc3Quc291cmNlU3BhbiksXG4gICAgICAgIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRCaW5hcnlPcGVyYXRvckV4cHIoYXN0OiBCaW5hcnlPcGVyYXRvckV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtRXhwcihcbiAgICAgICAgbmV3IEJpbmFyeU9wZXJhdG9yRXhwcihcbiAgICAgICAgICAgIGFzdC5vcGVyYXRvciwgYXN0Lmxocy52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksXG4gICAgICAgICAgICBhc3QucmhzLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSwgYXN0LnR5cGUsIGFzdC5zb3VyY2VTcGFuKSxcbiAgICAgICAgY29udGV4dCk7XG4gIH1cblxuICB2aXNpdFJlYWRQcm9wRXhwcihhc3Q6IFJlYWRQcm9wRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgUmVhZFByb3BFeHByKFxuICAgICAgICAgICAgYXN0LnJlY2VpdmVyLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KSwgYXN0Lm5hbWUsIGFzdC50eXBlLCBhc3Quc291cmNlU3BhbiksXG4gICAgICAgIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRSZWFkS2V5RXhwcihhc3Q6IFJlYWRLZXlFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybUV4cHIoXG4gICAgICAgIG5ldyBSZWFkS2V5RXhwcihcbiAgICAgICAgICAgIGFzdC5yZWNlaXZlci52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksIGFzdC5pbmRleC52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksXG4gICAgICAgICAgICBhc3QudHlwZSwgYXN0LnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0TGl0ZXJhbEFycmF5RXhwcihhc3Q6IExpdGVyYWxBcnJheUV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtRXhwcihcbiAgICAgICAgbmV3IExpdGVyYWxBcnJheUV4cHIoXG4gICAgICAgICAgICB0aGlzLnZpc2l0QWxsRXhwcmVzc2lvbnMoYXN0LmVudHJpZXMsIGNvbnRleHQpLCBhc3QudHlwZSwgYXN0LnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0TGl0ZXJhbE1hcEV4cHIoYXN0OiBMaXRlcmFsTWFwRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBjb25zdCBlbnRyaWVzID0gYXN0LmVudHJpZXMubWFwKFxuICAgICAgICAoZW50cnkpOiBMaXRlcmFsTWFwRW50cnkgPT4gbmV3IExpdGVyYWxNYXBFbnRyeShcbiAgICAgICAgICAgIGVudHJ5LmtleSwgZW50cnkudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLCBlbnRyeS5xdW90ZWQpKTtcbiAgICBjb25zdCBtYXBUeXBlID0gbmV3IE1hcFR5cGUoYXN0LnZhbHVlVHlwZSwgbnVsbCk7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtRXhwcihuZXcgTGl0ZXJhbE1hcEV4cHIoZW50cmllcywgbWFwVHlwZSwgYXN0LnNvdXJjZVNwYW4pLCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdENvbW1hRXhwcihhc3Q6IENvbW1hRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1FeHByKFxuICAgICAgICBuZXcgQ29tbWFFeHByKHRoaXMudmlzaXRBbGxFeHByZXNzaW9ucyhhc3QucGFydHMsIGNvbnRleHQpLCBhc3Quc291cmNlU3BhbiksIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0QWxsRXhwcmVzc2lvbnMoZXhwcnM6IEV4cHJlc3Npb25bXSwgY29udGV4dDogYW55KTogRXhwcmVzc2lvbltdIHtcbiAgICByZXR1cm4gZXhwcnMubWFwKGV4cHIgPT4gZXhwci52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCkpO1xuICB9XG5cbiAgdmlzaXREZWNsYXJlVmFyU3RtdChzdG10OiBEZWNsYXJlVmFyU3RtdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBjb25zdCB2YWx1ZSA9IHN0bXQudmFsdWUgJiYgc3RtdC52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtU3RtdChcbiAgICAgICAgbmV3IERlY2xhcmVWYXJTdG10KHN0bXQubmFtZSwgdmFsdWUsIHN0bXQudHlwZSwgc3RtdC5tb2RpZmllcnMsIHN0bXQuc291cmNlU3BhbiksIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0RGVjbGFyZUZ1bmN0aW9uU3RtdChzdG10OiBEZWNsYXJlRnVuY3Rpb25TdG10LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybVN0bXQoXG4gICAgICAgIG5ldyBEZWNsYXJlRnVuY3Rpb25TdG10KFxuICAgICAgICAgICAgc3RtdC5uYW1lLCBzdG10LnBhcmFtcywgdGhpcy52aXNpdEFsbFN0YXRlbWVudHMoc3RtdC5zdGF0ZW1lbnRzLCBjb250ZXh0KSwgc3RtdC50eXBlLFxuICAgICAgICAgICAgc3RtdC5tb2RpZmllcnMsIHN0bXQuc291cmNlU3BhbiksXG4gICAgICAgIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRFeHByZXNzaW9uU3RtdChzdG10OiBFeHByZXNzaW9uU3RhdGVtZW50LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybVN0bXQoXG4gICAgICAgIG5ldyBFeHByZXNzaW9uU3RhdGVtZW50KHN0bXQuZXhwci52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCksIHN0bXQuc291cmNlU3BhbiksXG4gICAgICAgIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRSZXR1cm5TdG10KHN0bXQ6IFJldHVyblN0YXRlbWVudCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1TdG10KFxuICAgICAgICBuZXcgUmV0dXJuU3RhdGVtZW50KHN0bXQudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLCBzdG10LnNvdXJjZVNwYW4pLCBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0RGVjbGFyZUNsYXNzU3RtdChzdG10OiBDbGFzc1N0bXQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgY29uc3QgcGFyZW50ID0gc3RtdC5wYXJlbnQhLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KTtcbiAgICBjb25zdCBnZXR0ZXJzID0gc3RtdC5nZXR0ZXJzLm1hcChcbiAgICAgICAgZ2V0dGVyID0+IG5ldyBDbGFzc0dldHRlcihcbiAgICAgICAgICAgIGdldHRlci5uYW1lLCB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhnZXR0ZXIuYm9keSwgY29udGV4dCksIGdldHRlci50eXBlLFxuICAgICAgICAgICAgZ2V0dGVyLm1vZGlmaWVycykpO1xuICAgIGNvbnN0IGN0b3JNZXRob2QgPSBzdG10LmNvbnN0cnVjdG9yTWV0aG9kICYmXG4gICAgICAgIG5ldyBDbGFzc01ldGhvZChzdG10LmNvbnN0cnVjdG9yTWV0aG9kLm5hbWUsIHN0bXQuY29uc3RydWN0b3JNZXRob2QucGFyYW1zLFxuICAgICAgICAgICAgICAgICAgICAgICAgdGhpcy52aXNpdEFsbFN0YXRlbWVudHMoc3RtdC5jb25zdHJ1Y3Rvck1ldGhvZC5ib2R5LCBjb250ZXh0KSxcbiAgICAgICAgICAgICAgICAgICAgICAgIHN0bXQuY29uc3RydWN0b3JNZXRob2QudHlwZSwgc3RtdC5jb25zdHJ1Y3Rvck1ldGhvZC5tb2RpZmllcnMpO1xuICAgIGNvbnN0IG1ldGhvZHMgPSBzdG10Lm1ldGhvZHMubWFwKFxuICAgICAgICBtZXRob2QgPT4gbmV3IENsYXNzTWV0aG9kKFxuICAgICAgICAgICAgbWV0aG9kLm5hbWUsIG1ldGhvZC5wYXJhbXMsIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKG1ldGhvZC5ib2R5LCBjb250ZXh0KSwgbWV0aG9kLnR5cGUsXG4gICAgICAgICAgICBtZXRob2QubW9kaWZpZXJzKSk7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtU3RtdChcbiAgICAgICAgbmV3IENsYXNzU3RtdChcbiAgICAgICAgICAgIHN0bXQubmFtZSwgcGFyZW50LCBzdG10LmZpZWxkcywgZ2V0dGVycywgY3Rvck1ldGhvZCwgbWV0aG9kcywgc3RtdC5tb2RpZmllcnMsXG4gICAgICAgICAgICBzdG10LnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0SWZTdG10KHN0bXQ6IElmU3RtdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1TdG10KFxuICAgICAgICBuZXcgSWZTdG10KFxuICAgICAgICAgICAgc3RtdC5jb25kaXRpb24udmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLFxuICAgICAgICAgICAgdGhpcy52aXNpdEFsbFN0YXRlbWVudHMoc3RtdC50cnVlQ2FzZSwgY29udGV4dCksXG4gICAgICAgICAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LmZhbHNlQ2FzZSwgY29udGV4dCksIHN0bXQuc291cmNlU3BhbiksXG4gICAgICAgIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRUcnlDYXRjaFN0bXQoc3RtdDogVHJ5Q2F0Y2hTdG10LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybVN0bXQoXG4gICAgICAgIG5ldyBUcnlDYXRjaFN0bXQoXG4gICAgICAgICAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LmJvZHlTdG10cywgY29udGV4dCksXG4gICAgICAgICAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LmNhdGNoU3RtdHMsIGNvbnRleHQpLCBzdG10LnNvdXJjZVNwYW4pLFxuICAgICAgICBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0VGhyb3dTdG10KHN0bXQ6IFRocm93U3RtdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy50cmFuc2Zvcm1TdG10KFxuICAgICAgICBuZXcgVGhyb3dTdG10KHN0bXQuZXJyb3IudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpLCBzdG10LnNvdXJjZVNwYW4pLCBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0Q29tbWVudFN0bXQoc3RtdDogQ29tbWVudFN0bXQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtU3RtdChzdG10LCBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0SlNEb2NDb21tZW50U3RtdChzdG10OiBKU0RvY0NvbW1lbnRTdG10LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnRyYW5zZm9ybVN0bXQoc3RtdCwgY29udGV4dCk7XG4gIH1cblxuICB2aXNpdEFsbFN0YXRlbWVudHMoc3RtdHM6IFN0YXRlbWVudFtdLCBjb250ZXh0OiBhbnkpOiBTdGF0ZW1lbnRbXSB7XG4gICAgcmV0dXJuIHN0bXRzLm1hcChzdG10ID0+IHN0bXQudmlzaXRTdGF0ZW1lbnQodGhpcywgY29udGV4dCkpO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIFJlY3Vyc2l2ZUFzdFZpc2l0b3IgaW1wbGVtZW50cyBTdGF0ZW1lbnRWaXNpdG9yLCBFeHByZXNzaW9uVmlzaXRvciB7XG4gIHZpc2l0VHlwZShhc3Q6IFR5cGUsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIGFzdDtcbiAgfVxuICB2aXNpdEV4cHJlc3Npb24oYXN0OiBFeHByZXNzaW9uLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGlmIChhc3QudHlwZSkge1xuICAgICAgYXN0LnR5cGUudmlzaXRUeXBlKHRoaXMsIGNvbnRleHQpO1xuICAgIH1cbiAgICByZXR1cm4gYXN0O1xuICB9XG4gIHZpc2l0QnVpbHRpblR5cGUodHlwZTogQnVpbHRpblR5cGUsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRUeXBlKHR5cGUsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0RXhwcmVzc2lvblR5cGUodHlwZTogRXhwcmVzc2lvblR5cGUsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgdHlwZS52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgaWYgKHR5cGUudHlwZVBhcmFtcyAhPT0gbnVsbCkge1xuICAgICAgdHlwZS50eXBlUGFyYW1zLmZvckVhY2gocGFyYW0gPT4gdGhpcy52aXNpdFR5cGUocGFyYW0sIGNvbnRleHQpKTtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMudmlzaXRUeXBlKHR5cGUsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0QXJyYXlUeXBlKHR5cGU6IEFycmF5VHlwZSwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy52aXNpdFR5cGUodHlwZSwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRNYXBUeXBlKHR5cGU6IE1hcFR5cGUsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRUeXBlKHR5cGUsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0V3JhcHBlZE5vZGVFeHByKGFzdDogV3JhcHBlZE5vZGVFeHByPGFueT4sIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIGFzdDtcbiAgfVxuICB2aXNpdFR5cGVvZkV4cHIoYXN0OiBUeXBlb2ZFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0UmVhZFZhckV4cHIoYXN0OiBSZWFkVmFyRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy52aXNpdEV4cHJlc3Npb24oYXN0LCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdFdyaXRlVmFyRXhwcihhc3Q6IFdyaXRlVmFyRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBhc3QudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0V3JpdGVLZXlFeHByKGFzdDogV3JpdGVLZXlFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC5yZWNlaXZlci52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgYXN0LmluZGV4LnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KTtcbiAgICBhc3QudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0V3JpdGVQcm9wRXhwcihhc3Q6IFdyaXRlUHJvcEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgYXN0LnJlY2VpdmVyLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KTtcbiAgICBhc3QudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0SW52b2tlTWV0aG9kRXhwcihhc3Q6IEludm9rZU1ldGhvZEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgYXN0LnJlY2VpdmVyLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KTtcbiAgICB0aGlzLnZpc2l0QWxsRXhwcmVzc2lvbnMoYXN0LmFyZ3MsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0SW52b2tlRnVuY3Rpb25FeHByKGFzdDogSW52b2tlRnVuY3Rpb25FeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC5mbi52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgdGhpcy52aXNpdEFsbEV4cHJlc3Npb25zKGFzdC5hcmdzLCBjb250ZXh0KTtcbiAgICByZXR1cm4gdGhpcy52aXNpdEV4cHJlc3Npb24oYXN0LCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdEluc3RhbnRpYXRlRXhwcihhc3Q6IEluc3RhbnRpYXRlRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBhc3QuY2xhc3NFeHByLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KTtcbiAgICB0aGlzLnZpc2l0QWxsRXhwcmVzc2lvbnMoYXN0LmFyZ3MsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0TGl0ZXJhbEV4cHIoYXN0OiBMaXRlcmFsRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy52aXNpdEV4cHJlc3Npb24oYXN0LCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdExvY2FsaXplZFN0cmluZyhhc3Q6IExvY2FsaXplZFN0cmluZywgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy52aXNpdEV4cHJlc3Npb24oYXN0LCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdEV4dGVybmFsRXhwcihhc3Q6IEV4dGVybmFsRXhwciwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBpZiAoYXN0LnR5cGVQYXJhbXMpIHtcbiAgICAgIGFzdC50eXBlUGFyYW1zLmZvckVhY2godHlwZSA9PiB0eXBlLnZpc2l0VHlwZSh0aGlzLCBjb250ZXh0KSk7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0Q29uZGl0aW9uYWxFeHByKGFzdDogQ29uZGl0aW9uYWxFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC5jb25kaXRpb24udmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIGFzdC50cnVlQ2FzZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgYXN0LmZhbHNlQ2FzZSEudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0Tm90RXhwcihhc3Q6IE5vdEV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgYXN0LmNvbmRpdGlvbi52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRBc3NlcnROb3ROdWxsRXhwcihhc3Q6IEFzc2VydE5vdE51bGwsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgYXN0LmNvbmRpdGlvbi52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRDYXN0RXhwcihhc3Q6IENhc3RFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRGdW5jdGlvbkV4cHIoYXN0OiBGdW5jdGlvbkV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgdGhpcy52aXNpdEFsbFN0YXRlbWVudHMoYXN0LnN0YXRlbWVudHMsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0QmluYXJ5T3BlcmF0b3JFeHByKGFzdDogQmluYXJ5T3BlcmF0b3JFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC5saHMudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIGFzdC5yaHMudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0UmVhZFByb3BFeHByKGFzdDogUmVhZFByb3BFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC5yZWNlaXZlci52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRSZWFkS2V5RXhwcihhc3Q6IFJlYWRLZXlFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC5yZWNlaXZlci52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgYXN0LmluZGV4LnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjb250ZXh0KTtcbiAgICByZXR1cm4gdGhpcy52aXNpdEV4cHJlc3Npb24oYXN0LCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdExpdGVyYWxBcnJheUV4cHIoYXN0OiBMaXRlcmFsQXJyYXlFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHRoaXMudmlzaXRBbGxFeHByZXNzaW9ucyhhc3QuZW50cmllcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKGFzdCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRMaXRlcmFsTWFwRXhwcihhc3Q6IExpdGVyYWxNYXBFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGFzdC5lbnRyaWVzLmZvckVhY2goKGVudHJ5KSA9PiBlbnRyeS52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCkpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0Q29tbWFFeHByKGFzdDogQ29tbWFFeHByLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHRoaXMudmlzaXRBbGxFeHByZXNzaW9ucyhhc3QucGFydHMsIGNvbnRleHQpO1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihhc3QsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0QWxsRXhwcmVzc2lvbnMoZXhwcnM6IEV4cHJlc3Npb25bXSwgY29udGV4dDogYW55KTogdm9pZCB7XG4gICAgZXhwcnMuZm9yRWFjaChleHByID0+IGV4cHIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpKTtcbiAgfVxuXG4gIHZpc2l0RGVjbGFyZVZhclN0bXQoc3RtdDogRGVjbGFyZVZhclN0bXQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgaWYgKHN0bXQudmFsdWUpIHtcbiAgICAgIHN0bXQudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIH1cbiAgICBpZiAoc3RtdC50eXBlKSB7XG4gICAgICBzdG10LnR5cGUudmlzaXRUeXBlKHRoaXMsIGNvbnRleHQpO1xuICAgIH1cbiAgICByZXR1cm4gc3RtdDtcbiAgfVxuICB2aXNpdERlY2xhcmVGdW5jdGlvblN0bXQoc3RtdDogRGVjbGFyZUZ1bmN0aW9uU3RtdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LnN0YXRlbWVudHMsIGNvbnRleHQpO1xuICAgIGlmIChzdG10LnR5cGUpIHtcbiAgICAgIHN0bXQudHlwZS52aXNpdFR5cGUodGhpcywgY29udGV4dCk7XG4gICAgfVxuICAgIHJldHVybiBzdG10O1xuICB9XG4gIHZpc2l0RXhwcmVzc2lvblN0bXQoc3RtdDogRXhwcmVzc2lvblN0YXRlbWVudCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBzdG10LmV4cHIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHJldHVybiBzdG10O1xuICB9XG4gIHZpc2l0UmV0dXJuU3RtdChzdG10OiBSZXR1cm5TdGF0ZW1lbnQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgc3RtdC52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgY29udGV4dCk7XG4gICAgcmV0dXJuIHN0bXQ7XG4gIH1cbiAgdmlzaXREZWNsYXJlQ2xhc3NTdG10KHN0bXQ6IENsYXNzU3RtdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBzdG10LnBhcmVudCEudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHN0bXQuZ2V0dGVycy5mb3JFYWNoKGdldHRlciA9PiB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhnZXR0ZXIuYm9keSwgY29udGV4dCkpO1xuICAgIGlmIChzdG10LmNvbnN0cnVjdG9yTWV0aG9kKSB7XG4gICAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LmNvbnN0cnVjdG9yTWV0aG9kLmJvZHksIGNvbnRleHQpO1xuICAgIH1cbiAgICBzdG10Lm1ldGhvZHMuZm9yRWFjaChtZXRob2QgPT4gdGhpcy52aXNpdEFsbFN0YXRlbWVudHMobWV0aG9kLmJvZHksIGNvbnRleHQpKTtcbiAgICByZXR1cm4gc3RtdDtcbiAgfVxuICB2aXNpdElmU3RtdChzdG10OiBJZlN0bXQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgc3RtdC5jb25kaXRpb24udmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXQudHJ1ZUNhc2UsIGNvbnRleHQpO1xuICAgIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXQuZmFsc2VDYXNlLCBjb250ZXh0KTtcbiAgICByZXR1cm4gc3RtdDtcbiAgfVxuICB2aXNpdFRyeUNhdGNoU3RtdChzdG10OiBUcnlDYXRjaFN0bXQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgdGhpcy52aXNpdEFsbFN0YXRlbWVudHMoc3RtdC5ib2R5U3RtdHMsIGNvbnRleHQpO1xuICAgIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXQuY2F0Y2hTdG10cywgY29udGV4dCk7XG4gICAgcmV0dXJuIHN0bXQ7XG4gIH1cbiAgdmlzaXRUaHJvd1N0bXQoc3RtdDogVGhyb3dTdG10LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHN0bXQuZXJyb3IudmlzaXRFeHByZXNzaW9uKHRoaXMsIGNvbnRleHQpO1xuICAgIHJldHVybiBzdG10O1xuICB9XG4gIHZpc2l0Q29tbWVudFN0bXQoc3RtdDogQ29tbWVudFN0bXQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHN0bXQ7XG4gIH1cbiAgdmlzaXRKU0RvY0NvbW1lbnRTdG10KHN0bXQ6IEpTRG9jQ29tbWVudFN0bXQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHN0bXQ7XG4gIH1cbiAgdmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXRzOiBTdGF0ZW1lbnRbXSwgY29udGV4dDogYW55KTogdm9pZCB7XG4gICAgc3RtdHMuZm9yRWFjaChzdG10ID0+IHN0bXQudmlzaXRTdGF0ZW1lbnQodGhpcywgY29udGV4dCkpO1xuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBmaW5kUmVhZFZhck5hbWVzKHN0bXRzOiBTdGF0ZW1lbnRbXSk6IFNldDxzdHJpbmc+IHtcbiAgY29uc3QgdmlzaXRvciA9IG5ldyBfUmVhZFZhclZpc2l0b3IoKTtcbiAgdmlzaXRvci52aXNpdEFsbFN0YXRlbWVudHMoc3RtdHMsIG51bGwpO1xuICByZXR1cm4gdmlzaXRvci52YXJOYW1lcztcbn1cblxuY2xhc3MgX1JlYWRWYXJWaXNpdG9yIGV4dGVuZHMgUmVjdXJzaXZlQXN0VmlzaXRvciB7XG4gIHZhck5hbWVzID0gbmV3IFNldDxzdHJpbmc+KCk7XG4gIHZpc2l0RGVjbGFyZUZ1bmN0aW9uU3RtdChzdG10OiBEZWNsYXJlRnVuY3Rpb25TdG10LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIC8vIERvbid0IGRlc2NlbmQgaW50byBuZXN0ZWQgZnVuY3Rpb25zXG4gICAgcmV0dXJuIHN0bXQ7XG4gIH1cbiAgdmlzaXREZWNsYXJlQ2xhc3NTdG10KHN0bXQ6IENsYXNzU3RtdCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICAvLyBEb24ndCBkZXNjZW5kIGludG8gbmVzdGVkIGNsYXNzZXNcbiAgICByZXR1cm4gc3RtdDtcbiAgfVxuICB2aXNpdFJlYWRWYXJFeHByKGFzdDogUmVhZFZhckV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgaWYgKGFzdC5uYW1lKSB7XG4gICAgICB0aGlzLnZhck5hbWVzLmFkZChhc3QubmFtZSk7XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBjb2xsZWN0RXh0ZXJuYWxSZWZlcmVuY2VzKHN0bXRzOiBTdGF0ZW1lbnRbXSk6IEV4dGVybmFsUmVmZXJlbmNlW10ge1xuICBjb25zdCB2aXNpdG9yID0gbmV3IF9GaW5kRXh0ZXJuYWxSZWZlcmVuY2VzVmlzaXRvcigpO1xuICB2aXNpdG9yLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10cywgbnVsbCk7XG4gIHJldHVybiB2aXNpdG9yLmV4dGVybmFsUmVmZXJlbmNlcztcbn1cblxuY2xhc3MgX0ZpbmRFeHRlcm5hbFJlZmVyZW5jZXNWaXNpdG9yIGV4dGVuZHMgUmVjdXJzaXZlQXN0VmlzaXRvciB7XG4gIGV4dGVybmFsUmVmZXJlbmNlczogRXh0ZXJuYWxSZWZlcmVuY2VbXSA9IFtdO1xuICB2aXNpdEV4dGVybmFsRXhwcihlOiBFeHRlcm5hbEV4cHIsIGNvbnRleHQ6IGFueSkge1xuICAgIHRoaXMuZXh0ZXJuYWxSZWZlcmVuY2VzLnB1c2goZS52YWx1ZSk7XG4gICAgcmV0dXJuIHN1cGVyLnZpc2l0RXh0ZXJuYWxFeHByKGUsIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBhcHBseVNvdXJjZVNwYW5Ub1N0YXRlbWVudElmTmVlZGVkKFxuICAgIHN0bXQ6IFN0YXRlbWVudCwgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFufG51bGwpOiBTdGF0ZW1lbnQge1xuICBpZiAoIXNvdXJjZVNwYW4pIHtcbiAgICByZXR1cm4gc3RtdDtcbiAgfVxuICBjb25zdCB0cmFuc2Zvcm1lciA9IG5ldyBfQXBwbHlTb3VyY2VTcGFuVHJhbnNmb3JtZXIoc291cmNlU3Bhbik7XG4gIHJldHVybiBzdG10LnZpc2l0U3RhdGVtZW50KHRyYW5zZm9ybWVyLCBudWxsKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGFwcGx5U291cmNlU3BhblRvRXhwcmVzc2lvbklmTmVlZGVkKFxuICAgIGV4cHI6IEV4cHJlc3Npb24sIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbnxudWxsKTogRXhwcmVzc2lvbiB7XG4gIGlmICghc291cmNlU3Bhbikge1xuICAgIHJldHVybiBleHByO1xuICB9XG4gIGNvbnN0IHRyYW5zZm9ybWVyID0gbmV3IF9BcHBseVNvdXJjZVNwYW5UcmFuc2Zvcm1lcihzb3VyY2VTcGFuKTtcbiAgcmV0dXJuIGV4cHIudmlzaXRFeHByZXNzaW9uKHRyYW5zZm9ybWVyLCBudWxsKTtcbn1cblxuY2xhc3MgX0FwcGx5U291cmNlU3BhblRyYW5zZm9ybWVyIGV4dGVuZHMgQXN0VHJhbnNmb3JtZXIge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3Bhbikge1xuICAgIHN1cGVyKCk7XG4gIH1cbiAgcHJpdmF0ZSBfY2xvbmUob2JqOiBhbnkpOiBhbnkge1xuICAgIGNvbnN0IGNsb25lID0gT2JqZWN0LmNyZWF0ZShvYmouY29uc3RydWN0b3IucHJvdG90eXBlKTtcbiAgICBmb3IgKGxldCBwcm9wIG9mIE9iamVjdC5rZXlzKG9iaikpIHtcbiAgICAgIGNsb25lW3Byb3BdID0gb2JqW3Byb3BdO1xuICAgIH1cbiAgICByZXR1cm4gY2xvbmU7XG4gIH1cblxuICB0cmFuc2Zvcm1FeHByKGV4cHI6IEV4cHJlc3Npb24sIGNvbnRleHQ6IGFueSk6IEV4cHJlc3Npb24ge1xuICAgIGlmICghZXhwci5zb3VyY2VTcGFuKSB7XG4gICAgICBleHByID0gdGhpcy5fY2xvbmUoZXhwcik7XG4gICAgICBleHByLnNvdXJjZVNwYW4gPSB0aGlzLnNvdXJjZVNwYW47XG4gICAgfVxuICAgIHJldHVybiBleHByO1xuICB9XG5cbiAgdHJhbnNmb3JtU3RtdChzdG10OiBTdGF0ZW1lbnQsIGNvbnRleHQ6IGFueSk6IFN0YXRlbWVudCB7XG4gICAgaWYgKCFzdG10LnNvdXJjZVNwYW4pIHtcbiAgICAgIHN0bXQgPSB0aGlzLl9jbG9uZShzdG10KTtcbiAgICAgIHN0bXQuc291cmNlU3BhbiA9IHRoaXMuc291cmNlU3BhbjtcbiAgICB9XG4gICAgcmV0dXJuIHN0bXQ7XG4gIH1cbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHZhcmlhYmxlKFxuICAgIG5hbWU6IHN0cmluZywgdHlwZT86IFR5cGV8bnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogUmVhZFZhckV4cHIge1xuICByZXR1cm4gbmV3IFJlYWRWYXJFeHByKG5hbWUsIHR5cGUsIHNvdXJjZVNwYW4pO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaW1wb3J0RXhwcihcbiAgICBpZDogRXh0ZXJuYWxSZWZlcmVuY2UsIHR5cGVQYXJhbXM6IFR5cGVbXXxudWxsID0gbnVsbCxcbiAgICBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOiBFeHRlcm5hbEV4cHIge1xuICByZXR1cm4gbmV3IEV4dGVybmFsRXhwcihpZCwgbnVsbCwgdHlwZVBhcmFtcywgc291cmNlU3Bhbik7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpbXBvcnRUeXBlKFxuICAgIGlkOiBFeHRlcm5hbFJlZmVyZW5jZSwgdHlwZVBhcmFtczogVHlwZVtdfG51bGwgPSBudWxsLFxuICAgIHR5cGVNb2RpZmllcnM6IFR5cGVNb2RpZmllcltdfG51bGwgPSBudWxsKTogRXhwcmVzc2lvblR5cGV8bnVsbCB7XG4gIHJldHVybiBpZCAhPSBudWxsID8gZXhwcmVzc2lvblR5cGUoaW1wb3J0RXhwcihpZCwgdHlwZVBhcmFtcywgbnVsbCksIHR5cGVNb2RpZmllcnMpIDogbnVsbDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGV4cHJlc3Npb25UeXBlKFxuICAgIGV4cHI6IEV4cHJlc3Npb24sIHR5cGVNb2RpZmllcnM6IFR5cGVNb2RpZmllcltdfG51bGwgPSBudWxsLFxuICAgIHR5cGVQYXJhbXM6IFR5cGVbXXxudWxsID0gbnVsbCk6IEV4cHJlc3Npb25UeXBlIHtcbiAgcmV0dXJuIG5ldyBFeHByZXNzaW9uVHlwZShleHByLCB0eXBlTW9kaWZpZXJzLCB0eXBlUGFyYW1zKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHR5cGVvZkV4cHIoZXhwcjogRXhwcmVzc2lvbikge1xuICByZXR1cm4gbmV3IFR5cGVvZkV4cHIoZXhwcik7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBsaXRlcmFsQXJyKFxuICAgIHZhbHVlczogRXhwcmVzc2lvbltdLCB0eXBlPzogVHlwZXxudWxsLCBzb3VyY2VTcGFuPzogUGFyc2VTb3VyY2VTcGFufG51bGwpOiBMaXRlcmFsQXJyYXlFeHByIHtcbiAgcmV0dXJuIG5ldyBMaXRlcmFsQXJyYXlFeHByKHZhbHVlcywgdHlwZSwgc291cmNlU3Bhbik7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBsaXRlcmFsTWFwKFxuICAgIHZhbHVlczoge2tleTogc3RyaW5nLCBxdW90ZWQ6IGJvb2xlYW4sIHZhbHVlOiBFeHByZXNzaW9ufVtdLFxuICAgIHR5cGU6IE1hcFR5cGV8bnVsbCA9IG51bGwpOiBMaXRlcmFsTWFwRXhwciB7XG4gIHJldHVybiBuZXcgTGl0ZXJhbE1hcEV4cHIoXG4gICAgICB2YWx1ZXMubWFwKGUgPT4gbmV3IExpdGVyYWxNYXBFbnRyeShlLmtleSwgZS52YWx1ZSwgZS5xdW90ZWQpKSwgdHlwZSwgbnVsbCk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBub3QoZXhwcjogRXhwcmVzc2lvbiwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogTm90RXhwciB7XG4gIHJldHVybiBuZXcgTm90RXhwcihleHByLCBzb3VyY2VTcGFuKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGFzc2VydE5vdE51bGwoZXhwcjogRXhwcmVzc2lvbiwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogQXNzZXJ0Tm90TnVsbCB7XG4gIHJldHVybiBuZXcgQXNzZXJ0Tm90TnVsbChleHByLCBzb3VyY2VTcGFuKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGZuKFxuICAgIHBhcmFtczogRm5QYXJhbVtdLCBib2R5OiBTdGF0ZW1lbnRbXSwgdHlwZT86IFR5cGV8bnVsbCwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsLFxuICAgIG5hbWU/OiBzdHJpbmd8bnVsbCk6IEZ1bmN0aW9uRXhwciB7XG4gIHJldHVybiBuZXcgRnVuY3Rpb25FeHByKHBhcmFtcywgYm9keSwgdHlwZSwgc291cmNlU3BhbiwgbmFtZSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpZlN0bXQoY29uZGl0aW9uOiBFeHByZXNzaW9uLCB0aGVuQ2xhdXNlOiBTdGF0ZW1lbnRbXSwgZWxzZUNsYXVzZT86IFN0YXRlbWVudFtdKSB7XG4gIHJldHVybiBuZXcgSWZTdG10KGNvbmRpdGlvbiwgdGhlbkNsYXVzZSwgZWxzZUNsYXVzZSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBsaXRlcmFsKFxuICAgIHZhbHVlOiBhbnksIHR5cGU/OiBUeXBlfG51bGwsIHNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW58bnVsbCk6IExpdGVyYWxFeHByIHtcbiAgcmV0dXJuIG5ldyBMaXRlcmFsRXhwcih2YWx1ZSwgdHlwZSwgc291cmNlU3Bhbik7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBsb2NhbGl6ZWRTdHJpbmcoXG4gICAgbWV0YUJsb2NrOiBJMThuTWV0YSwgbWVzc2FnZVBhcnRzOiBzdHJpbmdbXSwgcGxhY2Vob2xkZXJOYW1lczogc3RyaW5nW10sXG4gICAgZXhwcmVzc2lvbnM6IEV4cHJlc3Npb25bXSwgc291cmNlU3Bhbj86IFBhcnNlU291cmNlU3BhbnxudWxsKTogTG9jYWxpemVkU3RyaW5nIHtcbiAgcmV0dXJuIG5ldyBMb2NhbGl6ZWRTdHJpbmcobWV0YUJsb2NrLCBtZXNzYWdlUGFydHMsIHBsYWNlaG9sZGVyTmFtZXMsIGV4cHJlc3Npb25zLCBzb3VyY2VTcGFuKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGlzTnVsbChleHA6IEV4cHJlc3Npb24pOiBib29sZWFuIHtcbiAgcmV0dXJuIGV4cCBpbnN0YW5jZW9mIExpdGVyYWxFeHByICYmIGV4cC52YWx1ZSA9PT0gbnVsbDtcbn1cblxuLy8gVGhlIGxpc3Qgb2YgSlNEb2MgdGFncyB0aGF0IHdlIGN1cnJlbnRseSBzdXBwb3J0LiBFeHRlbmQgaXQgaWYgbmVlZGVkLlxuZXhwb3J0IGNvbnN0IGVudW0gSlNEb2NUYWdOYW1lIHtcbiAgRGVzYyA9ICdkZXNjJyxcbiAgSWQgPSAnaWQnLFxuICBNZWFuaW5nID0gJ21lYW5pbmcnLFxufVxuXG4vKlxuICogVHlwZVNjcmlwdCBoYXMgYW4gQVBJIGZvciBKU0RvYyBhbHJlYWR5LCBidXQgaXQncyBub3QgZXhwb3NlZC5cbiAqIGh0dHBzOi8vZ2l0aHViLmNvbS9NaWNyb3NvZnQvVHlwZVNjcmlwdC9pc3N1ZXMvNzM5M1xuICogRm9yIG5vdyB3ZSBjcmVhdGUgdHlwZXMgdGhhdCBhcmUgc2ltaWxhciB0byB0aGVpcnMgc28gdGhhdCBtaWdyYXRpbmdcbiAqIHRvIHRoZWlyIEFQSSB3aWxsIGJlIGVhc2llci4gU2VlIGUuZy4gYHRzLkpTRG9jVGFnYCBhbmQgYHRzLkpTRG9jQ29tbWVudGAuXG4gKi9cbmV4cG9ydCB0eXBlIEpTRG9jVGFnID0ge1xuICAvLyBgdGFnTmFtZWAgaXMgZS5nLiBcInBhcmFtXCIgaW4gYW4gYEBwYXJhbWAgZGVjbGFyYXRpb25cbiAgdGFnTmFtZTogSlNEb2NUYWdOYW1lfHN0cmluZyxcbiAgLy8gQW55IHJlbWFpbmluZyB0ZXh0IG9uIHRoZSB0YWcsIGUuZy4gdGhlIGRlc2NyaXB0aW9uXG4gIHRleHQ/OiBzdHJpbmcsXG59fHtcbiAgLy8gbm8gYHRhZ05hbWVgIGZvciBwbGFpbiB0ZXh0IGRvY3VtZW50YXRpb24gdGhhdCBvY2N1cnMgYmVmb3JlIGFueSBgQHBhcmFtYCBsaW5lc1xuICB0YWdOYW1lPzogdW5kZWZpbmVkLCB0ZXh0OiBzdHJpbmcsXG59O1xuXG4vKlxuICogU2VyaWFsaXplcyBhIGBUYWdgIGludG8gYSBzdHJpbmcuXG4gKiBSZXR1cm5zIGEgc3RyaW5nIGxpa2UgXCIgQGZvbyB7YmFyfSBiYXpcIiAobm90ZSB0aGUgbGVhZGluZyB3aGl0ZXNwYWNlIGJlZm9yZSBgQGZvb2ApLlxuICovXG5mdW5jdGlvbiB0YWdUb1N0cmluZyh0YWc6IEpTRG9jVGFnKTogc3RyaW5nIHtcbiAgbGV0IG91dCA9ICcnO1xuICBpZiAodGFnLnRhZ05hbWUpIHtcbiAgICBvdXQgKz0gYCBAJHt0YWcudGFnTmFtZX1gO1xuICB9XG4gIGlmICh0YWcudGV4dCkge1xuICAgIGlmICh0YWcudGV4dC5tYXRjaCgvXFwvXFwqfFxcKlxcLy8pKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoJ0pTRG9jIHRleHQgY2Fubm90IGNvbnRhaW4gXCIvKlwiIGFuZCBcIiovXCInKTtcbiAgICB9XG4gICAgb3V0ICs9ICcgJyArIHRhZy50ZXh0LnJlcGxhY2UoL0AvZywgJ1xcXFxAJyk7XG4gIH1cbiAgcmV0dXJuIG91dDtcbn1cblxuZnVuY3Rpb24gc2VyaWFsaXplVGFncyh0YWdzOiBKU0RvY1RhZ1tdKTogc3RyaW5nIHtcbiAgaWYgKHRhZ3MubGVuZ3RoID09PSAwKSByZXR1cm4gJyc7XG5cbiAgbGV0IG91dCA9ICcqXFxuJztcbiAgZm9yIChjb25zdCB0YWcgb2YgdGFncykge1xuICAgIG91dCArPSAnIConO1xuICAgIC8vIElmIHRoZSB0YWdUb1N0cmluZyBpcyBtdWx0aS1saW5lLCBpbnNlcnQgXCIgKiBcIiBwcmVmaXhlcyBvbiBzdWJzZXF1ZW50IGxpbmVzLlxuICAgIG91dCArPSB0YWdUb1N0cmluZyh0YWcpLnJlcGxhY2UoL1xcbi9nLCAnXFxuICogJyk7XG4gICAgb3V0ICs9ICdcXG4nO1xuICB9XG4gIG91dCArPSAnICc7XG4gIHJldHVybiBvdXQ7XG59XG4iXX0=