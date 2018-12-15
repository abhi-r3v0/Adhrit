(function ($) {
 "use strict";
  
	$(".color-picker")[0] && $(".color-picker").each(function() {
		var colorOutput = $(this).closest(".nk-container").find(".nk-value");
		$(this).farbtastic(colorOutput)
	});

})(jQuery); 