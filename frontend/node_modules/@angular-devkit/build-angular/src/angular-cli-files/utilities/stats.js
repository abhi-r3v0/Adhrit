"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.statsHasWarnings = exports.statsHasErrors = exports.statsErrorsToString = exports.statsWarningsToString = exports.statsToString = exports.generateBuildStats = exports.generateBundleStats = exports.formatSize = void 0;
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
// tslint:disable
// TODO: cleanup this file, it's copied as is from Angular CLI.
const core_1 = require("@angular-devkit/core");
const path = require("path");
const { bold, green, red, reset, white, yellow } = core_1.terminal;
function formatSize(size) {
    if (size <= 0) {
        return '0 bytes';
    }
    const abbreviations = ['bytes', 'kB', 'MB', 'GB'];
    const index = Math.floor(Math.log(size) / Math.log(1024));
    return `${+(size / Math.pow(1024, index)).toPrecision(3)} ${abbreviations[index]}`;
}
exports.formatSize = formatSize;
function generateBundleStats(info, colors) {
    const g = (x) => (colors ? bold(green(x)) : x);
    const y = (x) => (colors ? bold(yellow(x)) : x);
    const id = info.id ? y(info.id.toString()) : '';
    const size = typeof info.size === 'number' ? ` ${formatSize(info.size)}` : '';
    const files = info.files.map(f => path.basename(f)).join(', ');
    const names = info.names ? ` (${info.names.join(', ')})` : '';
    const initial = y(info.entry ? '[entry]' : info.initial ? '[initial]' : '');
    const flags = ['rendered', 'recorded']
        .map(f => (f && info[f] ? g(` [${f}]`) : ''))
        .join('');
    return `chunk {${id}} ${g(files)}${names}${size} ${initial}${flags}`;
}
exports.generateBundleStats = generateBundleStats;
function generateBuildStats(hash, time, colors) {
    const w = (x) => colors ? bold(white(x)) : x;
    return `Date: ${w(new Date().toISOString())} - Hash: ${w(hash)} - Time: ${w('' + time)}ms`;
}
exports.generateBuildStats = generateBuildStats;
function statsToString(json, statsConfig) {
    const colors = statsConfig.colors;
    const rs = (x) => colors ? reset(x) : x;
    const w = (x) => colors ? bold(white(x)) : x;
    const changedChunksStats = json.chunks
        .filter((chunk) => chunk.rendered)
        .map((chunk) => {
        const assets = json.assets.filter((asset) => chunk.files.indexOf(asset.name) != -1);
        const summedSize = assets.filter((asset) => !asset.name.endsWith(".map")).reduce((total, asset) => { return total + asset.size; }, 0);
        return generateBundleStats({ ...chunk, size: summedSize }, colors);
    });
    const unchangedChunkNumber = json.chunks.length - changedChunksStats.length;
    if (unchangedChunkNumber > 0) {
        return '\n' + rs(core_1.tags.stripIndents `
      Date: ${w(new Date().toISOString())} - Hash: ${w(json.hash)}
      ${unchangedChunkNumber} unchanged chunks
      ${changedChunksStats.join('\n')}
      Time: ${w('' + json.time)}ms
      `);
    }
    else {
        return '\n' + rs(core_1.tags.stripIndents `
      ${changedChunksStats.join('\n')}
      Date: ${w(new Date().toISOString())} - Hash: ${w(json.hash)} - Time: ${w('' + json.time)}ms
      `);
    }
}
exports.statsToString = statsToString;
// TODO(#16193): Don't emit this warning in the first place rather than just suppressing it.
const ERRONEOUS_WARNINGS_FILTER = (warning) => ![
    /multiple assets emit different content.*3rdpartylicenses\.txt/i,
].some(msg => msg.test(warning));
function statsWarningsToString(json, statsConfig) {
    const colors = statsConfig.colors;
    const rs = (x) => colors ? reset(x) : x;
    const y = (x) => colors ? bold(yellow(x)) : x;
    const warnings = [...json.warnings];
    if (json.children) {
        warnings.push(...json.children
            .map((c) => c.warnings)
            .reduce((a, b) => [...a, ...b], []));
    }
    return rs('\n' + warnings
        .map((warning) => `${warning}`)
        .filter(ERRONEOUS_WARNINGS_FILTER)
        .map((warning) => y(`WARNING in ${warning}`))
        .join('\n\n'));
}
exports.statsWarningsToString = statsWarningsToString;
function statsErrorsToString(json, statsConfig) {
    const colors = statsConfig.colors;
    const rs = (x) => colors ? reset(x) : x;
    const r = (x) => colors ? bold(red(x)) : x;
    const errors = [...json.errors];
    if (json.children) {
        errors.push(...json.children
            .map((c) => c.errors)
            .reduce((a, b) => [...a, ...b], []));
    }
    return rs('\n' + errors
        .map((error) => r(`ERROR in ${error}`))
        .join('\n\n'));
}
exports.statsErrorsToString = statsErrorsToString;
function statsHasErrors(json) {
    var _a;
    return json.errors.length || !!((_a = json.children) === null || _a === void 0 ? void 0 : _a.some((c) => c.errors.length));
}
exports.statsHasErrors = statsHasErrors;
function statsHasWarnings(json) {
    var _a;
    return json.warnings.filter(ERRONEOUS_WARNINGS_FILTER).length ||
        !!((_a = json.children) === null || _a === void 0 ? void 0 : _a.some((c) => c.warnings.filter(ERRONEOUS_WARNINGS_FILTER).length));
}
exports.statsHasWarnings = statsHasWarnings;
