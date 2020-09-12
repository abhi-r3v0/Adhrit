import { __decorate, __metadata, __param } from "tslib";
import { isPlatformBrowser } from '@angular/common';
import { Directive, ElementRef, Renderer2, Input, AfterViewInit, HostListener, PLATFORM_ID, Inject, AfterViewChecked, OnInit, DoCheck, OnChanges, SimpleChanges, } from '@angular/core';
import { DOWN_ARROW, UP_ARROW } from '../utils/keyboard-navigation';
var MdbInputDirective = /** @class */ (function () {
    function MdbInputDirective(_elRef, _renderer, platformId) {
        this._elRef = _elRef;
        this._renderer = _renderer;
        this.el = null;
        this.elLabel = null;
        this.elIcon = null;
        this.element = null;
        this.mdbValidate = true;
        this.validateSuccess = true;
        this.validateError = true;
        this.focusCheckbox = true;
        this.focusRadio = true;
        this.isBrowser = false;
        this.isClicked = false;
        this.isBrowser = isPlatformBrowser(platformId);
    }
    MdbInputDirective.prototype.onfocus = function () {
        try {
            this._renderer.addClass(this.elLabel, 'active');
            this.isClicked = true;
        }
        catch (error) { }
    };
    MdbInputDirective.prototype.onblur = function () {
        this.validationFunction();
        try {
            if (this.el.nativeElement.value === '') {
                this._renderer.removeClass(this.elLabel, 'active');
            }
            this.isClicked = false;
        }
        catch (error) { }
    };
    MdbInputDirective.prototype.onchange = function () {
        try {
            this.checkValue();
        }
        catch (error) { }
    };
    MdbInputDirective.prototype.oniput = function () {
        this.validationFunction();
    };
    MdbInputDirective.prototype.onkeydown = function (event) {
        try {
            if (event.target.type === 'number') {
                if (event.shiftKey) {
                    switch (event.keyCode) {
                        case UP_ARROW:
                            event.target.value = +event.target.value + 10;
                            break;
                        case DOWN_ARROW:
                            event.target.value = +event.target.value - 10;
                            break;
                    }
                }
                if (event.altKey) {
                    switch (event.keyCode) {
                        case UP_ARROW:
                            event.target.value = +event.target.value + 0.1;
                            break;
                        case DOWN_ARROW:
                            event.target.value = +event.target.value - 0.1;
                            break;
                    }
                }
            }
        }
        catch (error) { }
        this.delayedResize();
    };
    MdbInputDirective.prototype.oncut = function () {
        var _this = this;
        try {
            setTimeout(function () {
                _this.delayedResize();
            }, 0);
        }
        catch (error) { }
    };
    MdbInputDirective.prototype.onpaste = function () {
        var _this = this;
        try {
            setTimeout(function () {
                _this.delayedResize();
            }, 0);
        }
        catch (error) { }
    };
    MdbInputDirective.prototype.ondrop = function () {
        var _this = this;
        try {
            setTimeout(function () {
                _this.delayedResize();
            }, 0);
        }
        catch (error) { }
    };
    MdbInputDirective.prototype.updateErrorMsg = function (value) {
        if (this.wrongTextContainer) {
            this.wrongTextContainer.innerHTML = value;
        }
    };
    MdbInputDirective.prototype.updateSuccessMsg = function (value) {
        if (this.rightTextContainer) {
            this.rightTextContainer.innerHTML = value;
        }
    };
    MdbInputDirective.prototype.ngOnInit = function () {
        var _this = this;
        try {
            setTimeout(function () {
                _this.delayedResize();
            }, 0);
        }
        catch (error) {
            console.log(error);
        }
        // Inititalise a new <span> wrong/right elements and render it below the host component.
        if (this.mdbValidate) {
            this.wrongTextContainer = this._renderer.createElement('span');
            this._renderer.addClass(this.wrongTextContainer, 'inputVal');
            this._renderer.addClass(this.wrongTextContainer, 'text-danger');
            this._renderer.appendChild(this._elRef.nativeElement.parentElement, this.wrongTextContainer);
            var textWrong = this._elRef.nativeElement.getAttribute('data-error');
            this.wrongTextContainer.innerHTML = textWrong ? textWrong : 'wrong';
            if (!textWrong && this.errorMessage !== undefined) {
                this.wrongTextContainer.innerHTML = this.errorMessage;
            }
            this._renderer.setStyle(this.wrongTextContainer, 'visibility', 'hidden');
            this.rightTextContainer = this._renderer.createElement('span');
            this._renderer.addClass(this.rightTextContainer, 'inputVal');
            this._renderer.addClass(this.rightTextContainer, 'text-success');
            this._renderer.appendChild(this._elRef.nativeElement.parentElement, this.rightTextContainer);
            var textSuccess = this._elRef.nativeElement.getAttribute('data-success');
            this.rightTextContainer.innerHTML = textSuccess ? textSuccess : 'success';
            if (!textSuccess && this.successMessage !== undefined) {
                this.rightTextContainer.innerHTML = this.successMessage;
            }
            this._renderer.setStyle(this.rightTextContainer, 'visibility', 'hidden');
        }
    };
    MdbInputDirective.prototype.ngOnChanges = function (changes) {
        if (changes.hasOwnProperty('errorMessage')) {
            var newErrorMsg = changes.errorMessage.currentValue;
            this.updateErrorMsg(newErrorMsg);
        }
        if (changes.hasOwnProperty('successMessage')) {
            var newSuccessMsg = changes.successMessage.currentValue;
            this.updateSuccessMsg(newSuccessMsg);
        }
    };
    MdbInputDirective.prototype.ngDoCheck = function () {
        if (this.mdbValidate &&
            this._elRef.nativeElement.classList.contains('ng-valid') &&
            this._elRef.nativeElement.classList.contains('ng-dirty') &&
            !this._elRef.nativeElement.classList.contains('counter-success')) {
            this._renderer.addClass(this._elRef.nativeElement, 'counter-success');
            this._renderer.setStyle(this.wrongTextContainer, 'visibility', 'hidden');
            this._renderer.setStyle(this.rightTextContainer, 'visibility', 'visible');
            this._renderer.setStyle(this.rightTextContainer, 'top', this._elRef.nativeElement.offsetHeight + 'px');
            this._renderer.setStyle(this.wrongTextContainer, 'top', this._elRef.nativeElement.offsetHeight + 'px');
        }
        if (this.mdbValidate &&
            this._elRef.nativeElement.classList.contains('ng-invalid') &&
            this._elRef.nativeElement.classList.contains('ng-dirty') &&
            !this._elRef.nativeElement.classList.contains('counter-danger')) {
            this._renderer.addClass(this._elRef.nativeElement, 'counter-danger');
            this._renderer.setStyle(this.rightTextContainer, 'visibility', 'hidden');
            this._renderer.setStyle(this.wrongTextContainer, 'visibility', 'visible');
            this._renderer.setStyle(this.rightTextContainer, 'top', this._elRef.nativeElement.offsetHeight + 'px');
            this._renderer.setStyle(this.wrongTextContainer, 'top', this._elRef.nativeElement.offsetHeight + 'px');
        }
        if ((this._elRef.nativeElement.classList.contains('ng-invalid') &&
            this._elRef.nativeElement.classList.contains('ng-pristine') &&
            this._elRef.nativeElement.classList.contains('ng-untouched')) ||
            this._elRef.nativeElement.disabled) {
            if (this._elRef.nativeElement.classList.contains('counter-success')) {
                this._renderer.removeClass(this._elRef.nativeElement, 'counter-success');
                this._renderer.setStyle(this.rightTextContainer, 'visibility', 'hidden');
            }
            else if (this._elRef.nativeElement.classList.contains('counter-danger')) {
                this._renderer.removeClass(this._elRef.nativeElement, 'counter-danger');
                this._renderer.setStyle(this.wrongTextContainer, 'visibility', 'hidden');
            }
        }
        if (!this.validateSuccess) {
            this._renderer.removeClass(this._elRef.nativeElement, 'counter-success');
            this._renderer.setStyle(this.rightTextContainer, 'display', 'none');
            if (this._elRef.nativeElement.classList.contains('ng-valid')) {
                this._renderer.removeClass(this._elRef.nativeElement, 'counter-danger');
            }
        }
        if (!this.validateError) {
            this._renderer.removeClass(this._elRef.nativeElement, 'counter-danger');
            this._renderer.setStyle(this.wrongTextContainer, 'display', 'none');
            if (this._elRef.nativeElement.classList.contains('ng-invalid')) {
                this._renderer.removeClass(this._elRef.nativeElement, 'counter-success');
            }
        }
    };
    MdbInputDirective.prototype.validationFunction = function () {
        var _this = this;
        setTimeout(function () {
            if (_this._elRef.nativeElement.classList.contains('ng-invalid')) {
                _this._renderer.removeClass(_this._elRef.nativeElement, 'counter-success');
                _this._renderer.removeClass(_this._elRef.nativeElement, 'counter-danger');
            }
            if (_this._elRef.nativeElement.classList.contains('ng-touched') &&
                _this._elRef.nativeElement.classList.contains('ng-invalid')) {
                if (_this.mdbValidate) {
                    _this._renderer.addClass(_this._elRef.nativeElement, 'counter-danger');
                    _this._renderer.setStyle(_this.rightTextContainer, 'visibility', 'hidden');
                    _this._renderer.setStyle(_this.wrongTextContainer, 'visibility', 'visible');
                    _this._renderer.setStyle(_this.rightTextContainer, 'top', _this._elRef.nativeElement.offsetHeight + 'px');
                    _this._renderer.setStyle(_this.wrongTextContainer, 'top', _this._elRef.nativeElement.offsetHeight + 'px');
                }
            }
            else if (_this._elRef.nativeElement.classList.contains('ng-touched') &&
                _this._elRef.nativeElement.classList.contains('ng-valid')) {
                if (_this.mdbValidate) {
                    _this._renderer.addClass(_this._elRef.nativeElement, 'counter-success');
                    _this._renderer.setStyle(_this.rightTextContainer, 'visibility', 'visible');
                    _this._renderer.setStyle(_this.wrongTextContainer, 'visibility', 'hidden');
                    _this._renderer.setStyle(_this.rightTextContainer, 'top', _this._elRef.nativeElement.offsetHeight + 'px');
                    _this._renderer.setStyle(_this.wrongTextContainer, 'top', _this._elRef.nativeElement.offsetHeight + 'px');
                }
            }
        }, 0);
    };
    MdbInputDirective.prototype.ngAfterViewInit = function () {
        if (this.isBrowser) {
            try {
                this.element = document.querySelector('.md-textarea-auto');
            }
            catch (error) { }
        }
        var type = this.el.nativeElement.type;
        if (this.focusCheckbox && type === 'checkbox') {
            this._renderer.addClass(this.el.nativeElement, 'onFocusSelect');
        }
        if (this.focusRadio && type === 'radio') {
            this._renderer.addClass(this.el.nativeElement, 'onFocusSelect');
        }
    };
    MdbInputDirective.prototype.ngAfterViewChecked = function () {
        this.initComponent();
        this.checkValue();
    };
    MdbInputDirective.prototype.resize = function () {
        if (this.el.nativeElement.classList.contains('md-textarea-auto')) {
            this._renderer.setStyle(this.el.nativeElement, 'height', 'auto');
            this._renderer.setStyle(this.el.nativeElement, 'height', this.el.nativeElement.scrollHeight + 'px');
        }
    };
    MdbInputDirective.prototype.delayedResize = function () {
        var _this = this;
        setTimeout(function () {
            _this.resize();
        }, 0);
    };
    MdbInputDirective.prototype.initComponent = function () {
        var inputId;
        var inputP;
        if (this.isBrowser) {
            try {
                inputId = this.el.nativeElement.id;
            }
            catch (err) { }
            try {
                inputP = this.el.nativeElement.parentNode;
            }
            catch (err) { }
            this.elLabel =
                inputP.querySelector('label[for="' + inputId + '"]') || inputP.querySelector('label');
            if (this.elLabel && this.el.nativeElement.value !== '') {
                this._renderer.addClass(this.elLabel, 'active');
            }
            this.elIcon = inputP.querySelector('i') || false;
            if (this.elIcon) {
                this._renderer.addClass(this.elIcon, 'active');
            }
        }
    };
    MdbInputDirective.prototype.checkValue = function () {
        var value = '';
        if (this.elLabel != null) {
            value = this.el.nativeElement.value || '';
            if (value === '') {
                this._renderer.removeClass(this.elLabel, 'active');
                if (this.elIcon) {
                    this._renderer.removeClass(this.elIcon, 'active');
                }
                // tslint:disable-next-line:max-line-length
            }
            if ((value === '' && this.isClicked) ||
                (value === '' && this.el.nativeElement.placeholder) ||
                (value === '' && this.el.nativeElement.attributes.placeholder)) {
                this._renderer.addClass(this.elLabel, 'active');
            }
        }
    };
    MdbInputDirective.ctorParameters = function () { return [
        { type: ElementRef },
        { type: Renderer2 },
        { type: String, decorators: [{ type: Inject, args: [PLATFORM_ID,] }] }
    ]; };
    __decorate([
        Input(),
        __metadata("design:type", MdbInputDirective)
    ], MdbInputDirective.prototype, "mdbInputDirective", void 0);
    __decorate([
        Input(),
        __metadata("design:type", Object)
    ], MdbInputDirective.prototype, "customRegex", void 0);
    __decorate([
        Input(),
        __metadata("design:type", Object)
    ], MdbInputDirective.prototype, "mdbValidate", void 0);
    __decorate([
        Input(),
        __metadata("design:type", Object)
    ], MdbInputDirective.prototype, "validateSuccess", void 0);
    __decorate([
        Input(),
        __metadata("design:type", Object)
    ], MdbInputDirective.prototype, "validateError", void 0);
    __decorate([
        Input(),
        __metadata("design:type", Object)
    ], MdbInputDirective.prototype, "focusCheckbox", void 0);
    __decorate([
        Input(),
        __metadata("design:type", Object)
    ], MdbInputDirective.prototype, "focusRadio", void 0);
    __decorate([
        Input(),
        __metadata("design:type", String)
    ], MdbInputDirective.prototype, "errorMessage", void 0);
    __decorate([
        Input(),
        __metadata("design:type", String)
    ], MdbInputDirective.prototype, "successMessage", void 0);
    __decorate([
        HostListener('focus'),
        __metadata("design:type", Function),
        __metadata("design:paramtypes", []),
        __metadata("design:returntype", void 0)
    ], MdbInputDirective.prototype, "onfocus", null);
    __decorate([
        HostListener('blur'),
        __metadata("design:type", Function),
        __metadata("design:paramtypes", []),
        __metadata("design:returntype", void 0)
    ], MdbInputDirective.prototype, "onblur", null);
    __decorate([
        HostListener('change'),
        __metadata("design:type", Function),
        __metadata("design:paramtypes", []),
        __metadata("design:returntype", void 0)
    ], MdbInputDirective.prototype, "onchange", null);
    __decorate([
        HostListener('input'),
        __metadata("design:type", Function),
        __metadata("design:paramtypes", []),
        __metadata("design:returntype", void 0)
    ], MdbInputDirective.prototype, "oniput", null);
    __decorate([
        HostListener('keydown', ['$event']),
        __metadata("design:type", Function),
        __metadata("design:paramtypes", [Object]),
        __metadata("design:returntype", void 0)
    ], MdbInputDirective.prototype, "onkeydown", null);
    __decorate([
        HostListener('cut'),
        __metadata("design:type", Function),
        __metadata("design:paramtypes", []),
        __metadata("design:returntype", void 0)
    ], MdbInputDirective.prototype, "oncut", null);
    __decorate([
        HostListener('paste'),
        __metadata("design:type", Function),
        __metadata("design:paramtypes", []),
        __metadata("design:returntype", void 0)
    ], MdbInputDirective.prototype, "onpaste", null);
    __decorate([
        HostListener('drop'),
        __metadata("design:type", Function),
        __metadata("design:paramtypes", []),
        __metadata("design:returntype", void 0)
    ], MdbInputDirective.prototype, "ondrop", null);
    MdbInputDirective = __decorate([
        Directive({
            selector: '[mdbInputDirective]',
        }),
        __param(2, Inject(PLATFORM_ID)),
        __metadata("design:paramtypes", [ElementRef,
            Renderer2, String])
    ], MdbInputDirective);
    return MdbInputDirective;
}());
export { MdbInputDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWRiLWlucHV0LmRpcmVjdGl2ZS5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvaW5wdXRzL21kYi1pbnB1dC5kaXJlY3RpdmUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxpQkFBaUIsRUFBRSxNQUFNLGlCQUFpQixDQUFDO0FBQ3BELE9BQU8sRUFDTCxTQUFTLEVBQ1QsVUFBVSxFQUNWLFNBQVMsRUFDVCxLQUFLLEVBQ0wsYUFBYSxFQUNiLFlBQVksRUFDWixXQUFXLEVBQ1gsTUFBTSxFQUNOLGdCQUFnQixFQUNoQixNQUFNLEVBQ04sT0FBTyxFQUNQLFNBQVMsRUFDVCxhQUFhLEdBQ2QsTUFBTSxlQUFlLENBQUM7QUFDdkIsT0FBTyxFQUFFLFVBQVUsRUFBRSxRQUFRLEVBQUUsTUFBTSw4QkFBOEIsQ0FBQztBQUtwRTtJQXVCRSwyQkFDVSxNQUFrQixFQUNsQixTQUFvQixFQUNQLFVBQWtCO1FBRi9CLFdBQU0sR0FBTixNQUFNLENBQVk7UUFDbEIsY0FBUyxHQUFULFNBQVMsQ0FBVztRQXJCdkIsT0FBRSxHQUFxQixJQUFJLENBQUM7UUFDNUIsWUFBTyxHQUFxQixJQUFJLENBQUM7UUFDakMsV0FBTSxHQUFrQixJQUFJLENBQUM7UUFFcEMsWUFBTyxHQUFRLElBQUksQ0FBQztRQUlYLGdCQUFXLEdBQUcsSUFBSSxDQUFDO1FBQ25CLG9CQUFlLEdBQUcsSUFBSSxDQUFDO1FBQ3ZCLGtCQUFhLEdBQUcsSUFBSSxDQUFDO1FBQ3JCLGtCQUFhLEdBQUcsSUFBSSxDQUFDO1FBQ3JCLGVBQVUsR0FBRyxJQUFJLENBQUM7UUFJM0IsY0FBUyxHQUFRLEtBQUssQ0FBQztRQUN2QixjQUFTLEdBQUcsS0FBSyxDQUFDO1FBT2hCLElBQUksQ0FBQyxTQUFTLEdBQUcsaUJBQWlCLENBQUMsVUFBVSxDQUFDLENBQUM7SUFDakQsQ0FBQztJQUVzQixtQ0FBTyxHQUFQO1FB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QUMsT0FBTyxDQUFDOzs7O21EQUVyQjtJQUVvQztRQUFwQyxZQUFZLENBQUMsU0FBUyxFQUFFLENBQUMsUUFBUSxDQUFDLENBQUM7Ozs7c0RBMEJuQztJQUVvQjtRQUFwQixZQUFZLENBQUMsS0FBSyxDQUFDOzs7O2tEQU1uQjtJQUVzQjtRQUF0QixZQUFZLENBQUMsT0FBTyxDQUFDOzs7O29EQU1yQjtJQUVxQjtRQUFyQixZQUFZLENBQUMsTUFBTSxDQUFDOzs7O21EQU1wQjtJQTVHVSxpQkFBaUI7UUFIN0IsU0FBUyxDQUFDO1lBQ1QsUUFBUSxFQUFFLHFCQUFxQjtTQUNoQyxDQUFDO1FBMkJHLFdBQUEsTUFBTSxDQUFDLFdBQVcsQ0FBQyxDQUFBO3lDQUZKLFVBQVU7WUFDUCxTQUFTO09BekJuQixpQkFBaUIsQ0FtWDdCO0lBQUQsd0JBQUM7Q0FBQSxBQW5YRCxJQW1YQztTQW5YWSxpQkFBaUIiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBpc1BsYXRmb3JtQnJvd3NlciB9IGZyb20gJ0Bhbmd1bGFyL2NvbW1vbic7XG5pbXBvcnQge1xuICBEaXJlY3RpdmUsXG4gIEVsZW1lbnRSZWYsXG4gIFJlbmRlcmVyMixcbiAgSW5wdXQsXG4gIEFmdGVyVmlld0luaXQsXG4gIEhvc3RMaXN0ZW5lcixcbiAgUExBVEZPUk1fSUQsXG4gIEluamVjdCxcbiAgQWZ0ZXJWaWV3Q2hlY2tlZCxcbiAgT25Jbml0LFxuICBEb0NoZWNrLFxuICBPbkNoYW5nZXMsXG4gIFNpbXBsZUNoYW5nZXMsXG59IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgRE9XTl9BUlJPVywgVVBfQVJST1cgfSBmcm9tICcuLi91dGlscy9rZXlib2FyZC1uYXZpZ2F0aW9uJztcblxuQERpcmVjdGl2ZSh7XG4gIHNlbGVjdG9yOiAnW21kYklucHV0RGlyZWN0aXZlXScsXG59KVxuZXhwb3J0IGNsYXNzIE1kYklucHV0RGlyZWN0aXZlXG4gIGltcGxlbWVudHMgQWZ0ZXJWaWV3Q2hlY2tlZCwgT25Jbml0LCBBZnRlclZpZXdJbml0LCBEb0NoZWNrLCBPbkNoYW5nZXMge1xuICBwdWJsaWMgd3JvbmdUZXh0Q29udGFpbmVyOiBhbnk7XG4gIHB1YmxpYyByaWdodFRleHRDb250YWluZXI6IGFueTtcbiAgcHVibGljIGVsOiBFbGVtZW50UmVmIHwgYW55ID0gbnVsbDtcbiAgcHVibGljIGVsTGFiZWw6IEVsZW1lbnRSZWYgfCBhbnkgPSBudWxsO1xuICBwdWJsaWMgZWxJY29uOiBFbGVtZW50IHwgYW55ID0gbnVsbDtcblxuICBlbGVtZW50OiBhbnkgPSBudWxsO1xuXG4gIEBJbnB1dCgpIG1kYklucHV0RGlyZWN0aXZlOiBNZGJJbnB1dERpcmVjdGl2ZTtcbiAgQElucHV0KCkgY3VzdG9tUmVnZXg6IGFueTtcbiAgQElucHV0KCkgbWRiVmFsaWRhdGUgPSB0cnVlO1xuICBASW5wdXQoKSB2YWxpZGF0ZVN1Y2Nlc3MgPSB0cnVlO1xuICBASW5wdXQoKSB2YWxpZGF0ZUVycm9yID0gdHJ1ZTtcbiAgQElucHV0KCkgZm9jdXNDaGVja2JveCA9IHRydWU7XG4gIEBJbnB1dCgpIGZvY3VzUmFkaW8gPSB0cnVlO1xuICBASW5wdXQoKSBlcnJvck1lc3NhZ2U6IHN0cmluZztcbiAgQElucHV0KCkgc3VjY2Vzc01lc3NhZ2U6IHN0cmluZztcblxuICBpc0Jyb3dzZXI6IGFueSA9IGZhbHNlO1xuICBpc0NsaWNrZWQgPSBmYWxzZTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICBwcml2YXRlIF9lbFJlZjogRWxlbWVudFJlZixcbiAgICBwcml2YXRlIF9yZW5kZXJlcjogUmVuZGVyZXIyLFxuICAgIEBJbmplY3QoUExBVEZPUk1fSUQpIHBsYXRmb3JtSWQ6IHN0cmluZ1xuICApIHtcbiAgICB0aGlzLmlzQnJvd3NlciA9IGlzUGxhdGZvcm1Ccm93c2VyKHBsYXRmb3JtSWQpO1xuICB9XG5cbiAgQEhvc3RMaXN0ZW5lcignZm9jdXMnKSBvbmZvY3VzKCkge1xuICAgIHRyeSB7XG4gICAgICB0aGlzLl9yZW5kZXJlci5hZGRDbGFzcyh0aGlzLmVsTGFiZWwsICdhY3RpdmUnKTtcbiAgICAgIHRoaXMuaXNDbGlja2VkID0gdHJ1ZTtcbiAgICB9IGNhdGNoIChlcnJvcikge31cbiAgfVxuXG4gIEBIb3N0TGlzdGVuZXIoJ2JsdXInKSBvbmJsdXIoKSB7XG4gICAgdGhpcy52YWxpZGF0aW9uRnVuY3Rpb24oKTtcbiAgICB0cnkge1xuICAgICAgaWYgKHRoaXMuZWwubmF0aXZlRWxlbWVudC52YWx1ZSA9PT0gJycpIHtcbiAgICAgICAgdGhpcy5fcmVuZGVyZXIucmVtb3ZlQ2xhc3ModGhpcy5lbExhYmVsLCAnYWN0aXZlJyk7XG4gICAgICB9XG4gICAgICB0aGlzLmlzQ2xpY2tlZCA9IGZhbHNlO1xuICAgIH0gY2F0Y2ggKGVycm9yKSB7fVxuICB9XG5cbiAgQEhvc3RMaXN0ZW5lcignY2hhbmdlJykgb25jaGFuZ2UoKSB7XG4gICAgdHJ5IHtcbiAgICAgIHRoaXMuY2hlY2tWYWx1ZSgpO1xuICAgIH0gY2F0Y2ggKGVycm9yKSB7fVxuICB9XG5cbiAgQEhvc3RMaXN0ZW5lcignaW5wdXQnKSBvbmlwdXQoKSB7XG4gICAgdGhpcy52YWxpZGF0aW9uRnVuY3Rpb24oKTtcbiAgfVxuXG4gIEBIb3N0TGlzdGVuZXIoJ2tleWRvd24nLCBbJyRldmVudCddKSBvbmtleWRvd24oZXZlbnQ6IGFueSkge1xuICAgIHRyeSB7XG4gICAgICBpZiAoZXZlbnQudGFyZ2V0LnR5cGUgPT09ICdudW1iZXInKSB7XG4gICAgICAgIGlmIChldmVudC5zaGlmdEtleSkge1xuICAgICAgICAgIHN3aXRjaCAoZXZlbnQua2V5Q29kZSkge1xuICAgICAgICAgICAgY2FzZSBVUF9BUlJPVzpcbiAgICAgICAgICAgICAgZXZlbnQudGFyZ2V0LnZhbHVlID0gK2V2ZW50LnRhcmdldC52YWx1ZSArIDEwO1xuICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICAgIGNhc2UgRE9XTl9BUlJPVzpcbiAgICAgICAgICAgICAgZXZlbnQudGFyZ2V0LnZhbHVlID0gK2V2ZW50LnRhcmdldC52YWx1ZSAtIDEwO1xuICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgICAgaWYgKGV2ZW50LmFsdEtleSkge1xuICAgICAgICAgIHN3aXRjaCAoZXZlbnQua2V5Q29kZSkge1xuICAgICAgICAgICAgY2FzZSBVUF9BUlJPVzpcbiAgICAgICAgICAgICAgZXZlbnQudGFyZ2V0LnZhbHVlID0gK2V2ZW50LnRhcmdldC52YWx1ZSArIDAuMTtcbiAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICBjYXNlIERPV05fQVJST1c6XG4gICAgICAgICAgICAgIGV2ZW50LnRhcmdldC52YWx1ZSA9ICtldmVudC50YXJnZXQudmFsdWUgLSAwLjE7XG4gICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH0gY2F0Y2ggKGVycm9yKSB7fVxuICAgIHRoaXMuZGVsYXllZFJlc2l6ZSgpO1xuICB9XG5cbiAgQEhvc3RMaXN0ZW5lcignY3V0Jykgb25jdXQoKSB7XG4gICAgdHJ5IHtcbiAgICAgIHNldFRpbWVvdXQoKCkgPT4ge1xuICAgICAgICB0aGlzLmRlbGF5ZWRSZXNpemUoKTtcbiAgICAgIH0sIDApO1xuICAgIH0gY2F0Y2ggKGVycm9yKSB7fVxuICB9XG5cbiAgQEhvc3RMaXN0ZW5lcigncGFzdGUnKSBvbnBhc3RlKCkge1xuICAgIHRyeSB7XG4gICAgICBzZXRUaW1lb3V0KCgpID0+IHtcbiAgICAgICAgdGhpcy5kZWxheWVkUmVzaXplKCk7XG4gICAgICB9LCAwKTtcbiAgICB9IGNhdGNoIChlcnJvcikge31cbiAgfVxuXG4gIEBIb3N0TGlzdGVuZXIoJ2Ryb3AnKSBvbmRyb3AoKSB7XG4gICAgdHJ5IHtcbiAgICAgIHNldFRpbWVvdXQoKCkgPT4ge1xuICAgICAgICB0aGlzLmRlbGF5ZWRSZXNpemUoKTtcbiAgICAgIH0sIDApO1xuICAgIH0gY2F0Y2ggKGVycm9yKSB7fVxuICB9XG5cbiAgdXBkYXRlRXJyb3JNc2codmFsdWU6IHN0cmluZykge1xuICAgIGlmICh0aGlzLndyb25nVGV4dENvbnRhaW5lcikge1xuICAgICAgdGhpcy53cm9uZ1RleHRDb250YWluZXIuaW5uZXJIVE1MID0gdmFsdWU7XG4gICAgfVxuICB9XG5cbiAgdXBkYXRlU3VjY2Vzc01zZyh2YWx1ZTogc3RyaW5nKSB7XG4gICAgaWYgKHRoaXMucmlnaHRUZXh0Q29udGFpbmVyKSB7XG4gICAgICB0aGlzLnJpZ2h0VGV4dENvbnRhaW5lci5pbm5lckhUTUwgPSB2YWx1ZTtcbiAgICB9XG4gIH1cblxuICBuZ09uSW5pdCgpIHtcbiAgICB0cnkge1xuICAgICAgc2V0VGltZW91dCgoKSA9PiB7XG4gICAgICAgIHRoaXMuZGVsYXllZFJlc2l6ZSgpO1xuICAgICAgfSwgMCk7XG4gICAgfSBjYXRjaCAoZXJyb3IpIHtcbiAgICAgIGNvbnNvbGUubG9nKGVycm9yKTtcbiAgICB9XG5cbiAgICAvLyBJbml0aXRhbGlzZSBhIG5ldyA8c3Bhbj4gd3JvbmcvcmlnaHQgZWxlbWVudHMgYW5kIHJlbmRlciBpdCBiZWxvdyB0aGUgaG9zdCBjb21wb25lbnQuXG4gICAgaWYgKHRoaXMubWRiVmFsaWRhdGUpIHtcbiAgICAgIHRoaXMud3JvbmdUZXh0Q29udGFpbmVyID0gdGhpcy5fcmVuZGVyZXIuY3JlYXRlRWxlbWVudCgnc3BhbicpO1xuICAgICAgdGhpcy5fcmVuZGVyZXIuYWRkQ2xhc3ModGhpcy53cm9uZ1RleHRDb250YWluZXIsICdpbnB1dFZhbCcpO1xuICAgICAgdGhpcy5fcmVuZGVyZXIuYWRkQ2xhc3ModGhpcy53cm9uZ1RleHRDb250YWluZXIsICd0ZXh0LWRhbmdlcicpO1xuICAgICAgdGhpcy5fcmVuZGVyZXIuYXBwZW5kQ2hpbGQodGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5wYXJlbnRFbGVtZW50LCB0aGlzLndyb25nVGV4dENvbnRhaW5lcik7XG4gICAgICBjb25zdCB0ZXh0V3JvbmcgPSB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LmdldEF0dHJpYnV0ZSgnZGF0YS1lcnJvcicpO1xuICAgICAgdGhpcy53cm9uZ1RleHRDb250YWluZXIuaW5uZXJIVE1MID0gdGV4dFdyb25nID8gdGV4dFdyb25nIDogJ3dyb25nJztcbiAgICAgIGlmICghdGV4dFdyb25nICYmIHRoaXMuZXJyb3JNZXNzYWdlICE9PSB1bmRlZmluZWQpIHtcbiAgICAgICAgdGhpcy53cm9uZ1RleHRDb250YWluZXIuaW5uZXJIVE1MID0gdGhpcy5lcnJvck1lc3NhZ2U7XG4gICAgICB9XG4gICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZSh0aGlzLndyb25nVGV4dENvbnRhaW5lciwgJ3Zpc2liaWxpdHknLCAnaGlkZGVuJyk7XG5cbiAgICAgIHRoaXMucmlnaHRUZXh0Q29udGFpbmVyID0gdGhpcy5fcmVuZGVyZXIuY3JlYXRlRWxlbWVudCgnc3BhbicpO1xuICAgICAgdGhpcy5fcmVuZGVyZXIuYWRkQ2xhc3ModGhpcy5yaWdodFRleHRDb250YWluZXIsICdpbnB1dFZhbCcpO1xuICAgICAgdGhpcy5fcmVuZGVyZXIuYWRkQ2xhc3ModGhpcy5yaWdodFRleHRDb250YWluZXIsICd0ZXh0LXN1Y2Nlc3MnKTtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLmFwcGVuZENoaWxkKHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQucGFyZW50RWxlbWVudCwgdGhpcy5yaWdodFRleHRDb250YWluZXIpO1xuICAgICAgY29uc3QgdGV4dFN1Y2Nlc3MgPSB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LmdldEF0dHJpYnV0ZSgnZGF0YS1zdWNjZXNzJyk7XG4gICAgICB0aGlzLnJpZ2h0VGV4dENvbnRhaW5lci5pbm5lckhUTUwgPSB0ZXh0U3VjY2VzcyA/IHRleHRTdWNjZXNzIDogJ3N1Y2Nlc3MnO1xuICAgICAgaWYgKCF0ZXh0U3VjY2VzcyAmJiB0aGlzLnN1Y2Nlc3NNZXNzYWdlICE9PSB1bmRlZmluZWQpIHtcbiAgICAgICAgdGhpcy5yaWdodFRleHRDb250YWluZXIuaW5uZXJIVE1MID0gdGhpcy5zdWNjZXNzTWVzc2FnZTtcbiAgICAgIH1cbiAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKHRoaXMucmlnaHRUZXh0Q29udGFpbmVyLCAndmlzaWJpbGl0eScsICdoaWRkZW4nKTtcbiAgICB9XG4gIH1cblxuICBuZ09uQ2hhbmdlcyhjaGFuZ2VzOiBTaW1wbGVDaGFuZ2VzKSB7XG4gICAgaWYgKGNoYW5nZXMuaGFzT3duUHJvcGVydHkoJ2Vycm9yTWVzc2FnZScpKSB7XG4gICAgICBjb25zdCBuZXdFcnJvck1zZyA9IGNoYW5nZXMuZXJyb3JNZXNzYWdlLmN1cnJlbnRWYWx1ZTtcbiAgICAgIHRoaXMudXBkYXRlRXJyb3JNc2cobmV3RXJyb3JNc2cpO1xuICAgIH1cblxuICAgIGlmIChjaGFuZ2VzLmhhc093blByb3BlcnR5KCdzdWNjZXNzTWVzc2FnZScpKSB7XG4gICAgICBjb25zdCBuZXdTdWNjZXNzTXNnID0gY2hhbmdlcy5zdWNjZXNzTWVzc2FnZS5jdXJyZW50VmFsdWU7XG4gICAgICB0aGlzLnVwZGF0ZVN1Y2Nlc3NNc2cobmV3U3VjY2Vzc01zZyk7XG4gICAgfVxuICB9XG5cbiAgbmdEb0NoZWNrKCkge1xuICAgIGlmIChcbiAgICAgIHRoaXMubWRiVmFsaWRhdGUgJiZcbiAgICAgIHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0LmNvbnRhaW5zKCduZy12YWxpZCcpICYmXG4gICAgICB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LmNsYXNzTGlzdC5jb250YWlucygnbmctZGlydHknKSAmJlxuICAgICAgIXRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0LmNvbnRhaW5zKCdjb3VudGVyLXN1Y2Nlc3MnKVxuICAgICkge1xuICAgICAgdGhpcy5fcmVuZGVyZXIuYWRkQ2xhc3ModGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudCwgJ2NvdW50ZXItc3VjY2VzcycpO1xuICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUodGhpcy53cm9uZ1RleHRDb250YWluZXIsICd2aXNpYmlsaXR5JywgJ2hpZGRlbicpO1xuICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUodGhpcy5yaWdodFRleHRDb250YWluZXIsICd2aXNpYmlsaXR5JywgJ3Zpc2libGUnKTtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKFxuICAgICAgICB0aGlzLnJpZ2h0VGV4dENvbnRhaW5lcixcbiAgICAgICAgJ3RvcCcsXG4gICAgICAgIHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQub2Zmc2V0SGVpZ2h0ICsgJ3B4J1xuICAgICAgKTtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKFxuICAgICAgICB0aGlzLndyb25nVGV4dENvbnRhaW5lcixcbiAgICAgICAgJ3RvcCcsXG4gICAgICAgIHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQub2Zmc2V0SGVpZ2h0ICsgJ3B4J1xuICAgICAgKTtcbiAgICB9XG4gICAgaWYgKFxuICAgICAgdGhpcy5tZGJWYWxpZGF0ZSAmJlxuICAgICAgdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5jbGFzc0xpc3QuY29udGFpbnMoJ25nLWludmFsaWQnKSAmJlxuICAgICAgdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5jbGFzc0xpc3QuY29udGFpbnMoJ25nLWRpcnR5JykgJiZcbiAgICAgICF0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LmNsYXNzTGlzdC5jb250YWlucygnY291bnRlci1kYW5nZXInKVxuICAgICkge1xuICAgICAgdGhpcy5fcmVuZGVyZXIuYWRkQ2xhc3ModGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudCwgJ2NvdW50ZXItZGFuZ2VyJyk7XG4gICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZSh0aGlzLnJpZ2h0VGV4dENvbnRhaW5lciwgJ3Zpc2liaWxpdHknLCAnaGlkZGVuJyk7XG4gICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZSh0aGlzLndyb25nVGV4dENvbnRhaW5lciwgJ3Zpc2liaWxpdHknLCAndmlzaWJsZScpO1xuICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUoXG4gICAgICAgIHRoaXMucmlnaHRUZXh0Q29udGFpbmVyLFxuICAgICAgICAndG9wJyxcbiAgICAgICAgdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5vZmZzZXRIZWlnaHQgKyAncHgnXG4gICAgICApO1xuICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUoXG4gICAgICAgIHRoaXMud3JvbmdUZXh0Q29udGFpbmVyLFxuICAgICAgICAndG9wJyxcbiAgICAgICAgdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5vZmZzZXRIZWlnaHQgKyAncHgnXG4gICAgICApO1xuICAgIH1cbiAgICBpZiAoXG4gICAgICAodGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5jbGFzc0xpc3QuY29udGFpbnMoJ25nLWludmFsaWQnKSAmJlxuICAgICAgICB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LmNsYXNzTGlzdC5jb250YWlucygnbmctcHJpc3RpbmUnKSAmJlxuICAgICAgICB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LmNsYXNzTGlzdC5jb250YWlucygnbmctdW50b3VjaGVkJykpIHx8XG4gICAgICB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LmRpc2FibGVkXG4gICAgKSB7XG4gICAgICBpZiAodGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5jbGFzc0xpc3QuY29udGFpbnMoJ2NvdW50ZXItc3VjY2VzcycpKSB7XG4gICAgICAgIHRoaXMuX3JlbmRlcmVyLnJlbW92ZUNsYXNzKHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQsICdjb3VudGVyLXN1Y2Nlc3MnKTtcbiAgICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUodGhpcy5yaWdodFRleHRDb250YWluZXIsICd2aXNpYmlsaXR5JywgJ2hpZGRlbicpO1xuICAgICAgfSBlbHNlIGlmICh0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LmNsYXNzTGlzdC5jb250YWlucygnY291bnRlci1kYW5nZXInKSkge1xuICAgICAgICB0aGlzLl9yZW5kZXJlci5yZW1vdmVDbGFzcyh0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LCAnY291bnRlci1kYW5nZXInKTtcbiAgICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUodGhpcy53cm9uZ1RleHRDb250YWluZXIsICd2aXNpYmlsaXR5JywgJ2hpZGRlbicpO1xuICAgICAgfVxuICAgIH1cbiAgICBpZiAoIXRoaXMudmFsaWRhdGVTdWNjZXNzKSB7XG4gICAgICB0aGlzLl9yZW5kZXJlci5yZW1vdmVDbGFzcyh0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LCAnY291bnRlci1zdWNjZXNzJyk7XG4gICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZSh0aGlzLnJpZ2h0VGV4dENvbnRhaW5lciwgJ2Rpc3BsYXknLCAnbm9uZScpO1xuICAgICAgaWYgKHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0LmNvbnRhaW5zKCduZy12YWxpZCcpKSB7XG4gICAgICAgIHRoaXMuX3JlbmRlcmVyLnJlbW92ZUNsYXNzKHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQsICdjb3VudGVyLWRhbmdlcicpO1xuICAgICAgfVxuICAgIH1cblxuICAgIGlmICghdGhpcy52YWxpZGF0ZUVycm9yKSB7XG4gICAgICB0aGlzLl9yZW5kZXJlci5yZW1vdmVDbGFzcyh0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LCAnY291bnRlci1kYW5nZXInKTtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKHRoaXMud3JvbmdUZXh0Q29udGFpbmVyLCAnZGlzcGxheScsICdub25lJyk7XG4gICAgICBpZiAodGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5jbGFzc0xpc3QuY29udGFpbnMoJ25nLWludmFsaWQnKSkge1xuICAgICAgICB0aGlzLl9yZW5kZXJlci5yZW1vdmVDbGFzcyh0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LCAnY291bnRlci1zdWNjZXNzJyk7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgdmFsaWRhdGlvbkZ1bmN0aW9uKCkge1xuICAgIHNldFRpbWVvdXQoKCkgPT4ge1xuICAgICAgaWYgKHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0LmNvbnRhaW5zKCduZy1pbnZhbGlkJykpIHtcbiAgICAgICAgdGhpcy5fcmVuZGVyZXIucmVtb3ZlQ2xhc3ModGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudCwgJ2NvdW50ZXItc3VjY2VzcycpO1xuICAgICAgICB0aGlzLl9yZW5kZXJlci5yZW1vdmVDbGFzcyh0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LCAnY291bnRlci1kYW5nZXInKTtcbiAgICAgIH1cbiAgICAgIGlmIChcbiAgICAgICAgdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5jbGFzc0xpc3QuY29udGFpbnMoJ25nLXRvdWNoZWQnKSAmJlxuICAgICAgICB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LmNsYXNzTGlzdC5jb250YWlucygnbmctaW52YWxpZCcpXG4gICAgICApIHtcbiAgICAgICAgaWYgKHRoaXMubWRiVmFsaWRhdGUpIHtcbiAgICAgICAgICB0aGlzLl9yZW5kZXJlci5hZGRDbGFzcyh0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LCAnY291bnRlci1kYW5nZXInKTtcbiAgICAgICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZSh0aGlzLnJpZ2h0VGV4dENvbnRhaW5lciwgJ3Zpc2liaWxpdHknLCAnaGlkZGVuJyk7XG4gICAgICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUodGhpcy53cm9uZ1RleHRDb250YWluZXIsICd2aXNpYmlsaXR5JywgJ3Zpc2libGUnKTtcbiAgICAgICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZShcbiAgICAgICAgICAgIHRoaXMucmlnaHRUZXh0Q29udGFpbmVyLFxuICAgICAgICAgICAgJ3RvcCcsXG4gICAgICAgICAgICB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50Lm9mZnNldEhlaWdodCArICdweCdcbiAgICAgICAgICApO1xuICAgICAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKFxuICAgICAgICAgICAgdGhpcy53cm9uZ1RleHRDb250YWluZXIsXG4gICAgICAgICAgICAndG9wJyxcbiAgICAgICAgICAgIHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQub2Zmc2V0SGVpZ2h0ICsgJ3B4J1xuICAgICAgICAgICk7XG4gICAgICAgIH1cbiAgICAgIH0gZWxzZSBpZiAoXG4gICAgICAgIHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0LmNvbnRhaW5zKCduZy10b3VjaGVkJykgJiZcbiAgICAgICAgdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5jbGFzc0xpc3QuY29udGFpbnMoJ25nLXZhbGlkJylcbiAgICAgICkge1xuICAgICAgICBpZiAodGhpcy5tZGJWYWxpZGF0ZSkge1xuICAgICAgICAgIHRoaXMuX3JlbmRlcmVyLmFkZENsYXNzKHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQsICdjb3VudGVyLXN1Y2Nlc3MnKTtcbiAgICAgICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZSh0aGlzLnJpZ2h0VGV4dENvbnRhaW5lciwgJ3Zpc2liaWxpdHknLCAndmlzaWJsZScpO1xuICAgICAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKHRoaXMud3JvbmdUZXh0Q29udGFpbmVyLCAndmlzaWJpbGl0eScsICdoaWRkZW4nKTtcbiAgICAgICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZShcbiAgICAgICAgICAgIHRoaXMucmlnaHRUZXh0Q29udGFpbmVyLFxuICAgICAgICAgICAgJ3RvcCcsXG4gICAgICAgICAgICB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50Lm9mZnNldEhlaWdodCArICdweCdcbiAgICAgICAgICApO1xuICAgICAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKFxuICAgICAgICAgICAgdGhpcy53cm9uZ1RleHRDb250YWluZXIsXG4gICAgICAgICAgICAndG9wJyxcbiAgICAgICAgICAgIHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQub2Zmc2V0SGVpZ2h0ICsgJ3B4J1xuICAgICAgICAgICk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9LCAwKTtcbiAgfVxuXG4gIG5nQWZ0ZXJWaWV3SW5pdCgpIHtcbiAgICBpZiAodGhpcy5pc0Jyb3dzZXIpIHtcbiAgICAgIHRyeSB7XG4gICAgICAgIHRoaXMuZWxlbWVudCA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3IoJy5tZC10ZXh0YXJlYS1hdXRvJyk7XG4gICAgICB9IGNhdGNoIChlcnJvcikge31cbiAgICB9XG4gICAgY29uc3QgdHlwZSA9IHRoaXMuZWwubmF0aXZlRWxlbWVudC50eXBlO1xuICAgIGlmICh0aGlzLmZvY3VzQ2hlY2tib3ggJiYgdHlwZSA9PT0gJ2NoZWNrYm94Jykge1xuICAgICAgdGhpcy5fcmVuZGVyZXIuYWRkQ2xhc3ModGhpcy5lbC5uYXRpdmVFbGVtZW50LCAnb25Gb2N1c1NlbGVjdCcpO1xuICAgIH1cbiAgICBpZiAodGhpcy5mb2N1c1JhZGlvICYmIHR5cGUgPT09ICdyYWRpbycpIHtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLmFkZENsYXNzKHRoaXMuZWwubmF0aXZlRWxlbWVudCwgJ29uRm9jdXNTZWxlY3QnKTtcbiAgICB9XG4gIH1cblxuICBuZ0FmdGVyVmlld0NoZWNrZWQoKSB7XG4gICAgdGhpcy5pbml0Q29tcG9uZW50KCk7XG4gICAgdGhpcy5jaGVja1ZhbHVlKCk7XG4gIH1cblxuICByZXNpemUoKSB7XG4gICAgaWYgKHRoaXMuZWwubmF0aXZlRWxlbWVudC5jbGFzc0xpc3QuY29udGFpbnMoJ21kLXRleHRhcmVhLWF1dG8nKSkge1xuICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUodGhpcy5lbC5uYXRpdmVFbGVtZW50LCAnaGVpZ2h0JywgJ2F1dG8nKTtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKFxuICAgICAgICB0aGlzLmVsLm5hdGl2ZUVsZW1lbnQsXG4gICAgICAgICdoZWlnaHQnLFxuICAgICAgICB0aGlzLmVsLm5hdGl2ZUVsZW1lbnQuc2Nyb2xsSGVpZ2h0ICsgJ3B4J1xuICAgICAgKTtcbiAgICB9XG4gIH1cblxuICBkZWxheWVkUmVzaXplKCkge1xuICAgIHNldFRpbWVvdXQoKCkgPT4ge1xuICAgICAgdGhpcy5yZXNpemUoKTtcbiAgICB9LCAwKTtcbiAgfVxuXG4gIHB1YmxpYyBpbml0Q29tcG9uZW50KCk6IHZvaWQge1xuICAgIGxldCBpbnB1dElkO1xuICAgIGxldCBpbnB1dFA7XG4gICAgaWYgKHRoaXMuaXNCcm93c2VyKSB7XG4gICAgICB0cnkge1xuICAgICAgICBpbnB1dElkID0gdGhpcy5lbC5uYXRpdmVFbGVtZW50LmlkO1xuICAgICAgfSBjYXRjaCAoZXJyKSB7fVxuXG4gICAgICB0cnkge1xuICAgICAgICBpbnB1dFAgPSB0aGlzLmVsLm5hdGl2ZUVsZW1lbnQucGFyZW50Tm9kZTtcbiAgICAgIH0gY2F0Y2ggKGVycikge31cblxuICAgICAgdGhpcy5lbExhYmVsID1cbiAgICAgICAgaW5wdXRQLnF1ZXJ5U2VsZWN0b3IoJ2xhYmVsW2Zvcj1cIicgKyBpbnB1dElkICsgJ1wiXScpIHx8IGlucHV0UC5xdWVyeVNlbGVjdG9yKCdsYWJlbCcpO1xuICAgICAgaWYgKHRoaXMuZWxMYWJlbCAmJiB0aGlzLmVsLm5hdGl2ZUVsZW1lbnQudmFsdWUgIT09ICcnKSB7XG4gICAgICAgIHRoaXMuX3JlbmRlcmVyLmFkZENsYXNzKHRoaXMuZWxMYWJlbCwgJ2FjdGl2ZScpO1xuICAgICAgfVxuICAgICAgdGhpcy5lbEljb24gPSBpbnB1dFAucXVlcnlTZWxlY3RvcignaScpIHx8IGZhbHNlO1xuXG4gICAgICBpZiAodGhpcy5lbEljb24pIHtcbiAgICAgICAgdGhpcy5fcmVuZGVyZXIuYWRkQ2xhc3ModGhpcy5lbEljb24sICdhY3RpdmUnKTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICBwcml2YXRlIGNoZWNrVmFsdWUoKTogdm9pZCB7XG4gICAgbGV0IHZhbHVlID0gJyc7XG4gICAgaWYgKHRoaXMuZWxMYWJlbCAhPSBudWxsKSB7XG4gICAgICB2YWx1ZSA9IHRoaXMuZWwubmF0aXZlRWxlbWVudC52YWx1ZSB8fCAnJztcbiAgICAgIGlmICh2YWx1ZSA9PT0gJycpIHtcbiAgICAgICAgdGhpcy5fcmVuZGVyZXIucmVtb3ZlQ2xhc3ModGhpcy5lbExhYmVsLCAnYWN0aXZlJyk7XG4gICAgICAgIGlmICh0aGlzLmVsSWNvbikge1xuICAgICAgICAgIHRoaXMuX3JlbmRlcmVyLnJlbW92ZUNsYXNzKHRoaXMuZWxJY29uLCAnYWN0aXZlJyk7XG4gICAgICAgIH1cbiAgICAgICAgLy8gdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOm1heC1saW5lLWxlbmd0aFxuICAgICAgfVxuICAgICAgaWYgKFxuICAgICAgICAodmFsdWUgPT09ICcnICYmIHRoaXMuaXNDbGlja2VkKSB8fFxuICAgICAgICAodmFsdWUgPT09ICcnICYmIHRoaXMuZWwubmF0aXZlRWxlbWVudC5wbGFjZWhvbGRlcikgfHxcbiAgICAgICAgKHZhbHVlID09PSAnJyAmJiB0aGlzLmVsLm5hdGl2ZUVsZW1lbnQuYXR0cmlidXRlcy5wbGFjZWhvbGRlcilcbiAgICAgICkge1xuICAgICAgICB0aGlzLl9yZW5kZXJlci5hZGRDbGFzcyh0aGlzLmVsTGFiZWwsICdhY3RpdmUnKTtcbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cbiJdfQ==