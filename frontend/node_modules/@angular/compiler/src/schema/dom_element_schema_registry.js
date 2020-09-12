/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler/src/schema/dom_element_schema_registry", ["require", "exports", "tslib", "@angular/compiler/src/core", "@angular/compiler/src/ml_parser/tags", "@angular/compiler/src/util", "@angular/compiler/src/schema/dom_security_schema", "@angular/compiler/src/schema/element_schema_registry"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.DomElementSchemaRegistry = void 0;
    var tslib_1 = require("tslib");
    var core_1 = require("@angular/compiler/src/core");
    var tags_1 = require("@angular/compiler/src/ml_parser/tags");
    var util_1 = require("@angular/compiler/src/util");
    var dom_security_schema_1 = require("@angular/compiler/src/schema/dom_security_schema");
    var element_schema_registry_1 = require("@angular/compiler/src/schema/element_schema_registry");
    var BOOLEAN = 'boolean';
    var NUMBER = 'number';
    var STRING = 'string';
    var OBJECT = 'object';
    /**
     * This array represents the DOM schema. It encodes inheritance, properties, and events.
     *
     * ## Overview
     *
     * Each line represents one kind of element. The `element_inheritance` and properties are joined
     * using `element_inheritance|properties` syntax.
     *
     * ## Element Inheritance
     *
     * The `element_inheritance` can be further subdivided as `element1,element2,...^parentElement`.
     * Here the individual elements are separated by `,` (commas). Every element in the list
     * has identical properties.
     *
     * An `element` may inherit additional properties from `parentElement` If no `^parentElement` is
     * specified then `""` (blank) element is assumed.
     *
     * NOTE: The blank element inherits from root `[Element]` element, the super element of all
     * elements.
     *
     * NOTE an element prefix such as `:svg:` has no special meaning to the schema.
     *
     * ## Properties
     *
     * Each element has a set of properties separated by `,` (commas). Each property can be prefixed
     * by a special character designating its type:
     *
     * - (no prefix): property is a string.
     * - `*`: property represents an event.
     * - `!`: property is a boolean.
     * - `#`: property is a number.
     * - `%`: property is an object.
     *
     * ## Query
     *
     * The class creates an internal squas representation which allows to easily answer the query of
     * if a given property exist on a given element.
     *
     * NOTE: We don't yet support querying for types or events.
     * NOTE: This schema is auto extracted from `schema_extractor.ts` located in the test folder,
     *       see dom_element_schema_registry_spec.ts
     */
    // =================================================================================================
    // =================================================================================================
    // =========== S T O P   -  S T O P   -  S T O P   -  S T O P   -  S T O P   -  S T O P  ===========
    // =================================================================================================
    // =================================================================================================
    //
    //                       DO NOT EDIT THIS DOM SCHEMA WITHOUT A SECURITY REVIEW!
    //
    // Newly added properties must be security reviewed and assigned an appropriate SecurityContext in
    // dom_security_schema.ts. Reach out to mprobst & rjamet for details.
    //
    // =================================================================================================
    var SCHEMA = [
        '[Element]|textContent,%classList,className,id,innerHTML,*beforecopy,*beforecut,*beforepaste,*copy,*cut,*paste,*search,*selectstart,*webkitfullscreenchange,*webkitfullscreenerror,*wheel,outerHTML,#scrollLeft,#scrollTop,slot' +
            /* added manually to avoid breaking changes */
            ',*message,*mozfullscreenchange,*mozfullscreenerror,*mozpointerlockchange,*mozpointerlockerror,*webglcontextcreationerror,*webglcontextlost,*webglcontextrestored',
        '[HTMLElement]^[Element]|accessKey,contentEditable,dir,!draggable,!hidden,innerText,lang,*abort,*auxclick,*blur,*cancel,*canplay,*canplaythrough,*change,*click,*close,*contextmenu,*cuechange,*dblclick,*drag,*dragend,*dragenter,*dragleave,*dragover,*dragstart,*drop,*durationchange,*emptied,*ended,*error,*focus,*gotpointercapture,*input,*invalid,*keydown,*keypress,*keyup,*load,*loadeddata,*loadedmetadata,*loadstart,*lostpointercapture,*mousedown,*mouseenter,*mouseleave,*mousemove,*mouseout,*mouseover,*mouseup,*mousewheel,*pause,*play,*playing,*pointercancel,*pointerdown,*pointerenter,*pointerleave,*pointermove,*pointerout,*pointerover,*pointerup,*progress,*ratechange,*reset,*resize,*scroll,*seeked,*seeking,*select,*show,*stalled,*submit,*suspend,*timeupdate,*toggle,*volumechange,*waiting,outerText,!spellcheck,%style,#tabIndex,title,!translate',
        'abbr,address,article,aside,b,bdi,bdo,cite,code,dd,dfn,dt,em,figcaption,figure,footer,header,i,kbd,main,mark,nav,noscript,rb,rp,rt,rtc,ruby,s,samp,section,small,strong,sub,sup,u,var,wbr^[HTMLElement]|accessKey,contentEditable,dir,!draggable,!hidden,innerText,lang,*abort,*auxclick,*blur,*cancel,*canplay,*canplaythrough,*change,*click,*close,*contextmenu,*cuechange,*dblclick,*drag,*dragend,*dragenter,*dragleave,*dragover,*dragstart,*drop,*durationchange,*emptied,*ended,*error,*focus,*gotpointercapture,*input,*invalid,*keydown,*keypress,*keyup,*load,*loadeddata,*loadedmetadata,*loadstart,*lostpointercapture,*mousedown,*mouseenter,*mouseleave,*mousemove,*mouseout,*mouseover,*mouseup,*mousewheel,*pause,*play,*playing,*pointercancel,*pointerdown,*pointerenter,*pointerleave,*pointermove,*pointerout,*pointerover,*pointerup,*progress,*ratechange,*reset,*resize,*scroll,*seeked,*seeking,*select,*show,*stalled,*submit,*suspend,*timeupdate,*toggle,*volumechange,*waiting,outerText,!spellcheck,%style,#tabIndex,title,!translate',
        'media^[HTMLElement]|!autoplay,!controls,%controlsList,%crossOrigin,#currentTime,!defaultMuted,#defaultPlaybackRate,!disableRemotePlayback,!loop,!muted,*encrypted,*waitingforkey,#playbackRate,preload,src,%srcObject,#volume',
        ':svg:^[HTMLElement]|*abort,*auxclick,*blur,*cancel,*canplay,*canplaythrough,*change,*click,*close,*contextmenu,*cuechange,*dblclick,*drag,*dragend,*dragenter,*dragleave,*dragover,*dragstart,*drop,*durationchange,*emptied,*ended,*error,*focus,*gotpointercapture,*input,*invalid,*keydown,*keypress,*keyup,*load,*loadeddata,*loadedmetadata,*loadstart,*lostpointercapture,*mousedown,*mouseenter,*mouseleave,*mousemove,*mouseout,*mouseover,*mouseup,*mousewheel,*pause,*play,*playing,*pointercancel,*pointerdown,*pointerenter,*pointerleave,*pointermove,*pointerout,*pointerover,*pointerup,*progress,*ratechange,*reset,*resize,*scroll,*seeked,*seeking,*select,*show,*stalled,*submit,*suspend,*timeupdate,*toggle,*volumechange,*waiting,%style,#tabIndex',
        ':svg:graphics^:svg:|',
        ':svg:animation^:svg:|*begin,*end,*repeat',
        ':svg:geometry^:svg:|',
        ':svg:componentTransferFunction^:svg:|',
        ':svg:gradient^:svg:|',
        ':svg:textContent^:svg:graphics|',
        ':svg:textPositioning^:svg:textContent|',
        'a^[HTMLElement]|charset,coords,download,hash,host,hostname,href,hreflang,name,password,pathname,ping,port,protocol,referrerPolicy,rel,rev,search,shape,target,text,type,username',
        'area^[HTMLElement]|alt,coords,download,hash,host,hostname,href,!noHref,password,pathname,ping,port,protocol,referrerPolicy,rel,search,shape,target,username',
        'audio^media|',
        'br^[HTMLElement]|clear',
        'base^[HTMLElement]|href,target',
        'body^[HTMLElement]|aLink,background,bgColor,link,*beforeunload,*blur,*error,*focus,*hashchange,*languagechange,*load,*message,*offline,*online,*pagehide,*pageshow,*popstate,*rejectionhandled,*resize,*scroll,*storage,*unhandledrejection,*unload,text,vLink',
        'button^[HTMLElement]|!autofocus,!disabled,formAction,formEnctype,formMethod,!formNoValidate,formTarget,name,type,value',
        'canvas^[HTMLElement]|#height,#width',
        'content^[HTMLElement]|select',
        'dl^[HTMLElement]|!compact',
        'datalist^[HTMLElement]|',
        'details^[HTMLElement]|!open',
        'dialog^[HTMLElement]|!open,returnValue',
        'dir^[HTMLElement]|!compact',
        'div^[HTMLElement]|align',
        'embed^[HTMLElement]|align,height,name,src,type,width',
        'fieldset^[HTMLElement]|!disabled,name',
        'font^[HTMLElement]|color,face,size',
        'form^[HTMLElement]|acceptCharset,action,autocomplete,encoding,enctype,method,name,!noValidate,target',
        'frame^[HTMLElement]|frameBorder,longDesc,marginHeight,marginWidth,name,!noResize,scrolling,src',
        'frameset^[HTMLElement]|cols,*beforeunload,*blur,*error,*focus,*hashchange,*languagechange,*load,*message,*offline,*online,*pagehide,*pageshow,*popstate,*rejectionhandled,*resize,*scroll,*storage,*unhandledrejection,*unload,rows',
        'hr^[HTMLElement]|align,color,!noShade,size,width',
        'head^[HTMLElement]|',
        'h1,h2,h3,h4,h5,h6^[HTMLElement]|align',
        'html^[HTMLElement]|version',
        'iframe^[HTMLElement]|align,!allowFullscreen,frameBorder,height,longDesc,marginHeight,marginWidth,name,referrerPolicy,%sandbox,scrolling,src,srcdoc,width',
        'img^[HTMLElement]|align,alt,border,%crossOrigin,#height,#hspace,!isMap,longDesc,lowsrc,name,referrerPolicy,sizes,src,srcset,useMap,#vspace,#width',
        'input^[HTMLElement]|accept,align,alt,autocapitalize,autocomplete,!autofocus,!checked,!defaultChecked,defaultValue,dirName,!disabled,%files,formAction,formEnctype,formMethod,!formNoValidate,formTarget,#height,!incremental,!indeterminate,max,#maxLength,min,#minLength,!multiple,name,pattern,placeholder,!readOnly,!required,selectionDirection,#selectionEnd,#selectionStart,#size,src,step,type,useMap,value,%valueAsDate,#valueAsNumber,#width',
        'li^[HTMLElement]|type,#value',
        'label^[HTMLElement]|htmlFor',
        'legend^[HTMLElement]|align',
        'link^[HTMLElement]|as,charset,%crossOrigin,!disabled,href,hreflang,integrity,media,referrerPolicy,rel,%relList,rev,%sizes,target,type',
        'map^[HTMLElement]|name',
        'marquee^[HTMLElement]|behavior,bgColor,direction,height,#hspace,#loop,#scrollAmount,#scrollDelay,!trueSpeed,#vspace,width',
        'menu^[HTMLElement]|!compact',
        'meta^[HTMLElement]|content,httpEquiv,name,scheme',
        'meter^[HTMLElement]|#high,#low,#max,#min,#optimum,#value',
        'ins,del^[HTMLElement]|cite,dateTime',
        'ol^[HTMLElement]|!compact,!reversed,#start,type',
        'object^[HTMLElement]|align,archive,border,code,codeBase,codeType,data,!declare,height,#hspace,name,standby,type,useMap,#vspace,width',
        'optgroup^[HTMLElement]|!disabled,label',
        'option^[HTMLElement]|!defaultSelected,!disabled,label,!selected,text,value',
        'output^[HTMLElement]|defaultValue,%htmlFor,name,value',
        'p^[HTMLElement]|align',
        'param^[HTMLElement]|name,type,value,valueType',
        'picture^[HTMLElement]|',
        'pre^[HTMLElement]|#width',
        'progress^[HTMLElement]|#max,#value',
        'q,blockquote,cite^[HTMLElement]|',
        'script^[HTMLElement]|!async,charset,%crossOrigin,!defer,event,htmlFor,integrity,src,text,type',
        'select^[HTMLElement]|!autofocus,!disabled,#length,!multiple,name,!required,#selectedIndex,#size,value',
        'shadow^[HTMLElement]|',
        'slot^[HTMLElement]|name',
        'source^[HTMLElement]|media,sizes,src,srcset,type',
        'span^[HTMLElement]|',
        'style^[HTMLElement]|!disabled,media,type',
        'caption^[HTMLElement]|align',
        'th,td^[HTMLElement]|abbr,align,axis,bgColor,ch,chOff,#colSpan,headers,height,!noWrap,#rowSpan,scope,vAlign,width',
        'col,colgroup^[HTMLElement]|align,ch,chOff,#span,vAlign,width',
        'table^[HTMLElement]|align,bgColor,border,%caption,cellPadding,cellSpacing,frame,rules,summary,%tFoot,%tHead,width',
        'tr^[HTMLElement]|align,bgColor,ch,chOff,vAlign',
        'tfoot,thead,tbody^[HTMLElement]|align,ch,chOff,vAlign',
        'template^[HTMLElement]|',
        'textarea^[HTMLElement]|autocapitalize,!autofocus,#cols,defaultValue,dirName,!disabled,#maxLength,#minLength,name,placeholder,!readOnly,!required,#rows,selectionDirection,#selectionEnd,#selectionStart,value,wrap',
        'title^[HTMLElement]|text',
        'track^[HTMLElement]|!default,kind,label,src,srclang',
        'ul^[HTMLElement]|!compact,type',
        'unknown^[HTMLElement]|',
        'video^media|#height,poster,#width',
        ':svg:a^:svg:graphics|',
        ':svg:animate^:svg:animation|',
        ':svg:animateMotion^:svg:animation|',
        ':svg:animateTransform^:svg:animation|',
        ':svg:circle^:svg:geometry|',
        ':svg:clipPath^:svg:graphics|',
        ':svg:defs^:svg:graphics|',
        ':svg:desc^:svg:|',
        ':svg:discard^:svg:|',
        ':svg:ellipse^:svg:geometry|',
        ':svg:feBlend^:svg:|',
        ':svg:feColorMatrix^:svg:|',
        ':svg:feComponentTransfer^:svg:|',
        ':svg:feComposite^:svg:|',
        ':svg:feConvolveMatrix^:svg:|',
        ':svg:feDiffuseLighting^:svg:|',
        ':svg:feDisplacementMap^:svg:|',
        ':svg:feDistantLight^:svg:|',
        ':svg:feDropShadow^:svg:|',
        ':svg:feFlood^:svg:|',
        ':svg:feFuncA^:svg:componentTransferFunction|',
        ':svg:feFuncB^:svg:componentTransferFunction|',
        ':svg:feFuncG^:svg:componentTransferFunction|',
        ':svg:feFuncR^:svg:componentTransferFunction|',
        ':svg:feGaussianBlur^:svg:|',
        ':svg:feImage^:svg:|',
        ':svg:feMerge^:svg:|',
        ':svg:feMergeNode^:svg:|',
        ':svg:feMorphology^:svg:|',
        ':svg:feOffset^:svg:|',
        ':svg:fePointLight^:svg:|',
        ':svg:feSpecularLighting^:svg:|',
        ':svg:feSpotLight^:svg:|',
        ':svg:feTile^:svg:|',
        ':svg:feTurbulence^:svg:|',
        ':svg:filter^:svg:|',
        ':svg:foreignObject^:svg:graphics|',
        ':svg:g^:svg:graphics|',
        ':svg:image^:svg:graphics|',
        ':svg:line^:svg:geometry|',
        ':svg:linearGradient^:svg:gradient|',
        ':svg:mpath^:svg:|',
        ':svg:marker^:svg:|',
        ':svg:mask^:svg:|',
        ':svg:metadata^:svg:|',
        ':svg:path^:svg:geometry|',
        ':svg:pattern^:svg:|',
        ':svg:polygon^:svg:geometry|',
        ':svg:polyline^:svg:geometry|',
        ':svg:radialGradient^:svg:gradient|',
        ':svg:rect^:svg:geometry|',
        ':svg:svg^:svg:graphics|#currentScale,#zoomAndPan',
        ':svg:script^:svg:|type',
        ':svg:set^:svg:animation|',
        ':svg:stop^:svg:|',
        ':svg:style^:svg:|!disabled,media,title,type',
        ':svg:switch^:svg:graphics|',
        ':svg:symbol^:svg:|',
        ':svg:tspan^:svg:textPositioning|',
        ':svg:text^:svg:textPositioning|',
        ':svg:textPath^:svg:textContent|',
        ':svg:title^:svg:|',
        ':svg:use^:svg:graphics|',
        ':svg:view^:svg:|#zoomAndPan',
        'data^[HTMLElement]|value',
        'keygen^[HTMLElement]|!autofocus,challenge,!disabled,form,keytype,name',
        'menuitem^[HTMLElement]|type,label,icon,!disabled,!checked,radiogroup,!default',
        'summary^[HTMLElement]|',
        'time^[HTMLElement]|dateTime',
        ':svg:cursor^:svg:|',
    ];
    var _ATTR_TO_PROP = {
        'class': 'className',
        'for': 'htmlFor',
        'formaction': 'formAction',
        'innerHtml': 'innerHTML',
        'readonly': 'readOnly',
        'tabindex': 'tabIndex',
    };
    var DomElementSchemaRegistry = /** @class */ (function (_super) {
        tslib_1.__extends(DomElementSchemaRegistry, _super);
        function DomElementSchemaRegistry() {
            var _this = _super.call(this) || this;
            _this._schema = {};
            SCHEMA.forEach(function (encodedType) {
                var type = {};
                var _a = tslib_1.__read(encodedType.split('|'), 2), strType = _a[0], strProperties = _a[1];
                var properties = strProperties.split(',');
                var _b = tslib_1.__read(strType.split('^'), 2), typeNames = _b[0], superName = _b[1];
                typeNames.split(',').forEach(function (tag) { return _this._schema[tag.toLowerCase()] = type; });
                var superType = superName && _this._schema[superName.toLowerCase()];
                if (superType) {
                    Object.keys(superType).forEach(function (prop) {
                        type[prop] = superType[prop];
                    });
                }
                properties.forEach(function (property) {
                    if (property.length > 0) {
                        switch (property[0]) {
                            case '*':
                                // We don't yet support events.
                                // If ever allowing to bind to events, GO THROUGH A SECURITY REVIEW, allowing events
                                // will
                                // almost certainly introduce bad XSS vulnerabilities.
                                // type[property.substring(1)] = EVENT;
                                break;
                            case '!':
                                type[property.substring(1)] = BOOLEAN;
                                break;
                            case '#':
                                type[property.substring(1)] = NUMBER;
                                break;
                            case '%':
                                type[property.substring(1)] = OBJECT;
                                break;
                            default:
                                type[property] = STRING;
                        }
                    }
                });
            });
            return _this;
        }
        DomElementSchemaRegistry.prototype.hasProperty = function (tagName, propName, schemaMetas) {
            if (schemaMetas.some(function (schema) { return schema.name === core_1.NO_ERRORS_SCHEMA.name; })) {
                return true;
            }
            if (tagName.indexOf('-') > -1) {
                if (tags_1.isNgContainer(tagName) || tags_1.isNgContent(tagName)) {
                    return false;
                }
                if (schemaMetas.some(function (schema) { return schema.name === core_1.CUSTOM_ELEMENTS_SCHEMA.name; })) {
                    // Can't tell now as we don't know which properties a custom element will get
                    // once it is instantiated
                    return true;
                }
            }
            var elementProperties = this._schema[tagName.toLowerCase()] || this._schema['unknown'];
            return !!elementProperties[propName];
        };
        DomElementSchemaRegistry.prototype.hasElement = function (tagName, schemaMetas) {
            if (schemaMetas.some(function (schema) { return schema.name === core_1.NO_ERRORS_SCHEMA.name; })) {
                return true;
            }
            if (tagName.indexOf('-') > -1) {
                if (tags_1.isNgContainer(tagName) || tags_1.isNgContent(tagName)) {
                    return true;
                }
                if (schemaMetas.some(function (schema) { return schema.name === core_1.CUSTOM_ELEMENTS_SCHEMA.name; })) {
                    // Allow any custom elements
                    return true;
                }
            }
            return !!this._schema[tagName.toLowerCase()];
        };
        /**
         * securityContext returns the security context for the given property on the given DOM tag.
         *
         * Tag and property name are statically known and cannot change at runtime, i.e. it is not
         * possible to bind a value into a changing attribute or tag name.
         *
         * The filtering is based on a list of allowed tags|attributes. All attributes in the schema
         * above are assumed to have the 'NONE' security context, i.e. that they are safe inert
         * string values. Only specific well known attack vectors are assigned their appropriate context.
         */
        DomElementSchemaRegistry.prototype.securityContext = function (tagName, propName, isAttribute) {
            if (isAttribute) {
                // NB: For security purposes, use the mapped property name, not the attribute name.
                propName = this.getMappedPropName(propName);
            }
            // Make sure comparisons are case insensitive, so that case differences between attribute and
            // property names do not have a security impact.
            tagName = tagName.toLowerCase();
            propName = propName.toLowerCase();
            var ctx = dom_security_schema_1.SECURITY_SCHEMA()[tagName + '|' + propName];
            if (ctx) {
                return ctx;
            }
            ctx = dom_security_schema_1.SECURITY_SCHEMA()['*|' + propName];
            return ctx ? ctx : core_1.SecurityContext.NONE;
        };
        DomElementSchemaRegistry.prototype.getMappedPropName = function (propName) {
            return _ATTR_TO_PROP[propName] || propName;
        };
        DomElementSchemaRegistry.prototype.getDefaultComponentElementName = function () {
            return 'ng-component';
        };
        DomElementSchemaRegistry.prototype.validateProperty = function (name) {
            if (name.toLowerCase().startsWith('on')) {
                var msg = "Binding to event property '" + name + "' is disallowed for security reasons, " +
                    ("please use (" + name.slice(2) + ")=...") +
                    ("\nIf '" + name + "' is a directive input, make sure the directive is imported by the") +
                    " current module.";
                return { error: true, msg: msg };
            }
            else {
                return { error: false };
            }
        };
        DomElementSchemaRegistry.prototype.validateAttribute = function (name) {
            if (name.toLowerCase().startsWith('on')) {
                var msg = "Binding to event attribute '" + name + "' is disallowed for security reasons, " +
                    ("please use (" + name.slice(2) + ")=...");
                return { error: true, msg: msg };
            }
            else {
                return { error: false };
            }
        };
        DomElementSchemaRegistry.prototype.allKnownElementNames = function () {
            return Object.keys(this._schema);
        };
        DomElementSchemaRegistry.prototype.normalizeAnimationStyleProperty = function (propName) {
            return util_1.dashCaseToCamelCase(propName);
        };
        DomElementSchemaRegistry.prototype.normalizeAnimationStyleValue = function (camelCaseProp, userProvidedProp, val) {
            var unit = '';
            var strVal = val.toString().trim();
            var errorMsg = null;
            if (_isPixelDimensionStyle(camelCaseProp) && val !== 0 && val !== '0') {
                if (typeof val === 'number') {
                    unit = 'px';
                }
                else {
                    var valAndSuffixMatch = val.match(/^[+-]?[\d\.]+([a-z]*)$/);
                    if (valAndSuffixMatch && valAndSuffixMatch[1].length == 0) {
                        errorMsg = "Please provide a CSS unit value for " + userProvidedProp + ":" + val;
                    }
                }
            }
            return { error: errorMsg, value: strVal + unit };
        };
        return DomElementSchemaRegistry;
    }(element_schema_registry_1.ElementSchemaRegistry));
    exports.DomElementSchemaRegistry = DomElementSchemaRegistry;
    function _isPixelDimensionStyle(prop) {
        switch (prop) {
            case 'width':
            case 'height':
            case 'minWidth':
            case 'minHeight':
            case 'maxWidth':
            case 'maxHeight':
            case 'left':
            case 'top':
            case 'bottom':
            case 'right':
            case 'fontSize':
            case 'outlineWidth':
            case 'outlineOffset':
            case 'paddingTop':
            case 'paddingLeft':
            case 'paddingBottom':
            case 'paddingRight':
            case 'marginTop':
            case 'marginLeft':
            case 'marginBottom':
            case 'marginRight':
            case 'borderRadius':
            case 'borderWidth':
            case 'borderTopWidth':
            case 'borderLeftWidth':
            case 'borderRightWidth':
            case 'borderBottomWidth':
            case 'textIndent':
                return true;
            default:
                return false;
        }
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZG9tX2VsZW1lbnRfc2NoZW1hX3JlZ2lzdHJ5LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvc3JjL3NjaGVtYS9kb21fZWxlbWVudF9zY2hlbWFfcmVnaXN0cnkudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUVILG1EQUFrRztJQUVsRyw2REFBNkQ7SUFDN0QsbURBQTRDO0lBRTVDLHdGQUFzRDtJQUN0RCxnR0FBZ0U7SUFFaEUsSUFBTSxPQUFPLEdBQUcsU0FBUyxDQUFDO0lBQzFCLElBQU0sTUFBTSxHQUFHLFFBQVEsQ0FBQztJQUN4QixJQUFNLE1BQU0sR0FBRyxRQUFRLENBQUM7SUFDeEIsSUFBTSxNQUFNLEdBQUcsUUFBUSxDQUFDO0lBRXhCOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztPQXlDRztJQUVILG9HQUFvRztJQUNwRyxvR0FBb0c7SUFDcEcsb0dBQW9HO0lBQ3BHLG9HQUFvRztJQUNwRyxvR0FBb0c7SUFDcEcsRUFBRTtJQUNGLCtFQUErRTtJQUMvRSxFQUFFO0lBQ0Ysa0dBQWtHO0lBQ2xHLHFFQUFxRTtJQUNyRSxFQUFFO0lBQ0Ysb0dBQW9HO0lBRXBHLElBQU0sTUFBTSxHQUFhO1FBQ3ZCLGdPQUFnTztZQUM1Tiw4Q0FBOEM7WUFDOUMsa0tBQWtLO1FBQ3RLLHExQkFBcTFCO1FBQ3IxQixvZ0NBQW9nQztRQUNwZ0MsK05BQStOO1FBQy9OLDB1QkFBMHVCO1FBQzF1QixzQkFBc0I7UUFDdEIsMENBQTBDO1FBQzFDLHNCQUFzQjtRQUN0Qix1Q0FBdUM7UUFDdkMsc0JBQXNCO1FBQ3RCLGlDQUFpQztRQUNqQyx3Q0FBd0M7UUFDeEMsa0xBQWtMO1FBQ2xMLDZKQUE2SjtRQUM3SixjQUFjO1FBQ2Qsd0JBQXdCO1FBQ3hCLGdDQUFnQztRQUNoQyxnUUFBZ1E7UUFDaFEsd0hBQXdI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QixLQUFLLGFBQWEsQ0FBQztZQUNuQixLQUFLLGdCQUFnQixDQUFDO1lBQ3RCLEtBQUssaUJBQWlCLENBQUM7WUFDdkIsS0FBSyxrQkFBa0IsQ0FBQztZQUN4QixLQUFLLG1CQUFtQixDQUFDO1lBQ3pCLEtBQUssWUFBWTtnQkFDZixPQUFPLElBQUksQ0FBQztZQUVkO2dCQUNFLE9BQU8sS0FBSyxDQUFDO1NBQ2hCO0lBQ0gsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0NVU1RPTV9FTEVNRU5UU19TQ0hFTUEsIE5PX0VSUk9SU19TQ0hFTUEsIFNjaGVtYU1ldGFkYXRhLCBTZWN1cml0eUNvbnRleHR9IGZyb20gJy4uL2NvcmUnO1xuXG5pbXBvcnQge2lzTmdDb250YWluZXIsIGlzTmdDb250ZW50fSBmcm9tICcuLi9tbF9wYXJzZXIvdGFncyc7XG5pbXBvcnQge2Rhc2hDYXNlVG9DYW1lbENhc2V9IGZyb20gJy4uL3V0aWwnO1xuXG5pbXBvcnQge1NFQ1VSSVRZX1NDSEVNQX0gZnJvbSAnLi9kb21fc2VjdXJpdHlfc2NoZW1hJztcbmltcG9ydCB7RWxlbWVudFNjaGVtYVJlZ2lzdHJ5fSBmcm9tICcuL2VsZW1lbnRfc2NoZW1hX3JlZ2lzdHJ5JztcblxuY29uc3QgQk9PTEVBTiA9ICdib29sZWFuJztcbmNvbnN0IE5VTUJFUiA9ICdudW1iZXInO1xuY29uc3QgU1RSSU5HID0gJ3N0cmluZyc7XG5jb25zdCBPQkpFQ1QgPSAnb2JqZWN0JztcblxuLyoqXG4gKiBUaGlzIGFycmF5IHJlcHJlc2VudHMgdGhlIERPTSBzY2hlbWEuIEl0IGVuY29kZXMgaW5oZXJpdGFuY2UsIHByb3BlcnRpZXMsIGFuZCBldmVudHMuXG4gKlxuICogIyMgT3ZlcnZpZXdcbiAqXG4gKiBFYWNoIGxpbmUgcmVwcmVzZW50cyBvbmUga2luZCBvZiBlbGVtZW50LiBUaGUgYGVsZW1lbnRfaW5oZXJpdGFuY2VgIGFuZCBwcm9wZXJ0aWVzIGFyZSBqb2luZWRcbiAqIHVzaW5nIGBlbGVtZW50X2luaGVyaXRhbmNlfHByb3BlcnRpZXNgIHN5bnRheC5cbiAqXG4gKiAjIyBFbGVtZW50IEluaGVyaXRhbmNlXG4gKlxuICogVGhlIGBlbGVtZW50X2luaGVyaXRhbmNlYCBjYW4gYmUgZnVydGhlciBzdWJkaXZpZGVkIGFzIGBlbGVtZW50MSxlbGVtZW50MiwuLi5ecGFyZW50RWxlbWVudGAuXG4gKiBIZXJlIHRoZSBpbmRpdmlkdWFsIGVsZW1lbnRzIGFyZSBzZXBhcmF0ZWQgYnkgYCxgIChjb21tYXMpLiBFdmVyeSBlbGVtZW50IGluIHRoZSBsaXN0XG4gKiBoYXMgaWRlbnRpY2FsIHByb3BlcnRpZXMuXG4gKlxuICogQW4gYGVsZW1lbnRgIG1heSBpbmhlcml0IGFkZGl0aW9uYWwgcHJvcGVydGllcyBmcm9tIGBwYXJlbnRFbGVtZW50YCBJZiBubyBgXnBhcmVudEVsZW1lbnRgIGlzXG4gKiBzcGVjaWZpZWQgdGhlbiBgXCJcImAgKGJsYW5rKSBlbGVtZW50IGlzIGFzc3VtZWQuXG4gKlxuICogTk9URTogVGhlIGJsYW5rIGVsZW1lbnQgaW5oZXJpdHMgZnJvbSByb290IGBbRWxlbWVudF1gIGVsZW1lbnQsIHRoZSBzdXBlciBlbGVtZW50IG9mIGFsbFxuICogZWxlbWVudHMuXG4gKlxuICogTk9URSBhbiBlbGVtZW50IHByZWZpeCBzdWNoIGFzIGA6c3ZnOmAgaGFzIG5vIHNwZWNpYWwgbWVhbmluZyB0byB0aGUgc2NoZW1hLlxuICpcbiAqICMjIFByb3BlcnRpZXNcbiAqXG4gKiBFYWNoIGVsZW1lbnQgaGFzIGEgc2V0IG9mIHByb3BlcnRpZXMgc2VwYXJhdGVkIGJ5IGAsYCAoY29tbWFzKS4gRWFjaCBwcm9wZXJ0eSBjYW4gYmUgcHJlZml4ZWRcbiAqIGJ5IGEgc3BlY2lhbCBjaGFyYWN0ZXIgZGVzaWduYXRpbmcgaXRzIHR5cGU6XG4gKlxuICogLSAobm8gcHJlZml4KTogcHJvcGVydHkgaXMgYSBzdHJpbmcuXG4gKiAtIGAqYDogcHJvcGVydHkgcmVwcmVzZW50cyBhbiBldmVudC5cbiAqIC0gYCFgOiBwcm9wZXJ0eSBpcyBhIGJvb2xlYW4uXG4gKiAtIGAjYDogcHJvcGVydHkgaXMgYSBudW1iZXIuXG4gKiAtIGAlYDogcHJvcGVydHkgaXMgYW4gb2JqZWN0LlxuICpcbiAqICMjIFF1ZXJ5XG4gKlxuICogVGhlIGNsYXNzIGNyZWF0ZXMgYW4gaW50ZXJuYWwgc3F1YXMgcmVwcmVzZW50YXRpb24gd2hpY2ggYWxsb3dzIHRvIGVhc2lseSBhbnN3ZXIgdGhlIHF1ZXJ5IG9mXG4gKiBpZiBhIGdpdmVuIHByb3BlcnR5IGV4aXN0IG9uIGEgZ2l2ZW4gZWxlbWVudC5cbiAqXG4gKiBOT1RFOiBXZSBkb24ndCB5ZXQgc3VwcG9ydCBxdWVyeWluZyBmb3IgdHlwZXMgb3IgZXZlbnRzLlxuICogTk9URTogVGhpcyBzY2hlbWEgaXMgYXV0byBleHRyYWN0ZWQgZnJvbSBgc2NoZW1hX2V4dHJhY3Rvci50c2AgbG9jYXRlZCBpbiB0aGUgdGVzdCBmb2xkZXIsXG4gKiAgICAgICBzZWUgZG9tX2VsZW1lbnRfc2NoZW1hX3JlZ2lzdHJ5X3NwZWMudHNcbiAqL1xuXG4vLyA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09XG4vLyA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09XG4vLyA9PT09PT09PT09PSBTIFQgTyBQICAgLSAgUyBUIE8gUCAgIC0gIFMgVCBPIFAgICAtICBTIFQgTyBQICAgLSAgUyBUIE8gUCAgIC0gIFMgVCBPIFAgID09PT09PT09PT09XG4vLyA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09XG4vLyA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09XG4vL1xuLy8gICAgICAgICAgICAgICAgICAgICAgIERPIE5PVCBFRElUIFRISVMgRE9NIFNDSEVNQSBXSVRIT1VUIEEgU0VDVVJJVFkgUkVWSUVXIVxuLy9cbi8vIE5ld2x5IGFkZGVkIHByb3BlcnRpZXMgbXVzdCBiZSBzZWN1cml0eSByZXZpZXdlZCBhbmQgYXNzaWduZWQgYW4gYXBwcm9wcmlhdGUgU2VjdXJpdHlDb250ZXh0IGluXG4vLyBkb21fc2VjdXJpdHlfc2NoZW1hLnRzLiBSZWFjaCBvdXQgdG8gbXByb2JzdCAmIHJqYW1ldCBmb3IgZGV0YWlscy5cbi8vXG4vLyA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09XG5cbmNvbnN0IFNDSEVNQTogc3RyaW5nW10gPSBbXG4gICdbRWxlbWVudF18dGV4dENvbnRlbnQsJWNsYXNzTGlzdCxjbGFzc05hbWUsaWQsaW5uZXJIVE1MLCpiZWZvcmVjb3B5LCpiZWZvcmVjdXQsKmJlZm9yZXBhc3RlLCpjb3B5LCpjdXQsKnBhc3RlLCpzZWFyY2gsKnNlbGVjdHN0YXJ0LCp3ZWJraXRmdWxsc2NyZWVuY2hhbmdlLCp3ZWJraXRmdWxsc2NyZWVuZXJyb3IsKndoZWVsLG91dGVySFRNTCwjc2Nyb2xsTGVmdCwjc2Nyb2xsVG9wLHNsb3QnICtcbiAgICAgIC8qIGFkZGVkIG1hbnVhbGx5IHRvIGF2b2lkIGJyZWFraW5nIGNoYW5nZXMgKi9cbiAgICAgICcsKm1lc3NhZ2UsKm1vemZ1bGxzY3JlZW5jaGFuZ2UsKm1vemZ1bGxzY3JlZW5lcnJvciwqbW96cG9pbnRlcmxvY2tjaGFuZ2UsKm1venBvaW50ZXJsb2NrZXJyb3IsKndlYmdsY29udGV4dGNyZWF0aW9uZXJyb3IsKndlYmdsY29udGV4dGxvc3QsKndlYmdsY29udGV4dHJlc3RvcmVkJyxcbiAgJ1tIVE1MRWxlbWVudF1eW0VsZW1lbnRdfGFjY2Vzc0tleSxjb250ZW50RWRpdGFibGUsZGlyLCFkcmFnZ2FibGUsIWhpZGRlbixpbm5lclRleHQsbGFuZywqYWJvcnQsKmF1eGNsaWNrLCpibHVyLCpjYW5jZWwsKmNhbnBsYXksKmNhbnBsYXl0aHJvdWdoLCpjaGFuZ2UsKmNsaWNrLCpjbG9zZSwqY29udGV4dG1lbnUsKmN1ZWNoYW5nZSwqZGJsY2xpY2ssKmRyYWcsKmRyYWdlbmQsKmRyYWdlbnRlciwqZHJhZ2xlYXZlLCpkcmFnb3ZlciwqZHJhZ3N0YXJ0LCpkcm9wLCpkdXJhdGlvbmNoYW5nZSwqZW1wdGllZCwqZW5kZWQsKmVycm9yLCpmb2N1cywqZ290cG9pbnRlcmNhcHR1cmUsKmlucHV0LCppbnZhbGlkLCprZXlkb3duLCprZXlwcmVzcywqa2V5dXAsKmxvYWQsKmxvYWRlZGRhdGEsKmxvYWRlZG1ldGFkYXRhLCpsb2Fkc3RhcnQsKmxvc3Rwb2ludGVyY2FwdHVyZSwqbW91c2Vkb3duLCptb3VzZWVudGVyLCptb3VzZWxlYXZlLCptb3VzZW1vdmUsKm1vdXNlb3V0LCptb3VzZW92ZXIsKm1vdXNldXAsKm1vdXNld2hlZWwsKnBhdXNlLCpwbGF5LCpwbGF5aW5nLCpwb2ludGVyY2FuY2VsLCpwb2ludGVyZG93biwqcG9pbnRlcmVudGVyLCpwb2ludGVybGVhdmUsKnBvaW50ZXJtb3ZlLCpwb2ludGVyb3V0LCpwb2ludGVyb3ZlciwqcG9pbnRlcnVwLCpwcm9ncmVzcywqcmF0ZWNoYW5nZSwqcmVzZXQsKnJlc2l6ZSwqc2Nyb2xsLCpzZWVrZWQsKnNlZWtpbmcsKnNlbGVjdCwqc2hvdywqc3RhbGxlZCwqc3VibWl0LCpzdXNwZW5kLCp0aW1ldXBkYXRlLCp0b2dnbGUsKnZvbHVtZWNoYW5nZSwqd2FpdGluZyxvdXRlclRleHQsIXNwZWxsY2hlY2ssJXN0eWxlLCN0YWJJbmRleCx0aXRsZSwhdHJhbnNsYXRlJyxcbiAgJ2FiYnIsYWRkcmVzcyxhcnRpY2xlLGFzaWRlLGIsYmRpLGJkbyxjaXRlLGNvZGUsZGQsZGZuLGR0LGVtLGZpZ2NhcHRpb24sZmlndXJlLGZvb3RlcixoZWFkZXIsaSxrYmQsbWFpbixtYXJrLG5hdixub3NjcmlwdCxyYixycCxydCxydGMscnVieSxzLHNhbXAsc2VjdGlvbixzbWFsbCxzdHJvbmcsc3ViLHN1cCx1LHZhcix3YnJeW0hUTUxFbGVtZW50XXxhY2Nlc3NLZXksY29udGVudEVkaXRhYmxlLGRpciwhZHJhZ2dhYmxlLCFoaWRkZW4saW5uZXJUZXh0LGxhbmcsKmFib3J0LCphdXhjbGljaywqYmx1ciwqY2FuY2VsLCpjYW5wbGF5LCpjYW5wbGF5dGhyb3VnaCwqY2hhbmdlLCpjbGljaywqY2xvc2UsKmNvbnRleHRtZW51LCpjdWVjaGFuZ2UsKmRibGNsaWNrLCpkcmFnLCpkcmFnZW5kLCpkcmFnZW50ZXIsKmRyYWdsZWF2ZSwqZHJhZ292ZXIsKmRyYWdzdGFydCwqZHJvcCwqZHVyYXRpb25jaGFuZ2UsKmVtcHRpZWQsKmVuZGVkLCplcnJvciwqZm9jdXMsKmdvdHBvaW50ZXJjYXB0dXJlLCppbnB1dCwqaW52YWxpZCwqa2V5ZG93biwqa2V5cHJlc3MsKmtleXVwLCpsb2FkLCpsb2FkZWRkYXRhLCpsb2FkZWRtZXRhZGF0YSwqbG9hZHN0YXJ0LCpsb3N0cG9pbnRlcmNhcHR1cmUsKm1vdXNlZG93biwqbW91c2VlbnRlciwqbW91c2VsZWF2ZSwqbW91c2Vtb3ZlLCptb3VzZW91dCwqbW91c2VvdmVyLCptb3VzZXVwLCptb3VzZXdoZWVsLCpwYXVzZSwqcGxheSwqcGxheWluZywqcG9pbnRlcmNhbmNlbCwqcG9pbnRlcmRvd24sKnBvaW50ZXJlbnRlciwqcG9pbnRlcmxlYXZlLCpwb2ludGVybW92ZSwqcG9pbnRlcm91dCwqcG9pbnRlcm92ZXIsKnBvaW50ZXJ1cCwqcHJvZ3Jlc3MsKnJhdGVjaGFuZ2UsKnJlc2V0LCpyZXNpemUsKnNjcm9sbCwqc2Vla2VkLCpzZWVraW5nLCpzZWxlY3QsKnNob3csKnN0YWxsZWQsKnN1Ym1pdCwqc3VzcGVuZCwqdGltZXVwZGF0ZSwqdG9nZ2xlLCp2b2x1bWVjaGFuZ2UsKndhaXRpbmcsb3V0ZXJUZXh0LCFzcGVsbGNoZWNrLCVzdHlsZSwjdGFiSW5kZXgsdGl0bGUsIXRyYW5zbGF0ZScsXG4gICdtZWRpYV5bSFRNTEVsZW1lbnRdfCFhdXRvcGxheSwhY29udHJvbHMsJWNvbnRyb2xzTGlzdCwlY3Jvc3NPcmlnaW4sI2N1cnJlbnRUaW1lLCFkZWZhdWx0TXV0ZWQsI2RlZmF1bHRQbGF5YmFja1JhdGUsIWRpc2FibGVSZW1vdGVQbGF5YmFjaywhbG9vcCwhbXV0ZWQsKmVuY3J5cHRlZCwqd2FpdGluZ2ZvcmtleSwjcGxheWJhY2tSYXRlLHByZWxvYWQsc3JjLCVzcmNPYmplY3QsI3ZvbHVtZScsXG4gICc6c3ZnOl5bSFRNTEVsZW1lbnRdfCphYm9ydCwqYXV4Y2xpY2ssKmJsdXIsKmNhbmNlbCwqY2FucGxheSwqY2FucGxheXRocm91Z2gsKmNoYW5nZSwqY2xpY2ssKmNsb3NlLCpjb250ZXh0bWVudSwqY3VlY2hhbmdlLCpkYmxjbGljaywqZHJhZywqZHJhZ2VuZCwqZHJhZ2VudGVyLCpkcmFnbGVhdmUsKmRyYWdvdmVyLCpkcmFnc3RhcnQsKmRyb3AsKmR1cmF0aW9uY2hhbmdlLCplbXB0aWVkLCplbmRlZCwqZXJyb3IsKmZvY3VzLCpnb3Rwb2ludGVyY2FwdHVyZSwqaW5wdXQsKmludmFsaWQsKmtleWRvd24sKmtleXByZXNzLCprZXl1cCwqbG9hZCwqbG9hZGVkZGF0YSwqbG9hZGVkbWV0YWRhdGEsKmxvYWRzdGFydCwqbG9zdHBvaW50ZXJjYXB0dXJlLCptb3VzZWRvd24sKm1vdXNlZW50ZXIsKm1vdXNlbGVhdmUsKm1vdXNlbW92ZSwqbW91c2VvdXQsKm1vdXNlb3ZlciwqbW91c2V1cCwqbW91c2V3aGVlbCwqcGF1c2UsKnBsYXksKnBsYXlpbmcsKnBvaW50ZXJjYW5jZWwsKnBvaW50ZXJkb3duLCpwb2ludGVyZW50ZXIsKnBvaW50ZXJsZWF2ZSwqcG9pbnRlcm1vdmUsKnBvaW50ZXJvdXQsKnBvaW50ZXJvdmVyLCpwb2ludGVydXAsKnByb2dyZXNzLCpyYXRlY2hhbmdlLCpyZXNldCwqcmVzaXplLCpzY3JvbGwsKnNlZWtlZCwqc2Vla2luZywqc2VsZWN0LCpzaG93LCpzdGFsbGVkLCpzdWJtaXQsKnN1c3BlbmQsKnRpbWV1cGRhdGUsKnRvZ2dsZSwqdm9sdW1lY2hhbmdlLCp3YWl0aW5nLCVzdHlsZSwjdGFiSW5kZXgnLFxuICAnOnN2ZzpncmFwaGljc146c3ZnOnwnLFxuICAnOnN2ZzphbmltYXRpb25eOnN2Zzp8KmJlZ2luLCplbmQsKnJlcGVhdCcsXG4gICc6c3ZnOmdlb21ldHJ5Xjpzdmc6fCcsXG4gICc6c3ZnOmNvbXBvbmVudFRyYW5zZmVyRnVuY3Rpb25eOnN2Zzp8JyxcbiAgJzpzdmc6Z3JhZGllbnReOnN2Zzp8JyxcbiAgJzpzdmc6dGV4dENvbnRlbnReOnN2ZzpncmFwaGljc3wnLFxuICAnOnN2Zzp0ZXh0UG9zaXRpb25pbmdeOnN2Zzp0ZXh0Q29udGVudHwnLFxuICAnYV5bSFRNTEVsZW1lbnRdfGNoYXJzZXQsY29vcmRzLGRvd25sb2FkLGhhc2gsaG9zdCxob3N0bmFtZSxocmVmLGhyZWZsYW5nLG5hbWUscGFzc3dvcmQscGF0aG5hbWUscGluZyxwb3J0LHByb3RvY29sLHJlZmVycmVyUG9saWN5LHJlbCxyZXYsc2VhcmNoLHNoYXBlLHRhcmdldCx0ZXh0LHR5cGUsdXNlcm5hbWUnLFxuICAnYXJlYV5bSFRNTEVsZW1lbnRdfGFsdCxjb29yZHMsZG93bmxvYWQsaGFzaCxob3N0LGhvc3RuYW1lLGhyZWYsIW5vSHJlZixwYXNzd29yZCxwYXRobmFtZSxwaW5nLHBvcnQscHJvdG9jb2wscmVmZXJyZXJQb2xpY3kscmVsLHNlYXJjaCxzaGFwZSx0YXJnZXQsdXNlcm5hbWUnLFxuICAnYXVkaW9ebWVkaWF8JyxcbiAgJ2JyXltIVE1MRWxlbWVudF18Y2xlYXInLFxuICAnYmFzZV5bSFRNTEVsZW1lbnRdfGhyZWYsdGFyZ2V0JyxcbiAgJ2JvZHleW0hUTUxFbGVtZW50XXxhTGluayxiYWNrZ3JvdW5kLGJnQ29sb3IsbGluaywqYmVmb3JldW5sb2FkLCpibHVyLCplcnJvciwqZm9jdXMsKmhhc2hjaGFuZ2UsKmxhbmd1YWdlY2hhbmdlLCpsb2FkLCptZXNzYWdlLCpvZmZsaW5lLCpvbmxpbmUsKnBhZ2VoaWRlLCpwYWdlc2hvdywqcG9wc3RhdGUsKnJlamVjdGlvbmhhbmRsZWQsKnJlc2l6ZSwqc2Nyb2xsLCpzdG9yYWdlLCp1bmhhbmRsZWRyZWplY3Rpb24sKnVubG9hZCx0ZXh0LHZMaW5rJyxcbiAgJ2J1dHRvbl5bSFRNTEVsZW1lbnRdfCFhdXRvZm9jdXMsIWRpc2FibGVkLGZvcm1BY3Rpb24sZm9ybUVuY3R5cGUsZm9ybU1ldGhvZCwhZm9ybU5vVmFsaWRhdGUsZm9ybVRhcmdldCxuYW1lLHR5cGUsdmFsdWUnLFxuICAnY2FudmFzXltIVE1MRWxlbWVudF18I2hlaWdodCwjd2lkdGgnLFxuICAnY29udGVudF5bSFRNTEVsZW1lbnRdfHNlbGVjdCcsXG4gICdkbF5bSFRNTEVsZW1lbnRdfCFjb21wYWN0JyxcbiAgJ2RhdGFsaXN0XltIVE1MRWxlbWVudF18JyxcbiAgJ2RldGFpbHNeW0hUTUxFbGVtZW50XXwhb3BlbicsXG4gICdkaWFsb2deW0hUTUxFbGVtZW50XXwhb3BlbixyZXR1cm5WYWx1ZScsXG4gICdkaXJeW0hUTUxFbGVtZW50XXwhY29tcGFjdCcsXG4gICdkaXZeW0hUTUxFbGVtZW50XXxhbGlnbicsXG4gICdlbWJlZF5bSFRNTEVsZW1lbnRdfGFsaWduLGhlaWdodCxuYW1lLHNyYyx0eXBlLHdpZHRoJyxcbiAgJ2ZpZWxkc2V0XltIVE1MRWxlbWVudF18IWRpc2FibGVkLG5hbWUnLFxuICAnZm9udF5bSFRNTEVsZW1lbnRdfGNvbG9yLGZhY2Usc2l6ZScsXG4gICdmb3JtXltIVE1MRWxlbWVudF18YWNjZXB0Q2hhcnNldCxhY3Rpb24sYXV0b2NvbXBsZXRlLGVuY29kaW5nLGVuY3R5cGUsbWV0aG9kLG5hbWUsIW5vVmFsaWRhdGUsdGFyZ2V0JyxcbiAgJ2ZyYW1lXltIVE1MRWxlbWVudF18ZnJhbWVCb3JkZXIsbG9uZ0Rlc2MsbWFyZ2luSGVpZ2h0LG1hcmdpbldpZHRoLG5hbWUsIW5vUmVzaXplLHNjcm9sbGluZyxzcmMnLFxuICAnZnJhbWVzZXReW0hUTUxFbGVtZW50XXxjb2xzLCpiZWZvcmV1bmxvYWQsKmJsdXIsKmVycm9yLCpmb2N1cywqaGFzaGNoYW5nZSwqbGFuZ3VhZ2VjaGFuZ2UsKmxvYWQsKm1lc3NhZ2UsKm9mZmxpbmUsKm9ubGluZSwqcGFnZWhpZGUsKnBhZ2VzaG93LCpwb3BzdGF0ZSwqcmVqZWN0aW9uaGFuZGxlZCwqcmVzaXplLCpzY3JvbGwsKnN0b3JhZ2UsKnVuaGFuZGxlZHJlamVjdGlvbiwqdW5sb2FkLHJvd3MnLFxuICAnaHJeW0hUTUxFbGVtZW50XXxhbGlnbixjb2xvciwhbm9TaGFkZSxzaXplLHdpZHRoJyxcbiAgJ2hlYWReW0hUTUxFbGVtZW50XXwnLFxuICAnaDEsaDIsaDMsaDQsaDUsaDZeW0hUTUxFbGVtZW50XXxhbGlnbicsXG4gICdodG1sXltIVE1MRWxlbWVudF18dmVyc2lvbicsXG4gICdpZnJhbWVeW0hUTUxFbGVtZW50XXxhbGlnbiwhYWxsb3dGdWxsc2NyZWVuLGZyYW1lQm9yZGVyLGhlaWdodCxsb25nRGVzYyxtYXJnaW5IZWlnaHQsbWFyZ2luV2lkdGgsbmFtZSxyZWZlcnJlclBvbGljeSwlc2FuZGJveCxzY3JvbGxpbmcsc3JjLHNyY2RvYyx3aWR0aCcsXG4gICdpbWdeW0hUTUxFbGVtZW50XXxhbGlnbixhbHQsYm9yZGVyLCVjcm9zc09yaWdpbiwjaGVpZ2h0LCNoc3BhY2UsIWlzTWFwLGxvbmdEZXNjLGxvd3NyYyxuYW1lLHJlZmVycmVyUG9saWN5LHNpemVzLHNyYyxzcmNzZXQsdXNlTWFwLCN2c3BhY2UsI3dpZHRoJyxcbiAgJ2lucHV0XltIVE1MRWxlbWVudF18YWNjZXB0LGFsaWduLGFsdCxhdXRvY2FwaXRhbGl6ZSxhdXRvY29tcGxldGUsIWF1dG9mb2N1cywhY2hlY2tlZCwhZGVmYXVsdENoZWNrZWQsZGVmYXVsdFZhbHVlLGRpck5hbWUsIWRpc2FibGVkLCVmaWxlcyxmb3JtQWN0aW9uLGZvcm1FbmN0eXBlLGZvcm1NZXRob2QsIWZvcm1Ob1ZhbGlkYXRlLGZvcm1UYXJnZXQsI2hlaWdodCwhaW5jcmVtZW50YWwsIWluZGV0ZXJtaW5hdGUsbWF4LCNtYXhMZW5ndGgsbWluLCNtaW5MZW5ndGgsIW11bHRpcGxlLG5hbWUscGF0dGVybixwbGFjZWhvbGRlciwhcmVhZE9ubHksIXJlcXVpcmVkLHNlbGVjdGlvbkRpcmVjdGlvbiwjc2VsZWN0aW9uRW5kLCNzZWxlY3Rpb25TdGFydCwjc2l6ZSxzcmMsc3RlcCx0eXBlLHVzZU1hcCx2YWx1ZSwldmFsdWVBc0RhdGUsI3ZhbHVlQXNOdW1iZXIsI3dpZHRoJyxcbiAgJ2xpXltIVE1MRWxlbWVudF18dHlwZSwjdmFsdWUnLFxuICAnbGFiZWxeW0hUTUxFbGVtZW50XXxodG1sRm9yJyxcbiAgJ2xlZ2VuZF5bSFRNTEVsZW1lbnRdfGFsaWduJyxcbiAgJ2xpbmteW0hUTUxFbGVtZW50XXxhcyxjaGFyc2V0LCVjcm9zc09yaWdpbiwhZGlzYWJsZWQsaHJlZixocmVmbGFuZyxpbnRlZ3JpdHksbWVkaWEscmVmZXJyZXJQb2xpY3kscmVsLCVyZWxMaXN0LHJldiwlc2l6ZXMsdGFyZ2V0LHR5cGUnLFxuICAnbWFwXltIVE1MRWxlbWVudF18bmFtZScsXG4gICdtYXJxdWVlXltIVE1MRWxlbWVudF18YmVoYXZpb3IsYmdDb2xvcixkaXJlY3Rpb24saGVpZ2h0LCNoc3BhY2UsI2xvb3AsI3Njcm9sbEFtb3VudCwjc2Nyb2xsRGVsYXksIXRydWVTcGVlZCwjdnNwYWNlLHdpZHRoJyxcbiAgJ21lbnVeW0hUTUxFbGVtZW50XXwhY29tcGFjdCcsXG4gICdtZXRhXltIVE1MRWxlbWVudF18Y29udGVudCxodHRwRXF1aXYsbmFtZSxzY2hlbWUnLFxuICAnbWV0ZXJeW0hUTUxFbGVtZW50XXwjaGlnaCwjbG93LCNtYXgsI21pbiwjb3B0aW11bSwjdmFsdWUnLFxuICAnaW5zLGRlbF5bSFRNTEVsZW1lbnRdfGNpdGUsZGF0ZVRpbWUnLFxuICAnb2xeW0hUTUxFbGVtZW50XXwhY29tcGFjdCwhcmV2ZXJzZWQsI3N0YXJ0LHR5cGUnLFxuICAnb2JqZWN0XltIVE1MRWxlbWVudF18YWxpZ24sYXJjaGl2ZSxib3JkZXIsY29kZSxjb2RlQmFzZSxjb2RlVHlwZSxkYXRhLCFkZWNsYXJlLGhlaWdodCwjaHNwYWNlLG5hbWUsc3RhbmRieSx0eXBlLHVzZU1hcCwjdnNwYWNlLHdpZHRoJyxcbiAgJ29wdGdyb3VwXltIVE1MRWxlbWVudF18IWRpc2FibGVkLGxhYmVsJyxcbiAgJ29wdGlvbl5bSFRNTEVsZW1lbnRdfCFkZWZhdWx0U2VsZWN0ZWQsIWRpc2FibGVkLGxhYmVsLCFzZWxlY3RlZCx0ZXh0LHZhbHVlJyxcbiAgJ291dHB1dF5bSFRNTEVsZW1lbnRdfGRlZmF1bHRWYWx1ZSwlaHRtbEZvcixuYW1lLHZhbHVlJyxcbiAgJ3BeW0hUTUxFbGVtZW50XXxhbGlnbicsXG4gICdwYXJhbV5bSFRNTEVsZW1lbnRdfG5hbWUsdHlwZSx2YWx1ZSx2YWx1ZVR5cGUnLFxuICAncGljdHVyZV5bSFRNTEVsZW1lbnRdfCcsXG4gICdwcmVeW0hUTUxFbGVtZW50XXwjd2lkdGgnLFxuICAncHJvZ3Jlc3NeW0hUTUxFbGVtZW50XXwjbWF4LCN2YWx1ZScsXG4gICdxLGJsb2NrcXVvdGUsY2l0ZV5bSFRNTEVsZW1lbnRdfCcsXG4gICdzY3JpcHReW0hUTUxFbGVtZW50XXwhYXN5bmMsY2hhcnNldCwlY3Jvc3NPcmlnaW4sIWRlZmVyLGV2ZW50LGh0bWxGb3IsaW50ZWdyaXR5LHNyYyx0ZXh0LHR5cGUnLFxuICAnc2VsZWN0XltIVE1MRWxlbWVudF18IWF1dG9mb2N1cywhZGlzYWJsZWQsI2xlbmd0aCwhbXVsdGlwbGUsbmFtZSwhcmVxdWlyZWQsI3NlbGVjdGVkSW5kZXgsI3NpemUsdmFsdWUnLFxuICAnc2hhZG93XltIVE1MRWxlbWVudF18JyxcbiAgJ3Nsb3ReW0hUTUxFbGVtZW50XXxuYW1lJyxcbiAgJ3NvdXJjZV5bSFRNTEVsZW1lbnRdfG1lZGlhLHNpemVzLHNyYyxzcmNzZXQsdHlwZScsXG4gICdzcGFuXltIVE1MRWxlbWVudF18JyxcbiAgJ3N0eWxlXltIVE1MRWxlbWVudF18IWRpc2FibGVkLG1lZGlhLHR5cGUnLFxuICAnY2FwdGlvbl5bSFRNTEVsZW1lbnRdfGFsaWduJyxcbiAgJ3RoLHRkXltIVE1MRWxlbWVudF18YWJicixhbGlnbixheGlzLGJnQ29sb3IsY2gsY2hPZmYsI2NvbFNwYW4saGVhZGVycyxoZWlnaHQsIW5vV3JhcCwjcm93U3BhbixzY29wZSx2QWxpZ24sd2lkdGgnLFxuICAnY29sLGNvbGdyb3VwXltIVE1MRWxlbWVudF18YWxpZ24sY2gsY2hPZmYsI3NwYW4sdkFsaWduLHdpZHRoJyxcbiAgJ3RhYmxlXltIVE1MRWxlbWVudF18YWxpZ24sYmdDb2xvcixib3JkZXIsJWNhcHRpb24sY2VsbFBhZGRpbmcsY2VsbFNwYWNpbmcsZnJhbWUscnVsZXMsc3VtbWFyeSwldEZvb3QsJXRIZWFkLHdpZHRoJyxcbiAgJ3RyXltIVE1MRWxlbWVudF18YWxpZ24sYmdDb2xvcixjaCxjaE9mZix2QWxpZ24nLFxuICAndGZvb3QsdGhlYWQsdGJvZHleW0hUTUxFbGVtZW50XXxhbGlnbixjaCxjaE9mZix2QWxpZ24nLFxuICAndGVtcGxhdGVeW0hUTUxFbGVtZW50XXwnLFxuICAndGV4dGFyZWFeW0hUTUxFbGVtZW50XXxhdXRvY2FwaXRhbGl6ZSwhYXV0b2ZvY3VzLCNjb2xzLGRlZmF1bHRWYWx1ZSxkaXJOYW1lLCFkaXNhYmxlZCwjbWF4TGVuZ3RoLCNtaW5MZW5ndGgsbmFtZSxwbGFjZWhvbGRlciwhcmVhZE9ubHksIXJlcXVpcmVkLCNyb3dzLHNlbGVjdGlvbkRpcmVjdGlvbiwjc2VsZWN0aW9uRW5kLCNzZWxlY3Rpb25TdGFydCx2YWx1ZSx3cmFwJyxcbiAgJ3RpdGxlXltIVE1MRWxlbWVudF18dGV4dCcsXG4gICd0cmFja15bSFRNTEVsZW1lbnRdfCFkZWZhdWx0LGtpbmQsbGFiZWwsc3JjLHNyY2xhbmcnLFxuICAndWxeW0hUTUxFbGVtZW50XXwhY29tcGFjdCx0eXBlJyxcbiAgJ3Vua25vd25eW0hUTUxFbGVtZW50XXwnLFxuICAndmlkZW9ebWVkaWF8I2hlaWdodCxwb3N0ZXIsI3dpZHRoJyxcbiAgJzpzdmc6YV46c3ZnOmdyYXBoaWNzfCcsXG4gICc6c3ZnOmFuaW1hdGVeOnN2ZzphbmltYXRpb258JyxcbiAgJzpzdmc6YW5pbWF0ZU1vdGlvbl46c3ZnOmFuaW1hdGlvbnwnLFxuICAnOnN2ZzphbmltYXRlVHJhbnNmb3JtXjpzdmc6YW5pbWF0aW9ufCcsXG4gICc6c3ZnOmNpcmNsZV46c3ZnOmdlb21ldHJ5fCcsXG4gICc6c3ZnOmNsaXBQYXRoXjpzdmc6Z3JhcGhpY3N8JyxcbiAgJzpzdmc6ZGVmc146c3ZnOmdyYXBoaWNzfCcsXG4gICc6c3ZnOmRlc2NeOnN2Zzp8JyxcbiAgJzpzdmc6ZGlzY2FyZF46c3ZnOnwnLFxuICAnOnN2ZzplbGxpcHNlXjpzdmc6Z2VvbWV0cnl8JyxcbiAgJzpzdmc6ZmVCbGVuZF46c3ZnOnwnLFxuICAnOnN2ZzpmZUNvbG9yTWF0cml4Xjpzdmc6fCcsXG4gICc6c3ZnOmZlQ29tcG9uZW50VHJhbnNmZXJeOnN2Zzp8JyxcbiAgJzpzdmc6ZmVDb21wb3NpdGVeOnN2Zzp8JyxcbiAgJzpzdmc6ZmVDb252b2x2ZU1hdHJpeF46c3ZnOnwnLFxuICAnOnN2ZzpmZURpZmZ1c2VMaWdodGluZ146c3ZnOnwnLFxuICAnOnN2ZzpmZURpc3BsYWNlbWVudE1hcF46c3ZnOnwnLFxuICAnOnN2ZzpmZURpc3RhbnRMaWdodF46c3ZnOnwnLFxuICAnOnN2ZzpmZURyb3BTaGFkb3deOnN2Zzp8JyxcbiAgJzpzdmc6ZmVGbG9vZF46c3ZnOnwnLFxuICAnOnN2ZzpmZUZ1bmNBXjpzdmc6Y29tcG9uZW50VHJhbnNmZXJGdW5jdGlvbnwnLFxuICAnOnN2ZzpmZUZ1bmNCXjpzdmc6Y29tcG9uZW50VHJhbnNmZXJGdW5jdGlvbnwnLFxuICAnOnN2ZzpmZUZ1bmNHXjpzdmc6Y29tcG9uZW50VHJhbnNmZXJGdW5jdGlvbnwnLFxuICAnOnN2ZzpmZUZ1bmNSXjpzdmc6Y29tcG9uZW50VHJhbnNmZXJGdW5jdGlvbnwnLFxuICAnOnN2ZzpmZUdhdXNzaWFuQmx1cl46c3ZnOnwnLFxuICAnOnN2ZzpmZUltYWdlXjpzdmc6fCcsXG4gICc6c3ZnOmZlTWVyZ2VeOnN2Zzp8JyxcbiAgJzpzdmc6ZmVNZXJnZU5vZGVeOnN2Zzp8JyxcbiAgJzpzdmc6ZmVNb3JwaG9sb2d5Xjpzdmc6fCcsXG4gICc6c3ZnOmZlT2Zmc2V0Xjpzdmc6fCcsXG4gICc6c3ZnOmZlUG9pbnRMaWdodF46c3ZnOnwnLFxuICAnOnN2ZzpmZVNwZWN1bGFyTGlnaHRpbmdeOnN2Zzp8JyxcbiAgJzpzdmc6ZmVTcG90TGlnaHReOnN2Zzp8JyxcbiAgJzpzdmc6ZmVUaWxlXjpzdmc6fCcsXG4gICc6c3ZnOmZlVHVyYnVsZW5jZV46c3ZnOnwnLFxuICAnOnN2ZzpmaWx0ZXJeOnN2Zzp8JyxcbiAgJzpzdmc6Zm9yZWlnbk9iamVjdF46c3ZnOmdyYXBoaWNzfCcsXG4gICc6c3ZnOmdeOnN2ZzpncmFwaGljc3wnLFxuICAnOnN2ZzppbWFnZV46c3ZnOmdyYXBoaWNzfCcsXG4gICc6c3ZnOmxpbmVeOnN2ZzpnZW9tZXRyeXwnLFxuICAnOnN2ZzpsaW5lYXJHcmFkaWVudF46c3ZnOmdyYWRpZW50fCcsXG4gICc6c3ZnOm1wYXRoXjpzdmc6fCcsXG4gICc6c3ZnOm1hcmtlcl46c3ZnOnwnLFxuICAnOnN2ZzptYXNrXjpzdmc6fCcsXG4gICc6c3ZnOm1ldGFkYXRhXjpzdmc6fCcsXG4gICc6c3ZnOnBhdGheOnN2ZzpnZW9tZXRyeXwnLFxuICAnOnN2ZzpwYXR0ZXJuXjpzdmc6fCcsXG4gICc6c3ZnOnBvbHlnb25eOnN2ZzpnZW9tZXRyeXwnLFxuICAnOnN2Zzpwb2x5bGluZV46c3ZnOmdlb21ldHJ5fCcsXG4gICc6c3ZnOnJhZGlhbEdyYWRpZW50Xjpzdmc6Z3JhZGllbnR8JyxcbiAgJzpzdmc6cmVjdF46c3ZnOmdlb21ldHJ5fCcsXG4gICc6c3ZnOnN2Z146c3ZnOmdyYXBoaWNzfCNjdXJyZW50U2NhbGUsI3pvb21BbmRQYW4nLFxuICAnOnN2ZzpzY3JpcHReOnN2Zzp8dHlwZScsXG4gICc6c3ZnOnNldF46c3ZnOmFuaW1hdGlvbnwnLFxuICAnOnN2ZzpzdG9wXjpzdmc6fCcsXG4gICc6c3ZnOnN0eWxlXjpzdmc6fCFkaXNhYmxlZCxtZWRpYSx0aXRsZSx0eXBlJyxcbiAgJzpzdmc6c3dpdGNoXjpzdmc6Z3JhcGhpY3N8JyxcbiAgJzpzdmc6c3ltYm9sXjpzdmc6fCcsXG4gICc6c3ZnOnRzcGFuXjpzdmc6dGV4dFBvc2l0aW9uaW5nfCcsXG4gICc6c3ZnOnRleHReOnN2Zzp0ZXh0UG9zaXRpb25pbmd8JyxcbiAgJzpzdmc6dGV4dFBhdGheOnN2Zzp0ZXh0Q29udGVudHwnLFxuICAnOnN2Zzp0aXRsZV46c3ZnOnwnLFxuICAnOnN2Zzp1c2VeOnN2ZzpncmFwaGljc3wnLFxuICAnOnN2Zzp2aWV3Xjpzdmc6fCN6b29tQW5kUGFuJyxcbiAgJ2RhdGFeW0hUTUxFbGVtZW50XXx2YWx1ZScsXG4gICdrZXlnZW5eW0hUTUxFbGVtZW50XXwhYXV0b2ZvY3VzLGNoYWxsZW5nZSwhZGlzYWJsZWQsZm9ybSxrZXl0eXBlLG5hbWUnLFxuICAnbWVudWl0ZW1eW0hUTUxFbGVtZW50XXx0eXBlLGxhYmVsLGljb24sIWRpc2FibGVkLCFjaGVja2VkLHJhZGlvZ3JvdXAsIWRlZmF1bHQnLFxuICAnc3VtbWFyeV5bSFRNTEVsZW1lbnRdfCcsXG4gICd0aW1lXltIVE1MRWxlbWVudF18ZGF0ZVRpbWUnLFxuICAnOnN2ZzpjdXJzb3JeOnN2Zzp8Jyxcbl07XG5cbmNvbnN0IF9BVFRSX1RPX1BST1A6IHtbbmFtZTogc3RyaW5nXTogc3RyaW5nfSA9IHtcbiAgJ2NsYXNzJzogJ2NsYXNzTmFtZScsXG4gICdmb3InOiAnaHRtbEZvcicsXG4gICdmb3JtYWN0aW9uJzogJ2Zvcm1BY3Rpb24nLFxuICAnaW5uZXJIdG1sJzogJ2lubmVySFRNTCcsXG4gICdyZWFkb25seSc6ICdyZWFkT25seScsXG4gICd0YWJpbmRleCc6ICd0YWJJbmRleCcsXG59O1xuXG5leHBvcnQgY2xhc3MgRG9tRWxlbWVudFNjaGVtYVJlZ2lzdHJ5IGV4dGVuZHMgRWxlbWVudFNjaGVtYVJlZ2lzdHJ5IHtcbiAgcHJpdmF0ZSBfc2NoZW1hOiB7W2VsZW1lbnQ6IHN0cmluZ106IHtbcHJvcGVydHk6IHN0cmluZ106IHN0cmluZ319ID0ge307XG5cbiAgY29uc3RydWN0b3IoKSB7XG4gICAgc3VwZXIoKTtcbiAgICBTQ0hFTUEuZm9yRWFjaChlbmNvZGVkVHlwZSA9PiB7XG4gICAgICBjb25zdCB0eXBlOiB7W3Byb3BlcnR5OiBzdHJpbmddOiBzdHJpbmd9ID0ge307XG4gICAgICBjb25zdCBbc3RyVHlwZSwgc3RyUHJvcGVydGllc10gPSBlbmNvZGVkVHlwZS5zcGxpdCgnfCcpO1xuICAgICAgY29uc3QgcHJvcGVydGllcyA9IHN0clByb3BlcnRpZXMuc3BsaXQoJywnKTtcbiAgICAgIGNvbnN0IFt0eXBlTmFtZXMsIHN1cGVyTmFtZV0gPSBzdHJUeXBlLnNwbGl0KCdeJyk7XG4gICAgICB0eXBlTmFtZXMuc3BsaXQoJywnKS5mb3JFYWNoKHRhZyA9PiB0aGlzLl9zY2hlbWFbdGFnLnRvTG93ZXJDYXNlKCldID0gdHlwZSk7XG4gICAgICBjb25zdCBzdXBlclR5cGUgPSBzdXBlck5hbWUgJiYgdGhpcy5fc2NoZW1hW3N1cGVyTmFtZS50b0xvd2VyQ2FzZSgpXTtcbiAgICAgIGlmIChzdXBlclR5cGUpIHtcbiAgICAgICAgT2JqZWN0LmtleXMoc3VwZXJUeXBlKS5mb3JFYWNoKChwcm9wOiBzdHJpbmcpID0+IHtcbiAgICAgICAgICB0eXBlW3Byb3BdID0gc3VwZXJUeXBlW3Byb3BdO1xuICAgICAgICB9KTtcbiAgICAgIH1cbiAgICAgIHByb3BlcnRpZXMuZm9yRWFjaCgocHJvcGVydHk6IHN0cmluZykgPT4ge1xuICAgICAgICBpZiAocHJvcGVydHkubGVuZ3RoID4gMCkge1xuICAgICAgICAgIHN3aXRjaCAocHJvcGVydHlbMF0pIHtcbiAgICAgICAgICAgIGNhc2UgJyonOlxuICAgICAgICAgICAgICAvLyBXZSBkb24ndCB5ZXQgc3VwcG9ydCBldmVudHMuXG4gICAgICAgICAgICAgIC8vIElmIGV2ZXIgYWxsb3dpbmcgdG8gYmluZCB0byBldmVudHMsIEdPIFRIUk9VR0ggQSBTRUNVUklUWSBSRVZJRVcsIGFsbG93aW5nIGV2ZW50c1xuICAgICAgICAgICAgICAvLyB3aWxsXG4gICAgICAgICAgICAgIC8vIGFsbW9zdCBjZXJ0YWlubHkgaW50cm9kdWNlIGJhZCBYU1MgdnVsbmVyYWJpbGl0aWVzLlxuICAgICAgICAgICAgICAvLyB0eXBlW3Byb3BlcnR5LnN1YnN0cmluZygxKV0gPSBFVkVOVDtcbiAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICBjYXNlICchJzpcbiAgICAgICAgICAgICAgdHlwZVtwcm9wZXJ0eS5zdWJzdHJpbmcoMSldID0gQk9PTEVBTjtcbiAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICBjYXNlICcjJzpcbiAgICAgICAgICAgICAgdHlwZVtwcm9wZXJ0eS5zdWJzdHJpbmcoMSldID0gTlVNQkVSO1xuICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICAgIGNhc2UgJyUnOlxuICAgICAgICAgICAgICB0eXBlW3Byb3BlcnR5LnN1YnN0cmluZygxKV0gPSBPQkpFQ1Q7XG4gICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgICAgZGVmYXVsdDpcbiAgICAgICAgICAgICAgdHlwZVtwcm9wZXJ0eV0gPSBTVFJJTkc7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9KTtcbiAgICB9KTtcbiAgfVxuXG4gIGhhc1Byb3BlcnR5KHRhZ05hbWU6IHN0cmluZywgcHJvcE5hbWU6IHN0cmluZywgc2NoZW1hTWV0YXM6IFNjaGVtYU1ldGFkYXRhW10pOiBib29sZWFuIHtcbiAgICBpZiAoc2NoZW1hTWV0YXMuc29tZSgoc2NoZW1hKSA9PiBzY2hlbWEubmFtZSA9PT0gTk9fRVJST1JTX1NDSEVNQS5uYW1lKSkge1xuICAgICAgcmV0dXJuIHRydWU7XG4gICAgfVxuXG4gICAgaWYgKHRhZ05hbWUuaW5kZXhPZignLScpID4gLTEpIHtcbiAgICAgIGlmIChpc05nQ29udGFpbmVyKHRhZ05hbWUpIHx8IGlzTmdDb250ZW50KHRhZ05hbWUpKSB7XG4gICAgICAgIHJldHVybiBmYWxzZTtcbiAgICAgIH1cblxuICAgICAgaWYgKHNjaGVtYU1ldGFzLnNvbWUoKHNjaGVtYSkgPT4gc2NoZW1hLm5hbWUgPT09IENVU1RPTV9FTEVNRU5UU19TQ0hFTUEubmFtZSkpIHtcbiAgICAgICAgLy8gQ2FuJ3QgdGVsbCBub3cgYXMgd2UgZG9uJ3Qga25vdyB3aGljaCBwcm9wZXJ0aWVzIGEgY3VzdG9tIGVsZW1lbnQgd2lsbCBnZXRcbiAgICAgICAgLy8gb25jZSBpdCBpcyBpbnN0YW50aWF0ZWRcbiAgICAgICAgcmV0dXJuIHRydWU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgY29uc3QgZWxlbWVudFByb3BlcnRpZXMgPSB0aGlzLl9zY2hlbWFbdGFnTmFtZS50b0xvd2VyQ2FzZSgpXSB8fCB0aGlzLl9zY2hlbWFbJ3Vua25vd24nXTtcbiAgICByZXR1cm4gISFlbGVtZW50UHJvcGVydGllc1twcm9wTmFtZV07XG4gIH1cblxuICBoYXNFbGVtZW50KHRhZ05hbWU6IHN0cmluZywgc2NoZW1hTWV0YXM6IFNjaGVtYU1ldGFkYXRhW10pOiBib29sZWFuIHtcbiAgICBpZiAoc2NoZW1hTWV0YXMuc29tZSgoc2NoZW1hKSA9PiBzY2hlbWEubmFtZSA9PT0gTk9fRVJST1JTX1NDSEVNQS5uYW1lKSkge1xuICAgICAgcmV0dXJuIHRydWU7XG4gICAgfVxuXG4gICAgaWYgKHRhZ05hbWUuaW5kZXhPZignLScpID4gLTEpIHtcbiAgICAgIGlmIChpc05nQ29udGFpbmVyKHRhZ05hbWUpIHx8IGlzTmdDb250ZW50KHRhZ05hbWUpKSB7XG4gICAgICAgIHJldHVybiB0cnVlO1xuICAgICAgfVxuXG4gICAgICBpZiAoc2NoZW1hTWV0YXMuc29tZSgoc2NoZW1hKSA9PiBzY2hlbWEubmFtZSA9PT0gQ1VTVE9NX0VMRU1FTlRTX1NDSEVNQS5uYW1lKSkge1xuICAgICAgICAvLyBBbGxvdyBhbnkgY3VzdG9tIGVsZW1lbnRzXG4gICAgICAgIHJldHVybiB0cnVlO1xuICAgICAgfVxuICAgIH1cblxuICAgIHJldHVybiAhIXRoaXMuX3NjaGVtYVt0YWdOYW1lLnRvTG93ZXJDYXNlKCldO1xuICB9XG5cbiAgLyoqXG4gICAqIHNlY3VyaXR5Q29udGV4dCByZXR1cm5zIHRoZSBzZWN1cml0eSBjb250ZXh0IGZvciB0aGUgZ2l2ZW4gcHJvcGVydHkgb24gdGhlIGdpdmVuIERPTSB0YWcuXG4gICAqXG4gICAqIFRhZyBhbmQgcHJvcGVydHkgbmFtZSBhcmUgc3RhdGljYWxseSBrbm93biBhbmQgY2Fubm90IGNoYW5nZSBhdCBydW50aW1lLCBpLmUuIGl0IGlzIG5vdFxuICAgKiBwb3NzaWJsZSB0byBiaW5kIGEgdmFsdWUgaW50byBhIGNoYW5naW5nIGF0dHJpYnV0ZSBvciB0YWcgbmFtZS5cbiAgICpcbiAgICogVGhlIGZpbHRlcmluZyBpcyBiYXNlZCBvbiBhIGxpc3Qgb2YgYWxsb3dlZCB0YWdzfGF0dHJpYnV0ZXMuIEFsbCBhdHRyaWJ1dGVzIGluIHRoZSBzY2hlbWFcbiAgICogYWJvdmUgYXJlIGFzc3VtZWQgdG8gaGF2ZSB0aGUgJ05PTkUnIHNlY3VyaXR5IGNvbnRleHQsIGkuZS4gdGhhdCB0aGV5IGFyZSBzYWZlIGluZXJ0XG4gICAqIHN0cmluZyB2YWx1ZXMuIE9ubHkgc3BlY2lmaWMgd2VsbCBrbm93biBhdHRhY2sgdmVjdG9ycyBhcmUgYXNzaWduZWQgdGhlaXIgYXBwcm9wcmlhdGUgY29udGV4dC5cbiAgICovXG4gIHNlY3VyaXR5Q29udGV4dCh0YWdOYW1lOiBzdHJpbmcsIHByb3BOYW1lOiBzdHJpbmcsIGlzQXR0cmlidXRlOiBib29sZWFuKTogU2VjdXJpdHlDb250ZXh0IHtcbiAgICBpZiAoaXNBdHRyaWJ1dGUpIHtcbiAgICAgIC8vIE5COiBGb3Igc2VjdXJpdHkgcHVycG9zZXMsIHVzZSB0aGUgbWFwcGVkIHByb3BlcnR5IG5hbWUsIG5vdCB0aGUgYXR0cmlidXRlIG5hbWUuXG4gICAgICBwcm9wTmFtZSA9IHRoaXMuZ2V0TWFwcGVkUHJvcE5hbWUocHJvcE5hbWUpO1xuICAgIH1cblxuICAgIC8vIE1ha2Ugc3VyZSBjb21wYXJpc29ucyBhcmUgY2FzZSBpbnNlbnNpdGl2ZSwgc28gdGhhdCBjYXNlIGRpZmZlcmVuY2VzIGJldHdlZW4gYXR0cmlidXRlIGFuZFxuICAgIC8vIHByb3BlcnR5IG5hbWVzIGRvIG5vdCBoYXZlIGEgc2VjdXJpdHkgaW1wYWN0LlxuICAgIHRhZ05hbWUgPSB0YWdOYW1lLnRvTG93ZXJDYXNlKCk7XG4gICAgcHJvcE5hbWUgPSBwcm9wTmFtZS50b0xvd2VyQ2FzZSgpO1xuICAgIGxldCBjdHggPSBTRUNVUklUWV9TQ0hFTUEoKVt0YWdOYW1lICsgJ3wnICsgcHJvcE5hbWVdO1xuICAgIGlmIChjdHgpIHtcbiAgICAgIHJldHVybiBjdHg7XG4gICAgfVxuICAgIGN0eCA9IFNFQ1VSSVRZX1NDSEVNQSgpWycqfCcgKyBwcm9wTmFtZV07XG4gICAgcmV0dXJuIGN0eCA/IGN0eCA6IFNlY3VyaXR5Q29udGV4dC5OT05FO1xuICB9XG5cbiAgZ2V0TWFwcGVkUHJvcE5hbWUocHJvcE5hbWU6IHN0cmluZyk6IHN0cmluZyB7XG4gICAgcmV0dXJuIF9BVFRSX1RPX1BST1BbcHJvcE5hbWVdIHx8IHByb3BOYW1lO1xuICB9XG5cbiAgZ2V0RGVmYXVsdENvbXBvbmVudEVsZW1lbnROYW1lKCk6IHN0cmluZyB7XG4gICAgcmV0dXJuICduZy1jb21wb25lbnQnO1xuICB9XG5cbiAgdmFsaWRhdGVQcm9wZXJ0eShuYW1lOiBzdHJpbmcpOiB7ZXJyb3I6IGJvb2xlYW4sIG1zZz86IHN0cmluZ30ge1xuICAgIGlmIChuYW1lLnRvTG93ZXJDYXNlKCkuc3RhcnRzV2l0aCgnb24nKSkge1xuICAgICAgY29uc3QgbXNnID0gYEJpbmRpbmcgdG8gZXZlbnQgcHJvcGVydHkgJyR7bmFtZX0nIGlzIGRpc2FsbG93ZWQgZm9yIHNlY3VyaXR5IHJlYXNvbnMsIGAgK1xuICAgICAgICAgIGBwbGVhc2UgdXNlICgke25hbWUuc2xpY2UoMil9KT0uLi5gICtcbiAgICAgICAgICBgXFxuSWYgJyR7bmFtZX0nIGlzIGEgZGlyZWN0aXZlIGlucHV0LCBtYWtlIHN1cmUgdGhlIGRpcmVjdGl2ZSBpcyBpbXBvcnRlZCBieSB0aGVgICtcbiAgICAgICAgICBgIGN1cnJlbnQgbW9kdWxlLmA7XG4gICAgICByZXR1cm4ge2Vycm9yOiB0cnVlLCBtc2c6IG1zZ307XG4gICAgfSBlbHNlIHtcbiAgICAgIHJldHVybiB7ZXJyb3I6IGZhbHNlfTtcbiAgICB9XG4gIH1cblxuICB2YWxpZGF0ZUF0dHJpYnV0ZShuYW1lOiBzdHJpbmcpOiB7ZXJyb3I6IGJvb2xlYW4sIG1zZz86IHN0cmluZ30ge1xuICAgIGlmIChuYW1lLnRvTG93ZXJDYXNlKCkuc3RhcnRzV2l0aCgnb24nKSkge1xuICAgICAgY29uc3QgbXNnID0gYEJpbmRpbmcgdG8gZXZlbnQgYXR0cmlidXRlICcke25hbWV9JyBpcyBkaXNhbGxvd2VkIGZvciBzZWN1cml0eSByZWFzb25zLCBgICtcbiAgICAgICAgICBgcGxlYXNlIHVzZSAoJHtuYW1lLnNsaWNlKDIpfSk9Li4uYDtcbiAgICAgIHJldHVybiB7ZXJyb3I6IHRydWUsIG1zZzogbXNnfTtcbiAgICB9IGVsc2Uge1xuICAgICAgcmV0dXJuIHtlcnJvcjogZmFsc2V9O1xuICAgIH1cbiAgfVxuXG4gIGFsbEtub3duRWxlbWVudE5hbWVzKCk6IHN0cmluZ1tdIHtcbiAgICByZXR1cm4gT2JqZWN0LmtleXModGhpcy5fc2NoZW1hKTtcbiAgfVxuXG4gIG5vcm1hbGl6ZUFuaW1hdGlvblN0eWxlUHJvcGVydHkocHJvcE5hbWU6IHN0cmluZyk6IHN0cmluZyB7XG4gICAgcmV0dXJuIGRhc2hDYXNlVG9DYW1lbENhc2UocHJvcE5hbWUpO1xuICB9XG5cbiAgbm9ybWFsaXplQW5pbWF0aW9uU3R5bGVWYWx1ZShjYW1lbENhc2VQcm9wOiBzdHJpbmcsIHVzZXJQcm92aWRlZFByb3A6IHN0cmluZywgdmFsOiBzdHJpbmd8bnVtYmVyKTpcbiAgICAgIHtlcnJvcjogc3RyaW5nLCB2YWx1ZTogc3RyaW5nfSB7XG4gICAgbGV0IHVuaXQ6IHN0cmluZyA9ICcnO1xuICAgIGNvbnN0IHN0clZhbCA9IHZhbC50b1N0cmluZygpLnRyaW0oKTtcbiAgICBsZXQgZXJyb3JNc2c6IHN0cmluZyA9IG51bGwhO1xuXG4gICAgaWYgKF9pc1BpeGVsRGltZW5zaW9uU3R5bGUoY2FtZWxDYXNlUHJvcCkgJiYgdmFsICE9PSAwICYmIHZhbCAhPT0gJzAnKSB7XG4gICAgICBpZiAodHlwZW9mIHZhbCA9PT0gJ251bWJlcicpIHtcbiAgICAgICAgdW5pdCA9ICdweCc7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBjb25zdCB2YWxBbmRTdWZmaXhNYXRjaCA9IHZhbC5tYXRjaCgvXlsrLV0/W1xcZFxcLl0rKFthLXpdKikkLyk7XG4gICAgICAgIGlmICh2YWxBbmRTdWZmaXhNYXRjaCAmJiB2YWxBbmRTdWZmaXhNYXRjaFsxXS5sZW5ndGggPT0gMCkge1xuICAgICAgICAgIGVycm9yTXNnID0gYFBsZWFzZSBwcm92aWRlIGEgQ1NTIHVuaXQgdmFsdWUgZm9yICR7dXNlclByb3ZpZGVkUHJvcH06JHt2YWx9YDtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4ge2Vycm9yOiBlcnJvck1zZywgdmFsdWU6IHN0clZhbCArIHVuaXR9O1xuICB9XG59XG5cbmZ1bmN0aW9uIF9pc1BpeGVsRGltZW5zaW9uU3R5bGUocHJvcDogc3RyaW5nKTogYm9vbGVhbiB7XG4gIHN3aXRjaCAocHJvcCkge1xuICAgIGNhc2UgJ3dpZHRoJzpcbiAgICBjYXNlICdoZWlnaHQnOlxuICAgIGNhc2UgJ21pbldpZHRoJzpcbiAgICBjYXNlICdtaW5IZWlnaHQnOlxuICAgIGNhc2UgJ21heFdpZHRoJzpcbiAgICBjYXNlICdtYXhIZWlnaHQnOlxuICAgIGNhc2UgJ2xlZnQnOlxuICAgIGNhc2UgJ3RvcCc6XG4gICAgY2FzZSAnYm90dG9tJzpcbiAgICBjYXNlICdyaWdodCc6XG4gICAgY2FzZSAnZm9udFNpemUnOlxuICAgIGNhc2UgJ291dGxpbmVXaWR0aCc6XG4gICAgY2FzZSAnb3V0bGluZU9mZnNldCc6XG4gICAgY2FzZSAncGFkZGluZ1RvcCc6XG4gICAgY2FzZSAncGFkZGluZ0xlZnQnOlxuICAgIGNhc2UgJ3BhZGRpbmdCb3R0b20nOlxuICAgIGNhc2UgJ3BhZGRpbmdSaWdodCc6XG4gICAgY2FzZSAnbWFyZ2luVG9wJzpcbiAgICBjYXNlICdtYXJnaW5MZWZ0JzpcbiAgICBjYXNlICdtYXJnaW5Cb3R0b20nOlxuICAgIGNhc2UgJ21hcmdpblJpZ2h0JzpcbiAgICBjYXNlICdib3JkZXJSYWRpdXMnOlxuICAgIGNhc2UgJ2JvcmRlcldpZHRoJzpcbiAgICBjYXNlICdib3JkZXJUb3BXaWR0aCc6XG4gICAgY2FzZSAnYm9yZGVyTGVmdFdpZHRoJzpcbiAgICBjYXNlICdib3JkZXJSaWdodFdpZHRoJzpcbiAgICBjYXNlICdib3JkZXJCb3R0b21XaWR0aCc6XG4gICAgY2FzZSAndGV4dEluZGVudCc6XG4gICAgICByZXR1cm4gdHJ1ZTtcblxuICAgIGRlZmF1bHQ6XG4gICAgICByZXR1cm4gZmFsc2U7XG4gIH1cbn1cbiJdfQ==