/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(null, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/common/locales/eu", ["require", "exports"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    // THIS CODE IS GENERATED - DO NOT MODIFY
    // See angular/tools/gulp-tasks/cldr/extract.js
    var u = undefined;
    function plural(n) {
        if (n === 1)
            return 1;
        return 5;
    }
    exports.default = [
        'eu',
        [['g', 'a'], ['AM', 'PM'], u],
        [['AM', 'PM'], u, u],
        [
            ['I', 'A', 'A', 'A', 'O', 'O', 'L'], ['ig.', 'al.', 'ar.', 'az.', 'og.', 'or.', 'lr.'],
            ['igandea', 'astelehena', 'asteartea', 'asteazkena', 'osteguna', 'ostirala', 'larunbata'],
            ['ig.', 'al.', 'ar.', 'az.', 'og.', 'or.', 'lr.']
        ],
        u,
        [
            ['U', 'O', 'M', 'A', 'M', 'E', 'U', 'A', 'I', 'U', 'A', 'A'],
            [
                'urt.', 'ots.', 'mar.', 'api.', 'mai.', 'eka.', 'uzt.', 'abu.', 'ira.', 'urr.', 'aza.', 'abe.'
            ],
            [
                'urtarrila', 'otsaila', 'martxoa', 'apirila', 'maiatza', 'ekaina', 'uztaila', 'abuztua',
                'iraila', 'urria', 'azaroa', 'abendua'
            ]
        ],
        u,
        [['K.a.', 'K.o.'], u, ['K.a.', 'Kristo ondoren']],
        1,
        [6, 0],
        [
            'yy/M/d', 'y(\'e\')\'ko\' MMM d(\'a\')', 'y(\'e\')\'ko\' MMMM\'ren\' d(\'a\')',
            'y(\'e\')\'ko\' MMMM\'ren\' d(\'a\'), EEEE'
        ],
        ['HH:mm', 'HH:mm:ss', 'HH:mm:ss (z)', 'HH:mm:ss (zzzz)'],
        ['{1} {0}', u, u, u],
        [',', '.', ';', '%', '+', '−', 'E', '×', '‰', '∞', 'NaN', ':'],
        ['#,##0.###', '% #,##0', '#,##0.00 ¤', '#E0'],
        'EUR',
        '€',
        'euroa',
        { 'ESP': ['₧'], 'JPY': ['JP¥', '¥'], 'THB': ['฿'], 'TWD': ['NT$'], 'USD': ['US$', '$'] },
        'ltr',
        plural
    ];
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXUuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21tb24vbG9jYWxlcy9ldS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7OztJQUVILHlDQUF5QztJQUN6QywrQ0FBK0M7SUFFL0MsSUFBTSxDQUFDLEdBQUcsU0FBUyxDQUFDO0lBRXBCLFNBQVMsTUFBTSxDQUFDLENBQVM7UUFDdkIsSUFBSSxDQUFDLEtBQUssQ0FBQztZQUFFLE9BQU8sQ0FBQyxDQUFDO1FBQ3RCLE9BQU8sQ0FBQyxDQUFDO0lBQ1gsQ0FBQztJQUVELGtCQUFlO1FBQ2IsSUFBSTtRQUNKLENBQUMsQ0FBQyxHQUFHLEVBQUUsR0FBRyxDQUFDLEVBQUUsQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLEVBQUUsQ0FBQyxDQUFDO1FBQzdCLENBQUMsQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLEVBQUUsQ0FBQyxFQUFFLENBQUMsQ0FBQztRQUNwQjtZQUNFLENBQUMsR0FBRyxFQUFFLEdBQUcsRUFBRSxHQUFHLEVBQUUsR0FBRyxFQUFFLEdBQUcsRUFBRSxHQUFHLEVBQUUsR0FBRyxDQUFDLEVBQUUsQ0FBQyxLQUFLLEVBQUUsS0FBSyxFQUFFLEtBQUssRUFBRSxLQUFLLEVBQUUsS0FBSyxFQUFFLEtBQUssRUFBRSxLQUFLLENBQUM7WUFDdEYsQ0FBQyxTQUFTLEVBQUUsWUFBWSxFQUFFLFdBQVcsRUFBRSxZQUFZLEVBQUUsVUFBVSxFQUFFLFVBQVUsRUFBRSxXQUFXLENBQUM7WUFDekYsQ0FBQyxLQUFLLEVBQUUsS0FBSyxFQUFFLEtBQUssRUFBRSxLQUFLLEVBQUUsS0FBSyxFQUFFLEtBQUssRUFBRSxLQUFLLENBQUM7U0FDbEQ7UUFDRCxDQUFDO1FBQ0Q7WUFDRSxDQUFDLEdBQUcsRUFBRSxHQUFHLEVBQUUsR0FBRyxFQUFFLEdBQUcsRUFBRSxHQUFHLEVBQUUsR0FBRyxFQUFFLEdBQUcsRUFBRSxHQUFHLEVBQUUsR0FBRyxFQUFFLEdBQUcsRUFBRSxHQUFHLEVBQUUsR0FBRyxDQUFDO1lBQzVEO2dCQUNFLE1BQU0sRUFBRSxNQUFNLEVBQUUsTUFBTSxFQUFFLE1BQU0sRUFBRSxNQUFNLEVBQUUsTUFBTSxFQUFFLE1BQU0sRUFBRSxNQUFNLEVBQUUsTUFBTSxFQUFFLE1BQU0sRUFBRSxNQUFNLEVBQUUsTUFBTTthQUMvRjtZQUNEO2dCQUNFLFdBQVcsRUFBRSxTQUFTLEVBQUUsU0FBUyxFQUFFLFNBQVMsRUFBRSxTQUFTLEVBQUUsUUFBUSxFQUFFLFNBQVMsRUFBRSxTQUFTO2dCQUN2RixRQUFRLEVBQUUsT0FBTyxFQUFFLFFBQVEsRUFBRSxTQUFTO2FBQ3ZDO1NBQ0Y7UUFDRCxDQUFDO1FBQ0QsQ0FBQyxDQUFDLE1BQU0sRUFBRSxNQUFNLENBQUMsRUFBRSxDQUFDLEVBQUUsQ0FBQyxNQUFNLEVBQUUsZ0JBQWdCLENBQUMsQ0FBQztRQUNqRCxDQUFDO1FBQ0QsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDO1FBQ047WUFDRSxRQUFRLEVBQUUsNkJBQTZCLEVBQUUscUNBQXFDO1lBQzlFLDJDQUEyQztTQUM1QztRQUNELENBQUMsT0FBTyxFQUFFLFVBQVUsRUFBRSxjQUFjLEVBQUUsaUJBQWlCLENBQUM7UUFDeEQsQ0FBQyxTQUFTLEVBQUUsQ0FBQyxFQUFFLENBQUMsRUFBRSxDQUFDLENBQUM7UUFDcEIsQ0FBQyxHQUFHLEVBQUUsR0FBRyxFQUFFLEdBQUcsRUFBRSxHQUFHLEVBQUUsR0FBRyxFQUFFLEdBQUcsRUFBRSxHQUFHLEVBQUUsR0FBRyxFQUFFLEdBQUcsRUFBRSxHQUFHLEVBQUUsS0FBSyxFQUFFLEdBQUcsQ0FBQztRQUM5RCxDQUFDLFdBQVcsRUFBRSxTQUFTLEVBQUUsWUFBWSxFQUFFLEtBQUssQ0FBQztRQUM3QyxLQUFLO1FBQ0wsR0FBRztRQUNILE9BQU87UUFDUCxFQUFDLEtBQUssRUFBRSxDQUFDLEdBQUcsQ0FBQyxFQUFFLEtBQUssRUFBRSxDQUFDLEtBQUssRUFBRSxHQUFHLENBQUMsRUFBRSxLQUFLLEVBQUUsQ0FBQyxHQUFHLENBQUMsRUFBRSxLQUFLLEVBQUUsQ0FBQyxLQUFLLENBQUMsRUFBRSxLQUFLLEVBQUUsQ0FBQyxLQUFLLEVBQUUsR0FBRyxDQUFDLEVBQUM7UUFDdEYsS0FBSztRQUNMLE1BQU07S0FDUCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbi8vIFRISVMgQ09ERSBJUyBHRU5FUkFURUQgLSBETyBOT1QgTU9ESUZZXG4vLyBTZWUgYW5ndWxhci90b29scy9ndWxwLXRhc2tzL2NsZHIvZXh0cmFjdC5qc1xuXG5jb25zdCB1ID0gdW5kZWZpbmVkO1xuXG5mdW5jdGlvbiBwbHVyYWwobjogbnVtYmVyKTogbnVtYmVyIHtcbiAgaWYgKG4gPT09IDEpIHJldHVybiAxO1xuICByZXR1cm4gNTtcbn1cblxuZXhwb3J0IGRlZmF1bHQgW1xuICAnZXUnLFxuICBbWydnJywgJ2EnXSwgWydBTScsICdQTSddLCB1XSxcbiAgW1snQU0nLCAnUE0nXSwgdSwgdV0sXG4gIFtcbiAgICBbJ0knLCAnQScsICdBJywgJ0EnLCAnTycsICdPJywgJ0wnXSwgWydpZy4nLCAnYWwuJywgJ2FyLicsICdhei4nLCAnb2cuJywgJ29yLicsICdsci4nXSxcbiAgICBbJ2lnYW5kZWEnLCAnYXN0ZWxlaGVuYScsICdhc3RlYXJ0ZWEnLCAnYXN0ZWF6a2VuYScsICdvc3RlZ3VuYScsICdvc3RpcmFsYScsICdsYXJ1bmJhdGEnXSxcbiAgICBbJ2lnLicsICdhbC4nLCAnYXIuJywgJ2F6LicsICdvZy4nLCAnb3IuJywgJ2xyLiddXG4gIF0sXG4gIHUsXG4gIFtcbiAgICBbJ1UnLCAnTycsICdNJywgJ0EnLCAnTScsICdFJywgJ1UnLCAnQScsICdJJywgJ1UnLCAnQScsICdBJ10sXG4gICAgW1xuICAgICAgJ3VydC4nLCAnb3RzLicsICdtYXIuJywgJ2FwaS4nLCAnbWFpLicsICdla2EuJywgJ3V6dC4nLCAnYWJ1LicsICdpcmEuJywgJ3Vyci4nLCAnYXphLicsICdhYmUuJ1xuICAgIF0sXG4gICAgW1xuICAgICAgJ3VydGFycmlsYScsICdvdHNhaWxhJywgJ21hcnR4b2EnLCAnYXBpcmlsYScsICdtYWlhdHphJywgJ2VrYWluYScsICd1enRhaWxhJywgJ2FidXp0dWEnLFxuICAgICAgJ2lyYWlsYScsICd1cnJpYScsICdhemFyb2EnLCAnYWJlbmR1YSdcbiAgICBdXG4gIF0sXG4gIHUsXG4gIFtbJ0suYS4nLCAnSy5vLiddLCB1LCBbJ0suYS4nLCAnS3Jpc3RvIG9uZG9yZW4nXV0sXG4gIDEsXG4gIFs2LCAwXSxcbiAgW1xuICAgICd5eS9NL2QnLCAneShcXCdlXFwnKVxcJ2tvXFwnIE1NTSBkKFxcJ2FcXCcpJywgJ3koXFwnZVxcJylcXCdrb1xcJyBNTU1NXFwncmVuXFwnIGQoXFwnYVxcJyknLFxuICAgICd5KFxcJ2VcXCcpXFwna29cXCcgTU1NTVxcJ3JlblxcJyBkKFxcJ2FcXCcpLCBFRUVFJ1xuICBdLFxuICBbJ0hIOm1tJywgJ0hIOm1tOnNzJywgJ0hIOm1tOnNzICh6KScsICdISDptbTpzcyAoenp6eiknXSxcbiAgWyd7MX0gezB9JywgdSwgdSwgdV0sXG4gIFsnLCcsICcuJywgJzsnLCAnJScsICcrJywgJ+KIkicsICdFJywgJ8OXJywgJ+KAsCcsICfiiJ4nLCAnTmFOJywgJzonXSxcbiAgWycjLCMjMC4jIyMnLCAnJcKgIywjIzAnLCAnIywjIzAuMDDCoMKkJywgJyNFMCddLFxuICAnRVVSJyxcbiAgJ+KCrCcsXG4gICdldXJvYScsXG4gIHsnRVNQJzogWyfigqcnXSwgJ0pQWSc6IFsnSlDCpScsICfCpSddLCAnVEhCJzogWyfguL8nXSwgJ1RXRCc6IFsnTlQkJ10sICdVU0QnOiBbJ1VTJCcsICckJ119LFxuICAnbHRyJyxcbiAgcGx1cmFsXG5dO1xuIl19