/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { InjectionToken, ViewContainerRef } from '@angular/core';
/**
 * Injection token used to provide a `CdkTreeNode` to its outlet.
 * Used primarily to avoid circular imports.
 * @docs-private
 */
import * as ɵngcc0 from '@angular/core';
export declare const CDK_TREE_NODE_OUTLET_NODE: InjectionToken<{}>;
/**
 * Outlet for nested CdkNode. Put `[cdkTreeNodeOutlet]` on a tag to place children dataNodes
 * inside the outlet.
 */
export declare class CdkTreeNodeOutlet {
    viewContainer: ViewContainerRef;
    _node?: any;
    constructor(viewContainer: ViewContainerRef, _node?: any);
    static ɵfac: ɵngcc0.ɵɵFactoryDef<CdkTreeNodeOutlet, [null, { optional: true; }]>;
    static ɵdir: ɵngcc0.ɵɵDirectiveDefWithMeta<CdkTreeNodeOutlet, "[cdkTreeNodeOutlet]", never, {}, {}, never>;
}

//# sourceMappingURL=outlet.d.ts.map