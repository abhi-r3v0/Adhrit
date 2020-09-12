/*
  @license
	Rollup.js v2.10.9
	Sun, 24 May 2020 05:27:58 GMT - commit 462bff7b1a0c384ecc3e278b1ea877e637c70f41


	https://github.com/rollup/rollup

	Released under the MIT License.
*/
'use strict';

require('./shared/rollup.js');
require('path');
require('./shared/mergeOptions.js');
var loadConfigFile_js = require('./shared/loadConfigFile.js');
require('crypto');
require('fs');
require('events');
require('url');



module.exports = loadConfigFile_js.loadAndParseConfigFile;
//# sourceMappingURL=loadConfigFile.js.map
