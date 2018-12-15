(function ($) {
 "use strict";
 
 
				var initialSpark = 60;
			var sparkTooltip = function(event, ui) {
				var curSpark = ui.value  || initialSpark
				var sparktip = '<span class="slider-tip">' + curSpark + '</span>';
				$(this).find('.ui-slider-handle').html(sparktip);
			}			
			
			$("#slider9").slider({
				orientation: "vertical",
				range: "min",
				min: 1,
				max: 100,
				step: 1,
				value: initialSpark,
				create: sparkTooltip,
				slide: sparkTooltip				
			});
			
				
				
				$("#slider6").slider({
					orientation: "vertical",
					range: "min",
					min: 0,
					max: 100,
					value: 60,
					slide: function(event, ui) {
						$("#volume").val(ui.value);
					}
				});
				
				$("#volume").val( 
					$("#slider6").slider("value") 
				);
				
				 $("#slider7").slider({
					orientation: "vertical",
					range: true,
					values: [27, 67],
					slide: function(event, ui) {
						$("#sales").val("$" + ui.values[0] + " - $" + ui.values[1]);
					}
				});
				$("#sales").val( "$" + $("#slider7").slider("values", 0) + " - $" + $("#slider7").slider("values", 1));
 
				$("#eq > .sliderv-wrapper").each(function() {
					var value = parseInt($(this).text(), 10);
						$(this).empty().slider({
						value: value,
						range: "min",
						animate: true,
						orientation: "vertical"
					});
				});	
				
				$("#eq2 > .sliderv-wrapper").each(function() {
					var value = parseInt($(this).text(), 10);
						$(this).empty().slider({
						value: value,
						range: "min",
						animate: true,
						orientation: "vertical"
					});
				});		
				
				var initialYear = 1980;
				var yearTooltip = function(event, ui) {
					var curYear = ui.value || initialYear
					var yeartip = '<span class="slider-tip">' + curYear + '</span>';
					$(this).find('.ui-slider-handle').html(yeartip);
				}
				
				$("#slider10").slider({
					value: initialYear,
					range: "min",
					min: 1950,
					max: 2020,
					step: 1,
					create: yearTooltip,
					slide: yearTooltip
				});	
				
				
 
				$('#slider8').slider({
					range: true,
					values: [500, 1500],
					min: 10,
					max: 2000,
					step: 10,
					slide: function(event, ui) { 
						$("#budget").val("$" + ui.values[0] + " - $" + ui.values[1]);
					}			
				});
				$("#budget").val("$" + $("#slider8").slider("values", 0) + " - $" + $("#slider8").slider("values", 1));
				
				
		
				$("#slider").slider({
					range: "min",
					min: 10,
					max: 100,
					value: 80			
				});
				$("#slider1").slider({
					range: true,
					values: [17, 83]
				});	
				

				$( "#slider2" ).slider({
					range: "min",
					value: 140,
					min: 1,
					max: 800,
					slide: function(event, ui) {
						$("#amountp").val("$" + ui.value);
					}
				});
				
				$("#amountp").val( 
					"$" + $("#slider2").slider("value") 
				);
				
				$("#slider3").slider({
					range: "max",
					min: 1,
					max: 10,
					value: 2,
					slide: function(event, ui) {
						$("#bedrooms").val(ui.value);
					}
				});
				
				$("#bedrooms").val( 
					$("#slider3").slider("value") 
				);
				
				
	
 
})(jQuery); 