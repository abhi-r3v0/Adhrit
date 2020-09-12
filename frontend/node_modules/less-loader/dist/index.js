"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.default = void 0;

var _loaderUtils = require("loader-utils");

var _schemaUtils = _interopRequireDefault(require("schema-utils"));

var _options = _interopRequireDefault(require("./options.json"));

var _utils = require("./utils");

var _LessError = _interopRequireDefault(require("./LessError"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function lessLoader(source) {
  const options = (0, _loaderUtils.getOptions)(this);
  (0, _schemaUtils.default)(_options.default, options, {
    name: 'Less Loader',
    baseDataPath: 'options'
  });
  const callback = this.async();
  const lessOptions = (0, _utils.getLessOptions)(this, options);
  let data = source;

  if (typeof options.prependData !== 'undefined') {
    data = typeof options.prependData === 'function' ? `${options.prependData(this)}\n${data}` : `${options.prependData}\n${data}`;
  }

  if (typeof options.appendData !== 'undefined') {
    data = typeof options.appendData === 'function' ? `${data}\n${options.appendData(this)}` : `${data}\n${options.appendData}`;
  }

  (0, _utils.getLessImplementation)(options.implementation).render(data, lessOptions).then(({
    css,
    map,
    imports
  }) => {
    imports.forEach(this.addDependency, this);
    callback(null, css, typeof map === 'string' ? JSON.parse(map) : map);
  }).catch(lessError => {
    if (lessError.filename) {
      this.addDependency(lessError.filename);
    }

    callback(new _LessError.default(lessError));
  });
}

var _default = lessLoader;
exports.default = _default;