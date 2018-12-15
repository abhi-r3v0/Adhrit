(function ($) {
 "use strict";
 
    var data = [
            [1, 60],
            [2, 30],
            [3, 50],
            [4, 100],
            [5, 10],
            [6, 90],
            [7, 85],
            [8, 10],
            [9, 25],
            [10, 65],
            [11, 69],
            [12, 104],
            [13, 94],
            [14, 32],
            [15, 10],
            [16, 45],
            [17, 34],
            [18, 22],
            [19, 100],
            [20, 43],
            [21, 98],
            [22, 60],
            [23, 51],
            [24, 30]
        ],
        dataset = [{
            data: data,
            label: "Visits",
            bars: {
                show: !0,
                barWidth: .4,
                order: 1,
                lineWidth: 0,
                fillColor: "#00c292"
            }
        }],
        options = {
            grid: {
                borderWidth: 1,
                borderColor: "#f3f3f3",
                show: !0,
                hoverable: !0,
                clickable: !0,
                labelMargin: 10
            },
            yaxis: {
                tickColor: "#f3f3f3",
                tickDecimals: 0,
                font: {
                    lineHeight: 13,
                    style: "normal",
                    color: "#9f9f9f"
                },
                shadowSize: 0
            },
            xaxis: {
                tickFormatter: function(value, axis) {
                    return value + "h"
                },
                tickColor: "#fff",
                tickDecimals: 0,
                font: {
                    lineHeight: 13,
                    style: "normal",
                    color: "#9f9f9f"
                },
                shadowSize: 0
            },
            legend: {
                show: !1
            }
        };
    $("#visit-server-time")[0] && $.plot($("#visit-server-time"), dataset, options),$(".flot-chart")[0] && ($(".flot-chart").bind("plothover", function(event, pos, item) {
        if (item) {
            var x = item.datapoint[0].toFixed(2),
                y = item.datapoint[1].toFixed(2);
            $(".flot-tooltip").html(item.series.label + " of " + x + " = " + y).css({
                top: item.pageY + 5,
                left: item.pageX + 5
            }).show()
        } else $(".flot-tooltip").hide()
    }), $("<div class='flot-tooltip' class='chart-tooltip'></div>").appendTo("body"))
	
	
    function getRandomData() {
        for (data.length > 0 && (data = data.slice(1)); data.length < totalPoints;) {
            var prev = data.length > 0 ? data[data.length - 1] : 50,
                y = prev + 10 * Math.random() - 5;
            0 > y ? y = 0 : y > 90 && (y = 90), data.push(y)
        }
        for (var res = [], i = 0; i < data.length; ++i) res.push([i, data[i]]);
        return res
    }

    function update() {
        plot.setData([getRandomData()]), plot.draw(), setTimeout(update, updateInterval)
    }
    var data = [],
        totalPoints = 300,
        updateInterval = 30;
    if ($("#dynamic-chart")[0]) {
        var plot = $.plot("#dynamic-chart", [getRandomData()], {
            series: {
                label: "Server Process Data",
                lines: {
                    show: !0,
                    lineWidth: .2,
                    fill: .6
                },
                color: "#00c292",
                shadowSize: 0
            },
            yaxis: {
                min: 0,
                max: 100,
                tickColor: "#eee",
                font: {
                    lineHeight: 13,
                    style: "normal",
                    color: "#9f9f9f"
                },
                shadowSize: 0
            },
            xaxis: {
                tickColor: "#eee",
                show: !0,
                font: {
                    lineHeight: 13,
                    style: "normal",
                    color: "#9f9f9f"
                },
                shadowSize: 0,
                min: 0,
                max: 250
            },
            grid: {
                borderWidth: 1,
                borderColor: "#eee",
                labelMargin: 10,
                hoverable: !0,
                clickable: !0,
                mouseActiveRadius: 6
            },
            legend: {
                show: !1
            }
        });
        update()
    }


	
    function gd(year, month, day) {
        return new Date(year, month - 1, day).getTime()
    }
    var data1 = [
            [gd(2013, 1, 2), 1690.25],
            [gd(2013, 1, 3), 1696.3],
            [gd(2013, 1, 4), 1659.65],
            [gd(2013, 1, 7), 1668.15],
            [gd(2013, 1, 8), 1656.1],
            [gd(2013, 1, 9), 1668.65],
            [gd(2013, 1, 10), 1668.15],
            [gd(2013, 1, 11), 1680.2],
            [gd(2013, 1, 14), 1676.7],
            [gd(2013, 1, 15), 1680.7],
            [gd(2013, 1, 16), 1689.75],
            [gd(2013, 1, 17), 1687.25],
            [gd(2013, 1, 18), 1698.3],
            [gd(2013, 1, 21), 1696.8],
            [gd(2013, 1, 22), 1701.3],
            [gd(2013, 1, 23), 1700.8],
            [gd(2013, 1, 24), 1686.75],
            [gd(2013, 1, 25), 1680],
            [gd(2013, 1, 28), 1668.65],
            [gd(2013, 1, 29), 1671.2],
            [gd(2013, 1, 30), 1675.7],
            [gd(2013, 1, 31), 1684.25]
        ],
        data2 = [
            [gd(2013, 1, 2), 1674.15],
            [gd(2013, 1, 3), 1680.15],
            [gd(2013, 1, 4), 1643.8],
            [gd(2013, 1, 7), 1652.25],
            [gd(2013, 1, 8), 1640.3],
            [gd(2013, 1, 9), 1652.75],
            [gd(2013, 1, 10), 1652.25],
            [gd(2013, 1, 11), 1664.2],
            [gd(2013, 1, 14), 1660.7],
            [gd(2013, 1, 15), 1664.7],
            [gd(2013, 1, 16), 1673.65],
            [gd(2013, 1, 17), 1671.15],
            [gd(2013, 1, 18), 1682.1],
            [gd(2013, 1, 21), 1680.65],
            [gd(2013, 1, 22), 1685.1],
            [gd(2013, 1, 23), 1684.6],
            [gd(2013, 1, 24), 1670.65],
            [gd(2013, 1, 25), 1664],
            [gd(2013, 1, 28), 1652.75],
            [gd(2013, 1, 29), 1655.25],
            [gd(2013, 1, 30), 1659.7],
            [gd(2013, 1, 31), 1668.2]
        ],
        dataset = [{
            label: "Visits",
            data: data1,
            color: "#00c292",
            points: {
                fillColor: "#00c292",
                show: !0,
                radius: 2
            },
            lines: {
                show: !0,
                lineWidth: 1
            }
        }, {
            label: "Unique Visitors",
            data: data2,
            xaxis: 2,
            color: "#03A9F4",
            points: {
                fillColor: "#03A9F4",
                show: !0,
                radius: 2
            },
            lines: {
                show: !0,
                lineWidth: 1
            }
        }],
        dayOfWeek = ["Sun", "Mon", "Tue", "Wed", "Thr", "Fri", "Sat"],
        options = {
            series: {
                shadowSize: 0
            },
            grid: {
                borderWidth: 1,
                borderColor: "#f3f3f3",
                show: !0,
                clickable: !0,
                hoverable: !0,
                mouseActiveRadius: 20,
                labelMargin: 10
            },
            xaxes: [{
                color: "#f3f3f3",
                mode: "time",
                tickFormatter: function(val, axis) {
                    return dayOfWeek[new Date(val).getDay()]
                },
                position: "top",
                font: {
                    lineHeight: 13,
                    style: "normal",
                    color: "#9f9f9f"
                }
            }, {
                color: "#f3f3f3",
                mode: "time",
                timeformat: "%m/%d",
                font: {
                    lineHeight: 13,
                    style: "normal",
                    color: "#9f9f9f"
                }
            }],
            yaxis: {
                ticks: 2,
                color: "#f3f3f3",
                tickDecimals: 0,
                font: {
                    lineHeight: 13,
                    style: "normal",
                    color: "#9f9f9f"
                }
            },
            legend: {
                container: ".flc-visits",
                backgroundOpacity: .5,
                noColumns: 0,
                font: {
                    lineHeight: 13,
                    style: "normal",
                    color: "#9f9f9f"
                }
            }
        };
    $("#visit-over-time")[0] && $.plot($("#visit-over-time"), dataset, options)


})(jQuery); 