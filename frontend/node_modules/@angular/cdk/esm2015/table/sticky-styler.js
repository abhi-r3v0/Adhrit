/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/**
 * List of all possible directions that can be used for sticky positioning.
 * @docs-private
 */
export const STICKY_DIRECTIONS = ['top', 'bottom', 'left', 'right'];
/**
 * Applies and removes sticky positioning styles to the `CdkTable` rows and columns cells.
 * @docs-private
 */
export class StickyStyler {
    /**
     * @param _isNativeHtmlTable Whether the sticky logic should be based on a table
     *     that uses the native `<table>` element.
     * @param _stickCellCss The CSS class that will be applied to every row/cell that has
     *     sticky positioning applied.
     * @param direction The directionality context of the table (ltr/rtl); affects column positioning
     *     by reversing left/right positions.
     * @param _isBrowser Whether the table is currently being rendered on the server or the client.
     * @param _needsPositionStickyOnElement Whether we need to specify position: sticky on cells
     *     using inline styles. If false, it is assumed that position: sticky is included in
     *     the component stylesheet for _stickCellCss.
     */
    constructor(_isNativeHtmlTable, _stickCellCss, direction, _coalescedStyleScheduler, _isBrowser = true, _needsPositionStickyOnElement = true) {
        this._isNativeHtmlTable = _isNativeHtmlTable;
        this._stickCellCss = _stickCellCss;
        this.direction = direction;
        this._coalescedStyleScheduler = _coalescedStyleScheduler;
        this._isBrowser = _isBrowser;
        this._needsPositionStickyOnElement = _needsPositionStickyOnElement;
    }
    /**
     * Clears the sticky positioning styles from the row and its cells by resetting the `position`
     * style, setting the zIndex to 0, and unsetting each provided sticky direction.
     * @param rows The list of rows that should be cleared from sticking in the provided directions
     * @param stickyDirections The directions that should no longer be set as sticky on the rows.
     */
    clearStickyPositioning(rows, stickyDirections) {
        const elementsToClear = [];
        for (const row of rows) {
            // If the row isn't an element (e.g. if it's an `ng-container`),
            // it won't have inline styles or `children` so we skip it.
            if (row.nodeType !== row.ELEMENT_NODE) {
                continue;
            }
            elementsToClear.push(row);
            for (let i = 0; i < row.children.length; i++) {
                elementsToClear.push(row.children[i]);
            }
        }
        // Coalesce with sticky row/column updates (and potentially other changes like column resize).
        this._coalescedStyleScheduler.schedule(() => {
            for (const element of elementsToClear) {
                this._removeStickyStyle(element, stickyDirections);
            }
        });
    }
    /**
     * Applies sticky left and right positions to the cells of each row according to the sticky
     * states of the rendered column definitions.
     * @param rows The rows that should have its set of cells stuck according to the sticky states.
     * @param stickyStartStates A list of boolean states where each state represents whether the cell
     *     in this index position should be stuck to the start of the row.
     * @param stickyEndStates A list of boolean states where each state represents whether the cell
     *     in this index position should be stuck to the end of the row.
     */
    updateStickyColumns(rows, stickyStartStates, stickyEndStates) {
        if (!rows.length || !this._isBrowser || !(stickyStartStates.some(state => state) ||
            stickyEndStates.some(state => state))) {
            return;
        }
        const firstRow = rows[0];
        const numCells = firstRow.children.length;
        const cellWidths = this._getCellWidths(firstRow);
        const startPositions = this._getStickyStartColumnPositions(cellWidths, stickyStartStates);
        const endPositions = this._getStickyEndColumnPositions(cellWidths, stickyEndStates);
        // Coalesce with sticky row updates (and potentially other changes like column resize).
        this._coalescedStyleScheduler.schedule(() => {
            const isRtl = this.direction === 'rtl';
            const start = isRtl ? 'right' : 'left';
            const end = isRtl ? 'left' : 'right';
            for (const row of rows) {
                for (let i = 0; i < numCells; i++) {
                    const cell = row.children[i];
                    if (stickyStartStates[i]) {
                        this._addStickyStyle(cell, start, startPositions[i]);
                    }
                    if (stickyEndStates[i]) {
                        this._addStickyStyle(cell, end, endPositions[i]);
                    }
                }
            }
        });
    }
    /**
     * Applies sticky positioning to the row's cells if using the native table layout, and to the
     * row itself otherwise.
     * @param rowsToStick The list of rows that should be stuck according to their corresponding
     *     sticky state and to the provided top or bottom position.
     * @param stickyStates A list of boolean states where each state represents whether the row
     *     should be stuck in the particular top or bottom position.
     * @param position The position direction in which the row should be stuck if that row should be
     *     sticky.
     *
     */
    stickRows(rowsToStick, stickyStates, position) {
        // Since we can't measure the rows on the server, we can't stick the rows properly.
        if (!this._isBrowser) {
            return;
        }
        // If positioning the rows to the bottom, reverse their order when evaluating the sticky
        // position such that the last row stuck will be "bottom: 0px" and so on. Note that the
        // sticky states need to be reversed as well.
        const rows = position === 'bottom' ? rowsToStick.slice().reverse() : rowsToStick;
        const states = position === 'bottom' ? stickyStates.slice().reverse() : stickyStates;
        // Measure row heights all at once before adding sticky styles to reduce layout thrashing.
        const stickyHeights = [];
        const elementsToStick = [];
        for (let rowIndex = 0, stickyHeight = 0; rowIndex < rows.length; rowIndex++) {
            stickyHeights[rowIndex] = stickyHeight;
            if (!states[rowIndex]) {
                continue;
            }
            const row = rows[rowIndex];
            elementsToStick[rowIndex] = this._isNativeHtmlTable ?
                Array.from(row.children) : [row];
            if (rowIndex !== rows.length - 1) {
                stickyHeight += row.getBoundingClientRect().height;
            }
        }
        // Coalesce with other sticky row updates (top/bottom), sticky columns updates
        // (and potentially other changes like column resize).
        this._coalescedStyleScheduler.schedule(() => {
            for (let rowIndex = 0; rowIndex < rows.length; rowIndex++) {
                if (!states[rowIndex]) {
                    continue;
                }
                const height = stickyHeights[rowIndex];
                for (const element of elementsToStick[rowIndex]) {
                    this._addStickyStyle(element, position, height);
                }
            }
        });
    }
    /**
     * When using the native table in Safari, sticky footer cells do not stick. The only way to stick
     * footer rows is to apply sticky styling to the tfoot container. This should only be done if
     * all footer rows are sticky. If not all footer rows are sticky, remove sticky positioning from
     * the tfoot element.
     */
    updateStickyFooterContainer(tableElement, stickyStates) {
        if (!this._isNativeHtmlTable) {
            return;
        }
        const tfoot = tableElement.querySelector('tfoot');
        // Coalesce with other sticky updates (and potentially other changes like column resize).
        this._coalescedStyleScheduler.schedule(() => {
            if (stickyStates.some(state => !state)) {
                this._removeStickyStyle(tfoot, ['bottom']);
            }
            else {
                this._addStickyStyle(tfoot, 'bottom', 0);
            }
        });
    }
    /**
     * Removes the sticky style on the element by removing the sticky cell CSS class, re-evaluating
     * the zIndex, removing each of the provided sticky directions, and removing the
     * sticky position if there are no more directions.
     */
    _removeStickyStyle(element, stickyDirections) {
        for (const dir of stickyDirections) {
            element.style[dir] = '';
        }
        // If the element no longer has any more sticky directions, remove sticky positioning and
        // the sticky CSS class.
        // Short-circuit checking element.style[dir] for stickyDirections as they
        // were already removed above.
        const hasDirection = STICKY_DIRECTIONS.some(dir => stickyDirections.indexOf(dir) === -1 && element.style[dir]);
        if (hasDirection) {
            element.style.zIndex = this._getCalculatedZIndex(element);
        }
        else {
            // When not hasDirection, _getCalculatedZIndex will always return ''.
            element.style.zIndex = '';
            if (this._needsPositionStickyOnElement) {
                element.style.position = '';
            }
            element.classList.remove(this._stickCellCss);
        }
    }
    /**
     * Adds the sticky styling to the element by adding the sticky style class, changing position
     * to be sticky (and -webkit-sticky), setting the appropriate zIndex, and adding a sticky
     * direction and value.
     */
    _addStickyStyle(element, dir, dirValue) {
        element.classList.add(this._stickCellCss);
        element.style[dir] = `${dirValue}px`;
        element.style.zIndex = this._getCalculatedZIndex(element);
        if (this._needsPositionStickyOnElement) {
            element.style.cssText += 'position: -webkit-sticky; position: sticky; ';
        }
    }
    /**
     * Calculate what the z-index should be for the element, depending on what directions (top,
     * bottom, left, right) have been set. It should be true that elements with a top direction
     * should have the highest index since these are elements like a table header. If any of those
     * elements are also sticky in another direction, then they should appear above other elements
     * that are only sticky top (e.g. a sticky column on a sticky header). Bottom-sticky elements
     * (e.g. footer rows) should then be next in the ordering such that they are below the header
     * but above any non-sticky elements. Finally, left/right sticky elements (e.g. sticky columns)
     * should minimally increment so that they are above non-sticky elements but below top and bottom
     * elements.
     */
    _getCalculatedZIndex(element) {
        const zIndexIncrements = {
            top: 100,
            bottom: 10,
            left: 1,
            right: 1,
        };
        let zIndex = 0;
        // Use `Iterable` instead of `Array` because TypeScript, as of 3.6.3,
        // loses the array generic type in the `for of`. But we *also* have to use `Array` because
        // typescript won't iterate over an `Iterable` unless you compile with `--downlevelIteration`
        for (const dir of STICKY_DIRECTIONS) {
            if (element.style[dir]) {
                zIndex += zIndexIncrements[dir];
            }
        }
        return zIndex ? `${zIndex}` : '';
    }
    /** Gets the widths for each cell in the provided row. */
    _getCellWidths(row) {
        const cellWidths = [];
        const firstRowCells = row.children;
        for (let i = 0; i < firstRowCells.length; i++) {
            let cell = firstRowCells[i];
            cellWidths.push(cell.getBoundingClientRect().width);
        }
        return cellWidths;
    }
    /**
     * Determines the left and right positions of each sticky column cell, which will be the
     * accumulation of all sticky column cell widths to the left and right, respectively.
     * Non-sticky cells do not need to have a value set since their positions will not be applied.
     */
    _getStickyStartColumnPositions(widths, stickyStates) {
        const positions = [];
        let nextPosition = 0;
        for (let i = 0; i < widths.length; i++) {
            if (stickyStates[i]) {
                positions[i] = nextPosition;
                nextPosition += widths[i];
            }
        }
        return positions;
    }
    /**
     * Determines the left and right positions of each sticky column cell, which will be the
     * accumulation of all sticky column cell widths to the left and right, respectively.
     * Non-sticky cells do not need to have a value set since their positions will not be applied.
     */
    _getStickyEndColumnPositions(widths, stickyStates) {
        const positions = [];
        let nextPosition = 0;
        for (let i = widths.length; i > 0; i--) {
            if (stickyStates[i]) {
                positions[i] = nextPosition;
                nextPosition += widths[i];
            }
        }
        return positions;
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic3RpY2t5LXN0eWxlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvdGFibGUvc3RpY2t5LXN0eWxlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFXSDs7O0dBR0c7QUFDSCxNQUFNLENBQUMsTUFBTSxpQkFBaUIsR0FBc0IsQ0FBQyxLQUFLLEVBQUUsUUFBUSxFQUFFLE1BQU0sRUFBRSxPQUFPLENBQUMsQ0FBQztBQUd2Rjs7O0dBR0c7QUFDSCxNQUFNLE9BQU8sWUFBWTtJQUN2Qjs7Ozs7Ozs7Ozs7T0FXRztJQUNILFlBQW9CLGtCQUEyQixFQUMzQixhQUFxQixFQUN0QixTQUFvQixFQUNuQix3QkFBa0QsRUFDbEQsYUFBYSxJQUFJLEVBQ1IsZ0NBQWdDLElBQUk7UUFMN0MsdUJBQWtCLEdBQWxCLGtCQUFrQixDQUFTO1FBQzNCLGtCQUFhLEdBQWIsYUFBYSxDQUFRO1FBQ3RCLGNBQVMsR0FBVCxTQUFTLENBQVc7UUFDbkIsNkJBQXdCLEdBQXhCLHdCQUF3QixDQUEwQjtRQUNsRCxlQUFVLEdBQVYsVUFBVSxDQUFPO1FBQ1Isa0NBQTZCLEdBQTdCLDZCQUE2QixDQUFPO0lBQUksQ0FBQztJQUV0RTs7Ozs7T0FLRztJQUNILHNCQUFzQixDQUFDLElBQW1CLEVBQUUsZ0JBQW1DO1FBQzdFLE1BQU0sZUFBZSxHQUFrQixFQUFFLENBQUM7UUFDMUMsS0FBSyxNQUFNLEdBQUcsSUFBSSxJQUFJLEVBQUU7WUFDdEIsZ0VBQWdFO1lBQ2hFLDJEQUEyRDtZQUMzRCxJQUFJLEdBQUcsQ0FBQyxRQUFRLEtBQUssR0FBRyxDQUFDLFlBQVksRUFBRTtnQkFDckMsU0FBUzthQUNWO1lBRUQsZUFBZSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQztZQUMxQixLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsR0FBRyxDQUFDLFFBQVEsQ0FBQyxNQUFNLEVB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QVksQ0FBQyxDQUFDLENBQUMsRUFBRTtnQkFDbkIsU0FBUyxDQUFDLENBQUMsQ0FBQyxHQUFHLFlBQVksQ0FBQztnQkFDNUIsWUFBWSxJQUFJLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQzthQUMzQjtTQUNGO1FBRUQsT0FBTyxTQUFTLENBQUM7SUFDbkIsQ0FBQztJQUVEOzs7O09BSUc7SUFDSCw0QkFBNEIsQ0FBQyxNQUFnQixFQUFFLFlBQXVCO1FBQ3BFLE1BQU0sU0FBUyxHQUFhLEVBQUUsQ0FBQztRQUMvQixJQUFJLFlBQVksR0FBRyxDQUFDLENBQUM7UUFFckIsS0FBSyxJQUFJLENBQUMsR0FBRyxNQUFNLENBQUMsTUFBTSxFQUFFLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxFQUFFLEVBQUU7WUFDdEMsSUFBSSxZQUFZLENBQUMsQ0FBQyxDQUFDLEVBQUU7Z0JBQ25CLFNBQVMsQ0FBQyxDQUFDLENBQUMsR0FBRyxZQUFZLENBQUM7Z0JBQzVCLFlBQVksSUFBSSxNQUFNLENBQUMsQ0FBQyxDQUFDLENBQUM7YUFDM0I7U0FDRjtRQUVELE9BQU8sU0FBUyxDQUFDO0lBQ25CLENBQUM7Q0FDRiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG4vKipcbiAqIERpcmVjdGlvbnMgdGhhdCBjYW4gYmUgdXNlZCB3aGVuIHNldHRpbmcgc3RpY2t5IHBvc2l0aW9uaW5nLlxuICogQGRvY3MtcHJpdmF0ZVxuICovXG5pbXBvcnQge0RpcmVjdGlvbn0gZnJvbSAnQGFuZ3VsYXIvY2RrL2JpZGknO1xuaW1wb3J0IHtfQ29hbGVzY2VkU3R5bGVTY2hlZHVsZXJ9IGZyb20gJy4vY29hbGVzY2VkLXN0eWxlLXNjaGVkdWxlcic7XG5cbmV4cG9ydCB0eXBlIFN0aWNreURpcmVjdGlvbiA9ICd0b3AnIHwgJ2JvdHRvbScgfCAnbGVmdCcgfCAncmlnaHQnO1xuXG4vKipcbiAqIExpc3Qgb2YgYWxsIHBvc3NpYmxlIGRpcmVjdGlvbnMgdGhhdCBjYW4gYmUgdXNlZCBmb3Igc3RpY2t5IHBvc2l0aW9uaW5nLlxuICogQGRvY3MtcHJpdmF0ZVxuICovXG5leHBvcnQgY29uc3QgU1RJQ0tZX0RJUkVDVElPTlM6IFN0aWNreURpcmVjdGlvbltdID0gWyd0b3AnLCAnYm90dG9tJywgJ2xlZnQnLCAncmlnaHQnXTtcblxuXG4vKipcbiAqIEFwcGxpZXMgYW5kIHJlbW92ZXMgc3RpY2t5IHBvc2l0aW9uaW5nIHN0eWxlcyB0byB0aGUgYENka1RhYmxlYCByb3dzIGFuZCBjb2x1bW5zIGNlbGxzLlxuICogQGRvY3MtcHJpdmF0ZVxuICovXG5leHBvcnQgY2xhc3MgU3RpY2t5U3R5bGVyIHtcbiAgLyoqXG4gICAqIEBwYXJhbSBfaXNOYXRpdmVIdG1sVGFibGUgV2hldGhlciB0aGUgc3RpY2t5IGxvZ2ljIHNob3VsZCBiZSBiYXNlZCBvbiBhIHRhYmxlXG4gICAqICAgICB0aGF0IHVzZXMgdGhlIG5hdGl2ZSBgPHRhYmxlPmAgZWxlbWVudC5cbiAgICogQHBhcmFtIF9zdGlja0NlbGxDc3MgVGhlIENTUyBjbGFzcyB0aGF0IHdpbGwgYmUgYXBwbGllZCB0byBldmVyeSByb3cvY2VsbCB0aGF0IGhhc1xuICAgKiAgICAgc3RpY2t5IHBvc2l0aW9uaW5nIGFwcGxpZWQuXG4gICAqIEBwYXJhbSBkaXJlY3Rpb24gVGhlIGRpcmVjdGlvbmFsaXR5IGNvbnRleHQgb2YgdGhlIHRhYmxlIChsdHIvcnRsKTsgYWZmZWN0cyBjb2x1bW4gcG9zaXRpb25pbmdcbiAgICogICAgIGJ5IHJldmVyc2luZyBsZWZ0L3JpZ2h0IHBvc2l0aW9ucy5cbiAgICogQHBhcmFtIF9pc0Jyb3dzZXIgV2hldGhlciB0aGUgdGFibGUgaXMgY3VycmVudGx5IGJlaW5nIHJlbmRlcmVkIG9uIHRoZSBzZXJ2ZXIgb3IgdGhlIGNsaWVudC5cbiAgICogQHBhcmFtIF9uZWVkc1Bvc2l0aW9uU3RpY2t5T25FbGVtZW50IFdoZXRoZXIgd2UgbmVlZCB0byBzcGVjaWZ5IHBvc2l0aW9uOiBzdGlja3kgb24gY2VsbHNcbiAgICogICAgIHVzaW5nIGlubGluZSBzdHlsZXMuIElmIGZhbHNlLCBpdCBpcyBhc3N1bWVkIHRoYXQgcG9zaXRpb246IHN0aWNreSBpcyBpbmNsdWRlZCBpblxuICAgKiAgICAgdGhlIGNvbXBvbmVudCBzdHlsZXNoZWV0IGZvciBfc3RpY2tDZWxsQ3NzLlxuICAgKi9cbiAgY29uc3RydWN0b3IocHJpdmF0ZSBfaXNOYXRpdmVIdG1sVGFibGU6IGJvb2xlYW4sXG4gICAgICAgICAgICAgIHByaXZhdGUgX3N0aWNrQ2VsbENzczogc3RyaW5nLFxuICAgICAgICAgICAgICBwdWJsaWMgZGlyZWN0aW9uOiBEaXJlY3Rpb24sXG4gICAgICAgICAgICAgIHByaXZhdGUgX2NvYWxlc2NlZFN0eWxlU2NoZWR1bGVyOiBfQ29hbGVzY2VkU3R5bGVTY2hlZHVsZXIsXG4gICAgICAgICAgICAgIHByaXZhdGUgX2lzQnJvd3NlciA9IHRydWUsXG4gICAgICAgICAgICAgIHByaXZhdGUgcmVhZG9ubHkgX25lZWRzUG9zaXRpb25TdGlja3lPbkVsZW1lbnQgPSB0cnVlKSB7IH1cblxuICAvKipcbiAgICogQ2xlYXJzIHRoZSBzdGlja3kgcG9zaXRpb25pbmcgc3R5bGVzIGZyb20gdGhlIHJvdyBhbmQgaXRzIGNlbGxzIGJ5IHJlc2V0dGluZyB0aGUgYHBvc2l0aW9uYFxuICAgKiBzdHlsZSwgc2V0dGluZyB0aGUgekluZGV4IHRvIDAsIGFuZCB1bnNldHRpbmcgZWFjaCBwcm92aWRlZCBzdGlja3kgZGlyZWN0aW9uLlxuICAgKiBAcGFyYW0gcm93cyBUaGUgbGlzdCBvZiByb3dzIHRoYXQgc2hvdWxkIGJlIGNsZWFyZWQgZnJvbSBzdGlja2luZyBpbiB0aGUgcHJvdmlkZWQgZGlyZWN0aW9uc1xuICAgKiBAcGFyYW0gc3RpY2t5RGlyZWN0aW9ucyBUaGUgZGlyZWN0aW9ucyB0aGF0IHNob3VsZCBubyBsb25nZXIgYmUgc2V0IGFzIHN0aWNreSBvbiB0aGUgcm93cy5cbiAgICovXG4gIGNsZWFyU3RpY2t5UG9zaXRpb25pbmcocm93czogSFRNTEVsZW1lbnRbXSwgc3RpY2t5RGlyZWN0aW9uczogU3RpY2t5RGlyZWN0aW9uW10pIHtcbiAgICBjb25zdCBlbGVtZW50c1RvQ2xlYXI6IEhUTUxFbGVtZW50W10gPSBbXTtcbiAgICBmb3IgKGNvbnN0IHJvdyBvZiByb3dzKSB7XG4gICAgICAvLyBJZiB0aGUgcm93IGlzbid0IGFuIGVsZW1lbnQgKGUuZy4gaWYgaXQncyBhbiBgbmctY29udGFpbmVyYCksXG4gICAgICAvLyBpdCB3b24ndCBoYXZlIGlubGluZSBzdHlsZXMgb3IgYGNoaWxkcmVuYCBzbyB3ZSBza2lwIGl0LlxuICAgICAgaWYgKHJvdy5ub2RlVHlwZSAhPT0gcm93LkVMRU1FTlRfTk9ERSkge1xuICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cblxuICAgICAgZWxlbWVudHNUb0NsZWFyLnB1c2gocm93KTtcbiAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgcm93LmNoaWxkcmVuLmxlbmd0aDsgaSsrKSB7XG4gICAgICAgIGVsZW1lbnRzVG9DbGVhci5wdXNoKHJvdy5jaGlsZHJlbltpXSBhcyBIVE1MRWxlbWVudCk7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gQ29hbGVzY2Ugd2l0aCBzdGlja3kgcm93L2NvbHVtbiB1cGRhdGVzIChhbmQgcG90ZW50aWFsbHkgb3RoZXIgY2hhbmdlcyBsaWtlIGNvbHVtbiByZXNpemUpLlxuICAgIHRoaXMuX2NvYWxlc2NlZFN0eWxlU2NoZWR1bGVyLnNjaGVkdWxlKCgpID0+IHtcbiAgICAgIGZvciAoY29uc3QgZWxlbWVudCBvZiBlbGVtZW50c1RvQ2xlYXIpIHtcbiAgICAgICAgdGhpcy5fcmVtb3ZlU3RpY2t5U3R5bGUoZWxlbWVudCwgc3RpY2t5RGlyZWN0aW9ucyk7XG4gICAgICB9XG4gICAgfSk7XG4gIH1cblxuICAvKipcbiAgICogQXBwbGllcyBzdGlja3kgbGVmdCBhbmQgcmlnaHQgcG9zaXRpb25zIHRvIHRoZSBjZWxscyBvZiBlYWNoIHJvdyBhY2NvcmRpbmcgdG8gdGhlIHN0aWNreVxuICAgKiBzdGF0ZXMgb2YgdGhlIHJlbmRlcmVkIGNvbHVtbiBkZWZpbml0aW9ucy5cbiAgICogQHBhcmFtIHJvd3MgVGhlIHJvd3MgdGhhdCBzaG91bGQgaGF2ZSBpdHMgc2V0IG9mIGNlbGxzIHN0dWNrIGFjY29yZGluZyB0byB0aGUgc3RpY2t5IHN0YXRlcy5cbiAgICogQHBhcmFtIHN0aWNreVN0YXJ0U3RhdGVzIEEgbGlzdCBvZiBib29sZWFuIHN0YXRlcyB3aGVyZSBlYWNoIHN0YXRlIHJlcHJlc2VudHMgd2hldGhlciB0aGUgY2VsbFxuICAgKiAgICAgaW4gdGhpcyBpbmRleCBwb3NpdGlvbiBzaG91bGQgYmUgc3R1Y2sgdG8gdGhlIHN0YXJ0IG9mIHRoZSByb3cuXG4gICAqIEBwYXJhbSBzdGlja3lFbmRTdGF0ZXMgQSBsaXN0IG9mIGJvb2xlYW4gc3RhdGVzIHdoZXJlIGVhY2ggc3RhdGUgcmVwcmVzZW50cyB3aGV0aGVyIHRoZSBjZWxsXG4gICAqICAgICBpbiB0aGlzIGluZGV4IHBvc2l0aW9uIHNob3VsZCBiZSBzdHVjayB0byB0aGUgZW5kIG9mIHRoZSByb3cuXG4gICAqL1xuICB1cGRhdGVTdGlja3lDb2x1bW5zKFxuICAgICAgcm93czogSFRNTEVsZW1lbnRbXSwgc3RpY2t5U3RhcnRTdGF0ZXM6IGJvb2xlYW5bXSwgc3RpY2t5RW5kU3RhdGVzOiBib29sZWFuW10pIHtcbiAgICBpZiAoIXJvd3MubGVuZ3RoIHx8ICF0aGlzLl9pc0Jyb3dzZXIgfHwgIShzdGlja3lTdGFydFN0YXRlcy5zb21lKHN0YXRlID0+IHN0YXRlKSB8fFxuICAgICAgICBzdGlja3lFbmRTdGF0ZXMuc29tZShzdGF0ZSA9PiBzdGF0ZSkpKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3QgZmlyc3RSb3cgPSByb3dzWzBdO1xuICAgIGNvbnN0IG51bUNlbGxzID0gZmlyc3RSb3cuY2hpbGRyZW4ubGVuZ3RoO1xuICAgIGNvbnN0IGNlbGxXaWR0aHM6IG51bWJlcltdID0gdGhpcy5fZ2V0Q2VsbFdpZHRocyhmaXJzdFJvdyk7XG5cbiAgICBjb25zdCBzdGFydFBvc2l0aW9ucyA9IHRoaXMuX2dldFN0aWNreVN0YXJ0Q29sdW1uUG9zaXRpb25zKGNlbGxXaWR0aHMsIHN0aWNreVN0YXJ0U3RhdGVzKTtcbiAgICBjb25zdCBlbmRQb3NpdGlvbnMgPSB0aGlzLl9nZXRTdGlja3lFbmRDb2x1bW5Qb3NpdGlvbnMoY2VsbFdpZHRocywgc3RpY2t5RW5kU3RhdGVzKTtcblxuICAgIC8vIENvYWxlc2NlIHdpdGggc3RpY2t5IHJvdyB1cGRhdGVzIChhbmQgcG90ZW50aWFsbHkgb3RoZXIgY2hhbmdlcyBsaWtlIGNvbHVtbiByZXNpemUpLlxuICAgIHRoaXMuX2NvYWxlc2NlZFN0eWxlU2NoZWR1bGVyLnNjaGVkdWxlKCgpID0+IHtcbiAgICAgIGNvbnN0IGlzUnRsID0gdGhpcy5kaXJlY3Rpb24gPT09ICdydGwnO1xuICAgICAgY29uc3Qgc3RhcnQgPSBpc1J0bCA/ICdyaWdodCcgOiAnbGVmdCc7XG4gICAgICBjb25zdCBlbmQgPSBpc1J0bCA/ICdsZWZ0JyA6ICdyaWdodCc7XG5cbiAgICAgIGZvciAoY29uc3Qgcm93IG9mIHJvd3MpIHtcbiAgICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBudW1DZWxsczsgaSsrKSB7XG4gICAgICAgICAgY29uc3QgY2VsbCA9IHJvdy5jaGlsZHJlbltpXSBhcyBIVE1MRWxlbWVudDtcbiAgICAgICAgICBpZiAoc3RpY2t5U3RhcnRTdGF0ZXNbaV0pIHtcbiAgICAgICAgICAgIHRoaXMuX2FkZFN0aWNreVN0eWxlKGNlbGwsIHN0YXJ0LCBzdGFydFBvc2l0aW9uc1tpXSk7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgaWYgKHN0aWNreUVuZFN0YXRlc1tpXSkge1xuICAgICAgICAgICAgdGhpcy5fYWRkU3RpY2t5U3R5bGUoY2VsbCwgZW5kLCBlbmRQb3NpdGlvbnNbaV0pO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH0pO1xuICB9XG5cbiAgLyoqXG4gICAqIEFwcGxpZXMgc3RpY2t5IHBvc2l0aW9uaW5nIHRvIHRoZSByb3cncyBjZWxscyBpZiB1c2luZyB0aGUgbmF0aXZlIHRhYmxlIGxheW91dCwgYW5kIHRvIHRoZVxuICAgKiByb3cgaXRzZWxmIG90aGVyd2lzZS5cbiAgICogQHBhcmFtIHJvd3NUb1N0aWNrIFRoZSBsaXN0IG9mIHJvd3MgdGhhdCBzaG91bGQgYmUgc3R1Y2sgYWNjb3JkaW5nIHRvIHRoZWlyIGNvcnJlc3BvbmRpbmdcbiAgICogICAgIHN0aWNreSBzdGF0ZSBhbmQgdG8gdGhlIHByb3ZpZGVkIHRvcCBvciBib3R0b20gcG9zaXRpb24uXG4gICAqIEBwYXJhbSBzdGlja3lTdGF0ZXMgQSBsaXN0IG9mIGJvb2xlYW4gc3RhdGVzIHdoZXJlIGVhY2ggc3RhdGUgcmVwcmVzZW50cyB3aGV0aGVyIHRoZSByb3dcbiAgICogICAgIHNob3VsZCBiZSBzdHVjayBpbiB0aGUgcGFydGljdWxhciB0b3Agb3IgYm90dG9tIHBvc2l0aW9uLlxuICAgKiBAcGFyYW0gcG9zaXRpb24gVGhlIHBvc2l0aW9uIGRpcmVjdGlvbiBpbiB3aGljaCB0aGUgcm93IHNob3VsZCBiZSBzdHVjayBpZiB0aGF0IHJvdyBzaG91bGQgYmVcbiAgICogICAgIHN0aWNreS5cbiAgICpcbiAgICovXG4gIHN0aWNrUm93cyhyb3dzVG9TdGljazogSFRNTEVsZW1lbnRbXSwgc3RpY2t5U3RhdGVzOiBib29sZWFuW10sIHBvc2l0aW9uOiAndG9wJyB8ICdib3R0b20nKSB7XG4gICAgLy8gU2luY2Ugd2UgY2FuJ3QgbWVhc3VyZSB0aGUgcm93cyBvbiB0aGUgc2VydmVyLCB3ZSBjYW4ndCBzdGljayB0aGUgcm93cyBwcm9wZXJseS5cbiAgICBpZiAoIXRoaXMuX2lzQnJvd3Nlcikge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIC8vIElmIHBvc2l0aW9uaW5nIHRoZSByb3dzIHRvIHRoZSBib3R0b20sIHJldmVyc2UgdGhlaXIgb3JkZXIgd2hlbiBldmFsdWF0aW5nIHRoZSBzdGlja3lcbiAgICAvLyBwb3NpdGlvbiBzdWNoIHRoYXQgdGhlIGxhc3Qgcm93IHN0dWNrIHdpbGwgYmUgXCJib3R0b206IDBweFwiIGFuZCBzbyBvbi4gTm90ZSB0aGF0IHRoZVxuICAgIC8vIHN0aWNreSBzdGF0ZXMgbmVlZCB0byBiZSByZXZlcnNlZCBhcyB3ZWxsLlxuICAgIGNvbnN0IHJvd3MgPSBwb3NpdGlvbiA9PT0gJ2JvdHRvbScgPyByb3dzVG9TdGljay5zbGljZSgpLnJldmVyc2UoKSA6IHJvd3NUb1N0aWNrO1xuICAgIGNvbnN0IHN0YXRlcyA9IHBvc2l0aW9uID09PSAnYm90dG9tJyA/IHN0aWNreVN0YXRlcy5zbGljZSgpLnJldmVyc2UoKSA6IHN0aWNreVN0YXRlcztcblxuICAgIC8vIE1lYXN1cmUgcm93IGhlaWdodHMgYWxsIGF0IG9uY2UgYmVmb3JlIGFkZGluZyBzdGlja3kgc3R5bGVzIHRvIHJlZHVjZSBsYXlvdXQgdGhyYXNoaW5nLlxuICAgIGNvbnN0IHN0aWNreUhlaWdodHM6IG51bWJlcltdID0gW107XG4gICAgY29uc3QgZWxlbWVudHNUb1N0aWNrOiBIVE1MRWxlbWVudFtdW10gPSBbXTtcbiAgICBmb3IgKGxldCByb3dJbmRleCA9IDAsIHN0aWNreUhlaWdodCA9IDA7IHJvd0luZGV4IDwgcm93cy5sZW5ndGg7IHJvd0luZGV4KyspIHtcbiAgICAgIHN0aWNreUhlaWdodHNbcm93SW5kZXhdID0gc3RpY2t5SGVpZ2h0O1xuXG4gICAgICBpZiAoIXN0YXRlc1tyb3dJbmRleF0pIHtcbiAgICAgICAgY29udGludWU7XG4gICAgICB9XG5cbiAgICAgIGNvbnN0IHJvdyA9IHJvd3Nbcm93SW5kZXhdO1xuICAgICAgZWxlbWVudHNUb1N0aWNrW3Jvd0luZGV4XSA9IHRoaXMuX2lzTmF0aXZlSHRtbFRhYmxlID9cbiAgICAgICAgICBBcnJheS5mcm9tKHJvdy5jaGlsZHJlbikgYXMgSFRNTEVsZW1lbnRbXSA6IFtyb3ddO1xuXG4gICAgICBpZiAocm93SW5kZXggIT09IHJvd3MubGVuZ3RoIC0gMSkge1xuICAgICAgICBzdGlja3lIZWlnaHQgKz0gcm93LmdldEJvdW5kaW5nQ2xpZW50UmVjdCgpLmhlaWdodDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyBDb2FsZXNjZSB3aXRoIG90aGVyIHN0aWNreSByb3cgdXBkYXRlcyAodG9wL2JvdHRvbSksIHN0aWNreSBjb2x1bW5zIHVwZGF0ZXNcbiAgICAvLyAoYW5kIHBvdGVudGlhbGx5IG90aGVyIGNoYW5nZXMgbGlrZSBjb2x1bW4gcmVzaXplKS5cbiAgICB0aGlzLl9jb2FsZXNjZWRTdHlsZVNjaGVkdWxlci5zY2hlZHVsZSgoKSA9PiB7XG4gICAgICBmb3IgKGxldCByb3dJbmRleCA9IDA7IHJvd0luZGV4IDwgcm93cy5sZW5ndGg7IHJvd0luZGV4KyspIHtcbiAgICAgICAgaWYgKCFzdGF0ZXNbcm93SW5kZXhdKSB7XG4gICAgICAgICAgY29udGludWU7XG4gICAgICAgIH1cblxuICAgICAgICBjb25zdCBoZWlnaHQgPSBzdGlja3lIZWlnaHRzW3Jvd0luZGV4XTtcbiAgICAgICAgZm9yIChjb25zdCBlbGVtZW50IG9mIGVsZW1lbnRzVG9TdGlja1tyb3dJbmRleF0pIHtcbiAgICAgICAgICB0aGlzLl9hZGRTdGlja3lTdHlsZShlbGVtZW50LCBwb3NpdGlvbiwgaGVpZ2h0KTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH0pO1xuICB9XG5cbiAgLyoqXG4gICAqIFdoZW4gdXNpbmcgdGhlIG5hdGl2ZSB0YWJsZSBpbiBTYWZhcmksIHN0aWNreSBmb290ZXIgY2VsbHMgZG8gbm90IHN0aWNrLiBUaGUgb25seSB3YXkgdG8gc3RpY2tcbiAgICogZm9vdGVyIHJvd3MgaXMgdG8gYXBwbHkgc3RpY2t5IHN0eWxpbmcgdG8gdGhlIHRmb290IGNvbnRhaW5lci4gVGhpcyBzaG91bGQgb25seSBiZSBkb25lIGlmXG4gICAqIGFsbCBmb290ZXIgcm93cyBhcmUgc3RpY2t5LiBJZiBub3QgYWxsIGZvb3RlciByb3dzIGFyZSBzdGlja3ksIHJlbW92ZSBzdGlja3kgcG9zaXRpb25pbmcgZnJvbVxuICAgKiB0aGUgdGZvb3QgZWxlbWVudC5cbiAgICovXG4gIHVwZGF0ZVN0aWNreUZvb3RlckNvbnRhaW5lcih0YWJsZUVsZW1lbnQ6IEVsZW1lbnQsIHN0aWNreVN0YXRlczogYm9vbGVhbltdKSB7XG4gICAgaWYgKCF0aGlzLl9pc05hdGl2ZUh0bWxUYWJsZSkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIGNvbnN0IHRmb290ID0gdGFibGVFbGVtZW50LnF1ZXJ5U2VsZWN0b3IoJ3Rmb290JykhO1xuXG4gICAgLy8gQ29hbGVzY2Ugd2l0aCBvdGhlciBzdGlja3kgdXBkYXRlcyAoYW5kIHBvdGVudGlhbGx5IG90aGVyIGNoYW5nZXMgbGlrZSBjb2x1bW4gcmVzaXplKS5cbiAgICB0aGlzLl9jb2FsZXNjZWRTdHlsZVNjaGVkdWxlci5zY2hlZHVsZSgoKSA9PiB7XG4gICAgICBpZiAoc3RpY2t5U3RhdGVzLnNvbWUoc3RhdGUgPT4gIXN0YXRlKSkge1xuICAgICAgICB0aGlzLl9yZW1vdmVTdGlja3lTdHlsZSh0Zm9vdCwgWydib3R0b20nXSk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICB0aGlzLl9hZGRTdGlja3lTdHlsZSh0Zm9vdCwgJ2JvdHRvbScsIDApO1xuICAgICAgfVxuICAgIH0pO1xuICB9XG5cbiAgLyoqXG4gICAqIFJlbW92ZXMgdGhlIHN0aWNreSBzdHlsZSBvbiB0aGUgZWxlbWVudCBieSByZW1vdmluZyB0aGUgc3RpY2t5IGNlbGwgQ1NTIGNsYXNzLCByZS1ldmFsdWF0aW5nXG4gICAqIHRoZSB6SW5kZXgsIHJlbW92aW5nIGVhY2ggb2YgdGhlIHByb3ZpZGVkIHN0aWNreSBkaXJlY3Rpb25zLCBhbmQgcmVtb3ZpbmcgdGhlXG4gICAqIHN0aWNreSBwb3NpdGlvbiBpZiB0aGVyZSBhcmUgbm8gbW9yZSBkaXJlY3Rpb25zLlxuICAgKi9cbiAgX3JlbW92ZVN0aWNreVN0eWxlKGVsZW1lbnQ6IEhUTUxFbGVtZW50LCBzdGlja3lEaXJlY3Rpb25zOiBTdGlja3lEaXJlY3Rpb25bXSkge1xuICAgIGZvciAoY29uc3QgZGlyIG9mIHN0aWNreURpcmVjdGlvbnMpIHtcbiAgICAgIGVsZW1lbnQuc3R5bGVbZGlyXSA9ICcnO1xuICAgIH1cblxuICAgIC8vIElmIHRoZSBlbGVtZW50IG5vIGxvbmdlciBoYXMgYW55IG1vcmUgc3RpY2t5IGRpcmVjdGlvbnMsIHJlbW92ZSBzdGlja3kgcG9zaXRpb25pbmcgYW5kXG4gICAgLy8gdGhlIHN0aWNreSBDU1MgY2xhc3MuXG4gICAgLy8gU2hvcnQtY2lyY3VpdCBjaGVja2luZyBlbGVtZW50LnN0eWxlW2Rpcl0gZm9yIHN0aWNreURpcmVjdGlvbnMgYXMgdGhleVxuICAgIC8vIHdlcmUgYWxyZWFkeSByZW1vdmVkIGFib3ZlLlxuICAgIGNvbnN0IGhhc0RpcmVjdGlvbiA9IFNUSUNLWV9ESVJFQ1RJT05TLnNvbWUoZGlyID0+XG4gICAgICAgIHN0aWNreURpcmVjdGlvbnMuaW5kZXhPZihkaXIpID09PSAtMSAmJiBlbGVtZW50LnN0eWxlW2Rpcl0pO1xuICAgIGlmIChoYXNEaXJlY3Rpb24pIHtcbiAgICAgIGVsZW1lbnQuc3R5bGUuekluZGV4ID0gdGhpcy5fZ2V0Q2FsY3VsYXRlZFpJbmRleChlbGVtZW50KTtcbiAgICB9IGVsc2Uge1xuICAgICAgLy8gV2hlbiBub3QgaGFzRGlyZWN0aW9uLCBfZ2V0Q2FsY3VsYXRlZFpJbmRleCB3aWxsIGFsd2F5cyByZXR1cm4gJycuXG4gICAgICBlbGVtZW50LnN0eWxlLnpJbmRleCA9ICcnO1xuICAgICAgaWYgKHRoaXMuX25lZWRzUG9zaXRpb25TdGlja3lPbkVsZW1lbnQpIHtcbiAgICAgICAgZWxlbWVudC5zdHlsZS5wb3NpdGlvbiA9ICcnO1xuICAgICAgfVxuICAgICAgZWxlbWVudC5jbGFzc0xpc3QucmVtb3ZlKHRoaXMuX3N0aWNrQ2VsbENzcyk7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIEFkZHMgdGhlIHN0aWNreSBzdHlsaW5nIHRvIHRoZSBlbGVtZW50IGJ5IGFkZGluZyB0aGUgc3RpY2t5IHN0eWxlIGNsYXNzLCBjaGFuZ2luZyBwb3NpdGlvblxuICAgKiB0byBiZSBzdGlja3kgKGFuZCAtd2Via2l0LXN0aWNreSksIHNldHRpbmcgdGhlIGFwcHJvcHJpYXRlIHpJbmRleCwgYW5kIGFkZGluZyBhIHN0aWNreVxuICAgKiBkaXJlY3Rpb24gYW5kIHZhbHVlLlxuICAgKi9cbiAgX2FkZFN0aWNreVN0eWxlKGVsZW1lbnQ6IEhUTUxFbGVtZW50LCBkaXI6IFN0aWNreURpcmVjdGlvbiwgZGlyVmFsdWU6IG51bWJlcikge1xuICAgIGVsZW1lbnQuY2xhc3NMaXN0LmFkZCh0aGlzLl9zdGlja0NlbGxDc3MpO1xuICAgIGVsZW1lbnQuc3R5bGVbZGlyXSA9IGAke2RpclZhbHVlfXB4YDtcbiAgICBlbGVtZW50LnN0eWxlLnpJbmRleCA9IHRoaXMuX2dldENhbGN1bGF0ZWRaSW5kZXgoZWxlbWVudCk7XG4gICAgaWYgKHRoaXMuX25lZWRzUG9zaXRpb25TdGlja3lPbkVsZW1lbnQpIHtcbiAgICAgIGVsZW1lbnQuc3R5bGUuY3NzVGV4dCArPSAncG9zaXRpb246IC13ZWJraXQtc3RpY2t5OyBwb3NpdGlvbjogc3RpY2t5OyAnO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBDYWxjdWxhdGUgd2hhdCB0aGUgei1pbmRleCBzaG91bGQgYmUgZm9yIHRoZSBlbGVtZW50LCBkZXBlbmRpbmcgb24gd2hhdCBkaXJlY3Rpb25zICh0b3AsXG4gICAqIGJvdHRvbSwgbGVmdCwgcmlnaHQpIGhhdmUgYmVlbiBzZXQuIEl0IHNob3VsZCBiZSB0cnVlIHRoYXQgZWxlbWVudHMgd2l0aCBhIHRvcCBkaXJlY3Rpb25cbiAgICogc2hvdWxkIGhhdmUgdGhlIGhpZ2hlc3QgaW5kZXggc2luY2UgdGhlc2UgYXJlIGVsZW1lbnRzIGxpa2UgYSB0YWJsZSBoZWFkZXIuIElmIGFueSBvZiB0aG9zZVxuICAgKiBlbGVtZW50cyBhcmUgYWxzbyBzdGlja3kgaW4gYW5vdGhlciBkaXJlY3Rpb24sIHRoZW4gdGhleSBzaG91bGQgYXBwZWFyIGFib3ZlIG90aGVyIGVsZW1lbnRzXG4gICAqIHRoYXQgYXJlIG9ubHkgc3RpY2t5IHRvcCAoZS5nLiBhIHN0aWNreSBjb2x1bW4gb24gYSBzdGlja3kgaGVhZGVyKS4gQm90dG9tLXN0aWNreSBlbGVtZW50c1xuICAgKiAoZS5nLiBmb290ZXIgcm93cykgc2hvdWxkIHRoZW4gYmUgbmV4dCBpbiB0aGUgb3JkZXJpbmcgc3VjaCB0aGF0IHRoZXkgYXJlIGJlbG93IHRoZSBoZWFkZXJcbiAgICogYnV0IGFib3ZlIGFueSBub24tc3RpY2t5IGVsZW1lbnRzLiBGaW5hbGx5LCBsZWZ0L3JpZ2h0IHN0aWNreSBlbGVtZW50cyAoZS5nLiBzdGlja3kgY29sdW1ucylcbiAgICogc2hvdWxkIG1pbmltYWxseSBpbmNyZW1lbnQgc28gdGhhdCB0aGV5IGFyZSBhYm92ZSBub24tc3RpY2t5IGVsZW1lbnRzIGJ1dCBiZWxvdyB0b3AgYW5kIGJvdHRvbVxuICAgKiBlbGVtZW50cy5cbiAgICovXG4gIF9nZXRDYWxjdWxhdGVkWkluZGV4KGVsZW1lbnQ6IEhUTUxFbGVtZW50KTogc3RyaW5nIHtcbiAgICBjb25zdCB6SW5kZXhJbmNyZW1lbnRzID0ge1xuICAgICAgdG9wOiAxMDAsXG4gICAgICBib3R0b206IDEwLFxuICAgICAgbGVmdDogMSxcbiAgICAgIHJpZ2h0OiAxLFxuICAgIH07XG5cbiAgICBsZXQgekluZGV4ID0gMDtcbiAgICAvLyBVc2UgYEl0ZXJhYmxlYCBpbnN0ZWFkIG9mIGBBcnJheWAgYmVjYXVzZSBUeXBlU2NyaXB0LCBhcyBvZiAzLjYuMyxcbiAgICAvLyBsb3NlcyB0aGUgYXJyYXkgZ2VuZXJpYyB0eXBlIGluIHRoZSBgZm9yIG9mYC4gQnV0IHdlICphbHNvKiBoYXZlIHRvIHVzZSBgQXJyYXlgIGJlY2F1c2VcbiAgICAvLyB0eXBlc2NyaXB0IHdvbid0IGl0ZXJhdGUgb3ZlciBhbiBgSXRlcmFibGVgIHVubGVzcyB5b3UgY29tcGlsZSB3aXRoIGAtLWRvd25sZXZlbEl0ZXJhdGlvbmBcbiAgICBmb3IgKGNvbnN0IGRpciBvZiBTVElDS1lfRElSRUNUSU9OUyBhcyBJdGVyYWJsZTxTdGlja3lEaXJlY3Rpb24+ICYgU3RpY2t5RGlyZWN0aW9uW10pIHtcbiAgICAgIGlmIChlbGVtZW50LnN0eWxlW2Rpcl0pIHtcbiAgICAgICAgekluZGV4ICs9IHpJbmRleEluY3JlbWVudHNbZGlyXTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gekluZGV4ID8gYCR7ekluZGV4fWAgOiAnJztcbiAgfVxuXG4gIC8qKiBHZXRzIHRoZSB3aWR0aHMgZm9yIGVhY2ggY2VsbCBpbiB0aGUgcHJvdmlkZWQgcm93LiAqL1xuICBfZ2V0Q2VsbFdpZHRocyhyb3c6IEhUTUxFbGVtZW50KTogbnVtYmVyW10ge1xuICAgIGNvbnN0IGNlbGxXaWR0aHM6IG51bWJlcltdID0gW107XG4gICAgY29uc3QgZmlyc3RSb3dDZWxscyA9IHJvdy5jaGlsZHJlbjtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IGZpcnN0Um93Q2VsbHMubGVuZ3RoOyBpKyspIHtcbiAgICAgIGxldCBjZWxsOiBIVE1MRWxlbWVudCA9IGZpcnN0Um93Q2VsbHNbaV0gYXMgSFRNTEVsZW1lbnQ7XG4gICAgICBjZWxsV2lkdGhzLnB1c2goY2VsbC5nZXRCb3VuZGluZ0NsaWVudFJlY3QoKS53aWR0aCk7XG4gICAgfVxuXG4gICAgcmV0dXJuIGNlbGxXaWR0aHM7XG4gIH1cblxuICAvKipcbiAgICogRGV0ZXJtaW5lcyB0aGUgbGVmdCBhbmQgcmlnaHQgcG9zaXRpb25zIG9mIGVhY2ggc3RpY2t5IGNvbHVtbiBjZWxsLCB3aGljaCB3aWxsIGJlIHRoZVxuICAgKiBhY2N1bXVsYXRpb24gb2YgYWxsIHN0aWNreSBjb2x1bW4gY2VsbCB3aWR0aHMgdG8gdGhlIGxlZnQgYW5kIHJpZ2h0LCByZXNwZWN0aXZlbHkuXG4gICAqIE5vbi1zdGlja3kgY2VsbHMgZG8gbm90IG5lZWQgdG8gaGF2ZSBhIHZhbHVlIHNldCBzaW5jZSB0aGVpciBwb3NpdGlvbnMgd2lsbCBub3QgYmUgYXBwbGllZC5cbiAgICovXG4gIF9nZXRTdGlja3lTdGFydENvbHVtblBvc2l0aW9ucyh3aWR0aHM6IG51bWJlcltdLCBzdGlja3lTdGF0ZXM6IGJvb2xlYW5bXSk6IG51bWJlcltdIHtcbiAgICBjb25zdCBwb3NpdGlvbnM6IG51bWJlcltdID0gW107XG4gICAgbGV0IG5leHRQb3NpdGlvbiA9IDA7XG5cbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IHdpZHRocy5sZW5ndGg7IGkrKykge1xuICAgICAgaWYgKHN0aWNreVN0YXRlc1tpXSkge1xuICAgICAgICBwb3NpdGlvbnNbaV0gPSBuZXh0UG9zaXRpb247XG4gICAgICAgIG5leHRQb3NpdGlvbiArPSB3aWR0aHNbaV07XG4gICAgICB9XG4gICAgfVxuXG4gICAgcmV0dXJuIHBvc2l0aW9ucztcbiAgfVxuXG4gIC8qKlxuICAgKiBEZXRlcm1pbmVzIHRoZSBsZWZ0IGFuZCByaWdodCBwb3NpdGlvbnMgb2YgZWFjaCBzdGlja3kgY29sdW1uIGNlbGwsIHdoaWNoIHdpbGwgYmUgdGhlXG4gICAqIGFjY3VtdWxhdGlvbiBvZiBhbGwgc3RpY2t5IGNvbHVtbiBjZWxsIHdpZHRocyB0byB0aGUgbGVmdCBhbmQgcmlnaHQsIHJlc3BlY3RpdmVseS5cbiAgICogTm9uLXN0aWNreSBjZWxscyBkbyBub3QgbmVlZCB0byBoYXZlIGEgdmFsdWUgc2V0IHNpbmNlIHRoZWlyIHBvc2l0aW9ucyB3aWxsIG5vdCBiZSBhcHBsaWVkLlxuICAgKi9cbiAgX2dldFN0aWNreUVuZENvbHVtblBvc2l0aW9ucyh3aWR0aHM6IG51bWJlcltdLCBzdGlja3lTdGF0ZXM6IGJvb2xlYW5bXSk6IG51bWJlcltdIHtcbiAgICBjb25zdCBwb3NpdGlvbnM6IG51bWJlcltdID0gW107XG4gICAgbGV0IG5leHRQb3NpdGlvbiA9IDA7XG5cbiAgICBmb3IgKGxldCBpID0gd2lkdGhzLmxlbmd0aDsgaSA+IDA7IGktLSkge1xuICAgICAgaWYgKHN0aWNreVN0YXRlc1tpXSkge1xuICAgICAgICBwb3NpdGlvbnNbaV0gPSBuZXh0UG9zaXRpb247XG4gICAgICAgIG5leHRQb3NpdGlvbiArPSB3aWR0aHNbaV07XG4gICAgICB9XG4gICAgfVxuXG4gICAgcmV0dXJuIHBvc2l0aW9ucztcbiAgfVxufVxuIl19