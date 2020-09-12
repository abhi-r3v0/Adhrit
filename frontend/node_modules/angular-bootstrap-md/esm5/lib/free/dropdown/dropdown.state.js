import { __decorate, __metadata } from "tslib";
import { EventEmitter, Injectable } from '@angular/core';
var BsDropdownState = /** @class */ (function () {
    function BsDropdownState() {
        var _this = this;
        this.direction = 'down';
        this.isOpenChange = new EventEmitter();
        this.isDisabledChange = new EventEmitter();
        this.toggleClick = new EventEmitter();
        this.dropdownMenu = new Promise(function (resolve) {
            _this.resolveDropdownMenu = resolve;
        });
    }
    BsDropdownState = __decorate([
        Injectable(),
        __metadata("design:paramtypes", [])
    ], BsDropdownState);
    return BsDropdownState;
}());
export { BsDropdownState };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZHJvcGRvd24uc3RhdGUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL2Ryb3Bkb3duL2Ryb3Bkb3duLnN0YXRlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsWUFBWSxFQUFFLFVBQVUsRUFBRSxNQUFNLGVBQWUsQ0FBQztBQUl6RDtJQWFHO1FBQUEsaUJBSUM7UUFoQkYsY0FBUyxHQUFrQixNQUFNLENBQUM7UUFFbEMsaUJBQVksR0FBRyxJQUFJLFlBQVksRUFBVyxDQUFDO1FBQzNDLHFCQUFnQixHQUFHLElBQUksWUFBWSxFQUFXLENBQUM7UUFDL0MsZ0JBQVcsR0FBRyxJQUFJLFlBQVksRUFBVyxDQUFDO1FBU3ZDLElBQUksQ0FBQyxZQUFZLEdBQUcsSUFBSSxPQUFPLENBQUMsVUFBQyxPQUFPO1lBQ3RDLEtBQUksQ0FBQyxtQkFBbUIsR0FBRyxPQUFPLENBQUM7UUFDckMsQ0FBQyxDQUFDLENBQUM7SUFDTCxDQUFDO0lBakJTLGVBQWU7UUFEM0IsVUFBVSxFQUFFOztPQUNBLGVBQWUsQ0FrQjFCO0lBQUQsc0JBQUM7Q0FBQSxBQWxCRixJQWtCRTtTQWxCVyxlQUFlIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgRXZlbnRFbWl0dGVyLCBJbmplY3RhYmxlIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQgeyBCc0NvbXBvbmVudFJlZiB9IGZyb20gJy4uL3V0aWxzL2NvbXBvbmVudC1sb2FkZXIvYnMtY29tcG9uZW50LXJlZi5jbGFzcyc7XG5cbkBJbmplY3RhYmxlKClcbmV4cG9ydCBjbGFzcyBCc0Ryb3Bkb3duU3RhdGUge1xuICBkaXJlY3Rpb246ICdkb3duJyB8ICd1cCcgPSAnZG93bic7XG4gIGF1dG9DbG9zZTogYm9vbGVhbjtcbiAgaXNPcGVuQ2hhbmdlID0gbmV3IEV2ZW50RW1pdHRlcjxib29sZWFuPigpO1xuICBpc0Rpc2FibGVkQ2hhbmdlID0gbmV3IEV2ZW50RW1pdHRlcjxib29sZWFuPigpO1xuICB0b2dnbGVDbGljayA9IG5ldyBFdmVudEVtaXR0ZXI8Ym9vbGVhbj4oKTtcblxuICAvKipcbiAgICogQ29udGVudCB0byBiZSBkaXNwbGF5ZWQgYXMgcG9wb3Zlci5cbiAgICovXG4gICBkcm9wZG93bk1lbnU6IFByb21pc2U8QnNDb21wb25lbnRSZWY8YW55Pj47XG4gICByZXNvbHZlRHJvcGRvd25NZW51OiAoY29tcG9uZW50UmVmOiBCc0NvbXBvbmVudFJlZjxhbnk+KSA9PiB2b2lkO1xuXG4gICBjb25zdHJ1Y3RvcigpIHtcbiAgICAgdGhpcy5kcm9wZG93bk1lbnUgPSBuZXcgUHJvbWlzZSgocmVzb2x2ZSkgPT4ge1xuICAgICAgIHRoaXMucmVzb2x2ZURyb3Bkb3duTWVudSA9IHJlc29sdmU7XG4gICAgIH0pO1xuICAgfVxuIH1cbiJdfQ==