"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.isJsonArray = exports.isJsonObject = void 0;
function isJsonObject(value) {
    return value != null && typeof value === 'object' && !Array.isArray(value);
}
exports.isJsonObject = isJsonObject;
function isJsonArray(value) {
    return Array.isArray(value);
}
exports.isJsonArray = isJsonArray;
