import { EventEmitter, OnChanges, OnInit, SimpleChanges, ChangeDetectorRef } from '@angular/core';
export declare const CHECKBOX_VALUE_ACCESSOR: any;
export declare class MdbCheckboxChange {
    element: CheckboxComponent;
    checked: boolean;
}
export declare class CheckboxComponent implements OnInit, OnChanges {
    private _cdRef;
    inputEl: any;
    private defaultId;
    class: string;
    id: string;
    required: boolean;
    name: string;
    value: string;
    checked: boolean;
    filledIn: boolean;
    indeterminate: boolean;
    disabled: boolean;
    rounded: boolean;
    checkboxPosition: string;
    default: boolean;
    inline: boolean;
    tabIndex: number;
    change: EventEmitter<MdbCheckboxChange>;
    private checkboxClicked;
    constructor(_cdRef: ChangeDetectorRef);
    onLabelClick(event: any): void;
    onDocumentClick(): void;
    ngOnInit(): void;
    ngOnChanges(changes: SimpleChanges): void;
    get changeEvent(): MdbCheckboxChange;
    toggle(): void;
    onCheckboxClick(event: any): void;
    onCheckboxChange(event: any): void;
    onBlur(): void;
    onChange: (_: any) => void;
    onTouched: () => void;
    writeValue(value: any): void;
    registerOnChange(fn: (_: any) => void): void;
    registerOnTouched(fn: () => void): void;
    setDisabledState(isDisabled: boolean): void;
}
