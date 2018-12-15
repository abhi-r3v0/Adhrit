

$(document).ready(function(){
    // Chart Data

    // Main
    var curvedLineChartData = [
        {
            label: '2016',
            color: '#ededed',
            lines: {
                show: true,
                lineWidth: 0,
                fill: 1,
                fillColor: {
                    colors: ['rgba(246,246,246,0.1)', '#f1f1f1']
                }
            },
            data: [[10, 90], [20, 40], [30, 80], [40, 20], [50, 90], [60, 20], [70, 60]],

        },
        {
            label: '2017',
            color: '#00BCD4',
            lines: {
                show: true,
                lineWidth: 0.1,
                fill: 1,
                fillColor: {
                    colors: ['rgba(0,188,212,0.001)', '#00BCD4']
                }
            },
            data: [[10, 80], [20, 30], [30, 70], [40, 10], [50, 80], [60, 10], [70, 50]]
        }
    ];


    // Past Days
    var pastDaysChartData = [{
        label: 'Data',
        stack: true,
        color: '#fff',
        lines: {
            show: true,
            fill: 1,
            fillColor: {
                colors: ['rgba(255,255,255,0)', 'rgba(255,255,255,0.6)']
            }
        },
        data: [[10, 90], [20, 40], [30, 80], [40, 20], [50, 90], [60, 20], [70, 60]]
    }];


    // Stats Charts
    var stats1ChartData = [{
        label: 'Data',
        stack: true,
        color: '#fff',
        lines: {
            show: true,
            fill: 1,
            fillColor: 'rgba(255,255,255,0.2)'
        },
        data: [[10, 100], [20, 10], [30, 90], [40, 20], [50, 60], [60, 20], [70, 60]]
    }];

    var stats2ChartData = [{
        label: 'Data',
        stack: true,
        color: '#fff',
        lines: {
            show: true,
            fill: 1,
            fillColor: 'rgba(255,255,255,0.3)'
        },
        data: [[10, 0], [20, 30], [30, 30], [40, 90], [50, 0], [60, 20], [70, 60]]
    }];

    var stats3ChartData = [{
        label: 'Data',
        stack: true,
        color: '#fff',
        lines: {
            show: true,
            fill: 1,
            fillColor: 'rgba(255,255,255,0.3)'
        },
        data: [[10, 100], [20, 30], [30, 50], [40, 30], [50, 20], [60, 10], [70, 100]]
    }];

    var stats4ChartData = [{
        label: 'Data',
        stack: true,
        color: '#fff',
        lines: {
            show: true,
            fill: 1,
            fillColor: 'rgba(255,255,255,0.3)'
        },
        data: [[10, 45], [20, 10], [30, 32], [40, 12], [50, 5], [60, 6], [70, 15]]
    }];


    // Chart Options

    // Main
    var curvedLineChartOptions = {
        series: {
            shadowSize: 0,
            curvedLines: {
                apply: true,
                active: true,
                monotonicFit: true
            },
            points: {
                show: false
            }
        },
        grid: {
            borderWidth: 1,
            borderColor: '#edf9fc',
            show: true,
            hoverable: true,
            clickable: true
        },
        xaxis: {
            tickColor: '#fff',
            tickDecimals: 0,
            font: {
                lineHeight: 13,
                style: 'normal',
                color: '#999999',
                size: 11
            }
        },
        yaxis: {
            tickColor: '#edf9fc',
            font: {
                lineHeight: 13,
                style: 'normal',
                color: '#999999',
                size: 11
            },
            min: +5
        },
        legend:{
            container: '.flot-chart-legends--curved',
            backgroundOpacity: 0.5,
            noColumns: 0,
            backgroundColor: '#fff',
            lineWidth: 0,
            labelBoxBorderColor: '#fff'
        }
    };


    // Past days
    var pastDaysChartOptions = {
        series: {
            shadowSize: 0,
            curvedLines: {
                apply: true,
                active: true,
                monotonicFit: true
            },
            lines: {
                show: false,
                lineWidth: 0
            }
        },
        grid: {
            borderWidth: 0,
            labelMargin:10,
            hoverable: true,
            clickable: true,
            mouseActiveRadius:6

        },
        xaxis: {
            tickDecimals: 0,
            ticks: false
        },

        yaxis: {
            tickDecimals: 0,
            ticks: false
        },

        legend: {
            show: false
        }
    };


    // Stats Charts
    var statsChartOptions = {
        series: {
            shadowSize: 0,
            curvedLines: {
                apply: true,
                active: true,
                monotonicFit: true
            },
            lines: {
                show: false,
                lineWidth: 0
            }
        },
        grid: {
            borderWidth: 0,
            labelMargin:10,
            hoverable: true,
            clickable: true,
            mouseActiveRadius:6

        },
        xaxis: {
            tickDecimals: 0,
            ticks: false
        },

        yaxis: {
            tickDecimals: 0,
            ticks: false
        },

        legend: {
            show: false
        }
    };


    // Create charts

    // Main
    if ($('.flot-curved-line')[0]) {
        $.plot($('.flot-curved-line'), curvedLineChartData, curvedLineChartOptions);
    }

    // Past Days
    if ($('.flot-past-days')[0]) {
        $.plot($('.flot-past-days'), pastDaysChartData, pastDaysChartOptions);
    }

    // Stats Charts
    if ($('.stats')[0]) {
        $.plot($('.stats-chart-1'), stats1ChartData, statsChartOptions);
        $.plot($('.stats-chart-2'), stats2ChartData, statsChartOptions);
        $.plot($('.stats-chart-3'), stats3ChartData, statsChartOptions);
        $.plot($('.stats-chart-4'), stats4ChartData, statsChartOptions);
    }
});