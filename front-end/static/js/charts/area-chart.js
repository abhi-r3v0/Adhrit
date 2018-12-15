(function ($) {
 "use strict";
 
	 /*----------------------------------------*/
	/*  1.  Area Chart
	/*----------------------------------------*/
	var ctx = document.getElementById("areachartfalse");
	var areachartfalse = new Chart(ctx, {
		type: 'line',
		data: {
			labels: ["January", "February", "March", "April"],
			datasets: [{
				label: "My First dataset",
				fill: false,
                backgroundColor: '#00c292',
				borderColor: '#00c292',
				data: [0, -20, 20, -20, 20, -20, 20]
            }]
		},
		options: {
			responsive: true,
			maintainAspectRatio: false,
			spanGaps: false,
			title:{
				display:true,
				text:'Area Chart Fill False'
			},
			elements: {
				line: {
					tension: 0.000001
				}
			},
			plugins: {
				filler: {
					propagate: false
				}
			},
			scales: {
				xAxes: [{
					ticks: {
						autoSkip: false,
						maxRotation: 0
					}
				}]
			}
		}
	});
	
	 /*----------------------------------------*/
	/*  2.  Area Chart origin
	/*----------------------------------------*/
	var ctx = document.getElementById("areachartorigin");
	var areachartorigin = new Chart(ctx, {
		type: 'line',
		data: {
			labels: ["January", "February", "March", "April"],
			datasets: [{
				label: "My First dataset",
				fill: 'origin',
                backgroundColor: '#00c292',
				borderColor: '#00c292',
				data: [0, -20, 20, -20]
            }]
		},
		options: {
			responsive: true,
			maintainAspectRatio: false,
			spanGaps: false,
			title:{
				display:true,
				text:'Area Chart Fill origin'
			},
			elements: {
				line: {
					tension: 0.000001
				}
			},
			plugins: {
				filler: {
					propagate: false
				}
			},
			scales: {
				xAxes: [{
					ticks: {
						autoSkip: false,
						maxRotation: 0
					}
				}]
			}
		}
	});
	 /*----------------------------------------*/
	/*  3.  Area Chart start
	/*----------------------------------------*/
	var ctx = document.getElementById("areachartfillstart");
	var areachartfillstart = new Chart(ctx, {
		type: 'line',
		data: {
			labels: ["January", "February", "March", "April"],
			datasets: [{
				label: "My First dataset",
				fill: 'start',
                backgroundColor: '#00c292',
				borderColor: '#00c292',
				data: [0, 10, 20, 30]
            }]
		},
		options: {
			responsive: true,
			maintainAspectRatio: false,
			spanGaps: false,
			title:{
				display:true,
				text:'Area Chart Fill start'
			},
			elements: {
				line: {
					tension: 0.000001
				}
			},
			plugins: {
				filler: {
					propagate: false
				}
			},
			scales: {
				xAxes: [{
					ticks: {
						autoSkip: false,
						maxRotation: 0
					}
				}]
			}
		}
	});
	
	
	 /*----------------------------------------*/
	/*  4.  Area Chart end
	/*----------------------------------------*/
	var ctx = document.getElementById("areachartend");
	var areachartend = new Chart(ctx, {
		type: 'line',
		data: {
			labels: ["January", "February", "March", "April"],
			datasets: [{
				label: "My First dataset",
				fill: 'end',
                backgroundColor: '#00c292',
				borderColor: '#00c292',
				data: [100, 90, 70, 60]
            }]
		},
		options: {
			responsive: true,
			maintainAspectRatio: false,
			spanGaps: false,
			title:{
				display:true,
				text:'Area Chart Fill end'
			},
			elements: {
				line: {
					tension: 0.000001
				}
			},
			plugins: {
				filler: {
					propagate: false
				}
			},
			scales: {
				xAxes: [{
					ticks: {
						autoSkip: false,
						maxRotation: 0
					}
				}]
			}
		}
	});
	
	 
		
})(jQuery); 