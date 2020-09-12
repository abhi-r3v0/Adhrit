/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { InterpolationConfig } from '../ml_parser/interpolation_config';
import { AST, ASTWithSource, AbsoluteSourceSpan, AstVisitor, Binary, BindingPipe, Chain, Conditional, FunctionCall, ImplicitReceiver, Interpolation, KeyedRead, KeyedWrite, LiteralArray, LiteralMap, LiteralPrimitive, MethodCall, NonNullAssert, ParseSpan, ParserError, PrefixNot, PropertyRead, PropertyWrite, Quote, SafeMethodCall, SafePropertyRead, TemplateBinding } from './ast';
import { Lexer, Token } from './lexer';
export declare class SplitInterpolation {
    strings: string[];
    expressions: string[];
    offsets: number[];
    constructor(strings: string[], expressions: string[], offsets: number[]);
}
export declare class TemplateBindingParseResult {
    templateBindings: TemplateBinding[];
    warnings: string[];
    errors: ParserError[];
    constructor(templateBindings: TemplateBinding[], warnings: string[], errors: ParserError[]);
}
export declare class Parser {
    private _lexer;
    private errors;
    constructor(_lexer: Lexer);
    simpleExpressionChecker: typeof SimpleExpressionChecker;
    parseAction(input: string, location: any, absoluteOffset: number, interpolationConfig?: InterpolationConfig): ASTWithSource;
    parseBinding(input: string, location: any, absoluteOffset: number, interpolationConfig?: InterpolationConfig): ASTWithSource;
    private checkSimpleExpression;
    parseSimpleBinding(input: string, location: string, absoluteOffset: number, interpolationConfig?: InterpolationConfig): ASTWithSource;
    private _reportError;
    private _parseBindingAst;
    private _parseQuote;
    parseTemplateBindings(tplKey: string, tplValue: string, location: any, absoluteOffset: number): TemplateBindingParseResult;
    parseInterpolation(input: string, location: any, absoluteOffset: number, interpolationConfig?: InterpolationConfig): ASTWithSource | null;
    splitInterpolation(input: string, location: string, interpolationConfig?: InterpolationConfig): SplitInterpolation | null;
    wrapLiteralPrimitive(input: string | null, location: any, absoluteOffset: number): ASTWithSource;
    private _stripComments;
    private _commentStart;
    private _checkNoInterpolation;
    private _findInterpolationErrorColumn;
}
export declare class IvyParser extends Parser {
    simpleExpressionChecker: typeof IvySimpleExpressionChecker;
}
export declare class _ParseAST {
    input: string;
    location: any;
    absoluteOffset: number;
    tokens: Token[];
    inputLength: number;
    parseAction: boolean;
    private errors;
    private offset;
    private rparensExpected;
    private rbracketsExpected;
    private rbracesExpected;
    private sourceSpanCache;
    index: number;
    constructor(input: string, location: any, absoluteOffset: number, tokens: Token[], inputLength: number, parseAction: boolean, errors: ParserError[], offset: number);
    peek(offset: number): Token;
    get next(): Token;
    get inputIndex(): number;
    span(start: number): ParseSpan;
    sourceSpan(start: number): AbsoluteSourceSpan;
    advance(): void;
    optionalCharacter(code: number): boolean;
    peekKeywordLet(): boolean;
    peekKeywordAs(): boolean;
    expectCharacter(code: number): void;
    optionalOperator(op: string): boolean;
    expectOperator(operator: string): void;
    expectIdentifierOrKeyword(): string;
    expectIdentifierOrKeywordOrString(): string;
    parseChain(): AST;
    parsePipe(): AST;
    parseExpression(): AST;
    parseConditional(): AST;
    parseLogicalOr(): AST;
    parseLogicalAnd(): AST;
    parseEquality(): AST;
    parseRelational(): AST;
    parseAdditive(): AST;
    parseMultiplicative(): AST;
    parsePrefix(): AST;
    parseCallChain(): AST;
    parsePrimary(): AST;
    parseExpressionList(terminator: number): AST[];
    parseLiteralMap(): LiteralMap;
    parseAccessMemberOrMethodCall(receiver: AST, isSafe?: boolean): AST;
    parseCallArguments(): BindingPipe[];
    /**
     * An identifier, a keyword, a string with an optional `-` in between.
     */
    expectTemplateBindingKey(): string;
    parseTemplateBindings(tplKey: string): TemplateBindingParseResult;
    error(message: string, index?: number | null): void;
    private locationText;
    private skip;
}
declare class SimpleExpressionChecker implements AstVisitor {
    errors: string[];
    visitImplicitReceiver(ast: ImplicitReceiver, context: any): void;
    visitInterpolation(ast: Interpolation, context: any): void;
    visitLiteralPrimitive(ast: LiteralPrimitive, context: any): void;
    visitPropertyRead(ast: PropertyRead, context: any): void;
    visitPropertyWrite(ast: PropertyWrite, context: any): void;
    visitSafePropertyRead(ast: SafePropertyRead, context: any): void;
    visitMethodCall(ast: MethodCall, context: any): void;
    visitSafeMethodCall(ast: SafeMethodCall, context: any): void;
    visitFunctionCall(ast: FunctionCall, context: any): void;
    visitLiteralArray(ast: LiteralArray, context: any): void;
    visitLiteralMap(ast: LiteralMap, context: any): void;
    visitBinary(ast: Binary, context: any): void;
    visitPrefixNot(ast: PrefixNot, context: any): void;
    visitNonNullAssert(ast: NonNullAssert, context: any): void;
    visitConditional(ast: Conditional, context: any): void;
    visitPipe(ast: BindingPipe, context: any): void;
    visitKeyedRead(ast: KeyedRead, context: any): void;
    visitKeyedWrite(ast: KeyedWrite, context: any): void;
    visitAll(asts: any[]): any[];
    visitChain(ast: Chain, context: any): void;
    visitQuote(ast: Quote, context: any): void;
}
/**
 * This class extends SimpleExpressionChecker used in View Engine and performs more strict checks to
 * make sure host bindings do not contain pipes. In View Engine, having pipes in host bindings is
 * not supported as well, but in some cases (like `!(value | async)`) the error is not triggered at
 * compile time. In order to preserve View Engine behavior, more strict checks are introduced for
 * Ivy mode only.
 */
declare class IvySimpleExpressionChecker extends SimpleExpressionChecker {
    visitBinary(ast: Binary, context: any): void;
    visitPrefixNot(ast: PrefixNot, context: any): void;
}
export {};
