import { __decorate, __metadata, __param } from "tslib";
import { isPlatformBrowser } from '@angular/common';
import { Directive, ElementRef, Renderer2, Input, AfterViewInit, HostListener, PLATFORM_ID, Inject, AfterViewChecked, OnInit, DoCheck, OnChanges, SimpleChanges, } from '@angular/core';
import { DOWN_ARROW, UP_ARROW } from '../utils/keyboard-navigation';
let MdbInputDirective = class MdbInputDirective {
    constructor(_elRef, _renderer, platformId) {
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
    onfocus() {
        try {
            this._renderer.addClass(this.elLabel, 'active');
            this.isClicked = true;
        }
        catch (error) { }
    }
    onblur() {
        this.validationFunction();
        try {
            if (this.el.nativeElement.value === '') {
                this._renderer.removeClass(this.elLabel, 'active');
            }
            this.isClicked = false;
        }
        catch (error) { }
    }
    onchange() {
        try {
            this.checkValue();
        }
        catch (error) { }
    }
    oniput() {
        this.validationFunction();
    }
    onkeydown(event) {
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
    }
    oncut() {
        try {
            setTimeout(() => {
                this.delayedResize();
            }, 0);
        }
        catch (error) { }
    }
    onpaste() {
        try {
            setTimeout(() => {
                this.delayedResize();
            }, 0);
        }
        catch (error) { }
    }
    ondrop() {
        try {
            setTimeout(() => {
                this.delayedResize();
            }, 0);
        }
        catch (error) { }
    }
    updateErrorMsg(value) {
        if (this.wrongTextContainer) {
            this.wrongTextContainer.innerHTML = value;
        }
    }
    updateSuccessMsg(value) {
        if (this.rightTextContainer) {
            this.rightTextContainer.innerHTML = value;
        }
    }
    ngOnInit() {
        try {
            setTimeout(() => {
                this.delayedResize();
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
            const textWrong = this._elRef.nativeElement.getAttribute('data-error');
            this.wrongTextContainer.innerHTML = textWrong ? textWrong : 'wrong';
            if (!textWrong && this.errorMessage !== undefined) {
                this.wrongTextContainer.innerHTML = this.errorMessage;
            }
            this._renderer.setStyle(this.wrongTextContainer, 'visibility', 'hidden');
            this.rightTextContainer = this._renderer.createElement('span');
            this._renderer.addClass(this.rightTextContainer, 'inputVal');
            this._renderer.addClass(this.rightTextContainer, 'text-success');
            this._renderer.appendChild(this._elRef.nativeElement.parentElement, this.rightTextContainer);
            const textSuccess = this._elRef.nativeElement.getAttribute('data-success');
            this.rightTextContainer.innerHTML = textSuccess ? textSuccess : 'success';
            if (!textSuccess && this.successMessage !== undefined) {
                this.rightTextContainer.innerHTML = this.successMessage;
            }
            this._renderer.setStyle(this.rightTextContainer, 'visibility', 'hidden');
        }
    }
    ngOnChanges(changes) {
        if (changes.hasOwnProperty('errorMessage')) {
            const newErrorMsg = changes.errorMessage.currentValue;
            this.updateErrorMsg(newErrorMsg);
        }
        if (changes.hasOwnProperty('successMessage')) {
            const newSuccessMsg = changes.successMessage.currentValue;
            this.updateSuccessMsg(newSuccessMsg);
        }
    }
    ngDoCheck() {
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
    }
    validationFunction() {
        setTimeout(() => {
            if (this._elRef.nativeElement.classList.contains('ng-invalid')) {
                this._renderer.removeClass(this._elRef.nativeElement, 'counter-success');
                this._renderer.removeClass(this._elRef.nativeElement, 'counter-danger');
            }
            if (this._elRef.nativeElement.classList.contains('ng-touched') &&
                this._elRef.nativeElement.classList.contains('ng-invalid')) {
                if (this.mdbValidate) {
                    this._renderer.addClass(this._elRef.nativeElement, 'counter-danger');
                    this._renderer.setStyle(this.rightTextContainer, 'visibility', 'hidden');
                    this._renderer.setStyle(this.wrongTextContainer, 'visibility', 'visible');
                    this._renderer.setStyle(this.rightTextContainer, 'top', this._elRef.nativeElement.offsetHeight + 'px');
                    this._renderer.setStyle(this.wrongTextContainer, 'top', this._elRef.nativeElement.offsetHeight + 'px');
                }
            }
            else if (this._elRef.nativeElement.classList.contains('ng-touched') &&
                this._elRef.nativeElement.classList.contains('ng-valid')) {
                if (this.mdbValidate) {
                    this._renderer.addClass(this._elRef.nativeElement, 'counter-success');
                    this._renderer.setStyle(this.rightTextContainer, 'visibility', 'visible');
                    this._renderer.setStyle(this.wrongTextContainer, 'visibility', 'hidden');
                    this._renderer.setStyle(this.rightTextContainer, 'top', this._elRef.nativeElement.offsetHeight + 'px');
                    this._renderer.setStyle(this.wrongTextContainer, 'top', this._elRef.nativeElement.offsetHeight + 'px');
                }
            }
        }, 0);
    }
    ngAfterViewInit() {
        if (this.isBrowser) {
            try {
                this.element = document.querySelector('.md-textarea-auto');
            }
            catch (error) { }
        }
        const type = this.el.nativeElement.type;
        if (this.focusCheckbox && type === 'checkbox') {
            this._renderer.addClass(this.el.nativeElement, 'onFocusSelect');
        }
        if (this.focusRadio && type === 'radio') {
            this._renderer.addClass(this.el.nativeElement, 'onFocusSelect');
        }
    }
    ngAfterViewChecked() {
        this.initComponent();
        this.checkValue();
    }
    resize() {
        if (this.el.nativeElement.classList.contains('md-textarea-auto')) {
            this._renderer.setStyle(this.el.nativeElement, 'height', 'auto');
            this._renderer.setStyle(this.el.nativeElement, 'height', this.el.nativeElement.scrollHeight + 'px');
        }
    }
    delayedResize() {
        setTimeout(() => {
            this.resize();
        }, 0);
    }
    initComponent() {
        let inputId;
        let inputP;
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
    }
    checkValue() {
        let value = '';
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
    }
};
MdbInputDirective.ctorParameters = () => [
    { type: ElementRef },
    { type: Renderer2 },
    { type: String, decorators: [{ type: Inject, args: [PLATFORM_ID,] }] }
];
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
export { MdbInputDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWRiLWlucHV0LmRpcmVjdGl2ZS5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvaW5wdXRzL21kYi1pbnB1dC5kaXJlY3RpdmUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxpQkFBaUIsRUFBRSxNQUFNLGlCQUFpQixDQUFDO0FBQ3BELE9BQU8sRUFDTCxTQUFTLEVBQ1QsVUFBVSxFQUNWLFNBQVMsRUFDVCxLQUFLLEVBQ0wsYUFBYSxFQUNiLFlBQVksRUFDWixXQUFXLEVBQ1gsTUFBTSxFQUNOLGdCQUFnQixFQUNoQixNQUFNLEVBQ04sT0FBTyxFQUNQLFNBQVMsRUFDVCxhQUFhLEdBQ2QsTUFBTSxlQUFlLENBQUM7QUFDdkIsT0FBTyxFQUFFLFVBQVUsRUFBRSxRQUFRLEVBQUUsTUFBTSw4QkFBOEIsQ0FBQztBQUtwRSxJQUFhLGlCQUFpQixHQUE5QixNQUFhLGlCQUFpQjtJQXVCNUIsWUFDVSxNQUFrQixFQUNsQixTQUFvQixFQUNQLFVBQWtCO1FBRi9CLFdBQU0sR0FBTixNQUFNLENBQVk7UUFDbEIsY0FBUyxHQUFULFNBQVMsQ0FBVztRQXJCdkIsT0FBRSxHQUFxQixJQUFJLENBQUM7UUFDNUIsWUFBTyxHQUFxQixJQUFJLENBQUM7UUFDakMsV0FBTSxHQUFrQixJQUFJLENBQUM7UUFFcEMsWUFBTyxHQUFRLElBQUksQ0FBQztRQUlYLGdCQUFXLEdBQUcsSUFBSSxDQUFDO1FBQ25CLG9CQUFlLEdBQUcsSUFBSSxDQUFDO1FBQ3ZCLGtCQUFhLEdBQUcsSUFBSSxDQUFDO1FBQ3JCLGtCQUFhLEdBQUcsSUFBSSxDQUFDO1FBQ3JCLGVBQVUsR0FBRyxJQUFJLENBQUM7UUFJM0IsY0FBUyxHQUFRLEtBQUssQ0FBQztRQUN2QixjQUFTLEdBQUcsS0FBSyxDQUFDO1FBT2hCLElBQUksQ0FBQyxTQUFTLEdBQUcsaUJBQWlCLENBQUMsVUFBVSxDQUFDLENBQUM7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O0lBQXBCLFlBQVksQ0FBQyxLQUFLLENBQUM7Ozs7OENBTW5CO0FBRXNCO0lBQXRCLFlBQVksQ0FBQyxPQUFPLENBQUM7Ozs7Z0RBTXJCO0FBRXFCO0lBQXJCLFlBQVksQ0FBQyxNQUFNLENBQUM7Ozs7K0NBTXBCO0FBNUdVLGlCQUFpQjtJQUg3QixTQUFTLENBQUM7UUFDVCxRQUFRLEVBQUUscUJBQXFCO0tBQ2hDLENBQUM7SUEyQkcsV0FBQSxNQUFNLENBQUMsV0FBVyxDQUFDLENBQUE7cUNBRkosVUFBVTtRQUNQLFNBQVM7R0F6Qm5CLGlCQUFpQixDQW1YN0I7U0FuWFksaUJBQWlCIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgaXNQbGF0Zm9ybUJyb3dzZXIgfSBmcm9tICdAYW5ndWxhci9jb21tb24nO1xuaW1wb3J0IHtcbiAgRGlyZWN0aXZlLFxuICBFbGVtZW50UmVmLFxuICBSZW5kZXJlcjIsXG4gIElucHV0LFxuICBBZnRlclZpZXdJbml0LFxuICBIb3N0TGlzdGVuZXIsXG4gIFBMQVRGT1JNX0lELFxuICBJbmplY3QsXG4gIEFmdGVyVmlld0NoZWNrZWQsXG4gIE9uSW5pdCxcbiAgRG9DaGVjayxcbiAgT25DaGFuZ2VzLFxuICBTaW1wbGVDaGFuZ2VzLFxufSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7IERPV05fQVJST1csIFVQX0FSUk9XIH0gZnJvbSAnLi4vdXRpbHMva2V5Ym9hcmQtbmF2aWdhdGlvbic7XG5cbkBEaXJlY3RpdmUoe1xuICBzZWxlY3RvcjogJ1ttZGJJbnB1dERpcmVjdGl2ZV0nLFxufSlcbmV4cG9ydCBjbGFzcyBNZGJJbnB1dERpcmVjdGl2ZVxuICBpbXBsZW1lbnRzIEFmdGVyVmlld0NoZWNrZWQsIE9uSW5pdCwgQWZ0ZXJWaWV3SW5pdCwgRG9DaGVjaywgT25DaGFuZ2VzIHtcbiAgcHVibGljIHdyb25nVGV4dENvbnRhaW5lcjogYW55O1xuICBwdWJsaWMgcmlnaHRUZXh0Q29udGFpbmVyOiBhbnk7XG4gIHB1YmxpYyBlbDogRWxlbWVudFJlZiB8IGFueSA9IG51bGw7XG4gIHB1YmxpYyBlbExhYmVsOiBFbGVtZW50UmVmIHwgYW55ID0gbnVsbDtcbiAgcHVibGljIGVsSWNvbjogRWxlbWVudCB8IGFueSA9IG51bGw7XG5cbiAgZWxlbWVudDogYW55ID0gbnVsbDtcblxuICBASW5wdXQoKSBtZGJJbnB1dERpcmVjdGl2ZTogTWRiSW5wdXREaXJlY3RpdmU7XG4gIEBJbnB1dCgpIGN1c3RvbVJlZ2V4OiBhbnk7XG4gIEBJbnB1dCgpIG1kYlZhbGlkYXRlID0gdHJ1ZTtcbiAgQElucHV0KCkgdmFsaWRhdGVTdWNjZXNzID0gdHJ1ZTtcbiAgQElucHV0KCkgdmFsaWRhdGVFcnJvciA9IHRydWU7XG4gIEBJbnB1dCgpIGZvY3VzQ2hlY2tib3ggPSB0cnVlO1xuICBASW5wdXQoKSBmb2N1c1JhZGlvID0gdHJ1ZTtcbiAgQElucHV0KCkgZXJyb3JNZXNzYWdlOiBzdHJpbmc7XG4gIEBJbnB1dCgpIHN1Y2Nlc3NNZXNzYWdlOiBzdHJpbmc7XG5cbiAgaXNCcm93c2VyOiBhbnkgPSBmYWxzZTtcbiAgaXNDbGlja2VkID0gZmFsc2U7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgcHJpdmF0ZSBfZWxSZWY6IEVsZW1lbnRSZWYsXG4gICAgcHJpdmF0ZSBfcmVuZGVyZXI6IFJlbmRlcmVyMixcbiAgICBASW5qZWN0KFBMQVRGT1JNX0lEKSBwbGF0Zm9ybUlkOiBzdHJpbmdcbiAgKSB7XG4gICAgdGhpcy5pc0Jyb3dzZXIgPSBpc1BsYXRmb3JtQnJvd3NlcihwbGF0Zm9ybUlkKTtcbiAgfVxuXG4gIEBIb3N0TGlzdGVuZXIoJ2ZvY3VzJykgb25mb2N1cygpIHtcbiAgICB0cnkge1xuICAgICAgdGhpcy5fcmVuZGVyZXIuYWRkQ2xhc3ModGhpcy5lbExhYmVsLCAnYWN0aXZlJyk7XG4gICAgICB0aGlzLmlzQ2xpY2tlZCA9IHRydWU7XG4gICAgfSBjYXRjaCAoZXJyb3IpIHt9XG4gIH1cblxuICBASG9zdExpc3RlbmVyKCdibHVyJykgb25ibHVyKCkge1xuICAgIHRoaXMudmFsaWRhdGlvbkZ1bmN0aW9uKCk7XG4gICAgdHJ5IHtcbiAgICAgIGlmICh0aGlzLmVsLm5hdGl2ZUVsZW1lbnQudmFsdWUgPT09ICcnKSB7XG4gICAgICAgIHRoaXMuX3JlbmRlcmVyLnJlbW92ZUNsYXNzKHRoaXMuZWxMYWJlbCwgJ2FjdGl2ZScpO1xuICAgICAgfVxuICAgICAgdGhpcy5pc0NsaWNrZWQgPSBmYWxzZTtcbiAgICB9IGNhdGNoIChlcnJvcikge31cbiAgfVxuXG4gIEBIb3N0TGlzdGVuZXIoJ2NoYW5nZScpIG9uY2hhbmdlKCkge1xuICAgIHRyeSB7XG4gICAgICB0aGlzLmNoZWNrVmFsdWUoKTtcbiAgICB9IGNhdGNoIChlcnJvcikge31cbiAgfVxuXG4gIEBIb3N0TGlzdGVuZXIoJ2lucHV0Jykgb25pcHV0KCkge1xuICAgIHRoaXMudmFsaWRhdGlvbkZ1bmN0aW9uKCk7XG4gIH1cblxuICBASG9zdExpc3RlbmVyKCdrZXlkb3duJywgWyckZXZlbnQnXSkgb25rZXlkb3duKGV2ZW50OiBhbnkpIHtcbiAgICB0cnkge1xuICAgICAgaWYgKGV2ZW50LnRhcmdldC50eXBlID09PSAnbnVtYmVyJykge1xuICAgICAgICBpZiAoZXZlbnQuc2hpZnRLZXkpIHtcbiAgICAgICAgICBzd2l0Y2ggKGV2ZW50LmtleUNvZGUpIHtcbiAgICAgICAgICAgIGNhc2UgVVBfQVJST1c6XG4gICAgICAgICAgICAgIGV2ZW50LnRhcmdldC52YWx1ZSA9ICtldmVudC50YXJnZXQudmFsdWUgKyAxMDtcbiAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICBjYXNlIERPV05fQVJST1c6XG4gICAgICAgICAgICAgIGV2ZW50LnRhcmdldC52YWx1ZSA9ICtldmVudC50YXJnZXQudmFsdWUgLSAxMDtcbiAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICAgIGlmIChldmVudC5hbHRLZXkpIHtcbiAgICAgICAgICBzd2l0Y2ggKGV2ZW50LmtleUNvZGUpIHtcbiAgICAgICAgICAgIGNhc2UgVVBfQVJST1c6XG4gICAgICAgICAgICAgIGV2ZW50LnRhcmdldC52YWx1ZSA9ICtldmVudC50YXJnZXQudmFsdWUgKyAwLjE7XG4gICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgICAgY2FzZSBET1dOX0FSUk9XOlxuICAgICAgICAgICAgICBldmVudC50YXJnZXQudmFsdWUgPSArZXZlbnQudGFyZ2V0LnZhbHVlIC0gMC4xO1xuICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9IGNhdGNoIChlcnJvcikge31cbiAgICB0aGlzLmRlbGF5ZWRSZXNpemUoKTtcbiAgfVxuXG4gIEBIb3N0TGlzdGVuZXIoJ2N1dCcpIG9uY3V0KCkge1xuICAgIHRyeSB7XG4gICAgICBzZXRUaW1lb3V0KCgpID0+IHtcbiAgICAgICAgdGhpcy5kZWxheWVkUmVzaXplKCk7XG4gICAgICB9LCAwKTtcbiAgICB9IGNhdGNoIChlcnJvcikge31cbiAgfVxuXG4gIEBIb3N0TGlzdGVuZXIoJ3Bhc3RlJykgb25wYXN0ZSgpIHtcbiAgICB0cnkge1xuICAgICAgc2V0VGltZW91dCgoKSA9PiB7XG4gICAgICAgIHRoaXMuZGVsYXllZFJlc2l6ZSgpO1xuICAgICAgfSwgMCk7XG4gICAgfSBjYXRjaCAoZXJyb3IpIHt9XG4gIH1cblxuICBASG9zdExpc3RlbmVyKCdkcm9wJykgb25kcm9wKCkge1xuICAgIHRyeSB7XG4gICAgICBzZXRUaW1lb3V0KCgpID0+IHtcbiAgICAgICAgdGhpcy5kZWxheWVkUmVzaXplKCk7XG4gICAgICB9LCAwKTtcbiAgICB9IGNhdGNoIChlcnJvcikge31cbiAgfVxuXG4gIHVwZGF0ZUVycm9yTXNnKHZhbHVlOiBzdHJpbmcpIHtcbiAgICBpZiAodGhpcy53cm9uZ1RleHRDb250YWluZXIpIHtcbiAgICAgIHRoaXMud3JvbmdUZXh0Q29udGFpbmVyLmlubmVySFRNTCA9IHZhbHVlO1xuICAgIH1cbiAgfVxuXG4gIHVwZGF0ZVN1Y2Nlc3NNc2codmFsdWU6IHN0cmluZykge1xuICAgIGlmICh0aGlzLnJpZ2h0VGV4dENvbnRhaW5lcikge1xuICAgICAgdGhpcy5yaWdodFRleHRDb250YWluZXIuaW5uZXJIVE1MID0gdmFsdWU7XG4gICAgfVxuICB9XG5cbiAgbmdPbkluaXQoKSB7XG4gICAgdHJ5IHtcbiAgICAgIHNldFRpbWVvdXQoKCkgPT4ge1xuICAgICAgICB0aGlzLmRlbGF5ZWRSZXNpemUoKTtcbiAgICAgIH0sIDApO1xuICAgIH0gY2F0Y2ggKGVycm9yKSB7XG4gICAgICBjb25zb2xlLmxvZyhlcnJvcik7XG4gICAgfVxuXG4gICAgLy8gSW5pdGl0YWxpc2UgYSBuZXcgPHNwYW4+IHdyb25nL3JpZ2h0IGVsZW1lbnRzIGFuZCByZW5kZXIgaXQgYmVsb3cgdGhlIGhvc3QgY29tcG9uZW50LlxuICAgIGlmICh0aGlzLm1kYlZhbGlkYXRlKSB7XG4gICAgICB0aGlzLndyb25nVGV4dENvbnRhaW5lciA9IHRoaXMuX3JlbmRlcmVyLmNyZWF0ZUVsZW1lbnQoJ3NwYW4nKTtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLmFkZENsYXNzKHRoaXMud3JvbmdUZXh0Q29udGFpbmVyLCAnaW5wdXRWYWwnKTtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLmFkZENsYXNzKHRoaXMud3JvbmdUZXh0Q29udGFpbmVyLCAndGV4dC1kYW5nZXInKTtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLmFwcGVuZENoaWxkKHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQucGFyZW50RWxlbWVudCwgdGhpcy53cm9uZ1RleHRDb250YWluZXIpO1xuICAgICAgY29uc3QgdGV4dFdyb25nID0gdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5nZXRBdHRyaWJ1dGUoJ2RhdGEtZXJyb3InKTtcbiAgICAgIHRoaXMud3JvbmdUZXh0Q29udGFpbmVyLmlubmVySFRNTCA9IHRleHRXcm9uZyA/IHRleHRXcm9uZyA6ICd3cm9uZyc7XG4gICAgICBpZiAoIXRleHRXcm9uZyAmJiB0aGlzLmVycm9yTWVzc2FnZSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICAgIHRoaXMud3JvbmdUZXh0Q29udGFpbmVyLmlubmVySFRNTCA9IHRoaXMuZXJyb3JNZXNzYWdlO1xuICAgICAgfVxuICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUodGhpcy53cm9uZ1RleHRDb250YWluZXIsICd2aXNpYmlsaXR5JywgJ2hpZGRlbicpO1xuXG4gICAgICB0aGlzLnJpZ2h0VGV4dENvbnRhaW5lciA9IHRoaXMuX3JlbmRlcmVyLmNyZWF0ZUVsZW1lbnQoJ3NwYW4nKTtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLmFkZENsYXNzKHRoaXMucmlnaHRUZXh0Q29udGFpbmVyLCAnaW5wdXRWYWwnKTtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLmFkZENsYXNzKHRoaXMucmlnaHRUZXh0Q29udGFpbmVyLCAndGV4dC1zdWNjZXNzJyk7XG4gICAgICB0aGlzLl9yZW5kZXJlci5hcHBlbmRDaGlsZCh0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LnBhcmVudEVsZW1lbnQsIHRoaXMucmlnaHRUZXh0Q29udGFpbmVyKTtcbiAgICAgIGNvbnN0IHRleHRTdWNjZXNzID0gdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5nZXRBdHRyaWJ1dGUoJ2RhdGEtc3VjY2VzcycpO1xuICAgICAgdGhpcy5yaWdodFRleHRDb250YWluZXIuaW5uZXJIVE1MID0gdGV4dFN1Y2Nlc3MgPyB0ZXh0U3VjY2VzcyA6ICdzdWNjZXNzJztcbiAgICAgIGlmICghdGV4dFN1Y2Nlc3MgJiYgdGhpcy5zdWNjZXNzTWVzc2FnZSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICAgIHRoaXMucmlnaHRUZXh0Q29udGFpbmVyLmlubmVySFRNTCA9IHRoaXMuc3VjY2Vzc01lc3NhZ2U7XG4gICAgICB9XG4gICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZSh0aGlzLnJpZ2h0VGV4dENvbnRhaW5lciwgJ3Zpc2liaWxpdHknLCAnaGlkZGVuJyk7XG4gICAgfVxuICB9XG5cbiAgbmdPbkNoYW5nZXMoY2hhbmdlczogU2ltcGxlQ2hhbmdlcykge1xuICAgIGlmIChjaGFuZ2VzLmhhc093blByb3BlcnR5KCdlcnJvck1lc3NhZ2UnKSkge1xuICAgICAgY29uc3QgbmV3RXJyb3JNc2cgPSBjaGFuZ2VzLmVycm9yTWVzc2FnZS5jdXJyZW50VmFsdWU7XG4gICAgICB0aGlzLnVwZGF0ZUVycm9yTXNnKG5ld0Vycm9yTXNnKTtcbiAgICB9XG5cbiAgICBpZiAoY2hhbmdlcy5oYXNPd25Qcm9wZXJ0eSgnc3VjY2Vzc01lc3NhZ2UnKSkge1xuICAgICAgY29uc3QgbmV3U3VjY2Vzc01zZyA9IGNoYW5nZXMuc3VjY2Vzc01lc3NhZ2UuY3VycmVudFZhbHVlO1xuICAgICAgdGhpcy51cGRhdGVTdWNjZXNzTXNnKG5ld1N1Y2Nlc3NNc2cpO1xuICAgIH1cbiAgfVxuXG4gIG5nRG9DaGVjaygpIHtcbiAgICBpZiAoXG4gICAgICB0aGlzLm1kYlZhbGlkYXRlICYmXG4gICAgICB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LmNsYXNzTGlzdC5jb250YWlucygnbmctdmFsaWQnKSAmJlxuICAgICAgdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5jbGFzc0xpc3QuY29udGFpbnMoJ25nLWRpcnR5JykgJiZcbiAgICAgICF0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LmNsYXNzTGlzdC5jb250YWlucygnY291bnRlci1zdWNjZXNzJylcbiAgICApIHtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLmFkZENsYXNzKHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQsICdjb3VudGVyLXN1Y2Nlc3MnKTtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKHRoaXMud3JvbmdUZXh0Q29udGFpbmVyLCAndmlzaWJpbGl0eScsICdoaWRkZW4nKTtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKHRoaXMucmlnaHRUZXh0Q29udGFpbmVyLCAndmlzaWJpbGl0eScsICd2aXNpYmxlJyk7XG4gICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZShcbiAgICAgICAgdGhpcy5yaWdodFRleHRDb250YWluZXIsXG4gICAgICAgICd0b3AnLFxuICAgICAgICB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50Lm9mZnNldEhlaWdodCArICdweCdcbiAgICAgICk7XG4gICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZShcbiAgICAgICAgdGhpcy53cm9uZ1RleHRDb250YWluZXIsXG4gICAgICAgICd0b3AnLFxuICAgICAgICB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50Lm9mZnNldEhlaWdodCArICdweCdcbiAgICAgICk7XG4gICAgfVxuICAgIGlmIChcbiAgICAgIHRoaXMubWRiVmFsaWRhdGUgJiZcbiAgICAgIHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0LmNvbnRhaW5zKCduZy1pbnZhbGlkJykgJiZcbiAgICAgIHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0LmNvbnRhaW5zKCduZy1kaXJ0eScpICYmXG4gICAgICAhdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5jbGFzc0xpc3QuY29udGFpbnMoJ2NvdW50ZXItZGFuZ2VyJylcbiAgICApIHtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLmFkZENsYXNzKHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQsICdjb3VudGVyLWRhbmdlcicpO1xuICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUodGhpcy5yaWdodFRleHRDb250YWluZXIsICd2aXNpYmlsaXR5JywgJ2hpZGRlbicpO1xuICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUodGhpcy53cm9uZ1RleHRDb250YWluZXIsICd2aXNpYmlsaXR5JywgJ3Zpc2libGUnKTtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKFxuICAgICAgICB0aGlzLnJpZ2h0VGV4dENvbnRhaW5lcixcbiAgICAgICAgJ3RvcCcsXG4gICAgICAgIHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQub2Zmc2V0SGVpZ2h0ICsgJ3B4J1xuICAgICAgKTtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKFxuICAgICAgICB0aGlzLndyb25nVGV4dENvbnRhaW5lcixcbiAgICAgICAgJ3RvcCcsXG4gICAgICAgIHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQub2Zmc2V0SGVpZ2h0ICsgJ3B4J1xuICAgICAgKTtcbiAgICB9XG4gICAgaWYgKFxuICAgICAgKHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0LmNvbnRhaW5zKCduZy1pbnZhbGlkJykgJiZcbiAgICAgICAgdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5jbGFzc0xpc3QuY29udGFpbnMoJ25nLXByaXN0aW5lJykgJiZcbiAgICAgICAgdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5jbGFzc0xpc3QuY29udGFpbnMoJ25nLXVudG91Y2hlZCcpKSB8fFxuICAgICAgdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5kaXNhYmxlZFxuICAgICkge1xuICAgICAgaWYgKHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0LmNvbnRhaW5zKCdjb3VudGVyLXN1Y2Nlc3MnKSkge1xuICAgICAgICB0aGlzLl9yZW5kZXJlci5yZW1vdmVDbGFzcyh0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LCAnY291bnRlci1zdWNjZXNzJyk7XG4gICAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKHRoaXMucmlnaHRUZXh0Q29udGFpbmVyLCAndmlzaWJpbGl0eScsICdoaWRkZW4nKTtcbiAgICAgIH0gZWxzZSBpZiAodGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5jbGFzc0xpc3QuY29udGFpbnMoJ2NvdW50ZXItZGFuZ2VyJykpIHtcbiAgICAgICAgdGhpcy5fcmVuZGVyZXIucmVtb3ZlQ2xhc3ModGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudCwgJ2NvdW50ZXItZGFuZ2VyJyk7XG4gICAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKHRoaXMud3JvbmdUZXh0Q29udGFpbmVyLCAndmlzaWJpbGl0eScsICdoaWRkZW4nKTtcbiAgICAgIH1cbiAgICB9XG4gICAgaWYgKCF0aGlzLnZhbGlkYXRlU3VjY2Vzcykge1xuICAgICAgdGhpcy5fcmVuZGVyZXIucmVtb3ZlQ2xhc3ModGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudCwgJ2NvdW50ZXItc3VjY2VzcycpO1xuICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUodGhpcy5yaWdodFRleHRDb250YWluZXIsICdkaXNwbGF5JywgJ25vbmUnKTtcbiAgICAgIGlmICh0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LmNsYXNzTGlzdC5jb250YWlucygnbmctdmFsaWQnKSkge1xuICAgICAgICB0aGlzLl9yZW5kZXJlci5yZW1vdmVDbGFzcyh0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LCAnY291bnRlci1kYW5nZXInKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICBpZiAoIXRoaXMudmFsaWRhdGVFcnJvcikge1xuICAgICAgdGhpcy5fcmVuZGVyZXIucmVtb3ZlQ2xhc3ModGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudCwgJ2NvdW50ZXItZGFuZ2VyJyk7XG4gICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZSh0aGlzLndyb25nVGV4dENvbnRhaW5lciwgJ2Rpc3BsYXknLCAnbm9uZScpO1xuICAgICAgaWYgKHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0LmNvbnRhaW5zKCduZy1pbnZhbGlkJykpIHtcbiAgICAgICAgdGhpcy5fcmVuZGVyZXIucmVtb3ZlQ2xhc3ModGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudCwgJ2NvdW50ZXItc3VjY2VzcycpO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHZhbGlkYXRpb25GdW5jdGlvbigpIHtcbiAgICBzZXRUaW1lb3V0KCgpID0+IHtcbiAgICAgIGlmICh0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LmNsYXNzTGlzdC5jb250YWlucygnbmctaW52YWxpZCcpKSB7XG4gICAgICAgIHRoaXMuX3JlbmRlcmVyLnJlbW92ZUNsYXNzKHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQsICdjb3VudGVyLXN1Y2Nlc3MnKTtcbiAgICAgICAgdGhpcy5fcmVuZGVyZXIucmVtb3ZlQ2xhc3ModGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudCwgJ2NvdW50ZXItZGFuZ2VyJyk7XG4gICAgICB9XG4gICAgICBpZiAoXG4gICAgICAgIHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0LmNvbnRhaW5zKCduZy10b3VjaGVkJykgJiZcbiAgICAgICAgdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5jbGFzc0xpc3QuY29udGFpbnMoJ25nLWludmFsaWQnKVxuICAgICAgKSB7XG4gICAgICAgIGlmICh0aGlzLm1kYlZhbGlkYXRlKSB7XG4gICAgICAgICAgdGhpcy5fcmVuZGVyZXIuYWRkQ2xhc3ModGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudCwgJ2NvdW50ZXItZGFuZ2VyJyk7XG4gICAgICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUodGhpcy5yaWdodFRleHRDb250YWluZXIsICd2aXNpYmlsaXR5JywgJ2hpZGRlbicpO1xuICAgICAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKHRoaXMud3JvbmdUZXh0Q29udGFpbmVyLCAndmlzaWJpbGl0eScsICd2aXNpYmxlJyk7XG4gICAgICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUoXG4gICAgICAgICAgICB0aGlzLnJpZ2h0VGV4dENvbnRhaW5lcixcbiAgICAgICAgICAgICd0b3AnLFxuICAgICAgICAgICAgdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5vZmZzZXRIZWlnaHQgKyAncHgnXG4gICAgICAgICAgKTtcbiAgICAgICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZShcbiAgICAgICAgICAgIHRoaXMud3JvbmdUZXh0Q29udGFpbmVyLFxuICAgICAgICAgICAgJ3RvcCcsXG4gICAgICAgICAgICB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50Lm9mZnNldEhlaWdodCArICdweCdcbiAgICAgICAgICApO1xuICAgICAgICB9XG4gICAgICB9IGVsc2UgaWYgKFxuICAgICAgICB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LmNsYXNzTGlzdC5jb250YWlucygnbmctdG91Y2hlZCcpICYmXG4gICAgICAgIHRoaXMuX2VsUmVmLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0LmNvbnRhaW5zKCduZy12YWxpZCcpXG4gICAgICApIHtcbiAgICAgICAgaWYgKHRoaXMubWRiVmFsaWRhdGUpIHtcbiAgICAgICAgICB0aGlzLl9yZW5kZXJlci5hZGRDbGFzcyh0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50LCAnY291bnRlci1zdWNjZXNzJyk7XG4gICAgICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUodGhpcy5yaWdodFRleHRDb250YWluZXIsICd2aXNpYmlsaXR5JywgJ3Zpc2libGUnKTtcbiAgICAgICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZSh0aGlzLndyb25nVGV4dENvbnRhaW5lciwgJ3Zpc2liaWxpdHknLCAnaGlkZGVuJyk7XG4gICAgICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUoXG4gICAgICAgICAgICB0aGlzLnJpZ2h0VGV4dENvbnRhaW5lcixcbiAgICAgICAgICAgICd0b3AnLFxuICAgICAgICAgICAgdGhpcy5fZWxSZWYubmF0aXZlRWxlbWVudC5vZmZzZXRIZWlnaHQgKyAncHgnXG4gICAgICAgICAgKTtcbiAgICAgICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZShcbiAgICAgICAgICAgIHRoaXMud3JvbmdUZXh0Q29udGFpbmVyLFxuICAgICAgICAgICAgJ3RvcCcsXG4gICAgICAgICAgICB0aGlzLl9lbFJlZi5uYXRpdmVFbGVtZW50Lm9mZnNldEhlaWdodCArICdweCdcbiAgICAgICAgICApO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfSwgMCk7XG4gIH1cblxuICBuZ0FmdGVyVmlld0luaXQoKSB7XG4gICAgaWYgKHRoaXMuaXNCcm93c2VyKSB7XG4gICAgICB0cnkge1xuICAgICAgICB0aGlzLmVsZW1lbnQgPSBkb2N1bWVudC5xdWVyeVNlbGVjdG9yKCcubWQtdGV4dGFyZWEtYXV0bycpO1xuICAgICAgfSBjYXRjaCAoZXJyb3IpIHt9XG4gICAgfVxuICAgIGNvbnN0IHR5cGUgPSB0aGlzLmVsLm5hdGl2ZUVsZW1lbnQudHlwZTtcbiAgICBpZiAodGhpcy5mb2N1c0NoZWNrYm94ICYmIHR5cGUgPT09ICdjaGVja2JveCcpIHtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLmFkZENsYXNzKHRoaXMuZWwubmF0aXZlRWxlbWVudCwgJ29uRm9jdXNTZWxlY3QnKTtcbiAgICB9XG4gICAgaWYgKHRoaXMuZm9jdXNSYWRpbyAmJiB0eXBlID09PSAncmFkaW8nKSB7XG4gICAgICB0aGlzLl9yZW5kZXJlci5hZGRDbGFzcyh0aGlzLmVsLm5hdGl2ZUVsZW1lbnQsICdvbkZvY3VzU2VsZWN0Jyk7XG4gICAgfVxuICB9XG5cbiAgbmdBZnRlclZpZXdDaGVja2VkKCkge1xuICAgIHRoaXMuaW5pdENvbXBvbmVudCgpO1xuICAgIHRoaXMuY2hlY2tWYWx1ZSgpO1xuICB9XG5cbiAgcmVzaXplKCkge1xuICAgIGlmICh0aGlzLmVsLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0LmNvbnRhaW5zKCdtZC10ZXh0YXJlYS1hdXRvJykpIHtcbiAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKHRoaXMuZWwubmF0aXZlRWxlbWVudCwgJ2hlaWdodCcsICdhdXRvJyk7XG4gICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZShcbiAgICAgICAgdGhpcy5lbC5uYXRpdmVFbGVtZW50LFxuICAgICAgICAnaGVpZ2h0JyxcbiAgICAgICAgdGhpcy5lbC5uYXRpdmVFbGVtZW50LnNjcm9sbEhlaWdodCArICdweCdcbiAgICAgICk7XG4gICAgfVxuICB9XG5cbiAgZGVsYXllZFJlc2l6ZSgpIHtcbiAgICBzZXRUaW1lb3V0KCgpID0+IHtcbiAgICAgIHRoaXMucmVzaXplKCk7XG4gICAgfSwgMCk7XG4gIH1cblxuICBwdWJsaWMgaW5pdENvbXBvbmVudCgpOiB2b2lkIHtcbiAgICBsZXQgaW5wdXRJZDtcbiAgICBsZXQgaW5wdXRQO1xuICAgIGlmICh0aGlzLmlzQnJvd3Nlcikge1xuICAgICAgdHJ5IHtcbiAgICAgICAgaW5wdXRJZCA9IHRoaXMuZWwubmF0aXZlRWxlbWVudC5pZDtcbiAgICAgIH0gY2F0Y2ggKGVycikge31cblxuICAgICAgdHJ5IHtcbiAgICAgICAgaW5wdXRQID0gdGhpcy5lbC5uYXRpdmVFbGVtZW50LnBhcmVudE5vZGU7XG4gICAgICB9IGNhdGNoIChlcnIpIHt9XG5cbiAgICAgIHRoaXMuZWxMYWJlbCA9XG4gICAgICAgIGlucHV0UC5xdWVyeVNlbGVjdG9yKCdsYWJlbFtmb3I9XCInICsgaW5wdXRJZCArICdcIl0nKSB8fCBpbnB1dFAucXVlcnlTZWxlY3RvcignbGFiZWwnKTtcbiAgICAgIGlmICh0aGlzLmVsTGFiZWwgJiYgdGhpcy5lbC5uYXRpdmVFbGVtZW50LnZhbHVlICE9PSAnJykge1xuICAgICAgICB0aGlzLl9yZW5kZXJlci5hZGRDbGFzcyh0aGlzLmVsTGFiZWwsICdhY3RpdmUnKTtcbiAgICAgIH1cbiAgICAgIHRoaXMuZWxJY29uID0gaW5wdXRQLnF1ZXJ5U2VsZWN0b3IoJ2knKSB8fCBmYWxzZTtcblxuICAgICAgaWYgKHRoaXMuZWxJY29uKSB7XG4gICAgICAgIHRoaXMuX3JlbmRlcmVyLmFkZENsYXNzKHRoaXMuZWxJY29uLCAnYWN0aXZlJyk7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBjaGVja1ZhbHVlKCk6IHZvaWQge1xuICAgIGxldCB2YWx1ZSA9ICcnO1xuICAgIGlmICh0aGlzLmVsTGFiZWwgIT0gbnVsbCkge1xuICAgICAgdmFsdWUgPSB0aGlzLmVsLm5hdGl2ZUVsZW1lbnQudmFsdWUgfHwgJyc7XG4gICAgICBpZiAodmFsdWUgPT09ICcnKSB7XG4gICAgICAgIHRoaXMuX3JlbmRlcmVyLnJlbW92ZUNsYXNzKHRoaXMuZWxMYWJlbCwgJ2FjdGl2ZScpO1xuICAgICAgICBpZiAodGhpcy5lbEljb24pIHtcbiAgICAgICAgICB0aGlzLl9yZW5kZXJlci5yZW1vdmVDbGFzcyh0aGlzLmVsSWNvbiwgJ2FjdGl2ZScpO1xuICAgICAgICB9XG4gICAgICAgIC8vIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTptYXgtbGluZS1sZW5ndGhcbiAgICAgIH1cbiAgICAgIGlmIChcbiAgICAgICAgKHZhbHVlID09PSAnJyAmJiB0aGlzLmlzQ2xpY2tlZCkgfHxcbiAgICAgICAgKHZhbHVlID09PSAnJyAmJiB0aGlzLmVsLm5hdGl2ZUVsZW1lbnQucGxhY2Vob2xkZXIpIHx8XG4gICAgICAgICh2YWx1ZSA9PT0gJycgJiYgdGhpcy5lbC5uYXRpdmVFbGVtZW50LmF0dHJpYnV0ZXMucGxhY2Vob2xkZXIpXG4gICAgICApIHtcbiAgICAgICAgdGhpcy5fcmVuZGVyZXIuYWRkQ2xhc3ModGhpcy5lbExhYmVsLCAnYWN0aXZlJyk7XG4gICAgICB9XG4gICAgfVxuICB9XG59XG4iXX0=