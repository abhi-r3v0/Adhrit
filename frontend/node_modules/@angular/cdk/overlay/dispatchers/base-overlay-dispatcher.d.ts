/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { OnDestroy } from '@angular/core';
import { OverlayReference } from '../overlay-reference';
/**
 * Service for dispatching events that land on the body to appropriate overlay ref,
 * if any. It maintains a list of attached overlays to determine best suited overlay based
 * on event target and order of overlay opens.
 */
import * as ɵngcc0 from '@angular/core';
export declare abstract class BaseOverlayDispatcher implements OnDestroy {
    /** Currently attached overlays in the order they were attached. */
    _attachedOverlays: OverlayReference[];
    protected _document: Document;
    protected _isAttached: boolean;
    constructor(document: any);
    ngOnDestroy(): void;
    /** Add a new overlay to the list of attached overlay refs. */
    add(overlayRef: OverlayReference): void;
    /** Remove an overlay from the list of attached overlay refs. */
    remove(overlayRef: OverlayReference): void;
    /** Detaches the global event listener. */
    protected abstract detach(): void;
    static ɵfac: ɵngcc0.ɵɵFactoryDef<BaseOverlayDispatcher, never>;
}

//# sourceMappingURL=base-overlay-dispatcher.d.ts.map