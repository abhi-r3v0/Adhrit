(function ($) {
 "use strict";
	 /*----------------------------------------*/
	/*  1.  Bar Chart
	/*----------------------------------------*/

	var ctx = document.getElementById("barchart1");
	var barchart1 = new Chart(ctx, {
		type: 'bar',
		data: {
			labels: ["Red", "Blue", "Yellow", "Green"],
			datasets: [{
				label: 'Bar Chart',
				data: [12, 19, 3, 5, 2, 3],
				backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgb(50,205,50, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)'
				],
				borderColor: [
					'rgba(255,99,132,1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)'
				],
				borderWidth: 1
			}]
		},
		options: {
			scales: {
				yAxes: [{
					ticks: {
						beginAtZero:true
					}
				}]
			}
		}
	});
	/*----------------------------------------*/
	/*  2.  Bar Chart vertical
	/*----------------------------------------*/
	var ctx = document.getElementById("barchart2");
	var barchart2 = new Chart(ctx, {
		type: 'bar',
		data: {
			labels: ["January", "February"],
			datasets: [{
                label: 'Dataset 1',
				data: [150, 170],
				borderWidth: 1,
                backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgb(50,205,50, 0.2)'
				],
				borderColor: [
					'rgba(255,99,132,1)',
					'rgba(54, 162, 235, 1)'
				],
            }, {
                label: 'Dataset 2',
				data: [-188, -177],
                backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgb(50,205,50, 0.2)'
				],
				borderColor: [
					'rgba(255,99,132,1)',
					'rgba(54, 162, 235, 1)'
				],
				borderWidth: 1
            }]
		},
		options: {
			responsive: true,
			legend: {
				position: 'top',
			},
			title: {
				display: true,
				text: 'Bar Chart Vertical'
			}
		}
	});
	/*----------------------------------------*/
	/*  3.  Bar Chart Horizontal
	/*----------------------------------------*/
	var ctx = document.getElementById("barchart3");
	var barchart3 = new Chart(ctx, {
		type: 'horizontalBar',
		data: {
			labels: ["May", "June"],
			datasets: [{
                label: 'Dataset 1',
				data: [3, 9],
				borderWidth: 1,
                backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgb(50,205,50, 0.2)'
				],
				borderColor: [
					'rgba(255,99,132,1)',
					'rgba(54, 162, 235, 1)'
				],
            }, {
                label: 'Dataset 2',
				data: [-9, -15],
                backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgb(50,205,50, 0.2)'
				],
				borderColor: [
					'rgba(255,99,132,1)',
					'rgba(54, 162, 235, 1)'
				],
				borderWidth: 1
            }]
		},
		options: {
			responsive: true,
			legend: {
				position: 'top',
			},
			title: {
				display: true,
				text: 'Bar Chart horizontal'
			}
		}
	});
	
	/*----------------------------------------*/
	/*  4.  Bar Chart Multi axis
	/*----------------------------------------*/
	var ctx = document.getElementById("barchart4");
	var barchart4 = new Chart(ctx, {
		type: 'bar',
		data: {
			labels: ["March", "April"],
			datasets: [{
                label: 'Dataset 1',
				data: [12, 19, 3, 5, 2, 3, 9],
				borderWidth: 1,
				yAxisID: "y-axis-1",
                backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgb(50,205,50, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)',
					'rgba(153, 102, 255, 0.2)',
					'rgba(255, 159, 64, 0.2)'
				],
				borderColor: [
					'rgba(255,99,132,1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)',
					'rgba(153, 102, 255, 1)',
					'rgba(255, 159, 64, 1)'
				],
            }, {
                label: 'Dataset 2',
				data: [-3, -6, -5, -9, -15, -20],
				borderWidth: 1,
				yAxisID: "y-axis-2",
                backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgb(50,205,50, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)',
					'rgba(153, 102, 255, 0.2)',
					'rgba(255, 159, 64, 0.2)'
				],
				borderColor: [
					'rgba(255,99,132,1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)',
					'rgba(153, 102, 255, 1)',
					'rgba(255, 159, 64, 1)'
				],
				
            }]
		},
		options: {
			responsive: true,
			title:{
				display:true,
				text:"Bar Chart Multi Axis"
			},
			tooltips: {
				mode: 'index',
				intersect: true
			},
			scales: {
				yAxes: [{
					type: "linear",
					display: true,
					position: "left",
					id: "y-axis-1",
				}, {
					type: "linear",
					display: true,
					position: "right",
					id: "y-axis-2",
					gridLines: {
						drawOnChartArea: false
					}
				}],
			}
		}
	});
	
	
		
})(jQuery); 