(function ($) {
 "use strict";
 
	/*----------------------
		wizard
	 -----------------------*/
	$('#rootwizard').bootstrapWizard({'nextSelector': '.button-next', 'previousSelector': '.button-previous', 'firstSelector': '.button-first', 'lastSelector': '.button-last'});
	
	$("body").on("click", ".a-prevent", function(e) {
            e.preventDefault();
        })
 
})(jQuery); 