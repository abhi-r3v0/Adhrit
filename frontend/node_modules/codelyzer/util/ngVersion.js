"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.SemVerDSL = void 0;
var core_1 = require("@angular/core");
var semver_dsl_1 = require("semver-dsl");
exports.SemVerDSL = semver_dsl_1.SemVerDSL(core_1.VERSION.full);
