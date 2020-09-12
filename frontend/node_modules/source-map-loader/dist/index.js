"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = loader;

var _path = _interopRequireDefault(require("path"));

var _schemaUtils = _interopRequireDefault(require("schema-utils"));

var _loaderUtils = require("loader-utils");

var _options = _interopRequireDefault(require("./options.json"));

var _utils = require("./utils");

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*
  MIT License http://www.opensource.org/licenses/mit-license.php
  Author Tobias Koppers @sokra
*/
async function loader(input, inputMap) {
  const options = (0, _loaderUtils.getOptions)(this);
  (0, _schemaUtils.default)(_options.default, options, {
    name: 'Source Map Loader',
    baseDataPath: 'options'
  });
  const {
    sourceMappingURL,
    replacementString
  } = (0, _utils.getSourceMappingURL)(input);
  const callback = this.async();

  if (!sourceMappingURL) {
    callback(null, input, inputMap);
    return;
  }

  let sourceURL;
  let sourceContent;

  try {
    ({
      sourceURL,
      sourceContent
    } = await (0, _utils.fetchFromURL)(this, this.context, sourceMappingURL));
  } catch (error) {
    this.emitWarning(error);
    callback(null, input, inputMap);
    return;
  }

  if (sourceURL) {
    this.addDependency(sourceURL);
  }

  let map;

  try {
    map = JSON.parse(sourceContent.replace(/^\)\]\}'/, ''));
  } catch (parseError) {
    this.emitWarning(new Error(`Failed to parse source map from '${sourceURL}': ${parseError}`));
    callback(null, input, inputMap);
    return;
  }

  const context = sourceURL ? _path.default.dirname(sourceURL) : this.context;

  if (map.sections) {
    // eslint-disable-next-line no-param-reassign
    map = await (0, _utils.flattenSourceMap)(map);
  }

  const resolvedSources = await Promise.all(map.sources.map(async (source, i) => {
    // eslint-disable-next-line no-shadow
    let sourceURL; // eslint-disable-next-line no-shadow

    let sourceContent;
    const originalSourceContent = map.sourcesContent && map.sourcesContent[i] ? map.sourcesContent[i] : null;
    const skipReading = originalSourceContent !== null;

    try {
      ({
        sourceURL,
        sourceContent
      } = await (0, _utils.fetchFromURL)(this, context, source, map.sourceRoot, skipReading));
    } catch (error) {
      this.emitWarning(error);
      sourceURL = source;
    }

    if (originalSourceContent) {
      sourceContent = originalSourceContent;
    }

    if (sourceURL) {
      this.addDependency(sourceURL);
    }

    return {
      sourceURL,
      sourceContent
    };
  }));
  const newMap = { ...map
  };
  newMap.sources = [];
  newMap.sourcesContent = [];
  delete newMap.sourceRoot;
  resolvedSources.forEach(source => {
    // eslint-disable-next-line no-shadow
    const {
      sourceURL,
      sourceContent
    } = source;
    newMap.sources.push(sourceURL || '');
    newMap.sourcesContent.push(sourceContent || '');
  });
  const sourcesContentIsEmpty = newMap.sourcesContent.filter(entry => Boolean(entry)).length === 0;

  if (sourcesContentIsEmpty) {
    delete newMap.sourcesContent;
  }

  callback(null, input.replace(replacementString, ''), newMap);
}