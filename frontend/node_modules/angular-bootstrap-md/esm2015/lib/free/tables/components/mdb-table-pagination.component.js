import { __decorate, __metadata } from "tslib";
import { Component, OnInit, Output, EventEmitter, Input, ChangeDetectorRef, OnChanges, SimpleChanges, AfterViewInit, OnDestroy, } from '@angular/core';
import { Observable, Subject } from 'rxjs';
import { MdbTableDirective } from '../directives/mdb-table.directive';
import { takeUntil } from 'rxjs/operators';
let MdbTablePaginationComponent = class MdbTablePaginationComponent {
    constructor(cdRef) {
        this.cdRef = cdRef;
        this.searchPagination = false;
        this.searchDataSource = null;
        this.ofKeyword = 'of';
        this.dashKeyword = '-';
        this.paginationAlign = '';
        this.hideDescription = false;
        this._destroy$ = new Subject();
        this.maxVisibleItems = 10;
        this.firstItemIndex = 0;
        this.lastItemIndex = this.maxVisibleItems;
        this.lastVisibleItemIndex = 5;
        this.activePageNumber = 1;
        this.allItemsLength = 0;
        this.nextShouldBeDisabled = false;
        this.previousShouldBeDisabled = true;
        this.searchText = '';
        this.pagination = new Subject();
        this.nextPageClick = new EventEmitter();
        this.previousPageClick = new EventEmitter();
        this.firstPageClick = new EventEmitter();
        this.lastPageClick = new EventEmitter();
    }
    ngOnInit() {
        if (this.tableEl) {
            this.allItemsLength = this.tableEl.getDataSource().length;
        }
    }
    ngAfterViewInit() {
        if (this.tableEl) {
            this.tableEl
                .dataSourceChange()
                .pipe(takeUntil(this._destroy$))
                .subscribe((data) => {
                this.allItemsLength = data.length;
                this.lastVisibleItemIndex = data.length;
                this.calculateFirstItemIndex();
                this.calculateLastItemIndex();
                this.disableNextButton(data);
                if (this.searchDataSource) {
                    setTimeout(() => {
                        if (this.searchDataSource.length !== data.length) {
                            this.activePageNumber = 1;
                            this.firstItemIndex = 1;
                        }
                    }, 0);
                }
            });
        }
        this.paginationChange()
            .pipe(takeUntil(this._destroy$))
            .subscribe((data) => {
            this.firstItemIndex = data.first;
            this.lastVisibleItemIndex = data.last;
        });
    }
    ngOnChanges(changes) {
        const searchDataSource = changes['searchDataSource'];
        if (searchDataSource.currentValue.length !== 0) {
            this.allItemsLength = searchDataSource.currentValue.length;
        }
        if (this.lastVisibleItemIndex > this.allItemsLength) {
            this.lastVisibleItemIndex = this.allItemsLength;
        }
        if (searchDataSource.currentValue.length === 0) {
            this.firstItemIndex = 0;
            this.lastItemIndex = 0;
            this.lastVisibleItemIndex = 0;
            this.allItemsLength = 0;
        }
        if (!searchDataSource.isFirstChange() &&
            searchDataSource.currentValue.length <= this.maxVisibleItems) {
            this.nextShouldBeDisabled = true;
            this.lastVisibleItemIndex = searchDataSource.currentValue.length;
        }
        else {
            this.nextShouldBeDisabled = false;
        }
    }
    setMaxVisibleItemsNumberTo(value) {
        this.lastItemIndex = value;
        this.lastVisibleItemIndex = value;
        this.maxVisibleItems = value;
        this.cdRef.detectChanges();
    }
    searchTextObs() {
        const observable = new Observable((observer) => {
            observer.next(this.searchText);
        });
        return observable;
    }
    disableNextButton(data) {
        if (data.length <= this.maxVisibleItems) {
            this.nextShouldBeDisabled = true;
        }
        else {
            this.nextShouldBeDisabled = false;
        }
    }
    calculateFirstItemIndex() {
        this.firstItemIndex = this.activePageNumber * this.maxVisibleItems - this.maxVisibleItems + 1;
        this.pagination.next({ first: this.firstItemIndex, last: this.lastItemIndex });
    }
    calculateLastItemIndex() {
        this.lastItemIndex = this.activePageNumber * this.maxVisibleItems;
        this.lastVisibleItemIndex = this.lastItemIndex;
        if (this.searchDataSource && this.lastItemIndex > this.searchDataSource.length) {
            this.lastVisibleItemIndex = this.searchDataSource.length;
        }
        else if (!this.searchDataSource) {
            this.lastVisibleItemIndex = this.lastItemIndex;
        }
        if (this.lastItemIndex > this.tableEl.getDataSource().length) {
            this.lastItemIndex = this.tableEl.getDataSource().length;
            this.lastVisibleItemIndex = this.tableEl.getDataSource().length;
        }
        this.pagination.next({ first: this.firstItemIndex, last: this.lastItemIndex });
    }
    paginationChange() {
        return this.pagination;
    }
    calculateHowManyPagesShouldBe() {
        return Math.ceil(this.tableEl.getDataSource().length / this.maxVisibleItems);
    }
    previousPage() {
        this.activePageNumber--;
        this.calculateFirstItemIndex();
        this.calculateLastItemIndex();
        this.previousPageClick.emit({ first: this.firstItemIndex, last: this.lastItemIndex });
    }
    nextPage() {
        this.activePageNumber++;
        this.calculateFirstItemIndex();
        this.calculateLastItemIndex();
        if (this.lastItemIndex > this.tableEl.getDataSource().length) {
            this.lastItemIndex = this.tableEl.getDataSource().length;
        }
        if (this.lastVisibleItemIndex > this.allItemsLength) {
            this.lastVisibleItemIndex = this.allItemsLength;
        }
        this.nextPageClick.emit({ first: this.firstItemIndex, last: this.lastItemIndex });
    }
    firstPage() {
        this.activePageNumber = 1;
        this.calculateFirstItemIndex();
        this.calculateLastItemIndex();
        this.firstPageClick.emit({ first: this.firstItemIndex, last: this.lastItemIndex });
    }
    lastPage() {
        const lastPage = Math.ceil(this.allItemsLength / this.maxVisibleItems);
        this.activePageNumber = lastPage;
        this.calculateFirstItemIndex();
        this.calculateLastItemIndex();
        this.lastPageClick.emit({ first: this.firstItemIndex, last: this.lastItemIndex });
    }
    nextPageObservable() {
        const obs = new Observable((observer) => {
            observer.next(this.firstItemIndex);
        });
        return obs;
    }
    previousPageObservable() {
        const obs = new Observable((observer) => {
            observer.next(this.lastVisibleItemIndex);
        });
        return obs;
    }
    checkIfNextShouldBeDisabled() {
        if (this.searchDataSource && this.lastVisibleItemIndex === this.searchDataSource.length) {
            return true;
        }
        if (this.activePageNumber >= this.calculateHowManyPagesShouldBe()) {
            return true;
        }
        if (this.nextShouldBeDisabled) {
            return this.nextShouldBeDisabled;
        }
    }
    checkIfPreviousShouldBeDisabled() {
        if (this.activePageNumber === 1) {
            return true;
        }
    }
    ngOnDestroy() {
        this._destroy$.next();
        this._destroy$.complete();
    }
};
MdbTablePaginationComponent.ctorParameters = () => [
    { type: ChangeDetectorRef }
];
__decorate([
    Input(),
    __metadata("design:type", MdbTableDirective)
], MdbTablePaginationComponent.prototype, "tableEl", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], MdbTablePaginationComponent.prototype, "searchPagination", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], MdbTablePaginationComponent.prototype, "searchDataSource", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], MdbTablePaginationComponent.prototype, "ofKeyword", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], MdbTablePaginationComponent.prototype, "dashKeyword", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], MdbTablePaginationComponent.prototype, "paginationAlign", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], MdbTablePaginationComponent.prototype, "hideDescription", void 0);
__decorate([
    Output(),
    __metadata("design:type", Object)
], MdbTablePaginationComponent.prototype, "nextPageClick", void 0);
__decorate([
    Output(),
    __metadata("design:type", Object)
], MdbTablePaginationComponent.prototype, "previousPageClick", void 0);
__decorate([
    Output(),
    __metadata("design:type", Object)
], MdbTablePaginationComponent.prototype, "firstPageClick", void 0);
__decorate([
    Output(),
    __metadata("design:type", Object)
], MdbTablePaginationComponent.prototype, "lastPageClick", void 0);
MdbTablePaginationComponent = __decorate([
    Component({
        selector: 'mdb-table-pagination',
        template: "<!--Pagination -->\n<nav>\n  <ul\n    class=\"pagination pagination-circle pg-blue d-flex flex-center\"\n    [ngClass]=\"{\n      'justify-content-end': paginationAlign == 'end',\n      'justify-content-start': paginationAlign == 'start'\n    }\"\n  >\n    <li *ngIf=\"!hideDescription\">\n      {{ firstItemIndex }} {{ dashKeyword }} {{ lastVisibleItemIndex }} {{ ofKeyword }}\n      {{ allItemsLength }}\n    </li>\n    <!--Arrow left-->\n    <li class=\"page-item\" [ngClass]=\"{ disabled: checkIfPreviousShouldBeDisabled() }\">\n      <a class=\"page-link\" mdbWavesEffect aria-label=\"Previous\" (click)=\"firstPage()\">\n        <span aria-hidden=\"true\">\u00AB</span>\n      </a>\n    </li>\n\n    <li class=\"page-item\" [ngClass]=\"{ disabled: checkIfPreviousShouldBeDisabled() }\">\n      <a class=\"page-link\" mdbWavesEffect aria-label=\"Previous\" (click)=\"previousPage()\">\n        <span aria-hidden=\"true\">&#8249;</span>\n      </a>\n    </li>\n\n    <li class=\"page-item\" [ngClass]=\"{ disabled: checkIfNextShouldBeDisabled() }\">\n      <a class=\"page-link\" mdbWavesEffect aria-label=\"Previous\" (click)=\"nextPage()\">\n        <span aria-hidden=\"true\">&#8250;</span>\n      </a>\n    </li>\n\n    <!--Arrow right-->\n    <li class=\"page-item\" [ngClass]=\"{ disabled: checkIfNextShouldBeDisabled() }\">\n      <a class=\"page-link\" mdbWavesEffect aria-label=\"Next\" (click)=\"lastPage()\">\n        <span aria-hidden=\"true\">\u00BB</span>\n      </a>\n    </li>\n  </ul>\n</nav>\n<!--/Pagination -->\n"
    }),
    __metadata("design:paramtypes", [ChangeDetectorRef])
], MdbTablePaginationComponent);
export { MdbTablePaginationComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWRiLXRhYmxlLXBhZ2luYXRpb24uY29tcG9uZW50LmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS90YWJsZXMvY29tcG9uZW50cy9tZGItdGFibGUtcGFnaW5hdGlvbi5jb21wb25lbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFDTCxTQUFTLEVBQ1QsTUFBTSxFQUNOLE1BQU0sRUFDTixZQUFZLEVBQ1osS0FBSyxFQUNMLGlCQUFpQixFQUNqQixTQUFTLEVBQ1QsYUFBYSxFQUNiLGFBQWEsRUFDYixTQUFTLEdBQ1YsTUFBTSxlQUFlLENBQUM7QUFDdkIsT0FBTyxFQUFFLFVBQVUsRUFBRSxPQUFPLEVBQUUsTUFBTSxNQUFNLENBQUM7QUFDM0MsT0FBTyxFQUFFLGlCQUFpQixFQUFFLE1BQU0sbUNBQW1DLENBQUM7QUFDdEUsT0FBTyxFQUFFLFNBQVMsRUFBRSxNQUFNLGdCQUFnQixDQUFDO0FBVzNDLElBQWEsMkJBQTJCLEdBQXhDLE1BQWEsMkJBQTJCO0lBZ0N0QyxZQUFvQixLQUF3QjtRQUF4QixVQUFLLEdBQUwsS0FBSyxDQUFtQjtRQTlCbkMscUJBQWdCLEdBQUcsS0FBSyxDQUFDO1FBQ3pCLHFCQUFnQixHQUFRLElBQUksQ0FBQztRQUM3QixjQUFTLEdBQUcsSUFBSSxDQUFDO1FBQ2pCLGdCQUFXLEdBQUcsR0FBRyxDQUFDO1FBQ2xCLG9CQUFlLEdBQUcsRUFBRSxDQUFDO1FBQ3JCLG9CQUFlLEdBQUcsS0FBSyxDQUFDO1FBRXpCLGNBQVMsR0FBa0IsSUFBSSxPQUFPLEVBQUUsQ0FBQztRQUVqRCxvQkFBZSxHQUFHLEVBQUUsQ0FBQztRQUVyQixtQkFBYyxHQUFHLENBQUMsQ0FBQztRQUNuQixrQkFBYSxHQUFXLElBQUksQ0FBQyxlQUFlLENBQUM7UUFDN0MseUJBQW9CLEdBQUcsQ0FBQyxDQUFDO1FBRXpCLHFCQUFnQixHQUFHLENBQUMsQ0FBQztR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QztTQXRPWSwyQkFBMkIiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1xuICBDb21wb25lbnQsXG4gIE9uSW5pdCxcbiAgT3V0cHV0LFxuICBFdmVudEVtaXR0ZXIsXG4gIElucHV0LFxuICBDaGFuZ2VEZXRlY3RvclJlZixcbiAgT25DaGFuZ2VzLFxuICBTaW1wbGVDaGFuZ2VzLFxuICBBZnRlclZpZXdJbml0LFxuICBPbkRlc3Ryb3ksXG59IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgT2JzZXJ2YWJsZSwgU3ViamVjdCB9IGZyb20gJ3J4anMnO1xuaW1wb3J0IHsgTWRiVGFibGVEaXJlY3RpdmUgfSBmcm9tICcuLi9kaXJlY3RpdmVzL21kYi10YWJsZS5kaXJlY3RpdmUnO1xuaW1wb3J0IHsgdGFrZVVudGlsIH0gZnJvbSAncnhqcy9vcGVyYXRvcnMnO1xuXG5leHBvcnQgaW50ZXJmYWNlIE1kYlBhZ2luYXRpb25JbmRleCB7XG4gIGZpcnN0OiBudW1iZXI7XG4gIGxhc3Q6IG51bWJlcjtcbn1cblxuQENvbXBvbmVudCh7XG4gIHNlbGVjdG9yOiAnbWRiLXRhYmxlLXBhZ2luYXRpb24nLFxuICB0ZW1wbGF0ZVVybDogJy4vbWRiLXRhYmxlLXBhZ2luYXRpb24uY29tcG9uZW50Lmh0bWwnLFxufSlcbmV4cG9ydCBjbGFzcyBNZGJUYWJsZVBhZ2luYXRpb25Db21wb25lbnQgaW1wbGVtZW50cyBPbkluaXQsIE9uQ2hhbmdlcywgQWZ0ZXJWaWV3SW5pdCwgT25EZXN0cm95IHtcbiAgQElucHV0KCkgdGFibGVFbDogTWRiVGFibGVEaXJlY3RpdmU7XG4gIEBJbnB1dCgpIHNlYXJjaFBhZ2luYXRpb24gPSBmYWxzZTtcbiAgQElucHV0KCkgc2VhcmNoRGF0YVNvdXJjZTogYW55ID0gbnVsbDtcbiAgQElucHV0KCkgb2ZLZXl3b3JkID0gJ29mJztcbiAgQElucHV0KCkgZGFzaEtleXdvcmQgPSAnLSc7XG4gIEBJbnB1dCgpIHBhZ2luYXRpb25BbGlnbiA9ICcnO1xuICBASW5wdXQoKSBoaWRlRGVzY3JpcHRpb24gPSBmYWxzZTtcblxuICBwcml2YXRlIF9kZXN0cm95JDogU3ViamVjdDx2b2lkPiA9IG5ldyBTdWJqZWN0KCk7XG5cbiAgbWF4VmlzaWJsZUl0ZW1zID0gMTA7XG5cbiAgZmlyc3RJdGVtSW5kZXggPSAwO1xuICBsYXN0SXRlbUluZGV4OiBudW1iZXIgPSB0aGlzLm1heFZpc2libGVJdGVtcztcbiAgbGFzdFZpc2libGVJdGVtSW5kZXggPSA1O1xuXG4gIGFjdGl2ZVBhZ2VOdW1iZXIgPSAxO1xuXG4gIGFsbEl0ZW1zTGVuZ3RoID0gMDtcblxuICBuZXh0U2hvdWxkQmVEaXNhYmxlZCA9IGZhbHNlO1xuICBwcmV2aW91c1Nob3VsZEJlRGlzYWJsZWQgPSB0cnVlO1xuXG4gIHNlYXJjaFRleHQgPSAnJztcblxuICBwYWdpbmF0aW9uOiBTdWJqZWN0PE1kYlBhZ2luYXRpb25JbmRleD4gPSBuZXcgU3ViamVjdDxNZGJQYWdpbmF0aW9uSW5kZXg+KCk7XG5cbiAgQE91dHB1dCgpIG5leHRQYWdlQ2xpY2sgPSBuZXcgRXZlbnRFbWl0dGVyPE1kYlBhZ2luYXRpb25JbmRleD4oKTtcbiAgQE91dHB1dCgpIHByZXZpb3VzUGFnZUNsaWNrID0gbmV3IEV2ZW50RW1pdHRlcjxNZGJQYWdpbmF0aW9uSW5kZXg+KCk7XG4gIEBPdXRwdXQoKSBmaXJzdFBhZ2VDbGljayA9IG5ldyBFdmVudEVtaXR0ZXI8TWRiUGFnaW5hdGlvbkluZGV4PigpO1xuICBAT3V0cHV0KCkgbGFzdFBhZ2VDbGljayA9IG5ldyBFdmVudEVtaXR0ZXI8TWRiUGFnaW5hdGlvbkluZGV4PigpO1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGNkUmVmOiBDaGFuZ2VEZXRlY3RvclJlZikge31cblxuICBuZ09uSW5pdCgpIHtcbiAgICBpZiAodGhpcy50YWJsZUVsKSB7XG4gICAgICB0aGlzLmFsbEl0ZW1zTGVuZ3RoID0gdGhpcy50YWJsZUVsLmdldERhdGFTb3VyY2UoKS5sZW5ndGg7XG4gICAgfVxuICB9XG5cbiAgbmdBZnRlclZpZXdJbml0KCkge1xuICAgIGlmICh0aGlzLnRhYmxlRWwpIHtcbiAgICAgIHRoaXMudGFibGVFbFxuICAgICAgICAuZGF0YVNvdXJjZUNoYW5nZSgpXG4gICAgICAgIC5waXBlKHRha2VVbnRpbCh0aGlzLl9kZXN0cm95JCkpXG4gICAgICAgIC5zdWJzY3JpYmUoKGRhdGE6IGFueSkgPT4ge1xuICAgICAgICAgIHRoaXMuYWxsSXRlbXNMZW5ndGggPSBkYXRhLmxlbmd0aDtcbiAgICAgICAgICB0aGlzLmxhc3RWaXNpYmxlSXRlbUluZGV4ID0gZGF0YS5sZW5ndGg7XG4gICAgICAgICAgdGhpcy5jYWxjdWxhdGVGaXJzdEl0ZW1JbmRleCgpO1xuICAgICAgICAgIHRoaXMuY2FsY3VsYXRlTGFzdEl0ZW1JbmRleCgpO1xuICAgICAgICAgIHRoaXMuZGlzYWJsZU5leHRCdXR0b24oZGF0YSk7XG5cbiAgICAgICAgICBpZiAodGhpcy5zZWFyY2hEYXRhU291cmNlKSB7XG4gICAgICAgICAgICBzZXRUaW1lb3V0KCgpID0+IHtcbiAgICAgICAgICAgICAgaWYgKHRoaXMuc2VhcmNoRGF0YVNvdXJjZS5sZW5ndGggIT09IGRhdGEubGVuZ3RoKSB7XG4gICAgICAgICAgICAgICAgdGhpcy5hY3RpdmVQYWdlTnVtYmVyID0gMTtcbiAgICAgICAgICAgICAgICB0aGlzLmZpcnN0SXRlbUluZGV4ID0gMTtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfSwgMCk7XG4gICAgICAgICAgfVxuICAgICAgICB9KTtcbiAgICB9XG5cbiAgICB0aGlzLnBhZ2luYXRpb25DaGFuZ2UoKVxuICAgICAgLnBpcGUodGFrZVVudGlsKHRoaXMuX2Rlc3Ryb3kkKSlcbiAgICAgIC5zdWJzY3JpYmUoKGRhdGE6IGFueSkgPT4ge1xuICAgICAgICB0aGlzLmZpcnN0SXRlbUluZGV4ID0gZGF0YS5maXJzdDtcbiAgICAgICAgdGhpcy5sYXN0VmlzaWJsZUl0ZW1JbmRleCA9IGRhdGEubGFzdDtcbiAgICAgIH0pO1xuICB9XG5cbiAgbmdPbkNoYW5nZXMoY2hhbmdlczogU2ltcGxlQ2hhbmdlcykge1xuICAgIGNvbnN0IHNlYXJjaERhdGFTb3VyY2UgPSBjaGFuZ2VzWydzZWFyY2hEYXRhU291cmNlJ107XG4gICAgaWYgKHNlYXJjaERhdGFTb3VyY2UuY3VycmVudFZhbHVlLmxlbmd0aCAhPT0gMCkge1xuICAgICAgdGhpcy5hbGxJdGVtc0xlbmd0aCA9IHNlYXJjaERhdGFTb3VyY2UuY3VycmVudFZhbHVlLmxlbmd0aDtcbiAgICB9XG5cbiAgICBpZiAodGhpcy5sYXN0VmlzaWJsZUl0ZW1JbmRleCA+IHRoaXMuYWxsSXRlbXNMZW5ndGgpIHtcbiAgICAgIHRoaXMubGFzdFZpc2libGVJdGVtSW5kZXggPSB0aGlzLmFsbEl0ZW1zTGVuZ3RoO1xuICAgIH1cblxuICAgIGlmIChzZWFyY2hEYXRhU291cmNlLmN1cnJlbnRWYWx1ZS5sZW5ndGggPT09IDApIHtcbiAgICAgIHRoaXMuZmlyc3RJdGVtSW5kZXggPSAwO1xuICAgICAgdGhpcy5sYXN0SXRlbUluZGV4ID0gMDtcbiAgICAgIHRoaXMubGFzdFZpc2libGVJdGVtSW5kZXggPSAwO1xuICAgICAgdGhpcy5hbGxJdGVtc0xlbmd0aCA9IDA7XG4gICAgfVxuXG4gICAgaWYgKFxuICAgICAgIXNlYXJjaERhdGFTb3VyY2UuaXNGaXJzdENoYW5nZSgpICYmXG4gICAgICBzZWFyY2hEYXRhU291cmNlLmN1cnJlbnRWYWx1ZS5sZW5ndGggPD0gdGhpcy5tYXhWaXNpYmxlSXRlbXNcbiAgICApIHtcbiAgICAgIHRoaXMubmV4dFNob3VsZEJlRGlzYWJsZWQgPSB0cnVlO1xuICAgICAgdGhpcy5sYXN0VmlzaWJsZUl0ZW1JbmRleCA9IHNlYXJjaERhdGFTb3VyY2UuY3VycmVudFZhbHVlLmxlbmd0aDtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5uZXh0U2hvdWxkQmVEaXNhYmxlZCA9IGZhbHNlO1xuICAgIH1cbiAgfVxuXG4gIHNldE1heFZpc2libGVJdGVtc051bWJlclRvKHZhbHVlOiBudW1iZXIpIHtcbiAgICB0aGlzLmxhc3RJdGVtSW5kZXggPSB2YWx1ZTtcbiAgICB0aGlzLmxhc3RWaXNpYmxlSXRlbUluZGV4ID0gdmFsdWU7XG4gICAgdGhpcy5tYXhWaXNpYmxlSXRlbXMgPSB2YWx1ZTtcbiAgICB0aGlzLmNkUmVmLmRldGVjdENoYW5nZXMoKTtcbiAgfVxuXG4gIHNlYXJjaFRleHRPYnMoKTogT2JzZXJ2YWJsZTxhbnk+IHtcbiAgICBjb25zdCBvYnNlcnZhYmxlID0gbmV3IE9ic2VydmFibGUoKG9ic2VydmVyOiBhbnkpID0+IHtcbiAgICAgIG9ic2VydmVyLm5leHQodGhpcy5zZWFyY2hUZXh0KTtcbiAgICB9KTtcbiAgICByZXR1cm4gb2JzZXJ2YWJsZTtcbiAgfVxuXG4gIGRpc2FibGVOZXh0QnV0dG9uKGRhdGE6IGFueSkge1xuICAgIGlmIChkYXRhLmxlbmd0aCA8PSB0aGlzLm1heFZpc2libGVJdGVtcykge1xuICAgICAgdGhpcy5uZXh0U2hvdWxkQmVEaXNhYmxlZCA9IHRydWU7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMubmV4dFNob3VsZEJlRGlzYWJsZWQgPSBmYWxzZTtcbiAgICB9XG4gIH1cblxuICBjYWxjdWxhdGVGaXJzdEl0ZW1JbmRleCgpIHtcbiAgICB0aGlzLmZpcnN0SXRlbUluZGV4ID0gdGhpcy5hY3RpdmVQYWdlTnVtYmVyICogdGhpcy5tYXhWaXNpYmxlSXRlbXMgLSB0aGlzLm1heFZpc2libGVJdGVtcyArIDE7XG4gICAgdGhpcy5wYWdpbmF0aW9uLm5leHQoeyBmaXJzdDogdGhpcy5maXJzdEl0ZW1JbmRleCwgbGFzdDogdGhpcy5sYXN0SXRlbUluZGV4IH0pO1xuICB9XG5cbiAgY2FsY3VsYXRlTGFzdEl0ZW1JbmRleCgpIHtcbiAgICB0aGlzLmxhc3RJdGVtSW5kZXggPSB0aGlzLmFjdGl2ZVBhZ2VOdW1iZXIgKiB0aGlzLm1heFZpc2libGVJdGVtcztcbiAgICB0aGlzLmxhc3RWaXNpYmxlSXRlbUluZGV4ID0gdGhpcy5sYXN0SXRlbUluZGV4O1xuXG4gICAgaWYgKHRoaXMuc2VhcmNoRGF0YVNvdXJjZSAmJiB0aGlzLmxhc3RJdGVtSW5kZXggPiB0aGlzLnNlYXJjaERhdGFTb3VyY2UubGVuZ3RoKSB7XG4gICAgICB0aGlzLmxhc3RWaXNpYmxlSXRlbUluZGV4ID0gdGhpcy5zZWFyY2hEYXRhU291cmNlLmxlbmd0aDtcbiAgICB9IGVsc2UgaWYgKCF0aGlzLnNlYXJjaERhdGFTb3VyY2UpIHtcbiAgICAgIHRoaXMubGFzdFZpc2libGVJdGVtSW5kZXggPSB0aGlzLmxhc3RJdGVtSW5kZXg7XG4gICAgfVxuXG4gICAgaWYgKHRoaXMubGFzdEl0ZW1JbmRleCA+IHRoaXMudGFibGVFbC5nZXREYXRhU291cmNlKCkubGVuZ3RoKSB7XG4gICAgICB0aGlzLmxhc3RJdGVtSW5kZXggPSB0aGlzLnRhYmxlRWwuZ2V0RGF0YVNvdXJjZSgpLmxlbmd0aDtcbiAgICAgIHRoaXMubGFzdFZpc2libGVJdGVtSW5kZXggPSB0aGlzLnRhYmxlRWwuZ2V0RGF0YVNvdXJjZSgpLmxlbmd0aDtcbiAgICB9XG5cbiAgICB0aGlzLnBhZ2luYXRpb24ubmV4dCh7IGZpcnN0OiB0aGlzLmZpcnN0SXRlbUluZGV4LCBsYXN0OiB0aGlzLmxhc3RJdGVtSW5kZXggfSk7XG4gIH1cblxuICBwYWdpbmF0aW9uQ2hhbmdlKCk6IE9ic2VydmFibGU8YW55PiB7XG4gICAgcmV0dXJuIHRoaXMucGFnaW5hdGlvbjtcbiAgfVxuXG4gIGNhbGN1bGF0ZUhvd01hbnlQYWdlc1Nob3VsZEJlKCkge1xuICAgIHJldHVybiBNYXRoLmNlaWwodGhpcy50YWJsZUVsLmdldERhdGFTb3VyY2UoKS5sZW5ndGggLyB0aGlzLm1heFZpc2libGVJdGVtcyk7XG4gIH1cblxuICBwcmV2aW91c1BhZ2UoKSB7XG4gICAgdGhpcy5hY3RpdmVQYWdlTnVtYmVyLS07XG4gICAgdGhpcy5jYWxjdWxhdGVGaXJzdEl0ZW1JbmRleCgpO1xuICAgIHRoaXMuY2FsY3VsYXRlTGFzdEl0ZW1JbmRleCgpO1xuICAgIHRoaXMucHJldmlvdXNQYWdlQ2xpY2suZW1pdCh7IGZpcnN0OiB0aGlzLmZpcnN0SXRlbUluZGV4LCBsYXN0OiB0aGlzLmxhc3RJdGVtSW5kZXggfSk7XG4gIH1cblxuICBuZXh0UGFnZSgpIHtcbiAgICB0aGlzLmFjdGl2ZVBhZ2VOdW1iZXIrKztcbiAgICB0aGlzLmNhbGN1bGF0ZUZpcnN0SXRlbUluZGV4KCk7XG4gICAgdGhpcy5jYWxjdWxhdGVMYXN0SXRlbUluZGV4KCk7XG5cbiAgICBpZiAodGhpcy5sYXN0SXRlbUluZGV4ID4gdGhpcy50YWJsZUVsLmdldERhdGFTb3VyY2UoKS5sZW5ndGgpIHtcbiAgICAgIHRoaXMubGFzdEl0ZW1JbmRleCA9IHRoaXMudGFibGVFbC5nZXREYXRhU291cmNlKCkubGVuZ3RoO1xuICAgIH1cblxuICAgIGlmICh0aGlzLmxhc3RWaXNpYmxlSXRlbUluZGV4ID4gdGhpcy5hbGxJdGVtc0xlbmd0aCkge1xuICAgICAgdGhpcy5sYXN0VmlzaWJsZUl0ZW1JbmRleCA9IHRoaXMuYWxsSXRlbXNMZW5ndGg7XG4gICAgfVxuXG4gICAgdGhpcy5uZXh0UGFnZUNsaWNrLmVtaXQoeyBmaXJzdDogdGhpcy5maXJzdEl0ZW1JbmRleCwgbGFzdDogdGhpcy5sYXN0SXRlbUluZGV4IH0pO1xuICB9XG5cbiAgZmlyc3RQYWdlKCkge1xuICAgIHRoaXMuYWN0aXZlUGFnZU51bWJlciA9IDE7XG4gICAgdGhpcy5jYWxjdWxhdGVGaXJzdEl0ZW1JbmRleCgpO1xuICAgIHRoaXMuY2FsY3VsYXRlTGFzdEl0ZW1JbmRleCgpO1xuXG4gICAgdGhpcy5maXJzdFBhZ2VDbGljay5lbWl0KHsgZmlyc3Q6IHRoaXMuZmlyc3RJdGVtSW5kZXgsIGxhc3Q6IHRoaXMubGFzdEl0ZW1JbmRleCB9KTtcbiAgfVxuXG4gIGxhc3RQYWdlKCkge1xuICAgIGNvbnN0IGxhc3RQYWdlID0gTWF0aC5jZWlsKHRoaXMuYWxsSXRlbXNMZW5ndGggLyB0aGlzLm1heFZpc2libGVJdGVtcyk7XG4gICAgdGhpcy5hY3RpdmVQYWdlTnVtYmVyID0gbGFzdFBhZ2U7XG4gICAgdGhpcy5jYWxjdWxhdGVGaXJzdEl0ZW1JbmRleCgpO1xuICAgIHRoaXMuY2FsY3VsYXRlTGFzdEl0ZW1JbmRleCgpO1xuXG4gICAgdGhpcy5sYXN0UGFnZUNsaWNrLmVtaXQoeyBmaXJzdDogdGhpcy5maXJzdEl0ZW1JbmRleCwgbGFzdDogdGhpcy5sYXN0SXRlbUluZGV4IH0pO1xuICB9XG5cbiAgbmV4dFBhZ2VPYnNlcnZhYmxlKCk6IE9ic2VydmFibGU8YW55PiB7XG4gICAgY29uc3Qgb2JzID0gbmV3IE9ic2VydmFibGUoKG9ic2VydmVyOiBhbnkpID0+IHtcbiAgICAgIG9ic2VydmVyLm5leHQodGhpcy5maXJzdEl0ZW1JbmRleCk7XG4gICAgfSk7XG4gICAgcmV0dXJuIG9icztcbiAgfVxuXG4gIHByZXZpb3VzUGFnZU9ic2VydmFibGUoKTogT2JzZXJ2YWJsZTxhbnk+IHtcbiAgICBjb25zdCBvYnMgPSBuZXcgT2JzZXJ2YWJsZSgob2JzZXJ2ZXI6IGFueSkgPT4ge1xuICAgICAgb2JzZXJ2ZXIubmV4dCh0aGlzLmxhc3RWaXNpYmxlSXRlbUluZGV4KTtcbiAgICB9KTtcbiAgICByZXR1cm4gb2JzO1xuICB9XG5cbiAgY2hlY2tJZk5leHRTaG91bGRCZURpc2FibGVkKCkge1xuICAgIGlmICh0aGlzLnNlYXJjaERhdGFTb3VyY2UgJiYgdGhpcy5sYXN0VmlzaWJsZUl0ZW1JbmRleCA9PT0gdGhpcy5zZWFyY2hEYXRhU291cmNlLmxlbmd0aCkge1xuICAgICAgcmV0dXJuIHRydWU7XG4gICAgfVxuXG4gICAgaWYgKHRoaXMuYWN0aXZlUGFnZU51bWJlciA+PSB0aGlzLmNhbGN1bGF0ZUhvd01hbnlQYWdlc1Nob3VsZEJlKCkpIHtcbiAgICAgIHJldHVybiB0cnVlO1xuICAgIH1cblxuICAgIGlmICh0aGlzLm5leHRTaG91bGRCZURpc2FibGVkKSB7XG4gICAgICByZXR1cm4gdGhpcy5uZXh0U2hvdWxkQmVEaXNhYmxlZDtcbiAgICB9XG4gIH1cblxuICBjaGVja0lmUHJldmlvdXNTaG91bGRCZURpc2FibGVkKCkge1xuICAgIGlmICh0aGlzLmFjdGl2ZVBhZ2VOdW1iZXIgPT09IDEpIHtcbiAgICAgIHJldHVybiB0cnVlO1xuICAgIH1cbiAgfVxuXG4gIG5nT25EZXN0cm95KCkge1xuICAgIHRoaXMuX2Rlc3Ryb3kkLm5leHQoKTtcbiAgICB0aGlzLl9kZXN0cm95JC5jb21wbGV0ZSgpO1xuICB9XG59XG4iXX0=