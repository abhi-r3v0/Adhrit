(function ($) {
 "use strict";
 
	/*----------------------
		Animation active js
	 -----------------------*/
	$("button.btn.ant-nk-st.bounce-ac").on('click', function(){
		$(".animation-img .animate-one").addClass("animated bounce").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated bounce");
		});
	});
	$("button.btn.ant-nk-st.flash-ac").on('click', function(){
		$(".animation-img .animate-one").addClass("animated flash").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated flash");
		});
	});

	$("button.btn.ant-nk-st.pulse-ac").on('click', function(){
		$(".animation-img .animate-one").addClass("animated pulse").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated pulse");
		});
	});
	$("button.btn.ant-nk-st.rubberBand-ac").on('click', function(){
		$(".animation-img .animate-one").addClass("animated rubberBand").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated rubberBand");
		});
	});
	$("button.btn.ant-nk-st.bounceIn-ac").on('click', function(){
		$(".animation-img .animate-two").addClass("animated bounceIn").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated bounceIn");
		});
	});
	$("button.btn.ant-nk-st.bounceInDown-ac").on('click', function(){
		$(".animation-img .animate-two").addClass("animated bounceInDown").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated bounceInDown");
		});
	});

	$("button.btn.ant-nk-st.bounceInLeft-ac").on('click', function(){
		$(".animation-img .animate-two").addClass("animated bounceInLeft").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated bounceInLeft");
		});
	});
	$("button.btn.ant-nk-st.bounceInUp-ac").on('click', function(){
		$(".animation-img .animate-two").addClass("animated bounceInUp").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated bounceInUp");
		});
	});
	$("button.btn.ant-nk-st.bounceOut-ac").on('click', function(){
		$(".animation-img .animate-three").addClass("animated bounceOut").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated bounceOut");
		});
	});
	$("button.btn.ant-nk-st.bounceOutDown-ac").on('click', function(){
		$(".animation-img .animate-three").addClass("animated bounceOutDown").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated bounceOutDown");
		});
	});

	$("button.btn.ant-nk-st.bounceOutLeft-ac").on('click', function(){
		$(".animation-img .animate-three").addClass("animated bounceOutLeft").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated bounceOutLeft");
		});
	});
	$("button.btn.ant-nk-st.bounceOutRight-ac").on('click', function(){
		$(".animation-img .animate-three").addClass("animated bounceOutRight").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated bounceOutRight");
		});
	});
	$("button.btn.ant-nk-st.fadeIn-ac").on('click', function(){
		$(".animation-img .animate-four").addClass("animated fadeIn").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated fadeIn");
		});
	});
	$("button.btn.ant-nk-st.fadeInDown-ac").on('click', function(){
		$(".animation-img .animate-four").addClass("animated fadeInDown").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated fadeInDown");
		});
	});

	$("button.btn.ant-nk-st.fadeInDownBig-ac").on('click', function(){
		$(".animation-img .animate-four").addClass("animated fadeInDownBig").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated fadeInDownBig");
		});
	});
	$("button.btn.ant-nk-st.fadeInLeft-ac").on('click', function(){
		$(".animation-img .animate-four").addClass("animated fadeInLeft").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated fadeInLeft");
		});
	});
	$("button.btn.ant-nk-st.fadeOut-ac").on('click', function(){
		$(".animation-img .animate-five").addClass("animated fadeOut").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated fadeOut");
		});
	});
	$("button.btn.ant-nk-st.fadeOutDown-ac").on('click', function(){
		$(".animation-img .animate-five").addClass("animated fadeOutDown").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated fadeOutDown");
		});
	});

	$("button.btn.ant-nk-st.fadeOutDownBig-ac").on('click', function(){
		$(".animation-img .animate-five").addClass("animated fadeOutDownBig").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated fadeOutDownBig");
		});
	});
	$("button.btn.ant-nk-st.fadeOutLeft-ac").on('click', function(){
		$(".animation-img .animate-five").addClass("animated fadeOutLeft").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated fadeOutLeft");
		});
	});
	$("button.btn.ant-nk-st.flip-ac").on('click', function(){
		$(".animation-img .animate-six").addClass("animated flip").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated flip");
		});
	});
	$("button.btn.ant-nk-st.flipInX-ac").on('click', function(){
		$(".animation-img .animate-six").addClass("animated flipInX").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated flipInX");
		});
	});

	$("button.btn.ant-nk-st.flipInY-ac").on('click', function(){
		$(".animation-img .animate-six").addClass("animated flipInY").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated flipInY");
		});
	});
	$("button.btn.ant-nk-st.flipOutX-ac").on('click', function(){
		$(".animation-img .animate-six").addClass("animated flipOutX").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated flipOutX");
		});
	});
	$("button.btn.ant-nk-st.slideInUp-ac").on('click', function(){
		$(".animation-img .animate-seven").addClass("animated slideInUp").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated slideInUp");
		});
	});
	$("button.btn.ant-nk-st.slideInDown-ac").on('click', function(){
		$(".animation-img .animate-seven").addClass("animated slideInDown").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated slideInDown");
		});
	});

	$("button.btn.ant-nk-st.slideInLeft-ac").on('click', function(){
		$(".animation-img .animate-seven").addClass("animated slideInLeft").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated slideInLeft");
		});
	});
	$("button.btn.ant-nk-st.slideInRight-ac").on('click', function(){
		$(".animation-img .animate-seven").addClass("animated slideInRight").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated slideInRight");
		});
	});
	$("button.btn.ant-nk-st.rotateIn-ac").on('click', function(){
		$(".animation-img .animate-eight").addClass("animated rotateIn").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated rotateIn");
		});
	});
	$("button.btn.ant-nk-st.rotateInDownLeft-ac").on('click', function(){
		$(".animation-img .animate-eight").addClass("animated rotateInDownLeft").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated rotateInDownLeft");
		});
	});

	$("button.btn.ant-nk-st.rotateInDownRight-ac").on('click', function(){
		$(".animation-img .animate-eight").addClass("animated rotateInDownRight").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated rotateInDownRight");
		});
	});
	$("button.btn.ant-nk-st.rotateInUpLeft-ac").on('click', function(){
		$(".animation-img .animate-eight").addClass("animated rotateInUpLeft").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated rotateInUpLeft");
		});
	});
	$("button.btn.ant-nk-st.rotateOut-ac").on('click', function(){
		$(".animation-img .animate-nine").addClass("animated rotateOut").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated rotateOut");
		});
	});
	$("button.btn.ant-nk-st.rotateOutDownLeft-ac").on('click', function(){
		$(".animation-img .animate-nine").addClass("animated rotateOutDownLeft").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated rotateOutDownLeft");
		});
	});

	$("button.btn.ant-nk-st.rotateOutDownRight-ac").on('click', function(){
		$(".animation-img .animate-nine").addClass("animated rotateOutDownRight").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated rotateOutDownRight");
		});
	});
	$("button.btn.ant-nk-st.rotateOutUpLeft-ac").on('click', function(){
		$(".animation-img .animate-nine").addClass("animated rotateOutUpLeft").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated rotateOutUpLeft");
		});
	});
	$("button.btn.ant-nk-st.slideOutUp-ac").on('click', function(){
		$(".animation-img .animate-ten").addClass("animated slideOutUp").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated slideOutUp");
		});
	});
	$("button.btn.ant-nk-st.slideOutDown-ac").on('click', function(){
		$(".animation-img .animate-ten").addClass("animated slideOutDown").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated slideOutDown");
		});
	});

	$("button.btn.ant-nk-st.slideOutLeft-ac").on('click', function(){
		$(".animation-img .animate-ten").addClass("animated slideOutLeft").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated slideOutLeft");
		});
	});
	$("button.btn.ant-nk-st.slideOutRight-ac").on('click', function(){
		$(".animation-img .animate-ten").addClass("animated slideOutRight").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated slideOutRight");
		});
	});
	$("button.btn.ant-nk-st.zoomIn-ac").on('click', function(){
		$(".animation-img .animate-eleven").addClass("animated zoomIn").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated zoomIn");
		});
	});
	$("button.btn.ant-nk-st.zoomInDown-ac").on('click', function(){
		$(".animation-img .animate-eleven").addClass("animated zoomInDown").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated zoomInDown");
		});
	});

	$("button.btn.ant-nk-st.zoomInLeft-ac").on('click', function(){
		$(".animation-img .animate-eleven").addClass("animated zoomInLeft").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated zoomInLeft");
		});
	});
	$("button.btn.ant-nk-st.zoomInRight-ac").on('click', function(){
		$(".animation-img .animate-eleven").addClass("animated zoomInRight").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated zoomInRight");
		});
	});
	$("button.btn.ant-nk-st.zoomOut-ac").on('click', function(){
		$(".animation-img .animate-twelve").addClass("animated zoomOut").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated zoomOut");
		});
	});
	$("button.btn.ant-nk-st.zoomOutDown-ac").on('click', function(){
		$(".animation-img .animate-twelve").addClass("animated zoomOutDown").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated zoomOutDown");
		});
	});

	$("button.btn.ant-nk-st.zoomOutLeft-ac").on('click', function(){
		$(".animation-img .animate-twelve").addClass("animated zoomOutLeft").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated zoomOutLeft");
		});
	});
	$("button.btn.ant-nk-st.zoomOutRight-ac").on('click', function(){
		$(".animation-img .animate-twelve").addClass("animated zoomOutRight").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated zoomOutRight");
		});
	});
	/*----------------------
	Animation dropdown active js
	-----------------------*/
	$("button.triger-fadeIn").on('click', function(){
		$(".triger-fadeIn-dp").addClass("animated fadeIn").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated fadeIn");
		});
	});
	$("button.triger-fadeInUp").on('click', function(){
		$(".triger-fadeInUp-dp").addClass("animated fadeInUp").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated fadeInUp");
		});
	});
	$("button.triger-fadeInLeft").on('click', function(){
		$(".triger-fadeInLeft-dp").addClass("animated fadeInLeft").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated fadeInLeft");
		});
	});
	$("button.triger-shake").on('click', function(){
		$(".triger-shake-dp").addClass("animated shake").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated shake");
		});
	});
	$("button.triger-swing").on('click', function(){
		$(".triger-swing-dp").addClass("animated swing").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated swing");
		});
	});
	$("button.triger-jello").on('click', function(){
		$(".triger-jello-dp").addClass("animated jello").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated jello");
		});
	});
	$("button.triger-bounceIn").on('click', function(){
		$(".triger-bounceIn-dp").addClass("animated bounceIn").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated bounceIn");
		});
	});
	$("button.triger-bounceInUp").on('click', function(){
		$(".triger-bounceInUp-dp").addClass("animated bounceInUp").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated bounceInUp");
		});
	});
	$("button.triger-flip").on('click', function(){
		$(".triger-flip-dp").addClass("animated flip").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated flip");
		});
	});
	$("button.triger-flipInX").on('click', function(){
		$(".triger-flipInX-dp").addClass("animated flipInX").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated flipInX");
		});
	});
	$("button.triger-flipInY").on('click', function(){
		$(".triger-flipInY-dp").addClass("animated flipInY").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated flipInY");
		});
	});
	$("button.triger-rotateIn").on('click', function(){
		$(".triger-rotateIn-dp").addClass("animated rotateIn").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated rotateIn");
		});
	});
	$("button.triger-zoomIn").on('click', function(){
		$(".triger-zoomIn-dp").addClass("animated zoomIn").one("webkitAnimationEnd mozAnimationEnd oAnimationEnd animationend", function(){
			$(this).removeClass("animated zoomIn");
		});
	});
 
})(jQuery); 