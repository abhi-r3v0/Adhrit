"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.createTranslationLoader = void 0;
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
const crypto_1 = require("crypto");
const fs = require("fs");
async function createTranslationLoader() {
    const { parsers, diagnostics } = await importParsers();
    return (path) => {
        const content = fs.readFileSync(path, 'utf8');
        const unusedParsers = new Map();
        for (const [format, parser] of Object.entries(parsers)) {
            const analysis = analyze(parser, path, content);
            if (analysis.canParse) {
                const translationBundle = parser.parse(path, content, analysis.hint);
                const integrity = 'sha256-' + crypto_1.createHash('sha256').update(content).digest('base64');
                return { format, translation: translationBundle.translations, diagnostics, integrity };
            }
            else {
                unusedParsers.set(parser, analysis);
            }
        }
        const messages = [];
        for (const [parser, analysis] of unusedParsers.entries()) {
            messages.push(analysis.diagnostics.formatDiagnostics(`*** ${parser.constructor.name} ***`));
        }
        throw new Error(`Unsupported translation file format in ${path}. The following parsers were tried:\n` + messages.join('\n'));
    };
    // TODO: `parser.canParse()` is deprecated; remove this polyfill once we are sure all parsers provide the `parser.analyze()` method.
    // tslint:disable-next-line: no-any
    function analyze(parser, path, content) {
        if (parser.analyze !== undefined) {
            return parser.analyze(path, content);
        }
        else {
            const hint = parser.canParse(path, content);
            return { canParse: hint !== false, hint, diagnostics };
        }
    }
}
exports.createTranslationLoader = createTranslationLoader;
async function importParsers() {
    try {
        // tslint:disable-next-line: no-implicit-dependencies
        const localizeDiag = await Promise.resolve().then(() => require('@angular/localize/src/tools/src/diagnostics'));
        const diagnostics = new localizeDiag.Diagnostics();
        const parsers = {
            json: new (await Promise.resolve().then(() => require(
            // tslint:disable-next-line:trailing-comma no-implicit-dependencies
            '@angular/localize/src/tools/src/translate/translation_files/translation_parsers/simple_json_translation_parser'))).SimpleJsonTranslationParser(),
            xlf: new (await Promise.resolve().then(() => require(
            // tslint:disable-next-line:trailing-comma no-implicit-dependencies
            '@angular/localize/src/tools/src/translate/translation_files/translation_parsers/xliff1_translation_parser'))).Xliff1TranslationParser(),
            xlf2: new (await Promise.resolve().then(() => require(
            // tslint:disable-next-line:trailing-comma no-implicit-dependencies
            '@angular/localize/src/tools/src/translate/translation_files/translation_parsers/xliff2_translation_parser'))).Xliff2TranslationParser(),
            // The name ('xmb') needs to match the AOT compiler option
            xmb: new (await Promise.resolve().then(() => require(
            // tslint:disable-next-line:trailing-comma no-implicit-dependencies
            '@angular/localize/src/tools/src/translate/translation_files/translation_parsers/xtb_translation_parser'))).XtbTranslationParser(),
        };
        return { parsers, diagnostics };
    }
    catch (_a) {
        throw new Error(`Unable to load translation file parsers. Please ensure '@angular/localize' is installed.`);
    }
}
