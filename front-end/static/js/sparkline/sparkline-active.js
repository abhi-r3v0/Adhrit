(function ($) {
 "use strict";

	/*----------------------------
	 jQuery sparkline Chart
	------------------------------ */
    if($('.sparkline-bar-stats1')[0]) {
        $('.sparkline-bar-stats1').sparkline('html', {
            type: 'bar',
            height: 36,
            barWidth: 3,
            barColor: '#00c292',
            barSpacing: 2
        });
    }
    if($('.sparkline-bar-stats2')[0]) {
        $('.sparkline-bar-stats2').sparkline('html', {
            type: 'bar',
            height: 36,
            barWidth: 3,
            barColor: '#fb9678',
            barSpacing: 2
        });
    }
    if($('.sparkline-bar-stats3')[0]) {
        $('.sparkline-bar-stats3').sparkline('html', {
            type: 'bar',
            height: 36,
            barWidth: 3,
            barColor: '#01c0c8',
            barSpacing: 2
        });
    }
    if($('.sparkline-bar-stats4')[0]) {
        $('.sparkline-bar-stats4').sparkline('html', {
            type: 'bar',
            height: 36,
            barWidth: 3,
            barColor: '#ab8ce4',
            barSpacing: 2
        });
    }
 
})(jQuery); 