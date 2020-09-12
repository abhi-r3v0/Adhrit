import { AfterViewInit, ElementRef, EventEmitter, OnInit, Renderer2 } from '@angular/core';
declare enum SortDirection {
    ASC = "ascending",
    DESC = "descending",
    CONST = "constant"
}
export interface SortedData {
    data: any[];
    sortOrder: string;
    sortBy: string;
}
export declare class MdbTableSortDirective implements OnInit, AfterViewInit {
    private el;
    private renderer;
    data: any[];
    sortedInto: boolean;
    order: SortDirection.ASC | SortDirection.DESC | SortDirection.CONST;
    dataSource: Array<any>;
    sortBy: string;
    sortIcon: boolean;
    resetSortDirection: boolean;
    sortEnd: EventEmitter<any[]>;
    sorted: EventEmitter<SortedData>;
    constructor(el: ElementRef, renderer: Renderer2);
    onclick(): void;
    trimWhiteSigns(headElement: any): string;
    moveArrayItem(arr: any, oldIndex: number, newIndex: number): any;
    sortDataBy(key: string | any): void;
    ngOnInit(): void;
    ngAfterViewInit(): void;
    createIcon(): void;
    removeSort(): void;
}
export {};
