## [3.3.1](https://github.com/karma-runner/karma-jasmine/compare/v3.3.0...v3.3.1) (2020-05-28)


### Bug Fixes

* **filter:** match any portion of a spec name ([#270](https://github.com/karma-runner/karma-jasmine/issues/270)) ([ded4c4b](https://github.com/karma-runner/karma-jasmine/commit/ded4c4b13ecc0ed976ee00b0ae808dbcd134157b)), closes [#256](https://github.com/karma-runner/karma-jasmine/issues/256)

# [3.3.0](https://github.com/karma-runner/karma-jasmine/compare/v3.2.0...v3.3.0) (2020-05-28)


### Features

* **reporter:** emit info events for suiteStarted/suiteDone ([#269](https://github.com/karma-runner/karma-jasmine/issues/269)) ([7b73ce0](https://github.com/karma-runner/karma-jasmine/commit/7b73ce0abec8da370986d10cbb040fe6e5ae1d22))

# [3.2.0](https://github.com/karma-runner/karma-jasmine/compare/v3.1.1...v3.2.0) (2020-05-26)


### Features

* **results:** forward passedExpectations and properties ([#268](https://github.com/karma-runner/karma-jasmine/issues/268)) ([ad1d7dd](https://github.com/karma-runner/karma-jasmine/commit/ad1d7dd28d56d2612b8a502a10710591d4de1cff))

## [3.1.1](https://github.com/karma-runner/karma-jasmine/compare/v3.1.0...v3.1.1) (2020-02-11)


### Bug Fixes

* **adapter:** do not emit debug url unless in a browser ([#263](https://github.com/karma-runner/karma-jasmine/issues/263)) ([9bcce88](https://github.com/karma-runner/karma-jasmine/commit/9bcce8864d7328cdd7571dda9828401034c9dbe6)), closes [#262](https://github.com/karma-runner/karma-jasmine/issues/262)

# [3.1.0](https://github.com/karma-runner/karma-jasmine/compare/v3.0.3...v3.1.0) (2020-01-10)


### Features

* **adapter:** support spec=name URL and sharding ([#243](https://github.com/karma-runner/karma-jasmine/issues/243)) ([39b1582](https://github.com/karma-runner/karma-jasmine/commit/39b1582987f4b82d6da4775414f208a8433ec794))

<a name="3.0.3"></a>
## [3.0.3](https://github.com/karma-runner/karma-jasmine/compare/v3.0.2...v3.0.3) (2020-01-08)


### Bug Fixes

* **npm:** ignore integration-tests/ ([#248](https://github.com/karma-runner/karma-jasmine/issues/248)) ([f0083cb](https://github.com/karma-runner/karma-jasmine/commit/f0083cb))



<a name="3.0.2"></a>
## [3.0.2](https://github.com/karma-runner/karma-jasmine/compare/v3.0.1...v3.0.2) (2020-01-08)



<a name="3.0.1"></a>
## [3.0.1](https://github.com/karma-runner/karma-jasmine/compare/v1.1.0...v3.0.1) (2020-01-06)


### Bug Fixes

* **adapter:** Remove incorrect function and its call. ([#183](https://github.com/karma-runner/karma-jasmine/issues/183)) ([cada4a9](https://github.com/karma-runner/karma-jasmine/commit/cada4a9))
* **build:** run eslint on npm test ([#237](https://github.com/karma-runner/karma-jasmine/issues/237)) ([a12024d](https://github.com/karma-runner/karma-jasmine/commit/a12024d))
* **console:** Re-add Error: to the stack ([#228](https://github.com/karma-runner/karma-jasmine/issues/228)) ([d0b980d](https://github.com/karma-runner/karma-jasmine/commit/d0b980d))
* **dep:** Depend upon the jasmine-core version we test ([#229](https://github.com/karma-runner/karma-jasmine/issues/229)) ([c4dfef5](https://github.com/karma-runner/karma-jasmine/commit/c4dfef5))
* **stack:** On error in beforeAll/afterAll relevant information to debug are miss… ([#232](https://github.com/karma-runner/karma-jasmine/issues/232)) ([cd6f060](https://github.com/karma-runner/karma-jasmine/commit/cd6f060))
* **time:** report correct time since Jasmine v2.9.0 ([#197](https://github.com/karma-runner/karma-jasmine/issues/197)) ([022ee04](https://github.com/karma-runner/karma-jasmine/commit/022ee04)), closes [#196](https://github.com/karma-runner/karma-jasmine/issues/196)
* **travis:** use new syntax for xenial and pin to it. ([#236](https://github.com/karma-runner/karma-jasmine/issues/236)) ([cb99ef8](https://github.com/karma-runner/karma-jasmine/commit/cb99ef8))
* return false for every entry is irrelevant ([#206](https://github.com/karma-runner/karma-jasmine/issues/206)) ([d7523d0](https://github.com/karma-runner/karma-jasmine/commit/d7523d0)), closes [/github.com/karma-runner/karma-jasmine/pull/206#discussion_r186142116](https://github.com//github.com/karma-runner/karma-jasmine/pull/206/issues/discussion_r186142116)


### Chores

* **deps:** Drop node v4 support. ([#214](https://github.com/karma-runner/karma-jasmine/issues/214)) ([e604132](https://github.com/karma-runner/karma-jasmine/commit/e604132))


### Features

* **adapter:** log when Jasmine fails because no expect() were run ([#238](https://github.com/karma-runner/karma-jasmine/issues/238)) ([646796e](https://github.com/karma-runner/karma-jasmine/commit/646796e))
* **reporter:** On no-single-run and failure, emit a debug URL ([#235](https://github.com/karma-runner/karma-jasmine/issues/235)) ([76f092a](https://github.com/karma-runner/karma-jasmine/commit/76f092a))
* Propagate errors thrown in afterAll blocks ([f3fa264](https://github.com/karma-runner/karma-jasmine/commit/f3fa264)), closes [#161](https://github.com/karma-runner/karma-jasmine/issues/161)
* update the version to 2.0.0 and restrict node version available to 4.0 ([c84316e](https://github.com/karma-runner/karma-jasmine/commit/c84316e))


* Update deps and drop node v6 to match karma v4.0 (#233) ([097eed4](https://github.com/karma-runner/karma-jasmine/commit/097eed4)), closes [#233](https://github.com/karma-runner/karma-jasmine/issues/233)
* feat (adapter): Use jasmine's new configure method (#224) ([6663e47](https://github.com/karma-runner/karma-jasmine/commit/6663e47)), closes [#224](https://github.com/karma-runner/karma-jasmine/issues/224) [#221](https://github.com/karma-runner/karma-jasmine/issues/221)


### BREAKING CHANGES

* drop support for node v6

* Also update travis config to drop v6 andd v10
* `stopOnFailure`, which was previously documented in karma-jasmine's README, is
not configuration option for jasmine. Use `oneFailurePerSpec` instead.

Requires peerDependency Jasmine@^3.3.0
* **deps:** Drop support for node 4.x



<a name="3.0.0"></a>
# [3.0.0](https://github.com/karma-runner/karma-jasmine/compare/v2.0.1...v3.0.0) (2020-01-04)


* Update deps and drop node v6 to match karma v4.0 (#233) ([097eed4](https://github.com/karma-runner/karma-jasmine/commit/097eed4)), closes [#233](https://github.com/karma-runner/karma-jasmine/issues/233)


### Bug Fixes

* **build:** run eslint on npm test ([#237](https://github.com/karma-runner/karma-jasmine/issues/237)) ([a12024d](https://github.com/karma-runner/karma-jasmine/commit/a12024d))
* **stack:** On error in beforeAll/afterAll relevant information to debug are miss… ([#232](https://github.com/karma-runner/karma-jasmine/issues/232)) ([cd6f060](https://github.com/karma-runner/karma-jasmine/commit/cd6f060))
* **travis:** use new syntax for xenial and pin to it. ([#236](https://github.com/karma-runner/karma-jasmine/issues/236)) ([cb99ef8](https://github.com/karma-runner/karma-jasmine/commit/cb99ef8))


### Features

* **adapter:** log when Jasmine fails because no expect() were run ([#238](https://github.com/karma-runner/karma-jasmine/issues/238)) ([646796e](https://github.com/karma-runner/karma-jasmine/commit/646796e))
* **reporter:** On no-single-run and failure, emit a debug URL ([#235](https://github.com/karma-runner/karma-jasmine/issues/235)) ([76f092a](https://github.com/karma-runner/karma-jasmine/commit/76f092a))


### BREAKING CHANGES

* drop support for node v6

* Also update travis config to drop v6 andd v10



<a name="2.0.1"></a>
## [2.0.1](https://github.com/karma-runner/karma-jasmine/compare/v2.0.0...v2.0.1) (2018-11-17)


### Bug Fixes

* **dep:** Depend upon the jasmine-core version we test ([#229](https://github.com/karma-runner/karma-jasmine/issues/229)) ([c4dfef5](https://github.com/karma-runner/karma-jasmine/commit/c4dfef5))



<a name="2.0.0"></a>
# [2.0.0](https://github.com/karma-runner/karma-jasmine/compare/v1.1.0...v2.0.0) (2018-11-15)


* feat (adapter): Use jasmine's new configure method (#224) ([6663e47](https://github.com/karma-runner/karma-jasmine/commit/6663e47)), closes [#224](https://github.com/karma-runner/karma-jasmine/issues/224) [#221](https://github.com/karma-runner/karma-jasmine/issues/221)


### Bug Fixes

* **adapter:** Remove incorrect function and its call. ([#183](https://github.com/karma-runner/karma-jasmine/issues/183)) ([cada4a9](https://github.com/karma-runner/karma-jasmine/commit/cada4a9))
* return false for every entry is irrelevant ([#206](https://github.com/karma-runner/karma-jasmine/issues/206)) ([d7523d0](https://github.com/karma-runner/karma-jasmine/commit/d7523d0)), closes [/github.com/karma-runner/karma-jasmine/pull/206#discussion_r186142116](https://github.com//github.com/karma-runner/karma-jasmine/pull/206/issues/discussion_r186142116)
* **console:** Re-add Error: to the stack ([#228](https://github.com/karma-runner/karma-jasmine/issues/228)) ([d0b980d](https://github.com/karma-runner/karma-jasmine/commit/d0b980d))
* **time:** report correct time since Jasmine v2.9.0 ([#197](https://github.com/karma-runner/karma-jasmine/issues/197)) ([022ee04](https://github.com/karma-runner/karma-jasmine/commit/022ee04)), closes [#196](https://github.com/karma-runner/karma-jasmine/issues/196)


### Chores

* **deps:** Drop node v4 support. ([#214](https://github.com/karma-runner/karma-jasmine/issues/214)) ([e604132](https://github.com/karma-runner/karma-jasmine/commit/e604132))


### Features

* Propagate errors thrown in afterAll blocks ([f3fa264](https://github.com/karma-runner/karma-jasmine/commit/f3fa264)), closes [#161](https://github.com/karma-runner/karma-jasmine/issues/161)
* update the version to 2.0.0 and restrict node version available to 4.0 ([c84316e](https://github.com/karma-runner/karma-jasmine/commit/c84316e))


### BREAKING CHANGES

* `stopOnFailure`, which was previously documented in karma-jasmine's README, is
not configuration option for jasmine. Use `oneFailurePerSpec` instead.

Requires peerDependency Jasmine@^3.3.0
* **deps:** Drop support for node 4.x



<a name="1.1.2"></a>
## [1.1.2](https://github.com/karma-runner/karma-jasmine/compare/v1.1.0...v1.1.2) (2018-05-02)


### Bug Fixes

* **adapter:** Remove incorrect function and its call. ([#183](https://github.com/karma-runner/karma-jasmine/issues/183)) ([cada4a9](https://github.com/karma-runner/karma-jasmine/commit/cada4a9))
* **time:** report correct time since Jasmine v2.9.0 ([#197](https://github.com/karma-runner/karma-jasmine/issues/197)) ([022ee04](https://github.com/karma-runner/karma-jasmine/commit/022ee04)), closes [#196](https://github.com/karma-runner/karma-jasmine/issues/196)


### Features

* Propagate errors thrown in afterAll blocks ([f3fa264](https://github.com/karma-runner/karma-jasmine/commit/f3fa264)), closes [#161](https://github.com/karma-runner/karma-jasmine/issues/161)
* update the version to 2.0.0 and restrict node version available to 4.0 ([c84316e](https://github.com/karma-runner/karma-jasmine/commit/c84316e))



<a name="1.1.1"></a>
## [1.1.1](https://github.com/karma-runner/karma-jasmine/compare/v1.1.0...v1.1.1) (2017-12-01)


### Features

* Propagate errors thrown in afterAll blocks ([f3fa264](https://github.com/karma-runner/karma-jasmine/commit/f3fa264)), closes [#161](https://github.com/karma-runner/karma-jasmine/issues/161)



<a name="1.1.0"></a>
# [1.1.0](https://github.com/karma-runner/karma-jasmine/compare/v1.0.2...v1.1.0) (2016-12-09)


### Bug Fixes

* Karma reported test duration is negative fix [#143](https://github.com/karma-runner/karma-jasmine/issues/143) ([93452bb](https://github.com/karma-runner/karma-jasmine/commit/93452bb)), closes [#143](https://github.com/karma-runner/karma-jasmine/issues/143)


### Features

* report status of the spec closes [#129](https://github.com/karma-runner/karma-jasmine/issues/129) ([5b224e2](https://github.com/karma-runner/karma-jasmine/commit/5b224e2)), closes [#129](https://github.com/karma-runner/karma-jasmine/issues/129)
* Support --random and --seed flags ([0b59d69](https://github.com/karma-runner/karma-jasmine/commit/0b59d69)), closes [#145](https://github.com/karma-runner/karma-jasmine/issues/145) [#137](https://github.com/karma-runner/karma-jasmine/issues/137)



<a name="1.0.2"></a>
## [1.0.2](https://github.com/karma-runner/karma-jasmine/compare/v1.0.1...v1.0.2) (2016-05-04)


### Bug Fixes

* **version:** argh, make 'build' a prereq for test and fix gruntfile for eslint([f2a6109](https://github.com/karma-runner/karma-jasmine/commit/f2a6109))



<a name="1.0.1"></a>
## [1.0.1](https://github.com/karma-runner/karma-jasmine/compare/v1.0.0...v1.0.1) (2016-05-04)


### Bug Fixes

* **grunt:** load 'build' grunt task and make a pre-req for releasing([1861ae0](https://github.com/karma-runner/karma-jasmine/commit/1861ae0))



<a name="1.0.0"></a>
# [1.0.0](https://github.com/karma-runner/karma-jasmine/compare/v0.3.8...v1.0.0) (2016-05-03)



<a name="0.3.8"></a>
## [0.3.8](https://github.com/karma-runner/karma-jasmine/compare/v0.3.7...v0.3.8) (2016-03-16)


### Bug Fixes

* v0.3.7 does not work in ie8 fix #105 ([d44b489](https://github.com/karma-runner/karma-jasmine/commit/d44b489)), closes [#105](https://github.com/karma-runner/karma-jasmine/issues/105)

### Features

* **adapter:** add executedExpectationsCount to result ([666c207](https://github.com/karma-runner/karma-jasmine/commit/666c207))
