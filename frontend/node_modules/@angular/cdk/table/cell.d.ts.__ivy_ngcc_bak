/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { BooleanInput } from '@angular/cdk/coercion';
import { ElementRef, TemplateRef } from '@angular/core';
import { CanStick, CanStickCtor } from './can-stick';
/** Base interface for a cell definition. Captures a column's cell template definition. */
export interface CellDef {
    template: TemplateRef<any>;
}
/**
 * Cell definition for a CDK table.
 * Captures the template of a column's data row cell as well as cell-specific properties.
 */
export declare class CdkCellDef implements CellDef {
    template: TemplateRef<any>;
    constructor(/** @docs-private */ template: TemplateRef<any>);
}
/**
 * Header cell definition for a CDK table.
 * Captures the template of a column's header cell and as well as cell-specific properties.
 */
export declare class CdkHeaderCellDef implements CellDef {
    template: TemplateRef<any>;
    constructor(/** @docs-private */ template: TemplateRef<any>);
}
/**
 * Footer cell definition for a CDK table.
 * Captures the template of a column's footer cell and as well as cell-specific properties.
 */
export declare class CdkFooterCellDef implements CellDef {
    template: TemplateRef<any>;
    constructor(/** @docs-private */ template: TemplateRef<any>);
}
/** @docs-private */
declare class CdkColumnDefBase {
}
declare const _CdkColumnDefBase: CanStickCtor & typeof CdkColumnDefBase;
/**
 * Column definition for the CDK table.
 * Defines a set of cells available for a table column.
 */
export declare class CdkColumnDef extends _CdkColumnDefBase implements CanStick {
    _table?: any;
    /** Unique name for this column. */
    get name(): string;
    set name(name: string);
    protected _name: string;
    /**
     * Whether this column should be sticky positioned on the end of the row. Should make sure
     * that it mimics the `CanStick` mixin such that `_hasStickyChanged` is set to true if the value
     * has been changed.
     */
    get stickyEnd(): boolean;
    set stickyEnd(v: boolean);
    _stickyEnd: boolean;
    /** @docs-private */
    cell: CdkCellDef;
    /** @docs-private */
    headerCell: CdkHeaderCellDef;
    /** @docs-private */
    footerCell: CdkFooterCellDef;
    /**
     * Transformed version of the column name that can be used as part of a CSS classname. Excludes
     * all non-alphanumeric characters and the special characters '-' and '_'. Any characters that
     * do not match are replaced by the '-' character.
     */
    cssClassFriendlyName: string;
    /**
     * Class name for cells in this column.
     * @docs-private
     */
    _columnCssClassName: string[];
    constructor(_table?: any);
    /**
     * Overridable method that sets the css classes that will be added to every cell in this
     * column.
     * In the future, columnCssClassName will change from type string[] to string and this
     * will set a single string value.
     * @docs-private
     */
    protected _updateColumnCssClassName(): void;
    /**
     * This has been extracted to a util because of TS 4 and VE.
     * View Engine doesn't support property rename inheritance.
     * TS 4.0 doesn't allow properties to override accessors or vice-versa.
     * @docs-private
     */
    protected _setNameInput(value: string): void;
    static ngAcceptInputType_sticky: BooleanInput;
    static ngAcceptInputType_stickyEnd: BooleanInput;
}
/** Base class for the cells. Adds a CSS classname that identifies the column it renders in. */
export declare class BaseCdkCell {
    constructor(columnDef: CdkColumnDef, elementRef: ElementRef);
}
/** Header cell template container that adds the right classes and role. */
export declare class CdkHeaderCell extends BaseCdkCell {
    constructor(columnDef: CdkColumnDef, elementRef: ElementRef);
}
/** Footer cell template container that adds the right classes and role. */
export declare class CdkFooterCell extends BaseCdkCell {
    constructor(columnDef: CdkColumnDef, elementRef: ElementRef);
}
/** Cell template container that adds the right classes and role. */
export declare class CdkCell extends BaseCdkCell {
    constructor(columnDef: CdkColumnDef, elementRef: ElementRef);
}
export {};
