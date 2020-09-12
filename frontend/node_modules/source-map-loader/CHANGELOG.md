# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

## [1.0.0](https://github.com/webpack-contrib/source-map-loader/compare/v0.2.4...v1.0.0) (2020-05-26)


### ⚠ BREAKING CHANGES

* minimum supported Node.js version is `10.13`
* minimum supported `webpack` version is `4`

### Features

* support indexed source maps ([c18d1f9](https://github.com/webpack-contrib/source-map-loader/commit/c18d1f9495fce229d21993aba1d215cc75986d84))
* support `charsert` for Data URLs

### Bug Fixes

* absolute path for sources ([b64f7d8](https://github.com/webpack-contrib/source-map-loader/commit/b64f7d82de27769c8bbd2be280faf4f9f97492d5))
* avoid crash on big data URL source maps ([7f769aa](https://github.com/webpack-contrib/source-map-loader/commit/7f769aa5a09d362cf29eeb52f4c8155360e1afad))
* improve performance ([#101](https://github.com/webpack-contrib/source-map-loader/issues/101)) ([4c39c22](https://github.com/webpack-contrib/source-map-loader/commit/4c39c228ae215b43d6c90fd1727d572dfd3d5929))
* use webpack fs ([#105](https://github.com/webpack-contrib/source-map-loader/issues/105)) ([1e785a1](https://github.com/webpack-contrib/source-map-loader/commit/1e785a1114afe2f40a9f2361d8a326a99b5050e6))
* support `file` protocol
* improve error messages
* avoid conflicts with other source maps
* fix compatibility with `5` version of `webpack`

<a name="0.2.4"></a>
## [0.2.4](https://github.com/webpack-contrib/source-map-loader/compare/v0.2.3...v0.2.4) (2018-08-14)


### Bug Fixes

* **index:** handle exception on loading invalid source maps ([#67](https://github.com/webpack-contrib/source-map-loader/issues/67)) ([78ad469](https://github.com/webpack-contrib/source-map-loader/commit/78ad469))
* **index:** resolve source maps with root-relative paths correctly ([#68](https://github.com/webpack-contrib/source-map-loader/issues/68)) ([e2fdbfd](https://github.com/webpack-contrib/source-map-loader/commit/e2fdbfd))
* **package:** 5 low severity vulnerabilities ([#72](https://github.com/webpack-contrib/source-map-loader/issues/72)) ([8262587](https://github.com/webpack-contrib/source-map-loader/commit/8262587))



<a name="0.2.3"></a>
## [0.2.3](https://github.com/webpack/source-map-loader/compare/v0.2.2...v0.2.3) (2017-10-23)


### Chores

* Increase minimum version of source-map dependency for bug fix https://github.com/mozilla/source-map/issues/247 ([#56](https://github.com/webpack-contrib/source-map-loader/issues/56)) ([f6cf53c](https://github.com/webpack/source-map-loader/commit/f6cf53c))



<a name="0.2.2"></a>
## [0.2.2](https://github.com/webpack/source-map-loader/compare/v0.2.1...v0.2.2) (2017-09-30)


### Bug Fixes

* Handle exception on loading invalid base64 source maps ([#53](https://github.com/webpack/source-map-loader/issues/53)) ([38da2eb](https://github.com/webpack/source-map-loader/commit/38da2eb))



<a name="0.2.1"></a>
## [0.2.1](https://github.com/webpack/source-map-loader/compare/v0.2.0...v0.2.1) (2017-03-30)


### Bug Fixes

* Regex does not work for minified artifact of style-loader ([#39](https://github.com/webpack/source-map-loader/issues/39)) ([582f8dc](https://github.com/webpack/source-map-loader/commit/582f8dc))



<a name="0.2.0"></a>
# [0.2.0](https://github.com/webpack/source-map-loader/compare/v0.1.6...v0.2.0) (2017-03-10)


### Bug Fixes

* Load source map only from last directive ([#31](https://github.com/webpack/source-map-loader/issues/31)) ([eabfc7e](https://github.com/webpack/source-map-loader/commit/eabfc7e))


### Features

* allow charset in inline-source-map support ([#21](https://github.com/webpack/source-map-loader/issues/21)) ([2730ccb](https://github.com/webpack/source-map-loader/commit/2730ccb))
