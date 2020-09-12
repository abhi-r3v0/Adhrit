"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.isAsciiHexDigit = exports.isAsciiLetter = exports.isDigit = exports.isWhitespace = exports.$BT = exports.$AT = exports.$TILDA = exports.$PIPE = exports.$NBSP = exports.$RBRACE = exports.$BAR = exports.$LBRACE = exports.$z = exports.$x = exports.$v = exports.$u = exports.$t = exports.$r = exports.$n = exports.$f = exports.$e = exports.$a = exports.$_ = exports.$CARET = exports.$RBRACKET = exports.$BACKSLASH = exports.$LBRACKET = exports.$Z = exports.$X = exports.$F = exports.$E = exports.$A = exports.$9 = exports.$0 = exports.$QUESTION = exports.$GT = exports.$EQ = exports.$LT = exports.$SEMICOLON = exports.$COLON = exports.$SLASH = exports.$PERIOD = exports.$MINUS = exports.$COMMA = exports.$PLUS = exports.$STAR = exports.$RPAREN = exports.$LPAREN = exports.$SQ = exports.$AMPERSAND = exports.$PERCENT = exports.$$ = exports.$HASH = exports.$DQ = exports.$BANG = exports.$SPACE = exports.$CR = exports.$FF = exports.$VTAB = exports.$LF = exports.$TAB = exports.$EOF = void 0;
exports.$EOF = 0;
exports.$TAB = 9;
exports.$LF = 10;
exports.$VTAB = 11;
exports.$FF = 12;
exports.$CR = 13;
exports.$SPACE = 32;
exports.$BANG = 33;
exports.$DQ = 34;
exports.$HASH = 35;
exports.$$ = 36;
exports.$PERCENT = 37;
exports.$AMPERSAND = 38;
exports.$SQ = 39;
exports.$LPAREN = 40;
exports.$RPAREN = 41;
exports.$STAR = 42;
exports.$PLUS = 43;
exports.$COMMA = 44;
exports.$MINUS = 45;
exports.$PERIOD = 46;
exports.$SLASH = 47;
exports.$COLON = 58;
exports.$SEMICOLON = 59;
exports.$LT = 60;
exports.$EQ = 61;
exports.$GT = 62;
exports.$QUESTION = 63;
exports.$0 = 48;
exports.$9 = 57;
exports.$A = 65;
exports.$E = 69;
exports.$F = 70;
exports.$X = 88;
exports.$Z = 90;
exports.$LBRACKET = 91;
exports.$BACKSLASH = 92;
exports.$RBRACKET = 93;
exports.$CARET = 94;
exports.$_ = 95;
exports.$a = 97;
exports.$e = 101;
exports.$f = 102;
exports.$n = 110;
exports.$r = 114;
exports.$t = 116;
exports.$u = 117;
exports.$v = 118;
exports.$x = 120;
exports.$z = 122;
exports.$LBRACE = 123;
exports.$BAR = 124;
exports.$RBRACE = 125;
exports.$NBSP = 160;
exports.$PIPE = 124;
exports.$TILDA = 126;
exports.$AT = 64;
exports.$BT = 96;
function isWhitespace(code) {
    return (code >= exports.$TAB && code <= exports.$SPACE) || code === exports.$NBSP;
}
exports.isWhitespace = isWhitespace;
function isDigit(code) {
    return exports.$0 <= code && code <= exports.$9;
}
exports.isDigit = isDigit;
function isAsciiLetter(code) {
    return (code >= exports.$a && code <= exports.$z) || (code >= exports.$A && code <= exports.$Z);
}
exports.isAsciiLetter = isAsciiLetter;
function isAsciiHexDigit(code) {
    return (code >= exports.$a && code <= exports.$f) || (code >= exports.$A && code <= exports.$F) || isDigit(code);
}
exports.isAsciiHexDigit = isAsciiHexDigit;
