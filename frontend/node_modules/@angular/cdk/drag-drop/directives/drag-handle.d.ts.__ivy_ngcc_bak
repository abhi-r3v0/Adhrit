/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { BooleanInput } from '@angular/cdk/coercion';
import { ElementRef, InjectionToken, OnDestroy } from '@angular/core';
import { Subject } from 'rxjs';
/**
 * Injection token that can be used to reference instances of `CdkDragHandle`. It serves as
 * alternative token to the actual `CdkDragHandle` class which could cause unnecessary
 * retention of the class and its directive metadata.
 */
export declare const CDK_DRAG_HANDLE: InjectionToken<CdkDragHandle>;
/** Handle that can be used to drag a CdkDrag instance. */
export declare class CdkDragHandle implements OnDestroy {
    element: ElementRef<HTMLElement>;
    /** Closest parent draggable instance. */
    _parentDrag: {} | undefined;
    /** Emits when the state of the handle has changed. */
    _stateChanges: Subject<CdkDragHandle>;
    /** Whether starting to drag through this handle is disabled. */
    get disabled(): boolean;
    set disabled(value: boolean);
    private _disabled;
    constructor(element: ElementRef<HTMLElement>, parentDrag?: any);
    ngOnDestroy(): void;
    static ngAcceptInputType_disabled: BooleanInput;
}
