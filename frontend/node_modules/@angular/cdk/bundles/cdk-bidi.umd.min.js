!function(e,t){"object"==typeof exports&&"undefined"!=typeof module?t(exports,require("@angular/core"),require("@angular/common")):"function"==typeof define&&define.amd?define("@angular/cdk/bidi",["exports","@angular/core","@angular/common"],t):t(((e=e||self).ng=e.ng||{},e.ng.cdk=e.ng.cdk||{},e.ng.cdk.bidi={}),e.ng.core,e.ng.common)}(this,(function(e,t,r){"use strict";
/**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */var n=new t.InjectionToken("cdk-dir-doc",{providedIn:"root",factory:i});function i(){return t.inject(r.DOCUMENT)}
/**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */var o=function(){function e(e){if(this.value="ltr",this.change=new t.EventEmitter,e){var r=(e.body?e.body.dir:null)||(e.documentElement?e.documentElement.dir:null);this.value="ltr"===r||"rtl"===r?r:"ltr"}}return e.prototype.ngOnDestroy=function(){this.change.complete()},e}();o.ɵprov=t.ɵɵdefineInjectable({factory:function e(){return new o(t.ɵɵinject(n,8))},token:o,providedIn:"root"}),o.decorators=[{type:t.Injectable,args:[{providedIn:"root"}]}],o.ctorParameters=function(){return[{type:void 0,decorators:[{type:t.Optional},{type:t.Inject,args:[n]}]}]};
/**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
var c,a=function(){function e(){this._dir="ltr",this._isInitialized=!1,this.change=new t.EventEmitter}return Object.defineProperty(e.prototype,"dir",{get:function(){return this._dir},set:function(e){var t=this._dir,r=e?e.toLowerCase():e;this._rawDir=e,this._dir="ltr"===r||"rtl"===r?r:"ltr",t!==this._dir&&this._isInitialized&&this.change.emit(this._dir)},enumerable:!1,configurable:!0}),Object.defineProperty(e.prototype,"value",{get:function(){return this.dir},enumerable:!1,configurable:!0}),e.prototype.ngAfterContentInit=function(){this._isInitialized=!0},e.prototype.ngOnDestroy=function(){this.change.complete()},e}();a.decorators=[{type:t.Directive,args:[{selector:"[dir]",providers:[{provide:o,useExisting:a}],host:{"[attr.dir]":"_rawDir"},exportAs:"dir"}]}],a.propDecorators={change:[{type:t.Output,args:["dirChange"]}],dir:[{type:t.Input}]},(c=function c(){}).decorators=[{type:t.NgModule,args:[{exports:[a],declarations:[a]}]}],
/**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
e.BidiModule=c,e.DIR_DOCUMENT=n,e.Dir=a,e.Directionality=o,e.ɵangular_material_src_cdk_bidi_bidi_a=i,Object.defineProperty(e,"__esModule",{value:!0})}));